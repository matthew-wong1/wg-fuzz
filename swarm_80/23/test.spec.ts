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
    
    
    
    
    
    
    
    const array0 = new Float32Array([-0.25, -0.75, 0.0, -0.25, 0.75, 0.75, -1.0, -0.75, 0.75, -0.5, 1.0, 0.75, 0.75, -0.25, 1.0, 1.0, 0.25, 0.0, 0.0, 1.0, -0.75, 0.75, 1.0, 0.75, -0.75, -0.25, -0.75, -1.0, -0.25, 0.5, 0.0, -0.75, -1.0, 0.5, -0.5, 0.75, -0.25, 0.5, 0.75, 0.25, 0.0, 0.75, -0.75, 1.0, -0.75, 0.5, -0.5, -1.0, -0.5, -1.0, -0.5, -0.25, 0.75, 0.0, 0.0, 1.0, 0.25, -0.25, 0.75, 1.0, 0.0, 0.75, 0.5, -0.75, -1.0, 1.0, -1.0, -0.75, -0.25, 0.75, -1.0, 0.5, 0.25, -0.75, -0.25, 0.75, 0.5, 0.5, 0.75, 0.5, 0.25, 0.75, 0.75, 1.0, 0.25, -1.0, -1.0, -0.75, -1.0, 0.0, 0.5, 0.0, 0.5, 0.0, -1.0, -0.25, -0.5, -0.25, 1.0, 1.0, ]);
    
    
    
    const array1 = new Float32Array([1.0, -0.75, -0.75, 0.0, 0.5, -0.25, 0.5, -0.25, -1.0, 0.5, -0.5, 0.25, -0.25, 0.25, -1.0, -0.5, 0.75, 0.5, -0.75, 1.0, -1.0, 0.5, -0.5, 1.0, -0.25, 1.0, 0.25, -0.25, -1.0, -1.0, -1.0, -0.25, 0.0, -0.75, -0.25, 0.0, -0.5, 0.75, -0.5, 0.0, 0.25, -0.25, 0.0, -0.5, 0.25, -1.0, -0.75, 0.5, 1.0, -0.25, 0.25, 1.0, 0.75, 0.25, -0.75, 0.5, -0.75, 0.25, -0.75, 0.25, -1.0, 1.0, -1.0, -0.5, -0.5, 1.0, 0.5, 0.75, -0.25, 0.75, -0.75, 0.5, 0.5, 0.5, 0.75, -0.25, -0.75, 0.25, 0.25, -0.5, 0.5, -0.5, -0.75, -1.0, -0.25, -0.5, -0.5, -0.75, 0.0, -0.5, -0.5, -0.5, -0.25, -0.75, 1.0, -0.75, -0.25, 0.0, 0.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array2 = new Float32Array([-0.75, 1.0, -0.75, -0.75, -1.0, 1.0, 0.0, 0.0, -0.75, -1.0, -0.75, 0.75, -0.75, -0.5, -0.25, -0.75, 0.75, 0.25, -0.5, -0.75, 1.0, -0.5, 0.5, -0.75, 0.5, 0.75, 0.25, -0.5, 0.0, 0.75, 1.0, -0.25, 0.0, -0.75, -1.0, -0.75, -1.0, -0.25, 0.25, -0.75, 0.0, -0.25, -0.25, -1.0, 0.0, -0.25, -0.75, -0.5, -0.75, 0.0, -0.75, -0.75, 0.75, -0.5, 0.75, -1.0, 0.25, -0.5, 1.0, 0.75, 0.5, 0.0, 1.0, 1.0, 0.25, 0.25, 0.5, 0.5, -0.5, 0.0, -0.25, -0.75, -0.25, 0.25, 0.0, 0.0, -0.5, 1.0, -0.75, 0.5, -1.0, 0.0, 0.5, 0.75, 0.5, 0.25, -0.75, 0.0, 0.25, -0.25, -1.0, 0.25, 0.25, 0.0, -0.75, -0.5, 1.0, 0.0, 0.25, 1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.pushErrorScope("internal");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    texture100.destroy();
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([0.0, 1.0, 0.25, 0.0, -0.75, 0.25, 1.0, 1.0, 0.25, -0.5, -0.5, 0.5, 0.5, -0.5, 1.0, -0.5, 0.75, 0.0, -0.5, 0.5, 0.25, -0.25, 0.5, 0.5, -1.0, -0.75, -0.25, -0.5, 0.5, -0.5, -0.25, -1.0, -0.75, -0.75, -0.75, 1.0, 1.0, 0.75, 0.75, 0.75, 0.25, 1.0, 1.0, -0.75, 0.0, -0.75, 0.25, 0.5, -0.75, 0.5, -0.5, 1.0, 1.0, -0.75, 0.75, -0.75, 0.25, -0.25, -0.25, -0.25, 1.0, -0.5, 0.5, 0.25, -0.75, 0.75, 0.0, -1.0, 1.0, 1.0, -0.75, 0.75, -1.0, 0.25, 0.5, -1.0, -0.5, 0.0, 0.5, 0.0, 0.25, -0.75, 0.0, -0.5, -1.0, -0.5, 0.75, 0.0, -0.75, -0.25, -0.75, -0.5, 0.25, -1.0, 0.0, -0.25, 0.25, -0.5, -1.0, -0.25, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const array4 = new Float32Array([-1.0, -1.0, 0.75, 0.75, 0.75, -1.0, -0.25, 1.0, 0.5, 1.0, 1.0, -0.25, 1.0, -0.5, -0.25, 0.75, 0.75, -0.5, 1.0, 0.5, -0.75, -0.75, 0.0, 0.75, -1.0, -0.25, -0.25, 0.75, -1.0, 0.75, -0.75, -0.75, 0.5, -0.75, -0.5, -1.0, -0.5, 0.25, 0.75, -0.75, -1.0, -0.25, -0.25, 0.5, 0.0, 0.5, 0.75, 0.75, 0.5, 1.0, 0.0, -0.25, -0.25, 0.25, -1.0, 0.5, 0.75, 0.5, 0.5, -0.25, 0.25, -0.75, 0.75, 0.75, -0.25, -1.0, -0.5, -1.0, -0.75, -1.0, 0.0, 1.0, -0.25, -0.75, 0.5, -1.0, 1.0, 0.25, -1.0, -0.25, 0.5, -0.25, 0.5, 0.25, 0.5, -1.0, 0.5, 0.0, -1.0, 0.5, 0.0, 0.25, -1.0, -1.0, 1.0, -0.25, -0.5, -1.0, -0.25, 0.75, ]);
    device20.pushErrorScope("out-of-memory");
    
    query100.destroy()
    
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.destroy();
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.pushErrorScope("validation");
    query200.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.popDebugGroup();
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device20.pushErrorScope("out-of-memory");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    texture200.destroy();
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const array5 = new Float32Array([-0.5, 0.25, 0.0, -0.5, 0.25, -0.5, 0.0, 0.0, 0.0, 1.0, 1.0, -0.25, 0.0, 0.25, 0.0, -0.25, -0.75, -1.0, -0.75, -1.0, -0.75, 0.5, 0.5, -1.0, -0.25, -0.5, 1.0, -0.5, -0.5, 0.25, 0.5, -0.25, 1.0, 0.25, -0.25, -0.25, 0.25, -1.0, 0.5, 0.75, -0.75, 0.5, -0.25, -0.5, 0.0, 0.0, 0.75, 1.0, 1.0, 0.75, -0.5, -0.5, 0.75, -0.75, -0.75, -0.25, 0.0, 0.75, -0.25, 0.5, -0.25, -0.25, -1.0, 0.75, 0.75, -0.5, 1.0, 0.0, 0.5, -0.25, 0.75, 0.0, 1.0, 0.5, -0.5, -0.5, 1.0, 0.5, 0.0, -0.5, 1.0, 0.5, -0.25, 1.0, 0.25, -0.25, 0.5, 0.25, 0.5, 0.25, 1.0, -0.75, -1.0, -0.5, 0.0, 0.25, 1.0, -0.5, 0.25, -0.5, ]);
    
    const array6 = new Float32Array([0.0, 0.0, -0.75, 0.75, 0.25, -1.0, 1.0, 1.0, 0.75, -0.5, 0.75, -1.0, -0.25, 1.0, 0.75, 0.75, -1.0, -0.25, 0.25, 0.75, -0.75, -1.0, -1.0, -0.75, -0.5, -0.5, 0.0, 0.0, -0.25, 0.0, -0.25, -0.25, -0.25, 0.75, -0.25, 1.0, -0.5, 0.0, -1.0, -0.5, -0.75, 0.25, -0.25, -1.0, -0.75, 0.75, -0.5, -1.0, 0.75, -0.5, 0.5, -0.5, 1.0, -0.75, -1.0, 0.5, 0.75, 1.0, 0.5, -0.25, 0.0, -1.0, 0.5, 0.75, -0.75, -1.0, 0.0, 0.0, 0.75, -0.75, 0.75, -0.75, 1.0, -0.5, -0.25, -0.5, 0.25, 1.0, 1.0, -1.0, 0.0, -1.0, 0.0, 0.0, -0.75, -0.25, 0.75, -0.75, -1.0, 0.0, 1.0, 0.0, -0.25, -0.5, -0.5, 0.75, 0.5, -0.5, -0.25, -0.25, ]);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    query300.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
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
    buffer200.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture300.destroy();
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const array7 = new Float32Array([0.0, 0.0, 0.75, 1.0, -0.25, -0.25, 1.0, -0.75, 1.0, -1.0, 0.0, 0.75, -1.0, -1.0, -0.75, 0.25, 0.25, 0.0, -1.0, 0.75, 0.25, 0.75, -1.0, 1.0, -0.25, 1.0, 0.25, -0.75, -0.25, 1.0, -1.0, -0.5, 1.0, -1.0, 0.25, -0.25, -1.0, -0.5, -1.0, -0.75, 0.0, 0.0, 1.0, 0.5, -0.25, 1.0, 1.0, 0.0, 1.0, 1.0, 0.0, 0.25, -1.0, 0.5, 0.5, 1.0, -1.0, 1.0, 0.5, -0.5, 1.0, -0.75, -0.25, 0.0, 1.0, -0.25, 0.75, 0.25, 0.0, 1.0, -0.75, 1.0, 0.5, -0.25, 0.5, 0.5, -1.0, 0.25, 0.75, 0.25, -0.25, -0.25, 0.25, 0.25, 0.25, 1.0, 1.0, -0.75, 0.75, -0.75, 0.25, -0.25, -0.75, 0.5, -0.25, 0.75, 0.5, 1.0, 0.25, -0.25, ]);
    
    query300.destroy()
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer301.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("validation");
    
    const array8 = new Float32Array([-0.25, -1.0, 1.0, -0.75, -1.0, -0.75, -0.5, 0.5, -0.5, -1.0, 0.5, -1.0, -0.5, -0.25, -1.0, 0.75, 1.0, -1.0, 0.5, -0.25, 0.5, -0.25, 0.5, -0.75, 0.75, 1.0, -1.0, -0.5, 0.0, 0.5, -0.75, 0.25, 1.0, -0.25, -0.5, 1.0, 1.0, -0.25, 0.75, 0.0, -0.5, -1.0, -0.5, -0.5, 0.75, 0.5, 0.5, 0.25, -0.75, 0.0, 0.25, 0.25, 0.25, -0.5, -1.0, -1.0, -0.25, -0.5, -1.0, 0.25, 0.25, 0.25, -0.5, 0.25, 0.0, 0.5, 0.75, 0.25, -0.25, 0.0, -0.75, -0.5, 0.5, 0.5, -1.0, -0.25, 0.25, -0.75, 0.75, 0.25, -0.25, 1.0, 0.75, 0.25, 0.25, -0.75, -0.75, 0.75, -1.0, 1.0, -0.75, 0.25, 1.0, 0.5, -0.25, 0.0, 0.75, 0.5, -0.25, 0.75, ]);
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    texture301.destroy();
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    query300.destroy()
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query301.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device30.pushErrorScope("internal");
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    buffer300.destroy()
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query201.destroy()
    
    render_bundle_encoder201.popDebugGroup();
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("validation");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device20.destroy();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device40.destroy();
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    
    
    
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const array9 = new Float32Array([0.75, 0.25, -0.5, -1.0, -1.0, -0.5, -0.5, -1.0, 0.25, -0.5, 0.0, 1.0, 0.0, 1.0, 0.5, 0.5, 0.25, 1.0, -0.5, 0.25, -1.0, -0.75, -0.75, 1.0, 0.25, 0.5, 0.25, 1.0, 0.25, -0.5, 0.0, -0.5, -0.75, 0.0, -0.25, -0.75, 0.5, -0.75, -1.0, 0.75, 1.0, 0.0, -0.25, 0.5, -0.25, 1.0, 0.5, -0.75, 0.5, -0.75, -0.75, -0.5, 1.0, -0.75, 0.5, 1.0, -0.5, 0.25, -0.25, -1.0, -0.5, 0.75, 0.5, 0.25, 0.5, -0.25, 1.0, -0.5, 0.0, 0.25, 0.0, 0.75, 0.75, -0.5, -0.25, 0.5, -1.0, 0.25, 1.0, -1.0, -1.0, 0.75, 0.75, 0.5, 0.5, 0.5, -0.25, -0.5, 0.5, -0.25, 0.25, 0.5, 0.5, -0.25, -1.0, -0.25, -0.75, 0.25, -1.0, -0.75, ]);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture_view3023 = texture302.createView({ label: "texture_view3023" });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const array10 = new Float32Array([0.25, 0.25, -0.25, 0.0, 0.5, 0.0, -0.25, 0.0, 0.5, -0.5, -0.25, 1.0, 0.25, 0.75, 0.75, -0.25, 0.25, -0.75, 0.5, -0.5, 0.75, -0.5, 1.0, -0.75, -0.5, -1.0, 1.0, 1.0, 0.0, -0.25, 0.25, 1.0, -0.25, 0.25, -0.75, -0.5, -0.25, 0.0, 0.5, 1.0, -0.75, 0.25, 1.0, 0.25, 0.25, 1.0, 0.25, -0.75, 1.0, 0.25, 0.75, 0.25, -0.75, -0.25, 0.0, 1.0, 0.0, -0.25, 0.0, -0.75, 0.25, -0.25, -1.0, -0.25, -0.25, -1.0, -0.75, -0.5, -0.25, -0.75, 0.5, 0.25, -0.75, 0.5, -0.25, -0.75, -1.0, -0.25, -0.25, 0.75, 0.5, -0.25, 1.0, 0.75, 0.25, -0.5, -0.75, 1.0, 1.0, 0.0, 0.75, -0.5, -0.25, 1.0, 1.0, 1.0, -0.75, -1.0, -0.75, 1.0, ]);
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3024 = texture302.createView({ label: "texture_view3024" });
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query300.destroy()
    
    
    
    texture302.destroy();
    
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const array11 = new Float32Array([0.75, 0.0, -0.25, 0.75, 0.75, 1.0, -0.25, 0.0, -0.25, 0.25, -0.25, -1.0, -0.25, 0.0, 0.75, -0.75, -0.25, -0.75, 0.5, 0.5, 0.5, -0.25, 1.0, 0.5, 0.5, -0.25, -0.5, 0.25, -0.25, 0.25, -0.25, -0.75, -0.5, 0.0, 0.25, -0.75, 0.0, -1.0, 0.75, 0.5, 1.0, 0.0, 0.75, -1.0, -0.75, 1.0, 0.0, -1.0, -1.0, 1.0, -0.5, -0.25, 0.5, 0.25, 1.0, 0.0, 0.5, 0.5, 0.75, 1.0, -0.25, -0.25, 1.0, 0.5, -1.0, -0.25, -0.25, -1.0, -1.0, -0.25, 0.5, 1.0, -0.25, -0.5, 0.5, 0.5, 0.25, 1.0, 0.25, 0.0, -0.5, 0.0, -0.25, -0.5, 0.5, 0.5, 0.75, 1.0, 1.0, -0.75, 0.0, 0.25, -1.0, -1.0, 0.75, 0.25, 0.25, -0.25, -0.75, 0.75, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    texture303.destroy();
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    buffer304.destroy()
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query300.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    buffer600.destroy()
    
    
    
    device30.pushErrorScope("internal");
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query300.destroy()
    
    device60.pushErrorScope("out-of-memory");
    
    
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    device50.pushErrorScope("internal");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture602 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.destroy();
    
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    device60.queue.writeTexture({ texture: texture602 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    device60.queue.writeTexture({ texture: texture602 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device60.queue.writeTexture({ texture: texture602 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    texture602.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    device60.queue.writeBuffer(buffer602, 0, array7, 0, array7.length);
    device50.destroy();
    device60.queue.writeBuffer(buffer602, 0, array8, 0, array8.length);
    const texture_view6040 = texture604.createView({ label: "texture_view6040" });
    device60.queue.writeBuffer(buffer602, 0, array9, 0, array9.length);
    texture603.destroy();
    
    device60.queue.writeBuffer(buffer602, 0, array9, 0, array9.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view6041 = texture604.createView({ label: "texture_view6041" });
    device60.destroy();
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    buffer800.destroy()
    
    
    
    
    texture900.destroy();
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device80.destroy();
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const array12 = new Float32Array([1.0, 1.0, 0.75, 0.75, 0.5, 0.5, 0.25, -1.0, 0.75, -0.25, -0.25, -0.5, -0.5, 0.75, -0.25, 0.75, 0.5, 0.5, -0.25, -0.25, -1.0, 1.0, -0.5, -0.75, -1.0, -0.5, -0.75, -1.0, 0.25, -1.0, -0.75, -1.0, 0.5, -1.0, -0.5, -1.0, -1.0, -0.25, 0.5, -0.25, 0.75, 0.5, 0.5, 0.75, -0.5, -0.75, 0.5, 0.25, -0.25, 1.0, -0.75, 0.75, 0.5, 0.75, -0.75, 1.0, -1.0, 0.75, -0.25, 0.75, 0.5, 0.75, 0.5, 0.5, 0.5, 0.0, -0.5, 0.75, -1.0, 0.5, -0.75, 0.5, -0.75, -1.0, 0.75, -0.5, 1.0, 0.75, -1.0, -0.75, 0.25, 0.5, 1.0, -1.0, -0.5, -0.25, 0.0, 0.25, -0.25, -0.25, -0.25, -0.5, -1.0, 0.0, 0.5, 0.75, -0.75, -0.25, -0.25, 1.0, ]);
    
    device70.destroy();
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder901.pushDebugGroup("group_marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    texture901.destroy();
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    device90.pushErrorScope("internal");
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    device110.destroy();
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder900.popDebugGroup();
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    device100.destroy();
    
    texture902.destroy();
    const array13 = new Float32Array([0.5, 0.75, 0.0, 1.0, 0.25, 0.0, 0.5, 0.75, 0.0, -1.0, 0.75, -0.75, 0.0, 1.0, 0.75, 0.75, 1.0, -0.5, -1.0, 1.0, -0.5, 0.25, 0.25, -1.0, 1.0, 0.25, -0.75, 1.0, -0.5, -0.25, 1.0, 0.25, 0.5, 0.25, 0.75, 0.75, 0.5, 0.5, 0.5, -0.5, 1.0, -0.25, 0.0, -0.5, 0.75, -1.0, -0.25, 0.25, 0.0, 0.0, -0.5, 1.0, 0.5, -0.75, 0.25, 0.0, 0.75, 0.25, -0.75, 0.0, -1.0, -1.0, 0.0, -0.25, 0.25, 1.0, -0.5, -0.25, 1.0, -1.0, -0.25, -1.0, -0.25, 1.0, -0.25, 1.0, -0.5, -1.0, 0.0, -0.25, 0.25, -0.75, -1.0, -0.5, -1.0, 1.0, -0.5, -0.25, -0.75, 1.0, -0.5, -1.0, 0.25, -0.75, -1.0, 0.5, -0.75, 0.0, 0.5, -0.75, ]);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array14 = new Float32Array([-1.0, -0.25, -1.0, -0.5, 1.0, -1.0, -0.75, 0.0, 1.0, 1.0, 1.0, -0.5, 1.0, 0.25, 0.5, 0.75, -0.25, -1.0, -0.75, -0.75, -0.25, 0.25, -0.75, -1.0, 0.25, 0.25, 0.0, 0.0, 1.0, -0.5, -0.5, 0.0, -0.25, -0.75, 0.0, 0.0, 0.5, 0.25, 0.75, -0.5, 0.5, -0.5, -0.25, 0.75, -0.75, 1.0, -0.75, 0.75, 0.5, -0.75, 0.75, 1.0, 0.5, -0.75, 0.5, 1.0, 0.5, 1.0, -1.0, 1.0, 1.0, 0.25, 0.75, 0.75, -0.75, 0.5, -1.0, 0.5, -0.75, 0.0, 0.5, 0.75, -1.0, -0.5, -0.5, 0.25, -0.25, 0.5, 1.0, 0.5, 0.75, -0.5, -0.75, -0.75, 0.0, 0.75, -0.75, 0.0, 0.25, 0.5, -0.5, 0.0, -1.0, -0.75, -0.75, 0.75, -0.5, 0.75, 0.5, 0.25, ]);
    
    const array15 = new Float32Array([0.0, -0.5, 0.25, -1.0, -0.5, 0.0, 1.0, 0.25, -0.75, -1.0, 0.5, 0.25, 0.0, 0.75, -0.25, -0.75, -0.25, 1.0, -0.75, -0.5, -0.25, 0.75, 0.75, 0.5, 0.75, -0.25, -0.5, -1.0, -0.25, -0.75, -0.5, -0.75, 0.75, -0.75, -1.0, -0.25, -1.0, 1.0, -0.25, 0.25, -0.5, 0.25, -0.25, 1.0, -1.0, 0.0, -0.75, -0.75, 0.75, 0.0, 0.0, -1.0, 0.75, 1.0, -0.75, 0.0, -0.25, 0.75, -1.0, 0.0, -0.5, 0.0, -0.75, 0.75, -0.5, 0.75, -0.5, -0.75, 0.5, -0.25, -0.75, -0.5, 0.0, -0.5, 0.25, 0.75, 1.0, -0.25, 0.25, 0.5, 0.5, 0.25, 0.0, 0.0, 1.0, 0.75, -0.75, -0.75, 0.0, -1.0, 0.5, 0.5, 1.0, -1.0, 0.0, -0.5, 0.25, 0.5, -0.75, 0.5, ]);
    device90.destroy();
    
    
    
    
    
}