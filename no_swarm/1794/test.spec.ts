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
    const array0 = new Float32Array([-0.5, 1.0, 1.0, 0.75, 1.0, 1.0, -1.0, 0.75, -0.25, 0.25, 0.25, 0.75, 0.25, 0.5, -0.75, 0.0, 0.5, -0.5, 0.5, 0.25, 1.0, -0.25, -1.0, 0.75, -0.5, -0.75, -0.75, -0.75, 0.25, -0.75, 0.0, -1.0, 1.0, 0.75, 0.75, -0.5, -1.0, -1.0, 0.0, 0.5, -0.75, 0.5, -0.25, 0.5, -0.75, -0.75, 0.75, 0.75, 1.0, 0.5, 0.75, -1.0, -0.5, 1.0, -0.75, 0.75, 0.5, 0.0, -0.25, -0.25, -1.0, 1.0, -1.0, 1.0, -1.0, -1.0, 0.25, 0.5, -1.0, -0.75, 0.5, 0.0, 0.25, 0.5, 0.75, -0.5, 0.5, 1.0, 0.75, -0.75, 0.75, 0.75, 0.75, -0.75, -0.5, -0.25, -0.75, -0.25, -0.25, 0.5, -1.0, 0.0, -1.0, -1.0, 0.25, -0.75, -0.5, -0.75, 0.5, 0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array1 = new Float32Array([0.75, -0.25, -0.5, 0.5, 0.5, 0.5, -0.25, 1.0, -0.5, -0.25, -0.75, 0.5, 0.0, -1.0, -0.5, 0.5, 0.25, 0.75, 1.0, 0.0, -0.5, -1.0, 0.25, 0.0, 1.0, 0.75, -0.5, -0.25, 0.5, 0.5, 0.25, 0.75, 1.0, 0.5, -1.0, 0.0, 0.75, 0.5, 0.5, 0.75, 0.5, 0.5, 1.0, -0.25, 0.25, -0.5, -0.25, 0.5, -0.5, -0.5, -1.0, -0.25, 0.75, -1.0, -0.5, 1.0, 0.0, -0.25, -0.25, -0.75, 0.25, -0.75, 0.5, -0.75, 0.75, 0.25, 0.0, -0.75, 0.5, 1.0, 0.0, 0.75, 1.0, -1.0, -0.5, 0.0, -0.5, -1.0, 0.75, -1.0, -0.5, -0.25, -0.75, -0.25, -1.0, 0.0, 0.0, -1.0, 1.0, 0.0, -0.5, -0.25, -0.25, -1.0, -0.75, 0.25, 0.5, 0.25, -0.25, 0.75, ]);
    const array2 = new Float32Array([1.0, -0.25, -0.25, -0.5, 0.25, -1.0, -0.5, -0.5, 0.25, -0.25, 0.25, -0.75, -1.0, 0.0, 0.0, -1.0, 0.75, 0.5, -1.0, 0.5, -0.75, 1.0, 0.75, 0.5, -0.5, 0.75, 0.25, 0.25, 0.25, -0.75, 0.25, -0.5, 0.0, 0.75, -0.5, 0.0, -1.0, -0.75, -1.0, 0.75, 0.75, 1.0, -0.75, 1.0, -0.25, -0.75, -0.75, 0.75, 0.25, 0.25, -0.5, -0.75, 0.25, -1.0, 0.0, 0.5, -1.0, 0.25, -0.75, 0.25, -0.25, -0.5, 0.0, 1.0, -0.5, -0.5, 0.5, 0.5, -0.75, 0.75, -0.75, -1.0, 0.75, 0.5, 0.25, 1.0, -1.0, 0.5, 0.5, 1.0, 1.0, 0.5, -1.0, -0.25, 0.25, -0.5, -0.5, 0.75, 0.25, -0.5, 1.0, 0.5, 0.0, 0.75, -0.75, 0.5, 0.5, -1.0, 0.75, -1.0, ]);
    const array3 = new Float32Array([-0.5, 0.75, 0.25, 0.75, 0.5, -0.5, 0.0, 0.0, -0.5, 0.0, 0.0, 0.5, -0.75, 0.0, 0.75, 0.75, 1.0, 1.0, -1.0, 1.0, 1.0, -0.75, 0.25, -0.25, -1.0, -0.5, 0.25, -1.0, 0.0, -0.5, -0.5, 0.5, 0.5, -0.25, 0.75, -0.75, -0.25, 0.5, -0.5, 0.25, 0.0, 1.0, -0.5, -1.0, -1.0, 0.5, 0.75, -0.5, 0.0, 1.0, -0.5, 0.0, -0.5, 1.0, 0.0, -1.0, -0.25, 1.0, 0.0, 0.0, 0.0, 1.0, -1.0, -0.25, 0.5, 1.0, 0.0, 1.0, 0.5, 0.0, -1.0, -0.5, 0.25, -0.5, -1.0, 0.25, -0.5, 0.5, -0.5, 0.0, 0.0, 0.0, -0.75, -0.75, -0.75, -1.0, -0.5, 1.0, -0.75, 0.25, 0.5, 0.25, 0.5, 0.75, -1.0, 1.0, 0.5, -0.75, 0.5, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array4 = new Float32Array([-0.25, 0.5, 0.75, -1.0, 0.5, -1.0, 0.5, 0.5, 1.0, -0.25, -0.5, 1.0, 0.0, 0.25, -0.5, 0.0, -0.75, 0.75, 0.5, 0.75, -0.5, 0.25, 0.25, 0.25, 0.0, 0.0, -0.25, 0.25, 0.75, -0.5, 0.75, 0.5, 1.0, 0.25, 1.0, -0.75, 0.5, 0.75, 0.0, -0.5, 0.75, 0.75, -0.5, -0.25, -1.0, -0.5, 0.5, 0.25, -0.5, -1.0, -0.5, 0.75, 1.0, -0.5, 0.5, -0.25, 0.75, 0.25, -0.25, -1.0, 0.0, -1.0, 0.5, 0.25, -0.75, 0.5, -1.0, 0.75, -0.75, -0.75, -1.0, 0.5, 1.0, 0.0, -0.25, 0.25, -0.25, 0.75, 0.75, 0.75, 0.25, 0.25, 0.5, -0.25, 0.0, 0.75, 0.0, 0.0, -0.5, -1.0, 1.0, 0.0, 0.0, -0.75, 1.0, -1.0, 1.0, 0.5, -0.75, -0.75, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
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
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    device00.pushErrorScope("out-of-memory");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query300.destroy()
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([0.0, 0.75, -0.75, 0.25, 0.25, 0.0, -0.75, 0.25, 0.0, 0.25, -0.5, 0.75, 0.0, 0.0, -0.75, 0.0, -0.75, -0.75, 0.5, -1.0, -0.25, 0.25, -1.0, 0.5, 0.5, 0.75, -1.0, -0.5, -0.25, -0.25, -0.75, -0.5, 0.0, 0.25, -1.0, 0.5, 0.0, 0.75, 1.0, 0.25, 0.5, -1.0, -0.25, -1.0, 0.75, -1.0, -0.75, -0.25, -0.25, -0.75, -0.75, 0.25, -0.5, 0.5, -1.0, 1.0, -0.75, -0.25, 1.0, 0.0, 0.0, -1.0, 1.0, -0.5, 1.0, 0.5, -1.0, -1.0, -0.5, -0.75, 1.0, 0.0, -0.75, 0.75, -0.25, 0.75, 0.25, -0.5, 0.25, -1.0, 0.5, 0.75, 0.5, 1.0, 0.75, 0.25, 0.0, -0.5, -0.75, 0.25, 0.5, 0.25, -0.75, 0.25, -0.75, -0.75, 0.25, 0.25, -0.25, -0.75, ]);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    texture000.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    device30.pushErrorScope("internal");
    const query003 = device00.createQuerySet({
        label: "query003",
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.popDebugGroup();
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const array6 = new Float32Array([0.5, 0.75, -0.5, -0.25, -0.25, 0.0, 0.5, -0.25, 0.5, -0.25, -1.0, 0.75, 0.25, 1.0, -0.75, 0.75, -0.5, 0.75, 0.0, -0.5, 0.5, -0.75, -0.5, 1.0, 0.5, 0.0, -0.25, -0.25, 0.5, -1.0, 1.0, 0.0, -1.0, 0.25, 0.0, 0.0, -0.25, -1.0, 0.5, 0.5, 0.0, 0.75, -0.5, 0.25, 0.5, 0.75, 0.75, 1.0, 0.0, -1.0, 0.5, -0.5, -1.0, -0.5, -1.0, -1.0, -0.25, 0.0, -0.25, 0.5, -0.5, 1.0, 0.75, -1.0, -0.75, -1.0, 1.0, 0.25, 0.25, 0.25, 1.0, -0.5, -0.25, 0.25, -0.5, 0.0, -1.0, 0.0, 0.0, 0.75, 0.0, 0.75, 0.25, -1.0, -0.75, 1.0, 0.0, -1.0, 0.0, -0.5, 0.0, -0.5, 0.75, -1.0, 0.75, -0.5, -1.0, 0.75, 0.25, 1.0, ]);
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device30.destroy();
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder000.popDebugGroup();
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    render_pass_encoder0000.beginOcclusionQuery(0)
    
    render_pass_encoder0000.beginOcclusionQuery(0)
    buffer001.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0000.beginOcclusionQuery(0)
    render_pass_encoder0000.beginOcclusionQuery(0)
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
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
    const array7 = new Float32Array([1.0, -0.25, 0.0, -1.0, -0.5, -0.5, 0.25, 1.0, -0.5, 0.25, 1.0, 0.75, 0.75, -0.5, 1.0, 1.0, -1.0, 1.0, -0.5, -0.25, 1.0, -0.25, -0.75, -1.0, 0.5, -0.5, -0.75, -0.75, -1.0, -0.5, -0.5, -0.75, 0.75, 0.0, 0.75, 1.0, -0.5, 1.0, 1.0, 0.75, -0.25, 1.0, 0.25, 0.0, 0.5, 0.0, 0.5, 0.0, -0.5, 0.75, -0.75, -1.0, 0.25, 0.0, -1.0, -1.0, 0.0, -0.25, 0.75, 0.25, 0.5, -1.0, -0.75, -0.25, -0.25, -0.5, 0.5, 0.75, -0.25, -0.75, 0.25, -0.5, -0.25, -0.5, -0.5, 0.75, -1.0, 0.25, 0.25, 0.25, 0.0, -1.0, 1.0, 0.25, 1.0, 0.0, 0.5, 0.5, -0.75, -0.5, 0.0, 0.75, -1.0, -1.0, 1.0, 1.0, -1.0, -1.0, 0.75, -0.75, ]);
    
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    query002.destroy()
    device00.destroy();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device40.destroy();
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    
    device60.destroy();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    command_encoder500.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    device10.destroy();
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("validation");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    query002.destroy()
    
    command_encoder501.insertDebugMarker("mymarker");
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    command_encoder501.pushDebugGroup("mygroupmarker")
    command_encoder501.insertDebugMarker("mymarker");
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder500.insertDebugMarker("mymarker");
    render_bundle_encoder500.insertDebugMarker("marker");
    query500.destroy()
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5010.insertDebugMarker("marker");
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder5010.setStencilReference(1);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder5000.pushDebugGroup("group_marker");
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    compute_pass_encoder5000.popDebugGroup()
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    query500.destroy()
    render_pass_encoder5010.pushDebugGroup("group_marker");
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer500,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer501,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device50.pushErrorScope("out-of-memory");
    render_bundle_encoder502.insertDebugMarker("marker");
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    
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
    
    buffer501.destroy()
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.popDebugGroup();
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture500.destroy();
    const compute_pass_encoder5001 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5001" });
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array8 = new Float32Array([0.75, 0.0, -0.5, 0.5, 0.0, -0.5, -0.25, -0.75, 0.75, 0.75, 0.0, -0.25, -0.25, -0.75, 0.25, 0.5, -0.25, 0.25, 0.25, -0.5, 0.75, 0.0, 0.25, 0.0, 0.0, 0.5, 1.0, 0.75, 0.25, 0.75, 0.75, 1.0, -0.75, 0.75, -1.0, 1.0, 0.5, 0.75, -1.0, -1.0, -1.0, 0.0, -0.5, -0.75, 0.75, 0.25, -0.75, 0.75, 0.5, 0.5, 1.0, 0.5, -0.5, -0.75, 0.25, 0.0, 0.0, 0.0, 1.0, -0.75, 1.0, 0.5, -0.25, 1.0, -0.5, 0.75, 0.75, 1.0, 0.0, 0.0, -0.5, 0.25, 0.5, 0.25, 0.5, -0.25, 0.25, 0.25, 0.25, 0.75, 0.25, -1.0, 0.5, -1.0, -0.5, -0.25, 0.75, -0.75, 1.0, 0.25, 0.0, 1.0, -1.0, 0.0, -0.5, -0.75, 0.5, 0.25, 0.0, -0.75, ]);
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    
    compute_pass_encoder5001.setPipeline(compute_pipeline500);
    render_pass_encoder5010.setStencilReference(1);
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    compute_pass_encoder5001.pushDebugGroup("group_marker")
    compute_pass_encoder5000.dispatchWorkgroups(100);
    
    render_pass_encoder5010.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device20.destroy();
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    render_pass_encoder5010.executeBundles([])
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5010.setStencilReference(1);
    
    render_pass_encoder5000.setStencilReference(1);
    
    render_pass_encoder5000.executeBundles([])
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_pass_encoder5000.setStencilReference(1);
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const render_pass_encoder5001 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5001.executeBundles([])
    render_pass_encoder5001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer600.destroy()
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    render_pass_encoder5001.pushDebugGroup("group_marker");
    render_bundle_encoder501.popDebugGroup();
    const array9 = new Float32Array([-0.25, 0.0, -0.5, 0.75, -1.0, 0.25, -0.5, -0.25, -1.0, 0.5, 0.5, -0.5, 0.0, -0.75, -1.0, 0.0, 0.0, 1.0, 0.75, 0.5, 0.0, -1.0, 0.0, -1.0, 0.0, 0.0, 0.75, -0.5, -1.0, -0.75, -1.0, -0.25, 0.5, -0.5, 0.5, 0.25, -0.75, -0.5, 1.0, 0.5, 0.25, 0.25, -1.0, 0.0, 0.25, -1.0, 0.25, -0.75, -0.25, 1.0, 1.0, -0.75, 0.75, 0.25, 0.75, -1.0, -0.25, -1.0, 0.5, -0.75, -0.75, 1.0, 1.0, -0.75, -0.75, 0.25, 0.0, 0.25, 0.25, -1.0, 0.25, -1.0, 1.0, 0.25, -0.5, 0.0, 0.75, 0.0, 1.0, -0.25, -0.75, 0.25, 0.5, 0.75, -1.0, -0.25, -0.5, 0.0, 1.0, -0.25, 1.0, 0.5, 0.25, -1.0, -1.0, -0.75, 0.25, 0.25, 0.75, 0.75, ]);
    render_bundle_encoder501.insertDebugMarker("marker");
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group501);
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder502.insertDebugMarker("marker");
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer503, 0, array4, 0, array4.length);
    
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const uint32_5001 = new Uint32Array(3);

    uint32_5001[0] = 100;
    uint32_5001[1] = 1;
    uint32_5001[2] = 1;

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer505, 0, uint32_5001, 0, uint32_5001.length);

    compute_pass_encoder5001.dispatchWorkgroupsIndirect(buffer505, 0);
    render_pass_encoder5010.beginOcclusionQuery(0)
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_pass_encoder5001.setStencilReference(1);
    render_pass_encoder5001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer502.destroy()
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    device50.queue.writeBuffer(buffer504, 0, array6, 0, array6.length);
    compute_pass_encoder5001.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer505, 0, array6, 0, array6.length);
    
    device50.queue.writeBuffer(buffer504, 0, array3, 0, array3.length);
    render_pass_encoder5001.executeBundles([render_bundle_encoder502, ])
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
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    device60.destroy();
    buffer504.destroy()
    render_pass_encoder5001.popDebugGroup();
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder5000.setStencilReference(1);
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer505, 0, array3, 0, array3.length);
    device70.pushErrorScope("validation");
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    device50.queue.writeBuffer(buffer505, 0, array4, 0, array4.length);
    
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setPipeline(render_pipeline000);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    compute_pass_encoder5001.popDebugGroup()
    
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_pass_encoder5010.endOcclusionQuery()
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const array10 = new Float32Array([0.75, 1.0, -0.75, 1.0, 0.25, -0.75, -0.75, -1.0, -1.0, 0.75, -1.0, 0.75, -0.5, 0.25, -0.25, 0.75, 1.0, 0.25, 0.75, -0.75, 0.0, -0.25, -0.25, -1.0, -0.75, -0.75, -0.25, 0.0, 1.0, 0.0, -0.5, 0.25, 0.75, -0.5, -0.75, 0.5, 0.25, 0.5, -0.75, 0.75, -1.0, 0.5, -0.25, -0.75, 1.0, -0.75, 0.25, -0.5, -0.25, 0.0, -1.0, 1.0, -0.25, -0.75, -0.75, 0.0, -0.5, -1.0, 0.0, -0.25, 0.5, -0.25, 0.5, 0.5, -0.5, 0.5, -0.5, 0.0, 0.75, 0.0, 1.0, 0.5, 0.25, 1.0, -0.5, 0.25, -0.75, -0.75, 0.75, 0.25, 0.75, -1.0, -1.0, 0.75, 0.25, -0.25, -0.75, 1.0, 1.0, -0.25, 0.0, -0.5, 1.0, 0.0, 0.25, 1.0, -0.25, -0.75, -0.25, -1.0, ]);
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const render_pass_encoder5011 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group502);
    
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    device50.queue.writeBuffer(buffer503, 0, array2, 0, array2.length);
    render_pass_encoder5010.setStencilReference(1);
    render_pass_encoder5010.popDebugGroup();
    device50.queue.writeBuffer(buffer505, 0, array5, 0, array5.length);
    const array11 = new Float32Array([0.0, 0.25, -1.0, 0.5, -0.5, -1.0, 0.0, -0.25, 0.25, -1.0, 0.75, -0.5, 0.25, 0.0, 0.25, 0.75, 0.5, -0.75, -0.25, -0.75, -0.75, -0.25, -1.0, -0.25, 0.25, -1.0, -1.0, 0.75, 1.0, 0.0, -0.5, 0.5, -0.25, -1.0, 0.75, 1.0, -0.5, 0.5, 0.0, -0.5, 0.25, 0.75, 0.0, -0.75, 1.0, 1.0, 0.75, 0.5, -0.25, 0.25, 0.0, 0.75, 0.0, 1.0, 0.25, 0.25, -0.75, -0.5, -1.0, 0.75, -0.5, -0.5, 1.0, 0.0, -1.0, 0.25, 0.5, 1.0, 0.25, 0.75, -0.75, -1.0, -1.0, 0.5, 0.0, 0.75, 1.0, -0.25, -0.5, 0.5, -0.25, 0.25, -0.5, -1.0, -1.0, 0.5, 0.25, 1.0, 0.5, -0.5, 0.25, 0.0, 0.25, 0.5, 0.0, 0.25, 0.75, -1.0, 0.0, 0.0, ]);
    command_encoder700.insertDebugMarker("mymarker");
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.popDebugGroup()
    device80.queue.writeTexture({ texture: texture800 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer505, 0, array2, 0, array2.length);
    device50.queue.writeBuffer(buffer506, 0, array0, 0, array0.length);
    compute_pass_encoder5001.insertDebugMarker("marker")
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5011.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    command_encoder800.pushDebugGroup("mygroupmarker")
    render_pass_encoder5000.setStencilReference(1);
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    device50.queue.writeBuffer(buffer505, 0, array6, 0, array6.length);
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    
    device50.queue.writeBuffer(buffer505, 0, array6, 0, array6.length);
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder5011.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    buffer503.destroy()
    
    render_bundle_encoder502.setPipeline(render_pipeline500);
    
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    render_pass_encoder5011.setPipeline(render_pipeline500);
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    render_pass_encoder5000.popDebugGroup();
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder5000.pushDebugGroup("group_marker");
    
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.popDebugGroup();
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const compute_pipeline5024 = device50.createComputePipeline({
        label: "compute_pipeline5024",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5025 = device50.createComputePipeline({
        label: "compute_pipeline5025",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder5001.executeBundles([])
    query700.destroy()
    compute_pass_encoder5001.end();
    device50.queue.writeBuffer(buffer505, 0, array6, 0, array6.length);
    
    
    render_pass_encoder5010.executeBundles([])
    render_pass_encoder5001.executeBundles([])
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer507.destroy()
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer505, 0, array1, 0, array1.length);
    render_pass_encoder5000.insertDebugMarker("marker");
    const compute_pipeline5026 = device50.createComputePipeline({
        label: "compute_pipeline5026",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder5010.executeBundles([])
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const compute_pipeline5027 = device50.createComputePipeline({
        label: "compute_pipeline5027",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5028 = device50.createComputePipeline({
        label: "compute_pipeline5028",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const array12 = new Float32Array([-1.0, -0.5, 1.0, -1.0, -0.25, 0.25, -0.75, -0.75, -1.0, 0.5, -0.5, -1.0, 0.25, -0.5, -0.25, -0.75, 0.5, -0.25, 1.0, -0.25, 0.5, -0.75, 0.5, 1.0, 0.0, -0.25, -0.75, -1.0, 1.0, 0.25, -1.0, -0.5, -0.75, 0.25, 1.0, 1.0, 0.0, 0.75, -0.75, 0.75, 0.0, 0.5, -0.75, 0.5, 0.25, 0.25, -0.5, -0.5, 1.0, -0.5, 0.0, 0.25, 0.25, -0.25, 0.25, 0.5, 0.25, 0.75, -0.5, 0.5, -1.0, 0.0, 1.0, -0.75, 0.25, -0.5, -0.25, 0.25, -0.75, -0.25, 0.0, 1.0, -1.0, -0.25, 1.0, -0.25, -0.5, 1.0, 1.0, 0.25, 0.75, -0.5, 0.25, 0.25, -0.75, 0.5, -0.25, -1.0, 1.0, 0.0, 0.25, -0.75, 1.0, -0.25, -0.75, -0.25, -0.75, -1.0, -1.0, -0.75, ]);
    const compute_pipeline5029 = device50.createComputePipeline({
        label: "compute_pipeline5029",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_pass_encoder5011.setStencilReference(1);
    const compute_pipeline5030 = device50.createComputePipeline({
        label: "compute_pipeline5030",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    const compute_pipeline5031 = device50.createComputePipeline({
        label: "compute_pipeline5031",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    render_pass_encoder5011.setBindGroup(0, bind_group503);
    
    
    device50.queue.writeBuffer(buffer505, 0, array8, 0, array8.length);
    render_pass_encoder5011.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    device50.queue.writeTexture({ texture: texture503 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const compute_pipeline5032 = device50.createComputePipeline({
        label: "compute_pipeline5032",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    buffer507.destroy()
    device50.queue.writeBuffer(buffer505, 0, array3, 0, array3.length);
    render_pass_encoder5010.beginOcclusionQuery(0)
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    compute_pass_encoder5000.end();
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    device80.pushErrorScope("validation");
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_pass_encoder5000.setPipeline(render_pipeline500);
    render_pass_encoder5011.endOcclusionQuery()
    render_pass_encoder5001.setPipeline(render_pipeline500);
    render_pass_encoder5001.popDebugGroup();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5010.endOcclusionQuery()
    render_pass_encoder5010.setPipeline(render_pipeline500);
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5011,
                },
            },
        ],
    });

    render_pass_encoder5001.setBindGroup(0, bind_group504);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5000.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5013,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group505);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5015,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group506);
    render_pass_encoder5010.setVertexBuffer(0, buffer503);
    render_pass_encoder5000.setVertexBuffer(0, buffer507);
    render_pass_encoder5011.setVertexBuffer(0, buffer5012);
    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5017 = device50.createBuffer({
        label: "buffer5017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group507 = device50.createBindGroup({
        label: "bind_group507",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5017,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group507);
    render_pass_encoder5000.setIndexBuffer(buffer502, "uint16");
    render_pass_encoder5001.setVertexBuffer(0, buffer503);
    render_pass_encoder5000.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5011.setIndexBuffer(buffer5016, "uint16");
    render_pass_encoder5010.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5001.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5000.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5011.setIndexBuffer(buffer5012, "uint16");
    render_pass_encoder5010.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer505, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder5011.drawIndirect(buffer509, 0);
    render_pass_encoder5000.end();
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5010.end();
    render_pass_encoder5001.drawIndexed(3);
    command_encoder501.popDebugGroup()
    render_pass_encoder5011.end();
    const command_buffer500 = command_encoder500.finish();
    device70.queue.submit([]);
    render_pass_encoder5011.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5010.popDebugGroup();
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder5010.popDebugGroup();
    compute_pass_encoder5000.dispatchWorkgroups(100);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder5001.setIndexBuffer(buffer5012, "uint16");
    compute_pass_encoder8000.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder5010.setIndexBuffer(buffer506, "uint16");
    render_pass_encoder5011.draw(3);
    compute_pass_encoder5000.end();
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5018 = device50.createBuffer({
        label: "buffer5018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5018, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5018, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5010.draw(3);
    compute_pass_encoder5000.popDebugGroup()
    device40.queue.submit([]);
    compute_pass_encoder5001.popDebugGroup()
    const buffer5019 = device50.createBuffer({
        label: "buffer5019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5020 = device50.createBuffer({
        label: "buffer5020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group508 = device50.createBindGroup({
        label: "bind_group508",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5020,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group508);
    render_pass_encoder5000.drawIndirect(buffer505, 0);
    device50.queue.submit([command_buffer501, ]);
    const command_buffer801 = command_encoder801.finish();
    compute_pass_encoder5001.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5001.drawIndexedIndirect(buffer5014, 0);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder5011.drawIndexed(3);
    render_pass_encoder5001.end();
    render_pass_encoder5000.drawIndexedIndirect(buffer505, 0);
}