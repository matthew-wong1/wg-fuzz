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
    const array0 = new Float32Array([0.25, 0.0, 0.5, -0.75, -0.5, -0.25, 0.0, -0.75, -1.0, -0.5, 0.5, -0.25, 0.25, -0.5, 0.75, -0.5, -0.25, -0.75, -0.75, -0.25, -1.0, 0.25, 0.25, 0.25, -0.75, -0.25, -0.25, -0.5, -0.25, -1.0, -0.25, 0.75, 1.0, -0.5, 0.0, 1.0, -1.0, 1.0, 0.5, 0.75, 0.5, -0.5, 1.0, 1.0, 1.0, -0.75, 0.0, 0.25, -0.25, -0.75, 0.75, -1.0, -0.5, -1.0, -1.0, -0.5, 0.0, 0.75, -0.75, 0.75, 0.0, -0.75, -0.75, 0.0, -0.5, -1.0, -0.75, -1.0, -1.0, 0.25, 0.75, -0.5, -1.0, 0.0, 0.0, 1.0, 0.0, -1.0, 0.0, -1.0, 0.0, 0.0, 1.0, 0.5, -0.25, -1.0, 0.0, -0.25, -0.75, -0.5, 0.0, -0.75, -1.0, 0.0, 0.5, -1.0, 0.25, -0.75, 1.0, -0.25, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([-0.5, -0.25, 0.25, 0.75, -0.5, -0.75, -0.75, -1.0, -0.25, 0.0, -1.0, -1.0, -0.75, 0.25, -0.25, 0.75, 0.75, -1.0, 1.0, 0.5, 1.0, -0.75, 0.0, 0.0, 0.25, 0.0, -1.0, 0.0, 1.0, -1.0, 1.0, 0.5, -0.75, 0.5, -1.0, 1.0, -0.75, 0.5, -0.25, 0.5, 1.0, 1.0, -0.5, 0.0, 1.0, 0.5, -0.75, -0.75, 1.0, -0.75, 0.0, -1.0, -1.0, 0.25, 0.0, 0.0, -1.0, -1.0, -1.0, 0.25, 0.25, 0.5, -1.0, 0.25, 0.5, -0.75, 0.75, -0.75, -1.0, -1.0, -0.5, -0.5, 0.25, 0.25, -0.75, 0.25, 0.5, -0.25, -0.5, 0.0, -0.75, 0.75, 1.0, -0.75, -0.25, -0.5, -0.5, -0.5, -0.25, 1.0, 0.0, -1.0, -0.75, 0.5, 0.25, -0.75, -0.5, 0.75, 0.5, -1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    
    
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
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const array2 = new Float32Array([-0.75, 0.5, 0.75, -0.75, -0.25, 0.0, -0.25, -1.0, -0.75, 0.0, 1.0, 0.0, 1.0, 0.25, 0.5, 0.75, 0.25, 0.5, -0.25, 0.5, -1.0, 0.25, 0.75, 0.25, -0.5, 0.75, 0.25, -0.5, -0.5, 0.25, 0.0, 0.0, 0.0, -0.25, -0.5, 1.0, 1.0, 0.5, 1.0, 1.0, 1.0, 0.75, -1.0, -0.75, -0.25, 0.75, -0.25, 0.5, -0.5, 0.75, 0.5, 0.0, -1.0, -0.75, -1.0, -0.75, 0.0, 1.0, 0.75, 0.0, 1.0, -0.75, 1.0, 0.5, 0.25, 1.0, -0.5, 0.25, 0.0, 0.25, 1.0, -1.0, -1.0, 0.75, -0.75, 0.5, 0.75, -0.25, -0.75, -0.5, 0.5, 0.25, -0.25, 0.25, 0.75, 0.0, -1.0, -0.75, -0.5, -1.0, -0.75, -1.0, 0.5, -0.25, 0.75, 1.0, -0.25, 0.75, -1.0, -0.75, ]);
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    
    const array3 = new Float32Array([-0.75, 0.5, 1.0, -1.0, -0.25, 1.0, -0.75, -1.0, -0.75, 0.0, -1.0, -0.5, 0.75, -0.25, -0.75, 0.25, -0.75, 1.0, 0.25, -0.5, 0.25, 0.5, 0.25, 0.75, 0.0, 0.5, -0.25, 0.5, -0.25, -1.0, -0.25, 0.0, 0.25, -0.75, 1.0, 0.0, 0.0, 1.0, -0.25, 0.25, 0.25, -0.25, -1.0, -1.0, 0.0, 0.5, 1.0, 1.0, -0.5, 0.25, -0.25, 0.25, 0.75, 1.0, 0.75, -1.0, 0.75, 0.75, 0.25, -0.5, -0.75, -0.75, -1.0, 0.75, -0.25, -0.5, -1.0, 0.5, 0.75, 0.75, -0.5, 0.0, -0.5, 1.0, 0.75, -0.25, 1.0, 0.75, 1.0, 0.5, -0.5, -0.25, 0.25, 0.75, -0.25, -0.75, -0.25, 0.0, -0.25, 0.75, 1.0, 0.0, 1.0, 0.25, 1.0, 0.0, 0.0, 1.0, -0.25, -0.5, ]);
    
    query000.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    device00.destroy();
    device10.destroy();
    const array4 = new Float32Array([-0.75, -0.5, 0.0, 1.0, -0.5, -1.0, -0.5, -0.25, 0.0, 1.0, -0.25, 0.0, 0.0, 0.75, 0.75, -1.0, 1.0, 0.5, -1.0, -1.0, 0.75, 0.0, -0.75, -0.75, -1.0, 0.5, -0.75, -0.25, -1.0, 1.0, 0.5, -0.25, -0.75, -1.0, 0.5, 0.5, -0.25, -0.5, 0.5, -0.75, 0.75, 0.75, -1.0, 0.5, 0.5, 0.0, 0.75, 0.25, -0.25, -0.5, -0.25, 0.0, -0.5, 1.0, -1.0, -1.0, 0.5, 0.25, 1.0, 0.0, 1.0, 0.5, 0.0, -0.5, -1.0, -0.75, 0.5, -0.75, -1.0, 0.25, 0.25, -0.5, -0.25, -0.5, -0.75, 0.25, -0.75, 0.5, -1.0, 0.75, -0.25, 0.0, 0.0, 0.75, -0.75, 0.5, 0.25, -0.5, 1.0, 1.0, 0.5, 0.5, 0.25, -0.25, 0.5, 0.75, -0.25, 0.0, -0.75, -0.75, ]);
    
    
    const array5 = new Float32Array([-1.0, -0.5, 0.5, 1.0, -0.75, -0.75, -0.75, -0.5, -0.75, -0.25, 0.5, -1.0, 0.75, 1.0, -0.25, 0.5, 1.0, 1.0, 0.0, 0.0, -0.75, -0.75, 1.0, 1.0, 0.25, -0.75, -0.75, -0.75, -0.5, 0.25, 0.0, 0.25, -0.25, -0.5, 0.0, -1.0, 0.75, 0.75, -1.0, -1.0, -0.75, 0.0, 0.0, 0.5, 1.0, -0.5, -0.25, 0.25, -1.0, -0.5, -1.0, 0.5, -0.25, -0.5, 0.75, -0.75, -1.0, 1.0, -0.5, 0.5, 0.5, 0.75, 0.75, 0.25, 1.0, 0.5, 0.25, 0.25, 0.75, -0.75, 0.25, 0.0, 0.5, 1.0, 1.0, -0.5, 0.0, 0.0, 1.0, -0.5, 1.0, 0.0, -0.25, -0.25, -0.5, -1.0, 1.0, -1.0, -0.25, 0.75, 0.25, 0.75, -0.5, 0.75, -1.0, 1.0, 0.25, 0.5, -0.75, 1.0, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    const array6 = new Float32Array([-0.75, -0.75, -0.75, -0.75, -1.0, 1.0, 1.0, 0.5, -0.75, -0.25, -0.25, 0.0, -0.25, -0.25, 0.25, 0.75, 1.0, -0.75, 0.0, 0.25, -0.75, 0.5, 1.0, -0.5, 0.25, 0.0, -0.25, 0.25, 0.25, 0.75, 1.0, -1.0, 1.0, -0.25, -1.0, 1.0, 0.0, -0.25, 0.5, 0.75, 0.25, 1.0, -0.25, -0.75, 0.0, 0.5, 0.25, 0.0, 0.0, 0.0, 1.0, 0.5, 1.0, -0.5, -0.25, -1.0, -1.0, -0.75, -0.5, 0.0, -0.5, 0.25, -0.25, 0.0, -0.5, 0.5, -0.25, -0.5, -1.0, 1.0, 0.5, 0.5, 1.0, -0.75, -1.0, 0.75, 1.0, 0.5, 1.0, 0.0, 0.5, -0.75, 1.0, 1.0, 0.0, -0.5, -0.5, 1.0, -1.0, -0.75, -0.25, 0.5, -1.0, -0.5, -0.75, -1.0, -0.25, 0.25, -0.25, -1.0, ]);
    
    
    
    
    const array7 = new Float32Array([0.0, 0.75, 0.0, -1.0, -1.0, 0.0, -0.5, 0.75, 0.5, -0.25, 0.0, -0.5, -1.0, 0.75, 0.75, 0.5, -0.75, 0.75, -0.5, -0.25, 1.0, -0.25, -0.5, 0.25, 0.5, 0.25, 0.75, 1.0, 0.5, 0.0, -1.0, 1.0, -0.75, -0.75, 0.75, -1.0, 0.75, 0.25, 0.75, -0.25, -0.5, -1.0, -0.75, -0.75, -0.75, -0.5, 0.0, 1.0, 0.0, 0.25, 0.0, -0.75, -0.5, -1.0, -0.5, -0.25, 1.0, -1.0, -0.25, 0.0, -0.5, 0.0, -1.0, 1.0, -0.75, -1.0, 0.0, -1.0, 1.0, -0.25, 0.0, -0.25, 0.0, -0.25, 1.0, -0.75, -0.25, -0.75, 0.75, 0.75, 1.0, -0.25, 1.0, -0.25, 0.75, 1.0, 0.25, 0.0, -0.5, -0.25, 0.5, 0.25, -0.25, -1.0, 0.5, 0.5, 1.0, -1.0, 1.0, 0.25, ]);
    const array8 = new Float32Array([0.75, 0.0, 0.75, 1.0, 0.5, -0.5, 1.0, 0.5, 0.0, -0.75, 0.75, -1.0, 0.25, 0.0, 1.0, 0.25, 0.0, 0.0, 0.25, 1.0, 0.25, 1.0, -0.25, 0.75, 0.0, 0.0, -0.25, -0.75, 0.0, -1.0, -0.5, -0.75, 0.0, 0.5, -1.0, 0.25, 0.75, -0.5, 0.5, 0.25, -1.0, -0.25, 0.25, 0.5, 0.75, 0.25, 0.5, 1.0, 0.0, -0.75, -0.75, -1.0, 0.75, -1.0, 0.75, 1.0, -0.5, -0.75, -0.75, -0.75, 0.25, 1.0, 0.25, -1.0, 0.0, 0.5, -0.25, 0.0, 0.25, 1.0, 0.0, 0.25, -0.25, -0.75, 0.0, 0.75, 1.0, -0.25, -1.0, 0.25, 0.25, 0.0, 0.5, 1.0, 0.5, 0.5, -0.25, 0.5, 0.5, 0.0, 1.0, 0.5, 0.0, -1.0, 0.75, 0.0, 0.75, -0.75, -0.5, 0.25, ]);
    const array9 = new Float32Array([0.25, 1.0, 0.25, -0.5, 0.0, -0.5, -0.5, -0.5, 0.5, 0.5, -0.25, 0.25, -1.0, -1.0, -0.5, 0.25, -0.25, 0.75, 0.0, -0.5, -0.75, 0.0, 0.75, 0.5, 0.75, -0.5, -0.75, -0.25, -0.5, 1.0, -0.5, -1.0, 0.75, 0.5, 0.0, -0.75, 0.25, -0.75, 0.5, -1.0, -0.5, -0.5, 0.75, 0.5, 0.5, -0.25, -0.75, 0.25, -1.0, 0.25, -0.5, -0.75, -0.25, -0.75, 0.75, -1.0, 0.75, -1.0, -0.25, -1.0, 0.25, 0.5, 1.0, 0.0, 0.5, 0.75, 0.75, -0.5, 0.75, 1.0, -1.0, 1.0, 0.0, -0.5, 0.5, 0.25, 0.5, 0.25, -0.5, 0.0, -0.25, 0.0, 0.5, 1.0, -0.75, -1.0, 0.0, 0.75, 0.75, 0.25, -0.5, -0.75, 0.5, -1.0, 0.75, 0.75, -1.0, -0.75, -1.0, -0.25, ]);
    
    const array10 = new Float32Array([0.0, -0.75, -0.25, -1.0, -1.0, 0.25, -0.75, 0.25, -0.25, 0.75, 0.0, 0.5, 0.25, 1.0, -1.0, 0.5, 0.5, -1.0, -0.5, -0.75, -0.75, 1.0, -0.25, -0.5, 0.0, -0.25, 0.75, 0.0, 0.75, 0.0, -0.75, -1.0, -0.5, 0.0, 0.75, 0.75, 0.0, 0.75, -1.0, 0.5, 0.0, 0.5, 0.5, -1.0, 0.0, 0.25, -1.0, 1.0, 0.5, 0.5, -1.0, 0.75, -0.75, 0.75, 0.0, 0.25, -0.25, 0.25, 0.0, -0.5, -0.25, 0.75, 1.0, -0.25, -0.75, 0.25, 0.5, 0.5, 1.0, 1.0, -0.75, -1.0, -0.75, 0.75, 1.0, -0.75, -1.0, -0.5, 0.75, -1.0, 0.75, 0.75, -0.5, 0.75, 0.75, -1.0, 0.75, 0.75, 0.75, 1.0, 0.0, 0.75, 0.5, 0.25, -1.0, -0.5, 0.25, -1.0, 0.75, 0.5, ]);
    const array11 = new Float32Array([0.0, 0.25, -1.0, -1.0, 1.0, 0.5, 0.5, 1.0, -0.25, 0.25, 0.0, 0.25, -0.25, 0.75, -0.25, -1.0, -1.0, 0.75, -0.5, 0.75, 0.75, -1.0, 0.25, 0.5, 0.0, -1.0, -0.25, 0.25, 0.5, -0.75, -1.0, -1.0, 0.25, 0.75, -0.5, -0.25, 0.0, -1.0, 0.0, -0.5, -0.75, 0.5, 0.5, -0.75, -0.25, 1.0, -0.75, -0.75, -0.25, 1.0, 0.5, 0.0, -1.0, -1.0, 0.5, 0.25, 1.0, 0.75, -0.25, 0.25, 0.25, -0.5, -0.5, 0.5, -1.0, -1.0, 0.25, 0.5, 0.5, 0.75, -0.5, -1.0, -0.75, -0.25, -0.25, 0.75, -0.5, 1.0, 0.75, 0.0, 1.0, 1.0, 0.0, 0.25, -0.5, -0.5, -0.75, 0.75, 0.0, -0.5, 0.75, 0.0, 0.75, -1.0, 0.5, -0.25, 0.25, -0.25, -0.75, 1.0, ]);
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("validation");
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
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    
    const array12 = new Float32Array([-1.0, -0.75, 1.0, -0.5, -1.0, -0.25, 0.25, 0.25, 1.0, -0.75, 0.5, 0.5, -0.5, 0.0, -1.0, 0.5, 0.75, 0.25, 0.25, -0.75, 0.0, 1.0, -1.0, -0.25, 0.0, 0.0, -0.25, -0.75, -0.25, -0.75, -0.75, 0.0, 0.0, 0.25, 0.75, 0.75, -0.25, 1.0, -0.75, -0.25, -1.0, -0.75, 0.5, -0.75, -1.0, 0.0, -0.75, 0.25, 1.0, 0.0, -0.5, -0.25, -0.5, 0.25, 1.0, 1.0, -1.0, -1.0, 0.5, 1.0, 0.75, 0.25, -0.75, 0.25, 0.25, -0.25, 0.25, -0.25, -0.25, -0.75, 0.0, -1.0, 0.5, 0.25, -0.5, 0.5, 0.5, -0.5, 0.75, -1.0, -1.0, 0.75, -1.0, 1.0, -0.25, -0.5, -1.0, 0.75, 0.0, -0.25, -1.0, -1.0, 0.25, 0.75, 0.75, 0.75, -0.25, -1.0, 0.5, 0.25, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const array13 = new Float32Array([0.75, 0.0, 0.0, -0.5, -1.0, 0.75, -0.5, -0.75, -0.75, -0.25, -0.5, 1.0, 0.75, 1.0, 0.75, -0.25, 0.25, -1.0, 0.25, 0.75, -1.0, 0.75, 1.0, 0.25, 0.0, 0.5, -0.25, 0.25, -0.75, 1.0, 0.5, 0.75, -0.75, -0.75, 0.25, 1.0, -1.0, -0.5, -0.5, 0.75, 0.5, -0.25, 0.75, 1.0, 0.25, -0.75, -0.5, -0.25, -0.75, 0.0, 0.5, 0.75, -1.0, 0.25, 0.75, -0.25, 0.0, -1.0, 0.25, 0.0, 0.5, -1.0, -0.75, -0.25, 0.5, 0.5, 1.0, -0.75, 0.75, 0.0, -0.5, -1.0, -0.25, 0.0, 0.75, 0.5, 1.0, -0.5, 0.75, -0.25, 0.0, 0.0, -1.0, -0.25, 0.0, -0.5, 0.25, 0.0, -0.25, 1.0, -0.75, -0.25, -1.0, -0.25, 0.75, 0.25, -1.0, -1.0, 0.75, 0.0, ]);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    
    const array14 = new Float32Array([-0.25, 0.25, -0.5, -1.0, -0.5, -0.75, -0.5, 0.0, 0.25, -0.75, -0.25, -0.5, 0.0, -1.0, -1.0, 1.0, 0.5, 1.0, 0.75, -0.75, 0.0, -1.0, 0.0, -0.5, 0.25, 0.5, 0.0, -0.75, -0.5, 0.5, -0.5, 0.5, -1.0, 0.25, 0.0, 0.5, 1.0, -0.75, 0.0, 0.5, -0.75, -0.75, 0.0, 0.5, 0.5, -0.5, 0.25, -0.25, 1.0, 0.0, 0.75, -0.75, -0.5, -0.75, 1.0, 0.5, -1.0, 0.25, 1.0, 0.25, 0.0, 0.5, 0.25, -0.25, 0.5, -0.5, -0.75, 0.25, 0.25, -0.25, 0.25, 0.25, 0.5, -0.75, -0.25, -1.0, 0.75, 0.0, -1.0, -0.25, -0.5, 1.0, 0.0, -0.25, -0.5, 0.0, 1.0, 0.75, -0.75, 0.75, 1.0, 0.5, -0.25, 1.0, -1.0, -0.5, 1.0, 0.75, -0.5, 0.25, ]);
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const array15 = new Float32Array([-0.25, 0.5, -0.75, -0.75, 0.75, -1.0, -0.25, 0.0, 1.0, -1.0, -0.5, -0.5, 1.0, -0.25, -1.0, 0.5, 0.75, -0.75, -0.75, -0.5, -0.75, 1.0, 0.5, -1.0, -0.75, 1.0, 0.0, -1.0, 1.0, 0.0, 0.75, -0.5, -0.25, 0.0, 0.25, -0.25, 0.5, -0.75, 0.75, 0.0, -0.25, 0.0, -1.0, -1.0, 0.25, 0.0, -0.25, 0.5, 0.5, 0.25, -0.75, 0.0, -0.25, -0.75, 0.75, 1.0, 0.0, 0.5, 0.0, 0.5, -0.5, -0.25, 0.0, -0.25, 1.0, 0.5, -0.75, 0.75, -1.0, -0.25, 0.75, -0.75, -0.5, -0.75, 1.0, 0.25, -0.25, 1.0, 0.75, -0.75, -0.25, -1.0, 0.75, 0.0, 0.5, -0.25, -0.75, -1.0, -0.25, -0.75, -0.25, 0.75, 0.75, 1.0, -0.25, 0.75, 0.25, 0.25, 0.5, 0.25, ]);
    
    
    
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
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
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    query300.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
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
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
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
    query500.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    buffer300.destroy()
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder300.popDebugGroup();
    query501.destroy()
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
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
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout303]
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query302.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query301
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    render_bundle_encoder300.insertDebugMarker("marker");
    texture301.destroy();
    const array16 = new Float32Array([1.0, 0.25, 1.0, 0.5, -0.5, 1.0, 0.75, 0.75, 0.5, 1.0, 0.0, 1.0, -0.5, -0.75, 0.5, 0.0, -0.25, -0.75, 1.0, -0.5, 1.0, 0.25, -0.75, -0.25, -0.25, 0.25, 0.5, -1.0, -0.25, 0.0, 0.0, 0.5, 0.5, -0.75, 0.25, -0.5, 0.75, 0.75, -0.25, 0.5, 1.0, 0.75, -0.5, -0.25, 1.0, 1.0, 0.5, 0.0, 0.25, 0.75, -0.25, 0.75, 0.0, 0.75, -0.5, -0.25, -0.75, 0.5, 0.25, -0.5, 0.75, 0.0, 1.0, 0.0, 0.5, -1.0, 1.0, -0.25, -0.5, 0.75, -0.75, 0.25, -0.75, 0.5, -1.0, 0.25, 1.0, -1.0, 0.75, 0.5, 1.0, 1.0, 0.75, -0.25, 0.25, 0.25, 0.5, 0.25, -0.5, -0.5, 0.75, -1.0, -0.25, -0.25, 0.5, 0.0, 0.25, -0.75, -0.75, 0.25, ]);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout303]
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query300.destroy()
    render_bundle_encoder300.setPipeline(render_pipeline302);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setPipeline(render_pipeline301);
    render_pass_encoder3000.popDebugGroup();
    query301.destroy()
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("out-of-memory");
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout303]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.pushErrorScope("internal");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder5000.popDebugGroup()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeBuffer(buffer501, 0, array10, 0, array10.length);
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    command_encoder501.clearBuffer(buffer501);
    buffer302.destroy()
    device50.queue.writeBuffer(buffer501, 0, array13, 0, array13.length);
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device50.queue.writeBuffer(buffer501, 0, array16, 0, array16.length);
    command_encoder502.copyBufferToBuffer(
        buffer500,
        0,
        buffer501,
        0,
        400
    );
    
    
    device50.queue.writeBuffer(buffer501, 0, array11, 0, array11.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout309,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
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
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
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
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    
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
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout303]
    });
    device50.queue.writeBuffer(buffer501, 0, array15, 0, array15.length);
    device50.queue.writeBuffer(buffer501, 0, array11, 0, array11.length);
    device50.queue.writeBuffer(buffer501, 0, array10, 0, array10.length);
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    query304.destroy()
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder503.insertDebugMarker("mymarker");
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    command_encoder501.clearBuffer(buffer501);
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
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
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.setPipeline(render_pipeline301);
    
    buffer303.destroy()
    query400.destroy()
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
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
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder5030.setStencilReference(1);
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
    command_encoder501.insertDebugMarker("mymarker");
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder5030.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array13, 0, array13.length);
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    query500.destroy()
    
    
    buffer304.destroy()
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
        occlusionQuerySet: query502
    });
    render_pass_encoder5010.beginOcclusionQuery(0)
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
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
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group302);
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    query303.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    const array17 = new Float32Array([0.0, 0.25, -0.25, -1.0, -1.0, 0.75, 0.25, -1.0, -0.75, 0.75, -0.75, 1.0, 0.0, -0.25, 0.75, 0.5, 0.5, -0.25, 0.75, -1.0, -0.75, -1.0, -0.25, -0.5, 0.25, 0.75, -1.0, -0.75, 0.5, 0.75, -1.0, 0.0, -0.25, -1.0, 1.0, -0.25, 0.0, -0.25, -0.75, -1.0, -1.0, -0.5, 0.25, 0.0, 0.5, 0.0, -1.0, -1.0, -0.25, 0.75, 1.0, 0.5, -0.25, 0.25, 0.75, 1.0, -1.0, 1.0, 0.5, -0.75, -0.5, -0.25, -1.0, -1.0, 0.75, -0.75, -0.75, -1.0, 1.0, 1.0, 0.0, 0.0, 0.25, 0.25, 0.5, 1.0, 0.5, 0.75, 0.0, 0.75, -0.25, -0.25, -0.25, 0.75, 1.0, 0.5, 0.0, 0.75, -0.5, 0.25, 1.0, -1.0, -1.0, -1.0, 0.75, 0.5, 0.5, 1.0, -0.5, -0.75, ]);
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    render_pass_encoder5010.setStencilReference(1);
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_pass_encoder5010.insertDebugMarker("marker");
    query600.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    query600.destroy()
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout306,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
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
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    texture302.destroy();
    query305.destroy()
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    buffer307.destroy()
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer306.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout308,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query503.destroy()
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query303.destroy()
    buffer301.destroy()
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    render_pass_encoder5010.endOcclusionQuery()
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    texture300.destroy();
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer501, 0, array14, 0, array14.length);
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3002,
            },
        ],
        occlusionQuerySet: query303
    });
    device50.queue.writeBuffer(buffer501, 0, array10, 0, array10.length);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    render_pass_encoder5020.insertDebugMarker("marker");
    
    render_pass_encoder3000.setStencilReference(1);
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
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

    render_pass_encoder3000.setBindGroup(0, bind_group303);
    query304.destroy()
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5010.pushDebugGroup("group_marker");
    buffer308.destroy()
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.setStencilReference(1);
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer305.destroy()
    texture502.destroy();
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
    device50.queue.writeBuffer(buffer501, 0, array17, 0, array17.length);
    query601.destroy()
    query301.destroy()
    const compute_pipeline3047 = device30.createComputePipeline({
        label: "compute_pipeline3047",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query302.destroy()
    
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5010.setPipeline(render_pipeline500);
    
    const compute_pipeline3048 = device30.createComputePipeline({
        label: "compute_pipeline3048",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    const compute_pipeline3049 = device30.createComputePipeline({
        label: "compute_pipeline3049",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setPipeline(render_pipeline302);
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout304]
    });
    const array18 = new Float32Array([-0.5, -0.75, -0.25, -0.25, 0.75, 0.75, -0.25, 0.0, 1.0, -0.25, -0.25, 0.75, 0.25, 0.75, 1.0, -0.25, -0.25, 0.0, 0.75, 0.5, 0.25, -1.0, 0.25, -0.75, -0.5, -0.5, -0.75, 1.0, 0.5, -0.25, 0.75, 0.75, 0.75, 0.0, -0.25, -1.0, -0.75, 1.0, -1.0, 1.0, -1.0, 0.5, -1.0, -0.75, 0.25, -0.25, -1.0, 0.75, -0.5, -1.0, 0.5, -0.25, 0.25, 0.0, 0.75, -0.75, 0.5, -0.75, -0.25, -0.75, 1.0, -0.75, 0.75, 0.75, -0.75, 1.0, 1.0, -0.75, -0.25, 0.0, 0.5, 0.75, 0.75, 0.5, -1.0, -0.75, -0.75, -0.25, -0.25, 0.75, -0.75, -0.5, -0.5, 0.0, -0.5, 0.0, -0.25, 0.0, 0.0, -1.0, -0.25, 0.75, -0.75, -0.75, 0.0, -1.0, -0.75, 0.5, 0.5, 0.75, ]);
    const compute_pipeline3050 = device30.createComputePipeline({
        label: "compute_pipeline3050",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    query402.destroy()
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
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
    device40.queue.writeTexture({ texture: texture400 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer500.destroy()
    query400.destroy()
    buffer600.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder502.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture400 }, array18, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_pass_encoder5010.setBindGroup(0, bind_group500);
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3051 = device30.createComputePipeline({
        label: "compute_pipeline3051",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device50.pushErrorScope("out-of-memory");
    device50.queue.writeBuffer(buffer501, 0, array13, 0, array13.length);
    render_pass_encoder5020.setStencilReference(1);
    render_pass_encoder5030.setPipeline(render_pipeline500);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5020.setPipeline(render_pipeline500);
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group304);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group501);
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
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_pass_encoder5030.setBindGroup(0, bind_group502);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    const command_buffer600 = command_encoder600.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}