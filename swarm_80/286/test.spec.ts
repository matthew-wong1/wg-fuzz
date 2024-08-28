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
    
    
    const array0 = new Float32Array([1.0, -0.75, 1.0, 1.0, -0.75, 0.5, 0.75, 0.0, 0.0, 0.75, 0.75, 0.25, -0.75, -1.0, 0.25, -0.5, -0.75, 0.5, -1.0, 0.25, -0.75, -0.25, 0.0, 0.5, 0.25, 0.25, 0.5, -1.0, 0.75, 0.25, 0.75, 0.5, 1.0, -0.25, 0.75, 0.5, -0.5, 0.75, 1.0, -1.0, 0.25, -0.25, -0.75, -0.75, -0.75, -0.5, 1.0, 0.75, 0.25, -0.25, 0.25, 0.5, 0.0, -0.25, -0.5, -1.0, 0.5, -0.75, -0.25, 0.0, -0.75, 0.0, 0.25, 0.5, 0.75, -0.75, -0.25, -0.75, 1.0, 0.75, 0.5, 1.0, 0.0, 0.25, 0.25, 0.0, 0.0, -0.75, 0.5, 0.25, 0.25, 0.75, 0.5, 0.75, -0.5, -0.25, 0.25, -0.25, 0.5, -1.0, -1.0, 0.5, -0.5, 1.0, 0.25, 1.0, -0.5, 0.5, -0.25, 0.75, ]);
    const array1 = new Float32Array([-0.75, 0.75, 0.0, 1.0, 0.0, 1.0, 1.0, -1.0, -1.0, -1.0, -1.0, 0.0, 0.0, 0.75, -0.75, -0.5, -0.5, 1.0, 0.5, 1.0, 1.0, 0.25, 0.5, 1.0, 1.0, 0.5, 0.25, -0.5, -0.75, 0.5, 0.5, 0.75, -1.0, -0.75, -0.75, -0.75, 1.0, 0.75, -0.25, -1.0, 0.0, 1.0, -0.25, -0.25, 0.5, -0.5, 0.25, -0.25, -0.25, 1.0, -0.75, -0.5, -0.75, 0.5, 0.25, 0.75, 1.0, -1.0, -0.75, -1.0, 0.25, 0.0, 0.75, -0.25, -0.25, 0.75, 0.75, -0.75, -0.75, -0.5, 0.5, 0.25, -0.5, 0.5, -1.0, 0.75, 1.0, -0.25, 0.75, 0.5, 1.0, -0.5, 1.0, 0.5, 1.0, -0.25, 0.25, -0.5, 0.0, 0.0, 0.0, 0.75, 1.0, 0.5, -0.5, -0.5, -0.25, 0.0, -0.25, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array2 = new Float32Array([0.25, -0.25, -0.25, -0.5, -1.0, 0.5, -0.75, 0.0, 0.5, -0.25, 0.0, -1.0, 0.25, -0.75, -0.25, 0.5, 0.0, -0.5, -1.0, 0.75, 0.5, 0.25, -1.0, -1.0, 0.75, 1.0, -0.25, 0.75, 0.25, -1.0, -0.5, -0.25, 1.0, -0.25, -1.0, -0.5, -1.0, 0.5, -0.75, -0.5, 0.75, 0.0, 0.5, 0.75, -0.75, 0.0, 1.0, -0.25, 0.0, 1.0, -0.75, 0.0, -1.0, 0.75, -0.5, 0.0, -0.25, -0.25, -1.0, 0.0, 0.25, 0.25, -0.75, -0.75, 0.0, -0.75, -1.0, 0.25, -1.0, 0.0, -1.0, 1.0, 0.0, 1.0, 0.25, -0.75, 0.0, 0.5, -1.0, 0.25, 0.0, 1.0, -1.0, 0.5, 0.5, 0.75, -0.75, -0.5, 0.5, -0.5, 0.5, 1.0, -0.75, 0.0, 1.0, 0.5, 0.75, 0.0, 0.75, -0.25, ]);
    
    
    
    const array3 = new Float32Array([0.5, -1.0, 0.0, -0.75, 0.75, 0.75, -1.0, -0.5, -1.0, 0.75, 0.25, -0.25, 0.5, -1.0, 0.5, -0.25, -0.5, -0.25, 0.5, -0.25, 0.25, 0.25, -1.0, 0.0, -1.0, 0.0, -0.25, -0.75, 0.25, 0.0, 0.75, 0.5, 0.0, -0.75, -0.5, -0.25, 0.0, -1.0, -0.75, 0.75, -1.0, 0.0, -1.0, -0.5, 0.75, 0.0, 0.0, -0.25, -0.75, -0.75, 0.25, 0.75, -0.25, -0.75, 0.75, 0.5, 0.5, -0.25, -0.5, 0.5, 0.75, -0.5, -0.75, 0.5, 0.75, -0.25, 0.25, 0.75, -1.0, 0.25, -1.0, 1.0, 0.75, -0.75, -0.5, -0.5, -0.5, 1.0, -0.75, 0.25, 0.5, -1.0, -0.25, -1.0, 0.25, 1.0, -1.0, -0.75, 0.75, -1.0, -1.0, 0.5, 1.0, 1.0, -1.0, 0.0, 0.5, -0.5, 1.0, 0.75, ]);
    
    
    
    const array4 = new Float32Array([-0.25, -1.0, 0.25, -1.0, -1.0, 0.25, 1.0, -1.0, 0.75, 0.0, 0.5, -0.25, 0.0, -1.0, 0.0, -1.0, -0.75, 0.25, -0.5, 1.0, 0.25, 0.5, -0.25, 1.0, -1.0, -0.25, -0.25, -1.0, 1.0, 0.75, 0.25, 0.75, 0.75, -0.25, -0.25, 0.5, -0.5, -0.5, -0.75, -0.5, -1.0, -0.5, 0.0, 0.5, 0.0, -0.75, -0.75, -1.0, 0.0, 0.25, -0.75, -0.75, -0.5, -0.25, -0.75, 0.5, 0.75, 1.0, 1.0, -0.25, 0.25, 0.5, -1.0, 0.0, 1.0, 0.5, -1.0, 0.5, 0.75, 0.25, 0.5, 0.75, 1.0, -1.0, 1.0, -0.5, 0.0, -0.25, -0.75, 1.0, 1.0, 0.25, -0.75, -1.0, 0.75, -0.25, 0.75, 0.25, -0.5, 0.5, -0.75, 0.5, -0.25, -0.75, 0.5, -0.5, -1.0, 0.75, -0.5, 0.75, ]);
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const array5 = new Float32Array([-1.0, 0.25, 1.0, -0.75, 0.0, 1.0, 0.0, 0.75, -0.75, 0.5, 1.0, 0.0, 0.0, -0.25, -0.5, -0.25, 0.75, 0.25, 0.5, -0.75, 0.75, -0.5, -0.75, 0.75, -1.0, -1.0, 0.75, 0.0, -0.25, -0.25, 0.0, 0.25, 0.25, 1.0, 0.5, -0.25, 0.0, -0.25, -0.75, -0.75, 0.75, -0.25, -0.75, 0.75, -0.5, -0.75, -0.25, 0.0, 0.5, 1.0, 0.25, -0.5, -0.5, 0.0, -0.5, 0.75, 0.25, -0.25, 1.0, 0.0, 0.75, -1.0, -0.25, -1.0, -0.25, 0.5, 0.5, -0.75, 0.25, -0.25, 0.25, 0.25, 0.0, 0.75, 0.75, 0.75, 0.5, 0.0, 0.5, 0.75, 0.25, 1.0, 0.25, 0.0, 0.5, -1.0, -0.5, -0.75, 0.25, 0.25, 0.0, -0.25, -0.25, 1.0, -1.0, -0.5, 0.75, 0.5, 0.0, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array6 = new Float32Array([0.25, 0.25, 0.25, 1.0, 0.25, 0.5, -0.25, 1.0, -0.25, -0.75, -0.5, 1.0, -0.75, -1.0, -0.75, -0.5, 0.5, -1.0, -0.5, -0.25, 0.5, 1.0, -1.0, 0.75, -0.75, -1.0, 0.5, -0.5, 0.75, -0.5, 1.0, 1.0, -0.75, -0.25, 0.0, 1.0, 0.5, 0.75, -0.5, -0.5, -1.0, 0.0, 0.0, 0.0, 0.25, 0.0, -0.75, 0.5, 0.25, 0.5, -0.25, -0.5, 0.0, 0.25, 0.75, 0.0, 0.0, 0.75, 0.75, 1.0, 0.0, 1.0, 0.75, 1.0, -0.75, 0.5, -0.5, -1.0, -0.25, 1.0, -0.5, -0.5, -1.0, -1.0, -0.75, -1.0, 0.0, 0.0, 0.5, 0.75, 0.5, 0.75, -0.75, -1.0, -0.75, 0.0, 0.5, 1.0, 0.5, 0.5, -0.75, 0.5, -1.0, 1.0, -0.25, 0.0, 0.25, 1.0, 0.75, -0.75, ]);
    const array7 = new Float32Array([0.75, 0.75, 0.0, -1.0, -0.75, 0.0, 0.75, 0.5, 0.0, 0.0, 0.75, -0.75, 0.5, -0.25, 0.25, 0.5, -0.75, 0.0, -0.5, 1.0, -0.75, -0.75, -0.75, -0.75, 1.0, 0.25, 0.75, -1.0, -0.25, 1.0, 0.5, 0.75, -0.5, 0.25, -0.25, 0.75, 0.0, 1.0, -1.0, -0.5, 1.0, 0.5, 0.5, 1.0, 0.75, 1.0, 1.0, -1.0, 0.25, 0.0, 0.75, 1.0, -0.75, -0.75, 1.0, 0.25, -0.75, -0.5, -1.0, 0.0, 0.75, 0.75, 0.75, -0.5, 0.0, 0.75, -1.0, 0.0, -1.0, -0.5, 1.0, 0.0, -0.75, -0.75, -1.0, -0.25, -0.25, 0.5, -0.25, -0.75, -0.75, -0.25, 0.0, 0.25, 0.5, -1.0, -0.25, 0.5, -0.5, 0.0, 1.0, 1.0, 0.75, -0.75, 0.25, 0.5, 0.0, 0.0, 0.25, 0.25, ]);
    
    
    
    const array8 = new Float32Array([-0.75, 0.75, -0.75, 0.5, -0.5, -1.0, 0.0, 0.25, 0.5, 1.0, -0.5, 0.5, 1.0, 0.25, 0.25, -0.25, -0.25, 0.75, -1.0, -1.0, 0.25, -0.25, 0.25, 0.25, 0.0, 0.25, 0.75, -1.0, 0.75, -0.75, 0.0, -0.75, 0.25, -0.5, -0.5, 0.5, -1.0, -1.0, 0.75, 0.75, 1.0, 0.75, -0.5, 0.5, 1.0, 0.25, 0.0, 1.0, -1.0, 0.5, -0.75, 0.25, 0.5, 0.0, -0.5, 1.0, -0.5, -1.0, 0.25, 0.75, 0.75, 0.25, -0.25, -1.0, -0.25, 1.0, -0.5, -0.75, 0.25, -0.25, -1.0, 0.75, -0.75, 0.75, -0.5, -1.0, -1.0, 0.75, -0.75, 1.0, -0.5, -1.0, 1.0, -0.75, 0.25, -0.5, -0.75, 1.0, 0.25, -1.0, 1.0, 1.0, -0.75, 0.25, 0.5, 0.75, 1.0, 0.25, 0.75, 1.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    
    device10.destroy();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
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
    
    
    
    
    const array9 = new Float32Array([1.0, -0.5, 0.25, 1.0, 1.0, 1.0, -1.0, 1.0, -1.0, 1.0, 0.75, 0.25, -1.0, -1.0, -0.5, -1.0, 0.0, 1.0, 0.25, -0.5, 0.0, -0.75, -1.0, 0.75, 0.0, 1.0, -1.0, 0.25, 0.5, -0.25, 0.25, -0.25, 0.0, 0.0, 0.0, -1.0, 0.25, 0.5, 0.0, -1.0, 0.0, -0.25, 0.75, 0.5, 0.5, 0.5, 0.5, 0.25, 0.75, -0.5, 0.25, -0.75, 0.5, -0.25, 0.5, -0.25, 0.25, -0.25, -1.0, 0.75, -0.25, 0.0, -1.0, 0.0, -0.75, -0.25, -0.75, -0.75, 1.0, 1.0, 0.75, 0.75, -1.0, 0.25, -0.5, -0.25, -1.0, 0.75, 1.0, 0.75, -0.75, -0.25, -0.75, 0.75, 0.75, -0.75, -1.0, -0.75, 1.0, 0.75, 0.75, 0.5, 0.5, 0.5, 1.0, -0.75, 1.0, 0.5, 1.0, -0.75, ]);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm",
        dimension: "2d"
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
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
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
    const array10 = new Float32Array([0.0, -0.75, 0.75, 0.75, -0.25, 1.0, -0.5, 1.0, -0.5, 0.25, 0.25, -1.0, 1.0, -0.75, 0.25, -0.25, -0.5, -0.25, 0.75, 1.0, -0.75, 0.5, 0.25, -1.0, 0.5, -0.75, 0.5, -0.25, -0.25, 0.0, 0.5, -0.25, -0.25, 0.0, 0.75, 0.25, -1.0, -1.0, 0.0, 0.25, 0.5, 0.5, -0.75, 0.25, 0.0, -0.5, 0.5, 1.0, 1.0, 0.75, 0.75, 0.0, 0.25, 0.0, 0.75, -0.5, 0.5, 0.75, 0.5, 0.5, 1.0, 0.75, 0.75, -0.75, 0.0, 0.25, 0.0, 0.25, -1.0, 1.0, -0.5, 1.0, 0.5, -0.5, 0.75, 0.75, 0.25, 0.5, 0.5, 0.5, 0.5, -1.0, -0.5, 0.0, -0.25, -0.75, 0.0, -0.5, -0.75, -1.0, 1.0, -0.75, 0.5, 0.25, 0.0, -1.0, 0.25, -0.5, -0.75, 0.0, ]);
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device30.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    device50.pushErrorScope("validation");
    
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.setPipeline(render_pipeline405);
    render_bundle_encoder401.setPipeline(render_pipeline401);
    
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    
    device20.pushErrorScope("internal");
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    const array11 = new Float32Array([0.25, 0.5, 1.0, 0.0, -1.0, 0.5, -0.5, 1.0, -1.0, -0.75, 0.5, -0.5, 0.0, -0.75, -0.5, 0.75, 0.0, -1.0, -0.75, -0.75, -0.25, -0.25, 0.5, 0.25, -1.0, -1.0, 1.0, 1.0, 0.25, -0.75, 0.0, -0.75, 0.75, -0.25, 0.25, -0.25, 0.25, 1.0, 0.0, 0.75, -0.75, 0.5, -1.0, -0.75, -0.75, 0.75, 0.25, 0.0, -1.0, 1.0, 0.25, 0.5, 0.75, 0.5, 0.0, 0.25, 0.75, 0.25, 0.75, 0.0, -0.75, 0.25, 0.5, -0.25, -0.25, 0.25, 0.0, 0.5, 0.25, -1.0, -0.75, 0.25, -1.0, 0.5, 0.5, 0.5, -0.25, -0.5, -0.25, 0.0, 0.25, -0.25, -1.0, 0.25, 0.0, 1.0, 0.5, -1.0, 0.25, 1.0, -0.75, 0.0, -1.0, 0.0, 0.0, 0.25, 0.25, -0.5, -0.25, 0.0, ]);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    device40.destroy();
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder500.setPipeline(render_pipeline501);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
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
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("out-of-memory");
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
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
    
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    device50.destroy();
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    device20.destroy();
    
    
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const array12 = new Float32Array([1.0, -1.0, 0.75, 1.0, -1.0, -1.0, -0.25, -1.0, -0.25, 0.75, -0.75, 0.75, 0.0, -1.0, 0.5, -0.5, 1.0, -1.0, 0.5, 0.0, 0.0, -0.75, -0.5, 0.75, 0.0, 1.0, -0.75, -1.0, -0.75, 0.0, -0.25, 0.25, -1.0, -1.0, -1.0, 0.25, 0.0, 0.0, -0.5, 1.0, 0.5, -0.5, 0.0, -0.25, 0.5, -1.0, 0.25, 0.75, -0.5, -1.0, -0.5, -1.0, -0.75, 0.5, -0.5, 0.0, -0.25, -0.5, -0.75, 0.0, -0.5, 0.25, 0.5, -0.5, -0.5, 0.0, 0.0, -0.5, -0.25, 0.25, -0.25, -0.25, -0.25, 1.0, 0.25, -0.5, 0.5, -0.5, -0.5, 0.75, 1.0, 0.5, -0.5, -0.75, 0.0, 1.0, -0.5, 0.25, 0.25, -0.75, 0.25, -0.5, 0.75, -1.0, 1.0, 0.75, 0.5, -0.75, -1.0, -0.75, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    device70.destroy();
    
    const array13 = new Float32Array([-0.25, -0.25, -0.5, 1.0, -0.75, -0.25, -0.5, 0.5, -0.5, -0.75, 1.0, -0.25, 0.0, 0.25, -0.75, 0.25, -0.25, 0.0, -0.5, -0.25, -0.75, 0.25, 0.0, 0.0, -1.0, 1.0, -0.25, 0.25, 0.75, -1.0, 0.5, 1.0, 0.75, -0.25, 0.0, -0.25, -0.75, 0.5, -0.75, -0.5, 0.5, -0.75, 0.75, 0.0, 1.0, 0.25, 1.0, 1.0, -1.0, 0.5, -0.25, 1.0, 0.5, -0.5, -0.75, 0.0, -0.75, -0.25, 0.25, 0.0, -0.5, -1.0, -0.5, -0.75, 0.25, 1.0, 0.5, 0.0, 1.0, -0.25, -0.75, 0.75, -1.0, 0.5, 1.0, 0.5, -0.75, 0.75, -0.5, 1.0, -1.0, 0.25, -0.25, 0.5, -0.5, 0.75, 0.25, 0.75, -1.0, -0.5, 0.5, 0.75, 1.0, 0.75, 0.75, 0.0, 1.0, -0.5, 0.75, 0.5, ]);
    
    
    
    
    const array14 = new Float32Array([-0.75, -1.0, -0.25, 0.25, -0.25, -1.0, 0.0, -0.25, -0.5, -0.25, -0.75, -0.25, -1.0, -0.75, 0.5, -1.0, 0.25, 0.25, 0.75, 1.0, 0.0, 1.0, 0.75, -0.25, -0.75, 0.5, 0.75, 0.25, 0.75, 0.5, 0.75, 0.5, -1.0, 0.25, -0.5, -0.25, -0.25, -0.75, -0.75, 0.0, 0.25, -1.0, -1.0, 0.75, 0.5, 0.0, 0.0, 0.5, 0.75, 1.0, 1.0, 0.75, -0.25, 0.5, 1.0, 0.5, 0.5, -0.75, -0.5, -0.5, 0.25, 0.5, -0.25, 0.25, -0.25, 1.0, 1.0, 1.0, -0.5, -0.25, 1.0, 0.75, -0.5, -0.5, -0.75, -0.25, 0.0, -1.0, -0.75, 1.0, 0.75, 0.0, 0.75, -0.75, 0.75, 0.5, -0.25, -1.0, -0.75, -0.25, 0.5, 1.0, -1.0, -0.5, 0.25, 0.75, -0.5, 0.0, -0.5, 0.0, ]);
    
    
    const array15 = new Float32Array([-0.25, 0.75, 1.0, -0.75, -0.5, -1.0, 0.25, 0.0, 0.0, 0.0, -0.25, 0.75, 0.25, 0.75, 0.5, 0.25, -0.5, 1.0, 0.5, 0.25, -0.25, 0.5, 0.75, 1.0, 0.0, -0.75, 1.0, -1.0, -0.5, -0.25, -0.75, -0.5, -1.0, 1.0, 0.25, 0.5, -0.25, -0.25, 1.0, 1.0, -1.0, 0.0, 0.75, -0.75, -1.0, 0.0, 0.5, -0.25, -0.5, -0.75, 0.75, -1.0, 1.0, -0.25, 0.25, -0.25, 0.0, 0.25, -1.0, 0.5, -0.75, 0.75, -0.25, 0.5, 1.0, 0.25, 0.0, 0.0, 0.5, 0.5, -0.75, -1.0, -0.75, 0.5, 0.5, 0.75, 0.75, 0.25, -1.0, -0.75, 0.5, 1.0, -0.5, 0.25, 0.0, 0.75, -0.75, 0.5, -0.25, -0.25, 1.0, -0.5, -0.5, -0.25, 0.0, -0.25, 0.25, -1.0, 1.0, 0.5, ]);
    
    
    
    
    
    
    
    const array16 = new Float32Array([-1.0, -0.5, 0.75, 0.25, 0.5, -0.75, 0.75, 1.0, -1.0, -0.25, -1.0, 0.5, 0.75, -0.75, 0.0, -1.0, 0.5, -0.75, -0.25, -0.75, 1.0, 0.0, 0.5, -0.75, 0.75, 0.0, -0.75, 0.5, 0.5, 0.75, 0.0, 0.0, -0.5, 0.0, 0.75, 0.5, 0.75, 0.0, 0.25, 1.0, -0.5, -0.75, 0.5, -1.0, 0.5, 0.75, 0.5, 0.0, 0.25, 0.25, -0.5, 0.5, -1.0, 0.25, -0.5, 0.25, -1.0, 0.25, 0.75, 0.25, 0.25, 1.0, -0.75, 0.5, 1.0, 0.0, 0.5, 0.75, 0.25, -0.5, 0.75, 0.0, -1.0, -1.0, 0.75, -0.5, -0.25, -0.75, -1.0, 1.0, 0.25, -0.5, -0.25, 1.0, 0.25, 0.0, -0.75, -0.5, 0.0, 0.25, -0.5, -1.0, 0.75, -1.0, 0.0, -0.5, 0.25, 1.0, 0.25, 0.75, ]);
    
    
    
    
    
    
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    
    
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder800.setPipeline(render_pipeline800);
    
    
    
    
    
    
    
    
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    device80.pushErrorScope("out-of-memory");
    
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array17 = new Float32Array([-0.25, -1.0, -1.0, 0.75, -0.25, 0.5, 0.0, 0.5, -0.75, -0.75, 1.0, 1.0, 1.0, 0.5, 1.0, 0.0, 0.0, 0.0, -0.5, -0.25, -0.25, 0.5, 0.75, -0.5, 1.0, -0.75, -0.75, 1.0, 0.0, 0.75, -1.0, -0.5, 0.5, -0.25, -0.25, -0.25, 0.25, -0.25, -0.25, -0.5, 0.0, 0.75, 1.0, -0.75, -1.0, -0.75, 0.25, 0.0, -0.5, -0.5, 1.0, 0.0, 0.5, 1.0, 0.5, -0.75, 1.0, 0.5, -0.25, -0.25, 1.0, -0.75, -0.5, 0.75, -1.0, 1.0, 0.5, 0.25, 0.75, -1.0, 0.5, 0.5, -0.75, 0.5, 0.75, 1.0, 0.5, 0.5, 0.75, -0.75, 0.25, -0.25, -0.75, 1.0, 0.5, -1.0, 0.25, -0.75, 0.75, 0.0, 1.0, -1.0, -0.25, 0.0, 0.75, 1.0, 1.0, 0.25, 0.0, -1.0, ]);
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const array18 = new Float32Array([1.0, -0.5, 0.5, 0.0, 0.0, -0.25, 0.75, 0.5, -0.75, 0.0, 0.25, -0.5, 0.5, -0.5, 0.5, 1.0, 0.5, 0.0, -0.5, 0.5, -0.5, 0.0, -1.0, -0.75, -0.75, 0.0, -0.5, 0.75, -0.5, 0.25, -0.25, 0.75, 0.5, 1.0, 0.0, -1.0, 0.0, -0.25, 0.0, 0.5, -1.0, 0.25, 0.75, -0.5, -1.0, 1.0, -0.25, 0.75, 0.0, 0.25, -0.5, -1.0, -0.5, 0.5, -0.75, -0.75, -1.0, -0.25, -0.75, -0.75, 0.5, 0.5, -0.25, 1.0, 0.25, -0.25, 1.0, 0.0, 0.5, -0.5, -0.25, 0.25, -0.75, 0.5, 0.0, -0.25, -0.25, -0.25, 1.0, 1.0, 0.5, -0.25, 1.0, 0.75, -0.75, 0.5, 0.25, 1.0, 0.5, -0.5, 0.5, -1.0, 0.25, -0.5, 0.75, 1.0, -0.5, 0.25, -0.25, -0.5, ]);
    device80.pushErrorScope("out-of-memory");
    
    
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout800]
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout800]
    });
    const pipeline_layout804 = device80.createPipelineLayout({ 
        label: "pipeline_layout804",
        bindGroupLayouts: [bind_group_layout802]
    });
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    
    const pipeline_layout805 = device80.createPipelineLayout({ 
        label: "pipeline_layout805",
        bindGroupLayouts: [bind_group_layout801]
    });
    const texture_view8001 = texture800.createView({ label: "texture_view8001" });
    
    const pipeline_layout806 = device80.createPipelineLayout({ 
        label: "pipeline_layout806",
        bindGroupLayouts: [bind_group_layout801]
    });
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    const pipeline_layout807 = device80.createPipelineLayout({ 
        label: "pipeline_layout807",
        bindGroupLayouts: [bind_group_layout802]
    });
    
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    const bind_group_layout803 = device80.createBindGroupLayout({ 
        label: "bind_group_layout803",
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
    const bind_group_layout804 = device80.createBindGroupLayout({ 
        label: "bind_group_layout804",
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
    const pipeline_layout808 = device80.createPipelineLayout({ 
        label: "pipeline_layout808",
        bindGroupLayouts: [bind_group_layout803]
    });
    
    const pipeline_layout809 = device80.createPipelineLayout({ 
        label: "pipeline_layout809",
        bindGroupLayouts: [bind_group_layout803]
    });
    
    device80.pushErrorScope("out-of-memory");
    
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const array19 = new Float32Array([0.25, -0.5, 1.0, -0.5, -0.75, 0.75, 0.5, -0.5, 0.0, 0.0, 1.0, -0.25, -1.0, -1.0, 0.25, 0.0, -1.0, 1.0, -1.0, -0.5, 0.5, 0.25, -0.75, -0.75, 0.0, -0.75, -0.25, 0.5, 0.25, -0.5, 0.5, 0.75, -0.25, -0.25, -0.25, -1.0, 0.0, -0.25, 0.0, 0.0, -0.5, -0.75, 0.0, -0.5, 0.0, -0.75, -0.75, -1.0, -0.5, 0.0, -0.5, -0.25, -0.5, 0.75, 0.75, -1.0, 0.75, 0.5, 0.25, -1.0, 0.75, 0.75, 0.5, -0.75, -0.5, -0.5, 1.0, 1.0, -0.5, 0.75, -1.0, 0.25, 0.5, 0.75, 1.0, 0.0, -0.75, -0.5, -1.0, -0.75, -1.0, 0.0, 0.25, 0.75, -1.0, 0.25, 0.75, 0.0, 0.25, 1.0, 0.5, 0.0, -0.5, -0.5, 0.5, -0.5, 0.25, -0.5, -0.5, 0.5, ]);
    
    
    const render_pipeline803 = device80.createRenderPipeline({
        label: "render_pipeline803",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    
    
    
    
    
    const array20 = new Float32Array([0.5, 1.0, -0.25, 0.75, 0.0, 0.0, 0.75, 0.75, 0.0, 0.5, 1.0, 0.5, -0.75, 0.5, -1.0, 0.5, -0.5, 1.0, -0.75, 0.0, -1.0, -0.25, -0.75, 0.5, 0.75, 0.0, -0.75, 0.75, -0.5, -0.5, 0.75, -0.5, 1.0, 0.25, 0.25, -0.5, 0.25, -0.5, 1.0, 0.75, 0.25, -0.25, -1.0, 0.0, -0.25, -1.0, -0.75, -0.5, -1.0, -0.25, 1.0, -0.5, -1.0, -0.75, -0.5, 0.75, -1.0, 0.75, -0.75, 0.5, -0.25, -0.75, 1.0, -0.75, -0.25, -0.75, -0.25, -0.25, -0.5, 0.5, -0.75, -1.0, 0.75, -1.0, 0.75, 0.0, 0.25, 0.75, -0.25, 0.25, 0.5, 1.0, -0.75, -0.75, -0.5, -0.75, 0.0, 1.0, 0.5, -0.75, -0.5, 0.25, -0.75, 0.75, 0.75, 0.5, 1.0, -0.75, 1.0, 0.5, ]);
    const render_pipeline804 = device80.createRenderPipeline({
        label: "render_pipeline804",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout8010 = device80.createPipelineLayout({ 
        label: "pipeline_layout8010",
        bindGroupLayouts: [bind_group_layout804]
    });
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const pipeline_layout8011 = device80.createPipelineLayout({ 
        label: "pipeline_layout8011",
        bindGroupLayouts: [bind_group_layout802]
    });
    
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const pipeline_layout8012 = device80.createPipelineLayout({ 
        label: "pipeline_layout8012",
        bindGroupLayouts: [bind_group_layout804]
    });
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout807,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_pipeline805 = device80.createRenderPipeline({
        label: "render_pipeline805",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    
    device80.pushErrorScope("internal");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline806 = device80.createRenderPipeline({
        label: "render_pipeline806",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    const pipeline_layout8013 = device80.createPipelineLayout({ 
        label: "pipeline_layout8013",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    
    
    const render_pipeline807 = device80.createRenderPipeline({
        label: "render_pipeline807",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    
    const compute_pipeline802 = device80.createComputePipeline({
        label: "compute_pipeline802",
        layout: pipeline_layout806,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const pipeline_layout8014 = device80.createPipelineLayout({ 
        label: "pipeline_layout8014",
        bindGroupLayouts: [bind_group_layout800]
    });
    const compute_pipeline803 = device80.createComputePipeline({
        label: "compute_pipeline803",
        layout: pipeline_layout802,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline804 = device80.createComputePipeline({
        label: "compute_pipeline804",
        layout: pipeline_layout806,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline805 = device80.createComputePipeline({
        label: "compute_pipeline805",
        layout: pipeline_layout805,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const compute_pipeline806 = device80.createComputePipeline({
        label: "compute_pipeline806",
        layout: pipeline_layout809,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    
    const texture_view8030 = texture803.createView({ label: "texture_view8030" });
    
    
    
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile(__dirname + '/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    const compute_pipeline807 = device80.createComputePipeline({
        label: "compute_pipeline807",
        layout: pipeline_layout805,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline808 = device80.createComputePipeline({
        label: "compute_pipeline808",
        layout: pipeline_layout803,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    const compute_pipeline809 = device80.createComputePipeline({
        label: "compute_pipeline809",
        layout: pipeline_layout804,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const compute_pipeline8010 = device80.createComputePipeline({
        label: "compute_pipeline8010",
        layout: pipeline_layout8013,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline8011 = device80.createComputePipeline({
        label: "compute_pipeline8011",
        layout: pipeline_layout801,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline8012 = device80.createComputePipeline({
        label: "compute_pipeline8012",
        layout: pipeline_layout801,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    const compute_pipeline8013 = device80.createComputePipeline({
        label: "compute_pipeline8013",
        layout: pipeline_layout803,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    const compute_pipeline8014 = device80.createComputePipeline({
        label: "compute_pipeline8014",
        layout: pipeline_layout803,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline8015 = device80.createComputePipeline({
        label: "compute_pipeline8015",
        layout: pipeline_layout806,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const compute_pipeline8016 = device80.createComputePipeline({
        label: "compute_pipeline8016",
        layout: pipeline_layout801,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const array21 = new Float32Array([-0.5, 0.75, 0.75, 0.5, 1.0, -0.75, -0.75, -1.0, 0.0, -0.25, -0.75, 0.25, 1.0, 0.75, -0.75, 0.0, 0.5, 0.5, 0.0, -1.0, -0.25, 0.75, -0.75, -0.75, 0.75, -0.5, 0.75, 0.5, -0.5, -1.0, -1.0, -1.0, -0.5, 0.5, -0.5, -0.25, -0.5, 0.0, -0.25, 0.75, -1.0, 0.75, -0.75, 1.0, 0.25, 0.75, 0.0, 0.75, -0.75, -0.75, 0.0, 0.5, -0.75, 0.0, -0.75, -0.75, 0.0, 0.5, -0.25, 0.25, -0.5, 0.0, -1.0, -0.5, -0.5, 0.0, 1.0, 0.5, -0.5, -0.75, 0.0, 0.25, -0.25, 0.5, -0.75, -0.5, 0.5, 0.5, -0.75, -0.5, -0.5, 0.75, -0.25, 1.0, -0.25, -0.25, -0.25, 0.25, 1.0, -0.75, 0.75, 0.75, -1.0, 0.5, -0.5, -1.0, -0.75, 0.5, -1.0, 0.5, ]);
    const compute_pipeline8017 = device80.createComputePipeline({
        label: "compute_pipeline8017",
        layout: pipeline_layout806,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view8011 = texture801.createView({ label: "texture_view8011" });
    const compute_pipeline8018 = device80.createComputePipeline({
        label: "compute_pipeline8018",
        layout: pipeline_layout803,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const compute_pipeline8019 = device80.createComputePipeline({
        label: "compute_pipeline8019",
        layout: pipeline_layout8014,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    const pipeline_layout8015 = device80.createPipelineLayout({ 
        label: "pipeline_layout8015",
        bindGroupLayouts: [bind_group_layout800]
    });
    const compute_pipeline8020 = device80.createComputePipeline({
        label: "compute_pipeline8020",
        layout: pipeline_layout804,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    const texture_view8021 = texture802.createView({ label: "texture_view8021" });
    
    const compute_pipeline8021 = device80.createComputePipeline({
        label: "compute_pipeline8021",
        layout: pipeline_layout8010,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    const pipeline_layout8016 = device80.createPipelineLayout({ 
        label: "pipeline_layout8016",
        bindGroupLayouts: [bind_group_layout802]
    });
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
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
    const render_pipeline808 = device80.createRenderPipeline({
        label: "render_pipeline808",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    
    const bind_group_layout805 = device80.createBindGroupLayout({ 
        label: "bind_group_layout805",
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
    const compute_pipeline8022 = device80.createComputePipeline({
        label: "compute_pipeline8022",
        layout: pipeline_layout8012,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const texture_view8012 = texture801.createView({ label: "texture_view8012" });
    const compute_pipeline8023 = device80.createComputePipeline({
        label: "compute_pipeline8023",
        layout: pipeline_layout801,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const compute_pipeline8024 = device80.createComputePipeline({
        label: "compute_pipeline8024",
        layout: pipeline_layout808,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline8025 = device80.createComputePipeline({
        label: "compute_pipeline8025",
        layout: pipeline_layout8010,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const pipeline_layout8017 = device80.createPipelineLayout({ 
        label: "pipeline_layout8017",
        bindGroupLayouts: [bind_group_layout800]
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const compute_pipeline8026 = device80.createComputePipeline({
        label: "compute_pipeline8026",
        layout: pipeline_layout8016,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const compute_pipeline8027 = device80.createComputePipeline({
        label: "compute_pipeline8027",
        layout: pipeline_layout8015,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline809 = device80.createRenderPipeline({
        label: "render_pipeline809",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    const compute_pipeline8028 = device80.createComputePipeline({
        label: "compute_pipeline8028",
        layout: pipeline_layout8010,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    const pipeline_layout8018 = device80.createPipelineLayout({ 
        label: "pipeline_layout8018",
        bindGroupLayouts: [bind_group_layout805]
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline8010 = device80.createRenderPipeline({
        label: "render_pipeline8010",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const compute_pipeline8029 = device80.createComputePipeline({
        label: "compute_pipeline8029",
        layout: pipeline_layout803,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder801.setPipeline(render_pipeline801);
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device100.destroy();
    
    const compute_pipeline8030 = device80.createComputePipeline({
        label: "compute_pipeline8030",
        layout: pipeline_layout803,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline8031 = device80.createComputePipeline({
        label: "compute_pipeline8031",
        layout: pipeline_layout8012,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline8032 = device80.createComputePipeline({
        label: "compute_pipeline8032",
        layout: pipeline_layout804,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const compute_pipeline8033 = device80.createComputePipeline({
        label: "compute_pipeline8033",
        layout: pipeline_layout809,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const compute_pipeline8034 = device80.createComputePipeline({
        label: "compute_pipeline8034",
        layout: pipeline_layout8014,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout8019 = device80.createPipelineLayout({ 
        label: "pipeline_layout8019",
        bindGroupLayouts: [bind_group_layout803]
    });
    
    const compute_pipeline8035 = device80.createComputePipeline({
        label: "compute_pipeline8035",
        layout: pipeline_layout802,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const bind_group_layout806 = device80.createBindGroupLayout({ 
        label: "bind_group_layout806",
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
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline8036 = device80.createComputePipeline({
        label: "compute_pipeline8036",
        layout: pipeline_layout802,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const compute_pipeline8037 = device80.createComputePipeline({
        label: "compute_pipeline8037",
        layout: pipeline_layout805,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    const render_pipeline8011 = device80.createRenderPipeline({
        label: "render_pipeline8011",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    const compute_pipeline8038 = device80.createComputePipeline({
        label: "compute_pipeline8038",
        layout: pipeline_layout8018,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const compute_pipeline8039 = device80.createComputePipeline({
        label: "compute_pipeline8039",
        layout: pipeline_layout804,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    const compute_pipeline8040 = device80.createComputePipeline({
        label: "compute_pipeline8040",
        layout: pipeline_layout806,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    const pipeline_layout8020 = device80.createPipelineLayout({ 
        label: "pipeline_layout8020",
        bindGroupLayouts: [bind_group_layout803]
    });
    const pipeline_layout8021 = device80.createPipelineLayout({ 
        label: "pipeline_layout8021",
        bindGroupLayouts: [bind_group_layout805]
    });
    const compute_pipeline8041 = device80.createComputePipeline({
        label: "compute_pipeline8041",
        layout: pipeline_layout8014,
        compute: {
            module: shader_module804,
            entryPoint: "main"
        }
    });
    const compute_pipeline8042 = device80.createComputePipeline({
        label: "compute_pipeline8042",
        layout: pipeline_layout805,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    render_bundle_encoder801.pushDebugGroup("group_marker");
}