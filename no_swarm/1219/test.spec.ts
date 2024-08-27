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
        powerPreference: undefined
    });
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array0 = new Float32Array([-1.0, 0.0, -0.25, 0.5, 1.0, 0.25, -1.0, -0.5, -0.5, -0.25, 1.0, 0.75, -0.25, 0.25, 0.75, -0.75, -0.25, 0.5, -0.75, 0.25, 0.25, -1.0, 0.75, 0.5, -0.5, 0.0, -0.75, 0.0, -0.5, 0.0, -1.0, -0.5, -0.25, -0.25, 1.0, 0.5, -0.25, 0.5, -0.75, 0.75, 0.0, -0.75, -0.75, -1.0, 1.0, -0.5, -0.75, 0.75, 0.25, -0.75, 1.0, -0.5, 0.25, -1.0, 0.25, 0.25, 0.0, 0.75, -0.5, 0.25, 0.75, 1.0, -1.0, -0.5, 0.0, 0.25, 0.0, 1.0, 0.0, 1.0, 0.5, -0.25, 0.0, -1.0, -1.0, 0.0, 0.5, -0.75, -0.25, 1.0, -0.25, 0.75, 0.75, -0.25, -0.75, 0.0, -0.25, 0.0, -0.75, 0.25, 0.25, 1.0, 0.5, -0.5, 0.75, 1.0, -0.5, 1.0, -0.75, 0.75, ]);
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
    
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([-0.5, -0.25, 0.25, 1.0, 0.0, 0.5, 1.0, -0.5, 0.5, 0.5, -0.25, 0.25, -1.0, -0.5, -1.0, -0.25, 0.0, 0.25, 0.5, -0.5, 1.0, 0.0, -0.5, 0.5, 0.0, 1.0, 0.5, -0.25, -0.25, 0.75, 1.0, 0.75, -0.5, 0.5, 0.5, -0.25, -1.0, 0.75, 0.75, -0.75, -0.75, 0.5, 1.0, -0.75, 0.25, 0.5, 0.75, 0.5, -1.0, 1.0, 0.0, -0.25, 0.75, -0.25, -0.5, 0.0, 0.25, -0.75, -0.75, 0.75, 0.0, 0.5, -0.5, 0.75, 1.0, 0.25, 1.0, -0.75, -0.75, 0.5, 0.5, 1.0, 0.75, -0.5, -0.5, -0.75, -0.25, -0.5, -0.75, -0.25, 0.0, -0.25, 1.0, 0.0, 0.75, -0.5, -0.5, -1.0, -0.75, -0.25, 0.75, 0.75, -0.5, -1.0, 1.0, -0.75, 0.75, 0.25, 1.0, 0.75, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.pushErrorScope("validation");
    device20.destroy();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const array2 = new Float32Array([0.75, -1.0, 0.75, 0.5, 0.75, 0.75, -0.5, -1.0, -0.5, -0.5, 0.5, -0.5, 0.25, 0.75, -0.25, 0.0, -0.75, -0.5, -0.25, 0.25, 1.0, 0.5, -0.25, 1.0, -0.75, 1.0, 1.0, -0.75, -0.75, -0.75, 1.0, 1.0, 0.25, 0.0, 0.5, -0.25, -0.25, 1.0, -1.0, -0.25, -0.5, 1.0, 0.0, -0.25, 0.25, 0.75, 0.25, 0.25, -0.75, 0.75, -0.5, -0.5, 0.0, 0.25, -0.75, -0.25, -0.5, 0.0, 0.0, 0.25, -1.0, -0.25, 0.0, 0.0, 0.25, -1.0, -0.25, 0.25, -0.75, 1.0, -0.75, 0.0, 0.5, -0.25, -1.0, -0.25, 0.0, 0.5, -0.5, 0.75, -0.75, 1.0, 0.5, -0.75, 0.25, -0.75, 0.0, 1.0, 0.75, -1.0, -0.5, 0.5, 1.0, 0.75, -0.75, 0.25, 0.75, -0.75, 0.5, 0.0, ]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array3 = new Float32Array([0.25, 0.75, 0.25, -1.0, -0.25, 0.0, -0.75, -0.5, 1.0, 1.0, 0.5, -1.0, 0.25, 0.25, -1.0, -0.75, 0.0, 0.0, 0.0, 0.0, -0.5, -0.5, -0.25, -0.75, 0.25, -0.75, -0.5, 1.0, 1.0, 0.0, -0.5, 1.0, 1.0, 1.0, -0.75, -0.5, 0.75, 0.75, 1.0, 0.5, -0.25, 0.75, 1.0, 0.75, 0.75, 0.25, -0.25, 0.75, -0.75, 0.0, 1.0, -0.5, 0.25, 0.0, 0.5, 0.0, 0.75, 1.0, 0.5, -0.75, 0.75, 0.5, 0.0, -0.75, 0.0, -0.25, -1.0, -0.25, 0.25, -0.75, 0.25, 0.75, 0.0, 1.0, 0.5, -0.25, -0.75, -0.75, 0.0, 0.5, 0.0, -0.5, 0.75, 0.75, -0.75, -0.5, -0.75, -1.0, 0.25, 0.0, -0.75, 0.25, -0.5, 0.75, -1.0, -0.25, 0.75, 0.75, 1.0, -0.75, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    command_encoder000.insertDebugMarker("mymarker");
    const array4 = new Float32Array([-0.25, 0.5, -0.5, 0.25, -0.25, -0.75, 0.75, 0.0, 0.0, 0.75, 0.0, 0.25, -0.25, -0.75, -0.75, 0.0, -0.5, -1.0, -0.75, -0.5, -0.5, -0.5, -0.25, 0.0, 0.5, -0.75, 0.5, 0.0, 0.25, -0.25, 1.0, 0.75, 0.0, 0.5, 0.0, 0.25, -0.75, 0.75, -0.25, 0.25, 0.0, -0.5, 0.75, 0.5, 0.25, 0.25, 0.75, 0.0, 0.5, 0.75, 0.0, 0.5, -0.5, 1.0, -0.25, 0.0, -0.5, 0.0, 0.25, -0.25, -0.5, -0.75, 0.25, 0.75, 0.75, 1.0, 0.0, -0.5, 0.25, -0.25, 1.0, -1.0, 0.0, 0.0, 0.25, -1.0, 0.75, 0.0, -0.5, -0.5, -0.75, 0.5, -0.5, 0.75, 0.25, -0.5, 1.0, 0.25, -0.5, 1.0, -0.75, -0.25, 0.0, 1.0, -0.5, 0.25, -0.75, 0.5, 0.0, 0.5, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.copyBufferToBuffer(
        buffer001,
        0,
        buffer001,
        0,
        400
    );
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const array5 = new Float32Array([-1.0, 0.25, -0.75, 1.0, 0.0, -1.0, 1.0, 1.0, 0.25, -0.25, 0.75, -1.0, 0.25, 0.5, -0.75, -0.75, 0.0, -0.5, -0.25, 0.0, 0.5, 0.5, -0.75, 0.75, 0.0, 0.75, -1.0, -0.75, -0.5, -0.25, -1.0, -1.0, 0.25, 0.5, 1.0, 0.25, -0.5, 0.25, 0.25, 0.25, -0.25, -0.75, -1.0, 0.0, -0.25, -1.0, 0.75, -0.25, -0.25, 0.75, -1.0, 1.0, -0.75, -0.5, 1.0, 0.0, 0.75, -0.5, -0.5, -1.0, -0.5, 1.0, 0.0, 1.0, 0.25, 0.75, -0.5, -0.75, 0.25, -1.0, 0.75, 0.0, 0.75, -0.5, -1.0, 0.25, -0.5, -1.0, -0.75, -1.0, 0.5, -0.75, 0.75, -0.25, -0.75, 0.5, 0.5, -1.0, -1.0, 0.5, 0.0, 0.5, 0.0, -1.0, -0.5, 0.0, -0.75, 0.0, 0.25, -0.75, ]);
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
    buffer000.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    buffer001.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.pushErrorScope("internal");
    
    
    const array6 = new Float32Array([-1.0, -0.75, 0.0, 1.0, -0.5, -1.0, 0.5, -1.0, 0.5, 0.25, -0.5, 0.75, 1.0, -0.25, -0.5, -0.75, 0.0, 0.5, -1.0, 0.75, 0.0, -0.25, 0.25, 0.0, -0.25, -0.5, 0.25, -0.5, -0.25, 0.75, -1.0, -0.25, 0.0, 0.5, 0.75, -0.5, 0.5, -0.25, -0.25, -1.0, -1.0, 0.0, -0.25, -1.0, 0.75, 1.0, 0.75, 0.75, 0.75, 0.0, 0.0, -1.0, -0.5, 0.75, 0.0, 1.0, 0.25, -0.75, 1.0, 0.5, 0.75, -0.75, 0.25, 0.5, 0.25, -0.75, -0.5, -1.0, -0.5, -0.25, 0.0, -0.75, 0.25, 0.25, 0.5, 0.5, 1.0, 0.0, -1.0, 0.5, -0.5, 0.25, 0.75, 1.0, 0.0, -1.0, 0.0, -0.25, -1.0, 0.5, 0.25, 0.25, -1.0, -0.5, -0.75, -1.0, 1.0, 0.0, 0.25, -0.75, ]);
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    buffer002.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const array7 = new Float32Array([-1.0, 0.0, 1.0, 0.5, 0.5, 0.75, -0.75, 0.0, -0.25, 0.0, 1.0, -0.25, -0.75, 0.0, 0.0, -0.75, 0.25, 0.5, 0.75, 0.75, 0.5, 0.0, 0.0, -1.0, 0.25, -1.0, -1.0, -0.75, 0.0, -1.0, 0.0, 0.0, -1.0, -0.75, -0.5, 0.5, 0.0, 0.75, 0.5, -0.25, -0.5, 1.0, 1.0, 0.25, 1.0, 0.0, -0.75, -1.0, -0.5, 0.75, 0.25, -0.25, -0.5, 0.0, 0.5, 0.25, 0.75, -1.0, 0.75, 0.75, 0.5, 0.75, 0.25, 1.0, 0.25, 1.0, -1.0, -0.75, -0.75, 0.75, 0.75, -0.5, -1.0, 0.25, 0.25, -0.25, 1.0, -0.25, 0.0, -0.75, -0.75, -0.5, -0.25, 0.75, 0.0, 0.5, 0.75, -0.75, 0.25, 0.0, 0.5, 1.0, 0.0, 0.5, 1.0, -0.75, -0.25, -0.75, 0.25, 0.5, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.clearBuffer(buffer000);
    query000.destroy()
    buffer001.destroy()
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const command_buffer001 = command_encoder001.finish();
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer002.destroy()
    texture000.destroy();
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    query000.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture000.destroy();
    const array8 = new Float32Array([0.0, 0.75, 0.25, -0.5, 1.0, 0.25, -1.0, 0.0, 0.25, 0.0, 1.0, -1.0, 0.5, -0.25, 0.75, 1.0, 0.0, 1.0, 1.0, -0.25, -1.0, -1.0, -0.5, -1.0, 0.75, 0.0, 0.5, 0.25, -0.75, 1.0, 0.25, -1.0, -0.75, -0.25, -0.5, -0.75, 0.25, 1.0, 0.0, -0.75, 0.5, 0.75, 0.0, -0.5, -0.75, 1.0, 0.25, 0.0, 1.0, -1.0, 0.25, -0.5, 0.75, -0.25, 0.25, -1.0, -0.25, 0.5, 0.25, -1.0, -0.75, -0.25, 0.5, 0.0, 0.75, 1.0, -0.75, -1.0, -0.5, -0.75, -0.5, 0.25, 1.0, -1.0, 0.75, -0.25, 0.0, -1.0, 0.25, -0.75, -0.25, -1.0, -0.25, -0.5, 1.0, 1.0, 0.5, -1.0, -0.75, -0.75, 1.0, -0.75, -0.75, -0.5, 0.0, 1.0, -0.75, 0.5, -0.5, 1.0, ]);
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("validation");
    
    device10.pushErrorScope("out-of-memory");
    
    query000.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    texture001.destroy();
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    query000.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group001);
    query002.destroy()
    
    
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    const array9 = new Float32Array([1.0, -0.75, -1.0, -0.5, 1.0, 0.75, -0.75, -0.25, 0.0, 0.75, 1.0, -0.75, 0.5, 0.5, 0.0, 0.5, 1.0, 1.0, 0.75, -0.25, -1.0, 0.75, -0.5, -1.0, 0.5, 0.75, -0.5, 0.25, 0.25, 0.25, 1.0, -1.0, -0.25, -1.0, 1.0, -1.0, 0.5, 0.0, 0.75, 1.0, 0.25, -0.5, -1.0, -0.5, 0.75, 0.75, 0.5, 0.75, 0.5, -0.25, -0.25, 1.0, -0.75, -1.0, 0.25, -0.75, 0.5, -1.0, 0.5, 0.0, -0.25, -1.0, -0.5, -0.75, -0.5, -0.5, 0.75, 0.5, -0.75, -1.0, 0.0, -0.25, -0.25, 0.5, -0.75, -0.75, -1.0, 0.5, -0.75, -0.25, -0.5, 0.0, -0.75, 0.25, -0.75, -0.25, 0.5, 1.0, -0.25, 0.0, -0.5, -0.25, 0.0, 0.5, -1.0, -1.0, 0.75, 1.0, -0.5, 0.0, ]);
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    render_bundle_encoder002.popDebugGroup();
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer002,
        0,
        400
    );
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query002.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const array10 = new Float32Array([-1.0, -1.0, 1.0, -0.25, 0.75, 1.0, 1.0, 0.25, 1.0, 0.5, 0.0, 0.25, 0.25, -0.5, -1.0, 0.0, 1.0, 1.0, 0.75, 0.0, -0.75, -0.75, 0.25, -1.0, 0.25, 0.0, -0.75, -0.75, 0.25, -0.75, 0.75, 0.25, 1.0, -0.25, -0.25, 0.75, -0.5, -0.25, -0.75, 1.0, 0.25, -0.25, -0.5, -0.75, 1.0, -0.75, -0.75, -0.25, -0.75, -1.0, 0.5, -0.5, 0.25, -0.75, -0.75, 0.5, -0.75, 0.75, 1.0, -0.25, 0.0, 0.75, 1.0, -0.25, 0.25, 0.25, -0.75, -0.75, -0.5, 0.0, 0.25, -1.0, 0.5, -0.25, -1.0, 0.5, 0.75, 1.0, 0.0, -0.5, -0.5, 0.75, -0.75, -0.25, -1.0, -0.75, -0.75, -1.0, -0.25, 0.0, 0.75, 1.0, 0.25, 0.25, 0.25, 1.0, 0.75, 0.25, 0.75, -0.25, ]);
    
    compute_pass_encoder0000.popDebugGroup()
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    render_bundle_encoder002.insertDebugMarker("marker");
    texture000.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    device00.pushErrorScope("internal");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer007, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer007, 0);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.setPipeline(render_pipeline002);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    device00.queue.writeBuffer(buffer007, 0, array8, 0, array8.length);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    compute_pass_encoder0020.end();
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder000.setPipeline(render_pipeline005);
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const array11 = new Float32Array([-0.5, 1.0, 0.0, 1.0, 0.25, -0.25, -0.5, 1.0, 0.0, 0.5, 1.0, -0.5, 1.0, -0.25, 0.0, -0.5, 0.0, -0.25, 0.0, -1.0, -1.0, -1.0, 0.25, 0.25, -0.75, 1.0, 1.0, 0.75, 0.75, -0.75, 0.0, 1.0, 0.5, -0.5, -0.5, -0.5, 0.0, -0.25, 0.25, -0.5, 0.5, -0.5, 0.0, 0.75, -1.0, 0.75, 0.0, -0.25, 1.0, -0.5, 0.5, -1.0, -0.25, 0.75, -0.75, 1.0, 0.5, 0.0, 1.0, 0.0, 0.75, 0.75, 0.0, -0.5, -0.75, -1.0, 1.0, -0.5, -0.25, -0.75, 0.5, -1.0, -1.0, 0.75, -1.0, 0.75, 1.0, 1.0, 0.0, 1.0, 0.75, 1.0, -1.0, 0.25, 1.0, -0.75, -0.75, 0.25, 0.25, 0.5, -1.0, 0.0, -0.25, 0.75, -1.0, 0.75, -0.25, -1.0, -0.75, -0.25, ]);
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer007,
        0
    )
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    device00.queue.writeBuffer(buffer007, 0, array5, 0, array5.length);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    device00.queue.writeBuffer(buffer007, 0, array4, 0, array4.length);
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setPipeline(render_pipeline000);
    const command_buffer300 = command_encoder300.finish();
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder0020.setPipeline(render_pipeline004);
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0021.setPipeline(render_pipeline004);
    device00.queue.writeBuffer(buffer007, 0, array3, 0, array3.length);
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    buffer009.destroy()
    
    device00.queue.writeBuffer(buffer007, 0, array6, 0, array6.length);
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group003);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
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
    texture002.destroy();
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    query001.destroy()
    
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0012, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0012, 0);
    render_pass_encoder0020.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.beginOcclusionQuery(0)
    device00.queue.writeBuffer(buffer0012, 0, array5, 0, array5.length);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    texture003.destroy();
    texture004.destroy();
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer0012, 0, array4, 0, array4.length);
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
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
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const array12 = new Float32Array([-0.5, 1.0, 0.0, 0.0, -0.5, -0.75, 0.75, -0.75, 1.0, 0.25, -0.75, -0.5, -1.0, -0.75, -0.25, 1.0, -0.25, 1.0, -0.75, 0.25, 0.75, 0.0, 0.75, -0.75, -0.25, -0.25, 0.25, 0.0, -1.0, 0.0, 0.5, -0.25, 0.5, -0.25, -0.25, -1.0, 1.0, 0.5, -0.25, -0.5, -1.0, 0.5, 0.25, 1.0, 1.0, 1.0, 0.25, 1.0, 0.5, 0.25, 0.75, -0.5, 1.0, -0.75, 0.0, -0.25, -0.5, 1.0, 0.0, 0.75, 0.0, -0.25, 0.25, 0.25, 1.0, -0.5, 0.25, -1.0, 0.25, -0.75, 0.25, 0.0, -0.75, -0.5, 0.25, -0.5, 0.5, -1.0, -1.0, 0.5, 1.0, 0.0, -0.25, -0.5, -0.75, 1.0, 0.5, 0.5, 0.75, -0.25, -1.0, -1.0, -0.75, 0.5, 0.75, -1.0, 1.0, -1.0, -0.25, 0.25, ]);
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    
    render_pass_encoder0020.setStencilReference(1);
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer0012, 0, array2, 0, array2.length);
    
    device00.queue.writeBuffer(buffer0012, 0, array9, 0, array9.length);
    
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout007,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device30.queue.submit([command_buffer300, ]);
    {
        await buffer005.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer005.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer005.unmap();
        console.log(new Float32Array(data));
    }
    buffer007.destroy()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group004);
    device00.queue.writeBuffer(buffer0014, 0, array1, 0, array1.length);
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device00.queue.writeBuffer(buffer0012, 0, array5, 0, array5.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_bundle_encoder002.setVertexBuffer(0, buffer000);
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout008,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer0012, 0, array0, 0, array0.length);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer0012, 0, array12, 0, array12.length);
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_bundle_encoder002.drawIndirect(buffer007, 0);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.setVertexBuffer(0, buffer0015);
    buffer003.destroy()
    buffer0015.destroy()
    render_bundle_encoder000.drawIndirect(buffer002, 0);
    render_pass_encoder0021.pushDebugGroup("group_marker");
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0012, 0, array5, 0, array5.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer0012, 0, array6, 0, array6.length);
    
    render_bundle_encoder301.setPipeline(render_pipeline301);
    
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout009,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    query005.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer0013.destroy()
    render_pass_encoder0021.popDebugGroup();
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    device00.queue.writeBuffer(buffer008, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer0012, 0, array7, 0, array7.length);
    buffer0012.destroy()
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.end();
    
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    command_encoder200.clearBuffer(buffer200);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group005);
    render_bundle_encoder001.setVertexBuffer(0, buffer0015);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query301.destroy()
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout007,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query300.destroy()
    query301.destroy()
    device00.queue.writeBuffer(buffer0016, 0, array12, 0, array12.length);
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
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout008,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    buffer006.destroy()
    query005.destroy()
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0016, 0, array3, 0, array3.length);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.queue.writeBuffer(buffer007, 0, array11, 0, array11.length);
    render_bundle_encoder001.drawIndirect(buffer0012, 0);
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    
    
    render_pass_encoder0021.setStencilReference(1);
    texture004.destroy();
    buffer006.destroy()
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    buffer0016.destroy()
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout007,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout006,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder001.popDebugGroup();
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group006);
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setVertexBuffer(0, buffer0015);
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout007,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query301.destroy()
    
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer007, 0, array6, 0, array6.length);
    
    
    
    device30.destroy();
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout006,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer0018.destroy()
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0021, 0, array6, 0, array6.length);
    const compute_pipeline0070 = device00.createComputePipeline({
        label: "compute_pipeline0070",
        layout: pipeline_layout009,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0021, 0, array10, 0, array10.length);
    
    device00.queue.writeBuffer(buffer002, 0, array10, 0, array10.length);
    const compute_pipeline0071 = device00.createComputePipeline({
        label: "compute_pipeline0071",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline0072 = device00.createComputePipeline({
        label: "compute_pipeline0072",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setVertexBuffer(0, buffer0021);
    const compute_pipeline0073 = device00.createComputePipeline({
        label: "compute_pipeline0073",
        layout: pipeline_layout006,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    buffer008.destroy()
    const compute_pipeline0074 = device00.createComputePipeline({
        label: "compute_pipeline0074",
        layout: pipeline_layout007,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    const compute_pipeline0075 = device00.createComputePipeline({
        label: "compute_pipeline0075",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0076 = device00.createComputePipeline({
        label: "compute_pipeline0076",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0077 = device00.createComputePipeline({
        label: "compute_pipeline0077",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0020, 0, array5, 0, array5.length);
    
    
    
    device00.queue.writeBuffer(buffer0021, 0, array5, 0, array5.length);
    render_pass_encoder0000.popDebugGroup();
    const compute_pipeline0078 = device00.createComputePipeline({
        label: "compute_pipeline0078",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer0010, 0, array12, 0, array12.length);
    const compute_pipeline0079 = device00.createComputePipeline({
        label: "compute_pipeline0079",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0080 = device00.createComputePipeline({
        label: "compute_pipeline0080",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    buffer0015.destroy()
    const compute_pipeline0081 = device00.createComputePipeline({
        label: "compute_pipeline0081",
        layout: pipeline_layout005,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer0019, 0, array7, 0, array7.length);
    
    const compute_pipeline0082 = device00.createComputePipeline({
        label: "compute_pipeline0082",
        layout: pipeline_layout009,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0083 = device00.createComputePipeline({
        label: "compute_pipeline0083",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0021.draw(3);
    render_pass_encoder0000.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group007);
    render_pass_encoder0020.setVertexBuffer(0, buffer005);
    render_pass_encoder0020.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    render_pass_encoder0000.endOcclusionQuery()
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0021.drawIndexedIndirect(buffer0015, 0);
    device00.queue.submit([command_buffer000, ]);
    command_encoder002.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder0000.end();
}