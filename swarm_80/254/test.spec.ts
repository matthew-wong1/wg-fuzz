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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array0 = new Float32Array([0.0, 0.5, -0.75, 0.5, -0.75, -0.5, 1.0, 0.75, 1.0, -1.0, 0.0, -0.5, 0.0, -0.75, -0.75, -0.5, 1.0, -1.0, -0.5, -1.0, -0.5, 0.25, 0.75, -0.25, -0.75, -0.5, 0.25, 0.0, 0.5, 0.75, 1.0, 0.25, 0.5, -0.75, 0.0, 0.75, 0.25, -0.25, 0.0, -0.25, -1.0, 0.75, -0.25, -0.75, -1.0, 0.25, 0.75, -0.75, 0.75, 0.25, 0.25, -0.5, -0.75, -1.0, 0.75, 1.0, -0.75, 1.0, -0.75, -0.25, -0.75, -0.25, -0.5, 0.0, 1.0, -0.25, 0.75, -0.75, -1.0, -0.25, 1.0, -0.75, -0.25, -0.75, 1.0, 0.5, -0.75, -0.25, 0.0, -1.0, -1.0, 1.0, 1.0, 0.0, -0.25, 0.25, -0.25, -0.75, -0.75, 0.25, 1.0, -1.0, 0.25, 0.75, -0.5, 0.25, -0.25, 0.25, -0.75, -1.0, ]);
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device30.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array1 = new Float32Array([1.0, -0.25, 0.25, -0.25, -0.25, 0.0, -0.75, 1.0, -0.25, 0.25, 0.5, -1.0, 0.5, -1.0, -0.75, 0.5, 1.0, 0.5, 1.0, -0.5, 0.75, -0.75, -0.5, -0.5, -1.0, -0.75, -0.75, -0.25, -0.5, 1.0, 0.25, 0.5, -1.0, -1.0, -0.25, -0.75, 0.25, -0.75, 0.5, -0.25, -0.25, 0.25, -0.5, 1.0, -0.75, -0.75, 0.0, -0.75, 0.5, -0.25, 1.0, -0.75, 0.0, 0.5, 1.0, 1.0, 0.0, 0.0, 0.25, 0.0, 0.75, 1.0, 0.25, 0.75, -1.0, 1.0, 0.0, -0.25, -0.25, 1.0, 0.75, -1.0, 0.0, 0.0, -0.25, -0.75, -0.5, 0.0, 1.0, 0.25, -0.75, -0.75, -1.0, -0.5, 0.5, 1.0, 0.5, -0.75, -0.5, -1.0, 0.0, -1.0, -0.25, -0.25, -0.5, 0.5, -0.25, -0.25, 1.0, 0.25, ]);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    device10.pushErrorScope("internal");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array2 = new Float32Array([0.75, 0.25, -0.25, -0.75, -0.25, 0.25, 0.5, 1.0, 0.75, 0.5, -1.0, 0.5, 0.75, 0.0, -0.5, 1.0, -0.5, 1.0, -1.0, -0.25, -0.25, 0.25, -0.25, 0.25, 0.75, 0.75, 0.0, 0.5, -0.25, -0.5, -1.0, 0.5, 0.0, -1.0, -0.75, -0.75, -0.5, 0.75, 0.25, -0.5, -0.5, 0.0, -0.5, 0.25, -0.25, 0.75, 0.75, -0.5, 0.75, 0.0, -0.5, 0.25, 1.0, -0.75, -1.0, -0.75, 1.0, 0.25, 1.0, 0.0, 0.75, 0.0, 0.0, 0.0, -0.25, -0.5, -0.75, -0.75, -0.75, -0.5, 0.75, -0.5, -0.5, -0.5, 1.0, 0.0, -0.25, 0.75, -0.25, 0.25, -0.5, 0.0, -1.0, 0.5, 0.75, 0.0, -1.0, 0.0, -0.75, 1.0, -0.75, -0.25, -0.25, 0.0, -0.25, 0.25, -0.5, 0.0, 1.0, 1.0, ]);
    device20.destroy();
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query101.destroy()
    
    const array3 = new Float32Array([1.0, -1.0, 0.0, 1.0, -0.25, -0.75, -0.5, 0.5, -0.75, 0.0, -1.0, -1.0, 0.25, -0.5, 0.25, 0.75, 0.25, 1.0, 0.0, 0.75, 0.25, -0.5, 0.0, 0.5, 0.25, -0.75, 0.0, 1.0, -0.75, 0.75, -1.0, 0.0, -0.5, 1.0, -0.25, 0.75, -0.5, 0.5, 0.5, -0.75, 0.75, -1.0, -0.5, -0.75, 1.0, 1.0, -0.25, 0.25, 0.5, 1.0, 0.5, -0.25, 0.0, 0.25, -0.75, -0.75, 1.0, -0.5, 0.25, -1.0, 1.0, 0.5, 0.0, 0.5, 0.5, -0.5, -0.5, 0.75, -0.75, 0.0, 1.0, -0.5, -1.0, 0.0, -1.0, 0.75, 1.0, -0.5, 0.0, 0.0, -0.75, 0.0, -0.25, 0.5, -0.5, 0.75, -1.0, 0.75, -0.75, 0.5, 0.0, -0.25, 0.0, 0.25, -0.75, -0.75, 0.25, -0.75, -0.75, -0.75, ]);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const array4 = new Float32Array([0.0, -0.5, -0.5, -0.25, -0.75, -0.5, -1.0, 1.0, 0.0, 1.0, -0.75, -0.25, 1.0, -0.5, -1.0, 0.0, -0.75, 0.25, -0.25, 0.75, 0.5, 1.0, 0.25, 0.5, 1.0, 0.25, 0.75, -0.5, -0.75, -0.5, 0.5, 0.0, -1.0, 0.75, 0.25, -0.75, 0.0, 0.25, 0.25, 0.0, -0.5, 1.0, 0.75, 1.0, 0.0, 0.0, -0.5, -0.75, -1.0, -1.0, 0.25, 0.75, 0.75, 1.0, 1.0, 1.0, -0.75, -0.75, 0.75, 0.5, 0.75, -0.75, 1.0, 0.0, 0.5, 0.25, 0.75, 1.0, 0.5, 0.5, 0.5, 0.0, -0.75, 0.75, 0.75, 1.0, -0.5, 0.25, 0.5, 0.75, 0.75, -0.25, 0.0, 0.75, 0.25, 0.0, 1.0, -0.75, 0.0, -0.5, -1.0, -1.0, -0.25, -1.0, -0.75, 0.75, -1.0, 0.0, -1.0, -0.75, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.pushErrorScope("internal");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query101.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device10.destroy();
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device40.pushErrorScope("validation");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    
    
    query500.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    device40.pushErrorScope("validation");
    const array5 = new Float32Array([-1.0, -1.0, -0.25, 1.0, -0.5, -0.5, 0.5, 0.75, -0.75, 1.0, 0.75, -0.75, 0.75, 0.0, 0.0, -0.5, 0.25, -0.5, -0.75, -0.25, 0.25, -0.75, -0.5, 0.25, 0.5, -0.5, -0.75, 0.5, 0.0, 1.0, 0.25, -0.25, -0.25, 1.0, -1.0, 0.75, -0.25, 0.0, -0.25, 0.5, -0.75, 1.0, 0.25, 0.75, 0.75, 0.5, 1.0, -0.25, -0.75, 0.5, 0.25, 0.0, 0.0, -0.5, 0.5, -0.25, 0.25, 0.25, 0.25, 0.0, 1.0, -0.75, -0.75, -1.0, 0.5, -0.25, 0.75, -0.75, -0.25, 0.25, -1.0, 0.25, -1.0, -0.5, 0.75, -0.5, 0.5, 0.25, -0.5, 0.0, 1.0, -0.5, -1.0, 0.25, 0.75, 0.5, -0.75, -0.5, 0.5, 0.25, -0.5, -0.75, -0.75, -0.5, -1.0, 1.0, -0.75, 0.5, -0.75, 0.75, ]);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    texture400.destroy();
    query400.destroy()
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query501.destroy()
    
    const array6 = new Float32Array([-0.5, 0.5, 0.0, 0.75, -0.5, 0.5, -0.25, 1.0, -1.0, 1.0, 0.5, 0.5, -0.25, 0.75, -0.75, -0.25, -0.5, -0.5, -0.25, -1.0, 0.5, 0.5, -1.0, 0.0, 0.0, 1.0, 0.0, -0.75, -0.75, -1.0, -0.75, 1.0, 1.0, 0.0, -0.5, 0.0, 1.0, -0.5, -0.75, -0.25, -1.0, -1.0, 0.5, 1.0, 1.0, 1.0, -0.75, 0.0, -0.25, 0.5, 1.0, 0.25, -0.5, -0.5, 1.0, 0.75, 0.0, 0.5, -0.5, 0.5, 0.0, 0.5, -0.75, 0.0, -1.0, 1.0, 0.0, 0.5, 0.5, 0.5, 0.5, 0.5, -0.25, -0.5, 0.5, -0.75, -0.5, 0.0, 0.5, 0.0, -1.0, -0.75, -1.0, -0.5, -0.5, -1.0, -0.25, 0.0, -0.75, 0.75, 0.75, 1.0, 0.5, -1.0, 0.25, 0.0, -1.0, -1.0, -0.75, -0.25, ]);
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture402 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query502.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture402 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture401.destroy();
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    texture402.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer503, 0, array2, 0, array2.length);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    device50.pushErrorScope("out-of-memory");
    query500.destroy()
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer503, 0, array6, 0, array6.length);
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    texture500.destroy();
    render_bundle_encoder500.insertDebugMarker("marker");
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device40.pushErrorScope("out-of-memory");
    device50.queue.writeBuffer(buffer503, 0, array0, 0, array0.length);
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder500.popDebugGroup();
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    query404.destroy()
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeBuffer(buffer503, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer503, 0, array0, 0, array0.length);
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    device50.queue.writeBuffer(buffer503, 0, array0, 0, array0.length);
    device50.queue.writeBuffer(buffer503, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer503, 0, array5, 0, array5.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeBuffer(buffer505, 0, array4, 0, array4.length);
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device50.queue.writeBuffer(buffer503, 0, array5, 0, array5.length);
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer505, 0, array3, 0, array3.length);
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([-1.0, 0.0, -0.5, -0.75, 0.75, 0.75, 0.0, -0.5, 0.25, 0.75, 0.5, 0.0, 0.75, -0.25, 0.25, 0.0, 0.75, -0.5, 0.25, 0.75, 0.75, 0.75, 0.25, 0.25, 0.25, -0.25, 0.5, 0.0, 1.0, -0.75, -0.75, -1.0, -1.0, -0.75, 1.0, 0.25, 1.0, 0.0, -0.25, 1.0, -0.25, 0.5, -0.25, 1.0, -0.5, 0.25, 1.0, 0.0, -0.25, -0.5, -1.0, 0.75, 0.5, -0.25, -0.75, 0.75, -0.25, 0.0, 0.25, -0.25, -0.25, -1.0, -1.0, -0.25, 0.5, 0.0, -0.5, -1.0, -0.75, -0.75, -0.25, 0.75, 1.0, 0.25, 0.75, 0.0, 0.5, 1.0, 1.0, -0.25, 1.0, -0.25, 0.5, 0.0, -1.0, -0.75, 0.5, -1.0, 1.0, -1.0, -0.5, 0.25, 0.25, 0.75, 0.75, 0.0, 1.0, 0.75, 0.5, -0.75, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    query401.destroy()
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer503, 0, array6, 0, array6.length);
    device40.destroy();
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([-1.0, -1.0, -0.25, 1.0, 0.75, 0.75, -0.5, -0.75, 0.0, -0.75, 0.25, 1.0, 0.0, -0.5, -0.25, 0.75, -0.25, 0.0, -0.25, 0.0, -0.5, 0.75, 1.0, -0.5, -0.75, -0.75, -1.0, 0.0, 0.0, 0.25, 0.5, 0.75, -0.25, 0.0, -0.25, -1.0, -0.25, -0.25, 0.75, 1.0, 0.5, 0.75, 0.5, -0.75, 1.0, 0.25, -1.0, 0.25, -0.5, -0.75, -0.75, 0.75, 0.0, 0.0, 1.0, 0.0, 0.5, 1.0, 0.25, 0.25, -0.75, -1.0, -0.25, 0.5, -1.0, -0.25, -0.5, -0.5, -0.25, -0.25, -1.0, 0.0, -0.5, 0.5, 0.5, 0.5, 0.25, 0.0, -0.75, 1.0, -0.25, -1.0, -0.25, -0.25, 0.0, 0.75, 0.0, 0.0, 0.5, 0.0, 0.25, -0.5, 0.75, 1.0, 0.0, -0.25, 0.5, -0.75, 0.25, 1.0, ]);
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeBuffer(buffer505, 0, array6, 0, array6.length);
    device50.queue.writeBuffer(buffer503, 0, array7, 0, array7.length);
    
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout503,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout505,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer503, 0, array7, 0, array7.length);
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout503,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout505,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder500.popDebugGroup();
    device50.queue.writeBuffer(buffer505, 0, array8, 0, array8.length);
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout505,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer503, 0, array3, 0, array3.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer505, 0, array1, 0, array1.length);
    const compute_pipeline5024 = device50.createComputePipeline({
        label: "compute_pipeline5024",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    
    device50.pushErrorScope("validation");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const compute_pipeline5025 = device50.createComputePipeline({
        label: "compute_pipeline5025",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    query503.destroy()
    device50.queue.writeBuffer(buffer505, 0, array1, 0, array1.length);
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline5026 = device50.createComputePipeline({
        label: "compute_pipeline5026",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeBuffer(buffer505, 0, array6, 0, array6.length);
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline5027 = device50.createComputePipeline({
        label: "compute_pipeline5027",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    query501.destroy()
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline5028 = device50.createComputePipeline({
        label: "compute_pipeline5028",
        layout: pipeline_layout505,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer505, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer505, 0, array8, 0, array8.length);
    const compute_pipeline5029 = device50.createComputePipeline({
        label: "compute_pipeline5029",
        layout: pipeline_layout504,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer505, 0, array0, 0, array0.length);
    device50.queue.writeBuffer(buffer505, 0, array6, 0, array6.length);
    const compute_pipeline5030 = device50.createComputePipeline({
        label: "compute_pipeline5030",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5031 = device50.createComputePipeline({
        label: "compute_pipeline5031",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer503, 0, array6, 0, array6.length);
    const compute_pipeline5032 = device50.createComputePipeline({
        label: "compute_pipeline5032",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5033 = device50.createComputePipeline({
        label: "compute_pipeline5033",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5034 = device50.createComputePipeline({
        label: "compute_pipeline5034",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer505, 0, array6, 0, array6.length);
    device50.queue.writeBuffer(buffer505, 0, array3, 0, array3.length);
    query701.destroy()
    const compute_pipeline5035 = device50.createComputePipeline({
        label: "compute_pipeline5035",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    query701.destroy()
    
    const compute_pipeline5036 = device50.createComputePipeline({
        label: "compute_pipeline5036",
        layout: pipeline_layout506,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    const compute_pipeline5037 = device50.createComputePipeline({
        label: "compute_pipeline5037",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5038 = device50.createComputePipeline({
        label: "compute_pipeline5038",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    texture502.destroy();
    
    const compute_pipeline5039 = device50.createComputePipeline({
        label: "compute_pipeline5039",
        layout: pipeline_layout504,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    query500.destroy()
    
    device50.queue.writeBuffer(buffer505, 0, array2, 0, array2.length);
    device50.queue.writeBuffer(buffer503, 0, array5, 0, array5.length);
    const compute_pipeline5040 = device50.createComputePipeline({
        label: "compute_pipeline5040",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query504.destroy()
    query701.destroy()
    device50.queue.writeBuffer(buffer505, 0, array5, 0, array5.length);
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const compute_pipeline5041 = device50.createComputePipeline({
        label: "compute_pipeline5041",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5042 = device50.createComputePipeline({
        label: "compute_pipeline5042",
        layout: pipeline_layout502,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline5043 = device50.createComputePipeline({
        label: "compute_pipeline5043",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    const array9 = new Float32Array([1.0, 0.25, 0.0, -0.25, 0.75, -0.25, 0.25, 0.0, 0.25, 0.0, -0.75, -1.0, -1.0, 0.0, 0.75, 1.0, -0.5, 1.0, 0.25, -0.5, -0.5, 0.0, -0.5, 0.75, 0.5, 0.0, 0.0, -1.0, -1.0, -0.75, 0.5, 1.0, -0.5, -0.75, 0.75, 1.0, -1.0, -1.0, 0.75, -0.25, 0.75, -0.25, -0.75, 0.75, -1.0, -0.75, 0.0, -0.75, -0.75, -0.25, 0.5, 0.0, 0.5, -0.5, -0.75, 0.25, -1.0, 0.5, 0.5, 0.0, -1.0, 0.5, 0.25, -0.75, 1.0, -0.75, 0.5, 0.75, -0.75, -0.5, -1.0, 1.0, 0.75, -0.25, 0.5, -1.0, 1.0, -1.0, 0.25, 0.75, 0.75, -1.0, 0.0, 0.75, 0.25, 0.25, 0.75, 0.25, -0.5, -0.25, -1.0, 0.75, -0.25, -0.75, 0.25, -0.25, 0.0, -0.75, 1.0, 0.75, ]);
    query501.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline5044 = device50.createComputePipeline({
        label: "compute_pipeline5044",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const compute_pipeline5045 = device50.createComputePipeline({
        label: "compute_pipeline5045",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device60.pushErrorScope("out-of-memory");
    const compute_pipeline5046 = device50.createComputePipeline({
        label: "compute_pipeline5046",
        layout: pipeline_layout502,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5047 = device50.createComputePipeline({
        label: "compute_pipeline5047",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5048 = device50.createComputePipeline({
        label: "compute_pipeline5048",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5049 = device50.createComputePipeline({
        label: "compute_pipeline5049",
        layout: pipeline_layout507,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer503, 0, array9, 0, array9.length);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const compute_pipeline5050 = device50.createComputePipeline({
        label: "compute_pipeline5050",
        layout: pipeline_layout504,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline5051 = device50.createComputePipeline({
        label: "compute_pipeline5051",
        layout: pipeline_layout504,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5052 = device50.createComputePipeline({
        label: "compute_pipeline5052",
        layout: pipeline_layout507,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5053 = device50.createComputePipeline({
        label: "compute_pipeline5053",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout501]
    });
    query502.destroy()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const compute_pipeline5054 = device50.createComputePipeline({
        label: "compute_pipeline5054",
        layout: pipeline_layout508,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeBuffer(buffer503, 0, array8, 0, array8.length);
    const compute_pipeline5055 = device50.createComputePipeline({
        label: "compute_pipeline5055",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    device50.pushErrorScope("out-of-memory");
    const array10 = new Float32Array([-0.5, 0.0, 0.25, -0.75, 0.5, 0.25, -0.25, -0.25, -0.5, 0.75, 1.0, 1.0, -0.25, 0.5, 1.0, 0.0, -0.25, 0.5, 1.0, 0.25, 1.0, 0.0, 0.75, 0.5, 1.0, -0.5, -0.5, -0.75, 0.25, -0.75, 0.75, 0.5, 0.0, 0.75, -1.0, 1.0, -0.75, -0.75, -0.5, -0.5, -0.5, 0.0, 0.5, 0.25, 0.0, 0.25, -0.25, -1.0, 0.75, 0.75, 0.25, 0.75, -0.5, 0.5, -0.75, -0.75, -0.25, -0.75, 0.75, 0.25, -0.25, -0.25, 0.75, 0.5, 1.0, -1.0, 0.25, -0.75, -1.0, 0.25, -0.75, -1.0, 0.0, 0.75, 0.25, 0.0, 0.75, 0.25, 0.75, 0.25, 0.0, 0.5, -1.0, 1.0, 1.0, 0.75, 0.75, -0.25, -0.5, 0.75, -0.5, 0.5, 0.25, 1.0, 0.75, -0.75, -0.75, -0.25, 0.75, -0.5, ]);
    const compute_pipeline5056 = device50.createComputePipeline({
        label: "compute_pipeline5056",
        layout: pipeline_layout507,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5057 = device50.createComputePipeline({
        label: "compute_pipeline5057",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const compute_pipeline5058 = device50.createComputePipeline({
        label: "compute_pipeline5058",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer505, 0, array10, 0, array10.length);
    const array11 = new Float32Array([0.5, -0.5, 0.75, 0.75, 1.0, -1.0, -0.75, 0.5, 0.25, -0.25, -0.75, -0.5, 0.0, 0.5, -0.25, -0.25, -1.0, -0.75, 0.75, -0.75, -0.25, -0.5, 0.0, 0.0, -0.25, 0.0, 0.25, -0.75, 0.25, 1.0, 0.5, -0.5, -0.25, 0.75, 0.75, 0.75, 0.25, 0.75, -0.25, 0.5, 0.5, -0.75, -0.75, 0.5, -0.75, -0.25, -1.0, -0.5, 0.75, -0.75, -1.0, -0.25, 0.0, -0.5, -0.25, -0.25, -0.25, 0.75, 0.75, -0.75, 0.25, -0.5, -0.5, 1.0, -0.5, 0.0, 0.75, -0.75, 0.25, 0.0, 0.0, 0.5, -0.25, -0.25, 0.0, -0.5, -0.75, -0.75, -0.25, 0.0, -1.0, 1.0, 0.5, -1.0, -0.75, -1.0, -0.75, 0.75, 0.25, 1.0, 0.0, -0.75, 0.0, 0.0, -1.0, 1.0, 0.0, -0.75, 0.25, 0.0, ]);
    const compute_pipeline5059 = device50.createComputePipeline({
        label: "compute_pipeline5059",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline5060 = device50.createComputePipeline({
        label: "compute_pipeline5060",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout503]
    });
    const pipeline_layout5011 = device50.createPipelineLayout({ 
        label: "pipeline_layout5011",
        bindGroupLayouts: [bind_group_layout500]
    });
    query500.destroy()
    const compute_pipeline5061 = device50.createComputePipeline({
        label: "compute_pipeline5061",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5062 = device50.createComputePipeline({
        label: "compute_pipeline5062",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline5063 = device50.createComputePipeline({
        label: "compute_pipeline5063",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5064 = device50.createComputePipeline({
        label: "compute_pipeline5064",
        layout: pipeline_layout506,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer503, 0, array6, 0, array6.length);
    
    device50.queue.writeBuffer(buffer505, 0, array11, 0, array11.length);
    
    const compute_pipeline5065 = device50.createComputePipeline({
        label: "compute_pipeline5065",
        layout: pipeline_layout505,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline5066 = device50.createComputePipeline({
        label: "compute_pipeline5066",
        layout: pipeline_layout506,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5067 = device50.createComputePipeline({
        label: "compute_pipeline5067",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5068 = device50.createComputePipeline({
        label: "compute_pipeline5068",
        layout: pipeline_layout507,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5069 = device50.createComputePipeline({
        label: "compute_pipeline5069",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5070 = device50.createComputePipeline({
        label: "compute_pipeline5070",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5071 = device50.createComputePipeline({
        label: "compute_pipeline5071",
        layout: pipeline_layout506,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline5072 = device50.createComputePipeline({
        label: "compute_pipeline5072",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    texture501.destroy();
    query700.destroy()
    const compute_pipeline5073 = device50.createComputePipeline({
        label: "compute_pipeline5073",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5074 = device50.createComputePipeline({
        label: "compute_pipeline5074",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer505, 0, array1, 0, array1.length);
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline5075 = device50.createComputePipeline({
        label: "compute_pipeline5075",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline5076 = device50.createComputePipeline({
        label: "compute_pipeline5076",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer505, 0, array4, 0, array4.length);
    const compute_pipeline5077 = device50.createComputePipeline({
        label: "compute_pipeline5077",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer503, 0, array11, 0, array11.length);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline5078 = device50.createComputePipeline({
        label: "compute_pipeline5078",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5079 = device50.createComputePipeline({
        label: "compute_pipeline5079",
        layout: pipeline_layout505,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5080 = device50.createComputePipeline({
        label: "compute_pipeline5080",
        layout: pipeline_layout506,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5081 = device50.createComputePipeline({
        label: "compute_pipeline5081",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5082 = device50.createComputePipeline({
        label: "compute_pipeline5082",
        layout: pipeline_layout508,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5083 = device50.createComputePipeline({
        label: "compute_pipeline5083",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5084 = device50.createComputePipeline({
        label: "compute_pipeline5084",
        layout: pipeline_layout502,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5085 = device50.createComputePipeline({
        label: "compute_pipeline5085",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5086 = device50.createComputePipeline({
        label: "compute_pipeline5086",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5087 = device50.createComputePipeline({
        label: "compute_pipeline5087",
        layout: pipeline_layout508,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5088 = device50.createComputePipeline({
        label: "compute_pipeline5088",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5089 = device50.createComputePipeline({
        label: "compute_pipeline5089",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline5090 = device50.createComputePipeline({
        label: "compute_pipeline5090",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5091 = device50.createComputePipeline({
        label: "compute_pipeline5091",
        layout: pipeline_layout506,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5092 = device50.createComputePipeline({
        label: "compute_pipeline5092",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5093 = device50.createComputePipeline({
        label: "compute_pipeline5093",
        layout: pipeline_layout508,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline5094 = device50.createComputePipeline({
        label: "compute_pipeline5094",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline5095 = device50.createComputePipeline({
        label: "compute_pipeline5095",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5096 = device50.createComputePipeline({
        label: "compute_pipeline5096",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5097 = device50.createComputePipeline({
        label: "compute_pipeline5097",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline5098 = device50.createComputePipeline({
        label: "compute_pipeline5098",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline5099 = device50.createComputePipeline({
        label: "compute_pipeline5099",
        layout: pipeline_layout507,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline50100 = device50.createComputePipeline({
        label: "compute_pipeline50100",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline50101 = device50.createComputePipeline({
        label: "compute_pipeline50101",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const compute_pipeline50102 = device50.createComputePipeline({
        label: "compute_pipeline50102",
        layout: pipeline_layout507,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    device90.pushErrorScope("internal");
    const compute_pipeline50103 = device50.createComputePipeline({
        label: "compute_pipeline50103",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline50104 = device50.createComputePipeline({
        label: "compute_pipeline50104",
        layout: pipeline_layout503,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline50105 = device50.createComputePipeline({
        label: "compute_pipeline50105",
        layout: pipeline_layout504,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline50106 = device50.createComputePipeline({
        label: "compute_pipeline50106",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const compute_pipeline50107 = device50.createComputePipeline({
        label: "compute_pipeline50107",
        layout: pipeline_layout507,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline50108 = device50.createComputePipeline({
        label: "compute_pipeline50108",
        layout: pipeline_layout502,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    query502.destroy()
    
    device60.pushErrorScope("validation");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}