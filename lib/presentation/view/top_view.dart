import 'package:architecture_test/provider/todo_providers.dart';
import 'package:architecture_test/service/data_store/todos.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopView extends HookConsumerWidget {
  const TopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presenter = ref.watch(todoPresenterProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              //10
              //以下、Container()をStreamBuilder(...)に置き換え
              child: StreamBuilder(
                stream: presenter.watchEntries(),
                builder: (BuildContext context, AsyncSnapshot<List<Todo>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return ListView.builder(
                    //11
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) => TextButton(
                      child: Text(snapshot.data![index].content),
                      onPressed: () async {
                        //以下追加
                        await presenter.updateTodo(
                          snapshot.data![index],
                          'updated',
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      child: const Text('Add'),
                      onPressed: () async {
                        // 以下追加
                        await presenter.addTodo(
                          'test test test',
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      child: const Text('remove'),
                      onPressed: () async {
                        //15
                        //以下追加
                        final list = await presenter.allTodoEntries;
                        if (list.isNotEmpty) {
                          await presenter.deleteTodo(list[list.length - 1]);
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
