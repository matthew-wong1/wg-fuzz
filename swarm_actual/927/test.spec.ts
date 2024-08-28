export const description = `
Template test for tests created via fuzzing.
`;
import { makeTestGroup } from '../../../../../common/framework/test_group.js';
import { GPUTest } from '../../../../gpu_test.js';
import { getGPU } from '../../../../../common/util/navigator_gpu.js';

export const g = makeTestGroup(GPUTest);

g.test('example_test').fn(async t => {
    const gpu = getGPU(t.rec);
    await main(gpu);
});
const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.pushErrorScope("out-of-memory");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array0 = new Float32Array([-0.25, -0.5, -0.75, 1.0, 0.5, 0.75, -0.75, 0.5, 0.5, -1.0, 0.5, 0.5, 1.0, 0.0, 0.5, 1.0, 0.5, -0.75, -0.5, -0.75, 0.5, 0.5, -1.0, -0.5, 0.5, -1.0, 0.75, 0.75, -0.25, -0.75, 1.0, 0.25, 0.5, -0.25, 0.25, 1.0, 0.0, -0.5, -1.0, 0.5, 0.5, 0.0, 0.25, 0.75, 0.0, -1.0, 1.0, 0.25, -0.5, -1.0, 0.0, 0.0, 0.0, 0.75, 0.25, 0.0, -0.75, -0.25, 0.25, -0.25, 0.75, -1.0, -1.0, 0.75, 0.25, 0.0, 0.0, 1.0, 0.5, 0.0, 0.25, 0.0, 0.75, 0.25, 0.25, -1.0, -0.25, -0.5, -0.5, -0.25, -0.25, -0.5, 0.5, 0.5, -0.25, -1.0, 0.5, 0.0, -0.5, 0.5, 0.0, 0.0, 1.0, -1.0, 0.75, -0.75, -0.5, -0.25, 0.5, 0.0, ]);
    device10.pushErrorScope("validation");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device20.pushErrorScope("validation");
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus",
        dimension: "2d"
    });
    texture100.destroy();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture201.destroy();
    
    texture200.destroy();
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    texture001.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device30.pushErrorScope("validation");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    texture000.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([-1.0, 0.75, 0.5, 0.25, 1.0, 0.5, -0.75, -0.25, -0.75, 0.75, 0.25, -1.0, -0.75, 0.5, -0.25, 0.75, -0.5, -1.0, 0.0, 1.0, 0.0, 0.0, -0.25, -0.25, -0.5, -0.75, -0.75, 0.0, -0.75, -0.5, 0.75, 0.75, 0.25, -0.75, 0.0, 0.5, -1.0, -1.0, 0.5, 0.5, -0.25, -0.5, 0.25, 0.5, -0.75, -0.25, -1.0, 1.0, -0.5, 0.25, 1.0, -1.0, 0.75, -0.5, 0.5, 1.0, -0.25, 0.75, 1.0, 0.75, 0.25, 0.25, -1.0, 1.0, 0.25, -0.25, -1.0, 0.0, -1.0, 0.5, 0.0, 0.25, 0.0, -0.75, 0.5, 0.25, 0.25, 0.0, 0.25, 0.0, 0.0, 0.75, -1.0, 1.0, -0.5, 0.0, 0.0, 0.0, 0.25, 0.25, -0.75, 0.0, -1.0, 0.75, 0.0, -1.0, 0.0, -0.5, -0.75, 0.0, ]);
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const array2 = new Float32Array([-0.5, 0.5, 0.75, 1.0, 0.75, 0.25, 0.5, -0.25, -1.0, 1.0, 0.5, -0.75, 1.0, 0.5, 0.75, 1.0, -0.75, 0.75, -0.75, -0.5, 0.25, -1.0, 1.0, 0.25, 0.5, -0.25, 1.0, -1.0, 0.75, -1.0, 0.25, 0.25, -0.5, 0.25, 0.25, -0.25, 0.5, 0.25, -0.5, 0.25, 1.0, 0.5, 0.5, 0.75, 0.25, 0.75, 0.5, 0.25, -0.5, 0.0, 0.75, 0.5, 1.0, -1.0, 1.0, 1.0, -0.5, 1.0, -0.25, 1.0, 0.5, 0.5, 0.5, 0.25, -0.25, -0.25, 0.75, -1.0, -1.0, -1.0, -0.75, 0.25, 0.75, 0.0, -0.75, 1.0, 1.0, -0.25, 0.0, 0.75, -0.75, 0.0, -0.25, -0.25, 0.0, 0.25, 1.0, 0.75, -0.25, 1.0, -0.5, 0.75, 0.75, 0.75, 0.0, -1.0, 0.0, 0.25, 0.75, 0.75, ]);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array3 = new Float32Array([-0.25, 1.0, -1.0, -1.0, 1.0, 1.0, 1.0, 0.0, 0.0, 0.75, -0.5, 0.5, -0.25, -0.5, -1.0, -0.75, 1.0, 1.0, -0.25, 0.25, 0.75, -0.25, 0.5, 0.75, -0.25, -0.25, 0.5, 0.5, -0.5, -1.0, -1.0, 0.0, 0.0, 0.5, 0.0, 0.25, 0.0, 0.25, 0.0, 1.0, -0.25, 1.0, -0.5, 0.25, 0.5, 0.25, -0.5, 0.5, -1.0, -0.25, -0.25, 0.5, 0.5, -0.75, 0.75, -0.75, -0.25, 0.5, 1.0, 0.5, -1.0, -1.0, 0.0, 0.25, -1.0, 0.25, 1.0, 0.75, 0.25, -0.75, 0.25, 0.25, 0.0, -0.25, -0.5, -0.25, -1.0, 1.0, -0.75, 0.75, 0.5, 1.0, 0.75, 0.5, 1.0, 0.75, 0.25, -0.5, -1.0, 0.25, 0.5, 1.0, -0.5, -0.5, 0.0, -0.25, 1.0, 0.5, 0.25, 0.5, ]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture202.destroy();
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture400.destroy();
    const array4 = new Float32Array([0.0, -0.75, -1.0, 0.0, 0.75, 0.75, 0.5, 0.0, 0.5, -0.75, -0.5, 0.75, -1.0, 1.0, 1.0, -0.5, -1.0, -0.5, -1.0, 0.75, 0.0, 0.0, 0.5, 0.5, 0.25, 0.0, 0.0, -0.5, 0.75, -0.75, 0.0, 0.25, -1.0, -0.5, 0.25, 0.5, -0.5, -0.5, 0.0, -0.75, -0.5, 0.25, 0.75, 0.5, 0.5, 1.0, 0.75, -0.25, 0.5, 1.0, -1.0, 1.0, 0.5, 0.0, 0.25, -0.5, 0.25, 0.25, 0.0, -0.25, -0.5, 0.5, 0.5, -0.25, 0.75, 0.5, -0.5, 0.75, 1.0, -0.75, -0.25, -0.5, 1.0, -1.0, -1.0, 0.25, 1.0, -0.25, 0.75, -0.25, -0.25, 0.5, -0.25, -0.25, 0.5, 0.75, 0.0, 0.75, 1.0, 0.75, -0.25, -0.25, 0.0, -0.75, 0.0, -1.0, 0.25, -1.0, -0.5, -0.25, ]);
    texture401.destroy();
    texture101.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    
    
    
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    
    
    
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    device40.pushErrorScope("internal");
    texture203.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    const array5 = new Float32Array([-0.5, 1.0, 0.75, 0.0, -0.5, 0.75, -1.0, 0.0, -0.75, -0.75, -1.0, 1.0, 1.0, 0.75, -0.5, 0.0, -0.75, 0.25, 1.0, 1.0, -0.5, 0.0, 0.25, -0.5, 0.25, 1.0, 1.0, 0.75, 0.25, 1.0, -1.0, 0.75, 0.25, 0.75, 0.0, 0.0, -0.5, 0.25, 0.0, 1.0, -0.25, -0.75, -1.0, -0.75, -1.0, 0.75, 0.75, -1.0, -0.25, -0.25, -1.0, 1.0, -0.5, 1.0, -1.0, -1.0, -0.25, 1.0, 1.0, 1.0, -0.75, -0.25, 1.0, 1.0, 0.5, 0.0, 0.75, -0.5, 0.75, -0.25, 0.5, -0.75, 0.0, 1.0, 0.75, 1.0, 1.0, 0.25, -0.5, 0.25, 0.5, 0.75, -0.75, 0.5, -0.25, -0.25, 0.25, 0.5, 0.5, 0.25, -0.75, -0.5, 0.5, 1.0, 0.5, 0.75, 0.5, 0.5, 0.0, 0.0, ]);
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    texture002.destroy();
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    
    texture402.destroy();
    texture003.destroy();
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    texture300.destroy();
    texture403.destroy();
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    
    
    device30.queue.writeBuffer(buffer305, 0, array2, 0, array2.length);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer305, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer307, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer307, 0, array2, 0, array2.length);
    
    device30.queue.writeBuffer(buffer305, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer307, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    const array6 = new Float32Array([-1.0, 1.0, -0.75, -0.25, 1.0, 0.5, -0.75, 0.25, 0.5, 1.0, -0.25, 0.0, 0.0, -0.25, 0.0, -1.0, 1.0, 0.25, 0.75, -0.25, 0.75, -1.0, 0.75, 0.0, 0.5, 0.75, -0.25, 0.5, -0.75, -0.75, -0.25, 1.0, -0.75, 0.25, 0.25, -0.75, -1.0, -0.5, -0.75, 1.0, 0.5, -0.25, -1.0, -0.75, 1.0, 0.0, -0.75, -0.75, 0.75, 0.75, 0.25, -1.0, 0.75, 1.0, 1.0, 0.25, 0.5, -0.5, 0.0, 0.25, 0.0, 0.5, 0.75, -0.25, 1.0, -0.25, 1.0, 0.0, -0.75, 0.75, 0.75, 0.0, 0.75, -0.75, -0.5, -0.75, 0.5, -0.5, -0.75, 0.25, 0.25, 0.5, 0.0, -0.25, -0.75, 0.0, -0.5, 0.0, 0.25, -0.5, 0.0, -0.75, -0.25, -0.25, 0.75, 0.75, -0.25, -1.0, 0.5, -0.75, ]);
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    
    texture102.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer307, 0, array3, 0, array3.length);
    
    const array7 = new Float32Array([-0.5, 0.5, 0.75, 0.0, 0.0, -0.5, -0.5, 0.25, 0.0, 0.25, 0.5, -0.5, 0.0, -0.75, 0.25, 1.0, -0.25, -1.0, 0.75, -1.0, -0.75, -0.75, -0.5, -0.25, 0.5, 0.5, 0.75, -0.5, 0.0, 0.25, 0.25, 0.5, -0.5, 0.75, 0.75, 0.75, 0.5, 0.5, 0.0, -0.75, -0.5, 1.0, 0.75, 0.25, -0.75, 0.5, 0.75, 1.0, -0.25, -1.0, 0.0, 0.75, -0.5, 0.0, -0.25, -0.5, 1.0, 1.0, -0.75, 0.5, 0.25, -1.0, -1.0, -1.0, -0.75, -1.0, -1.0, 0.0, -0.25, 0.25, 0.75, 0.25, 0.25, 0.0, 1.0, -0.75, -1.0, -0.25, -0.5, -1.0, 0.25, 0.5, 0.75, 0.5, 0.25, 1.0, -0.75, 0.5, -0.75, 1.0, -0.25, -0.25, -1.0, -0.5, -0.5, -1.0, -0.25, -0.5, -0.5, 0.25, ]);
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer307, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer305, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    device30.queue.writeBuffer(buffer305, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer307, 0, array4, 0, array4.length);
    
    texture004.destroy();
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer305, 0, array6, 0, array6.length);
    
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer305, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer305, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    texture302.destroy();
    device30.queue.writeBuffer(buffer307, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer004, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer307, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer305, 0, array0, 0, array0.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device30.queue.writeBuffer(buffer307, 0, array3, 0, array3.length);
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture301.destroy();
    device30.queue.writeBuffer(buffer307, 0, array6, 0, array6.length);
    
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer307, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer305, 0, array2, 0, array2.length);
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device30.queue.writeBuffer(buffer307, 0, array6, 0, array6.length);
    texture303.destroy();
    device30.queue.writeBuffer(buffer307, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer305, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    const array8 = new Float32Array([0.75, -0.75, 0.5, -0.5, -0.5, -0.75, -0.5, -0.5, -1.0, 0.5, 0.25, 0.5, -0.75, -0.25, 0.0, -0.5, -0.75, -0.25, -1.0, 0.75, -0.75, 0.25, 0.5, -1.0, 0.25, 1.0, -1.0, -1.0, 0.25, -0.25, -0.5, -0.75, -0.25, 0.25, 0.75, -0.5, -0.5, -0.75, 0.25, 0.75, 0.5, 0.0, -0.75, -0.5, -0.25, 1.0, 0.0, 1.0, 0.25, 0.75, -0.75, -0.25, -0.75, -0.25, 1.0, 0.5, -0.75, 0.5, -1.0, 0.25, -1.0, 1.0, -1.0, 0.5, 0.25, -0.75, -0.25, 0.0, -0.5, -0.75, 0.75, -0.25, -1.0, -0.25, -0.75, -0.25, 0.75, 0.5, -0.75, 1.0, 1.0, 0.5, -1.0, 0.5, 0.0, -0.5, 0.5, -0.75, 0.25, 0.75, -0.25, -0.25, -0.25, 0.75, -0.5, 0.25, -0.25, 0.25, 0.5, -0.25, ]);
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    const texture_view4041 = texture404.createView({ label: "texture_view4041" });
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer305, 0, array5, 0, array5.length);
    texture005.destroy();
    device30.queue.writeBuffer(buffer307, 0, array3, 0, array3.length);
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8snorm",
        dimension: "2d"
    });
    const texture_view4042 = texture404.createView({ label: "texture_view4042" });
    
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer307, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    device30.queue.writeBuffer(buffer307, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer307, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    const texture_view3042 = texture304.createView({ label: "texture_view3042" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer305, 0, array2, 0, array2.length);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device30.queue.writeBuffer(buffer305, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer305, 0, array6, 0, array6.length);
    
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    
    
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    
    device30.queue.writeBuffer(buffer307, 0, array0, 0, array0.length);
    
    device30.queue.writeBuffer(buffer307, 0, array5, 0, array5.length);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer307, 0, array3, 0, array3.length);
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeBuffer(buffer307, 0, array5, 0, array5.length);
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device30.queue.writeBuffer(buffer305, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer307, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    texture103.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    const texture_view3043 = texture304.createView({ label: "texture_view3043" });
    texture406.destroy();
    device30.queue.writeBuffer(buffer308, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer308, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer308, 0, array6, 0, array6.length);
    
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer308, 0, array5, 0, array5.length);
    
    device30.queue.writeBuffer(buffer307, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer305, 0, array5, 0, array5.length);
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    texture404.destroy();
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer307, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer307, 0, array2, 0, array2.length);
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device30.queue.writeBuffer(buffer307, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer307, 0, array6, 0, array6.length);
    const array9 = new Float32Array([0.0, -0.25, 0.0, 0.5, 0.5, 1.0, 0.0, -0.25, 0.25, 0.0, 0.75, 0.25, -1.0, -1.0, -0.5, -1.0, -1.0, 0.5, 0.5, -0.75, -0.5, 0.5, 0.0, -0.5, -1.0, -0.75, -0.25, -0.25, 0.5, -0.25, 0.25, 0.0, 0.5, 0.25, 0.25, 0.0, -0.25, 0.25, 0.0, -0.75, 1.0, 1.0, -0.75, 0.75, -1.0, -0.75, 0.75, -0.5, 0.25, -0.25, -1.0, -0.75, 0.0, 0.0, 0.5, 0.25, -0.25, 0.75, 1.0, -0.75, 0.75, -0.5, -0.75, 0.0, -0.75, 0.25, 1.0, 0.25, 1.0, 0.25, 0.25, 0.5, 0.75, 0.0, 0.0, 0.0, 0.25, -0.75, -0.5, -0.25, -1.0, -0.25, 0.5, 0.5, -1.0, 0.5, -0.5, -0.25, -0.25, -0.5, -0.25, 0.25, -0.25, 0.0, -0.75, -0.25, -0.25, -0.25, 0.5, 1.0, ]);
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer308, 0, array2, 0, array2.length);
    texture204.destroy();
    
    device30.queue.writeBuffer(buffer307, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer307, 0, array1, 0, array1.length);
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    device00.queue.writeBuffer(buffer004, 0, array7, 0, array7.length);
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer308, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer307, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer004, 0, array6, 0, array6.length);
    texture600.destroy();
    device30.queue.writeBuffer(buffer305, 0, array9, 0, array9.length);
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    texture405.destroy();
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer007, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    const texture407 = device40.createTexture({
        label: "texture407",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer305, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer307, 0, array1, 0, array1.length);
    
    const texture408 = device40.createTexture({
        label: "texture408",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer307, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture409 = device40.createTexture({
        label: "texture409",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8snorm",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer308, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    
    device30.queue.writeBuffer(buffer305, 0, array8, 0, array8.length);
    device00.queue.writeBuffer(buffer004, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer3010, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer307, 0, array8, 0, array8.length);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    device60.pushErrorScope("validation");
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    texture500.destroy();
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture006.destroy();
    device30.queue.writeBuffer(buffer307, 0, array5, 0, array5.length);
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    texture407.destroy();
    texture007.destroy();
    
    texture008.destroy();
    device00.queue.writeBuffer(buffer007, 0, array6, 0, array6.length);
    const array10 = new Float32Array([0.25, -0.75, -0.25, -1.0, -0.75, 1.0, 0.25, 1.0, 1.0, -1.0, -0.75, -0.5, -0.5, -1.0, 0.5, 0.25, 1.0, -0.5, -0.75, -0.25, -0.25, -0.25, -0.75, 0.0, 0.25, -0.5, -0.25, 0.0, 0.5, -0.25, 1.0, 0.0, 0.0, -1.0, 0.5, -1.0, 1.0, -0.75, 0.5, 0.25, -0.25, -1.0, -0.75, 0.5, -0.25, -0.5, 0.25, 0.0, 0.5, 0.25, 0.0, -0.25, 0.75, 1.0, 0.5, 0.0, -0.75, 0.0, -0.25, 0.25, 0.25, -0.75, -0.75, -1.0, 0.75, 0.5, 1.0, -0.75, -0.5, -1.0, -0.25, -0.75, 0.75, -1.0, -0.5, 1.0, -0.25, 0.0, 1.0, 0.25, 0.5, 0.5, 0.5, 0.5, -0.25, 0.25, 0.0, -0.25, 0.5, 0.0, 0.5, 0.25, -0.75, 0.0, 0.75, -1.0, 1.0, -0.25, -1.0, -0.75, ]);
    device00.queue.writeBuffer(buffer007, 0, array7, 0, array7.length);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer3010, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer307, 0, array9, 0, array9.length);
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer308, 0, array10, 0, array10.length);
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device30.queue.writeBuffer(buffer307, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer305, 0, array0, 0, array0.length);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.queue.writeBuffer(buffer308, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer3010, 0, array2, 0, array2.length);
    texture409.destroy();
    const texture_view3060 = texture306.createView({ label: "texture_view3060" });
    device30.queue.writeBuffer(buffer305, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer307, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer3010, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer305, 0, array2, 0, array2.length);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer3010, 0, array3, 0, array3.length);
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer007, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer3010, 0, array9, 0, array9.length);
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    const texture_view3061 = texture306.createView({ label: "texture_view3061" });
    const texture4010 = device40.createTexture({
        label: "texture4010",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    texture4010.destroy();
    
    
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture106.destroy();
    device30.queue.writeBuffer(buffer307, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer004, 0, array8, 0, array8.length);
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    texture601.destroy();
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer307, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer3010, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer007, 0, array10, 0, array10.length);
    texture105.destroy();
    device00.queue.writeBuffer(buffer007, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer305, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    texture501.destroy();
    const texture_view3070 = texture307.createView({ label: "texture_view3070" });
    device30.queue.writeBuffer(buffer307, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer307, 0, array4, 0, array4.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer308, 0, array10, 0, array10.length);
    
    
    device30.queue.writeBuffer(buffer308, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer307, 0, array9, 0, array9.length);
    device00.queue.writeBuffer(buffer004, 0, array9, 0, array9.length);
    
    device30.queue.writeBuffer(buffer307, 0, array5, 0, array5.length);
}