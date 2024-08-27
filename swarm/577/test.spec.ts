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
    
    const array0 = new Float32Array([1.0, 0.75, -0.5, 0.5, -1.0, 0.75, 0.75, 0.25, -0.75, -0.75, -1.0, 0.5, -0.75, -0.25, 0.5, 0.75, 0.75, 0.75, -1.0, -0.5, 1.0, -1.0, -0.25, -0.25, -0.5, 0.0, 0.0, 0.5, -0.75, -0.75, -0.5, -0.5, -0.25, 0.0, -0.25, 0.25, 0.5, 0.25, 1.0, 0.75, 0.0, -0.75, -0.5, -0.75, 0.75, -0.75, 0.5, -0.75, -0.25, -0.25, -0.75, -1.0, -0.75, -0.75, -0.75, -0.5, -0.75, -1.0, -0.25, 0.75, -1.0, -1.0, -1.0, -0.25, -0.25, 1.0, 0.75, 0.25, -0.5, 0.75, 0.75, -0.5, -0.25, 0.75, -0.75, -0.75, -0.25, 0.5, 1.0, -1.0, -0.75, 1.0, -0.25, -0.75, -0.75, 0.5, 0.75, 0.0, -0.75, -0.25, -0.25, -0.5, 0.25, 0.5, -1.0, 0.75, -0.5, 0.5, 0.5, 0.25, ]);
    const array1 = new Float32Array([-1.0, 1.0, -0.75, -1.0, -0.5, 1.0, 0.0, 0.75, -0.75, 0.25, 1.0, -1.0, 0.75, -0.25, -1.0, 1.0, -0.5, 0.75, -0.5, 0.0, -1.0, 0.0, 0.25, -0.25, -1.0, 1.0, 1.0, 1.0, 0.75, 1.0, -1.0, -0.5, 0.0, 0.0, -1.0, 0.75, 0.0, -1.0, 1.0, 0.0, -0.25, 0.75, -0.75, 1.0, -0.75, 0.0, 0.75, -1.0, -0.25, 0.75, 1.0, -0.25, 0.25, 0.0, -0.25, 1.0, 0.5, 0.5, -0.25, 0.0, 0.0, -0.25, -0.75, 0.5, 1.0, 0.75, 1.0, -1.0, 1.0, 1.0, 0.25, -0.75, -1.0, -1.0, 0.75, 1.0, -0.75, 0.75, 0.5, 0.5, -1.0, 1.0, 0.25, -0.5, -1.0, 0.25, 0.0, 0.25, -0.25, -1.0, 1.0, 0.0, -0.75, -1.0, -1.0, -0.5, -0.25, 0.5, 0.25, -0.75, ]);
    const array2 = new Float32Array([0.5, -0.75, -0.25, -1.0, 0.25, 0.75, 0.25, 0.75, 0.5, 0.75, -1.0, -0.5, 0.25, 0.25, 0.75, 0.0, -0.5, 0.25, 0.25, 1.0, 0.5, -0.75, -0.5, -0.75, 0.75, 0.0, -0.5, -0.75, 0.25, -0.5, -0.5, 1.0, 0.5, 0.25, 0.25, 0.0, 0.5, 1.0, 0.0, 0.5, 1.0, -0.75, -0.5, 1.0, 0.75, -0.75, -0.5, 0.5, 1.0, -1.0, 0.75, -0.5, 0.75, 1.0, 0.5, 0.0, 1.0, 0.75, -0.75, 1.0, -0.75, -0.75, 0.75, 0.5, 0.25, 0.0, 0.75, 0.75, 0.75, 0.25, -0.5, 1.0, 0.75, -0.75, -0.25, -0.25, 0.25, 0.0, 0.0, 0.0, -0.25, -0.5, -0.25, -1.0, -0.5, 0.5, -1.0, 1.0, 1.0, -0.5, -0.5, -1.0, 0.0, -0.5, -0.25, -1.0, 0.75, -0.5, -0.25, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
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
    device00.destroy();
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([-0.75, -0.5, -0.5, 0.75, 0.25, 0.25, 1.0, 1.0, 0.25, -1.0, 1.0, 0.25, 0.5, -0.25, 0.0, 0.5, -0.5, 0.25, 0.25, -1.0, 1.0, 0.5, 0.75, -1.0, 0.25, 0.25, -1.0, -0.5, -0.25, 0.75, 0.75, 1.0, 0.75, 1.0, 0.5, 0.75, 0.0, -0.25, 1.0, 0.5, 0.25, 0.75, -1.0, 0.5, 0.25, -0.75, 0.0, -0.75, -0.75, 1.0, -0.75, -0.75, 1.0, 1.0, -0.75, -0.75, -0.75, 0.25, -0.25, -0.5, -1.0, 0.75, -0.75, 1.0, 1.0, -0.25, -1.0, 0.25, -0.75, -1.0, -0.25, 1.0, 0.25, 0.5, 0.25, 0.75, -0.75, -0.25, -0.75, 0.75, -0.75, 0.0, 0.5, 0.75, 0.25, 0.0, 0.75, 0.5, 0.5, 0.75, -1.0, 0.75, 1.0, 0.0, 0.5, 0.0, -0.75, 0.25, 1.0, -0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer301.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    render_bundle_encoder100.setPipeline(render_pipeline101);
    device10.destroy();
    
    buffer300.destroy()
    
    device30.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const array4 = new Float32Array([-0.25, -0.75, 0.75, -0.5, 0.5, -1.0, -1.0, -0.25, 0.75, -1.0, -0.25, 0.0, 0.0, 1.0, 0.75, -0.5, 0.25, -1.0, -0.25, -1.0, 0.0, -0.75, -1.0, 0.25, -1.0, 0.75, -1.0, -0.25, 1.0, -1.0, 0.5, 0.25, -1.0, -0.75, 0.75, -0.25, -0.25, 0.5, -0.5, -1.0, -0.25, 0.0, 1.0, 0.25, 0.25, 0.25, -1.0, -0.5, 0.75, 0.75, 0.0, -0.25, -1.0, -0.75, -1.0, 0.5, 0.75, 0.25, -1.0, 0.75, -0.5, 0.5, 0.25, 0.25, -1.0, -1.0, 1.0, 0.75, 0.5, 0.0, -1.0, 1.0, 0.5, 0.5, 0.25, -0.25, 0.25, -1.0, -0.75, 0.25, 0.75, 0.75, 0.0, -0.5, 1.0, -0.25, -0.25, 1.0, 0.0, -0.5, -0.25, -1.0, 0.5, -0.5, -0.5, 0.75, 0.25, -1.0, 1.0, 0.25, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    
    
    
    
    
    device20.destroy();
    
    
    
    
    
    
    
    
    
    
    
    const array5 = new Float32Array([0.75, 0.0, -1.0, -0.25, 0.5, 1.0, 0.5, 1.0, 0.5, 0.0, -0.25, 0.75, 0.75, -0.5, -0.25, 0.75, 0.75, -0.25, -1.0, -0.75, -0.75, -0.5, -1.0, 0.0, 0.25, 0.0, -0.5, 0.5, -0.75, -0.5, 0.5, 1.0, 0.0, 0.25, -0.75, 0.75, -1.0, 0.5, -0.25, -0.25, -0.75, -0.5, -0.25, 0.0, -0.25, 0.5, 0.25, 0.25, 0.0, 0.0, 1.0, -0.25, 0.25, 0.75, 0.75, 0.0, -1.0, -0.75, 0.0, -0.25, 1.0, -0.25, 0.5, 0.25, -1.0, -0.5, 0.25, -1.0, -0.25, -0.5, -0.25, 0.5, -0.25, -0.75, -1.0, 0.0, -0.75, -0.25, 0.0, -0.5, -0.5, 1.0, -0.25, 1.0, 0.0, 0.75, -0.75, -0.75, -0.25, -0.25, 0.25, 0.75, -0.25, 1.0, 0.0, -0.25, -1.0, 0.75, 0.25, 0.25, ]);
    
    
    
    const array6 = new Float32Array([0.25, -0.25, -0.25, -1.0, -1.0, 0.25, 1.0, -0.5, -0.5, 0.0, 0.5, 0.75, -1.0, 0.0, 1.0, -0.5, 0.5, -0.75, 0.75, -0.75, 0.0, -0.75, -1.0, 0.5, 0.75, 1.0, 0.0, -0.25, 1.0, -0.75, -0.75, 0.0, 0.25, -1.0, 0.75, -0.75, -0.75, 0.25, 0.0, 0.5, -0.25, 0.75, -1.0, -0.25, -0.25, 0.75, -1.0, 0.75, 0.0, 0.5, 1.0, 1.0, -0.75, 0.5, 0.5, -0.5, 0.25, -0.5, -0.5, 0.75, 0.0, 0.75, 0.5, -0.75, -0.75, -1.0, -0.25, -0.5, 0.0, -0.75, 0.5, -0.5, -0.5, -1.0, -0.75, -0.75, -0.25, -0.5, 0.0, -0.5, -0.75, 0.75, 1.0, -1.0, 0.0, 0.5, -0.5, -0.5, -0.5, -0.5, 0.0, 0.0, -0.5, 1.0, 0.0, 0.0, 0.75, -0.25, 0.75, 0.75, ]);
    const array7 = new Float32Array([0.5, -0.75, 0.0, -1.0, -0.25, -0.75, 0.0, -0.25, 1.0, -0.75, -0.5, -0.5, 0.75, -1.0, -1.0, 0.0, -0.75, -0.75, -1.0, 0.75, -0.75, 0.75, -0.5, -0.5, 0.0, 0.75, 0.25, 0.75, 0.5, 0.25, -1.0, -0.75, -0.5, -0.25, 0.5, -0.75, 0.75, -0.25, -0.75, -1.0, -0.25, 1.0, 0.75, 0.5, -1.0, -0.5, -0.25, -0.25, -1.0, 0.75, -1.0, -0.25, -0.5, -0.25, -0.75, -0.5, -0.5, 0.25, 1.0, 0.0, -0.25, -1.0, -0.75, -0.75, 0.25, 0.25, 0.25, -0.75, -1.0, -0.25, 0.25, 1.0, 0.75, -0.5, -0.25, 1.0, 0.75, -0.5, 0.0, 0.75, 1.0, 0.75, 0.0, -0.5, 0.75, 0.0, 0.0, -0.75, 0.5, -1.0, 0.75, 0.75, 0.25, 0.0, 0.5, -0.75, 0.0, 0.75, 0.25, 0.5, ]);
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array8 = new Float32Array([0.5, -0.75, -1.0, 0.75, 0.25, -0.75, -0.75, 0.5, -0.5, -0.75, 0.0, -0.5, 0.5, -0.75, 0.0, -1.0, 0.0, 0.75, 1.0, 0.0, 0.25, 0.0, 0.75, -0.5, 0.25, -0.75, 0.0, -0.5, -0.75, 0.75, -1.0, -1.0, 0.0, -0.75, 0.5, -1.0, -1.0, 0.0, -0.25, 0.5, 0.5, -1.0, 0.25, 0.0, 0.25, 0.5, 0.0, 0.0, 0.0, -0.5, -0.75, 0.25, 0.25, -1.0, -0.25, 0.25, -0.75, 0.5, 0.25, -1.0, -0.5, 0.0, -1.0, -0.5, 0.0, 0.75, 1.0, 0.25, 0.75, 1.0, 0.75, -0.75, 1.0, -0.75, 0.0, -0.25, 0.75, -0.75, -0.75, 1.0, 0.5, 0.0, -0.75, 0.0, -1.0, -0.25, 0.5, -1.0, 0.75, 0.0, -0.5, 0.25, 1.0, 0.5, -0.5, 0.0, 0.0, -0.75, -1.0, 0.25, ]);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    
    
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
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
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    
    
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.destroy();
    
    
    buffer501.destroy()
    device50.destroy();
    const array9 = new Float32Array([1.0, -0.25, -1.0, -0.25, -0.5, -1.0, -0.5, 1.0, 1.0, 0.0, 0.75, 0.75, -1.0, -0.25, -0.5, -1.0, 0.25, -0.75, -0.5, 0.75, -0.25, -1.0, -0.75, 0.5, -0.25, -1.0, -0.25, -0.75, 1.0, -1.0, -0.25, -0.5, 1.0, 0.25, -1.0, 1.0, 0.0, 0.5, -0.75, 1.0, 1.0, 0.5, 0.25, 0.0, -0.25, -1.0, 0.0, 1.0, 0.25, 1.0, -0.5, 1.0, -1.0, 0.75, -1.0, 0.0, 0.75, -0.25, 0.75, 0.0, 0.25, -0.5, -0.75, 0.25, 0.25, 1.0, 1.0, -0.25, -0.25, 0.0, -0.25, 0.25, 0.75, 0.5, -0.75, -0.75, -0.25, 0.5, -0.25, 0.25, 0.25, -1.0, 0.5, 0.25, -0.25, -0.75, -1.0, 0.75, -0.75, 0.75, 0.5, 0.5, 0.25, -1.0, 0.25, 0.75, 0.25, -0.5, -0.75, 0.5, ]);
    const array10 = new Float32Array([0.25, -1.0, 0.25, -1.0, 0.75, 1.0, -0.75, 1.0, 0.25, 0.25, -0.25, 0.75, -1.0, 1.0, -0.75, 0.75, 0.75, -0.75, 0.75, -0.75, 0.5, 0.75, 0.25, -0.25, 0.5, 0.25, -0.75, -0.25, 0.0, -0.75, 0.0, -0.5, -0.75, -0.5, 0.25, 0.5, 0.25, -0.75, -0.75, 1.0, -1.0, -0.75, 0.5, -0.25, -1.0, 0.75, 0.25, 0.5, 0.75, 0.25, 0.5, -1.0, 1.0, -1.0, -1.0, -0.5, -0.5, 0.5, 0.75, -0.25, 0.0, -0.25, -0.5, 0.5, 0.0, -1.0, 0.25, 0.25, 0.25, -1.0, 0.25, -1.0, -0.75, 1.0, 0.75, 0.25, -0.75, -1.0, 1.0, -0.75, 0.5, -1.0, -0.75, 0.75, -0.75, 0.5, -0.5, -1.0, -0.5, 0.5, 0.75, 0.75, 1.0, -0.75, -1.0, -1.0, 0.5, 0.5, 1.0, 0.0, ]);
    
    const array11 = new Float32Array([0.5, -0.75, 0.0, 0.5, -0.25, 0.25, 0.25, -1.0, 0.5, 1.0, -0.5, -0.5, 0.5, -1.0, 0.5, 0.5, 0.75, 0.75, 0.0, -0.75, 0.5, 1.0, 1.0, -0.25, 0.75, -0.25, -1.0, 0.5, 0.75, 1.0, 0.5, 0.5, -0.75, -0.25, -1.0, -0.25, -0.5, 0.0, -1.0, -0.5, -0.5, 0.5, 0.25, 0.75, 0.75, 0.5, 1.0, -0.5, -0.5, -1.0, -0.5, 0.25, -1.0, -0.25, 0.5, 0.25, -0.75, -0.75, 0.5, -0.5, 0.0, -0.5, 0.25, -0.5, 0.75, 0.75, -0.75, -0.75, 0.0, 0.0, 0.75, 0.25, 0.25, 0.25, -1.0, 0.0, -0.75, 0.75, 0.5, 0.75, 0.75, 0.5, 0.25, -1.0, -0.75, -0.75, -1.0, -0.75, -0.25, -0.75, 1.0, 0.75, 1.0, -0.25, -0.5, -0.25, 0.25, 1.0, 0.5, 1.0, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array12 = new Float32Array([-0.5, -0.75, -0.5, 0.75, -0.25, -1.0, -0.25, -0.25, -0.25, -1.0, -0.25, -0.25, 0.0, -0.25, -1.0, 0.25, 1.0, -0.5, 0.0, 0.75, -0.25, 0.75, -0.25, -0.25, 1.0, -0.5, -0.75, 0.0, -0.25, -0.75, 0.5, -0.5, -0.5, 1.0, -0.25, -0.25, 0.25, -0.5, 1.0, -0.5, 0.5, 0.5, -0.25, -1.0, -0.5, 0.25, 0.0, 0.5, 0.75, -0.5, 0.25, 0.0, -0.75, 0.5, -0.25, -1.0, 1.0, 0.0, 0.25, -0.75, 0.5, 0.25, 0.0, 1.0, -0.75, 1.0, -1.0, -0.75, -0.75, -1.0, -0.75, -1.0, -0.75, 1.0, -1.0, 0.0, 0.25, -0.5, 0.0, 0.25, 0.75, -1.0, -0.5, -1.0, 0.5, 0.0, 0.0, -0.75, 0.5, 0.0, 1.0, 1.0, 0.25, -0.25, 0.5, 0.0, 0.25, -0.25, -0.5, -0.75, ]);
    
    
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array13 = new Float32Array([1.0, -0.75, -0.25, 0.5, -0.25, -0.25, 0.25, 0.75, 0.25, 0.5, -1.0, -0.5, -0.75, -0.75, 0.5, -1.0, 0.75, 0.0, 0.25, -0.75, -0.75, -0.5, -0.25, -0.5, -0.75, -0.75, -0.25, -0.5, -0.25, 1.0, 1.0, 0.75, -1.0, 0.0, -0.75, -0.75, -0.75, 0.75, -0.75, 0.0, 0.0, 0.0, 0.25, 1.0, -0.75, 0.0, -0.25, 0.5, -0.75, 1.0, -1.0, 0.75, -0.25, 0.0, 0.75, -1.0, -1.0, 0.75, -0.75, 0.0, 0.5, 0.25, 0.25, -0.5, -0.75, 0.75, 0.25, 0.0, -1.0, -0.5, -1.0, 0.25, 0.0, 0.25, -0.75, 0.75, 0.75, 1.0, -0.25, -0.25, 0.0, 0.75, -0.25, 0.0, -1.0, -0.25, -1.0, -0.75, 0.0, 0.5, 0.5, -0.75, 0.75, 1.0, -0.75, -0.25, 0.5, 0.25, 0.5, 1.0, ]);
    
    
    
    
    
    
    
    
    
    
    
    const array14 = new Float32Array([0.75, -0.75, 0.25, 0.75, -0.25, 0.25, 0.75, 0.75, -0.75, -0.25, 0.25, -0.75, 0.25, 0.5, 0.0, -1.0, -0.5, 0.5, -0.5, -1.0, -0.5, -0.75, 0.75, -0.5, -0.25, 0.75, -1.0, 0.75, 0.5, -0.75, -0.5, -0.25, 0.5, -0.25, -0.75, 0.25, -1.0, -0.25, -0.5, 0.25, 0.25, 0.5, -0.25, 0.25, -1.0, 1.0, 0.75, 0.25, 0.75, -0.5, 1.0, 0.25, 0.25, 1.0, -1.0, 0.25, -0.75, -0.5, 0.5, 0.5, -0.75, 0.5, 0.5, -0.5, 0.75, 0.25, 0.25, 0.25, -1.0, 0.25, 1.0, -0.25, 0.75, 0.5, 0.0, 0.5, 1.0, -0.5, -0.25, 1.0, 0.75, -0.5, -0.25, -1.0, -0.25, 0.5, 0.5, -0.25, 0.5, 0.0, -0.5, -1.0, 0.5, 0.25, 1.0, 0.75, 0.75, 1.0, 1.0, 0.75, ]);
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    render_bundle_encoder601.insertDebugMarker("marker");
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    device60.destroy();
    
    const array15 = new Float32Array([0.0, 0.25, 0.75, 1.0, 0.75, 1.0, 0.75, 1.0, 0.0, 0.0, 0.0, 0.25, -0.25, -0.75, 0.0, 0.75, -0.75, -1.0, 0.5, 0.5, -0.25, -0.25, 0.0, 0.75, 0.0, 0.75, 1.0, 1.0, -1.0, -0.25, -1.0, 0.0, 0.25, -0.5, -1.0, -0.75, 0.25, -1.0, 0.25, 0.25, 1.0, -1.0, 0.75, 1.0, 0.5, -0.25, 1.0, -0.25, -0.75, 0.25, 0.0, -1.0, -1.0, 0.5, 0.25, -0.5, 0.75, 0.0, -0.75, 0.0, 0.75, 0.75, 0.75, 0.25, 0.75, -0.5, -0.5, 0.75, 0.75, -0.25, 0.75, 0.0, -0.25, 0.0, -0.25, -0.75, 0.75, -0.25, 0.0, -1.0, 0.75, 1.0, 1.0, 0.75, -0.75, -0.75, 0.5, -0.25, 0.75, -0.25, -0.75, -0.75, -0.25, -0.5, -0.25, 0.5, -1.0, -0.75, 1.0, 0.5, ]);
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device80.destroy();
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder900.insertDebugMarker("marker");
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer900.destroy()
    
    
    buffer901.destroy()
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    const array16 = new Float32Array([-0.25, 0.5, 1.0, 1.0, -0.5, 0.0, -0.25, -1.0, 0.25, -0.5, -0.25, 0.75, 1.0, 0.0, 1.0, -0.25, 1.0, -1.0, 0.75, 0.5, 0.75, 1.0, -0.25, 1.0, 1.0, 0.5, -0.75, -0.75, 1.0, 0.25, -0.75, 0.5, -0.5, 0.25, 0.5, -0.5, -1.0, -0.25, -0.5, 0.5, -0.25, 0.0, 0.75, 0.0, 0.75, -0.75, 0.25, -0.75, -0.75, 0.75, 0.75, -0.25, 0.0, 1.0, -0.5, 1.0, -0.25, 1.0, 0.0, 0.0, -0.5, 0.5, 0.0, 0.0, 1.0, -1.0, 0.25, 0.5, -1.0, -0.5, -0.25, -0.25, 0.5, 0.25, -0.25, 0.25, -0.5, 0.5, -0.25, -0.5, 0.25, -0.25, 0.0, 0.0, 0.25, -0.75, -0.75, 0.5, 0.5, 0.0, 1.0, -0.25, -0.25, -0.5, -0.25, -0.5, -0.75, 0.5, 0.75, -0.25, ]);
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    
    device100.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    device90.destroy();
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device120.destroy();
    
    
    
    
    
    
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    buffer700.destroy()
    
    const array17 = new Float32Array([-1.0, 0.5, -0.25, 1.0, 1.0, -0.75, 0.5, -0.25, -0.75, 0.75, 1.0, -0.5, -0.75, -0.5, 0.0, 0.75, -1.0, 0.25, -0.5, 0.25, -0.75, 0.75, 0.5, -1.0, 1.0, 1.0, 0.0, 0.75, -0.5, 1.0, 0.5, -0.5, -1.0, -0.75, 0.75, 0.75, -1.0, -0.5, -1.0, 0.0, -0.25, -0.25, -1.0, -1.0, 0.25, -0.5, -0.75, 0.5, -0.75, 0.5, -0.75, 0.75, -0.5, 0.0, -0.25, 0.0, -0.5, -0.25, 0.75, 0.5, -0.25, 0.0, 0.75, -0.5, 0.25, -0.5, -1.0, 1.0, -0.5, 0.0, -0.75, -0.25, -0.5, 0.0, -1.0, -0.5, 1.0, 1.0, 0.75, -1.0, -0.25, -0.75, -0.75, -0.5, 0.75, 0.5, 0.75, 0.25, -0.25, 0.5, 0.75, -0.5, 1.0, 0.25, 0.0, -0.75, -0.75, -0.5, 0.0, 0.25, ]);
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    
    
    
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    
    
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    
    
    
    
    const array18 = new Float32Array([-0.25, -1.0, 0.5, 0.75, -1.0, 0.75, 1.0, 0.25, -1.0, 0.0, -0.5, -0.5, -0.5, 0.0, -0.75, 0.0, -0.5, -0.75, 0.25, -0.5, -1.0, -0.5, -1.0, -1.0, 0.75, 0.75, 1.0, -1.0, -1.0, 0.25, -1.0, -0.75, -0.25, 1.0, 0.5, -0.25, -0.5, 0.75, 0.75, -0.75, 0.5, -1.0, 0.5, -0.25, 0.5, 0.5, 0.0, 1.0, -0.25, -0.25, -0.5, -0.75, 0.75, 0.25, 1.0, 0.5, -0.5, -0.25, -0.25, 0.5, -0.75, -1.0, -0.75, -0.75, -1.0, -0.25, 0.5, 0.5, -0.25, 0.5, 0.25, -1.0, 0.5, 1.0, -0.25, -0.75, 0.25, -0.5, 0.0, 0.25, 0.75, 0.25, -0.75, 0.5, 0.0, -0.75, 0.25, 0.0, 1.0, -0.75, 0.75, -1.0, 0.5, 0.0, 1.0, 1.0, -1.0, 0.75, 0.0, 0.75, ]);
    
    
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    
    
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_bundle_encoder1100.insertDebugMarker("marker");
    
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device110.destroy();
    
    
    const array19 = new Float32Array([0.25, 0.0, -1.0, -1.0, -0.5, -1.0, -0.25, 0.75, -1.0, -0.25, 0.5, -1.0, 0.25, -1.0, 0.0, 0.5, -0.25, -0.25, 0.5, -0.25, 1.0, 0.0, 0.0, 0.0, -0.75, -0.25, -0.5, -1.0, -0.25, 0.0, 0.25, -1.0, -0.75, 1.0, -0.5, 0.0, 1.0, 0.75, -1.0, 0.5, 0.5, 0.5, -0.25, 0.25, -0.5, -1.0, 1.0, -1.0, -0.75, -0.75, 0.75, 1.0, -1.0, 0.0, 0.5, -0.25, 0.0, 0.5, -0.75, -0.25, 0.0, -0.25, -0.75, 1.0, -0.75, 0.0, -0.25, -0.5, -0.5, 1.0, -0.5, -0.75, 0.25, 0.75, 1.0, 0.0, 0.75, -1.0, 0.75, 1.0, 0.25, 0.0, 0.75, -0.5, 0.75, 0.5, 0.0, 0.5, 0.75, -0.5, -0.75, 0.5, 1.0, -1.0, -0.25, 0.25, 0.75, 0.0, 0.5, 1.0, ]);
    
    
    const array20 = new Float32Array([0.5, -1.0, -0.75, -0.75, -0.25, 0.5, 0.25, -0.75, -0.25, 0.75, -0.5, 1.0, 0.0, 1.0, 0.25, -0.5, -0.5, -0.25, -0.25, -0.75, -1.0, 0.5, 1.0, 0.25, -0.5, -0.5, -0.25, -1.0, 0.5, -0.75, -1.0, 0.25, -1.0, 0.25, -0.25, 0.75, -1.0, 0.25, -0.5, -0.25, 0.25, -1.0, -0.5, 0.5, -0.75, -0.5, -0.25, -0.25, 0.25, 1.0, 0.25, -1.0, 0.0, 0.25, -0.75, 1.0, -0.75, -0.25, 0.0, -0.5, -0.25, 0.25, 0.25, 1.0, -1.0, 0.75, -0.25, 1.0, -0.75, -0.25, -1.0, 0.25, 0.0, -0.75, 0.0, -0.5, 0.0, 0.0, -0.75, 0.0, -0.75, 0.25, -0.25, 0.25, 0.75, 0.25, 0.5, 0.0, -0.75, -0.5, -0.25, -0.75, 0.75, 0.0, 0.0, 0.75, 0.5, -0.5, -0.5, 0.25, ]);
    
    
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device70.destroy();
    
    
    
    
    
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    
    
    
    
    
    const array21 = new Float32Array([0.75, -1.0, -0.75, 0.25, 0.5, 0.25, -0.25, 1.0, 0.75, -0.5, 0.25, 1.0, -0.75, -1.0, 0.5, 0.0, 0.5, 0.5, 0.0, -0.75, 1.0, 0.5, 1.0, 1.0, 0.5, -0.25, -0.5, 1.0, -0.25, -1.0, -0.75, 0.75, 0.75, -0.25, 0.5, 0.25, 1.0, 0.0, 0.0, 0.75, 0.0, 1.0, 0.25, 0.5, 0.25, 0.25, 0.75, -0.25, -1.0, -0.25, 0.0, -0.5, 0.0, -0.25, 0.75, 0.25, -0.75, -0.75, -0.5, 1.0, -0.25, -0.5, -0.5, -0.25, 0.25, -0.5, 0.25, -0.5, -0.5, -0.5, 0.75, 1.0, 0.0, -0.25, -0.75, -1.0, -0.25, 0.25, 1.0, 0.75, -1.0, 0.25, -0.75, 1.0, -0.75, -0.75, 0.0, 0.75, -0.75, -1.0, 0.75, -0.75, -0.25, 0.0, 0.0, 1.0, 1.0, 0.25, -1.0, 0.5, ]);
    
    
    
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device130.destroy();
    
    
    
    
    
    const array22 = new Float32Array([0.75, 0.0, 0.75, 0.25, 0.75, 1.0, 0.75, -1.0, -0.75, -1.0, -0.25, -1.0, 1.0, -0.25, -0.5, -1.0, -0.5, 0.0, -0.75, -1.0, -0.75, -0.5, 1.0, -0.25, 0.0, -0.75, -0.25, 0.0, 0.5, -0.5, 0.0, 1.0, 0.5, 0.0, -0.5, -0.5, 0.75, 0.75, 0.25, 0.0, -0.5, -0.5, -0.25, -1.0, -0.25, -1.0, -0.25, -0.5, -0.25, -0.5, 0.75, 0.75, 0.75, -0.5, 0.75, -1.0, 0.5, -0.25, -0.25, 0.5, 0.75, 0.0, 1.0, -0.5, -1.0, -0.5, -0.5, 0.25, -0.25, -0.5, 0.25, 0.0, -0.5, 0.0, -0.5, -0.5, 0.5, 0.75, -0.75, 1.0, -1.0, 0.5, 0.0, -0.5, 0.75, 0.25, 0.25, -0.25, 0.25, -0.5, 0.75, 0.25, -0.5, 0.0, 0.25, 0.5, 1.0, 1.0, 1.0, 1.0, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array23 = new Float32Array([-1.0, 0.75, 0.0, 0.25, 0.25, 0.75, -0.25, 0.25, -0.5, 0.5, -0.75, 0.5, 0.75, -0.25, 0.0, 0.25, 0.0, 0.25, -0.25, 0.5, -0.25, -0.5, -1.0, 0.0, 0.75, 0.0, 0.25, 0.75, -0.75, 0.75, 0.25, -0.25, 0.75, 1.0, 1.0, -1.0, -0.75, -0.5, -0.5, 1.0, 0.5, 1.0, -1.0, -0.5, 0.0, 0.0, 0.75, 0.0, -0.5, -0.25, 1.0, 0.75, -0.25, 1.0, 0.5, 0.0, -0.5, 0.5, 0.75, 0.0, -0.75, -0.25, -0.5, 0.5, 0.25, 0.0, 0.5, -0.5, -0.25, 0.0, -0.25, 0.5, 0.25, 0.25, -0.75, -0.75, 0.5, 0.0, 1.0, -0.75, 0.5, 0.0, -0.5, 1.0, -1.0, -1.0, 0.25, 0.0, 0.75, 0.75, 0.5, 0.25, -1.0, -0.5, -0.75, 0.5, 0.0, 0.75, 1.0, 0.75, ]);
    const array24 = new Float32Array([-1.0, -0.75, 0.0, 0.5, 1.0, -0.75, 0.75, 0.75, -0.5, 0.75, 0.5, -1.0, 0.25, 1.0, -0.25, 0.25, 0.5, 0.0, 0.5, 0.5, -0.75, -0.5, 0.0, -0.75, 0.0, 0.5, 1.0, 0.25, -0.75, -1.0, -0.25, 1.0, -0.5, 0.5, -0.5, -0.75, -0.25, 0.75, 0.25, 0.5, 0.25, 0.25, -0.5, 1.0, 0.75, 0.25, -0.75, 0.5, 0.25, 0.75, 0.0, 0.0, 0.5, 1.0, -0.25, 0.25, -0.25, -0.25, 0.5, -0.75, -0.75, 0.75, -1.0, 0.0, -0.5, -0.75, 0.25, -0.25, 0.0, 0.75, 1.0, -1.0, 1.0, 0.5, -0.5, -0.5, -1.0, 0.0, -0.75, 0.5, 0.75, -0.5, 0.0, 0.0, -1.0, -0.75, -0.5, 0.5, 1.0, 0.75, 0.0, -1.0, 0.75, 0.5, 0.0, 0.5, -0.5, -0.75, 1.0, 0.75, ]);
    
    
    const array25 = new Float32Array([0.25, 1.0, 0.5, -0.5, -0.25, -0.25, 0.25, -0.75, 0.25, 0.75, 0.5, -0.5, 0.75, -0.25, -1.0, -0.25, -1.0, -0.5, -1.0, 0.75, -0.5, -0.5, 0.75, 0.5, 0.0, 0.25, 0.0, 0.25, -0.75, -1.0, -0.25, -1.0, 0.5, -0.75, -1.0, -0.5, 0.0, 0.0, 0.0, -0.25, 1.0, -0.5, 0.75, 0.25, -0.5, 1.0, -0.5, 0.5, -1.0, 0.5, -1.0, 0.0, -1.0, -0.5, 0.25, 0.75, 0.0, 0.75, -0.25, 0.75, 1.0, -0.75, -0.75, 0.0, 0.25, 0.5, -1.0, -1.0, -0.75, -0.5, -0.5, 0.0, 0.75, 0.75, 0.25, -0.5, 0.5, 0.0, 0.25, -0.25, -1.0, -0.75, -0.75, -0.5, 0.75, 1.0, -0.75, -0.75, 0.0, 0.25, 0.75, 0.5, -1.0, -1.0, 0.75, -0.25, 0.0, 0.75, 1.0, 0.75, ]);
    
    
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    
    
    
    
    
    
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    
    
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    const sampler1401 = device140.createSampler( { label: "sampler1401" } );
    
    
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder1500.insertDebugMarker("marker");
    const render_bundle_encoder1501 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1501",
        colorFormats: ["bgra8unorm"]
    });
    buffer1400.destroy()
    
    device140.destroy();
    
    
    
    render_bundle_encoder1500.insertDebugMarker("marker");
    
    
    
    
    const render_bundle_encoder1502 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1502",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder1500.pushDebugGroup("group_marker");
    
    
    
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    const render_pipeline1500 = device150.createRenderPipeline({
        label: "render_pipeline1500",
        vertex: {
            module: shader_module1501,
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
            module: shader_module1501,
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
    
    
    
    render_bundle_encoder1500.popDebugGroup();
    
    
    
    
    
    
    
    const render_pipeline1501 = device150.createRenderPipeline({
        label: "render_pipeline1501",
        vertex: {
            module: shader_module1500,
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
            module: shader_module1500,
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
    render_bundle_encoder1502.setPipeline(render_pipeline1500);
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const buffer1501 = device150.createBuffer({
        label: "buffer1501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
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
    var shader_module1502_code = "";
    try {
        shader_module1502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1502 = await device150.createShaderModule({ label: "shader_module1502", code: shader_module1502_code })
    render_bundle_encoder1501.pushDebugGroup("group_marker");
    
    
    
    
    render_bundle_encoder1501.setPipeline(render_pipeline1501);
    const array26 = new Float32Array([-0.25, -0.75, 0.75, -0.25, -0.75, -0.5, 0.5, 1.0, 0.0, 1.0, 1.0, -0.75, -0.5, 0.0, -0.75, 0.75, 1.0, -1.0, 0.75, 0.5, 0.75, 0.75, 0.0, 0.0, 0.0, 0.25, 0.5, 0.75, 0.75, 1.0, -0.75, 0.75, 0.0, 0.0, -1.0, -0.25, 0.0, -0.25, 0.5, -0.25, -0.5, -1.0, -0.5, -1.0, 0.25, 0.0, 0.75, 1.0, -0.5, 0.25, 1.0, 0.0, -0.5, 0.75, 0.25, -1.0, -0.5, 0.25, 1.0, 0.5, 0.25, 1.0, -0.25, 1.0, 0.0, -0.25, 0.0, 0.5, 0.0, -0.75, 0.0, 0.75, 0.25, -0.25, 0.0, -0.5, -1.0, 1.0, 0.25, -0.5, -0.75, -1.0, 0.75, 0.5, 0.25, 1.0, -1.0, 1.0, 0.0, -0.75, -1.0, 0.0, -0.5, 0.5, -0.25, -0.25, -0.5, 0.0, -1.0, 0.25, ]);
    render_bundle_encoder1500.setPipeline(render_pipeline1501);
    render_bundle_encoder1501.popDebugGroup();
    
    render_bundle_encoder1500.insertDebugMarker("marker");
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    
    buffer1501.destroy()
    const sampler1501 = device150.createSampler( { label: "sampler1501" } );
    
    
    const bind_group_layout1501 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1501",
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
    
    const render_pipeline1502 = device150.createRenderPipeline({
        label: "render_pipeline1502",
        vertex: {
            module: shader_module1500,
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
            module: shader_module1500,
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
    
    
    
    
    device160.destroy();
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    
    
    
    const buffer1502 = device150.createBuffer({
        label: "buffer1502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer1502.destroy()
    
    
    device170.destroy();
    const render_pipeline1503 = device150.createRenderPipeline({
        label: "render_pipeline1503",
        vertex: {
            module: shader_module1500,
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
            module: shader_module1500,
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
    
    render_bundle_encoder1500.pushDebugGroup("group_marker");
    const buffer1503 = device150.createBuffer({
        label: "buffer1503",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
}