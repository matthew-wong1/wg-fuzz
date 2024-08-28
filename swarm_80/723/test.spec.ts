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
    
    
    const array0 = new Float32Array([-0.5, 0.25, 0.5, 0.25, 0.5, 0.75, -0.25, 1.0, 0.75, -0.75, 0.5, -0.5, -0.5, 0.0, 0.75, 0.25, -0.75, 1.0, -0.75, 0.75, -0.75, 1.0, 0.25, 0.75, -0.25, -1.0, 0.75, 1.0, 1.0, 0.25, -1.0, 0.5, 1.0, 0.25, 0.0, 1.0, -1.0, 0.0, -1.0, 0.5, 0.0, 1.0, 1.0, -0.25, 0.75, 0.5, 0.25, 1.0, -1.0, -0.25, -0.75, 0.75, -0.75, 0.75, -0.25, 0.0, 0.0, 0.0, -0.25, -0.75, -1.0, 0.0, 0.25, 0.0, 0.25, 1.0, -0.5, 0.25, 0.5, -0.25, -0.5, 0.75, 0.5, 1.0, -0.5, 0.75, -0.75, 0.75, 0.75, 1.0, 0.5, 0.0, 1.0, 1.0, -0.75, 0.75, 0.25, 0.0, -0.75, -0.5, -0.5, 0.25, 0.25, 1.0, 1.0, -0.75, -0.25, -0.75, 0.5, -0.25, ]);
    
    
    
    
    const array1 = new Float32Array([-1.0, -0.75, -0.25, 0.5, -0.5, -0.75, -1.0, 0.25, -1.0, 0.75, 0.5, 1.0, 0.0, 0.75, 0.0, 0.25, 0.5, 0.5, -1.0, -1.0, 0.75, -0.25, -1.0, -0.25, 1.0, 0.5, 0.75, 0.0, -0.5, -1.0, -1.0, -0.5, -0.25, 0.0, 0.25, 1.0, 1.0, -0.25, 0.5, 0.0, 0.75, -0.75, 0.0, -0.75, -0.75, 0.0, -1.0, -1.0, -0.75, 0.5, -0.75, 0.0, -0.25, -1.0, -0.25, -0.25, -0.5, -0.5, 0.0, 0.0, -0.25, 0.0, 1.0, -0.25, 0.25, -0.25, -0.5, -0.25, -0.5, 0.0, 0.75, 1.0, 0.75, 0.5, 1.0, -0.25, -0.75, 0.75, 0.0, 0.25, 0.25, 0.25, 1.0, 1.0, 0.25, -0.5, -0.25, 1.0, 0.25, -0.75, -0.75, 1.0, 0.75, -0.75, 0.0, 0.5, 0.25, 0.5, 0.5, -1.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    
    device00.destroy();
    
    
    
    
    const array2 = new Float32Array([1.0, -0.75, -0.5, 0.75, -0.25, 0.25, -1.0, -1.0, 1.0, -0.25, -1.0, 0.5, 0.5, 1.0, 0.75, -0.75, -0.5, 0.0, 0.0, 0.75, 0.5, -1.0, -0.5, -0.25, 0.0, 0.0, 0.75, 0.0, 1.0, -1.0, 0.25, -0.5, -1.0, 0.75, 0.0, 0.75, 0.0, 0.5, 1.0, 0.25, 0.0, -1.0, 0.25, -0.25, 0.25, 0.5, 0.75, 0.75, -1.0, -0.5, 0.5, 1.0, -0.75, 0.75, -1.0, -0.25, -0.75, 1.0, -1.0, 0.5, 0.5, -1.0, -0.75, 0.5, 0.75, -0.75, -1.0, 0.75, -1.0, 1.0, 1.0, -0.25, 0.25, 0.5, 0.25, 0.0, -0.5, -0.5, 0.0, 0.0, 0.25, 0.0, 1.0, 0.5, 0.5, -0.75, -0.5, 0.5, -1.0, 0.75, -0.25, 0.0, 0.0, -1.0, -1.0, 0.25, 0.5, -0.25, 0.25, -0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const array3 = new Float32Array([-1.0, -1.0, -1.0, 0.75, 1.0, 0.0, -1.0, 0.5, -0.5, -0.5, 0.0, 0.5, 0.25, 0.75, -0.5, 0.0, 0.25, -1.0, -0.25, -1.0, -0.75, -1.0, -0.5, 0.75, 0.0, -0.25, 0.5, 0.75, 0.5, -1.0, 1.0, 0.25, 0.0, 0.5, 1.0, 0.5, 0.5, -0.75, -0.75, 1.0, 0.5, 0.75, -0.5, 0.75, 0.75, -0.75, -0.5, 0.0, -0.25, -0.5, -1.0, -0.5, 0.5, 0.0, -1.0, 1.0, -0.5, 0.25, 1.0, 1.0, 1.0, -0.25, 0.25, -1.0, -0.5, 1.0, 0.25, -0.5, 1.0, -0.25, -0.25, 0.5, 1.0, 0.5, 0.75, -1.0, 0.5, 0.25, 0.25, 0.5, -0.5, 1.0, 1.0, 1.0, 1.0, -0.5, 0.5, 0.5, -0.25, 0.5, -0.75, 0.25, -0.25, -0.5, 0.5, 0.0, -0.25, -0.5, 0.25, 0.75, ]);
    
    const array4 = new Float32Array([-0.25, 0.25, -0.5, -1.0, 0.25, -0.75, 0.0, 0.0, 0.5, -0.5, -0.5, 1.0, 1.0, 1.0, 0.5, 0.75, 0.0, 0.75, -0.75, 0.5, -0.75, -0.5, 0.0, 0.25, 0.25, 0.25, -0.75, 0.75, 0.75, 0.5, 0.0, 0.25, 0.25, 0.25, -0.5, -0.5, -1.0, 0.0, -0.75, 1.0, -0.75, 0.0, -0.25, 0.25, -0.5, 0.0, -0.5, 0.5, 0.25, -1.0, 0.5, 0.0, 0.5, -1.0, -0.5, 0.5, 1.0, -0.75, -0.75, 0.0, -0.5, -1.0, 0.5, 0.0, -0.25, 1.0, 0.5, -1.0, -0.75, 0.75, 0.0, -0.5, -0.25, 0.5, 0.5, 0.25, 0.75, 1.0, 0.0, -0.75, 0.25, 0.0, -1.0, 1.0, -1.0, -0.75, -1.0, -0.75, 0.0, 0.0, 0.5, 0.0, 0.5, -1.0, 1.0, -1.0, -0.5, -0.5, -0.5, 0.5, ]);
    const array5 = new Float32Array([1.0, 1.0, -0.75, 1.0, -0.5, -0.75, 0.75, -1.0, -0.5, -0.5, 1.0, -0.25, 0.5, 0.0, -0.5, 0.75, -0.75, -1.0, -0.75, 0.75, -0.25, 1.0, 1.0, 1.0, 0.75, 0.5, 0.0, -1.0, 0.5, -1.0, -0.75, 0.25, 1.0, -0.5, -0.25, -0.75, 0.0, 1.0, 0.0, -0.25, 0.75, 0.0, 0.0, 1.0, 0.5, -0.5, 0.25, 0.5, 0.0, -1.0, -0.25, 0.0, 0.0, 1.0, -1.0, 0.5, -1.0, -0.25, -0.75, 0.25, -0.75, 0.0, -0.75, 0.75, 0.5, 0.5, 1.0, 0.75, 0.0, 0.5, 0.25, 0.5, 0.0, 0.5, -1.0, -0.5, 0.75, 0.5, -1.0, -1.0, -1.0, 0.0, -1.0, 0.0, 0.25, -1.0, -0.5, 0.25, 0.75, 0.75, 0.75, -1.0, 0.0, 0.0, -0.25, 0.25, 0.5, 1.0, -0.75, 0.75, ]);
    
    
    const array6 = new Float32Array([0.25, -0.25, 0.25, -0.25, -0.5, -0.25, -0.75, 1.0, 0.0, 1.0, 0.75, 0.75, 0.0, 0.75, 0.75, 0.75, 0.25, -1.0, 0.0, 0.0, 1.0, -0.5, -1.0, 0.5, 0.0, -0.5, -0.25, 0.5, 0.25, 0.25, -0.75, 0.25, 0.0, 0.75, 1.0, -1.0, 0.5, -1.0, 0.0, -0.25, -1.0, -0.75, -0.75, -0.25, 0.5, 1.0, -0.25, -1.0, 1.0, 0.75, 0.5, 0.5, -0.5, 0.25, 1.0, 0.75, 0.5, -1.0, 0.75, 0.0, -0.5, -1.0, -0.25, 0.0, 0.0, -0.25, 1.0, 1.0, -0.75, 0.0, -1.0, 1.0, 0.75, -0.25, 1.0, 0.0, 0.0, 0.5, -0.5, 0.75, 0.5, -0.5, 1.0, 0.5, -0.5, 0.25, 0.5, -0.75, -0.75, 1.0, 0.75, -0.75, -0.75, -0.75, -0.75, 1.0, -0.25, 0.25, 0.75, 0.75, ]);
    
    const array7 = new Float32Array([1.0, 0.25, 1.0, -0.75, -0.75, -0.5, 0.0, -0.25, 1.0, 0.5, 0.75, -0.5, 1.0, -1.0, 0.0, -0.25, 0.25, 0.0, 1.0, 0.0, -0.75, 0.5, 0.0, -1.0, -0.75, -0.25, -1.0, 0.5, 1.0, -1.0, -0.25, 0.0, 0.75, 0.5, -1.0, 0.0, -0.75, -0.25, 0.0, -0.5, 1.0, -0.5, 0.25, 0.0, 0.0, 0.0, 0.5, 0.75, 0.5, -0.25, 0.25, 0.75, 0.75, 0.5, 0.0, -0.5, 0.5, -0.5, -1.0, 0.75, 0.5, -0.75, -0.75, -0.75, -0.25, 0.0, 0.75, 0.5, 1.0, -0.5, 0.25, -1.0, -0.75, 0.25, 1.0, 1.0, 0.25, 0.75, -0.75, -0.5, 0.75, 0.0, 1.0, 0.5, 0.5, 0.0, 0.0, -1.0, -0.5, 0.0, 1.0, -1.0, 0.5, 0.0, -0.25, -0.25, 1.0, 0.5, -0.75, -1.0, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    device10.destroy();
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.destroy();
    
    
    
    const array8 = new Float32Array([1.0, 1.0, -1.0, 1.0, 0.25, -1.0, 1.0, 0.5, 0.0, 0.25, 0.0, 0.75, 0.0, 0.5, 0.75, 1.0, 0.25, 1.0, -1.0, 0.5, -0.5, -0.5, -0.75, -0.5, -0.25, -1.0, 1.0, -0.5, 1.0, -1.0, -0.25, 0.25, 0.25, -0.25, -0.25, -0.5, -0.25, -1.0, -0.5, 0.25, -1.0, 0.0, -0.25, 0.75, 0.0, 0.25, 0.0, 0.5, 0.75, -1.0, 1.0, 0.0, 1.0, 0.25, 0.25, -0.75, -1.0, -0.5, 0.25, 0.5, 0.25, -1.0, -0.75, -0.75, -1.0, -1.0, 0.75, 0.0, 1.0, 1.0, -1.0, 0.0, 0.75, -0.75, 0.25, -1.0, 0.25, 0.75, 0.5, 0.25, -0.75, -0.75, -0.75, 0.5, -0.75, 0.75, 1.0, 0.25, 0.25, 1.0, 0.75, 0.25, 0.5, -0.75, -0.75, -0.75, 1.0, -1.0, -0.5, -1.0, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    const array9 = new Float32Array([0.5, 0.5, 0.25, -0.25, 0.75, 1.0, -0.75, 0.75, 0.0, -0.25, 0.75, 0.75, 0.0, 0.5, -0.5, 0.0, -1.0, 0.75, 0.5, 1.0, 0.0, 0.25, -1.0, -1.0, 0.5, -0.75, 0.25, -0.75, 0.75, 0.25, -0.5, 0.0, 0.5, 0.5, 0.75, 0.75, 1.0, -0.75, 0.75, 0.0, 0.0, -0.25, 0.0, -0.75, -1.0, 0.5, -0.25, 0.0, -0.25, -1.0, 1.0, 1.0, 0.5, 0.25, 0.5, 0.0, -0.5, 0.5, 0.0, 0.5, 0.5, 0.0, 0.0, -0.25, 0.75, 0.5, -0.75, 0.0, 0.5, 0.5, -0.25, 1.0, 0.75, 0.0, 0.5, 0.0, -0.5, 0.25, 1.0, -0.75, 0.25, 0.75, 0.5, 0.5, 0.75, -0.75, -0.5, 0.25, -1.0, 0.25, 0.5, 0.0, 1.0, 0.25, 1.0, 0.25, -0.5, 0.25, -0.5, -0.25, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    device60.pushErrorScope("validation");
    
    
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
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device50.pushErrorScope("internal");
    
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
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const array10 = new Float32Array([0.25, -0.5, 0.0, -0.25, 0.5, -0.5, 0.25, -0.25, -0.75, 0.0, 0.25, 0.25, 0.75, 0.25, 0.25, 0.75, -0.75, 0.0, -0.75, 0.0, -0.25, -1.0, -1.0, -0.25, 1.0, 0.0, 0.5, -0.75, 0.0, 0.5, -0.25, 0.75, 0.75, 0.75, 0.5, 0.5, -0.75, -1.0, -0.25, 0.25, -1.0, -0.75, -0.25, 0.25, -0.5, 0.0, 0.25, -0.25, -0.5, 0.0, -1.0, 0.75, -1.0, 0.25, 1.0, 0.25, -0.25, 0.25, -0.25, 0.5, 0.25, -1.0, 0.75, -1.0, 0.0, -1.0, 0.5, 0.0, -1.0, -0.5, -0.25, -0.25, 1.0, 1.0, -1.0, 1.0, 0.5, -0.25, -0.75, -0.25, 0.25, -0.75, -0.5, 1.0, 0.25, -0.5, -0.25, 0.5, -1.0, 0.0, 0.0, -0.5, -1.0, 0.75, -1.0, 0.5, 1.0, 0.5, 0.25, -0.25, ]);
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    
    
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    texture500.destroy();
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query600.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    device60.pushErrorScope("internal");
    query501.destroy()
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query601.destroy()
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout600]
    });
    device60.destroy();
    
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.pushErrorScope("internal");
    query500.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    query400.destroy()
    
    device70.destroy();
    device50.queue.writeTexture({ texture: texture501 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    query500.destroy()
    
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    const array11 = new Float32Array([-0.5, -0.25, 0.25, -0.75, -0.25, 1.0, 0.0, 0.75, 0.25, 0.25, 1.0, -0.75, 0.25, 0.5, 0.25, -0.75, -0.5, -0.25, 1.0, 0.5, 0.75, -0.25, 0.25, 0.5, -0.25, 1.0, -0.5, 0.5, 0.25, -0.5, 0.0, 0.25, 1.0, -0.5, 0.75, 0.25, 0.5, -0.75, 1.0, 1.0, 0.75, -0.25, 0.5, 0.75, 0.25, -0.5, 0.75, 0.0, 0.75, 1.0, -0.5, -0.5, 1.0, -0.25, -1.0, -0.75, 1.0, 0.0, -1.0, -0.25, 0.0, 0.25, 0.75, 0.0, -1.0, -0.75, 0.75, -0.25, 0.5, -0.25, -0.25, -0.75, 1.0, -0.75, -0.75, -0.5, 0.75, 0.5, 0.75, -0.5, -1.0, 0.5, -1.0, 1.0, 0.5, -0.75, -1.0, 1.0, -1.0, -0.25, 0.25, -0.75, -1.0, -0.25, 0.75, -0.5, 1.0, 0.0, 0.25, -0.5, ]);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture501 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture501.destroy();
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
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.pushErrorScope("internal");
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
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
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    query500.destroy()
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
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    query502.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const array12 = new Float32Array([-1.0, -0.25, -1.0, 0.75, 0.5, 1.0, 0.0, 0.0, -0.5, 0.5, 0.5, -1.0, -0.75, -0.75, 0.0, -0.25, -0.25, 0.75, -0.75, 0.5, -0.5, -0.75, 0.0, 0.75, -0.75, 0.25, -0.5, 0.5, -1.0, 0.0, 0.75, 0.5, 1.0, -0.25, -0.75, -1.0, -0.5, -0.5, 0.75, 0.5, 0.75, -0.25, 0.5, -0.75, -0.5, -0.75, 0.25, 0.75, 0.75, -0.5, 0.75, -0.75, 0.25, 0.75, -0.25, -1.0, 0.25, -0.5, 0.25, -0.5, 0.25, -0.5, -0.75, 1.0, 0.5, 0.5, -0.5, -0.25, -0.75, -0.25, 0.0, -0.25, 1.0, 0.5, 0.0, -1.0, -0.25, -0.25, 0.0, -1.0, -1.0, -1.0, 0.25, -0.25, -0.75, -0.5, -0.75, 0.25, 0.75, -1.0, 0.75, -0.75, 0.0, -1.0, 0.75, 0.0, 0.25, -0.25, -1.0, -0.5, ]);
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout502]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    query400.destroy()
    const array13 = new Float32Array([-0.75, 0.0, 0.25, -1.0, 1.0, 1.0, 0.25, 1.0, -1.0, 0.0, 0.0, 0.75, 1.0, -0.25, 1.0, -0.75, 0.5, -0.75, -1.0, -0.75, 0.0, -0.5, -0.5, -0.75, -0.75, 0.5, 0.75, -0.25, 0.0, -0.25, -0.5, 0.5, 1.0, -0.25, -0.75, 1.0, -0.75, 0.75, 0.0, -1.0, -1.0, -0.25, -0.25, 1.0, -0.5, -1.0, 0.25, -0.5, -0.5, -0.25, 0.0, -0.5, 0.0, -0.75, 0.0, 0.25, 0.25, 0.75, 0.0, -1.0, -0.75, 0.25, -0.75, 0.25, -0.75, 0.25, 0.0, -0.75, -1.0, -0.5, -1.0, -0.5, 0.5, -1.0, 0.75, -0.5, -0.25, 0.5, 0.5, 0.0, 0.75, -0.5, 0.25, -0.25, 0.75, 1.0, -0.75, 1.0, 0.75, -0.5, -0.75, 1.0, 0.0, -0.25, -1.0, -1.0, 0.0, 1.0, 0.5, 1.0, ]);
    
    
    const array14 = new Float32Array([-0.5, -1.0, 1.0, 0.5, 0.0, 0.25, 0.25, 0.5, 0.25, -1.0, -0.75, 0.25, 1.0, 1.0, -0.75, -0.75, -0.5, -0.25, 1.0, 0.0, 0.75, -0.75, -0.25, 1.0, 0.5, -0.25, -0.75, 0.25, 0.5, 0.25, 1.0, -0.25, -0.75, -0.5, 0.25, -0.25, -0.5, -1.0, -0.25, 0.0, -0.5, 0.75, 1.0, 0.5, 0.75, 1.0, -0.75, 0.5, -0.25, -0.5, 0.25, 0.25, 0.75, -1.0, 1.0, 0.5, -0.25, 0.25, -0.5, 0.5, 0.25, -1.0, 0.25, -0.75, -1.0, 0.5, 1.0, 1.0, -0.75, -0.5, -1.0, -0.75, 0.0, 0.5, 1.0, 0.0, 0.5, 1.0, -1.0, -0.75, -0.75, 0.75, 1.0, 0.0, -0.25, 0.0, -0.25, 1.0, 1.0, -1.0, 0.25, -0.5, 0.75, 0.25, -1.0, -0.25, 0.5, 0.5, -0.25, -0.25, ]);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    query401.destroy()
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    query400.destroy()
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    query502.destroy()
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    query401.destroy()
    
    texture400.destroy();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
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
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    query500.destroy()
    const array15 = new Float32Array([-1.0, -0.75, -0.25, -1.0, -0.5, -0.5, -1.0, 0.0, -1.0, 0.5, 0.75, 0.0, 0.0, 0.0, 0.75, -0.75, 0.75, 0.0, -0.25, -1.0, 0.5, 0.5, 0.0, 0.25, -0.5, -0.25, -0.25, 0.25, 0.5, 0.5, 0.75, -0.75, 0.5, 0.5, -0.5, 0.5, 0.75, -0.75, 0.25, 0.5, -0.5, 0.25, -1.0, 0.0, -0.25, -0.75, 0.5, 0.25, 0.25, 1.0, -0.5, -1.0, 0.75, -1.0, 0.5, 0.75, -0.75, 0.75, -0.5, -1.0, -0.25, -0.75, -0.75, 1.0, 0.5, 0.75, 0.5, 1.0, 0.0, -0.75, -0.75, 0.0, -0.75, -0.25, 0.5, -0.75, -0.5, -0.25, 1.0, -0.75, -1.0, 1.0, 0.5, -0.25, -0.25, 0.75, 0.75, -0.75, 0.5, 0.75, -0.75, -0.25, -0.5, -1.0, 0.0, 1.0, -0.25, 0.0, 0.75, -0.25, ]);
    
    
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
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
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
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
    query502.destroy()
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
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
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    query500.destroy()
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query500.destroy()
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout503]
    });
    const pipeline_layout5011 = device50.createPipelineLayout({ 
        label: "pipeline_layout5011",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    const render_pipeline509 = device50.createRenderPipeline({
        label: "render_pipeline509",
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
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const render_pipeline5010 = device50.createRenderPipeline({
        label: "render_pipeline5010",
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
    const pipeline_layout5012 = device50.createPipelineLayout({ 
        label: "pipeline_layout5012",
        bindGroupLayouts: [bind_group_layout502]
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout5013 = device50.createPipelineLayout({ 
        label: "pipeline_layout5013",
        bindGroupLayouts: [bind_group_layout502]
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout5014 = device50.createPipelineLayout({ 
        label: "pipeline_layout5014",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    
    const render_pipeline5011 = device50.createRenderPipeline({
        label: "render_pipeline5011",
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout403]
    });
    query503.destroy()
    
    const array16 = new Float32Array([0.5, 0.25, 0.75, 0.0, 1.0, -0.25, -1.0, -0.75, -1.0, -0.25, 0.25, -0.5, 0.0, 0.25, 0.0, -0.75, -0.25, 0.0, 0.5, 1.0, -0.5, -0.25, 0.0, -1.0, -1.0, 0.75, -0.25, 1.0, 0.5, -0.25, 0.25, -1.0, -0.75, -0.5, 0.75, 0.5, 1.0, 0.5, -0.75, -0.75, 0.25, -0.25, 0.5, -0.5, 0.0, -0.75, -0.25, -0.25, 0.5, -0.5, -1.0, 1.0, -1.0, 0.75, 0.75, 0.75, -0.75, -0.25, 0.25, -1.0, 0.25, 0.25, 0.75, 0.75, 0.5, -0.25, -0.75, 0.25, 0.0, -0.75, 0.75, -0.5, 1.0, 0.0, 0.5, 0.5, -0.75, -1.0, 1.0, -0.25, 1.0, 0.25, 0.75, 1.0, 0.75, 0.0, -0.75, -1.0, 0.25, 0.25, -0.25, 0.75, 1.0, 0.25, -0.75, -0.25, 0.75, -0.25, -0.75, 0.75, ]);
    query501.destroy()
    device90.pushErrorScope("internal");
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout402]
    });
    const render_pipeline5012 = device50.createRenderPipeline({
        label: "render_pipeline5012",
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
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout401]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout5015 = device50.createPipelineLayout({ 
        label: "pipeline_layout5015",
        bindGroupLayouts: [bind_group_layout500]
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    const sampler506 = device50.createSampler( { label: "sampler506" } );
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    query505.destroy()
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    const sampler507 = device50.createSampler( { label: "sampler507" } );
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device50.pushErrorScope("validation");
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    const render_pipeline5013 = device50.createRenderPipeline({
        label: "render_pipeline5013",
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
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    
    query502.destroy()
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout405]
    });
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    query501.destroy()
    const pipeline_layout5016 = device50.createPipelineLayout({ 
        label: "pipeline_layout5016",
        bindGroupLayouts: [bind_group_layout503]
    });
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout402]
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture503.destroy();
    
    
    
    query401.destroy()
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    const pipeline_layout5017 = device50.createPipelineLayout({ 
        label: "pipeline_layout5017",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    
    
    
    device90.destroy();
    
    
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
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
    
    
    
    query501.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout5018 = device50.createPipelineLayout({ 
        label: "pipeline_layout5018",
        bindGroupLayouts: [bind_group_layout500]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout404]
    });
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    const render_pipeline5014 = device50.createRenderPipeline({
        label: "render_pipeline5014",
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
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout401]
    });
    query505.destroy()
    const pipeline_layout5019 = device50.createPipelineLayout({ 
        label: "pipeline_layout5019",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    const render_pipeline5015 = device50.createRenderPipeline({
        label: "render_pipeline5015",
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
    
    query402.destroy()
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const pipeline_layout5020 = device50.createPipelineLayout({ 
        label: "pipeline_layout5020",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture506 = device50.createTexture({
        label: "texture506",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
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
    device80.destroy();
    const render_pipeline5016 = device50.createRenderPipeline({
        label: "render_pipeline5016",
        vertex: {
            module: shader_module507,
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
            module: shader_module507,
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
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    texture505.destroy();
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
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
    
    query503.destroy()
    
    
    query403.destroy()
    
    
    query403.destroy()
    const sampler508 = device50.createSampler( { label: "sampler508" } );
    const texture507 = device50.createTexture({
        label: "texture507",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device50.queue.writeTexture({ texture: texture507 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    texture507.destroy();
    const texture_view5041 = texture504.createView({ label: "texture_view5041" });
    const pipeline_layout4015 = device40.createPipelineLayout({ 
        label: "pipeline_layout4015",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline5017 = device50.createRenderPipeline({
        label: "render_pipeline5017",
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
    texture502.destroy();
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline5018 = device50.createRenderPipeline({
        label: "render_pipeline5018",
        vertex: {
            module: shader_module507,
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
            module: shader_module507,
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
    const render_pipeline4011 = device40.createRenderPipeline({
        label: "render_pipeline4011",
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
    
    const render_pipeline5019 = device50.createRenderPipeline({
        label: "render_pipeline5019",
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
    
    
    
    const sampler509 = device50.createSampler( { label: "sampler509" } );
    const render_pipeline4012 = device40.createRenderPipeline({
        label: "render_pipeline4012",
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
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view5042 = texture504.createView({ label: "texture_view5042" });
    texture1100.destroy();
    
    const render_pipeline4013 = device40.createRenderPipeline({
        label: "render_pipeline4013",
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
    
    query404.destroy()
    
    const texture508 = device50.createTexture({
        label: "texture508",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout4016 = device40.createPipelineLayout({ 
        label: "pipeline_layout4016",
        bindGroupLayouts: [bind_group_layout401]
    });
    const query506 = device50.createQuerySet({
        label: "query506",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline4014 = device40.createRenderPipeline({
        label: "render_pipeline4014",
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
    
    query403.destroy()
    
    
    const pipeline_layout4017 = device40.createPipelineLayout({ 
        label: "pipeline_layout4017",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const render_pipeline4015 = device40.createRenderPipeline({
        label: "render_pipeline4015",
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
    
    const pipeline_layout4018 = device40.createPipelineLayout({ 
        label: "pipeline_layout4018",
        bindGroupLayouts: [bind_group_layout400]
    });
    query404.destroy()
    
    
    
    const texture_view5043 = texture504.createView({ label: "texture_view5043" });
    const texture_view5044 = texture504.createView({ label: "texture_view5044" });
    const pipeline_layout5021 = device50.createPipelineLayout({ 
        label: "pipeline_layout5021",
        bindGroupLayouts: [bind_group_layout500]
    });
    query404.destroy()
    query403.destroy()
    const render_pipeline5020 = device50.createRenderPipeline({
        label: "render_pipeline5020",
        vertex: {
            module: shader_module507,
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
            module: shader_module507,
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
    
    texture506.destroy();
    
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    
    
    const render_pipeline5021 = device50.createRenderPipeline({
        label: "render_pipeline5021",
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
    
    query1100.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device110.destroy();
    texture508.destroy();
}