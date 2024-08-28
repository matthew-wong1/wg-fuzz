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
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer002.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    device00.destroy();
    const array0 = new Float32Array([1.0, 0.25, 0.0, 0.75, -1.0, -0.5, -0.75, -0.5, 0.25, -1.0, 0.0, -0.25, -0.75, -1.0, 0.5, 0.75, 0.0, 0.5, -1.0, -1.0, -0.25, 0.25, -1.0, 0.75, -0.75, -0.75, 0.5, -0.75, 0.5, 1.0, -0.25, -0.75, 0.0, -0.75, -0.75, -0.5, -1.0, 0.75, 0.75, -0.25, 0.5, 0.75, 1.0, 0.5, -1.0, 1.0, 0.75, -0.25, 0.25, 0.0, 0.75, 0.0, -0.75, 0.5, -0.5, 0.75, -0.75, -0.25, -0.5, 0.5, 0.25, 0.25, 0.25, -0.25, 0.75, -0.5, -0.25, 0.25, 0.25, -0.5, 0.25, -1.0, -0.75, -0.75, 0.25, 1.0, -1.0, 0.5, -0.75, -0.5, 0.75, 1.0, 0.0, -0.5, -0.75, 1.0, 0.75, 1.0, -1.0, 0.0, 0.0, -0.75, 1.0, 1.0, -0.5, 0.5, -0.25, -0.25, 0.25, -0.75, ]);
    
    
    const array1 = new Float32Array([-1.0, 0.75, 0.25, 0.25, 0.75, -0.25, 0.25, -1.0, 0.75, -0.5, 0.0, -0.75, 1.0, -0.5, -0.25, 0.25, -0.75, 1.0, -0.5, 0.0, 1.0, -0.25, 0.0, -0.25, -0.75, 0.75, -0.75, -0.75, -0.5, 0.25, -0.5, 0.25, -0.75, -1.0, -0.25, 0.75, 1.0, 0.75, 0.5, 0.5, 0.75, 0.25, -0.5, 0.75, -1.0, 0.5, -1.0, 1.0, -0.25, -0.25, -0.25, -1.0, -1.0, 0.75, -0.5, 0.0, 0.0, -0.5, -1.0, 0.5, 0.0, 0.75, 0.0, -0.75, -0.5, -0.25, 0.75, -0.75, -1.0, -1.0, 0.5, 0.25, 0.75, -0.75, -1.0, 0.25, -1.0, 0.5, -0.75, 1.0, 0.75, 0.0, 0.25, 0.75, 0.0, 0.75, 0.75, 1.0, 1.0, -1.0, -0.5, 0.25, 0.5, -0.25, -1.0, -1.0, 0.0, -0.25, -1.0, 0.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([0.75, 0.0, -0.5, 0.25, 1.0, 0.75, 0.5, 0.75, -0.75, 0.75, -0.25, -0.25, 0.0, 0.25, 0.0, 0.0, 0.5, 0.5, -0.5, 0.75, 0.5, -0.25, 0.5, -0.75, -0.5, -0.5, 0.25, 0.25, 0.0, 1.0, -0.5, 1.0, 0.75, 0.5, -1.0, -0.25, 0.25, 0.75, 0.5, 1.0, -1.0, 0.5, -1.0, 1.0, -0.75, 0.75, 1.0, -1.0, -0.25, 0.25, 0.5, 0.25, 0.0, -0.25, 0.5, 0.5, -1.0, 1.0, -0.75, 0.75, -0.25, -0.5, -0.25, 0.75, -0.25, 0.25, 0.0, -0.75, -0.25, 0.25, 0.0, -0.25, -0.5, 0.0, -1.0, 0.5, 1.0, -0.25, 0.75, -0.25, 0.5, 0.0, 0.0, 0.25, -0.25, 0.0, -1.0, -0.5, 0.25, -0.75, 0.25, -0.5, -0.5, 1.0, -0.75, 1.0, -0.5, 0.75, 1.0, -0.5, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("validation");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const array3 = new Float32Array([0.0, 1.0, -0.5, -0.75, 0.25, 1.0, -0.5, -1.0, 0.25, 0.25, -1.0, -1.0, 0.5, 0.25, -0.25, 0.25, 0.5, 1.0, -0.75, -0.5, 0.25, -1.0, 0.25, 1.0, 0.25, 0.0, -1.0, -0.75, 0.5, 0.5, 0.5, 0.25, -0.5, -1.0, 0.25, 0.25, -0.75, -1.0, -1.0, 0.75, 0.75, 1.0, 1.0, 0.25, 1.0, 0.0, -0.5, -1.0, 0.25, -0.5, 0.25, -0.5, 0.5, -1.0, 0.5, 0.25, 0.25, -0.25, 0.0, -0.5, 0.25, 0.75, -1.0, -0.75, 1.0, 0.75, 0.0, -0.75, 1.0, 0.5, -0.75, 0.75, -0.5, -0.25, -0.75, -0.5, -1.0, -0.75, 0.5, 0.5, 0.5, 0.0, -0.5, -0.75, 1.0, -1.0, -0.5, 0.75, -1.0, 0.25, -0.5, -0.75, 1.0, -0.25, -0.5, -0.5, -0.75, 1.0, 0.5, 1.0, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array4 = new Float32Array([-1.0, -1.0, 1.0, -1.0, -0.25, -0.25, -1.0, -0.25, -0.25, -0.75, 0.25, 0.0, -0.25, -0.75, 0.75, 0.25, -0.75, 0.75, 0.25, 0.5, 0.0, 0.25, 0.0, 0.25, -0.25, -1.0, -0.25, -0.25, -1.0, 1.0, 0.75, 1.0, 0.0, 0.5, 0.75, 1.0, -0.75, -1.0, -0.25, 1.0, 0.5, -0.75, -0.75, 0.75, 0.0, 0.75, 0.0, -0.75, 1.0, 1.0, -0.25, 0.5, -0.5, 1.0, -0.25, -0.5, -1.0, 0.75, 0.5, -0.5, -0.25, 0.75, 0.0, -0.75, -0.5, -1.0, -1.0, -0.75, -1.0, 0.0, -0.25, 0.0, 1.0, 0.25, 0.5, -1.0, 1.0, -0.5, -0.25, -0.25, 0.75, -0.25, -0.25, 1.0, 0.75, 0.75, 0.75, -0.25, 0.5, 0.75, 1.0, -0.75, -0.75, -0.5, 0.25, 0.75, 0.25, -0.5, 1.0, -0.75, ]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array5 = new Float32Array([-0.75, 0.25, 0.25, 0.0, 0.75, -0.5, 0.75, 0.75, -0.25, -1.0, 0.5, -0.25, -0.5, 1.0, -0.5, -1.0, -0.5, 0.25, 0.25, -0.5, 1.0, -0.5, 0.25, -0.5, -0.5, -0.75, 0.5, -0.5, -0.25, 0.5, -0.25, 0.5, 0.5, -0.75, -0.75, -0.25, -0.75, -0.75, 0.75, 0.75, -0.75, 0.75, 0.5, -0.5, 0.0, -0.75, 0.0, 0.25, 0.25, 1.0, 0.25, 0.0, 0.75, 0.5, 0.25, 0.5, 0.5, -0.5, 0.5, 0.75, 0.0, 1.0, 0.25, 0.5, -1.0, 0.25, -1.0, 0.25, 0.75, -0.75, -0.25, 0.75, -0.5, 0.75, 0.5, 0.0, 0.75, 0.5, 0.25, 1.0, -0.5, 1.0, 0.0, -0.25, -1.0, 0.5, -0.5, -1.0, -0.5, 0.75, -0.25, 0.5, 0.5, -1.0, -0.5, -0.5, 0.0, -1.0, 1.0, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array6 = new Float32Array([-0.75, 0.25, 0.75, 0.75, -0.5, 0.0, -0.25, 0.25, 1.0, 0.75, -0.75, 0.25, 1.0, -0.5, -0.25, 0.0, -0.25, 0.5, 0.25, 0.0, 0.25, -0.5, 0.25, -0.25, -0.25, 1.0, 0.75, -0.5, -0.5, 0.5, 0.25, 1.0, -0.5, 0.75, 1.0, -0.75, 0.75, 0.75, -0.25, 0.0, 0.5, -1.0, 0.75, 0.25, 0.5, -0.75, 0.75, 0.25, 0.0, 0.5, 0.25, 0.5, 0.0, -0.5, -0.75, 1.0, 0.0, 0.25, 0.75, 0.25, -0.5, 1.0, 0.5, -0.5, 0.25, -0.75, 0.0, 0.25, 1.0, 0.0, 0.25, 0.0, 0.5, 0.25, -0.75, -0.5, 0.25, 0.0, 1.0, -0.75, 0.75, 1.0, 0.75, 0.25, 0.0, -1.0, 0.5, 0.0, -1.0, 0.75, -0.25, 0.5, -1.0, -0.75, 0.5, 0.5, 0.5, 1.0, 0.5, 1.0, ]);
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const array7 = new Float32Array([1.0, 0.5, 0.25, -1.0, -0.25, 0.75, -1.0, -1.0, 1.0, -1.0, 1.0, 0.25, -0.25, 0.0, -1.0, -0.25, 1.0, -0.75, 0.0, 0.0, -0.25, -0.25, 1.0, 0.75, 0.0, -0.75, 0.0, 0.5, 1.0, 0.75, 0.0, -1.0, 0.75, -0.5, 0.5, 0.5, -0.5, -0.25, 0.25, -0.75, -1.0, 0.75, -0.75, 0.25, -0.75, -0.5, 1.0, 0.5, -1.0, 0.25, -0.75, -1.0, -0.25, -0.5, -1.0, 1.0, 0.0, -1.0, 0.0, -1.0, 0.75, 0.75, 0.5, 0.5, 1.0, 0.75, 1.0, 0.0, 0.5, -0.5, -0.25, 1.0, 0.0, 0.5, 0.0, -0.5, -0.5, -0.25, -0.25, -0.75, 0.75, -0.5, 0.5, -0.5, -0.5, 0.25, 0.75, -0.25, 0.5, -0.25, 1.0, 0.25, -0.25, -1.0, -0.5, 0.5, -1.0, -1.0, 0.25, 0.75, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("internal");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    buffer100.destroy()
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device10.pushErrorScope("internal");
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    texture200.destroy();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    texture101.destroy();
    
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32float",
        dimension: "2d"
    });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture302.destroy();
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    texture103.destroy();
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    buffer201.destroy()
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    
    
    
    
    
    const texture_view3032 = texture303.createView({ label: "texture_view3032" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer200.destroy()
    texture303.destroy();
    buffer101.destroy()
    texture300.destroy();
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    texture100.destroy();
    
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    texture201.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device40.pushErrorScope("validation");
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer202.destroy()
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    const array8 = new Float32Array([0.5, 0.25, 0.25, -0.75, 0.5, 0.75, 0.25, -0.25, -0.25, 0.0, 1.0, 1.0, -1.0, -0.25, 0.75, -1.0, 0.25, 1.0, -0.75, 0.5, 1.0, 0.75, 0.5, -0.25, 0.0, 0.0, -0.5, 0.75, 1.0, -0.25, 0.25, 0.25, 0.0, 0.0, 0.25, 0.25, 0.25, 1.0, 0.25, 0.0, -0.75, 0.5, -0.25, 0.25, 0.5, -0.5, -0.25, -0.75, -1.0, 0.25, 0.25, 0.75, -0.25, -1.0, -0.5, 0.25, 0.75, -0.5, -0.25, 0.0, 0.25, 0.0, 0.75, -0.5, 0.25, -1.0, 0.5, 0.75, -0.25, -0.75, 1.0, -0.25, 0.75, -0.25, -0.5, 1.0, 0.25, 0.25, -0.75, -0.5, -0.25, 0.75, 0.0, 0.0, 0.5, 0.75, -0.5, -1.0, -0.75, -1.0, 0.0, -1.0, -1.0, 0.75, -0.75, -1.0, 0.75, -1.0, -0.5, 0.75, ]);
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    buffer205.destroy()
    
    
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3042 = texture304.createView({ label: "texture_view3042" });
    
    buffer301.destroy()
    
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    buffer204.destroy()
    
    
    
    buffer203.destroy()
    
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer207.destroy()
    
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16float",
        dimension: "2d"
    });
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32sint",
        dimension: "2d"
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    buffer102.destroy()
    
    buffer302.destroy()
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    texture102.destroy();
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    
    
    
    texture202.destroy();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    buffer401.destroy()
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    buffer300.destroy()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    texture401.destroy();
    buffer206.destroy()
    buffer400.destroy()
    
    
    
    
    
    texture304.destroy();
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    texture104.destroy();
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    
    
    texture105.destroy();
    
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    texture106.destroy();
    
    texture305.destroy();
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    buffer208.destroy()
    
    
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    
    
    
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer103.destroy()
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    texture400.destroy();
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.destroy();
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array9 = new Float32Array([-0.5, -0.5, 1.0, -0.5, -0.75, -1.0, -0.5, -1.0, -0.25, 1.0, 0.5, 0.25, 1.0, 0.5, -0.5, -0.75, -1.0, -0.5, 0.25, 1.0, 0.5, 0.75, -0.25, 1.0, 0.25, -1.0, 0.5, 0.5, 0.5, 0.0, -0.75, 0.5, 1.0, 1.0, -1.0, -0.25, 0.0, 0.25, -0.75, -0.5, -0.25, -1.0, -0.25, -0.75, -0.75, -0.75, 0.0, -0.25, 0.25, -0.75, 0.25, 0.0, -1.0, 0.5, 0.25, 0.0, 0.5, -0.25, -0.25, 1.0, 1.0, -0.5, 0.25, 0.75, 0.0, 0.0, -0.75, -0.25, 0.5, 0.5, 0.5, -0.75, 0.5, -0.75, 0.0, -0.25, 0.5, 0.75, 0.25, 0.5, 1.0, 0.75, 0.5, -0.25, 0.0, -0.75, -0.5, -0.5, -0.5, 0.5, -0.75, 0.75, -1.0, 0.5, -0.75, -0.25, -1.0, 0.5, -0.75, 0.75, ]);
    
    
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    buffer403.destroy()
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    texture402.destroy();
    texture307.destroy();
    
    
    
    
    
    
    
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    
    
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const query2010 = device20.createQuerySet({
        label: "query2010",
        type: "occlusion",
        count: 32,
    });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const texture_view3060 = texture306.createView({ label: "texture_view3060" });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    
    const texture308 = device30.createTexture({
        label: "texture308",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    const texture_view1080 = texture108.createView({ label: "texture_view1080" });
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/shader_module2011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    const texture_view3061 = texture306.createView({ label: "texture_view3061" });
    
    
    
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture301.destroy();
    
    
    const query2011 = device20.createQuerySet({
        label: "query2011",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    
    buffer303.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    texture108.destroy();
    
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const texture_view1071 = texture107.createView({ label: "texture_view1071" });
    
    
    buffer106.destroy()
    
    
    
    texture107.destroy();
    
    const array10 = new Float32Array([1.0, -0.25, 0.5, 0.25, 0.75, 0.0, 0.75, 0.5, -0.25, 1.0, 1.0, -0.25, 1.0, 0.75, -0.75, -0.25, -0.75, 0.75, -0.5, 0.25, 0.25, 0.5, -1.0, 0.75, -0.25, -0.5, -0.25, -0.5, 0.0, -0.25, 0.75, -0.5, 1.0, -0.5, 0.5, 0.75, -1.0, -0.5, -0.75, 0.0, -0.75, -0.5, 0.5, -0.75, 0.25, -1.0, 0.0, -0.25, 0.75, 1.0, -0.5, 0.75, -0.25, -0.5, 0.0, -0.5, 0.5, -0.75, 0.25, -0.5, 0.75, -0.5, 0.0, 0.75, -0.5, -0.5, -1.0, 0.5, 0.25, -0.75, 1.0, -1.0, -1.0, -0.25, -0.5, 0.75, 0.5, 0.5, -0.25, 0.5, 0.75, -0.5, 1.0, -1.0, -0.75, -0.5, 0.0, -0.75, -0.25, -0.25, 0.75, -0.75, -0.5, -0.5, 1.0, 0.5, -0.5, -0.25, 0.5, 0.0, ]);
    buffer105.destroy()
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    
    texture306.destroy();
    
    
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array11 = new Float32Array([0.5, -0.25, -0.25, -0.5, 0.0, -1.0, -0.25, -0.5, -0.25, 0.75, 0.75, -0.75, -0.5, -0.75, -1.0, 1.0, -0.5, 0.75, -0.25, 0.0, -1.0, 0.75, 0.25, 0.5, 0.75, 0.0, 1.0, 0.75, -0.75, 0.5, 0.25, -0.25, -1.0, 0.25, -1.0, -1.0, 0.75, -0.25, 0.75, 1.0, -1.0, -0.75, -1.0, -0.75, -1.0, -0.5, -1.0, -0.25, 1.0, 0.25, 0.5, 0.0, -0.75, -0.75, 1.0, -0.5, -0.75, 0.75, 0.25, 0.5, -0.5, 0.5, 1.0, -0.75, 0.5, -1.0, -0.25, 0.75, 0.0, 0.75, -1.0, 0.25, 1.0, 1.0, -0.5, 0.25, 0.75, -1.0, 1.0, 0.5, 0.25, -0.5, -0.75, 0.0, 1.0, 1.0, 0.25, -0.5, -0.75, 1.0, -1.0, 1.0, 0.5, 1.0, 0.0, 0.0, 0.5, 0.75, -0.5, -0.5, ]);
    
    const array12 = new Float32Array([-1.0, 0.75, -0.75, 1.0, -0.25, 0.5, 1.0, -0.75, 0.5, 0.25, 0.25, -0.5, 0.0, -0.75, -1.0, 0.25, -0.75, -0.25, 1.0, 0.75, -0.75, 0.75, -0.75, -1.0, -0.75, 0.25, -1.0, 0.25, -0.5, -0.5, -1.0, -0.25, 0.0, -0.75, 0.0, 0.5, -0.5, -0.5, 0.5, -0.25, -1.0, 0.25, 0.0, 0.25, 1.0, -0.75, -0.5, 0.0, 0.5, -1.0, 1.0, -1.0, -1.0, -1.0, 1.0, -1.0, 0.75, 0.75, 0.5, -0.75, -1.0, -1.0, 0.5, 0.75, 0.25, 0.5, 1.0, 1.0, 0.5, 0.25, -0.5, -0.75, -1.0, 0.0, -1.0, -0.25, -0.25, 1.0, 0.5, -0.5, -1.0, -0.5, 0.75, -1.0, 1.0, 0.75, 0.0, -1.0, 0.0, -0.5, -0.75, -0.25, -0.25, 0.75, -1.0, -0.75, -0.5, 0.0, 0.25, 0.25, ]);
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    
    
    
    
    
    {
        await buffer406.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer406.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer406.unmap();
        console.log(new Float32Array(data));
    }
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    buffer405.destroy()
    
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    buffer404.destroy()
    buffer304.destroy()
}