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
    
    const array0 = new Float32Array([0.0, -0.25, -0.25, -0.25, -1.0, -0.75, 0.0, 0.0, 1.0, -0.75, 0.0, 0.5, -1.0, -0.5, -1.0, 0.0, 1.0, 0.25, -0.5, 0.75, -0.25, -0.5, -0.75, -0.25, 0.0, 0.5, -0.5, 0.0, 0.5, -0.25, -0.25, -1.0, 0.75, 0.0, -1.0, -0.75, 0.0, -0.75, 0.25, 0.5, 1.0, 1.0, -0.75, -1.0, 0.0, 0.0, 0.5, -0.5, -0.25, -0.75, 0.25, -1.0, -0.5, -0.25, 0.5, -0.25, 0.5, 1.0, 0.5, 0.25, 0.5, -1.0, 0.75, -0.75, 0.0, -1.0, 1.0, -0.75, 0.75, -0.25, -1.0, 0.75, -1.0, 0.5, 0.0, 0.0, 1.0, -0.25, 0.5, 0.0, 0.75, 1.0, 0.5, -0.75, 0.0, 0.0, 0.5, -1.0, -1.0, 0.25, 0.25, 0.0, 0.5, -0.75, 1.0, 0.0, -0.75, 0.0, 1.0, -1.0, ]);
    const array1 = new Float32Array([0.75, -0.75, -0.75, 0.75, 0.75, 1.0, -0.25, 0.25, -1.0, -1.0, -0.75, -1.0, -0.25, -0.75, 0.75, 0.25, -1.0, -0.5, -0.25, 0.25, -1.0, 1.0, -0.75, -0.25, -0.5, 0.5, -0.75, 0.25, 0.75, 0.5, 0.0, 0.5, 1.0, -0.25, 0.75, 0.75, 0.25, -0.25, -0.5, -1.0, -0.25, 1.0, 1.0, -0.75, -1.0, 0.25, 0.75, 0.75, -0.75, 0.25, -1.0, -0.25, 0.75, -0.5, 0.25, -0.75, 0.25, 0.0, 0.0, -0.75, -0.75, -1.0, -0.75, 0.25, -0.75, 0.75, -0.5, 0.25, 1.0, 1.0, -1.0, -0.5, -0.75, -1.0, 0.75, 0.5, -0.5, -0.25, -1.0, 1.0, 0.0, -0.5, 0.75, 0.0, -0.25, -0.75, 0.0, 0.75, 1.0, 0.5, -0.75, 0.75, 0.75, 0.0, -0.25, 0.5, -0.5, -1.0, 0.5, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array2 = new Float32Array([-0.5, 0.5, 0.5, -0.75, 0.5, -1.0, -1.0, 1.0, 0.5, 0.0, -0.25, -0.75, -0.5, -0.5, -0.5, -0.25, -0.25, -0.75, -1.0, -0.5, 0.25, 0.75, -1.0, -0.25, -0.25, -0.5, -1.0, 0.75, -0.75, 0.75, -0.5, 1.0, -0.5, 0.0, -0.25, -0.5, 1.0, 0.5, -0.75, -0.5, 0.75, 0.0, 1.0, -1.0, 0.0, 0.25, 0.0, -1.0, 0.5, 0.5, 0.0, 0.25, 0.75, 1.0, 1.0, -0.25, -0.25, -1.0, 1.0, 0.5, 0.0, 0.0, 0.75, 1.0, 0.5, 0.0, -0.5, 1.0, 1.0, 0.5, 1.0, -1.0, 0.75, 1.0, -0.25, -0.5, -0.5, -0.75, -1.0, 0.0, 0.75, 0.0, -0.75, 0.0, -1.0, 0.75, -0.5, -1.0, 0.75, 0.5, 0.75, -1.0, -1.0, -0.5, 0.5, 0.0, -1.0, 1.0, 1.0, 1.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    device10.destroy();
    const array3 = new Float32Array([-0.75, -0.25, -0.75, 0.5, 0.0, -0.75, 0.5, 0.0, 0.0, 0.75, -0.75, -0.75, -0.75, 0.25, 1.0, -0.25, 0.25, -0.25, 0.75, -0.5, 0.75, 0.75, 0.5, 0.25, 0.75, 0.75, -0.75, 0.0, -0.25, 0.5, -0.75, 0.0, 0.25, -0.5, 1.0, 0.25, 0.75, -0.5, 1.0, 0.25, 0.5, 1.0, 0.75, -0.25, -0.25, 0.25, -0.25, 1.0, -0.5, -0.5, 0.5, 0.25, 0.0, 0.25, 1.0, 0.5, 0.75, -0.75, 1.0, 0.0, -1.0, -0.5, -0.5, 0.25, -0.25, -1.0, -0.25, 0.0, -0.75, -0.5, -0.5, 0.5, 0.25, -1.0, 0.0, 0.0, 0.0, -0.75, -0.75, 0.75, 0.25, 1.0, 0.0, -1.0, 0.25, -0.75, 0.75, 1.0, -1.0, 1.0, -0.5, -0.5, 0.5, 0.0, -0.75, 1.0, 0.75, 0.25, -0.5, 0.5, ]);
    const array4 = new Float32Array([0.5, -0.5, -0.25, 0.5, 0.5, -0.75, -0.75, -0.5, 0.5, 0.0, -1.0, 1.0, -0.75, -0.5, 1.0, 0.5, -1.0, -0.5, 1.0, 1.0, 0.5, -1.0, 0.5, -0.5, -0.25, 1.0, 0.0, -1.0, -0.5, 1.0, -0.75, -0.75, 1.0, 0.5, -0.5, -0.25, 0.75, 0.25, -1.0, 0.0, 0.75, -0.25, 0.0, 0.25, 1.0, 0.25, -0.75, 0.5, 1.0, 0.0, -0.5, -0.75, 0.5, 0.0, -0.5, -0.75, -0.75, 0.75, -0.5, 0.75, -1.0, 0.5, 0.0, 0.25, 0.0, -0.5, -0.5, 0.5, 1.0, 0.0, 0.75, -0.25, 0.75, 1.0, 0.75, 0.25, -1.0, -1.0, 0.75, 1.0, -0.75, 0.0, 1.0, -0.75, 0.25, -0.25, 0.0, 0.5, -0.5, 0.75, 0.25, -0.25, -1.0, 1.0, -0.25, -1.0, 0.5, -0.25, 0.25, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    buffer000.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer001.destroy()
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    device30.pushErrorScope("validation");
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.destroy();
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    query300.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer300.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    device30.pushErrorScope("internal");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    device20.destroy();
    
    
    query300.destroy()
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([0.0, 0.75, -0.5, 0.75, 0.5, 0.5, 0.0, 0.25, -0.75, 1.0, 0.25, -0.75, 1.0, -0.25, -0.75, -0.5, 0.75, 0.75, 0.0, 0.25, 0.0, 0.25, 0.25, 0.5, 0.25, 0.5, -0.25, 0.75, -0.5, -0.75, -0.75, -0.75, -1.0, -0.25, 0.25, -0.25, 0.25, 0.5, -0.25, 0.0, 1.0, 0.5, 1.0, 1.0, 0.0, 0.0, -0.25, 0.0, -0.5, 0.5, -0.25, 0.5, -1.0, 0.25, 1.0, 1.0, 0.25, 1.0, -1.0, 0.75, -0.25, -0.5, 0.75, 0.25, -1.0, 0.0, -0.75, -0.25, 0.5, -1.0, 1.0, 0.0, 0.25, 0.75, 0.5, 0.75, 1.0, -0.75, 0.75, 0.75, -0.75, 0.5, -0.5, 0.25, -0.5, 0.0, -0.75, 0.5, 0.75, -1.0, -0.5, 0.0, 0.5, 0.5, 0.25, -1.0, -1.0, 1.0, -1.0, 0.0, ]);
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    command_encoder301.insertDebugMarker("mymarker");
    
    device30.pushErrorScope("out-of-memory");
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    query301.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_pass_encoder3010.setStencilReference(1);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder301.setPipeline(render_pipeline302);
    device30.pushErrorScope("internal");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    query300.destroy()
    
    query301.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    render_pass_encoder3010.popDebugGroup();
    buffer301.destroy()
    
    render_pass_encoder3010.setPipeline(render_pipeline300);
    
    render_pass_encoder3010.setStencilReference(1);
    
    
    
    
    
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    const array6 = new Float32Array([0.75, -0.75, -0.25, 0.25, -1.0, -0.25, 0.25, 1.0, -0.25, 0.5, 0.5, 0.5, -1.0, -1.0, -0.5, 1.0, 0.75, -1.0, 0.5, 0.25, -1.0, 0.25, 0.75, 1.0, -0.5, 1.0, 0.25, 0.25, -1.0, 0.0, -0.75, 0.25, -0.25, -0.5, 1.0, -1.0, 1.0, -1.0, 0.5, 0.25, 0.25, -0.75, -1.0, -0.75, 0.75, 0.0, -0.75, -0.5, 0.5, -0.25, 0.25, 0.75, 1.0, -0.75, 1.0, -0.5, -0.75, 0.5, -1.0, -0.25, 0.0, -0.75, 0.25, 0.0, -1.0, -0.25, 0.75, 0.0, 1.0, 1.0, -0.5, 0.0, 0.75, 0.75, -1.0, 0.0, -0.75, 0.25, 0.0, -0.75, 0.25, 0.25, -0.5, 0.75, -1.0, 1.0, -0.5, 0.75, -0.25, -0.25, 0.5, 0.0, -0.75, 0.0, -0.75, -0.75, -0.75, 0.25, 1.0, -0.25, ]);
    
    compute_pass_encoder3000.popDebugGroup()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
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
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
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

    render_pass_encoder3010.setBindGroup(0, bind_group300);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    buffer302.destroy()
    texture300.destroy();
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device00.destroy();
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    query302.destroy()
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    render_pass_encoder3010.setStencilReference(1);
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    const array7 = new Float32Array([-0.25, 0.5, -0.5, 0.25, -0.25, -0.5, -1.0, 0.75, -0.5, -0.75, 0.75, 0.5, -0.5, -0.75, -0.75, 0.0, 0.0, 0.75, 1.0, 0.0, 0.5, 0.5, -1.0, 0.25, 0.5, -0.25, 1.0, -0.75, -0.5, 0.0, -1.0, 0.75, -0.5, 0.25, 0.75, -0.75, 0.25, -0.5, -1.0, 0.25, -0.25, -1.0, 0.75, 0.75, -0.25, -0.5, -0.75, 0.75, 0.0, -0.25, 0.25, -0.5, -0.75, 0.5, 0.0, 0.5, -0.5, -0.25, 0.25, -0.25, 0.75, -0.25, -0.25, 0.25, 1.0, -0.5, -0.5, 0.75, -0.25, 0.75, 0.5, 0.75, -0.75, -0.5, 0.0, 0.0, -1.0, 0.0, 0.75, -0.5, 0.0, -0.75, 0.0, 0.25, 1.0, 0.25, -0.75, -0.25, 0.0, -0.75, 0.75, -0.5, -0.5, 0.5, 0.0, -0.75, -0.75, 0.5, -0.25, 1.0, ]);
    
    
    query303.destroy()
    query302.destroy()
    
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder300.copyTextureToTexture(
        {
            texture: texture302
        },
        {
            texture: texture302
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query302.destroy()
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder3010.setStencilReference(1);
    
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query301
    });
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    
    device30.queue.writeBuffer(buffer303, 0, array4, 0, array4.length);
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    query303.destroy()
    buffer002.destroy()
    render_pass_encoder3011.pushDebugGroup("group_marker");
    
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder302.setPipeline(render_pipeline301);
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device30.queue.writeBuffer(buffer303, 0, array7, 0, array7.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: query302
    });
    render_pass_encoder3000.setPipeline(render_pipeline305);
    render_pass_encoder3011.setPipeline(render_pipeline300);
    
    query300.destroy()
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
    buffer304.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    texture302.destroy();
    query300.destroy()
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_pass_encoder3010.setStencilReference(1);
    
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    
    buffer303.destroy()
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    
    const bind_group_layout306 = device30.createBindGroupLayout({ 
        label: "bind_group_layout306",
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder3011.popDebugGroup();
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    var shader_module3011_code = "";
    try {
        shader_module3011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3011 = await device30.createShaderModule({ label: "shader_module3011", code: shader_module3011_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    var shader_module3012_code = "";
    try {
        shader_module3012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3012 = await device30.createShaderModule({ label: "shader_module3012", code: shader_module3012_code })
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group301);
    
    render_pass_encoder3011.pushDebugGroup("group_marker");
    texture300.destroy();
    texture300.destroy();
    command_encoder300.copyBufferToTexture(
        {
            buffer: buffer304
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3001.setPipeline(render_pipeline302);
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_pass_encoder3001.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
        vertex: {
            module: shader_module3011,
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
            module: shader_module3011,
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
    
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const array8 = new Float32Array([-0.25, -0.25, 0.5, 0.5, 0.25, 0.75, -0.25, 1.0, -0.75, -0.5, 0.75, -0.25, 0.0, 0.0, 0.25, -0.5, 0.75, 1.0, -0.75, -1.0, 0.0, 0.0, 0.75, -0.5, -0.25, -0.75, -0.75, 0.5, 0.5, -0.5, -0.5, -0.75, 0.25, 0.5, 0.5, 0.75, 1.0, -1.0, -0.75, 0.75, 1.0, 1.0, -0.25, 0.75, 1.0, 0.0, 0.75, -0.5, 0.5, 0.5, 0.25, -0.5, 1.0, -0.75, 0.5, 0.25, 0.25, 0.5, 0.75, 1.0, 0.25, -0.25, 1.0, -0.25, 1.0, -1.0, -1.0, 0.5, 0.5, 0.0, 0.75, -0.25, 1.0, 0.5, 0.25, -0.75, 1.0, -0.5, -0.25, 0.25, 0.25, 0.75, -1.0, 0.0, -0.75, -0.75, -0.5, -0.25, -1.0, 1.0, 0.5, -1.0, -0.75, 1.0, -1.0, 0.75, 0.25, 0.25, 0.0, -0.25, ]);
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
        vertex: {
            module: shader_module3010,
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
            module: shader_module3010,
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
    device40.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
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
    
    texture200.destroy();
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_pass_encoder3011.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    device40.destroy();
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder300.resolveQuerySet(
        query303,
        0,
        32,
        buffer305,
        0
    )
    render_pass_encoder3000.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    query303.destroy()
    
    command_encoder300.resolveQuerySet(
        query301,
        0,
        32,
        buffer303,
        0
    )
    
    
    render_pass_encoder3010.setVertexBuffer(0, buffer305);
    buffer305.destroy()
    query300.destroy()
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture303.destroy();
    render_pass_encoder3000.setVertexBuffer(0, buffer300);
    
    
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3001.setStencilReference(1);
    render_pass_encoder3001.pushDebugGroup("group_marker");
    render_pass_encoder3000.setStencilReference(1);
    
    render_pass_encoder3010.popDebugGroup();
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
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
    
    var shader_module3013_code = "";
    try {
        shader_module3013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3013 = await device30.createShaderModule({ label: "shader_module3013", code: shader_module3013_code })
    buffer306.destroy()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder303.copyTextureToBuffer(
        {
            texture: texture302
        },
        {
            buffer: buffer300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query303
    });
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
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
    
    render_pass_encoder3030.setPipeline(render_pipeline304);
    render_pass_encoder3020.setPipeline(render_pipeline300);
    
    buffer302.destroy()
    
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    render_pass_encoder3011.pushDebugGroup("group_marker");
    query301.destroy()
    
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
        vertex: {
            module: shader_module3011,
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
            module: shader_module3011,
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
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query301
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    command_encoder304.resolveQuerySet(
        query303,
        0,
        32,
        buffer304,
        0
    )
    device30.pushErrorScope("validation");
    const array9 = new Float32Array([-1.0, -0.25, -0.25, 0.75, -0.25, -0.25, -0.5, 0.75, 0.5, 0.25, 0.0, -1.0, -0.5, -0.25, -0.75, -0.75, 0.25, 0.0, -0.75, -0.75, -0.25, 0.0, -1.0, 0.75, -0.5, -0.5, 0.5, 0.5, 1.0, 0.0, -0.25, 0.5, -0.5, 1.0, -1.0, -0.75, -0.25, 0.25, 0.75, 0.5, 0.75, -0.75, 0.25, -0.75, 0.0, -1.0, 0.0, 0.75, 0.25, -1.0, 0.75, 0.75, 1.0, 0.0, -1.0, -0.25, 0.25, -0.75, 1.0, 0.0, 0.25, -0.5, 1.0, -0.5, 0.75, 0.75, -1.0, 0.5, 1.0, -0.75, -0.75, 0.0, 0.0, -0.5, -0.5, 0.75, 0.75, -0.25, -0.75, -0.25, 0.75, 1.0, -1.0, 0.0, -1.0, 0.25, 1.0, 0.75, 0.75, -0.5, 0.25, -1.0, -0.25, -1.0, 0.25, 0.0, 0.5, 0.0, 0.0, 0.75, ]);
    
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3021.setPipeline(render_pipeline301);
    
    
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
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
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3021.setBindGroup(0, bind_group302);
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query301
    });
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group303);
    render_pass_encoder3030.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
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
    render_pass_encoder3011.setStencilReference(1);
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3000.setStencilReference(1);
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder3040.setPipeline(render_pipeline302);
    
    render_pass_encoder3001.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3031.setPipeline(render_pipeline304);
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3011.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer3011, 0, array7, 0, array7.length);
    render_pass_encoder3021.pushDebugGroup("group_marker");
    command_encoder301.insertDebugMarker("mymarker");
    render_pass_encoder3010.setIndexBuffer(buffer3010, "uint16");
    
    const render_pipeline3014 = device30.createRenderPipeline({
        label: "render_pipeline3014",
        vertex: {
            module: shader_module3013,
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
            module: shader_module3013,
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
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group304);
    
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder3020.setVertexBuffer(0, buffer308);
    render_pass_encoder3001.setStencilReference(1);
    const render_pipeline3015 = device30.createRenderPipeline({
        label: "render_pipeline3015",
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
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    
    render_pass_encoder3010.setIndexBuffer(buffer301, "uint16");
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    query302.destroy()
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3010.drawIndexed(3);
    
    device30.queue.writeBuffer(buffer3013, 0, array0, 0, array0.length);
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
    render_pass_encoder3031.pushDebugGroup("group_marker");
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder301.copyBufferToBuffer(
        buffer307,
        0,
        buffer306,
        0,
        400
    );
    render_pass_encoder3000.setStencilReference(1);
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    command_encoder304.copyBufferToBuffer(
        buffer307,
        0,
        buffer300,
        0,
        400
    );
    render_pass_encoder3000.drawIndirect(buffer308, 0);
    render_pass_encoder3000.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    render_pass_encoder3030.pushDebugGroup("group_marker");
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view3051 = texture305.createView({ label: "texture_view3051" });
    var shader_module3014_code = "";
    try {
        shader_module3014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3014 = await device30.createShaderModule({ label: "shader_module3014", code: shader_module3014_code })
    render_pass_encoder3020.drawIndexed(3);
    
    render_pass_encoder3001.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    render_pass_encoder3011.setVertexBuffer(0, buffer303);
    device30.queue.writeBuffer(buffer309, 0, array2, 0, array2.length);
    
    buffer309.destroy()
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const render_pass_encoder3041 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query301
    });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    render_pass_encoder3001.setStencilReference(1);
    
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3013,
            },
        ],
        occlusionQuerySet: query301
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    command_encoder300.copyBufferToBuffer(
        buffer3011,
        0,
        buffer309,
        0,
        400
    );
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer303,
        0
    )
    command_encoder301.copyBufferToBuffer(
        buffer307,
        0,
        buffer305,
        0,
        400
    );
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    query302.destroy()
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3011.drawIndirect(buffer301, 0);
    const render_pass_encoder3051 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3050,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3051.setPipeline(render_pipeline305);
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_pass_encoder3050.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder3050.setPipeline(render_pipeline306);
    render_pass_encoder3011.setStencilReference(1);
    render_pass_encoder3041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder302.insertDebugMarker("mymarker");
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline306.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group305);
    render_pass_encoder3031.popDebugGroup();
    device30.pushErrorScope("internal");
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer3012, 0, array6, 0, array6.length);
    const render_pipeline3016 = device30.createRenderPipeline({
        label: "render_pipeline3016",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer308,
        0
    )
    buffer308.destroy()
    
    render_pass_encoder3040.setStencilReference(1);
    const render_pipeline3017 = device30.createRenderPipeline({
        label: "render_pipeline3017",
        vertex: {
            module: shader_module3012,
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
            module: shader_module3012,
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
    render_pass_encoder3041.setPipeline(render_pipeline309);
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    {
        await buffer3010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer3010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer3010.unmap();
        console.log(new Float32Array(data));
    }
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder3030.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3051.setStencilReference(1);
    render_pass_encoder3041.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    render_pass_encoder3051.setStencilReference(1);
    render_pass_encoder3051.setViewport(0, 0, texture305.width / 2, texture305.height / 2, 0, 1);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const array10 = new Float32Array([0.5, 0.0, -0.75, -1.0, 1.0, -0.25, 0.0, -0.25, 0.25, 0.25, -0.75, 1.0, 0.75, 1.0, -0.5, -0.75, 1.0, -1.0, -0.5, -0.25, 0.25, -0.25, 0.25, 1.0, 0.25, -0.5, -0.25, -0.25, 0.0, -0.75, -0.5, -0.5, -0.25, 0.25, 0.75, 1.0, 0.0, 0.25, 0.25, -1.0, 0.0, 1.0, 0.5, 0.25, -0.75, -0.25, -1.0, 0.5, -0.25, -1.0, 0.0, -1.0, -1.0, 1.0, 0.75, -0.25, 0.25, -1.0, -0.25, 1.0, -0.75, 0.75, 0.5, 0.25, -0.25, 1.0, -0.5, -1.0, -1.0, -0.5, 1.0, -0.5, 0.5, -0.5, -0.5, -0.75, -0.5, -1.0, 0.75, -1.0, -0.75, -1.0, 1.0, 0.0, -0.25, 0.75, 0.5, -0.75, -0.5, 1.0, 0.75, -0.25, -0.25, 0.5, -1.0, -1.0, 1.0, -0.75, 0.75, 1.0, ]);
    buffer3010.destroy()
    
    buffer302.destroy()
    buffer307.destroy()
    command_encoder304.resolveQuerySet(
        query303,
        0,
        32,
        buffer3012,
        0
    )
    render_pass_encoder3031.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    buffer3012.destroy()
    texture305.destroy();
    
    render_pass_encoder3020.setStencilReference(1);
    const render_pipeline3018 = device30.createRenderPipeline({
        label: "render_pipeline3018",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    render_pass_encoder3020.setStencilReference(1);
    
    render_pass_encoder3041.setStencilReference(1);
    render_pass_encoder3031.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    render_pass_encoder3031.pushDebugGroup("group_marker");
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder3050.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout307 = device30.createBindGroupLayout({ 
        label: "bind_group_layout307",
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
    
    render_pass_encoder3020.end();
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    render_pass_encoder3031.setBindGroup(0, bind_group306);
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    render_pass_encoder3051.setBindGroup(0, bind_group307);
    render_pass_encoder3031.setVertexBuffer(0, buffer300);
    render_pass_encoder3031.drawIndirect(buffer3012, 0);
    render_pass_encoder3021.setVertexBuffer(0, buffer3011);
    render_pass_encoder3021.popDebugGroup();
    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3021,
                },
            },
        ],
    });

    render_pass_encoder3001.setBindGroup(0, bind_group308);
    render_pass_encoder3050.setVertexBuffer(0, buffer308);
    render_pass_encoder3050.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3020.drawIndirect(buffer309, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3050.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3021.setIndexBuffer(buffer307, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3051.setVertexBuffer(0, buffer309);
    render_pass_encoder3021.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder3050.drawIndirect(buffer308, 0);
    render_pass_encoder3010.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3021.end();
    render_pass_encoder3000.end();
    render_pass_encoder3051.draw(3);
    render_pass_encoder3020.drawIndirect(buffer3011, 0);
    render_pass_encoder3051.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group309);
    render_pass_encoder3050.end();
    render_pass_encoder3001.setVertexBuffer(0, buffer3013);
    render_pass_encoder3011.endOcclusionQuery()
    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3025,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group3010);
    render_pass_encoder3010.setIndexBuffer(buffer3021, "uint16");
    render_pass_encoder3040.setVertexBuffer(0, buffer305);
    render_pass_encoder3001.draw(3);
    render_pass_encoder3040.draw(3);
    render_pass_encoder3040.setIndexBuffer(buffer3021, "uint16");
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3031.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3010, 0);
    render_pass_encoder3051.draw(3);
    render_pass_encoder3040.end();
    render_pass_encoder3040.draw(3);
    render_pass_encoder3010.drawIndirect(buffer3010, 0);
    render_pass_encoder3001.drawIndirect(buffer307, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3030.setVertexBuffer(0, buffer303);
    render_pass_encoder3030.draw(3);
    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: render_pipeline309.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3027,
                },
            },
        ],
    });

    render_pass_encoder3041.setBindGroup(0, bind_group3011);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3011.drawIndirect(buffer304, 0);
    render_pass_encoder3041.setVertexBuffer(0, buffer308);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3031.end();
    render_pass_encoder3040.drawIndirect(buffer3021, 0);
    render_pass_encoder3041.drawIndirect(buffer308, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3040.end();
    render_pass_encoder3041.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3011.drawIndirect(buffer302, 0);
    render_pass_encoder3031.end();
    render_pass_encoder3051.drawIndirect(buffer304, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3030.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3041.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3020.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3011.setIndexBuffer(buffer3025, "uint16");
    render_pass_encoder3000.draw(3);
    render_pass_encoder3001.end();
    render_pass_encoder3001.drawIndirect(buffer3025, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3030.draw(3);
    render_pass_encoder3011.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3041.end();
    render_pass_encoder3051.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder3031.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3025, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3040.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3023, 0);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3050.drawIndirect(buffer3012, 0);
    command_encoder300.popDebugGroup()
    render_pass_encoder3050.end();
    render_pass_encoder3000.end();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer307, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3024, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3051.end();
    render_pass_encoder3031.end();
    render_pass_encoder3040.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3040.drawIndexed(3);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3040.draw(3);
    render_pass_encoder3000.end();
    render_pass_encoder3031.draw(3);
    render_pass_encoder3020.drawIndirect(buffer3025, 0);
    render_pass_encoder3010.drawIndirect(buffer306, 0);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3040.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3031.end();
    render_pass_encoder3000.setIndexBuffer(buffer3025, "uint16");
    render_pass_encoder3001.drawIndirect(buffer305, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3050.drawIndirect(buffer3027, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3021.draw(3);
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3031.end();
    render_pass_encoder3001.drawIndirect(buffer308, 0);
    render_pass_encoder3030.drawIndirect(buffer3017, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3041.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3041.draw(3);
    render_pass_encoder3010.end();
    render_pass_encoder3010.end();
    render_pass_encoder3051.drawIndirect(buffer300, 0);
    render_pass_encoder3030.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3051.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3040.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3050.end();
    render_pass_encoder3000.draw(3);
    render_pass_encoder3040.drawIndirect(buffer3021, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3030.drawIndirect(buffer3010, 0);
    render_pass_encoder3051.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3051.drawIndexed(3);
    render_pass_encoder3021.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3041.drawIndirect(buffer3023, 0);
    render_pass_encoder3000.drawIndirect(buffer3010, 0);
    render_pass_encoder3001.drawIndirect(buffer3020, 0);
    render_pass_encoder3031.drawIndirect(buffer306, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3013, "uint16");
}