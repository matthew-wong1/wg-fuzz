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
    
    const array0 = new Float32Array([-0.25, -0.25, -0.5, 0.5, -1.0, -1.0, -0.75, 0.0, -0.5, 0.0, -0.5, -0.25, 0.0, -0.75, 0.25, 0.75, -0.75, 0.5, -0.75, -1.0, 0.5, 1.0, 0.25, -0.25, -0.5, 0.75, 0.5, -0.5, 1.0, -0.25, -0.25, 0.75, -0.5, 0.25, -0.5, -0.75, -1.0, -0.25, 0.0, 0.25, 0.75, -0.75, 0.5, -0.5, 0.5, 0.5, 0.75, 1.0, 0.0, 0.0, -0.5, 1.0, -0.25, 0.5, 0.5, 0.5, 0.5, -0.25, 1.0, 0.25, 0.25, 0.5, -0.75, 0.0, -0.5, -1.0, -0.25, -1.0, -0.25, -0.5, 0.0, -0.5, 0.5, 0.5, 0.0, 1.0, 0.5, -0.5, 0.0, 1.0, 1.0, 0.5, 0.0, -0.5, 0.75, -0.25, -1.0, 0.5, 0.25, -0.75, 0.0, -0.75, -0.5, 0.25, -0.75, 0.5, -0.75, 0.5, -1.0, 0.25, ]);
    
    const array1 = new Float32Array([-0.5, 0.0, -0.25, 0.0, -0.5, -0.75, -0.75, 0.5, 0.5, 0.25, -0.25, -1.0, -0.25, -1.0, -1.0, -1.0, 0.75, 1.0, 0.5, 1.0, 0.75, 1.0, 0.0, 0.75, 0.25, -1.0, 0.75, 0.75, -0.25, -0.75, -0.75, -0.5, -0.75, 0.5, 0.5, -0.75, -1.0, -0.5, 0.0, -0.75, -0.75, -0.5, -0.75, -0.5, -1.0, 1.0, 0.75, 0.75, -0.75, 0.5, 0.0, -0.5, 0.25, -0.25, 0.5, 0.5, -0.25, 1.0, 1.0, -1.0, 0.25, -0.5, 0.5, -0.75, 0.75, 0.75, 0.25, 0.5, 0.0, 0.5, 1.0, 0.75, 0.75, 0.25, 0.5, -0.25, -1.0, 0.0, 0.25, -0.25, -0.25, 0.0, -0.25, -0.25, -0.25, -0.25, 0.0, -1.0, -0.5, -0.5, -1.0, -1.0, 0.0, 0.25, 0.5, -1.0, -1.0, 0.25, -0.25, -0.25, ]);
    const array2 = new Float32Array([-1.0, -1.0, 0.5, 0.75, 0.75, -1.0, -0.5, 0.5, 0.5, 0.25, 0.5, -0.5, -0.75, 0.25, 1.0, -0.5, -0.25, 0.5, 0.0, -0.75, 0.0, -0.25, 0.75, 0.25, -1.0, 0.25, 0.5, 0.5, 0.0, 0.25, 0.0, 1.0, -1.0, 1.0, 0.0, -0.5, -1.0, 0.5, 0.25, 0.75, -0.25, 0.25, -0.25, 0.75, 0.5, -0.25, 0.75, -0.25, -0.75, -0.5, 0.75, 1.0, 0.25, 0.25, 0.75, -0.25, 0.75, 0.75, 0.75, 0.0, -0.25, -0.25, -0.75, 0.75, 1.0, 0.5, 0.25, 1.0, 0.5, 0.75, -0.5, -0.5, -1.0, -0.5, 1.0, -1.0, 0.0, -0.75, -0.75, 0.25, 1.0, -0.5, -0.25, -0.5, -0.25, 1.0, -0.75, 1.0, 1.0, 0.0, 0.5, 0.75, -0.75, -1.0, -0.75, -0.5, 0.5, -0.25, -0.5, -0.5, ]);
    
    
    const array3 = new Float32Array([0.25, -0.75, 0.5, 0.5, -0.75, -0.25, 0.5, 0.25, -0.75, -0.5, 0.75, 0.0, -0.75, 0.75, -1.0, -0.25, 0.75, 0.75, -1.0, 1.0, 1.0, -0.25, 0.5, 1.0, -0.75, -1.0, 0.75, -0.75, 0.5, -0.5, 0.25, 0.25, 0.25, -1.0, -0.25, -1.0, 0.5, 0.25, -1.0, 0.0, 1.0, 0.0, 0.75, -0.5, -0.75, 0.0, 0.25, -0.5, 0.0, -0.25, 0.75, -0.25, 0.5, 1.0, 0.0, 0.25, 0.25, -0.75, -0.75, -0.5, 0.75, -0.25, 0.0, -1.0, 1.0, 0.75, 0.5, 1.0, 0.25, 0.75, -0.75, -0.25, 0.25, 1.0, -0.5, 0.5, -0.5, 0.75, 1.0, 1.0, 0.75, -0.75, 0.75, 0.5, -0.5, -1.0, 0.75, -0.25, -0.75, -0.25, 0.0, -0.75, 0.5, -0.75, -0.25, 0.25, -1.0, 0.25, 0.5, 0.75, ]);
    const array4 = new Float32Array([-0.75, 0.75, 0.0, -0.25, -0.5, 0.25, 0.5, 0.75, 0.75, 0.0, -0.5, 0.5, -0.5, 0.75, -0.25, 0.75, -0.25, -0.5, -0.25, -0.75, 0.5, 0.75, -0.5, 0.5, -0.5, 0.0, 1.0, -1.0, 0.25, 1.0, -1.0, 1.0, 0.25, -0.5, -0.5, 0.0, 0.25, 0.25, -1.0, -1.0, 1.0, 0.25, 0.75, 1.0, -0.75, -0.75, -1.0, 1.0, 0.0, 0.5, 0.0, -0.5, -0.25, 0.75, 0.5, 0.5, -0.25, 0.75, -1.0, 0.75, 0.25, -0.75, 0.25, -0.25, 0.0, 1.0, 1.0, 0.5, 1.0, -1.0, -0.25, 0.0, -0.25, 0.5, -0.25, -0.75, 0.75, 0.0, -0.25, -0.75, 0.75, 0.75, -0.5, -0.25, -0.75, -1.0, 1.0, -1.0, 0.75, 0.5, -1.0, -0.5, -0.5, -0.25, -0.5, 1.0, 1.0, 0.75, 0.5, 0.25, ]);
    const array5 = new Float32Array([-0.25, -0.5, -0.25, -0.5, -0.25, 0.0, 0.0, -0.25, 0.0, -0.5, -0.5, 0.0, 1.0, -0.5, 0.25, 0.75, -0.75, -0.25, -1.0, 1.0, 0.5, 1.0, -1.0, 0.25, 1.0, 0.0, -0.25, 0.25, -0.75, 0.0, -0.5, 1.0, 0.5, 0.0, -0.25, -1.0, 1.0, 0.0, 0.25, -0.75, -1.0, 0.25, -0.5, 0.25, 1.0, -1.0, -0.75, -0.75, 0.75, 0.0, 1.0, -0.75, -0.75, -1.0, -0.75, 0.25, -1.0, -1.0, 0.25, 0.0, 0.5, 0.0, -0.25, 0.5, 0.25, -0.75, -0.5, 0.75, 1.0, 0.75, -0.75, 0.25, 0.5, 0.5, -1.0, 0.75, 0.25, -0.5, 0.75, 0.25, -0.25, -0.5, -0.75, -0.5, 0.0, 0.5, 0.5, 0.75, -1.0, 1.0, -1.0, -1.0, -0.25, -1.0, 0.75, 0.25, 0.0, 0.25, -0.75, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array6 = new Float32Array([-1.0, 0.75, -0.5, 0.5, 0.0, -1.0, -0.5, 0.5, 0.75, 0.0, -0.75, 1.0, -0.25, 0.5, 0.0, -1.0, -0.25, 1.0, 0.0, 0.5, -0.25, -0.5, 0.5, 0.5, -1.0, 0.5, -0.75, 0.0, -0.5, -0.25, 0.0, -0.25, -0.25, -0.25, 0.5, -0.5, 0.0, 0.5, 0.75, -1.0, -0.75, 0.75, 0.0, -0.25, -0.25, 0.0, 0.75, -0.5, 0.0, -0.25, 0.25, 0.75, 0.75, 0.25, -1.0, 1.0, -0.5, 0.75, 1.0, -0.5, 0.25, -0.25, 0.25, 0.5, -0.5, 0.25, 0.75, 0.25, 0.75, 0.0, -0.5, -0.5, 0.75, 0.5, 0.5, 0.5, -1.0, -0.5, -0.25, 0.75, 1.0, 0.25, 0.0, 1.0, 0.75, -1.0, 1.0, 0.5, 0.0, -0.25, 0.25, 1.0, -0.5, -1.0, -0.5, 0.5, -0.75, -0.25, -0.5, -1.0, ]);
    
    
    const array7 = new Float32Array([0.25, -0.25, 0.75, 0.25, -0.75, 0.25, -1.0, -1.0, 0.5, 0.0, 0.0, -1.0, 0.5, -0.75, -0.75, 0.5, 0.75, -1.0, 0.0, 0.0, -0.5, 0.25, -0.5, 0.5, 0.0, 0.75, 0.25, 0.25, -1.0, -0.75, 1.0, 0.0, -0.25, -0.75, 0.25, -1.0, -0.25, -0.5, 0.25, -1.0, -0.25, -0.5, 1.0, 1.0, 0.0, -1.0, 1.0, -0.25, 0.0, -0.5, 1.0, -0.25, 0.0, 0.75, -0.75, -0.25, 1.0, -0.75, 1.0, 1.0, 0.75, -1.0, 0.75, 0.75, 0.75, -1.0, -0.75, 0.25, 0.0, -1.0, 0.5, 1.0, -1.0, 0.5, -1.0, -0.75, 0.0, 0.5, 0.0, 0.75, 1.0, -0.75, -0.75, 0.25, 0.5, -0.5, 0.0, -0.75, 0.0, 0.5, 1.0, 0.5, -0.5, 1.0, 0.75, 0.25, 0.75, -0.25, -0.5, 0.75, ]);
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    buffer000.destroy()
    
    
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
    
    const array8 = new Float32Array([0.75, 0.25, 0.75, 0.5, -1.0, -1.0, 1.0, 0.25, -0.25, -0.5, 1.0, -0.25, 0.75, -0.5, -1.0, 0.25, 0.25, 0.75, -0.25, 0.5, 0.0, 0.75, 1.0, 0.25, -0.25, -0.5, -0.75, 0.75, 0.5, -0.75, -0.75, 0.75, -0.25, -0.25, -0.5, 0.25, 0.5, 0.5, 0.75, -0.5, 0.0, 1.0, 1.0, 0.0, 0.5, 0.25, 0.25, 1.0, -0.25, 0.75, 1.0, -0.5, 0.5, 0.0, 0.0, 0.75, -1.0, 0.75, -0.75, -0.25, 0.0, 0.5, -0.5, -0.5, 1.0, 0.75, 0.5, -0.25, -0.5, -0.5, 0.25, -0.5, -1.0, -0.75, 1.0, 0.25, 0.5, 1.0, -0.5, -0.25, -0.5, -0.5, 0.75, 0.5, 0.75, 0.0, -1.0, 1.0, 1.0, -1.0, 0.5, -1.0, -0.25, 1.0, -0.75, 0.25, -0.5, 0.25, 0.75, -0.5, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device00.destroy();
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("validation");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device10.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const array9 = new Float32Array([-0.5, -1.0, -0.25, 0.25, 0.5, 0.75, 0.25, 0.25, 0.25, 0.0, 0.0, -0.25, 1.0, 0.5, 0.5, 0.75, -1.0, -0.75, -0.75, -0.75, 0.0, 0.0, -0.5, 0.75, 1.0, -1.0, 1.0, 0.5, 1.0, -0.25, -0.25, 0.25, -0.75, -1.0, 0.5, -0.75, 0.0, 0.25, 1.0, -1.0, 0.25, 0.75, -0.25, 0.75, 0.5, 0.5, 1.0, 0.0, 0.5, 0.5, 0.5, 0.75, 0.25, 0.25, -0.5, 0.75, 0.0, -0.25, -0.75, -0.5, -1.0, -1.0, 0.75, 0.75, 1.0, -0.5, -0.75, 0.0, -0.5, -1.0, 0.0, -0.25, -0.25, 1.0, -0.5, -1.0, -0.75, -1.0, -0.75, 0.5, -1.0, -1.0, 1.0, 0.75, 0.5, 0.25, 0.0, 1.0, -0.25, 0.0, -0.25, 0.5, -0.5, 1.0, -1.0, -0.75, 0.5, -1.0, -1.0, 0.5, ]);
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder2010.popDebugGroup()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    device10.pushErrorScope("internal");
    texture200.destroy();
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
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
    
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_buffer203 = command_encoder203.finish();
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
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
    render_bundle_encoder200.popDebugGroup();
    query200.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device20.queue.submit([]);
    command_encoder204.insertDebugMarker("mymarker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("validation");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder2010.insertDebugMarker("marker")
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
        occlusionQuerySet: query200
    });
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.setStencilReference(1);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    query200.destroy()
    buffer200.destroy()
    render_pass_encoder2040.executeBundles([])
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    command_encoder202.insertDebugMarker("mymarker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder2040.pushDebugGroup("group_marker");
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2041.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2041.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    buffer201.destroy()
    render_pass_encoder2041.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2041.executeBundles([render_bundle_encoder202, ])
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2040.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2040.setStencilReference(1);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    render_pass_encoder2040.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.pushErrorScope("internal");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout203]
    });
    compute_pass_encoder2010.popDebugGroup()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder2020.executeBundles([render_bundle_encoder200, ])
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    query201.destroy()
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout203]
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2020.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder2010.setPipeline(compute_pipeline201);
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    command_encoder300.clearBuffer(buffer301);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    command_encoder300.popDebugGroup()
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setStencilReference(1);
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2041.executeBundles([render_bundle_encoder202, ])
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder2021.executeBundles([])
    
    
    
    render_pass_encoder2021.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device00.destroy();
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    render_pass_encoder2040.executeBundles([render_bundle_encoder202, ])
    render_pass_encoder2040.executeBundles([])
    device00.destroy();
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2020.setStencilReference(1);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder202.popDebugGroup();
    
    
    const render_pass_encoder2042 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    render_pass_encoder2050.executeBundles([])
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    compute_pass_encoder2000.popDebugGroup()
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    buffer202.destroy()
    query301.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    query201.destroy()
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    render_bundle_encoder201.popDebugGroup();
    
    render_pass_encoder2021.executeBundles([])
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query300.destroy()
    render_pass_encoder2040.executeBundles([render_bundle_encoder202, ])
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device30.pushErrorScope("internal");
    render_pass_encoder2000.popDebugGroup();
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder2042.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    device20.queue.writeBuffer(buffer206, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    render_pass_encoder2021.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    render_pass_encoder2020.executeBundles([])
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2050.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout207,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device30.queue.submit([command_buffer300, ]);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer206,
        0
    )
    buffer204.destroy()
    render_pass_encoder2000.executeBundles([])
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
    render_pass_encoder2021.pushDebugGroup("group_marker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    render_pass_encoder2020.popDebugGroup();
    
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
    render_pass_encoder2021.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    query300.destroy()
    render_pass_encoder2042.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
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
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    buffer300.destroy()
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    device50.queue.submit([]);
    command_encoder202.insertDebugMarker("mymarker");
    render_pass_encoder2050.pushDebugGroup("group_marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer204,
        0
    )
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout209,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2050.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout209,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2042.beginOcclusionQuery(0)
    render_pass_encoder2040.popDebugGroup();
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder205.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
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
        occlusionQuerySet: undefined
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2042.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    buffer206.destroy()
    
    render_pass_encoder2060.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    compute_pass_encoder2000.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    
    render_pass_encoder2041.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2042.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.setStencilReference(1);
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pass_encoder2061 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query202
    });
    
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    render_pass_encoder2021.popDebugGroup();
    const render_pass_encoder2051 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query202
    });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    command_encoder200.pushDebugGroup("mygroupmarker")
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.beginOcclusionQuery(1)
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer207, 0, array4, 0, array4.length);
    
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    buffer302.destroy()
    render_pass_encoder2051.insertDebugMarker("marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    buffer207.destroy()
    command_encoder206.clearBuffer(buffer200);
    
    
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_pass_encoder2050.executeBundles([])
    
    device50.pushErrorScope("internal");
    render_pass_encoder2021.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
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
    
    
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2042.executeBundles([])
    
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2000.executeBundles([])
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout201]
    });
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    device20.queue.writeBuffer(buffer208, 0, array4, 0, array4.length);
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    render_pass_encoder2051.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    command_encoder204.insertDebugMarker("mymarker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2040.executeBundles([render_bundle_encoder201, ])
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    texture300.destroy();
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2042.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2051.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout208,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device20.pushErrorScope("validation");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2010.end();
    render_pass_encoder2000.endOcclusionQuery()
    device20.queue.submit([command_buffer203, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer501 = command_encoder501.finish();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group202);
    command_encoder301.popDebugGroup()
    render_pass_encoder2042.endOcclusionQuery()
    compute_pass_encoder2000.end();
    const command_buffer201 = command_encoder201.finish();
    command_encoder200.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder2010.end();
    render_pass_encoder2050.popDebugGroup();
    compute_pass_encoder2010.end();
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder2021.popDebugGroup();
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    device30.queue.submit([command_buffer300, ]);
    device50.queue.submit([command_buffer500, ]);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2042.endOcclusionQuery()
    compute_pass_encoder2010.end();
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder2051.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group204);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2040.popDebugGroup();
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2000.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2042.popDebugGroup();
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group206);
    render_pass_encoder2021.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    const command_buffer301 = command_encoder301.finish();
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2041.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([]);
    compute_pass_encoder2010.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2061.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder2010.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2042.popDebugGroup();
    device20.queue.submit([command_buffer205, ]);
    const command_buffer202 = command_encoder202.finish();
    const command_buffer206 = command_encoder206.finish();
    render_pass_encoder2021.endOcclusionQuery()
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2050.popDebugGroup();
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2042.endOcclusionQuery()
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group207);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2042.endOcclusionQuery()
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    device20.queue.submit([command_buffer206, ]);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer206, ]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2024, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2024, 0);
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group208);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder2021.popDebugGroup();
    device50.queue.submit([]);
    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2028,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group209);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2029, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2029, 0);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2060.popDebugGroup();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2042.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2021.endOcclusionQuery()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2031,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2010);
    compute_pass_encoder5000.popDebugGroup()
    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2033,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2011);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2060.popDebugGroup();
    compute_pass_encoder2010.end();
    render_pass_encoder2060.popDebugGroup();
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2035,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2012);
    device20.queue.submit([command_buffer206, ]);
    device50.queue.submit([]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2050.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2036, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2036, 0);
    render_pass_encoder2051.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder3010.popDebugGroup()
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2037, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2037, 0);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2051.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer206, ]);
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([command_buffer201, ]);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2042.popDebugGroup();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2038, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2038, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
}