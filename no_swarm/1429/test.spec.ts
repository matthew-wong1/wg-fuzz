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
    const array0 = new Float32Array([-0.5, 0.25, 0.75, -0.75, 0.25, -0.25, 0.75, -1.0, 0.25, 0.0, -0.25, 0.75, -0.5, 0.25, -0.75, -1.0, 0.0, 0.0, -1.0, -0.75, -1.0, -0.25, 0.25, -0.75, -0.5, -1.0, -1.0, 1.0, -0.5, 0.75, -0.5, 0.25, 0.75, 0.0, 0.25, 0.25, 0.0, -1.0, -0.75, -0.75, -0.5, 0.5, 0.75, -0.75, -0.5, 1.0, -0.5, 0.0, 0.25, 0.75, 0.5, -0.75, 0.75, 0.25, 0.75, 1.0, 0.75, -0.75, 1.0, -1.0, 1.0, 0.5, 1.0, 1.0, -1.0, 0.5, -0.5, -1.0, -0.5, -0.25, 0.25, 0.0, -0.5, -0.75, -0.25, 1.0, 0.0, 0.25, 0.5, 0.25, -1.0, -0.5, 0.0, 0.5, 0.0, 0.5, -1.0, 0.5, 0.0, -0.25, 1.0, -1.0, 0.25, -0.5, 0.5, 0.5, 0.75, -0.25, -0.25, 0.5, ]);
    
    
    
    const array1 = new Float32Array([0.75, 0.75, -0.75, 0.5, -0.25, -0.75, 0.0, 0.5, -0.75, 1.0, 0.0, -0.25, -1.0, 0.5, 0.75, -0.5, -1.0, -0.5, 0.0, 1.0, 0.25, -1.0, 0.5, 0.25, 1.0, -1.0, 0.5, -0.75, 0.25, -1.0, -1.0, 0.0, -0.75, 0.5, -0.5, -0.5, 0.75, -0.75, -0.75, -0.25, 0.0, 0.25, -0.5, 0.0, 0.0, 0.5, 0.5, 1.0, 0.25, -0.75, 0.75, -0.25, -0.75, -0.25, 1.0, 1.0, -0.5, -1.0, -0.25, 1.0, 0.75, -0.75, -0.75, 0.25, 0.5, 0.25, -0.25, 0.5, 1.0, 0.25, -0.25, 0.5, -0.5, -0.25, 0.0, 0.5, -0.5, -0.5, 0.25, -0.5, 1.0, 0.0, -0.5, -0.5, 0.25, 0.5, -0.75, 0.75, -0.75, -0.75, -0.5, -0.25, -0.75, -1.0, 0.5, 1.0, 0.0, -1.0, 0.25, 1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const array2 = new Float32Array([1.0, -0.5, -0.5, 0.5, 0.25, 0.0, -0.25, 0.25, -1.0, -0.25, 1.0, 1.0, 0.5, -0.75, -0.25, 0.5, 1.0, 0.0, 0.75, 0.0, 0.75, -0.75, -0.5, -0.75, 1.0, 0.0, -0.25, 0.75, -0.75, -0.75, 0.25, 0.25, -0.75, -0.25, -0.5, -0.25, 0.75, -1.0, 1.0, 0.25, -0.5, -0.75, 0.25, 1.0, 0.0, 0.5, -1.0, 0.5, 0.25, 0.0, -0.5, 0.0, -1.0, 0.25, -1.0, 1.0, -1.0, 0.5, -1.0, 0.0, -0.25, 0.0, 0.5, -0.75, 0.5, -0.5, 0.5, 0.25, 0.75, -0.75, 0.75, 0.75, 0.0, 1.0, -1.0, 0.0, 0.0, 0.25, 0.5, 1.0, -0.75, 0.25, 0.5, -0.75, 1.0, 0.0, 0.75, 0.25, 1.0, -0.75, -0.75, 0.25, 0.5, -0.75, -0.25, 0.0, 0.5, 0.75, 0.25, 0.25, ]);
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
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    device00.pushErrorScope("out-of-memory");
    
    
    const array3 = new Float32Array([0.75, -1.0, -1.0, 0.75, -0.25, -0.75, -1.0, -0.75, -0.5, 0.25, 0.25, -0.5, 0.5, 1.0, -0.25, -0.75, 0.25, 0.75, 0.75, -0.5, -1.0, 0.25, -0.75, 0.0, 0.75, 1.0, 0.75, 1.0, 0.25, 0.5, 1.0, 0.75, 0.5, 0.75, 0.25, -0.75, 0.0, 0.5, -0.5, 0.5, 0.5, 0.5, 0.0, -0.25, 0.25, 0.0, 0.5, -1.0, -0.25, 1.0, -0.25, -0.75, 1.0, -1.0, 1.0, 0.0, 0.0, -0.5, 0.0, 0.75, -0.75, -0.25, 0.0, -1.0, 0.25, -1.0, 1.0, 1.0, 0.25, -0.5, -1.0, 0.0, -1.0, 0.5, -0.5, 0.0, 0.75, -0.5, -0.25, 0.5, 1.0, 0.25, 0.0, 1.0, 0.25, 1.0, 0.75, -0.75, 0.25, 0.0, 1.0, -1.0, -1.0, 0.25, -0.75, 0.75, 0.5, 1.0, -1.0, -1.0, ]);
    
    
    texture000.destroy();
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    texture001.destroy();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    device00.pushErrorScope("validation");
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array4 = new Float32Array([0.75, -1.0, 0.5, 0.75, 0.25, 1.0, 0.0, 1.0, -0.5, -0.25, 0.25, -1.0, 0.25, 0.25, 0.0, 1.0, 0.25, 0.5, 0.0, 0.75, -0.5, 0.5, 1.0, -1.0, 0.25, -1.0, -0.5, 0.5, -0.75, 0.5, 0.25, 0.5, 0.75, 0.25, -0.5, -0.5, -0.75, -0.75, 1.0, 0.25, 1.0, -0.25, 0.75, 1.0, 0.5, -0.75, -0.75, 1.0, -1.0, 0.5, -0.25, -1.0, -0.25, 0.25, 1.0, 0.25, 0.75, 0.25, 0.75, 0.5, -1.0, -0.5, -0.75, 0.5, -0.25, -0.75, 1.0, 0.75, -1.0, -0.75, -0.25, -0.25, 0.5, 0.25, -0.5, -0.75, -0.25, -1.0, -1.0, -0.25, -0.25, 0.25, 0.5, 0.5, -1.0, -0.5, 1.0, 0.25, 0.25, -0.25, -1.0, -0.75, 0.75, 0.25, -1.0, -0.5, 0.5, 1.0, 0.25, -0.5, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    query100.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device10.queue.submit([]);
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder0000.popDebugGroup()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query000.destroy()
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
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
    const array5 = new Float32Array([0.25, -0.75, 1.0, 0.5, -0.5, 0.75, 1.0, -0.5, 0.0, 0.5, 1.0, -1.0, 0.5, 0.5, -1.0, 0.75, -0.75, 1.0, 0.75, 1.0, 0.75, 0.0, 0.25, -0.5, 0.0, 1.0, 1.0, 0.25, -0.75, 0.25, -0.75, 0.25, -1.0, 0.25, 0.5, -1.0, 0.25, 0.0, 0.25, -0.5, 0.0, -0.5, -1.0, -1.0, 0.25, 1.0, 0.5, 0.0, -0.75, 0.5, 1.0, -1.0, -1.0, 0.5, 0.0, 0.75, -1.0, -1.0, 0.5, 0.75, 0.75, -0.5, 0.75, -0.5, -1.0, -0.5, -0.75, -0.25, 0.75, -0.5, -0.5, 0.75, 0.0, -0.5, -0.75, -0.5, -0.75, 1.0, 0.75, -0.25, -0.5, -0.25, -0.75, 0.25, 0.5, 1.0, 0.5, -1.0, -0.75, 1.0, 0.0, -1.0, 1.0, 0.75, -0.5, -1.0, -0.5, -0.5, -1.0, 0.75, ]);
    query001.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device10.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    texture001.destroy();
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    compute_pass_encoder0011.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    
    query000.destroy()
    device20.pushErrorScope("validation");
    query200.destroy()
    render_pass_encoder0010.executeBundles([])
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0011.setPipeline(compute_pipeline000);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    query001.destroy()
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    query001.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_pass_encoder0010.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    compute_pass_encoder0010.setPipeline(compute_pipeline002);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    query002.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    command_encoder004.insertDebugMarker("mymarker");
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    buffer001.destroy()
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0010.setStencilReference(1);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder002.insertDebugMarker("mymarker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0030.executeBundles([])
    render_bundle_encoder100.insertDebugMarker("marker");
    query001.destroy()
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.executeBundles([])
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
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
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    query200.destroy()
    device00.pushErrorScope("validation");
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    render_pass_encoder0030.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    buffer200.destroy()
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    
    render_pass_encoder0040.setPipeline(render_pipeline000);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    query001.destroy()
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder100.setPipeline(render_pipeline102);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    query200.destroy()
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer003.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0041.executeBundles([])
    
    
    render_pass_encoder0041.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query202.destroy()
    texture201.destroy();
    render_bundle_encoder001.popDebugGroup();
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0041.setPipeline(render_pipeline000);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device20.queue.submit([command_buffer200, ]);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query000.destroy()
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0010.setStencilReference(1);
    buffer004.destroy()
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0041.setStencilReference(1);
    render_pass_encoder0041.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0010.setPipeline(render_pipeline000);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const array6 = new Float32Array([-0.75, 0.25, 1.0, 0.25, 0.75, -0.25, 0.25, 1.0, -0.75, 1.0, 0.5, 1.0, -0.5, -1.0, -0.25, 0.5, -0.5, 0.75, -1.0, 0.5, -0.5, -0.25, 1.0, -0.25, -0.5, -0.75, 0.75, 0.0, 0.75, 0.0, 0.5, 0.25, -0.5, -0.5, -1.0, -0.75, -0.25, 0.5, 0.5, -0.25, -0.75, -1.0, -0.25, -0.5, 0.75, 0.0, 0.5, -0.5, 0.0, -0.75, 0.25, 0.5, 1.0, 0.25, 0.75, 0.5, -0.25, -0.75, 0.25, -0.75, 0.5, -0.25, -0.75, -0.25, -0.5, 0.75, 0.0, 0.0, -0.25, 1.0, -0.75, 1.0, -0.5, -0.5, 0.5, 0.0, -1.0, -0.25, -0.75, 0.75, 0.0, -1.0, 1.0, 0.5, 1.0, -1.0, -0.5, -1.0, 0.5, -1.0, 0.75, -0.25, 1.0, 0.75, 0.75, 0.25, 1.0, -0.75, -0.25, 0.75, ]);
    query200.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0020.setPipeline(render_pipeline001);
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    render_pass_encoder0060.setStencilReference(1);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder0030.setStencilReference(1);
    
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group001);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
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
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group002);
    
    query001.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder002.copyBufferToBuffer(
        buffer006,
        0,
        buffer000,
        0,
        400
    );
    render_pass_encoder0030.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    render_pass_encoder0060.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
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

    render_bundle_encoder001.setBindGroup(0, bind_group003);
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    render_pass_encoder0010.setStencilReference(1);
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0041.pushDebugGroup("group_marker");
    
    
    query002.destroy()
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setPipeline(render_pipeline001);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.popDebugGroup();
    command_encoder007.clearBuffer(buffer000);
    render_pass_encoder0060.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    buffer201.destroy()
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    buffer0010.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder0060.executeBundles([])
    command_encoder007.copyBufferToBuffer(
        buffer009,
        0,
        buffer000,
        0,
        400
    );
    render_pass_encoder0040.setVertexBuffer(0, buffer003);
    device20.pushErrorScope("internal");
    compute_pass_encoder0010.end();
    render_pass_encoder0050.executeBundles([])
    
    render_pass_encoder0041.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const command_buffer007 = command_encoder007.finish();
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0060.executeBundles([])
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group004);
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0041.setStencilReference(1);
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.setVertexBuffer(0, buffer002);
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.insertDebugMarker("marker");
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
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group005);
    render_pass_encoder0041.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    query000.destroy()
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    texture200.destroy();
    render_pass_encoder0041.insertDebugMarker("marker");
    
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder0010.pushDebugGroup("group_marker");
    query201.destroy()
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0030.popDebugGroup();
    
    buffer007.destroy()
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0050.setPipeline(render_pipeline001);
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    buffer202.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0060.executeBundles([render_bundle_encoder000, ])
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setPipeline(render_pipeline000);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group006);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    command_encoder001.popDebugGroup()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    const render_pass_encoder0061 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0060.setPipeline(render_pipeline002);
    
    
    device00.queue.writeBuffer(buffer008, 0, array6, 0, array6.length);
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group007);
    device00.queue.writeBuffer(buffer009, 0, array1, 0, array1.length);
    
    render_pass_encoder0041.setStencilReference(1);
    render_pass_encoder0061.setStencilReference(1);
    render_pass_encoder0041.drawIndexedIndirect(buffer0015, 0);
    buffer009.destroy()
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0061.setStencilReference(1);
    render_bundle_encoder001.popDebugGroup();
    command_encoder006.copyBufferToBuffer(
        buffer000,
        0,
        buffer0016,
        0,
        400
    );
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
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
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    render_bundle_encoder002.setPipeline(render_pipeline001);
    render_pass_encoder0040.draw(3);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder001.popDebugGroup();
    buffer000.destroy()
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0061.pushDebugGroup("group_marker");
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    render_pass_encoder0061.setStencilReference(1);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer0012,
        0
    )
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
    render_pass_encoder0011.executeBundles([])
    device00.queue.writeBuffer(buffer0012, 0, array6, 0, array6.length);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0080.setPipeline(render_pipeline001);
    compute_pass_encoder0050.setPipeline(compute_pipeline0012);
    
    render_pass_encoder0060.popDebugGroup();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query002
    });
    query301.destroy()
    render_pass_encoder0031.setPipeline(render_pipeline001);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline0012.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group008);
    render_pass_encoder0011.setPipeline(render_pipeline001);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0061.setPipeline(render_pipeline000);
    render_pass_encoder0040.drawIndirect(buffer002, 0);
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group009);
    render_pass_encoder0021.setVertexBuffer(0, buffer003);
    render_pass_encoder0020.setVertexBuffer(0, buffer005);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0021.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group0010);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0010.popDebugGroup();
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    render_pass_encoder0080.setBindGroup(0, bind_group0011);
    compute_pass_encoder0011.dispatchWorkgroups(100);
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group0012);
    render_pass_encoder0050.setVertexBuffer(0, buffer003);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0029, 0);
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
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group0014);
    render_pass_encoder0021.end();
    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0035,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0015);
    render_pass_encoder0060.setVertexBuffer(0, buffer0021);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.setVertexBuffer(0, buffer0034);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0029, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0080.setVertexBuffer(0, buffer003);
    render_pass_encoder0040.end();
    render_pass_encoder0080.drawIndirect(buffer0019, 0);
    render_pass_encoder0030.drawIndirect(buffer009, 0);
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
    
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group0016);
    render_pass_encoder0031.setVertexBuffer(0, buffer0025);
    render_pass_encoder0031.drawIndirect(buffer0010, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0011.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0041.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0011.setVertexBuffer(0, buffer0018);
    compute_pass_encoder0011.end();
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    const command_buffer005 = command_encoder005.finish();
    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0039,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group0017);
    render_pass_encoder0041.drawIndexedIndirect(buffer0038, 0);
    device30.queue.submit([]);
    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0041,
                },
            },
        ],
    });

    render_pass_encoder0061.setBindGroup(0, bind_group0018);
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0010.setVertexBuffer(0, buffer0015);
    render_pass_encoder0010.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0060.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0011.dispatchWorkgroups(100);
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline0012.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0019);
    render_pass_encoder0050.popDebugGroup();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0044, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0044, 0);
    render_pass_encoder0061.setVertexBuffer(0, buffer0014);
    render_pass_encoder0031.drawIndirect(buffer0035, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0061.end();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0041.drawIndexed(3);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0080.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0026, 0);
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0031.drawIndirect(buffer0039, 0);
    render_pass_encoder0050.end();
    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
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
                    buffer: buffer0045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0046,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0020);
    render_pass_encoder0010.end();
    render_pass_encoder0061.popDebugGroup();
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0060.setIndexBuffer(buffer0044, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0080.drawIndirect(buffer0044, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0021, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0021.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0030, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0061.setIndexBuffer(buffer0034, "uint16");
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0011.end();
    const command_buffer008 = command_encoder008.finish();
    render_pass_encoder0080.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0040, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer004, 0);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0041.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder0050.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0080.drawIndexedIndirect(buffer0044, 0);
    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0048,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0021);
    render_pass_encoder0031.setIndexBuffer(buffer0034, "uint16");
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    command_encoder003.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0016, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer006, command_buffer007, command_buffer008, ]);
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0080.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndirect(buffer0020, 0);
    command_encoder004.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0031.drawIndirect(buffer003, 0);
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.end();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0049, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0049, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0035, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer0047, "uint16");
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0049, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0080.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0080.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0011.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0080.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.draw(3);
    device20.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0011.drawIndirect(buffer008, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0030, "uint16");
    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0051,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0022);
    render_pass_encoder0060.end();
    render_pass_encoder0040.setIndexBuffer(buffer0015, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0011.drawIndirect(buffer0049, 0);
    device20.queue.submit([]);
    render_pass_encoder0080.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0053,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0023);
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer0011, "uint16");
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer007, 0);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0031.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0028, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0080.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0031.draw(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0054, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0011.drawIndirect(buffer0022, 0);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0021.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    render_pass_encoder0061.endOcclusionQuery()
    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0056,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0024);
    render_pass_encoder0060.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    render_pass_encoder0030.popDebugGroup();
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
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0025);
    render_pass_encoder0041.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0054, 0);
    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
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
                    buffer: buffer0059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0060,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0026);
    render_pass_encoder0041.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0046, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0061, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0080.drawIndexedIndirect(buffer0040, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0011.drawIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndirect(buffer0013, 0);
    render_pass_encoder0031.drawIndirect(buffer0049, 0);
    render_pass_encoder0061.drawIndirect(buffer0044, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder0061.drawIndirect(buffer0049, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    render_pass_encoder0021.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0080.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer008, ]);
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0011.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0061.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0080.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0080.drawIndirect(buffer0021, 0);
    compute_pass_encoder0011.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0062, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0062, 0);
    render_pass_encoder0060.drawIndirect(buffer0029, 0);
    render_pass_encoder0011.end();
    compute_pass_encoder0050.end();
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0080.setIndexBuffer(buffer0029, "uint16");
    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0064,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0027);
    render_pass_encoder0020.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0040.draw(3);
    render_pass_encoder0031.end();
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0050.end();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0065, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0065, 0);
    render_pass_encoder0030.drawIndirect(buffer0054, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0011.drawIndirect(buffer0012, 0);
    render_pass_encoder0031.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0061.endOcclusionQuery()
    render_pass_encoder0080.drawIndirect(buffer002, 0);
    render_pass_encoder0061.drawIndirect(buffer0023, 0);
    render_pass_encoder0010.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0011.end();
    render_pass_encoder0031.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer004, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0049, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0041.drawIndirect(buffer0011, 0);
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0022, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer0029, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0063, "uint16");
    compute_pass_encoder0011.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0021.drawIndirect(buffer008, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0080.drawIndirect(buffer0062, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0062, 0);
    device00.queue.submit([command_buffer001, command_buffer007, command_buffer008, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0080.drawIndexed(3);
    render_pass_encoder0061.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0065, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0050.drawIndirect(buffer0061, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0061.popDebugGroup();
    compute_pass_encoder0011.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0080.drawIndirect(buffer0062, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0049, 0);
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
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0028);
    render_pass_encoder0040.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder0080.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0010.draw(3);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0061.drawIndirect(buffer0058, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0068, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0068, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0017, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0069, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0069, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0060.end();
    render_pass_encoder0080.drawIndirect(buffer0011, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0080.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0070, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0070, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0050.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0042, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0011.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0061.drawIndirect(buffer006, 0);
    render_pass_encoder0061.drawIndirect(buffer0068, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndirect(buffer0068, 0);
    render_pass_encoder0010.drawIndirect(buffer0070, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0070, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0063, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0061.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0050.end();
    render_pass_encoder0031.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0027, "uint16");
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
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0029);
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0071, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0070, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0031.drawIndirect(buffer0029, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0060.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0021.drawIndirect(buffer0062, 0);
    render_pass_encoder0020.drawIndirect(buffer0047, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0061.drawIndirect(buffer0028, 0);
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0054, 0);
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
    render_pass_encoder0031.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0020.drawIndirect(buffer0065, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0080.drawIndirect(buffer0065, 0);
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
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0030);
    render_pass_encoder0011.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0049, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0061.drawIndirect(buffer0056, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0065, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0038, 0);
    compute_pass_encoder0050.end();
    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0077,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0031);
    render_pass_encoder0021.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0070, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0011.drawIndirect(buffer0061, 0);
    render_pass_encoder0041.end();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0078, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0078, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0020.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0070, 0);
    device20.queue.submit([command_buffer200, ]);
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
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0032);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0080.drawIndirect(buffer003, 0);
    render_pass_encoder0010.drawIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0062, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0030.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0061.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0050.drawIndirect(buffer0080, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0061.drawIndirect(buffer0068, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0053, "uint16");
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
    render_pass_encoder0050.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0061, 0);
    render_pass_encoder0060.drawIndirect(buffer0065, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0080.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0080.drawIndirect(buffer009, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0080.drawIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0061.drawIndirect(buffer0048, 0);
    render_pass_encoder0080.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0041.drawIndirect(buffer0033, 0);
    render_pass_encoder0021.end();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0082, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0082, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0083, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0083, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0040, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    device00.queue.submit([]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0084, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0084, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0080.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0050.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0061.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0040.end();
    device30.queue.submit([]);
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0085, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0085, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0048, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0014, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0031.drawIndirect(buffer0069, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0075, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0044, 0);
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
    device00.queue.submit([command_buffer008, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.setIndexBuffer(buffer008, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndirect(buffer0080, 0);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer003, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0010.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0011.drawIndirect(buffer0062, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0080.drawIndirect(buffer0082, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0030.drawIndirect(buffer0066, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder0011.draw(3);
    render_pass_encoder0080.drawIndirect(buffer0078, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndirect(buffer0061, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0050, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0060.drawIndirect(buffer0084, 0);
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
        layout: compute_pipeline0012.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0033);
    render_pass_encoder0030.drawIndirect(buffer0083, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0080.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndirect(buffer0068, 0);
    render_pass_encoder0080.drawIndirect(buffer0054, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0056, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0075, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0081, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0080.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0060.drawIndirect(buffer0086, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0083, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer0085, 0);
    render_pass_encoder0061.drawIndirect(buffer0013, 0);
    render_pass_encoder0061.setIndexBuffer(buffer002, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0061.drawIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0061.drawIndirect(buffer0086, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    render_pass_encoder0011.end();
    compute_pass_encoder0010.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0089, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0089, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0050.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0065, 0);
    render_pass_encoder0060.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0091,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0034);
    render_pass_encoder0030.drawIndirect(buffer0049, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0092, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0092, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0061.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0075, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0068, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0062, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0050.drawIndirect(buffer0089, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.setIndexBuffer(buffer0028, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer0091, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0044, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0060.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0094,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0035);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0078, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0089, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0085, 0);
    render_pass_encoder0080.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer005, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0061.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer004, command_buffer007, ]);
    render_pass_encoder0061.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0041.drawIndirect(buffer0062, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0089, 0);
    render_pass_encoder0030.drawIndirect(buffer0061, 0);
    render_pass_encoder0060.drawIndirect(buffer0054, 0);
    device30.queue.submit([]);
    render_pass_encoder0061.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0031.setIndexBuffer(buffer0085, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0041.drawIndirect(buffer0068, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0041.drawIndirect(buffer0037, 0);
    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0096,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0036);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0090, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0084, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0080.end();
    render_pass_encoder0080.setIndexBuffer(buffer0096, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0093, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer005, command_buffer007, ]);
    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0098,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0037);
    render_pass_encoder0061.drawIndirect(buffer0085, 0);
    render_pass_encoder0030.drawIndirect(buffer0049, 0);
    render_pass_encoder0050.drawIndirect(buffer0023, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0031.drawIndirect(buffer0081, 0);
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0049, "uint16");
    device00.queue.submit([command_buffer004, command_buffer008, ]);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00100,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0038);
    render_pass_encoder0061.drawIndirect(buffer0069, 0);
    render_pass_encoder0010.drawIndirect(buffer0070, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0060.drawIndirect(buffer0089, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0061.setIndexBuffer(buffer0082, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0080.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder0010.draw(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0060.drawIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0084, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0021.drawIndirect(buffer0062, 0);
    render_pass_encoder0080.drawIndirect(buffer0070, 0);
    render_pass_encoder0040.drawIndirect(buffer0098, 0);
    render_pass_encoder0040.drawIndirect(buffer0073, 0);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0080.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0061.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0060.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0094, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0084, 0);
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0075, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0060.drawIndirect(buffer0083, 0);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    render_pass_encoder0011.end();
    render_pass_encoder0040.drawIndirect(buffer0073, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0061.setIndexBuffer(buffer0079, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    render_pass_encoder0041.drawIndirect(buffer0042, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer0039, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder0021.drawIndirect(buffer002, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndirect(buffer009, 0);
    compute_pass_encoder0050.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0027, 0);
    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00102,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0039);
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0040.drawIndirect(buffer0082, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0080.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0011.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0031.drawIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0040.drawIndirect(buffer0083, 0);
    render_pass_encoder0041.drawIndirect(buffer0073, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0080.drawIndirect(buffer0049, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer006, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0080.popDebugGroup();
    const buffer00103 = device00.createBuffer({
        label: "buffer00103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00104 = device00.createBuffer({
        label: "buffer00104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0040 = device00.createBindGroup({
        label: "bind_group0040",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00104,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0040);
    render_pass_encoder0050.drawIndirect(buffer0080, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0049, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0061.setIndexBuffer(buffer0096, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0041.setIndexBuffer(buffer0085, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0049, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0061.drawIndirect(buffer0038, 0);
    render_pass_encoder0011.drawIndirect(buffer0085, 0);
    render_pass_encoder0010.drawIndirect(buffer0071, 0);
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0061.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0074, 0);
    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00106 = device00.createBuffer({
        label: "buffer00106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00106,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0041);
    render_pass_encoder0040.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0030.end();
    render_pass_encoder0080.drawIndirect(buffer0073, 0);
    render_pass_encoder0060.drawIndirect(buffer0076, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0086, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer0086, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0070, 0);
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0014, 0);
    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00108,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0042);
    render_pass_encoder0080.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0080.drawIndirect(buffer0055, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer0081, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0080.setIndexBuffer(buffer0026, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0031.drawIndirect(buffer003, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0056, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0011.drawIndirect(buffer0067, 0);
    render_pass_encoder0060.drawIndirect(buffer0092, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0084, 0);
    render_pass_encoder0011.drawIndirect(buffer0083, 0);
    render_pass_encoder0041.drawIndirect(buffer0081, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0011.drawIndirect(buffer00101, 0);
    render_pass_encoder0040.drawIndirect(buffer0092, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0087, "uint16");
    const buffer00109 = device00.createBuffer({
        label: "buffer00109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
        layout: compute_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00110,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0043);
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0080.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0029, 0);
    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0044 = device00.createBindGroup({
        label: "bind_group0044",
        layout: compute_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00112,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0044);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0031.end();
    render_pass_encoder0080.drawIndirect(buffer003, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0080.drawIndirect(buffer0068, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0061.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0011.drawIndirect(buffer0068, 0);
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndirect(buffer0082, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0060.end();
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0062, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0081, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0081, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0080.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0080.drawIndirect(buffer0082, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer00101, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0086, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0086, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0082, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0021.drawIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0021.drawIndirect(buffer0092, 0);
    render_pass_encoder0021.drawIndirect(buffer0065, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00106, 0);
    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00114,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0045);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.drawIndirect(buffer0063, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0094, 0);
    device00.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0082, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0050.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0080.drawIndirect(buffer0062, 0);
    device30.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer0099, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0040.drawIndirect(buffer0062, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0069, 0);
    const buffer00115 = device00.createBuffer({
        label: "buffer00115",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00116 = device00.createBuffer({
        label: "buffer00116",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0046 = device00.createBindGroup({
        label: "bind_group0046",
        layout: compute_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00115,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00116,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0046);
    render_pass_encoder0031.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0020.drawIndirect(buffer0083, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0065, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0083, 0);
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    device30.queue.submit([]);
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer0085, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00115, "uint16");
    render_pass_encoder0080.drawIndirect(buffer0066, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0082, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0061.drawIndirect(buffer0081, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.end();
    device00.queue.submit([command_buffer001, command_buffer007, ]);
    render_pass_encoder0010.drawIndirect(buffer0081, 0);
    render_pass_encoder0041.drawIndirect(buffer0083, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0050.drawIndirect(buffer0074, 0);
    render_pass_encoder0010.drawIndirect(buffer0092, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0091, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0041.drawIndirect(buffer0052, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    render_pass_encoder0050.drawIndirect(buffer0085, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0061.drawIndirect(buffer0094, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0011.drawIndirect(buffer0080, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0061.drawIndirect(buffer00116, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0030.drawIndirect(buffer0049, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0078, 0);
    const buffer00117 = device00.createBuffer({
        label: "buffer00117",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00118 = device00.createBuffer({
        label: "buffer00118",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00117,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00118,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0047);
    device30.queue.submit([]);
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndirect(buffer0092, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    render_pass_encoder0010.drawIndirect(buffer0076, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.end();
    const buffer00119 = device00.createBuffer({
        label: "buffer00119",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00120 = device00.createBuffer({
        label: "buffer00120",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0048 = device00.createBindGroup({
        label: "bind_group0048",
        layout: compute_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00119,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00120,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0048);
    render_pass_encoder0040.drawIndirect(buffer0086, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.drawIndirect(buffer0020, 0);
    render_pass_encoder0010.drawIndirect(buffer00111, 0);
    render_pass_encoder0031.drawIndirect(buffer0082, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0069, 0);
    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00122 = device00.createBuffer({
        label: "buffer00122",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0049 = device00.createBindGroup({
        label: "bind_group0049",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00121,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00122,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0049);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0030.drawIndirect(buffer0081, 0);
    render_pass_encoder0080.drawIndirect(buffer0070, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0080.drawIndexedIndirect(buffer0034, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00123 = device00.createBuffer({
        label: "buffer00123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00123, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00123, 0);
    device30.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer00123, 0);
    render_pass_encoder0041.drawIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0054, 0);
    compute_pass_encoder0010.end();
    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00125 = device00.createBuffer({
        label: "buffer00125",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0050 = device00.createBindGroup({
        label: "bind_group0050",
        layout: compute_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00125,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0050);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.end();
    render_pass_encoder0050.drawIndirect(buffer0049, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0041.drawIndirect(buffer0083, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0030.drawIndirect(buffer0087, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00126 = device00.createBuffer({
        label: "buffer00126",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00126, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00126, 0);
    render_pass_encoder0080.drawIndirect(buffer0065, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0031.drawIndirect(buffer0073, 0);
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndirect(buffer0083, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00119, "uint16");
    device00.queue.submit([command_buffer003, command_buffer008, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0040.drawIndirect(buffer0049, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0084, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00127 = device00.createBuffer({
        label: "buffer00127",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00127, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00127, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0061.drawIndirect(buffer0086, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0060.drawIndirect(buffer0078, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0080.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.setIndexBuffer(buffer0091, "uint16");
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0080.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0083, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0050.drawIndirect(buffer0078, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0040.drawIndirect(buffer0049, 0);
    render_pass_encoder0050.drawIndirect(buffer0047, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0050.drawIndirect(buffer0062, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00107, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer004, command_buffer005, command_buffer008, ]);
    render_pass_encoder0010.drawIndirect(buffer0023, 0);
    render_pass_encoder0040.drawIndirect(buffer0062, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0080.drawIndirect(buffer0083, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0092, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00108, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0051, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0011.drawIndirect(buffer0037, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0069, 0);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer005, command_buffer006, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0060.drawIndirect(buffer00107, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00110, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0021.drawIndirect(buffer0089, 0);
    render_pass_encoder0020.drawIndirect(buffer0078, 0);
    render_pass_encoder0061.draw(3);
    render_pass_encoder0050.drawIndirect(buffer008, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0093, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0084, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00128 = device00.createBuffer({
        label: "buffer00128",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00128, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00128, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder0010.popDebugGroup();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00129 = device00.createBuffer({
        label: "buffer00129",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00129, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00129, 0);
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0039, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0070, 0);
    device00.queue.submit([command_buffer004, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00130, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00130, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0040.drawIndirect(buffer0062, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer007, command_buffer008, ]);
    render_pass_encoder0060.drawIndirect(buffer0069, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0077, 0);
    render_pass_encoder0061.drawIndirect(buffer0089, 0);
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder0011.end();
    device00.queue.submit([command_buffer001, command_buffer008, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0061.setIndexBuffer(buffer00117, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0092, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0040.drawIndirect(buffer00129, 0);
    render_pass_encoder0020.drawIndirect(buffer0077, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0030.drawIndirect(buffer0062, 0);
    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00132 = device00.createBuffer({
        label: "buffer00132",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0051 = device00.createBindGroup({
        label: "bind_group0051",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00131,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00132,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0051);
    render_pass_encoder0060.drawIndirect(buffer00127, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0086, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0011.end();
    device20.queue.submit([]);
    render_pass_encoder0080.drawIndirect(buffer0029, 0);
    const buffer00133 = device00.createBuffer({
        label: "buffer00133",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00134 = device00.createBuffer({
        label: "buffer00134",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0052 = device00.createBindGroup({
        label: "bind_group0052",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00133,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00134,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0052);
    render_pass_encoder0031.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0051, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00135 = device00.createBuffer({
        label: "buffer00135",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00135, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00135, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder0041.drawIndirect(buffer00126, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0078, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer00109, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0026, "uint16");
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    render_pass_encoder0061.drawIndirect(buffer0069, 0);
    const buffer00136 = device00.createBuffer({
        label: "buffer00136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00137 = device00.createBuffer({
        label: "buffer00137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0053 = device00.createBindGroup({
        label: "bind_group0053",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00137,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0053);
    render_pass_encoder0030.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00105, 0);
    render_pass_encoder0021.drawIndirect(buffer00127, 0);
    render_pass_encoder0010.drawIndirect(buffer0073, 0);
    const buffer00138 = device00.createBuffer({
        label: "buffer00138",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00139 = device00.createBuffer({
        label: "buffer00139",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0054 = device00.createBindGroup({
        label: "bind_group0054",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00138,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00139,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0054);
    render_pass_encoder0061.end();
    render_pass_encoder0041.drawIndirect(buffer00123, 0);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0020.drawIndirect(buffer00126, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0050.drawIndirect(buffer00135, 0);
    render_pass_encoder0080.drawIndirect(buffer0022, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0061.drawIndirect(buffer00136, 0);
    device00.queue.submit([command_buffer002, command_buffer004, command_buffer007, command_buffer008, ]);
    render_pass_encoder0061.end();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0044, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0061.drawIndirect(buffer0092, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00123, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00140 = device00.createBuffer({
        label: "buffer00140",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00140, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00140, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0080.drawIndirect(buffer0089, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0061.setIndexBuffer(buffer0075, "uint16");
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    const buffer00141 = device00.createBuffer({
        label: "buffer00141",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00142 = device00.createBuffer({
        label: "buffer00142",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0055 = device00.createBindGroup({
        label: "bind_group0055",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00141,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00142,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0055);
    render_pass_encoder0020.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00130, 0);
    device00.queue.submit([command_buffer005, command_buffer008, ]);
    render_pass_encoder0031.drawIndirect(buffer0083, 0);
    render_pass_encoder0040.drawIndirect(buffer00126, 0);
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0061.drawIndirect(buffer0082, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00108, 0);
    device20.queue.submit([]);
    render_pass_encoder0041.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00135, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0081, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0053, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    const buffer00143 = device00.createBuffer({
        label: "buffer00143",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00144 = device00.createBuffer({
        label: "buffer00144",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0056 = device00.createBindGroup({
        label: "bind_group0056",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00143,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00144,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0056);
    render_pass_encoder0080.end();
    render_pass_encoder0050.setIndexBuffer(buffer0067, "uint16");
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0080.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0080.drawIndirect(buffer00127, 0);
    const buffer00145 = device00.createBuffer({
        label: "buffer00145",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00146 = device00.createBuffer({
        label: "buffer00146",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0057 = device00.createBindGroup({
        label: "bind_group0057",
        layout: compute_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00145,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00146,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0057);
    render_pass_encoder0031.drawIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer000, command_buffer006, command_buffer008, ]);
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    const buffer00147 = device00.createBuffer({
        label: "buffer00147",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00148 = device00.createBuffer({
        label: "buffer00148",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0058 = device00.createBindGroup({
        label: "bind_group0058",
        layout: compute_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00147,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00148,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0058);
    render_pass_encoder0021.drawIndirect(buffer0084, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0040.drawIndirect(buffer0082, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer00135, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0020.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0030.drawIndirect(buffer00130, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0040.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0080.drawIndirect(buffer0083, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer0065, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0020.drawIndirect(buffer0081, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0030.endOcclusionQuery()
    compute_pass_encoder0011.end();
    render_pass_encoder0031.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0052, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00127, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.drawIndirect(buffer0078, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0020.drawIndirect(buffer0081, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    device00.queue.submit([command_buffer003, command_buffer008, ]);
    render_pass_encoder0061.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0080.drawIndexedIndirect(buffer0086, 0);
    device00.queue.submit([command_buffer001, command_buffer007, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00140, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0041.drawIndirect(buffer00130, 0);
    render_pass_encoder0050.drawIndirect(buffer002, 0);
    device30.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder0041.drawIndirect(buffer00104, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0097, 0);
    const buffer00149 = device00.createBuffer({
        label: "buffer00149",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00150 = device00.createBuffer({
        label: "buffer00150",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0059 = device00.createBindGroup({
        label: "bind_group0059",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00149,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00150,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0059);
    render_pass_encoder0041.setIndexBuffer(buffer00105, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0083, 0);
    render_pass_encoder0041.drawIndirect(buffer00128, 0);
    render_pass_encoder0060.drawIndirect(buffer0086, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0080.draw(3);
    render_pass_encoder0050.setIndexBuffer(buffer00109, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0061.end();
    render_pass_encoder0030.drawIndirect(buffer00127, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00128, "uint16");
    const buffer00151 = device00.createBuffer({
        label: "buffer00151",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00152 = device00.createBuffer({
        label: "buffer00152",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0060 = device00.createBindGroup({
        label: "bind_group0060",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00151,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00152,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0060);
    render_pass_encoder0020.drawIndexedIndirect(buffer0096, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00153 = device00.createBuffer({
        label: "buffer00153",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00153, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00153, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer00131, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder0010.drawIndirect(buffer0061, 0);
    render_pass_encoder0011.drawIndirect(buffer00127, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0030.drawIndirect(buffer0096, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0010.drawIndirect(buffer00128, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    const buffer00154 = device00.createBuffer({
        label: "buffer00154",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00155 = device00.createBuffer({
        label: "buffer00155",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0061 = device00.createBindGroup({
        label: "bind_group0061",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00154,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00155,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0061);
    render_pass_encoder0010.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0020.drawIndirect(buffer0062, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0050.drawIndirect(buffer0092, 0);
    render_pass_encoder0030.drawIndirect(buffer0081, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0061.end();
    render_pass_encoder0050.drawIndirect(buffer0042, 0);
    compute_pass_encoder0050.popDebugGroup()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00156 = device00.createBuffer({
        label: "buffer00156",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00156, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00156, 0);
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    render_pass_encoder0050.drawIndirect(buffer00127, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder0080.drawIndirect(buffer0061, 0);
    const buffer00157 = device00.createBuffer({
        label: "buffer00157",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00158 = device00.createBuffer({
        label: "buffer00158",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0062 = device00.createBindGroup({
        label: "bind_group0062",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00157,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00158,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0062);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    render_pass_encoder0021.drawIndirect(buffer00127, 0);
    render_pass_encoder0041.drawIndirect(buffer00129, 0);
    render_pass_encoder0080.drawIndirect(buffer0069, 0);
    render_pass_encoder0041.drawIndirect(buffer0076, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00156, 0);
    render_pass_encoder0080.drawIndirect(buffer00153, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0070, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0060.drawIndirect(buffer0065, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0031.drawIndirect(buffer0069, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00153, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.setIndexBuffer(buffer0095, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0092, 0);
    render_pass_encoder0010.drawIndirect(buffer0084, 0);
    render_pass_encoder0040.drawIndirect(buffer00129, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00156, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0041.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00159 = device00.createBuffer({
        label: "buffer00159",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00159, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00159, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00101, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer008, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0020.drawIndirect(buffer00135, 0);
    render_pass_encoder0080.drawIndirect(buffer00153, 0);
    render_pass_encoder0040.drawIndirect(buffer0081, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0097, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00160 = device00.createBuffer({
        label: "buffer00160",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00160, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00160, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00128, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0010.drawIndirect(buffer0049, 0);
    render_pass_encoder0061.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0021.drawIndirect(buffer00155, 0);
    device20.queue.submit([]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    render_pass_encoder0031.drawIndirect(buffer0069, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0021.drawIndirect(buffer0053, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0015, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0061.drawIndirect(buffer00152, 0);
    render_pass_encoder0061.drawIndirect(buffer0086, 0);
    render_pass_encoder0080.drawIndirect(buffer0069, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00161 = device00.createBuffer({
        label: "buffer00161",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00161, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00161, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0011.drawIndirect(buffer0056, 0);
    render_pass_encoder0041.drawIndirect(buffer00135, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0061.setIndexBuffer(buffer00133, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0050.setIndexBuffer(buffer0012, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00162 = device00.createBuffer({
        label: "buffer00162",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00162, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00162, 0);
    render_pass_encoder0030.drawIndirect(buffer00161, 0);
    render_pass_encoder0021.drawIndirect(buffer0085, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00151, "uint16");
    const buffer00163 = device00.createBuffer({
        label: "buffer00163",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00164 = device00.createBuffer({
        label: "buffer00164",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0063 = device00.createBindGroup({
        label: "bind_group0063",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00163,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00164,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0063);
    render_pass_encoder0080.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0010.drawIndirect(buffer0073, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0089, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0041.drawIndirect(buffer00140, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00153, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00154, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0020.drawIndirect(buffer0081, 0);
    render_pass_encoder0011.drawIndirect(buffer0084, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    render_pass_encoder0041.drawIndirect(buffer0062, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00118, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.drawIndirect(buffer0088, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0021.drawIndirect(buffer00161, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer00116, "uint16");
    render_pass_encoder0080.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0031.drawIndirect(buffer00131, 0);
    render_pass_encoder0021.drawIndirect(buffer0089, 0);
    render_pass_encoder0080.setIndexBuffer(buffer00155, "uint16");
    device00.queue.submit([command_buffer006, ]);
    const buffer00165 = device00.createBuffer({
        label: "buffer00165",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00166 = device00.createBuffer({
        label: "buffer00166",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0064 = device00.createBindGroup({
        label: "bind_group0064",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00165,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00166,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0064);
    render_pass_encoder0050.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer002, 0);
    device00.queue.submit([command_buffer002, command_buffer003, command_buffer005, ]);
    render_pass_encoder0031.drawIndirect(buffer0084, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer005, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0080.end();
    render_pass_encoder0080.drawIndirect(buffer0078, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0011.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder0050.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer004, "uint16");
    const buffer00167 = device00.createBuffer({
        label: "buffer00167",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00168 = device00.createBuffer({
        label: "buffer00168",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0065 = device00.createBindGroup({
        label: "bind_group0065",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00167,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00168,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0065);
    render_pass_encoder0020.drawIndirect(buffer0084, 0);
    render_pass_encoder0080.drawIndirect(buffer0081, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0056, 0);
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0010.drawIndirect(buffer00129, 0);
    render_pass_encoder0040.drawIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndirect(buffer00123, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00122, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00160, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0060.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0093, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0080.endOcclusionQuery()
    render_pass_encoder0011.drawIndirect(buffer00161, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0073, 0);
    render_pass_encoder0010.drawIndirect(buffer00156, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer00123, 0);
    render_pass_encoder0030.drawIndirect(buffer00160, 0);
    render_pass_encoder0060.drawIndirect(buffer00157, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0060.draw(3);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0070, 0);
    render_pass_encoder0021.drawIndirect(buffer0070, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0010.drawIndirect(buffer00162, 0);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0061.drawIndirect(buffer0043, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00140, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0010.drawIndirect(buffer00136, 0);
    render_pass_encoder0031.drawIndirect(buffer00130, 0);
    render_pass_encoder0031.drawIndirect(buffer0048, 0);
    render_pass_encoder0040.popDebugGroup();
    const buffer00169 = device00.createBuffer({
        label: "buffer00169",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00170 = device00.createBuffer({
        label: "buffer00170",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0066 = device00.createBindGroup({
        label: "bind_group0066",
        layout: compute_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00169,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00170,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0066);
    render_pass_encoder0021.setIndexBuffer(buffer0091, "uint16");
    render_pass_encoder0041.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00171 = device00.createBuffer({
        label: "buffer00171",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00171, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00171, 0);
    device00.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer00159, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder0011.drawIndirect(buffer00129, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0050.drawIndirect(buffer00161, 0);
    render_pass_encoder0061.drawIndirect(buffer00135, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    render_pass_encoder0041.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0061.drawIndirect(buffer00156, 0);
    device20.queue.submit([]);
    render_pass_encoder0050.end();
    render_pass_encoder0080.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0011.drawIndirect(buffer00140, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0080.drawIndirect(buffer0086, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00156, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0086, 0);
    const buffer00172 = device00.createBuffer({
        label: "buffer00172",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00173 = device00.createBuffer({
        label: "buffer00173",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0067 = device00.createBindGroup({
        label: "bind_group0067",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00172,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00173,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0067);
    render_pass_encoder0060.drawIndirect(buffer00127, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0040.drawIndirect(buffer0055, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0020.drawIndirect(buffer0070, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0054, 0);
    render_pass_encoder0041.drawIndirect(buffer00144, 0);
    render_pass_encoder0040.drawIndirect(buffer0092, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0050.setIndexBuffer(buffer00101, "uint16");
    render_pass_encoder0021.popDebugGroup();
    const buffer00174 = device00.createBuffer({
        label: "buffer00174",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00175 = device00.createBuffer({
        label: "buffer00175",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0068 = device00.createBindGroup({
        label: "bind_group0068",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00174,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00175,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0068);
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00139, "uint16");
    compute_pass_encoder0011.end();
    render_pass_encoder0030.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0080.setIndexBuffer(buffer005, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00170, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00176 = device00.createBuffer({
        label: "buffer00176",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00176, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00176, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0011.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0082, 0);
    render_pass_encoder0041.drawIndirect(buffer0084, 0);
    render_pass_encoder0020.drawIndirect(buffer00160, 0);
    const buffer00177 = device00.createBuffer({
        label: "buffer00177",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00178 = device00.createBuffer({
        label: "buffer00178",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0069 = device00.createBindGroup({
        label: "bind_group0069",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00177,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00178,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0069);
    render_pass_encoder0020.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0021.drawIndirect(buffer00129, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0061.drawIndirect(buffer00156, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0030.end();
    compute_pass_encoder0011.popDebugGroup()
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00179 = device00.createBuffer({
        label: "buffer00179",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00179, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00179, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0060.drawIndirect(buffer0078, 0);
    const buffer00180 = device00.createBuffer({
        label: "buffer00180",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00181 = device00.createBuffer({
        label: "buffer00181",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0070 = device00.createBindGroup({
        label: "bind_group0070",
        layout: compute_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00180,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00181,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0070);
    render_pass_encoder0011.drawIndirect(buffer0049, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer0082, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00135, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder0011.draw(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0080.setIndexBuffer(buffer00120, "uint16");
    render_pass_encoder0080.drawIndirect(buffer0015, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0021.drawIndirect(buffer00123, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0011.drawIndirect(buffer00123, 0);
    render_pass_encoder0080.drawIndirect(buffer0090, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0031.end();
    render_pass_encoder0041.setIndexBuffer(buffer00127, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0040.drawIndirect(buffer00128, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00140, 0);
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00105, 0);
    device20.queue.submit([]);
    render_pass_encoder0061.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0061.drawIndirect(buffer002, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer0018, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0080.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0082, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0060.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0020.drawIndirect(buffer0086, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00140, 0);
    const buffer00182 = device00.createBuffer({
        label: "buffer00182",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00183 = device00.createBuffer({
        label: "buffer00183",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0071 = device00.createBindGroup({
        label: "bind_group0071",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00182,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00183,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0071);
    render_pass_encoder0031.setIndexBuffer(buffer00147, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer00121, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0068, 0);
    render_pass_encoder0031.drawIndirect(buffer00126, 0);
    render_pass_encoder0021.drawIndirect(buffer00159, 0);
    render_pass_encoder0020.drawIndirect(buffer00162, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0060.setIndexBuffer(buffer008, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0021.setIndexBuffer(buffer0079, "uint16");
    const buffer00184 = device00.createBuffer({
        label: "buffer00184",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00185 = device00.createBuffer({
        label: "buffer00185",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0072 = device00.createBindGroup({
        label: "bind_group0072",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00184,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00185,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0072);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0054, 0);
    render_pass_encoder0061.setIndexBuffer(buffer00129, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00105, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    device00.queue.submit([command_buffer000, command_buffer008, ]);
    render_pass_encoder0060.drawIndirect(buffer0082, 0);
    render_pass_encoder0020.drawIndirect(buffer00135, 0);
    render_pass_encoder0061.drawIndirect(buffer0062, 0);
    render_pass_encoder0080.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0010.drawIndirect(buffer00141, 0);
    render_pass_encoder0010.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0031.drawIndirect(buffer00176, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0050.drawIndirect(buffer0012, 0);
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0073, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0080.drawIndirect(buffer00129, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00150, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer009, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00186 = device00.createBuffer({
        label: "buffer00186",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00186, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00186, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00116, "uint16");
    render_pass_encoder0021.popDebugGroup();
    const buffer00187 = device00.createBuffer({
        label: "buffer00187",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00188 = device00.createBuffer({
        label: "buffer00188",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0073 = device00.createBindGroup({
        label: "bind_group0073",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00187,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00188,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0073);
    render_pass_encoder0061.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0083, 0);
    render_pass_encoder0040.drawIndirect(buffer00186, 0);
    render_pass_encoder0080.drawIndirect(buffer0083, 0);
    render_pass_encoder0011.drawIndirect(buffer00161, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer00160, 0);
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0044, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00189 = device00.createBuffer({
        label: "buffer00189",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00189, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00189, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0030.drawIndirect(buffer00146, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00153, 0);
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    device00.queue.submit([]);
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer004, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0029, 0);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.drawIndirect(buffer00140, 0);
    render_pass_encoder0040.drawIndirect(buffer0085, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0050.setIndexBuffer(buffer00166, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00135, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.drawIndirect(buffer00129, 0);
    render_pass_encoder0080.drawIndirect(buffer00169, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0021.drawIndirect(buffer0092, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0078, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0021.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0080.drawIndirect(buffer00144, 0);
    render_pass_encoder0061.drawIndirect(buffer00123, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0011.drawIndirect(buffer0083, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0053, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.drawIndirect(buffer00100, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndirect(buffer00189, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00156, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0040.popDebugGroup();
    const buffer00190 = device00.createBuffer({
        label: "buffer00190",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00191 = device00.createBuffer({
        label: "buffer00191",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0074 = device00.createBindGroup({
        label: "bind_group0074",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00190,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00191,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0074);
    const buffer00192 = device00.createBuffer({
        label: "buffer00192",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00193 = device00.createBuffer({
        label: "buffer00193",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0075 = device00.createBindGroup({
        label: "bind_group0075",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00192,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00193,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0075);
    render_pass_encoder0020.drawIndirect(buffer0083, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0029, 0);
    render_pass_encoder0060.drawIndirect(buffer00129, 0);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    const buffer00194 = device00.createBuffer({
        label: "buffer00194",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00195 = device00.createBuffer({
        label: "buffer00195",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0076 = device00.createBindGroup({
        label: "bind_group0076",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00194,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00195,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0076);
    render_pass_encoder0061.drawIndexedIndirect(buffer00159, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0061.end();
    render_pass_encoder0030.drawIndirect(buffer00171, 0);
    render_pass_encoder0080.drawIndirect(buffer0044, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0030.drawIndirect(buffer0078, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0061.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00123, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0060.end();
    compute_pass_encoder0011.popDebugGroup()
    device00.queue.submit([command_buffer005, command_buffer007, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer009, 0);
    render_pass_encoder0080.drawIndirect(buffer0092, 0);
    render_pass_encoder0040.drawIndirect(buffer0058, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00196 = device00.createBuffer({
        label: "buffer00196",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00196, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00196, 0);
    device00.queue.submit([command_buffer002, command_buffer007, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.end();
    render_pass_encoder0061.drawIndirect(buffer0078, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    device30.queue.submit([]);
    render_pass_encoder0031.drawIndirect(buffer00170, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0030.drawIndirect(buffer0082, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0061.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0089, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00183, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0082, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00197 = device00.createBuffer({
        label: "buffer00197",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00197, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00197, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0041.drawIndirect(buffer00127, 0);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0021.setIndexBuffer(buffer0084, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer00149, "uint16");
    render_pass_encoder0080.drawIndexedIndirect(buffer00159, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0010.setIndexBuffer(buffer00121, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00159, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer00112, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0085, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0080.drawIndirect(buffer00197, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0061.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0050.drawIndirect(buffer00128, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0060.drawIndirect(buffer00176, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0057, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder0080.drawIndirect(buffer0078, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0080.end();
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0040.setIndexBuffer(buffer0066, "uint16");
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer00181, 0);
    render_pass_encoder0050.drawIndirect(buffer0033, 0);
    render_pass_encoder0080.drawIndirect(buffer0034, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndirect(buffer00179, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0030.drawIndirect(buffer00164, 0);
    render_pass_encoder0080.drawIndirect(buffer0049, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0080.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00141, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00170, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00161, 0);
    render_pass_encoder0080.drawIndirect(buffer0081, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer0011, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0080.drawIndirect(buffer0015, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0041.drawIndirect(buffer00162, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder0080.drawIndirect(buffer00193, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0021.drawIndirect(buffer0065, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0083, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0084, 0);
    const buffer00198 = device00.createBuffer({
        label: "buffer00198",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00199 = device00.createBuffer({
        label: "buffer00199",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0077 = device00.createBindGroup({
        label: "bind_group0077",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00198,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00199,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0077);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0041.drawIndirect(buffer00123, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00140, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00179, 0);
    render_pass_encoder0010.drawIndirect(buffer00140, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00121, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0073, 0);
    const buffer00200 = device00.createBuffer({
        label: "buffer00200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00201 = device00.createBuffer({
        label: "buffer00201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0078 = device00.createBindGroup({
        label: "bind_group0078",
        layout: compute_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00201,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0078);
    render_pass_encoder0080.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0061.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndirect(buffer0082, 0);
    const buffer00202 = device00.createBuffer({
        label: "buffer00202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00203 = device00.createBuffer({
        label: "buffer00203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0079 = device00.createBindGroup({
        label: "bind_group0079",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00203,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0079);
    render_pass_encoder0021.setIndexBuffer(buffer00107, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00140, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00179, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0089, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00119, 0);
    render_pass_encoder0030.drawIndirect(buffer00116, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00186, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0040.end();
    render_pass_encoder0080.drawIndirect(buffer00159, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0021.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0011.drawIndirect(buffer00153, 0);
    render_pass_encoder0060.drawIndirect(buffer00203, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00159, 0);
    render_pass_encoder0010.drawIndirect(buffer00123, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00196, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00185, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer00135, 0);
    render_pass_encoder0041.drawIndirect(buffer0084, 0);
    render_pass_encoder0041.drawIndirect(buffer0059, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer00159, 0);
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00131, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00150, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00200, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer00195, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00155, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0021.drawIndirect(buffer00199, 0);
    const buffer00204 = device00.createBuffer({
        label: "buffer00204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00205 = device00.createBuffer({
        label: "buffer00205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0080 = device00.createBindGroup({
        label: "bind_group0080",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00205,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0080);
    render_pass_encoder0010.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0080.drawIndirect(buffer0092, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00206 = device00.createBuffer({
        label: "buffer00206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00206, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00206, 0);
    const buffer00207 = device00.createBuffer({
        label: "buffer00207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00208 = device00.createBuffer({
        label: "buffer00208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0081 = device00.createBindGroup({
        label: "bind_group0081",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00208,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0081);
    render_pass_encoder0060.drawIndirect(buffer00126, 0);
    render_pass_encoder0060.drawIndirect(buffer00128, 0);
    render_pass_encoder0060.drawIndirect(buffer0082, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0041.drawIndirect(buffer0073, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00139, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.drawIndirect(buffer00197, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0060.drawIndirect(buffer0065, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0061.drawIndirect(buffer00159, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0080.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00114, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder0080.drawIndirect(buffer0061, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00126, 0);
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    render_pass_encoder0050.drawIndirect(buffer00135, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0060.drawIndirect(buffer0085, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0081, 0);
    render_pass_encoder0050.popDebugGroup();
    const buffer00209 = device00.createBuffer({
        label: "buffer00209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00210 = device00.createBuffer({
        label: "buffer00210",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0082 = device00.createBindGroup({
        label: "bind_group0082",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00210,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0082);
    render_pass_encoder0041.drawIndirect(buffer00162, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0041.drawIndirect(buffer00164, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00211 = device00.createBuffer({
        label: "buffer00211",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00211, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00211, 0);
    render_pass_encoder0050.drawIndirect(buffer00140, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0030.drawIndirect(buffer0083, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00190, 0);
    device00.queue.submit([]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0062, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0060.drawIndirect(buffer00135, 0);
    const buffer00212 = device00.createBuffer({
        label: "buffer00212",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00213 = device00.createBuffer({
        label: "buffer00213",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0083 = device00.createBindGroup({
        label: "bind_group0083",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00212,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00213,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0083);
    render_pass_encoder0080.drawIndirect(buffer00153, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0011.drawIndirect(buffer00160, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0060.drawIndirect(buffer00208, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00184, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0086, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00118, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00161, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00114, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0066, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0040.end();
    render_pass_encoder0080.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0050.drawIndirect(buffer00156, 0);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.setIndexBuffer(buffer00133, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder0011.drawIndirect(buffer00206, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00191, "uint16");
    render_pass_encoder0061.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00160, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0080.drawIndexedIndirect(buffer00211, 0);
    render_pass_encoder0041.drawIndirect(buffer009, 0);
    render_pass_encoder0061.end();
    render_pass_encoder0061.end();
    render_pass_encoder0080.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0050.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0061.drawIndirect(buffer00157, 0);
    render_pass_encoder0080.setIndexBuffer(buffer00183, "uint16");
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer006, command_buffer007, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0047, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0031.drawIndirect(buffer00113, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer00130, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0010.setIndexBuffer(buffer00208, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0050.drawIndirect(buffer0085, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0092, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00144, "uint16");
    render_pass_encoder0031.drawIndirect(buffer00161, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0080.drawIndirect(buffer0070, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0040.drawIndirect(buffer0066, 0);
    render_pass_encoder0080.drawIndirect(buffer0030, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00185, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.drawIndirect(buffer00135, 0);
    device20.queue.submit([]);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    render_pass_encoder0041.drawIndirect(buffer0086, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0061.drawIndirect(buffer00211, 0);
    render_pass_encoder0040.setIndexBuffer(buffer003, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00135, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0010.drawIndirect(buffer0085, 0);
    render_pass_encoder0060.drawIndirect(buffer006, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0030.drawIndirect(buffer0068, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00206, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00182, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0080.end();
    render_pass_encoder0050.end();
    render_pass_encoder0080.drawIndirect(buffer00197, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00187, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0080.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0073, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00176, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0080.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0041.drawIndirect(buffer0070, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00123, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0021.drawIndirect(buffer0083, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00139, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0089, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00135, 0);
    device00.queue.submit([command_buffer006, command_buffer007, ]);
    render_pass_encoder0040.end();
    const buffer00214 = device00.createBuffer({
        label: "buffer00214",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00215 = device00.createBuffer({
        label: "buffer00215",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0084 = device00.createBindGroup({
        label: "bind_group0084",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00214,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00215,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0084);
    render_pass_encoder0041.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder0020.drawIndirect(buffer0089, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0030.setIndexBuffer(buffer00163, "uint16");
    compute_pass_encoder0050.end();
    render_pass_encoder0030.setIndexBuffer(buffer00179, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0070, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0040.drawIndirect(buffer0083, 0);
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0020.drawIndirect(buffer00140, 0);
    render_pass_encoder0080.drawIndirect(buffer00161, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0080.drawIndirect(buffer00162, 0);
    device30.queue.submit([]);
    render_pass_encoder0061.drawIndexedIndirect(buffer00188, 0);
    render_pass_encoder0050.drawIndirect(buffer00161, 0);
    render_pass_encoder0050.drawIndirect(buffer0044, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.drawIndirect(buffer00189, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0060.drawIndirect(buffer0065, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.end();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00196, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0061.drawIndirect(buffer00153, 0);
    render_pass_encoder0041.drawIndirect(buffer00116, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0031.drawIndirect(buffer00197, 0);
    render_pass_encoder0061.drawIndirect(buffer00211, 0);
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00203, "uint16");
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0050.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer00121, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0061.drawIndirect(buffer00161, 0);
    render_pass_encoder0061.drawIndirect(buffer00213, 0);
    render_pass_encoder0041.drawIndirect(buffer0084, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0084, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00144, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0031.drawIndirect(buffer0082, 0);
    render_pass_encoder0031.drawIndirect(buffer000, 0);
    render_pass_encoder0030.drawIndirect(buffer00179, 0);
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0049, 0);
    device00.queue.submit([command_buffer002, command_buffer007, ]);
    render_pass_encoder0011.drawIndirect(buffer00187, 0);
    render_pass_encoder0061.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00154, 0);
    render_pass_encoder0041.drawIndirect(buffer0089, 0);
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
}