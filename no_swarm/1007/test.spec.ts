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
    
    
    const array0 = new Float32Array([1.0, -0.5, -0.5, 0.75, -0.75, 0.0, 0.0, 1.0, 0.0, -0.75, -0.5, 0.25, 1.0, -0.25, 0.25, -0.25, -0.5, 0.75, 0.5, 0.75, -1.0, 0.25, -1.0, 0.5, -1.0, -1.0, -1.0, -0.75, -0.25, -0.25, -0.25, 0.0, -1.0, 0.0, -0.5, 0.75, -0.5, 1.0, 0.5, -1.0, -0.5, -0.25, 0.0, -1.0, 0.75, 0.75, 0.75, -0.5, 1.0, 0.25, 0.75, 0.25, 0.5, -0.25, -0.25, 1.0, 0.75, 0.75, 0.75, 0.5, -0.25, 0.25, -0.25, -0.75, 0.25, -0.75, 1.0, 0.75, -0.5, -0.75, 0.75, 0.25, 0.25, 1.0, 1.0, 0.0, 0.5, 0.5, -0.5, 0.0, -0.5, 1.0, 0.75, -0.5, 0.5, 0.75, 0.75, 0.25, -1.0, 1.0, 1.0, -0.25, 0.75, 0.0, 0.5, 0.5, -1.0, 0.5, 0.75, 1.0, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([-0.25, -0.75, -1.0, 0.0, 0.0, 0.25, 0.5, -0.25, 1.0, -0.25, 0.0, -0.25, 0.25, -0.75, 0.5, -1.0, -0.5, -0.25, 0.5, 0.25, 1.0, 0.25, 0.5, 0.75, 0.75, 0.75, 0.25, -1.0, 0.75, -0.75, -0.75, 0.0, 0.0, 0.5, -0.25, -0.25, 0.75, 0.25, 0.75, 0.0, -0.75, 0.25, 0.25, -0.25, 0.5, 0.0, 1.0, -0.75, -0.25, -1.0, 0.25, 0.25, -0.75, 0.0, 0.75, 0.25, 0.5, -0.5, -0.25, -1.0, 1.0, 0.25, 0.75, 0.25, 0.25, -0.25, 0.5, -1.0, -0.25, 0.75, -0.75, -0.5, 0.0, 1.0, -0.25, -0.25, 0.75, 0.0, -0.5, -0.75, -1.0, 1.0, -0.5, 0.75, -0.75, -1.0, -0.25, 0.0, 1.0, 0.5, 0.5, 0.25, -0.5, -0.5, 1.0, -0.5, -0.75, 0.5, -0.5, 0.25, ]);
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.destroy();
    const array2 = new Float32Array([0.0, 0.5, 0.0, -0.25, 1.0, -0.5, 0.0, 0.25, -1.0, 0.0, -0.25, -0.75, 0.5, -0.25, 0.75, 0.0, 0.5, 0.75, -1.0, 0.5, 0.75, 0.0, -0.5, 1.0, -0.75, -0.5, 0.75, -0.5, -0.25, -0.25, 0.75, -1.0, 0.25, -0.5, -0.75, -0.5, 0.25, 0.75, 0.75, -0.5, 1.0, 1.0, -0.25, -1.0, -0.75, 0.0, -0.25, -0.25, 0.25, 0.75, 0.5, -0.75, 0.0, 0.75, 1.0, 0.75, 0.5, 0.0, 0.75, -0.5, -0.5, -0.25, 0.25, 0.75, 0.75, -0.75, -1.0, 0.25, 0.75, -0.25, -0.5, 1.0, -0.75, 0.0, 0.25, 0.75, -0.75, 0.25, -0.75, -0.25, 1.0, -0.5, 1.0, 1.0, -0.5, -0.5, 1.0, 0.0, 0.25, 0.5, 0.75, 1.0, -0.5, -1.0, -1.0, 0.0, -0.25, 1.0, -0.25, -0.5, ]);
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([-0.75, 0.0, 0.5, -0.25, -0.25, -1.0, -1.0, -0.75, 0.25, -1.0, 0.0, 0.75, 0.25, 0.25, 1.0, -0.5, -0.25, -0.25, -0.25, 1.0, -0.75, 0.25, -0.75, 0.75, 0.5, 0.75, -1.0, -0.25, 1.0, -0.25, 1.0, 0.5, -0.75, 0.75, 0.75, 0.0, 0.75, 0.75, 0.5, -1.0, -0.75, 0.25, -0.25, -1.0, -1.0, 1.0, 0.25, 1.0, -0.75, -0.5, -1.0, 0.0, -0.75, 0.75, 0.25, -1.0, 0.0, -0.5, -0.25, 0.25, 0.75, -0.75, 0.75, 0.75, 0.75, -0.5, -0.75, 1.0, 0.25, 0.25, 0.75, -1.0, 0.25, 0.75, -1.0, 0.25, 0.5, -1.0, -0.75, 1.0, -0.75, -0.5, -0.25, 0.0, 0.5, 0.5, -1.0, 0.5, -0.75, -0.75, 0.5, 0.75, 0.0, 0.25, -1.0, 0.75, 1.0, 0.5, -1.0, -0.75, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
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
    device00.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array4 = new Float32Array([-0.25, 0.5, 0.25, -0.5, -0.25, -0.5, -0.75, -0.75, -1.0, -0.75, -0.25, -0.25, -0.75, -1.0, -0.5, -0.75, 0.75, -1.0, 0.0, 0.25, 0.25, 1.0, 1.0, 0.75, -0.75, 0.0, 0.0, 0.75, 0.25, 1.0, 0.75, 0.25, 0.75, 0.25, -0.25, 0.25, 1.0, -0.75, -0.25, -0.5, 0.0, 0.5, 0.75, 0.75, -0.25, 0.5, 0.0, 0.0, -1.0, -0.5, -1.0, 1.0, 0.5, 1.0, -0.75, -1.0, -0.75, 0.25, 1.0, -0.5, 1.0, -0.25, 0.75, 0.75, 0.25, -0.25, -0.25, 0.75, -1.0, 0.25, -1.0, -1.0, -0.5, 0.75, -0.75, -0.5, -0.5, -1.0, 0.5, -0.25, -0.75, 1.0, -0.25, 1.0, 1.0, -0.25, -0.75, -0.75, -0.75, -0.5, 1.0, -0.75, -0.75, -0.25, -0.5, -1.0, 1.0, 0.5, -0.5, -0.75, ]);
    
    const array5 = new Float32Array([-0.75, 1.0, -0.75, -1.0, -0.25, 0.5, -0.25, -0.5, 0.75, 0.0, 0.5, 0.75, 0.25, -1.0, 0.5, -0.25, -0.25, 0.5, 0.75, 0.25, 0.5, 0.25, 0.0, 0.25, -1.0, -0.75, -0.75, -0.5, -0.5, -0.5, -1.0, 0.5, 1.0, -0.75, -1.0, 0.5, 0.25, 0.75, 0.5, -1.0, 1.0, 0.0, -0.5, 0.75, 0.0, -0.75, 0.5, -0.5, 0.0, 1.0, 1.0, -0.75, 0.5, 0.5, 0.5, -0.75, -0.25, 0.25, 1.0, 0.25, 0.5, -0.25, 0.0, -0.25, 0.75, -0.75, -0.75, -0.5, 0.0, -0.5, -1.0, 0.25, 0.0, 0.75, -0.75, -0.75, 0.75, 1.0, -1.0, 1.0, 0.5, -0.25, 0.5, -0.75, 0.0, -1.0, 0.25, 0.0, 0.0, -0.25, 0.5, 0.0, -0.5, 1.0, 1.0, 0.5, 0.0, -0.25, -0.75, -0.75, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.destroy();
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    texture101.destroy();
    
    device10.pushErrorScope("internal");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer100.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.pushErrorScope("validation");
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    
    
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    buffer101.destroy()
    
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    texture103.destroy();
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    texture100.destroy();
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group100);
    
    command_encoder100.copyBufferToBuffer(
        buffer104,
        0,
        buffer104,
        0,
        400
    );
    
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    device10.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device20.queue.submit([]);
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device30.destroy();
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array6 = new Float32Array([0.25, 0.75, -1.0, 0.5, 0.0, -0.25, 0.75, -0.5, 0.0, 0.25, -1.0, 0.0, 0.75, -1.0, -1.0, -0.25, 0.0, 0.75, 0.5, 1.0, -0.75, 0.5, -1.0, 1.0, 0.5, -1.0, -0.25, 1.0, 0.75, -0.75, -0.75, 1.0, -0.25, 0.25, -1.0, 0.75, -0.75, -0.5, -0.25, 1.0, 0.75, 0.0, 0.5, 0.5, 0.5, -0.5, -0.25, -1.0, 0.25, -1.0, -1.0, -0.25, -0.75, -0.5, -0.5, -1.0, -0.5, 0.75, 1.0, -0.75, -0.75, -0.25, 0.5, 0.75, -0.25, 0.25, 1.0, 1.0, -0.25, 0.0, -0.75, 0.75, -1.0, 0.0, 0.75, -0.75, -1.0, -0.5, 0.75, 1.0, -0.5, 0.0, -0.25, 0.75, -0.25, 1.0, -0.25, -0.25, 0.0, -0.5, 1.0, 1.0, 0.5, 1.0, -0.75, 1.0, 1.0, 0.25, -0.75, -0.75, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    query200.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    
    query201.destroy()
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const array7 = new Float32Array([-0.75, 0.75, -1.0, 0.0, -0.75, -0.5, -0.75, 0.5, -0.25, 0.0, -1.0, -0.75, -1.0, 0.0, 0.5, -0.75, 0.25, -0.75, 0.75, 0.25, 0.75, -0.5, 0.25, 0.5, -1.0, -0.25, -0.75, 0.5, 1.0, 0.0, 0.0, 0.5, -1.0, 0.5, 0.5, -0.5, -0.5, 0.5, 0.0, -1.0, -0.75, -1.0, 0.0, -0.75, 0.25, -0.5, -0.75, 0.5, 1.0, -0.25, -0.25, 0.5, -0.75, 0.0, -0.5, -0.25, -1.0, 0.25, -0.75, -0.25, 0.75, -1.0, -0.75, 0.5, -0.25, -0.5, -0.75, -0.25, 0.25, -0.25, 1.0, 0.25, -0.25, -1.0, 1.0, -0.5, 0.0, -0.25, 0.25, 0.25, -1.0, -0.25, 0.5, 0.75, 0.0, -0.25, -1.0, -0.25, -0.5, 0.25, -0.75, -0.75, 1.0, -1.0, 0.75, 0.75, 0.25, 0.5, 0.0, 1.0, ]);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    command_encoder200.insertDebugMarker("mymarker");
    const command_buffer202 = command_encoder202.finish();
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.popDebugGroup()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    buffer201.destroy()
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module202,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module202,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_bundle_encoder202.setPipeline(render_pipeline200);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    buffer200.destroy()
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module202,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module202,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
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
    
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer204,
        0
    )
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    command_encoder203.copyBufferToBuffer(
        buffer203,
        0,
        buffer205,
        0,
        400
    );
    buffer208.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    buffer205.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2030.setPipeline(compute_pipeline206);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    command_encoder400.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    
    query200.destroy()
    render_bundle_encoder200.setVertexBuffer(0, buffer201);
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_buffer205 = command_encoder205.finish();
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    buffer400.destroy()
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    compute_pass_encoder2000.popDebugGroup()
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    compute_pass_encoder4010.insertDebugMarker("marker")
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query204
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query204
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    
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
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module202,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module202,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder2040.setPipeline(render_pipeline200);
    command_encoder207.copyBufferToTexture(
        {
            buffer: buffer207
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    command_encoder400.popDebugGroup()
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout203]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    query200.destroy()
    render_pass_encoder2040.beginOcclusionQuery(0)
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module204,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module204,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder2040.setStencilReference(1);
    render_bundle_encoder202.insertDebugMarker("marker");
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout203]
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([0.0, 0.5, 0.25, 0.0, 0.75, -0.5, -1.0, 0.25, 0.5, 0.75, -0.25, -0.5, 0.75, -1.0, 1.0, 0.0, -0.75, 0.0, 1.0, 0.0, -0.75, 0.25, -0.75, 0.0, 0.5, 0.5, 0.0, 0.5, 0.0, -0.25, -0.5, -0.75, 0.75, -0.25, -0.5, 1.0, 0.25, -0.25, 0.75, 1.0, 1.0, 1.0, 0.75, -0.5, 0.25, 0.5, 1.0, 0.25, -0.25, 0.75, -0.5, -0.5, 0.0, 0.5, 0.75, 1.0, -1.0, -0.5, -1.0, -0.25, 0.5, -0.25, 1.0, 0.75, -0.5, 1.0, 0.75, -0.25, -1.0, 0.25, 0.25, -0.5, -0.25, 0.75, 0.75, -1.0, 0.25, 1.0, -0.5, 0.25, 0.5, -1.0, 0.0, -1.0, 0.0, 0.25, -1.0, 1.0, 0.75, 0.75, 0.5, -0.75, -0.5, -0.75, 0.75, 0.0, 0.75, -1.0, -0.25, 0.5, ]);
    
    
    
    query400.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device20.queue.submit([command_buffer202, ]);
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    command_encoder206.copyBufferToTexture(
        {
            buffer: buffer202
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.beginOcclusionQuery(0)
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group203);
    render_pass_encoder2060.pushDebugGroup("group_marker");
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    buffer202.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2070.setPipeline(render_pipeline203);
    device00.destroy();
    render_pass_encoder2060.executeBundles([])
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder204.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder1010.dispatchWorkgroups(100);
    
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1010.end();
    query202.destroy()
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2013, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2013, 0);
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    {
        await buffer206.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer206.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer206.unmap();
        console.log(new Float32Array(data));
    }
    buffer2013.destroy()
    device20.queue.writeBuffer(buffer2011, 0, array0, 0, array0.length);
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    render_pass_encoder2060.setPipeline(render_pipeline202);
    buffer2010.destroy()
    command_encoder200.clearBuffer(buffer206);
    device40.pushErrorScope("out-of-memory");
    
    render_pass_encoder2040.setStencilReference(1);
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    
    
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    
    command_encoder400.popDebugGroup()
    render_pass_encoder2070.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    render_pass_encoder2030.setPipeline(render_pipeline202);
    query400.destroy()
    device20.queue.writeBuffer(buffer2014, 0, array0, 0, array0.length);
    
    render_bundle_encoder200.setIndexBuffer(buffer208, "uint16");
    render_bundle_encoder200.drawIndirect(buffer206, 0);
    buffer206.destroy()
    buffer202.destroy()
    device20.queue.writeBuffer(buffer2013, 0, array1, 0, array1.length);
    
    
    device20.queue.writeBuffer(buffer204, 0, array7, 0, array7.length);
    texture500.destroy();
    render_pass_encoder2060.popDebugGroup();
    command_encoder500.insertDebugMarker("mymarker");
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    device20.queue.writeBuffer(buffer2013, 0, array2, 0, array2.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device50.pushErrorScope("validation");
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder200.popDebugGroup();
    
    render_pass_encoder2040.pushDebugGroup("group_marker");
    render_pass_encoder2060.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    
    command_encoder206.pushDebugGroup("mygroupmarker")
    
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer206,
        0
    )
    device20.queue.writeBuffer(buffer204, 0, array7, 0, array7.length);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device20.queue.writeBuffer(buffer2014, 0, array0, 0, array0.length);
    command_encoder400.insertDebugMarker("mymarker");
    query200.destroy()
    device20.pushErrorScope("internal");
    device20.queue.writeBuffer(buffer2015, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    command_encoder203.resolveQuerySet(
        query204,
        0,
        32,
        buffer208,
        0
    )
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer204,
        0
    )
    render_pass_encoder2040.insertDebugMarker("marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    buffer2015.destroy()
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group204);
    
    const render_pass_encoder2061 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query204
    });
    render_pass_encoder2061.setPipeline(render_pipeline200);
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_pass_encoder2061.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.setVertexBuffer(0, buffer201);
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group205);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module204,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module204,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder2061.insertDebugMarker("marker");
    render_bundle_encoder201.draw(3);
    
    query203.destroy()
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module202,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module202,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2020, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2020, 0);
    device20.queue.writeBuffer(buffer2020, 0, array4, 0, array4.length);
    buffer2018.destroy()
    
    
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer2020, 0, array1, 0, array1.length);
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module202,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module202,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    buffer2017.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device20.queue.writeBuffer(buffer2020, 0, array3, 0, array3.length);
    
    render_pass_encoder2070.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.setVertexBuffer(0, buffer209);
    
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group206);
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2040.endOcclusionQuery()
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device40.queue.submit([]);
    render_pass_encoder2030.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2014, 0);
    render_pass_encoder2061.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2024,
                },
            },
        ],
    });

    render_pass_encoder2070.setBindGroup(0, bind_group207);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2070.setVertexBuffer(0, buffer205);
    compute_pass_encoder2030.end();
    command_encoder201.popDebugGroup()
    render_pass_encoder2040.setVertexBuffer(0, buffer201);
    render_pass_encoder2070.drawIndirect(buffer209, 0);
    render_pass_encoder2040.drawIndirect(buffer2013, 0);
    render_pass_encoder1010.popDebugGroup();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2025, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2025, 0);
    render_pass_encoder2030.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.draw(3);
    const command_buffer207 = command_encoder207.finish();
    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2027,
                },
            },
        ],
    });

    render_pass_encoder2061.setBindGroup(0, bind_group208);
    render_pass_encoder2070.endOcclusionQuery()
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2061.setVertexBuffer(0, buffer209);
    render_pass_encoder2061.draw(3);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer402 = command_encoder402.finish();
    command_encoder401.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2028, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2028, 0);
    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2030,
                },
            },
        ],
    });

    render_pass_encoder2060.setBindGroup(0, bind_group209);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2070.draw(3);
    const command_buffer201 = command_encoder201.finish();
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2061.end();
    compute_pass_encoder2000.end();
    compute_pass_encoder2010.end();
    render_pass_encoder2060.setVertexBuffer(0, buffer2018);
    render_pass_encoder2060.drawIndirect(buffer2028, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer206, 0);
    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2032,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2010);
    device20.queue.submit([command_buffer201, command_buffer203, command_buffer205, command_buffer207, ]);
    render_pass_encoder2070.end();
    render_pass_encoder2061.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2070.end();
    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2034,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2011);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.end();
    render_pass_encoder2060.end();
    render_pass_encoder2061.setIndexBuffer(buffer2020, "uint16");
    device40.queue.submit([command_buffer402, ]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2010.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2060.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2061.drawIndirect(buffer2015, 0);
    command_encoder204.popDebugGroup()
    render_pass_encoder2040.end();
    command_encoder206.popDebugGroup()
    render_pass_encoder2070.drawIndirect(buffer2025, 0);
    device20.queue.submit([]);
    render_pass_encoder2060.end();
    device20.queue.submit([]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2013, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2061.draw(3);
    render_pass_encoder2040.drawIndirect(buffer2020, 0);
    render_pass_encoder2061.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2060.drawIndexedIndirect(buffer2025, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2030.drawIndirect(buffer2015, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2035, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2035, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2060.drawIndirect(buffer2033, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2061.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    compute_pass_encoder2030.popDebugGroup()
    device20.queue.submit([command_buffer202, command_buffer205, ]);
    render_pass_encoder2060.setIndexBuffer(buffer2017, "uint16");
    const command_buffer206 = command_encoder206.finish();
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group101);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2036, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2036, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2018, "uint16");
    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2038,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2061.drawIndirect(buffer2020, 0);
    render_pass_encoder2070.drawIndirect(buffer2025, 0);
    render_pass_encoder2070.drawIndirect(buffer2017, 0);
    render_pass_encoder2070.drawIndirect(buffer2035, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2061.drawIndirect(buffer2015, 0);
    device20.queue.submit([command_buffer206, ]);
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2070.drawIndirect(buffer2031, 0);
    render_pass_encoder2061.drawIndirect(buffer2036, 0);
    device20.queue.submit([command_buffer204, ]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2039, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2039, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2061.drawIndexedIndirect(buffer2036, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2040, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2040, 0);
    render_pass_encoder2061.drawIndirect(buffer2025, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2040.popDebugGroup();
    device40.queue.submit([]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2041, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2041, 0);
    device50.queue.submit([]);
    device50.queue.submit([]);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2061.end();
    render_pass_encoder2040.drawIndirect(buffer2041, 0);
    compute_pass_encoder4010.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2042, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2042, 0);
    device40.queue.submit([command_buffer402, ]);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2043, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2043, 0);
    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2045,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2013);
    render_pass_encoder2030.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2030.drawIndirect(buffer2043, 0);
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2040.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2061.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder2060.drawIndexedIndirect(buffer2015, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2046, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2046, 0);
    render_pass_encoder2030.drawIndirect(buffer2039, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2070.drawIndirect(buffer2041, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2040.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder2010.end();
    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2048,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2014);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device40.queue.submit([]);
    render_pass_encoder2061.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder2060.drawIndirect(buffer2018, 0);
    render_pass_encoder2060.drawIndirect(buffer2039, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2026, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2070.setIndexBuffer(buffer2033, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2060.drawIndirect(buffer2025, 0);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    render_pass_encoder2060.end();
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer204, command_buffer206, ]);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer205, 0);
    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2050,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2015);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2052,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2016);
    render_pass_encoder2040.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2053, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2053, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2061.drawIndirect(buffer2017, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2052, 0);
    device50.queue.submit([command_buffer500, ]);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2054, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2054, 0);
    render_pass_encoder2070.drawIndirect(buffer2024, 0);
    render_pass_encoder2040.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2043, 0);
    device20.queue.submit([command_buffer200, command_buffer205, command_buffer207, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device50.queue.submit([]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2055, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2055, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2070.drawIndexedIndirect(buffer2055, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.setIndexBuffer(buffer2041, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2061.drawIndirect(buffer2036, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2061.drawIndirect(buffer2053, 0);
    render_pass_encoder2070.drawIndirect(buffer2042, 0);
    device20.queue.submit([]);
    render_pass_encoder2040.drawIndirect(buffer2015, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2056, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2056, 0);
    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2058,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2017);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2070.setIndexBuffer(buffer2012, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2030.setIndexBuffer(buffer207, "uint16");
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2061.drawIndirect(buffer2023, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer2055, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2060.drawIndirect(buffer2041, 0);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2030.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer204, command_buffer207, ]);
    render_pass_encoder2040.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2059, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2059, 0);
    render_pass_encoder2061.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2040, 0);
    render_pass_encoder2061.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2060, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2060, 0);
    render_pass_encoder2070.end();
    render_pass_encoder2070.drawIndirect(buffer2050, 0);
    device40.queue.submit([]);
    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2062,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2018);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2061.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2060.drawIndirect(buffer2013, 0);
    render_pass_encoder2061.drawIndirect(buffer2020, 0);
    compute_pass_encoder2000.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2061.drawIndirect(buffer2015, 0);
    device20.queue.submit([command_buffer203, command_buffer207, ]);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder2030.dispatchWorkgroups(100);
    compute_pass_encoder2030.popDebugGroup()
    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2064,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2019);
    device40.queue.submit([command_buffer400, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2065, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2065, 0);
    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2067,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2020);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2060.drawIndirect(buffer2040, 0);
    render_pass_encoder2061.drawIndirect(buffer2020, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2043, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2060.end();
    render_pass_encoder2070.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder2061.drawIndirect(buffer2044, 0);
    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2069,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2021);
    render_pass_encoder2030.drawIndexedIndirect(buffer2020, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2071,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2022);
    render_pass_encoder2030.drawIndexedIndirect(buffer2058, 0);
    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2073,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2023);
    compute_pass_encoder2010.end();
    render_pass_encoder2040.drawIndirect(buffer2027, 0);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2070.drawIndirect(buffer2042, 0);
    render_pass_encoder2061.setIndexBuffer(buffer2063, "uint16");
    render_pass_encoder2061.drawIndirect(buffer2055, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2030.end();
    render_pass_encoder2070.end();
    render_pass_encoder2070.setIndexBuffer(buffer204, "uint16");
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    compute_pass_encoder1010.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2041, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2074, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2074, 0);
    render_pass_encoder2060.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2070.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2055, 0);
    device40.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2040.end();
    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2076,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2024);
    render_pass_encoder2061.drawIndirect(buffer2074, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer2046, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2040.drawIndirect(buffer2054, 0);
    compute_pass_encoder2030.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2077, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2077, 0);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2030.end();
    render_pass_encoder2061.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2030.drawIndirect(buffer2016, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder2010.end();
    render_pass_encoder2070.end();
    render_pass_encoder2061.drawIndirect(buffer2026, 0);
    render_pass_encoder2070.drawIndirect(buffer2055, 0);
    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2079,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2025);
    render_pass_encoder2061.end();
    render_pass_encoder2030.draw(3);
    compute_pass_encoder2030.end();
    render_pass_encoder2061.drawIndirect(buffer2033, 0);
    device20.queue.submit([command_buffer205, command_buffer206, ]);
    device50.queue.submit([]);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2080 = device20.createBuffer({
        label: "buffer2080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2080, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2080, 0);
    render_pass_encoder2040.drawIndirect(buffer2043, 0);
    device20.queue.submit([command_buffer206, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2030.drawIndirect(buffer2035, 0);
    device20.queue.submit([command_buffer202, command_buffer207, ]);
    render_pass_encoder2060.drawIndirect(buffer2060, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2070.drawIndexedIndirect(buffer2074, 0);
    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2082,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2026);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2070.setIndexBuffer(buffer2046, "uint16");
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2070.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2061.drawIndirect(buffer2025, 0);
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2043, 0);
    compute_pass_encoder2000.end();
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2070.drawIndirect(buffer2053, 0);
    render_pass_encoder2070.end();
    device50.queue.submit([]);
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer2040, 0);
    device20.queue.submit([command_buffer202, command_buffer206, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2083, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2083, 0);
    render_pass_encoder2060.drawIndirect(buffer2059, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2084, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2084, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2060.drawIndirect(buffer2060, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2060.drawIndirect(buffer2039, 0);
    render_pass_encoder2061.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2040.drawIndirect(buffer2046, 0);
    device20.queue.submit([command_buffer202, ]);
    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2086,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2027);
    render_pass_encoder2060.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder2040.drawIndirect(buffer2025, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2019, 0);
    device40.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2024, 0);
    render_pass_encoder2061.end();
    render_pass_encoder2061.drawIndexedIndirect(buffer2046, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2060.end();
    render_pass_encoder2061.drawIndirect(buffer2039, 0);
    render_pass_encoder2040.drawIndirect(buffer2039, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2043, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2070.drawIndirect(buffer2040, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2067, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2040, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2060.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2061.drawIndirect(buffer2043, 0);
    render_pass_encoder2040.drawIndirect(buffer2074, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2087 = device20.createBuffer({
        label: "buffer2087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2087, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2087, 0);
    render_pass_encoder2060.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2015, 0);
    const buffer2088 = device20.createBuffer({
        label: "buffer2088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2089 = device20.createBuffer({
        label: "buffer2089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2089,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2028);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2070.setIndexBuffer(buffer2046, "uint16");
    compute_pass_encoder2010.end();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
}