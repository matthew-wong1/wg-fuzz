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
    
    const array0 = new Float32Array([-0.5, -0.25, -0.25, 0.75, -0.25, -1.0, -1.0, -0.5, -0.75, 1.0, -1.0, 0.75, 0.25, 1.0, -0.25, -1.0, -0.5, -0.75, -0.25, -0.5, -0.25, 0.75, 1.0, 0.25, 0.25, -1.0, -0.5, 0.5, 0.0, 0.25, 1.0, 1.0, -0.5, -0.5, 1.0, 1.0, 1.0, -1.0, -0.5, 0.0, 0.75, -1.0, -1.0, 0.0, -0.75, -0.75, -0.75, -0.5, 0.25, -0.5, 0.25, 0.5, 0.75, -0.25, 0.25, 1.0, 1.0, 1.0, 0.25, 0.0, -0.75, 0.5, -0.25, -0.25, -0.25, -1.0, 0.5, -0.75, 0.5, -0.5, -0.75, -0.25, 0.25, 0.5, -0.25, 0.0, 0.25, 0.5, -0.5, 0.75, -0.25, 1.0, 0.5, -0.5, 0.75, 0.25, 0.5, -0.25, 1.0, 0.5, 1.0, -0.75, 0.0, -0.75, 0.25, 0.5, -0.75, 0.75, 1.0, 0.5, ]);
    const array1 = new Float32Array([0.75, 0.75, -0.5, 0.75, -0.5, 0.0, -0.25, -0.5, -0.5, 0.0, -0.75, -1.0, 0.25, 0.75, 0.0, 0.75, -0.25, -0.25, -0.5, -0.75, 0.75, 0.0, -1.0, -0.25, 0.5, -0.25, -0.5, -0.25, -0.25, 0.0, -0.25, -1.0, -1.0, 0.5, -1.0, -0.75, 1.0, 1.0, -0.5, -0.75, 0.75, -0.75, 0.75, -0.25, 1.0, -0.5, 0.25, -0.5, 0.75, -0.5, -0.75, 0.25, 0.25, 0.25, -0.5, 0.0, 1.0, 0.0, 1.0, 0.0, 0.0, 0.5, 0.0, -0.5, 1.0, 1.0, 0.0, -1.0, 0.0, 0.25, 0.75, -0.5, 0.5, 0.0, -0.5, 0.0, 0.0, 0.75, 0.25, -1.0, 0.0, 0.75, 0.75, 0.5, 0.75, -1.0, -0.75, -0.75, 0.75, -0.5, 0.75, -1.0, -0.25, -1.0, 0.5, -0.5, -1.0, -0.25, 0.5, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([-0.25, 0.25, 0.25, 0.0, 0.5, 0.25, 0.75, -0.5, -0.5, 0.75, 0.25, 1.0, -1.0, 0.75, 0.0, -1.0, 0.75, 0.0, -1.0, -0.25, 1.0, -0.5, 0.0, -0.5, -0.25, -1.0, -0.5, -0.5, -0.25, -0.75, -1.0, -0.5, 0.25, 0.25, 0.0, 0.25, -1.0, 0.25, -0.25, 1.0, 0.5, -0.75, -0.5, -0.75, -0.25, 0.25, -0.25, 1.0, -0.5, 0.25, 0.0, 0.25, -1.0, 1.0, 0.0, -0.25, -0.25, 0.75, 0.75, 0.75, 0.25, 0.0, 0.0, -0.25, 1.0, 0.25, 0.0, 0.5, 0.75, 0.5, -0.75, 0.25, -1.0, 0.75, -0.75, -0.25, 0.0, -0.75, 0.75, 0.75, -0.75, -0.25, -1.0, 0.5, -0.75, -0.5, 0.75, -0.5, -0.5, -0.25, -0.5, 0.5, 0.75, 1.0, 1.0, -0.5, 0.75, -0.75, -0.25, -0.5, ]);
    const array3 = new Float32Array([0.75, 0.25, -0.75, -1.0, 1.0, -1.0, 1.0, 1.0, 0.5, 1.0, 1.0, 0.25, -0.25, 1.0, -0.5, 0.25, 0.0, 0.5, 0.75, 0.0, 0.5, 0.75, -0.25, 1.0, 0.75, 0.25, 0.75, -1.0, 1.0, 0.5, 0.0, -0.75, -1.0, -0.25, -0.5, 0.25, 0.25, -0.25, 0.0, 0.25, 0.75, -0.5, -0.75, 0.75, -1.0, 0.75, -0.5, 1.0, 0.0, 0.5, 1.0, 0.75, -0.25, 0.0, 0.25, -0.75, 0.5, 1.0, -1.0, 0.0, -0.75, 0.0, -0.75, 0.75, -0.5, 1.0, 0.75, -0.25, 0.5, 0.0, -0.25, 0.25, 0.0, 0.0, 1.0, -0.75, -1.0, 0.5, 0.0, 1.0, -0.25, 0.5, -0.75, -0.5, 0.0, -0.25, 0.25, 0.0, -1.0, -0.25, -1.0, -0.25, -0.5, 0.75, -0.75, -1.0, 0.0, -0.25, -0.25, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    buffer000.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0000.popDebugGroup()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([0.5, 0.5, -0.25, 0.75, 0.5, 0.75, -1.0, -0.25, 0.25, 0.5, -0.25, 0.0, -0.25, 0.25, -0.75, 0.25, 0.5, 0.75, 0.75, 0.5, -0.25, 1.0, 0.25, 1.0, 1.0, 0.75, 0.5, 0.0, 1.0, -0.25, 0.5, 0.0, 0.5, 1.0, -0.75, -0.5, 0.5, 1.0, -0.5, 1.0, 0.0, -1.0, 0.0, -0.25, -1.0, -0.25, -1.0, 0.5, -0.25, -1.0, -1.0, -0.5, -1.0, 0.5, 1.0, -1.0, 0.25, 1.0, 0.75, 0.0, -0.25, 1.0, -0.75, -0.25, 0.0, -0.75, -0.5, 0.25, 0.75, -0.5, -0.25, 1.0, -1.0, -1.0, 0.25, -0.5, 0.25, -0.5, 0.75, -1.0, 1.0, 0.5, -0.5, 0.5, -0.5, -0.5, -0.25, -1.0, -0.75, -0.25, -0.25, -1.0, -0.25, 0.25, -1.0, -0.5, 0.75, 0.75, 0.5, 0.75, ]);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    
    compute_pass_encoder0010.popDebugGroup()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
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
    
    render_bundle_encoder002.popDebugGroup();
    const command_buffer001 = command_encoder001.finish();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.popDebugGroup()
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder001.popDebugGroup();
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    query000.destroy()
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array5 = new Float32Array([0.0, 0.75, 0.75, -1.0, -0.75, 0.25, 0.0, 1.0, -0.25, 0.0, 0.0, -1.0, -0.5, -0.25, -0.5, 1.0, 0.0, 0.25, 0.25, -0.75, 0.5, -0.25, -1.0, 1.0, 0.5, -0.75, -0.5, -0.5, -1.0, -1.0, -0.5, 0.0, -1.0, -0.25, -0.25, 0.75, -1.0, -0.5, 1.0, -0.75, 0.25, 0.0, -0.25, 0.5, 0.0, 0.25, 0.0, 1.0, 0.25, -0.5, -0.5, -1.0, 1.0, 0.0, 0.0, 0.0, -0.25, -1.0, 0.5, 0.75, -0.75, -0.5, 0.25, -0.5, 0.75, 0.0, 0.5, 1.0, 0.0, -0.5, -0.75, 0.25, -0.25, -1.0, 0.75, -0.5, 1.0, 0.25, 0.75, -0.75, 0.25, 1.0, -0.75, -0.75, 0.0, -1.0, 0.75, 0.0, 0.0, -0.5, 0.0, 0.0, -0.5, 1.0, -0.75, -1.0, 0.75, -0.75, -0.75, -0.5, ]);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder001.insertDebugMarker("marker");
    query001.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    query000.destroy()
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder100.clearBuffer(buffer100);
    
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    command_encoder100.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0010.popDebugGroup()
    device00.pushErrorScope("validation");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder0000.setPipeline(compute_pipeline002);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    render_bundle_encoder000.popDebugGroup();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    
    compute_pass_encoder0001.setPipeline(compute_pipeline004);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    texture100.destroy();
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("internal");
    command_encoder101.insertDebugMarker("mymarker");
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: undefined
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder002.popDebugGroup()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer100.destroy()
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    command_encoder002.pushDebugGroup("mygroupmarker")
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer005, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer005, 0);
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group001);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    buffer004.destroy()
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder101.insertDebugMarker("mymarker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.insertDebugMarker("mymarker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1021.executeBundles([])
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0001.popDebugGroup()
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0001.insertDebugMarker("marker")
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer006.destroy()
    texture300.destroy();
    command_encoder002.clearBuffer(buffer001);
    texture001.destroy();
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder000.insertDebugMarker("marker");
    texture301.destroy();
    command_encoder200.insertDebugMarker("mymarker");
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
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    query002.destroy()
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    command_encoder101.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const array6 = new Float32Array([-0.75, 0.75, 1.0, 0.25, 0.5, 0.25, -0.75, 0.5, 0.25, 0.75, -1.0, 1.0, -1.0, -0.75, 0.75, 0.25, 0.0, 0.75, -0.25, 0.5, 1.0, 1.0, 0.25, -1.0, 1.0, -0.75, -1.0, -0.25, 0.0, 0.75, 0.75, -0.75, 0.75, 0.0, 0.0, -0.5, 1.0, 0.5, 0.0, 0.25, -1.0, -0.25, -1.0, 0.5, -0.5, 1.0, 1.0, 1.0, -0.75, 0.75, 0.75, 0.5, 0.5, -1.0, 1.0, -1.0, -0.5, -1.0, 1.0, 0.5, -0.5, 0.25, -0.75, -0.25, 0.25, 0.0, 0.75, 0.25, -0.75, 1.0, 1.0, 0.75, -0.5, 0.75, 1.0, 0.5, 1.0, 0.5, -1.0, -1.0, 0.75, -1.0, 0.25, -0.75, 0.5, 0.25, -0.75, -0.25, 0.75, -0.75, 0.75, -1.0, 0.75, 1.0, 0.0, 0.5, -0.75, 1.0, 0.5, -1.0, ]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_buffer002 = command_encoder002.finish();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device30.pushErrorScope("out-of-memory");
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device00.queue.writeBuffer(buffer007, 0, array6, 0, array6.length);
    render_bundle_encoder000.popDebugGroup();
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
    buffer003.destroy()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const command_buffer200 = command_encoder200.finish();
    device20.pushErrorScope("validation");
    render_pass_encoder1020.setStencilReference(1);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.popDebugGroup();
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    texture000.destroy();
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    const command_buffer204 = command_encoder204.finish();
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    render_pass_encoder1021.pushDebugGroup("group_marker");
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder1010.insertDebugMarker("marker");
    query000.destroy()
    buffer008.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder0010.popDebugGroup()
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder301.insertDebugMarker("mymarker");
    texture001.destroy();
    device00.destroy();
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1021.executeBundles([])
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_pass_encoder1010.popDebugGroup();
    buffer201.destroy()
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder203.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1021.insertDebugMarker("marker");
    command_encoder004.insertDebugMarker("mymarker");
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    compute_pass_encoder2050.insertDebugMarker("marker")
    buffer002.destroy()
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    compute_pass_encoder0001.insertDebugMarker("marker")
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const command_buffer302 = command_encoder302.finish();
    device10.pushErrorScope("validation");
    compute_pass_encoder2020.insertDebugMarker("marker")
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    buffer200.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    render_pass_encoder1020.setStencilReference(1);
    texture102.destroy();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    compute_pass_encoder0030.setPipeline(compute_pipeline0019);
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder3000.setPipeline(render_pipeline300);
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder1021.executeBundles([])
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    render_pass_encoder1021.insertDebugMarker("marker");
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer301.destroy()
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query100
    });
    query101.destroy()
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer009,
        0
    )
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder203.insertDebugMarker("mymarker");
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    compute_pass_encoder2020.insertDebugMarker("marker")
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1021.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1002 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    render_pass_encoder1021.insertDebugMarker("marker");
    command_encoder201.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    device00.destroy();
    
    
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
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
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    command_encoder201.copyBufferToTexture(
        {
            buffer: buffer200
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
    compute_pass_encoder3040.insertDebugMarker("marker")
    render_pass_encoder1020.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    command_encoder203.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    query101.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1021.setStencilReference(1);
    command_encoder203.clearBuffer(buffer200);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1001.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1002.pushDebugGroup("group_marker");
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.setPipeline(render_pipeline100);
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    buffer300.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder1010.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array7 = new Float32Array([-0.5, 1.0, 0.75, 0.25, -1.0, 0.5, 0.0, 0.25, 0.5, -0.75, -0.5, 0.5, 1.0, 0.5, 0.0, 0.75, 1.0, 0.0, 0.75, 0.75, -0.75, -0.25, -0.25, 0.25, 0.25, 1.0, 0.75, -1.0, -1.0, -0.75, 1.0, -0.25, 0.75, 0.25, -1.0, -1.0, 0.75, -0.25, 1.0, -1.0, -0.75, -0.5, 0.0, 0.0, 0.5, -0.5, 0.75, -0.5, 0.25, 0.5, -1.0, 0.5, 1.0, -0.25, -0.25, -0.25, -0.75, 0.75, 1.0, -0.5, -0.25, 0.0, -0.5, 0.75, -0.25, -0.25, -0.25, 0.25, 0.5, 0.75, 0.0, -1.0, -1.0, 0.25, 0.75, 0.75, 0.0, -1.0, 0.5, -1.0, 0.5, -0.25, -0.25, -1.0, 1.0, -1.0, -0.25, -0.75, -0.75, -1.0, -0.5, -0.25, 0.75, -0.5, 0.5, -0.5, -0.25, 0.5, 1.0, 0.0, ]);
    render_pass_encoder1020.setStencilReference(1);
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    compute_pass_encoder1020.setPipeline(compute_pipeline103);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pass_encoder1021 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1021" });
    render_pass_encoder3000.insertDebugMarker("marker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_pass_encoder1020.setPipeline(render_pipeline100);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group301);
    render_pass_encoder1010.setPipeline(render_pipeline101);
    render_pass_encoder1002.setPipeline(render_pipeline101);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    compute_pass_encoder1021.setPipeline(compute_pipeline103);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group100);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.setVertexBuffer(0, buffer101);
    render_pass_encoder1001.setPipeline(render_pipeline101);
    const command_buffer304 = command_encoder304.finish();
    device30.queue.submit([command_buffer302, ]);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group102);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2050.popDebugGroup()
    device30.queue.submit([command_buffer304, ]);
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_pass_encoder1002.setBindGroup(0, bind_group103);
    render_pass_encoder1021.popDebugGroup();
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.draw(3);
    render_pass_encoder3000.setVertexBuffer(0, buffer302);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    compute_pass_encoder1021.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.setVertexBuffer(0, buffer102);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    render_pass_encoder1000.drawIndirect(buffer1010, 0);
    render_pass_encoder1000.end();
    render_pass_encoder3010.setPipeline(render_pipeline301);
    command_encoder101.popDebugGroup()
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group104);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group105);
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group106);
    render_pass_encoder3000.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1002.setVertexBuffer(0, buffer102);
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    render_pass_encoder1002.setIndexBuffer(buffer103, "uint16");
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1017, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1017, 0);
    render_pass_encoder1002.setIndexBuffer(buffer102, "uint16");
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1018, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1001.setVertexBuffer(0, buffer1013);
    render_pass_encoder1002.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.setVertexBuffer(0, buffer1016);
    render_pass_encoder1021.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1001.draw(3);
    render_pass_encoder3000.draw(3);
    render_pass_encoder1002.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder3000.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1000.drawIndirect(buffer1017, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1021.setIndexBuffer(buffer1011, "uint16");
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group302);
    render_pass_encoder1001.setIndexBuffer(buffer1010, "uint16");
    compute_pass_encoder1021.end();
    render_pass_encoder1001.end();
    render_pass_encoder1000.end();
    const command_buffer201 = command_encoder201.finish();
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1019, 0);
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group107);
    command_encoder100.popDebugGroup()
    render_pass_encoder1021.end();
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1010.setVertexBuffer(0, buffer102);
    render_pass_encoder1010.drawIndirect(buffer1019, 0);
    render_pass_encoder3010.setVertexBuffer(0, buffer300);
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3010.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1018, 0);
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder3000.popDebugGroup();
    const command_buffer102 = command_encoder102.finish();
    device20.queue.submit([]);
    render_pass_encoder3010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder1021.drawIndirect(buffer1017, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1010, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    compute_pass_encoder2020.popDebugGroup()
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline0019.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group003);
    render_pass_encoder1010.end();
    render_pass_encoder1010.popDebugGroup();
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder2050.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    const command_buffer101 = command_encoder101.finish();
    const command_buffer202 = command_encoder202.finish();
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer106, 0);
    device10.queue.submit([]);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    render_pass_encoder1020.drawIndirect(buffer1017, 0);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2020.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1017, 0);
    device20.queue.submit([command_buffer203, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1017, 0);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder1002.drawIndirect(buffer1019, 0);
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1022, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1022, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1000.drawIndexed(3);
    compute_pass_encoder2020.popDebugGroup()
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder1021.drawIndexedIndirect(buffer108, 0);
    device20.queue.submit([command_buffer202, ]);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group004);
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1011, "uint16");
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1023, 0);
    render_pass_encoder1021.drawIndirect(buffer1017, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1022, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    device10.queue.submit([]);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group108);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1015, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    render_pass_encoder3000.end();
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1002.end();
    render_pass_encoder1001.drawIndirect(buffer1017, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1019, 0);
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1023, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndexed(3);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group005);
    device20.queue.submit([]);
    device30.queue.submit([command_buffer301, command_buffer304, ]);
    render_pass_encoder1021.drawIndirect(buffer1017, 0);
    render_pass_encoder1002.drawIndirect(buffer1018, 0);
    render_pass_encoder1021.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1000.drawIndirect(buffer1017, 0);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group109);
    render_pass_encoder1002.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1019, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1001.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1000.drawIndirect(buffer1023, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1010.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1002.setIndexBuffer(buffer1012, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0017, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0017, 0);
    render_pass_encoder3000.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1015, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0018, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0018, 0);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1022, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndirect(buffer1018, 0);
    device10.queue.submit([]);
    render_pass_encoder1001.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1017, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder1020.popDebugGroup()
    device20.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1023, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer100, ]);
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1010);
    render_pass_encoder1020.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1002.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder1002.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1021.drawIndirect(buffer1023, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    device20.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1002.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1010.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer1025, 0);
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    render_pass_encoder3010.draw(3);
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1011);
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    compute_pass_encoder1021.end();
    device20.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1021.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1010.drawIndirect(buffer1023, 0);
    compute_pass_encoder0001.end();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    render_pass_encoder1000.drawIndirect(buffer1017, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1010.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1001.drawIndirect(buffer1031, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder3000.end();
    render_pass_encoder1000.drawIndexed(3);
    device20.queue.submit([]);
    compute_pass_encoder1021.end();
    render_pass_encoder1020.popDebugGroup();
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1012);
    render_pass_encoder3010.draw(3);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder3010.draw(3);
    render_pass_encoder1002.drawIndirect(buffer1017, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder1021.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1017, 0);
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1013);
    compute_pass_encoder1020.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1036, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1036, 0);
    render_pass_encoder1021.drawIndirect(buffer1023, 0);
    render_pass_encoder3010.end();
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder1002.drawIndexed(3);
    device30.queue.submit([]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1037, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1037, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1026, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device30.queue.submit([]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1023, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1038, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1038, 0);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1021.end();
    render_pass_encoder1020.setIndexBuffer(buffer106, "uint16");
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1039, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1039, 0);
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1039, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder1021.end();
    compute_pass_encoder0030.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1001.drawIndirect(buffer1017, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder3000.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.draw(3);
    compute_pass_encoder2020.popDebugGroup()
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1040, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1040, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder1021.end();
    render_pass_encoder1021.setIndexBuffer(buffer1024, "uint16");
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder1001.end();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1037, 0);
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    device00.queue.submit([command_buffer002, command_buffer003, command_buffer004, ]);
    render_pass_encoder1021.drawIndirect(buffer1036, 0);
    render_pass_encoder1021.drawIndirect(buffer1040, 0);
    render_pass_encoder3010.end();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder1021.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder1020.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1002.end();
    render_pass_encoder3010.draw(3);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1041, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1041, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1040, 0);
    const command_buffer205 = command_encoder205.finish();
    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1043,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1014);
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1045,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1015);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1046, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1046, 0);
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1021.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1020.end();
    device20.queue.submit([command_buffer201, command_buffer204, command_buffer205, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.end();
    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1048,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1016);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder3000.setIndexBuffer(buffer303, "uint16");
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1049, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1049, 0);
    render_pass_encoder1002.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.drawIndexed(3);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder0010.end();
    render_pass_encoder3010.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1023, 0);
    render_pass_encoder3010.end();
    render_pass_encoder1010.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1040, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1027, "uint16");
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1040, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1001.drawIndirect(buffer1039, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder3010.draw(3);
    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1051,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1017);
    device10.queue.submit([command_buffer102, ]);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1052, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1052, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1010.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1037, 0);
    device30.queue.submit([command_buffer302, ]);
    device20.queue.submit([]);
    render_pass_encoder1021.setIndexBuffer(buffer1011, "uint16");
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1053, 0);
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder1021.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1054, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1054, 0);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1002.drawIndirect(buffer1017, 0);
    render_pass_encoder1001.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder3010.drawIndexed(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1020.drawIndirect(buffer1041, 0);
    device30.queue.submit([]);
    device20.queue.submit([command_buffer204, ]);
    device30.queue.submit([command_buffer302, ]);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1055, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1055, 0);
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1018, 0);
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group006);
    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1057,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1018);
    render_pass_encoder1021.end();
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder3010.draw(3);
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1002.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    compute_pass_encoder1021.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.drawIndirect(buffer1022, 0);
    render_pass_encoder3010.end();
    render_pass_encoder1010.end();
    render_pass_encoder1000.drawIndirect(buffer1040, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1002.drawIndirect(buffer1054, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1058, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1058, 0);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1002.drawIndirect(buffer1037, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1058, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder3010.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1000.drawIndirect(buffer1038, 0);
    render_pass_encoder3010.drawIndirect(buffer305, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1000.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1023, 0);
    device10.queue.submit([]);
    device20.queue.submit([]);
    compute_pass_encoder1021.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1055, 0);
    render_pass_encoder1020.end();
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1017, 0);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([]);
    render_pass_encoder1001.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1021.drawIndirect(buffer1053, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder2050.popDebugGroup()
    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1060,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1019);
    render_pass_encoder1010.drawIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndirect(buffer1046, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder1010.drawIndirect(buffer1040, 0);
    render_pass_encoder3000.end();
    render_pass_encoder1001.drawIndirect(buffer1040, 0);
    render_pass_encoder1000.drawIndirect(buffer1056, 0);
    render_pass_encoder1002.drawIndirect(buffer1058, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1037, 0);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder1002.drawIndirect(buffer1036, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1061, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1061, 0);
    device30.queue.submit([command_buffer303, ]);
    device30.queue.submit([command_buffer303, command_buffer304, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1021.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1002.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer303, ]);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1001.end();
    render_pass_encoder1000.drawIndirect(buffer1041, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1041, 0);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder1021.popDebugGroup()
    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1063,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1020);
    render_pass_encoder1001.drawIndirect(buffer1022, 0);
    render_pass_encoder1020.drawIndirect(buffer1061, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1002.end();
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1017, 0);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1064, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1064, 0);
    render_pass_encoder1010.drawIndirect(buffer1061, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1002.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1002.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder3000.draw(3);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer301, "uint16");
    compute_pass_encoder2050.popDebugGroup()
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1065, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1065, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndirect(buffer1021, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1023, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1067,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1021);
    render_pass_encoder1010.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1061, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1002.drawIndexedIndirect(buffer1023, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder1002.end();
    render_pass_encoder1002.drawIndirect(buffer1055, 0);
    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1069,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1022);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1065, 0);
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    render_pass_encoder1010.drawIndirect(buffer1055, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder1020.drawIndirect(buffer1065, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1021.end();
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    compute_pass_encoder3030.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    compute_pass_encoder1021.end();
    render_pass_encoder1001.drawIndirect(buffer1041, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1022, 0);
    compute_pass_encoder1021.end();
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder1001.end();
    render_pass_encoder1001.end();
    render_pass_encoder1001.drawIndirect(buffer1019, 0);
    render_pass_encoder3010.drawIndirect(buffer302, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1070, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1070, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1055, 0);
    compute_pass_encoder2050.popDebugGroup()
    device20.queue.submit([command_buffer202, command_buffer203, command_buffer205, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1022, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1002.end();
    render_pass_encoder1000.drawIndirect(buffer1070, 0);
    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1072,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1023);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1073, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1073, 0);
    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1075,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1024);
    render_pass_encoder1001.drawIndirect(buffer1061, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndirect(buffer1039, 0);
    compute_pass_encoder1021.end();
    render_pass_encoder3010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1038, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder1020.drawIndirect(buffer1073, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder3000.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1070, 0);
    device30.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1002.end();
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    render_pass_encoder1020.drawIndirect(buffer1053, 0);
    render_pass_encoder1002.drawIndirect(buffer1037, 0);
    device30.queue.submit([command_buffer301, command_buffer303, command_buffer304, ]);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1010.drawIndirect(buffer1064, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder3000.drawIndirect(buffer303, 0);
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1076, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1076, 0);
    device20.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1032, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1021.drawIndirect(buffer1039, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder1020.drawIndirect(buffer1070, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder3030.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.drawIndirect(buffer1039, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1021.drawIndexed(3);
    device30.queue.submit([command_buffer302, ]);
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([command_buffer303, ]);
    device20.queue.submit([command_buffer204, ]);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    device10.queue.submit([]);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder3000.draw(3);
    render_pass_encoder1020.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1058, 0);
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1002.drawIndirect(buffer1021, 0);
    render_pass_encoder1002.drawIndirect(buffer1046, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1045, "uint16");
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1021.end();
    render_pass_encoder1001.drawIndirect(buffer1065, 0);
    compute_pass_encoder1021.end();
    render_pass_encoder1002.end();
    render_pass_encoder1010.setIndexBuffer(buffer1035, "uint16");
    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1078,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1025);
    render_pass_encoder1002.drawIndexedIndirect(buffer1036, 0);
    device20.queue.submit([]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    device30.queue.submit([]);
    render_pass_encoder1021.draw(3);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1079, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1079, 0);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1068, 0);
    render_pass_encoder1001.drawIndirect(buffer1040, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1047, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1001.drawIndirect(buffer1052, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1001.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1039, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1039, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1002.drawIndirect(buffer1065, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1046, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder3000.end();
    render_pass_encoder1020.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1010.popDebugGroup();
    device20.queue.submit([]);
    compute_pass_encoder1020.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    render_pass_encoder1010.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1080, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1080, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1016, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.drawIndirect(buffer1079, 0);
    device20.queue.submit([command_buffer202, command_buffer205, ]);
    render_pass_encoder1002.drawIndirect(buffer1041, 0);
    device20.queue.submit([command_buffer205, ]);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder3000.draw(3);
    device30.queue.submit([command_buffer302, command_buffer304, ]);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder3010.end();
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.end();
    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1082,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1026);
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1040, 0);
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder1001.drawIndirect(buffer1064, 0);
    render_pass_encoder1020.drawIndirect(buffer1017, 0);
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1037, 0);
    render_pass_encoder3000.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1001.drawIndirect(buffer1012, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder3000.end();
    render_pass_encoder1002.end();
    render_pass_encoder1002.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1082, 0);
    device10.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1041, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1084,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1027);
    render_pass_encoder1021.end();
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1061, 0);
    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1086,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1028);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1064, 0);
    device20.queue.submit([]);
    render_pass_encoder3010.end();
    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1088,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1029);
    render_pass_encoder1010.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1023, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1054, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1054, 0);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1089, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1089, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1021.drawIndirect(buffer1036, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1002.drawIndirect(buffer1039, 0);
    render_pass_encoder1010.drawIndirect(buffer1073, 0);
    render_pass_encoder1021.end();
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1018, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1001.popDebugGroup();
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1081, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1000.drawIndirect(buffer1080, 0);
    render_pass_encoder3010.drawIndexed(3);
    compute_pass_encoder1020.end();
    render_pass_encoder1001.end();
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1076, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1018, "uint16");
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1002.drawIndirect(buffer1041, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1002.drawIndirect(buffer1055, 0);
    compute_pass_encoder1020.popDebugGroup()
    device30.queue.submit([command_buffer302, command_buffer304, ]);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder1021.end();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1002.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1073, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1021.drawIndirect(buffer1076, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1002.end();
    compute_pass_encoder0000.end();
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1089, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1002.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer1070, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1039, 0);
    device10.queue.submit([]);
    render_pass_encoder1002.drawIndirect(buffer1067, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1023, 0);
    render_pass_encoder1001.drawIndirect(buffer1089, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1090, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1090, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1080, 0);
    compute_pass_encoder1021.end();
    render_pass_encoder1020.drawIndirect(buffer1017, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1064, 0);
    device30.queue.submit([command_buffer302, command_buffer304, ]);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder1002.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndirect(buffer1090, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1010.end();
    compute_pass_encoder1021.end();
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group007);
    compute_pass_encoder1020.end();
    render_pass_encoder1000.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1075, 0);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1049, 0);
    render_pass_encoder1010.drawIndirect(buffer1063, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1059, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder3010.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1054, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder3010.draw(3);
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group008);
    render_pass_encoder1002.end();
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    render_pass_encoder1001.drawIndirect(buffer1022, 0);
    device30.queue.submit([]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1041, 0);
    render_pass_encoder1001.drawIndirect(buffer1050, 0);
    render_pass_encoder1001.drawIndirect(buffer1023, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1065, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1089, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer1019, 0);
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder0010.end();
    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1092,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1030);
    render_pass_encoder1010.drawIndirect(buffer1019, 0);
    render_pass_encoder3000.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1038, 0);
    render_pass_encoder1000.drawIndirect(buffer1039, 0);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    device30.queue.submit([command_buffer302, command_buffer304, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndexed(3);
    compute_pass_encoder3030.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1035, "uint16");
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1000.drawIndirect(buffer1073, 0);
    render_pass_encoder1001.drawIndirect(buffer1089, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0025, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0025, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1021.end();
    compute_pass_encoder1020.end();
    render_pass_encoder1000.end();
    render_pass_encoder1002.setIndexBuffer(buffer1051, "uint16");
    compute_pass_encoder1021.dispatchWorkgroups(100);
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1065, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1021.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1020.drawIndirect(buffer1045, 0);
    render_pass_encoder3010.drawIndirect(buffer304, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1036, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1077, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1053, 0);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1094,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1031);
    render_pass_encoder1021.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1090, 0);
    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1096,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1032);
    render_pass_encoder1010.drawIndirect(buffer1037, 0);
    render_pass_encoder1010.drawIndirect(buffer1064, 0);
    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1098 = device10.createBuffer({
        label: "buffer1098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1098,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1033);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1097, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1089, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder3000.end();
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    compute_pass_encoder1021.popDebugGroup()
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3010.drawIndexed(3);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1041, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    device10.queue.submit([command_buffer102, ]);
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1010.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1021.drawIndirect(buffer1058, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer1070, 0);
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    render_pass_encoder1000.drawIndirect(buffer1080, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1002.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.drawIndirect(buffer1023, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndirect(buffer1050, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1061, 0);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1090, 0);
    device30.queue.submit([command_buffer301, command_buffer302, command_buffer303, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1001.drawIndirect(buffer1053, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1058, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1079, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    const buffer1099 = device10.createBuffer({
        label: "buffer1099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10100 = device10.createBuffer({
        label: "buffer10100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10100,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1034);
    const buffer10101 = device10.createBuffer({
        label: "buffer10101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1035 = device10.createBindGroup({
        label: "bind_group1035",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10102,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1035);
    render_pass_encoder1010.drawIndirect(buffer1087, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1001.drawIndirect(buffer1041, 0);
    render_pass_encoder1021.drawIndirect(buffer1037, 0);
    compute_pass_encoder1020.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1047, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndirect(buffer1061, 0);
    compute_pass_encoder2020.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder1002.drawIndexedIndirect(buffer1073, 0);
    compute_pass_encoder1020.end();
    device30.queue.submit([]);
    render_pass_encoder1002.drawIndirect(buffer1037, 0);
    device30.queue.submit([command_buffer303, ]);
    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10104,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1036);
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1020.end();
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1002.setIndexBuffer(buffer1068, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1001.drawIndirect(buffer1049, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1017, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndirect(buffer1073, 0);
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder1002.drawIndirect(buffer1041, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1002.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder1001.drawIndirect(buffer1039, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder3010.end();
    render_pass_encoder1002.end();
    device30.queue.submit([command_buffer303, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1002.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndirect(buffer1040, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer305, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1002.drawIndirect(buffer1082, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1010.drawIndirect(buffer1070, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1038, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder3010.drawIndexed(3);
    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10106 = device10.createBuffer({
        label: "buffer10106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10106,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1037);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1002.end();
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1058, 0);
    render_pass_encoder1002.end();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer10106, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1089, 0);
    device20.queue.submit([command_buffer204, ]);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10107 = device10.createBuffer({
        label: "buffer10107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10107, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10107, 0);
    render_pass_encoder1002.drawIndirect(buffer1019, 0);
    compute_pass_encoder3030.popDebugGroup()
    const buffer10108 = device10.createBuffer({
        label: "buffer10108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10109 = device10.createBuffer({
        label: "buffer10109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1038 = device10.createBindGroup({
        label: "bind_group1038",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10109,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1038);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1035, 0);
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    compute_pass_encoder3030.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1002.drawIndirect(buffer10107, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1049, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1080, "uint16");
    device10.queue.submit([]);
    render_pass_encoder3010.drawIndexed(3);
    const buffer10110 = device10.createBuffer({
        label: "buffer10110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10111 = device10.createBuffer({
        label: "buffer10111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1039 = device10.createBindGroup({
        label: "bind_group1039",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10111,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1039);
    render_pass_encoder1000.end();
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10112 = device10.createBuffer({
        label: "buffer10112",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10112, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10112, 0);
    device30.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1000.drawIndirect(buffer1045, 0);
    render_pass_encoder3010.drawIndirect(buffer303, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1002.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1002.end();
    render_pass_encoder3000.draw(3);
    compute_pass_encoder2020.popDebugGroup()
    device20.queue.submit([command_buffer202, command_buffer205, ]);
    render_pass_encoder1001.drawIndirect(buffer1022, 0);
    render_pass_encoder3010.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10113 = device10.createBuffer({
        label: "buffer10113",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10113, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10113, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer303, 0);
    device30.queue.submit([]);
    render_pass_encoder1020.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    render_pass_encoder1021.drawIndirect(buffer1073, 0);
    render_pass_encoder1010.drawIndirect(buffer1080, 0);
    render_pass_encoder1021.drawIndirect(buffer1064, 0);
    compute_pass_encoder1021.end();
    render_pass_encoder1021.drawIndirect(buffer1073, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1085, 0);
    compute_pass_encoder1021.end();
    render_pass_encoder1000.drawIndirect(buffer1061, 0);
    render_pass_encoder3010.drawIndirect(buffer305, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1002.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder3000.drawIndexed(3);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10114 = device10.createBuffer({
        label: "buffer10114",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10114, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10114, 0);
    render_pass_encoder1021.drawIndirect(buffer1089, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder1002.end();
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    render_pass_encoder3000.end();
    device20.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    device10.queue.submit([command_buffer100, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10115 = device10.createBuffer({
        label: "buffer10115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10115, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10115, 0);
    compute_pass_encoder2050.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder3010.end();
    render_pass_encoder1002.drawIndirect(buffer1058, 0);
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([]);
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    device10.queue.submit([command_buffer101, ]);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder3010.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1037, 0);
    const buffer10116 = device10.createBuffer({
        label: "buffer10116",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10117 = device10.createBuffer({
        label: "buffer10117",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1040 = device10.createBindGroup({
        label: "bind_group1040",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10116,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10117,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1040);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer1055, 0);
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder1021.drawIndirect(buffer10112, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder1021.drawIndirect(buffer1079, 0);
    const buffer10118 = device10.createBuffer({
        label: "buffer10118",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10119 = device10.createBuffer({
        label: "buffer10119",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1041 = device10.createBindGroup({
        label: "bind_group1041",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10118,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10119,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1041);
    render_pass_encoder3000.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndirect(buffer1058, 0);
    render_pass_encoder1000.drawIndirect(buffer1048, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1021.drawIndirect(buffer1017, 0);
    render_pass_encoder1020.drawIndirect(buffer1089, 0);
    render_pass_encoder1001.drawIndirect(buffer1027, 0);
}