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
    const array0 = new Float32Array([1.0, 0.5, 0.25, 0.75, -1.0, -0.75, -0.75, 0.25, -1.0, 0.25, 0.0, -0.25, 0.75, 0.25, -0.75, 1.0, -0.25, 1.0, -0.25, -0.75, 0.0, -1.0, 0.5, 0.75, 1.0, -1.0, -1.0, -0.25, -1.0, -0.5, 0.5, 0.0, 0.5, 0.0, 0.0, 0.0, 0.75, 0.5, 0.75, 1.0, 0.25, 0.0, 0.5, 0.0, -0.5, -0.25, 0.0, -1.0, -1.0, 0.25, -1.0, -0.75, 1.0, 0.25, 0.5, -0.75, -0.5, 0.75, -0.5, 0.75, 0.25, 0.25, -1.0, 0.5, 0.75, -1.0, 0.75, 0.75, 0.0, 0.75, 0.25, 0.5, -0.75, -0.25, -1.0, 0.25, 0.75, 1.0, -0.25, -0.25, -0.25, 1.0, 0.75, 0.75, -0.25, 0.75, 1.0, -0.25, 1.0, -1.0, 1.0, 0.0, -0.75, -0.75, 0.5, 0.25, 1.0, -0.75, 0.75, -0.25, ]);
    const array1 = new Float32Array([-0.5, -0.25, -0.75, 0.5, 0.0, -0.75, -0.5, -0.25, -1.0, -0.75, 1.0, 1.0, 0.0, -0.5, 1.0, 0.25, 0.75, 0.25, -0.5, -0.75, 0.5, -0.75, -0.75, -0.75, 0.0, -0.75, 0.5, 0.25, 0.25, 0.75, -0.75, 0.5, 0.75, -1.0, -0.25, -0.5, -0.25, 0.25, -0.75, -0.75, 0.75, 0.25, 0.0, 0.25, 0.5, 0.75, 1.0, -0.25, -0.75, 0.5, 0.75, -0.5, 1.0, -0.75, 1.0, 0.75, -0.25, -0.25, 0.5, -1.0, -1.0, 0.75, 1.0, -0.75, 0.75, -0.75, -0.5, 0.25, 0.0, -0.5, -1.0, -1.0, -0.75, -0.25, 0.75, -0.5, -0.5, -0.25, -0.75, 0.0, 0.75, 1.0, -0.75, -0.75, -0.5, 0.0, -0.5, 0.25, -1.0, 0.75, -0.5, 0.0, -0.25, -0.75, 0.75, 0.75, 0.25, -0.75, 0.25, -1.0, ]);
    const array2 = new Float32Array([0.25, 1.0, 0.5, -0.25, -0.75, -0.75, 0.0, -0.75, 0.5, 1.0, -0.75, 0.5, -0.75, -0.5, -0.5, -0.5, 0.75, 1.0, -0.5, 0.75, 0.5, 0.25, 0.75, 0.5, 0.75, 0.5, 0.5, -0.5, -1.0, 1.0, -1.0, 0.75, 0.0, 0.75, 0.25, -1.0, 0.5, 1.0, 0.0, -0.5, -0.25, -0.25, 0.5, 0.0, 0.5, 0.75, -0.5, -1.0, 0.25, -0.5, -0.5, -1.0, -0.75, -1.0, 0.25, -0.25, 1.0, 0.0, -0.75, -0.25, 0.75, -0.5, 0.5, -0.25, -0.25, 0.75, -0.25, 0.25, 0.25, 0.0, -0.75, 0.75, 0.0, -1.0, -1.0, -0.75, -0.5, 0.25, 0.75, 1.0, 0.5, 0.0, 1.0, 1.0, -0.25, -0.75, 1.0, -1.0, -0.75, -0.25, 0.25, 0.75, -0.5, -0.75, -0.5, 0.75, 0.0, 0.75, -1.0, 0.5, ]);
    const array3 = new Float32Array([-1.0, -1.0, 0.5, -0.75, -0.75, 1.0, -0.5, -0.75, 0.0, -0.25, 0.5, -0.5, -0.75, -0.5, 0.25, -1.0, 0.75, -0.5, -0.5, -0.25, -0.25, -1.0, 0.5, 1.0, 0.5, 0.25, 0.5, -0.75, -1.0, 0.25, -1.0, -0.75, 0.25, 0.0, 0.0, 1.0, -0.5, 0.25, -0.25, 0.0, -0.25, -0.5, -1.0, -0.5, 0.25, -1.0, -0.75, 0.25, -1.0, 0.5, -0.5, 0.0, 0.5, -0.25, -0.75, 0.25, 0.5, 1.0, 0.25, 0.75, -1.0, 0.5, -0.75, -1.0, 0.25, -1.0, -0.25, 1.0, -0.25, 0.5, -0.25, -1.0, 0.5, 0.5, -0.75, 1.0, -0.25, -0.5, -1.0, 1.0, 1.0, 0.0, 0.0, -0.5, 0.5, -1.0, 1.0, 0.25, 0.25, 0.25, -0.25, -0.75, -1.0, -0.25, 0.0, 0.75, 0.75, -0.5, -0.25, 0.25, ]);
    
    
    const array4 = new Float32Array([-1.0, 0.75, -0.75, 0.25, -0.25, -0.25, 1.0, 0.5, 1.0, 1.0, -0.75, 1.0, 0.75, 0.25, -0.5, 0.75, -0.75, -1.0, 0.0, 0.75, 0.75, -1.0, -0.75, 0.75, -0.25, 0.5, 0.25, 0.0, -1.0, 1.0, 0.5, -0.5, -0.25, -0.75, 1.0, -0.5, -0.75, 0.0, 0.25, -0.75, -0.75, -0.5, 0.25, -1.0, -1.0, 1.0, -0.25, 1.0, 0.5, 1.0, 0.75, 0.5, 0.25, 0.25, 0.5, 0.25, 1.0, -1.0, 0.25, 0.0, 1.0, 0.5, -0.75, 0.5, 0.75, 0.75, -0.75, -1.0, 0.25, 0.75, -0.25, 0.0, -0.25, -1.0, 0.75, 0.75, -0.75, -1.0, -0.75, -0.75, -0.25, -0.5, 0.0, 0.25, -0.5, -0.75, -0.75, -0.25, 0.25, -0.25, 0.75, -0.25, -0.25, -1.0, 0.25, 0.75, -1.0, 0.75, -0.75, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array5 = new Float32Array([-0.75, -0.75, 0.0, 0.25, 1.0, 1.0, 0.75, 1.0, 0.0, -0.25, -1.0, 1.0, -0.25, -0.25, -1.0, 0.25, -0.75, 0.0, -0.75, -0.5, 1.0, -0.5, 0.25, 0.0, 1.0, 0.25, 1.0, -0.25, -0.5, 0.75, 0.25, 0.25, -0.25, 0.75, -1.0, 0.25, -0.25, -0.75, -0.25, 1.0, 1.0, 0.75, 0.0, 0.5, 0.25, -0.5, 0.5, 0.5, 1.0, 0.0, 0.5, 0.0, -1.0, 1.0, 0.75, -0.5, 0.75, -0.5, -1.0, 1.0, 0.5, -0.5, -0.5, 0.75, 0.0, -0.75, 0.0, 1.0, 0.25, -1.0, -0.75, -0.25, 0.0, -0.5, -0.5, 0.75, -0.25, 1.0, 0.0, 0.75, 0.25, 1.0, 0.25, 0.75, 0.25, -0.75, -0.5, -0.25, 0.5, 0.0, 0.5, -0.5, 1.0, -1.0, 0.5, 0.0, -1.0, -1.0, -0.75, 1.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device10.pushErrorScope("out-of-memory");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device10.pushErrorScope("internal");
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    device00.pushErrorScope("internal");
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    buffer000.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    compute_pass_encoder1000.popDebugGroup()
    
    buffer001.destroy()
    
    const command_buffer101 = command_encoder101.finish();
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    texture101.destroy();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    texture100.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    texture102.destroy();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device00.pushErrorScope("validation");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("validation");
    query101.destroy()
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
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
    device00.pushErrorScope("validation");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
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
    query101.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer101, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder101.popDebugGroup();
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    texture000.destroy();
    query101.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const array6 = new Float32Array([1.0, -1.0, 0.0, 0.0, 0.5, -0.75, 1.0, -0.5, -1.0, 0.0, -1.0, 1.0, -0.25, -0.5, -0.5, 0.0, 1.0, -0.75, 0.5, 0.25, -0.75, -0.5, 0.5, 0.0, 0.5, 0.25, 0.25, -0.5, -0.25, -0.25, -0.5, 0.75, -0.75, 0.75, -0.75, 0.25, -0.25, 0.0, 0.75, -0.25, -1.0, 0.5, 1.0, -0.75, 0.25, -1.0, -0.25, -1.0, 0.5, -1.0, 0.0, 0.75, 1.0, -1.0, -0.25, 0.25, 0.0, 0.5, -0.25, 0.5, -0.5, 0.25, 0.25, -0.75, 0.75, 0.25, 1.0, 0.5, -1.0, -0.75, -0.5, 0.25, 1.0, -1.0, 1.0, -1.0, -1.0, 0.5, 0.5, -1.0, -0.75, 0.5, 0.75, -0.25, 0.75, 0.5, -1.0, -0.5, 0.75, 0.0, -1.0, -0.5, 0.25, 1.0, -0.25, 0.5, -0.75, -0.75, 1.0, 0.0, ]);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    buffer100.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1000.executeBundles([render_bundle_encoder100, ])
    const array7 = new Float32Array([1.0, 0.0, 1.0, 1.0, -0.25, 0.75, 0.5, -0.5, 1.0, -0.75, -0.25, -1.0, -0.5, 1.0, 0.75, 0.5, 0.25, 0.5, -0.75, 0.25, -1.0, 0.25, -0.5, 0.5, 0.5, 0.25, 1.0, -0.5, 0.0, 1.0, 0.25, -0.25, 0.0, 0.25, 0.75, -0.5, 0.25, -0.75, -0.5, -0.75, -0.75, -0.75, 0.25, 0.75, 0.25, -0.75, 0.75, 0.25, 1.0, 0.25, -1.0, 0.75, 0.5, -0.5, 0.0, -1.0, 0.0, 0.5, -1.0, 0.5, -0.25, 0.75, -0.75, 0.25, -0.75, -0.25, -0.25, -0.75, 0.5, -0.75, 0.0, 0.5, -0.25, 0.0, 1.0, -0.5, -0.5, -0.25, -0.75, 0.5, 1.0, -1.0, 0.0, 0.25, 0.75, 0.25, 0.75, 0.0, -0.75, 0.5, 0.25, 0.0, 0.0, 0.25, 0.0, -0.25, -0.25, -0.5, 0.25, -0.25, ]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    command_encoder000.pushDebugGroup("mygroupmarker")
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1000.executeBundles([])
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1001.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1001.executeBundles([render_bundle_encoder102, ])
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.pushErrorScope("internal");
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    render_pass_encoder1000.setPipeline(render_pipeline100);
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
    const command_buffer300 = command_encoder300.finish();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
        occlusionQuerySet: query103
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    query103.destroy()
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    compute_pass_encoder0010.popDebugGroup()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder1020.setStencilReference(1);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder1001.setPipeline(render_pipeline101);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.popDebugGroup();
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_bundle_encoder101.setPipeline(render_pipeline100);
    compute_pass_encoder1001.insertDebugMarker("marker")
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_bundle_encoder100.popDebugGroup();
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder1020.executeBundles([])
    render_bundle_encoder300.popDebugGroup();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture301.destroy();
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    texture001.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    device40.pushErrorScope("out-of-memory");
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    texture401.destroy();
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4011,
            },
        ],
        occlusionQuerySet: query400
    });
    
    query102.destroy()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder1001.insertDebugMarker("marker")
    
    
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
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
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
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    texture001.destroy();
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    query300.destroy()
    render_pass_encoder0020.setPipeline(render_pipeline001);
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    device10.queue.submit([command_buffer101, ]);
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer102.destroy()
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    
    
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4000.pushDebugGroup("group_marker");
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    command_encoder005.clearBuffer(buffer000);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0011.setPipeline(render_pipeline001);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder102.setPipeline(render_pipeline101);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0030.executeBundles([render_bundle_encoder001, ])
    
    
    
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query300.destroy()
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_pass_encoder0011.pushDebugGroup("group_marker");
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
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
    query001.destroy()
    
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4000.setStencilReference(1);
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    buffer400.destroy()
    buffer003.destroy()
    
    
    
    render_pass_encoder0040.insertDebugMarker("marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0030.executeBundles([])
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    render_pass_encoder4000.beginOcclusionQuery(0)
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1021.setPipeline(render_pipeline101);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    render_pass_encoder1000.setVertexBuffer(0, buffer100);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder4000.insertDebugMarker("marker");
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.beginOcclusionQuery(0)
    query104.destroy()
    device00.pushErrorScope("out-of-memory");
    command_encoder003.insertDebugMarker("mymarker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder0020.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    
    texture000.destroy();
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
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
    
    render_pass_encoder0031.setPipeline(render_pipeline000);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    render_pass_encoder0020.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder401.popDebugGroup();
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const render_pass_encoder1002 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    
    render_pass_encoder4000.endOcclusionQuery()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    buffer002.destroy()
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    query300.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1002.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder0010.setPipeline(render_pipeline003);
    render_bundle_encoder001.setPipeline(render_pipeline001);
    render_pass_encoder0040.insertDebugMarker("marker");
    command_encoder002.copyTextureToTexture(
        {
            texture: texture003
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer300.destroy()
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    render_pass_encoder1020.setStencilReference(1);
    query300.destroy()
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0011.setStencilReference(1);
    
    render_pass_encoder1002.executeBundles([render_bundle_encoder101, ])
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder4000.insertDebugMarker("marker");
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    render_pass_encoder4000.executeBundles([render_bundle_encoder401, render_bundle_encoder402, ])
    device00.queue.writeTexture({ texture: texture004 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture402 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setPipeline(render_pipeline001);
    
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture003.destroy();
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_pass_encoder1002.setBindGroup(0, bind_group101);
    render_pass_encoder0041.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4003,
            },
        ],
        occlusionQuerySet: query400
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline101);
    render_pass_encoder0020.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_pass_encoder0011.setBindGroup(0, bind_group001);
    command_encoder004.insertDebugMarker("mymarker");
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group002);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.setPipeline(render_pipeline001);
    const command_buffer100 = command_encoder100.finish();
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group003);
    compute_pass_encoder1001.setPipeline(compute_pipeline100);
    render_pass_encoder4000.setPipeline(render_pipeline400);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0050.setPipeline(render_pipeline002);
    const command_buffer003 = command_encoder003.finish();
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group004);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group102);
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.setPipeline(render_pipeline004);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    render_pass_encoder0030.setVertexBuffer(0, buffer007);
    compute_pass_encoder0000.end();
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group005);
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
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
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_pass_encoder0041.setBindGroup(0, bind_group006);
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
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

    render_pass_encoder0031.setBindGroup(0, bind_group007);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.setVertexBuffer(0, buffer0016);
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group008);
    render_pass_encoder0010.setVertexBuffer(0, buffer007);
    render_pass_encoder0050.setVertexBuffer(0, buffer005);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    render_pass_encoder0050.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0050.drawIndirect(buffer007, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0040.setVertexBuffer(0, buffer005);
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group105);
    render_pass_encoder1001.setVertexBuffer(0, buffer1011);
    render_pass_encoder0030.draw(3);
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group106);
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder4001.setPipeline(render_pipeline400);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1015, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder1001.end();
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    const command_buffer004 = command_encoder004.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group107);
    render_pass_encoder0031.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0020.setVertexBuffer(0, buffer0012);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1002.setVertexBuffer(0, buffer1012);
    render_pass_encoder0011.setVertexBuffer(0, buffer009);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    render_pass_encoder0011.draw(3);
    render_pass_encoder1020.setVertexBuffer(0, buffer1013);
    render_pass_encoder1021.setVertexBuffer(0, buffer108);
    compute_pass_encoder1020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1002.end();
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    device20.queue.submit([]);
    render_pass_encoder0050.end();
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    const command_buffer005 = command_encoder005.finish();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1021.end();
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group400);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0041.setVertexBuffer(0, buffer0010);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0041.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0031.end();
    render_pass_encoder0011.end();
    render_pass_encoder1001.drawIndirect(buffer1015, 0);
    render_pass_encoder1000.popDebugGroup();
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group009);
    compute_pass_encoder1000.end();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1001.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0011.drawIndirect(buffer003, 0);
    render_pass_encoder1020.end();
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
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0010);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0031.drawIndirect(buffer0023, 0);
    render_pass_encoder1021.setIndexBuffer(buffer103, "uint16");
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_pass_encoder4001.setBindGroup(0, bind_group401);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder1001.end();
    render_pass_encoder1020.drawIndirect(buffer1010, 0);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
    compute_pass_encoder0010.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0010.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    render_pass_encoder1021.draw(3);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer003, command_buffer004, command_buffer005, ]);
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0011);
    command_encoder001.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1021.draw(3);
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.draw(3);
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    render_pass_encoder0050.drawIndirect(buffer0013, 0);
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.draw(3);
    render_pass_encoder1001.drawIndirect(buffer1014, 0);
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder4001.setVertexBuffer(0, buffer404);
    render_pass_encoder0010.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1002.setIndexBuffer(buffer1016, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1021.end();
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    render_pass_encoder4001.draw(3);
    render_pass_encoder4000.setVertexBuffer(0, buffer402);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder4000.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1018, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0026, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0026, 0);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0012);
    render_pass_encoder0011.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder4001.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1013, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder1002.drawIndirect(buffer107, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer002, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer008, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder0040.drawIndirect(buffer002, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder4001.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder0011.drawIndirect(buffer0013, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder4000.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0031.drawIndirect(buffer0026, 0);
    render_pass_encoder4001.drawIndirect(buffer402, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    device40.queue.submit([]);
    render_pass_encoder4001.drawIndirect(buffer402, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder4000.drawIndirect(buffer403, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1014, 0);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0010.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0029, 0);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    render_pass_encoder1021.end();
    render_pass_encoder4001.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder0020.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0031.setIndexBuffer(buffer009, "uint16");
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder1000.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1019, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0030.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder1002.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0011.end();
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0017, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.drawIndirect(buffer1019, 0);
    render_pass_encoder1001.drawIndirect(buffer1015, 0);
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group108);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0041.end();
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0028, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer106, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    render_pass_encoder0050.drawIndirect(buffer007, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group109);
    render_pass_encoder0040.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0013);
    render_pass_encoder1021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder0011.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1015, 0);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder0030.end();
    render_pass_encoder4000.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder0040.drawIndirect(buffer0016, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0026, 0);
    render_pass_encoder0050.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0032, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0032, 0);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1010);
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer402, 0);
    render_pass_encoder1021.drawIndirect(buffer104, 0);
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1011);
    render_pass_encoder0011.drawIndexedIndirect(buffer0019, 0);
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1012);
    render_pass_encoder0050.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder4001.setIndexBuffer(buffer401, "uint16");
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0026, 0);
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1013);
    render_pass_encoder0041.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer002, 0);
    device50.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1032, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1032, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0031.drawIndirect(buffer0032, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4000.end();
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0011.drawIndirect(buffer008, 0);
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1033, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1033, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0041.drawIndirect(buffer0022, 0);
    device40.queue.submit([]);
    render_pass_encoder1002.drawIndirect(buffer108, 0);
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0029, 0);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1029, "uint16");
    device50.queue.submit([]);
    render_pass_encoder1000.end();
    render_pass_encoder0011.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1033, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder1000.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndirect(buffer0021, 0);
    render_pass_encoder1021.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    render_pass_encoder1001.drawIndirect(buffer1032, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0013, 0);
    render_pass_encoder0031.end();
    render_pass_encoder4000.popDebugGroup();
    compute_pass_encoder1001.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1033, 0);
    render_pass_encoder1020.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder1021.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder1021.drawIndirect(buffer1028, 0);
    render_pass_encoder1002.drawIndirect(buffer1033, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0011.end();
    render_pass_encoder4000.end();
    render_pass_encoder1001.drawIndirect(buffer1031, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0026, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder4000.setIndexBuffer(buffer404, "uint16");
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0014);
    render_pass_encoder0020.drawIndirect(buffer0015, 0);
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1002.drawIndirect(buffer1028, 0);
    render_pass_encoder0050.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0041.drawIndirect(buffer0015, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer1018, 0);
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
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1014);
    render_pass_encoder0020.setIndexBuffer(buffer0025, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer106, 0);
    compute_pass_encoder1000.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder1002.drawIndirect(buffer1035, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder0041.drawIndirect(buffer002, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1001.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0050.drawIndirect(buffer0014, 0);
    render_pass_encoder0030.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1012, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder1002.drawIndirect(buffer1016, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0035, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0035, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    render_pass_encoder0011.drawIndexed(3);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1002.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0031.drawIndirect(buffer0013, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1015);
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder1001.drawIndirect(buffer1032, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1016);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1021.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0041.end();
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1040, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1040, 0);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0010.popDebugGroup();
    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1042,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1017);
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0041.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder0041.drawIndirect(buffer0029, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1021, "uint16");
    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1044,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1018);
    render_pass_encoder0041.end();
    render_pass_encoder0030.popDebugGroup();
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1045, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1045, 0);
    render_pass_encoder0030.end();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder4001.drawIndirect(buffer400, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1002.drawIndirect(buffer1033, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    compute_pass_encoder1001.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1000.drawIndirect(buffer1039, 0);
    render_pass_encoder1001.drawIndirect(buffer1028, 0);
    render_pass_encoder4001.end();
    render_pass_encoder4001.draw(3);
    device30.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1021.drawIndirect(buffer1034, 0);
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder1021.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder1000.drawIndirect(buffer1035, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder0020.draw(3);
    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1047,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1019);
    render_pass_encoder0050.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder4000.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1021.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1002.drawIndirect(buffer1023, 0);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1048, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder0031.drawIndirect(buffer0026, 0);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder4001.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0020, 0);
    render_pass_encoder0041.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1021.drawIndirect(buffer1033, 0);
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder4000.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder0030.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder0040.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1001.drawIndirect(buffer1040, 0);
    render_pass_encoder0011.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndirect(buffer1029, 0);
    device00.queue.submit([command_buffer002, command_buffer003, command_buffer005, ]);
    render_pass_encoder0041.drawIndirect(buffer0024, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1033, 0);
    render_pass_encoder1002.drawIndirect(buffer1033, 0);
    render_pass_encoder4000.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndirect(buffer0018, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer1013, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    device00.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer0029, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1039, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder4001.popDebugGroup();
    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1050,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1020);
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1041, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1048, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4000.drawIndexedIndirect(buffer403, 0);
    render_pass_encoder1001.drawIndirect(buffer1015, 0);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1052,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1021);
    render_pass_encoder0050.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1040, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0037,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0015);
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0011.drawIndirect(buffer009, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0038, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0038, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1051, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0031.drawIndirect(buffer0035, 0);
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder1021.drawIndirect(buffer1040, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer1045, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4000.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder1002.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder1021.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1001.setIndexBuffer(buffer1024, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1021.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    render_pass_encoder1001.drawIndirect(buffer1033, 0);
    render_pass_encoder4001.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndirect(buffer0020, 0);
    device30.queue.submit([]);
    render_pass_encoder4001.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0024, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0050.drawIndirect(buffer009, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder4001.setIndexBuffer(buffer403, "uint16");
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0016);
    render_pass_encoder0020.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder1021.drawIndirect(buffer1048, 0);
    render_pass_encoder1001.drawIndirect(buffer1048, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1053, 0);
    render_pass_encoder4000.setIndexBuffer(buffer405, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1053, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4001.setIndexBuffer(buffer404, "uint16");
    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1055,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1022);
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0031.drawIndirect(buffer0032, 0);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1032, 0);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0040.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1032, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1021, 0);
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder0050.drawIndirect(buffer0016, 0);
    render_pass_encoder1021.end();
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1021.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer1025, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder1001.drawIndirect(buffer1033, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder4000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndirect(buffer0026, 0);
    render_pass_encoder4000.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0037, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1001.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0041, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0041, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer402, 0);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1021.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    device40.queue.submit([]);
    render_pass_encoder4000.drawIndirect(buffer405, 0);
    render_pass_encoder1002.end();
    render_pass_encoder0050.drawIndirect(buffer0029, 0);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder4000.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1002.drawIndirect(buffer1019, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0032, "uint16");
    compute_pass_encoder1020.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    device00.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndirect(buffer0018, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0011.drawIndirect(buffer0038, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder1002.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1024, 0);
    device40.queue.submit([]);
    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0043,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0017);
    compute_pass_encoder1020.end();
    compute_pass_encoder1001.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0045,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0018);
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1001.drawIndirect(buffer1018, 0);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1033, 0);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1038, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0045, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0041.popDebugGroup();
    device40.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder4000.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1025, "uint16");
    device00.queue.submit([command_buffer004, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder1020.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder1002.drawIndirect(buffer1048, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0047,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0019);
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4001.end();
    render_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0050.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder4000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0050.end();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1021.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0031.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.drawIndirect(buffer1018, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0049,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0000.end();
    render_pass_encoder0010.end();
    render_pass_encoder4000.drawIndexedIndirect(buffer404, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1002.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder1020.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    render_pass_encoder0010.drawIndirect(buffer0024, 0);
    render_pass_encoder0031.drawIndirect(buffer0041, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0041.drawIndirect(buffer0029, 0);
    render_pass_encoder4000.end();
    render_pass_encoder1002.drawIndirect(buffer1018, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder1021.drawIndirect(buffer1040, 0);
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder0050.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.drawIndexed(3);
    device20.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer0013, 0);
    render_pass_encoder0040.drawIndirect(buffer0040, 0);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder1021.drawIndirect(buffer1033, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0028, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder4001.drawIndexedIndirect(buffer405, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1049, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0031.drawIndexed(3);
    compute_pass_encoder0000.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1021, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder4000.end();
    render_pass_encoder0030.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    device40.queue.submit([]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0052,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0021);
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder0050.end();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder1020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    compute_pass_encoder1001.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.drawIndirect(buffer0038, 0);
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1050, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1024, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer003, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0053, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0053, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndirect(buffer1040, 0);
    render_pass_encoder1021.drawIndirect(buffer1028, 0);
    render_pass_encoder1002.drawIndirect(buffer1033, 0);
    device10.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0053, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0031.drawIndirect(buffer0050, 0);
    render_pass_encoder1002.drawIndirect(buffer1015, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1018, 0);
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    render_pass_encoder1000.drawIndirect(buffer1035, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder4000.end();
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.draw(3);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0050.drawIndirect(buffer0049, 0);
    render_pass_encoder1002.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0041.drawIndirect(buffer0010, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder1002.drawIndirect(buffer1019, 0);
    render_pass_encoder0050.drawIndirect(buffer0038, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndirect(buffer0053, 0);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    device30.queue.submit([]);
    render_pass_encoder1021.setIndexBuffer(buffer100, "uint16");
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder1002.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0055,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0022);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1046, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder1002.drawIndirect(buffer1028, 0);
    render_pass_encoder1020.drawIndirect(buffer1053, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0024, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.drawIndirect(buffer0041, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1020.draw(3);
    render_pass_encoder0031.end();
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    render_pass_encoder4001.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder1021.drawIndirect(buffer1053, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.setIndexBuffer(buffer008, "uint16");
    compute_pass_encoder1001.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0040.drawIndirect(buffer0048, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1002.drawIndirect(buffer1036, 0);
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1002.drawIndirect(buffer1032, 0);
    render_pass_encoder1001.drawIndirect(buffer1051, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1056, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1056, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1002.drawIndirect(buffer1045, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0011.drawIndirect(buffer0026, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0010.drawIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    device50.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.drawIndirect(buffer1029, 0);
    render_pass_encoder1001.drawIndirect(buffer1033, 0);
    render_pass_encoder0030.drawIndirect(buffer0026, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0056, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0056, 0);
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndirect(buffer0056, 0);
    render_pass_encoder1020.drawIndirect(buffer1056, 0);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1057, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1057, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder1021.drawIndirect(buffer1029, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer0023, 0);
    render_pass_encoder1002.drawIndirect(buffer1018, 0);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1058, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1058, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1021.drawIndirect(buffer1056, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1018, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1021.drawIndirect(buffer1047, 0);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder0040.end();
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder1002.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder4000.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder4000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0020.end();
    device30.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer009, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder0040.drawIndirect(buffer009, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    device10.queue.submit([]);
    compute_pass_encoder0010.end();
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
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1023);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1048, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1000.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0011.drawIndirect(buffer0040, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer0038, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1002.drawIndirect(buffer1015, 0);
    render_pass_encoder0041.drawIndirect(buffer0016, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder4001.end();
    compute_pass_encoder0010.end();
    device30.queue.submit([]);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder4001.draw(3);
    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1062,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1024);
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    device10.queue.submit([]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder4001.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1053, 0);
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    render_pass_encoder0020.drawIndirect(buffer0027, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0035, "uint16");
    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0058,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0023);
    render_pass_encoder1002.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder4001.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1000.drawIndirect(buffer1045, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer0050, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1064,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1025);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1066,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1026);
    render_pass_encoder0020.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0011.drawIndirect(buffer0018, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1043, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0059, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0059, 0);
    render_pass_encoder0050.drawIndirect(buffer0022, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0060, 0);
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1011, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder4000.draw(3);
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    render_pass_encoder0030.end();
    render_pass_encoder1021.drawIndirect(buffer1040, 0);
    render_pass_encoder0020.drawIndirect(buffer0059, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0040.drawIndirect(buffer009, 0);
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.drawIndirect(buffer1032, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0053, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder0031.drawIndirect(buffer0059, 0);
    compute_pass_encoder1001.end();
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder0031.drawIndirect(buffer0029, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0016, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0059, 0);
    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1068,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1027);
    compute_pass_encoder1000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    device50.queue.submit([]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder4001.end();
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    render_pass_encoder1001.drawIndirect(buffer1056, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0043, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder0030.draw(3);
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    device30.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0040.drawIndirect(buffer0040, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0059, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0060, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1058, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0061, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0031.drawIndirect(buffer0061, 0);
    render_pass_encoder1021.drawIndirect(buffer1052, 0);
    device50.queue.submit([]);
    render_pass_encoder1000.end();
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder0040.drawIndirect(buffer002, 0);
    render_pass_encoder1021.drawIndirect(buffer1053, 0);
    render_pass_encoder1001.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1001.setIndexBuffer(buffer1027, "uint16");
    device10.queue.submit([command_buffer102, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1069, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1069, 0);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    render_pass_encoder1002.end();
    render_pass_encoder4000.end();
    render_pass_encoder0030.draw(3);
    device10.queue.submit([command_buffer101, ]);
    device30.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder1002.drawIndirect(buffer1056, 0);
    render_pass_encoder1021.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder4000.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0011.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1056, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder1002.drawIndirect(buffer1053, 0);
    render_pass_encoder4000.end();
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    render_pass_encoder0041.drawIndirect(buffer0061, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1070, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1070, 0);
    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0063,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0024);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1048, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0064, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0064, 0);
    render_pass_encoder1021.drawIndirect(buffer1056, 0);
    render_pass_encoder4000.end();
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder1001.drawIndirect(buffer1057, 0);
    compute_pass_encoder1001.end();
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndirect(buffer0016, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1070, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1002.drawIndirect(buffer1070, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1069, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0065, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1021.drawIndirect(buffer1068, 0);
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
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1028);
    render_pass_encoder0041.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0041.drawIndirect(buffer0053, 0);
    render_pass_encoder0030.drawIndirect(buffer0045, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0033, "uint16");
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0041.drawIndirect(buffer0059, 0);
    render_pass_encoder0031.drawIndirect(buffer0060, 0);
    render_pass_encoder1002.drawIndirect(buffer1056, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder1021.drawIndirect(buffer1069, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder1020.drawIndirect(buffer1042, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0050.drawIndirect(buffer0013, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0031.drawIndirect(buffer0061, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    render_pass_encoder4001.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder0041.drawIndirect(buffer0065, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder1020.drawIndirect(buffer1070, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0050.drawIndirect(buffer0061, 0);
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder1021.drawIndirect(buffer1057, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder0030.drawIndirect(buffer0059, 0);
    render_pass_encoder1002.drawIndirect(buffer1019, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1055, 0);
    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0067,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0025);
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder0010.drawIndirect(buffer0061, 0);
    render_pass_encoder4000.draw(3);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0037, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1002.drawIndirect(buffer1020, 0);
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1057, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0031.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder1021.drawIndirect(buffer1025, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder0041.drawIndirect(buffer0061, 0);
    render_pass_encoder0031.drawIndirect(buffer0053, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder4001.setIndexBuffer(buffer400, "uint16");
    compute_pass_encoder0000.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0030.drawIndirect(buffer0059, 0);
    render_pass_encoder4000.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1020, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.draw(3);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0056, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0050.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0050.drawIndirect(buffer0061, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0068, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0068, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1050, 0);
    compute_pass_encoder0000.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder1001.drawIndirect(buffer1070, 0);
    render_pass_encoder0041.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0031.drawIndirect(buffer0061, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4001.drawIndexedIndirect(buffer404, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1038, 0);
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0064, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    render_pass_encoder4001.popDebugGroup();
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1060, 0);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0041, 0);
    render_pass_encoder1001.drawIndirect(buffer1068, 0);
    render_pass_encoder1001.drawIndirect(buffer1040, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1074,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1029);
    render_pass_encoder0031.drawIndirect(buffer0063, 0);
    render_pass_encoder0011.drawIndirect(buffer0053, 0);
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0054, 0);
    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0070,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0026);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    render_pass_encoder1000.drawIndirect(buffer1059, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1075, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1075, 0);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndirect(buffer0064, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1001.drawIndirect(buffer1070, 0);
    render_pass_encoder0050.drawIndirect(buffer0064, 0);
    device40.queue.submit([]);
    render_pass_encoder4001.drawIndirect(buffer401, 0);
    render_pass_encoder0011.drawIndirect(buffer0056, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0031.drawIndirect(buffer0032, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1042, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder0040.draw(3);
    compute_pass_encoder1020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    device00.queue.submit([]);
    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1077,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1030);
    render_pass_encoder0050.drawIndexedIndirect(buffer0017, 0);
    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1079,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1031);
    render_pass_encoder1020.drawIndexedIndirect(buffer1048, 0);
    device30.queue.submit([]);
    render_pass_encoder1002.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder0010.drawIndexedIndirect(buffer0064, 0);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0030, 0);
    render_pass_encoder1021.drawIndirect(buffer1070, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0061, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder0041.drawIndirect(buffer0050, 0);
    render_pass_encoder1001.drawIndirect(buffer1078, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1080, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1080, 0);
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder1001.drawIndirect(buffer1070, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1069, 0);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0062, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder4001.drawIndirect(buffer400, 0);
    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0072,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0027);
    render_pass_encoder1002.drawIndirect(buffer1040, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder4001.drawIndexedIndirect(buffer401, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder1002.drawIndirect(buffer106, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder1002.drawIndirect(buffer1019, 0);
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0031.drawIndirect(buffer009, 0);
    compute_pass_encoder1001.end();
    render_pass_encoder4001.drawIndirect(buffer403, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1061, 0);
    render_pass_encoder0020.drawIndirect(buffer0064, 0);
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0022, "uint16");
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1081, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1081, 0);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1082, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1082, 0);
    render_pass_encoder0040.drawIndirect(buffer0068, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1020.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder0041.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder1002.draw(3);
    render_pass_encoder1021.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0073, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0073, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0017, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder4001.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    compute_pass_encoder1001.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0053, 0);
    device40.queue.submit([]);
    render_pass_encoder1002.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0053, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0030.drawIndirect(buffer0059, 0);
    render_pass_encoder0031.drawIndirect(buffer0033, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1046, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
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
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1032);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1085, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1085, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1070, 0);
    device50.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1000.drawIndirect(buffer1073, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0031.drawIndirect(buffer0059, 0);
    render_pass_encoder1000.drawIndirect(buffer1033, 0);
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0058, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1002.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1020.drawIndirect(buffer1082, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0040.drawIndirect(buffer005, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder0050.drawIndirect(buffer008, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0065, 0);
    render_pass_encoder0031.drawIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1081, 0);
    device00.queue.submit([command_buffer003, ]);
    device40.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0050, 0);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0068, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer004, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1026, 0);
    device40.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder1021.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1000.drawIndirect(buffer1081, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder1002.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0011.endOcclusionQuery()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder4001.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder0031.drawIndirect(buffer0038, 0);
    render_pass_encoder0050.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndirect(buffer0061, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1001.end();
    render_pass_encoder0010.drawIndirect(buffer0068, 0);
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1028, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1021.end();
    device40.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder0030.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder4001.drawIndirect(buffer400, 0);
    render_pass_encoder0050.drawIndirect(buffer0061, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0061, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.drawIndirect(buffer0056, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1001.drawIndirect(buffer1081, 0);
    device30.queue.submit([]);
    render_pass_encoder1001.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1002.drawIndirect(buffer1019, 0);
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    render_pass_encoder0031.drawIndirect(buffer0050, 0);
    render_pass_encoder1002.drawIndirect(buffer1041, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0011.drawIndirect(buffer0018, 0);
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder1021.drawIndirect(buffer1060, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0050.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0061, 0);
    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0075,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0028);
    render_pass_encoder1002.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1033, 0);
    device10.queue.submit([]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1021.popDebugGroup();
    device50.queue.submit([]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0076, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0076, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0050.drawIndirect(buffer0053, 0);
    render_pass_encoder1021.drawIndirect(buffer1040, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1000.drawIndirect(buffer1069, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    compute_pass_encoder1001.end();
    render_pass_encoder1000.drawIndirect(buffer1033, 0);
    render_pass_encoder0031.drawIndirect(buffer0064, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder4000.draw(3);
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder0050.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1026, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0050.drawIndexed(3);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0010.drawIndirect(buffer0064, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1002.drawIndirect(buffer1040, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1050, 0);
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1020.drawIndirect(buffer1029, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1020.drawIndirect(buffer1070, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0070, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0026, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0011.drawIndirect(buffer0074, 0);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndirect(buffer0023, 0);
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0011.drawIndirect(buffer0059, 0);
    render_pass_encoder0040.drawIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder1001.drawIndirect(buffer1075, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0074, 0);
    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1087,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1033);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1088, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1088, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
    render_pass_encoder0010.drawIndirect(buffer0059, 0);
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    render_pass_encoder0011.drawIndirect(buffer0073, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1081, 0);
    device50.queue.submit([]);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder4000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder0041.drawIndirect(buffer0067, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder4001.end();
    render_pass_encoder1020.drawIndirect(buffer1081, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1085, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0041.drawIndirect(buffer0050, 0);
    render_pass_encoder1002.drawIndirect(buffer1057, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0062, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder1001.drawIndirect(buffer105, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0064, 0);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1089, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1089, 0);
    render_pass_encoder0010.drawIndirect(buffer0048, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0010.drawIndirect(buffer0064, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer005, 0);
    device30.queue.submit([]);
    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0078,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0029);
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0040.drawIndirect(buffer0059, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder0010.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder1001.drawIndirect(buffer1057, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder1002.drawIndirect(buffer1033, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0060, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0027, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1067, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1089, 0);
    render_pass_encoder0031.drawIndirect(buffer0054, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0020.drawIndirect(buffer0065, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder0041.drawIndirect(buffer0075, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1056, 0);
    device10.queue.submit([]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer0053, 0);
    compute_pass_encoder1001.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1020.drawIndirect(buffer1048, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1001.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1068, 0);
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    render_pass_encoder0020.drawIndirect(buffer0053, 0);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder1020.drawIndirect(buffer1080, 0);
    render_pass_encoder4001.end();
    render_pass_encoder1002.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1001.drawIndirect(buffer1075, 0);
    render_pass_encoder1002.drawIndirect(buffer1069, 0);
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    render_pass_encoder0031.drawIndirect(buffer0064, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder4000.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder0040.drawIndirect(buffer0064, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0059, 0);
    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0080,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0030);
    render_pass_encoder1001.draw(3);
    render_pass_encoder4001.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder1002.drawIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndirect(buffer1083, 0);
    render_pass_encoder0010.drawIndirect(buffer002, 0);
    render_pass_encoder1002.drawIndirect(buffer103, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1080, 0);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1089, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1002.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer000, ]);
    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1091,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1034);
    render_pass_encoder0031.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1080, 0);
    device40.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1001.drawIndirect(buffer1050, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0014, "uint16");
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0075, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0040.drawIndirect(buffer0073, 0);
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0031.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0081, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0081, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0041.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1063, 0);
    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1035 = device10.createBindGroup({
        label: "bind_group1035",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1093,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1035);
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0048, 0);
    device30.queue.submit([]);
    render_pass_encoder1002.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1085, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0031.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0010.drawIndirect(buffer0064, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1075, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0083,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0031);
    render_pass_encoder1021.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder1001.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder1001.drawIndirect(buffer1046, 0);
    render_pass_encoder0031.drawIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0082, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0031.drawIndirect(buffer0073, 0);
    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0085,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0032);
    render_pass_encoder0050.drawIndexedIndirect(buffer0070, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0086, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0086, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder4001.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.end();
    render_pass_encoder0010.drawIndirect(buffer0073, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0030.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder1021.drawIndirect(buffer1040, 0);
    render_pass_encoder0050.drawIndirect(buffer0066, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0010.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndirect(buffer0073, 0);
    render_pass_encoder1020.drawIndirect(buffer1062, 0);
    render_pass_encoder4001.drawIndirect(buffer403, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0088,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0033);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0010.drawIndirect(buffer0059, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0059, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0023, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder4000.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder4000.draw(3);
    render_pass_encoder0031.drawIndirect(buffer000, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1020.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1019, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1094, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1094, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder4001.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer400, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder0041.drawIndirect(buffer0087, 0);
    render_pass_encoder0031.drawIndirect(buffer0070, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4001.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndirect(buffer0068, 0);
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
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1036);
    render_pass_encoder0030.drawIndirect(buffer0056, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder0031.drawIndirect(buffer0050, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0027, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1091, "uint16");
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer1080, 0);
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
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1037);
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
}