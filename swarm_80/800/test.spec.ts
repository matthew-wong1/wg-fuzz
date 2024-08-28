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
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const array0 = new Float32Array([-1.0, 0.5, -0.75, -0.75, 0.0, -0.25, 0.25, -0.5, 0.25, 0.75, -0.75, -0.5, 0.75, 0.25, 1.0, 0.75, -0.5, 0.0, 0.25, -0.5, 0.0, -0.5, -0.25, 0.0, 0.5, 1.0, 0.25, 0.0, 0.75, 1.0, 0.5, -0.75, -1.0, 0.0, -0.5, 1.0, 1.0, -1.0, 0.5, 0.25, 0.0, 0.75, -0.25, -0.5, -1.0, -0.75, 0.75, 0.75, 0.0, -0.5, -0.5, -1.0, 0.25, 0.75, -1.0, 0.75, -0.5, -0.5, -0.75, 0.5, 1.0, 0.0, -0.75, -0.5, -0.75, 0.75, 0.5, -0.5, 0.25, 0.0, -0.75, -1.0, 0.25, 0.5, -0.75, -0.5, 0.25, 0.25, 0.5, -0.5, 0.75, 0.25, 0.5, 0.25, -0.75, 0.25, 0.25, -0.25, -1.0, 1.0, -0.5, 1.0, -0.25, -0.5, 0.25, 0.5, -0.25, -0.25, 0.0, -0.5, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    query002.destroy()
    const array1 = new Float32Array([0.5, 0.25, -0.75, 1.0, -0.5, -0.5, 0.25, -0.5, 0.25, 0.75, 0.0, -0.5, -1.0, 0.0, 0.0, 1.0, -0.75, 0.5, -1.0, 0.75, -0.75, -1.0, 0.5, 1.0, 1.0, -0.5, 0.5, 0.75, -0.75, 0.75, -1.0, -0.25, -0.75, 0.0, 1.0, -0.75, 0.75, 1.0, 0.75, 0.75, 0.75, -0.5, 1.0, 1.0, 0.0, 0.25, -0.25, 1.0, -1.0, -1.0, 0.5, 0.75, -1.0, -0.25, 0.75, 0.5, 0.5, -0.75, -1.0, 0.5, -0.25, 0.5, -0.25, 0.0, 0.5, 1.0, 0.5, 0.5, 0.0, 0.25, 0.25, -0.5, -0.25, 0.75, 0.5, -1.0, -0.25, -0.75, -0.25, 0.5, -0.75, -0.5, 0.0, 0.0, -0.5, 0.25, -1.0, 0.0, -0.5, -1.0, 0.0, 1.0, 0.0, -0.75, 0.5, 0.25, 0.25, 0.5, 0.25, -0.5, ]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    query001.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    query000.destroy()
    device00.destroy();
    
    const array2 = new Float32Array([-0.25, 0.25, -1.0, -0.75, 0.75, -0.5, -1.0, 0.5, -1.0, 0.25, 0.25, 0.25, 0.25, 0.0, -0.75, 0.75, 0.75, -0.5, -0.5, 0.75, 0.75, 1.0, -0.5, 0.0, -0.25, 0.0, 0.5, 1.0, -0.75, -1.0, -0.25, 0.5, 0.75, -0.75, -0.5, 1.0, -0.25, 1.0, -0.5, -0.5, 0.25, -0.5, -0.75, 1.0, -0.25, 0.0, -0.25, -0.75, -0.75, -1.0, -0.25, 0.75, 0.5, -0.5, -0.5, -0.25, 1.0, 1.0, -0.75, 0.75, -0.25, -0.25, 0.75, -1.0, -0.25, 0.25, 0.25, -1.0, -0.25, 0.0, -0.75, 0.5, -0.25, -0.25, 0.0, 0.75, -0.5, 0.5, 0.5, -0.5, -0.75, -1.0, 0.75, 0.75, -0.25, 1.0, -0.75, 0.0, 0.5, 0.25, 0.5, -1.0, 0.5, -0.5, 0.5, 0.5, 0.75, -0.75, 0.5, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([-0.5, 1.0, -0.25, 0.5, -0.75, -0.5, 0.25, 0.0, 0.75, 0.0, -0.75, 0.25, 0.0, 0.25, 1.0, -0.25, 0.0, -0.5, -0.5, 0.75, 0.0, 0.0, 0.25, 0.0, 0.25, 0.25, 0.75, -0.75, -0.25, -0.25, 1.0, 0.25, 0.5, -0.25, 0.0, -0.5, -1.0, 0.75, 0.75, 0.25, -0.5, -1.0, -0.75, 1.0, 0.5, 1.0, -1.0, 0.25, 0.25, -0.25, 0.75, -0.5, 0.75, 1.0, -0.25, -0.5, -0.25, 1.0, 1.0, 0.25, -0.75, -1.0, -1.0, -0.25, 0.75, 0.25, 0.75, -0.5, -0.75, 0.5, 0.0, 1.0, 0.25, 0.5, 1.0, 1.0, -0.5, -1.0, -1.0, 0.0, -0.25, 0.5, 0.0, -0.25, -0.75, -0.5, 0.0, 0.0, -0.75, -1.0, 0.75, 0.0, 0.75, 0.25, 0.25, 0.5, -1.0, -0.75, 0.75, -0.75, ]);
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array4 = new Float32Array([0.25, 0.5, -1.0, -0.5, -1.0, -0.25, -0.25, -0.75, -0.75, 0.75, 0.25, 0.5, 0.0, 0.0, -0.75, -0.75, -1.0, -0.75, 0.0, -1.0, 0.25, 0.25, 1.0, 0.0, 0.5, 0.25, 0.75, 0.75, 0.0, 0.75, 0.25, 0.5, 1.0, 0.75, -1.0, 0.75, -0.75, 1.0, -0.75, 1.0, -0.5, -1.0, -0.75, -1.0, 0.0, 0.25, -0.75, 0.25, -0.25, -1.0, 0.0, 0.25, 0.5, -1.0, -0.75, -0.25, 0.25, -1.0, -0.5, 0.5, -0.75, 0.5, 0.75, 0.0, -1.0, 1.0, 0.0, 0.5, 1.0, -0.75, 0.5, -1.0, -0.5, -1.0, 1.0, 0.0, 0.25, -1.0, 0.5, 0.25, 0.75, 1.0, 0.5, -1.0, 1.0, -0.25, 0.0, -0.75, -1.0, 0.0, -1.0, 0.5, -0.75, 0.5, 0.75, -1.0, -1.0, -1.0, -0.25, -0.75, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device20.destroy();
    buffer100.destroy()
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device10.destroy();
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
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
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device30.destroy();
    
    
    
    const array5 = new Float32Array([-0.75, 0.75, 1.0, -1.0, -1.0, -0.25, 1.0, -0.5, 0.25, 0.0, -0.75, 0.75, 0.75, -0.25, 0.75, -0.75, 0.75, -0.75, 0.75, -1.0, -0.5, 0.5, 0.25, -0.75, 1.0, 1.0, 0.75, -0.75, -0.5, -0.25, 0.25, -0.75, -0.5, 0.25, -0.75, 0.0, -1.0, 0.0, -0.25, -0.25, 0.0, -0.5, 0.75, -0.75, 0.5, 0.5, 1.0, 1.0, 0.0, 0.5, -0.75, -0.5, -0.75, 0.25, -0.25, 1.0, -0.25, -0.75, 0.5, 0.5, -1.0, 0.0, 0.0, 0.25, -0.25, 1.0, 0.0, 0.75, 0.25, -0.5, 1.0, -1.0, -0.5, -0.5, -1.0, 0.5, -0.5, 1.0, 0.5, -0.25, 0.0, 0.75, 0.25, -0.75, 1.0, -0.75, -0.75, 0.75, -0.75, -0.5, -1.0, 0.75, -0.75, 0.0, -0.25, -0.75, 0.25, 0.0, 0.5, -0.25, ]);
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
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
    
    const array6 = new Float32Array([0.25, 1.0, 0.5, 1.0, 0.25, 0.75, 0.5, 0.5, -0.5, -0.5, 0.75, 1.0, 0.25, 0.25, 0.75, -0.25, -0.25, -0.75, 0.25, -0.5, -0.25, 0.75, 0.5, -1.0, -0.5, 0.25, -1.0, -0.25, -1.0, 0.5, 0.5, -0.75, -1.0, -1.0, 0.75, -0.25, 0.75, 0.5, 1.0, 1.0, -0.5, -0.75, 0.0, 1.0, -1.0, -1.0, -0.25, 0.75, -0.25, -0.5, 0.25, -0.75, -0.25, -0.25, 0.75, -0.25, -0.25, -0.25, 0.5, -0.25, -0.75, 0.5, -1.0, 0.5, -1.0, 1.0, -1.0, -0.5, 0.0, 0.5, -0.5, -0.75, -0.25, -0.25, -1.0, 0.0, 0.5, 0.25, 0.25, -1.0, 0.5, 0.0, -0.25, -0.75, -0.5, -1.0, -1.0, -0.75, 0.5, 0.25, 0.0, 1.0, 0.25, -0.5, 0.75, -1.0, 0.25, 0.5, -1.0, 0.0, ]);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    device40.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array7 = new Float32Array([1.0, -0.5, -0.75, 0.0, -0.75, -1.0, -0.25, 0.5, -0.5, 1.0, -1.0, -0.5, -0.5, 1.0, 0.25, -0.75, -0.25, 1.0, 0.25, -0.25, -0.25, 0.5, -1.0, 0.25, 0.5, 0.5, 1.0, -1.0, -1.0, 1.0, -0.75, -0.5, -0.75, 1.0, 0.5, -0.25, -0.25, -0.5, -0.5, 0.0, -1.0, 0.5, 1.0, 0.0, 1.0, -0.25, 0.5, 0.5, -0.5, -0.5, 0.0, 1.0, 0.5, 0.5, 0.25, -1.0, 0.0, 1.0, -0.75, -1.0, 0.0, 0.75, -0.75, 1.0, 0.0, 1.0, 0.75, -0.75, -1.0, -0.75, -0.5, 0.5, -1.0, -0.25, 1.0, -0.75, 0.25, 0.75, 1.0, 0.0, 0.75, -1.0, -0.25, 0.0, -0.5, 1.0, -0.5, 0.25, -0.75, -1.0, 0.75, 0.25, 0.75, 0.0, 0.25, -0.25, 1.0, 0.5, 0.25, 0.5, ]);
    const array8 = new Float32Array([-0.25, 1.0, 0.25, 0.0, -0.5, -0.75, -0.75, 0.5, -0.75, 0.75, -1.0, -0.5, 0.0, -1.0, 0.5, -1.0, -0.5, 0.75, -0.25, 1.0, 0.5, -0.75, 0.0, -0.75, -1.0, -0.5, 0.75, 0.0, -0.5, -0.75, 0.25, 0.25, 0.5, -0.5, 1.0, -1.0, 0.75, 0.5, 1.0, -1.0, 0.5, -0.75, -0.25, 1.0, 0.25, 1.0, 0.25, 0.25, 1.0, -1.0, 0.75, -1.0, -1.0, -0.75, 0.0, -1.0, 0.5, 0.0, -0.25, 0.0, -0.75, -0.75, -0.75, 1.0, -1.0, 0.5, 0.25, 0.25, 0.5, -0.25, 0.0, 0.0, -0.25, -1.0, 0.5, -0.5, 0.25, -0.75, 1.0, -0.75, 1.0, 1.0, 0.25, -1.0, 0.0, 0.25, -0.5, -0.5, 0.75, -0.75, 0.25, 0.5, -0.25, 0.5, -1.0, 0.25, 0.75, 0.0, 1.0, 0.75, ]);
    const array9 = new Float32Array([0.5, -1.0, 1.0, -0.25, 0.5, -0.5, 0.75, -0.75, 0.5, -0.75, 0.25, 0.25, -0.75, -0.75, -1.0, 0.25, 1.0, -1.0, 1.0, -1.0, 0.0, 0.5, 1.0, -0.75, -1.0, -0.75, -0.75, 0.25, 1.0, 1.0, -0.25, -0.5, 0.25, -1.0, 1.0, -0.5, -0.75, 0.0, 0.0, 0.0, 0.25, -1.0, 0.75, 0.0, 1.0, -0.5, 0.5, 0.25, -0.75, 0.75, 0.5, -0.25, 0.25, 0.0, 1.0, -1.0, 0.75, -0.75, 0.0, 1.0, -0.75, -0.5, 0.25, 0.25, 0.75, 0.5, 0.25, 0.25, 1.0, -1.0, 0.5, 0.0, -1.0, -1.0, 1.0, -1.0, -0.25, 1.0, 0.75, -0.75, 0.75, 0.5, 1.0, -0.25, -0.25, 0.5, -0.75, -0.5, 0.25, 0.5, -1.0, -0.25, 0.0, 0.5, 0.25, -0.75, -0.75, 1.0, -0.25, -1.0, ]);
    
    
    const array10 = new Float32Array([1.0, -0.25, 0.75, 0.25, 0.25, 1.0, -0.25, 0.0, 1.0, 1.0, -0.5, -0.5, -0.5, -0.5, -1.0, 0.25, -0.5, -0.75, -0.5, 0.25, -0.75, 0.25, 0.5, -0.25, 0.0, 0.0, -1.0, 0.25, 1.0, -0.75, -0.25, -0.25, 0.25, 0.75, -0.5, -0.5, -1.0, -0.5, 0.75, -0.75, -1.0, -0.5, 0.75, 0.0, -0.5, 0.5, -1.0, -0.25, -0.5, -0.5, -0.75, 0.75, -0.75, 1.0, 1.0, 0.25, 0.75, -1.0, -0.75, -0.5, -0.25, -0.75, 0.25, -0.25, -0.5, 0.0, -1.0, -0.5, -1.0, 0.5, 0.25, 0.5, -0.5, -0.25, -0.75, -1.0, 0.0, 0.75, 0.25, -0.5, 0.25, 0.0, 1.0, 1.0, 0.75, 1.0, -0.5, -1.0, -1.0, -0.25, 0.75, 1.0, -0.75, -0.75, 1.0, 0.0, -1.0, 0.5, 0.75, 0.75, ]);
    
    
    
    
    
    const array11 = new Float32Array([0.25, 0.75, -1.0, -0.5, 0.0, 1.0, -0.25, -0.5, 1.0, 0.5, -0.5, -0.25, -0.75, -0.25, -0.25, 0.5, 0.0, 1.0, 0.25, 0.5, 0.25, -0.25, -1.0, 1.0, 0.25, 0.25, -0.25, -0.75, -0.25, 1.0, 0.75, 0.5, 0.25, 0.0, 0.5, 0.25, -0.75, 0.75, 0.5, 0.5, -1.0, -0.25, -0.5, 0.75, 0.5, 0.25, -0.5, 0.5, 1.0, -0.5, 0.0, -0.25, 0.0, 0.25, 0.25, -1.0, 0.25, -1.0, 1.0, 1.0, -0.25, -0.75, -1.0, -0.5, 0.5, -0.75, -0.25, 0.25, 0.25, -0.5, 0.0, 0.5, 0.5, -1.0, 0.0, -1.0, -0.5, 0.5, 0.75, -0.75, 0.0, 1.0, 1.0, -1.0, 0.0, -1.0, -1.0, 1.0, -0.75, 0.0, 0.0, -1.0, -0.25, 1.0, 0.75, 0.25, 0.25, -1.0, 0.25, 0.0, ]);
    
    
    
    
    
    const array12 = new Float32Array([-0.75, -0.75, -0.5, 0.0, 0.25, 0.25, 0.0, -1.0, 0.5, -0.5, -0.25, -1.0, -1.0, 0.75, -0.5, -0.25, -1.0, 1.0, -0.25, 1.0, -0.5, 0.5, -0.5, -0.75, 0.0, 0.5, 0.0, 0.0, 0.25, 0.5, -1.0, 0.25, -0.75, 0.0, -1.0, 0.75, 0.75, -0.25, -1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.25, -1.0, -0.75, 0.0, -0.25, 0.5, 0.5, 0.75, -0.5, -0.5, 0.25, -0.25, -1.0, 0.75, -0.25, 0.5, -0.75, -1.0, -0.5, -0.5, 0.25, 0.25, 1.0, 0.25, 1.0, -0.25, -1.0, -1.0, -0.5, -1.0, 1.0, 0.5, 0.0, 0.0, 1.0, 0.5, -1.0, 0.25, 0.75, -0.75, -0.5, 0.0, 0.0, -0.75, 0.0, -1.0, 0.25, -0.75, -1.0, -0.25, 0.75, 0.25, -1.0, 0.5, 0.25, -0.25, ]);
    
    
    
    const array13 = new Float32Array([0.0, 0.25, 0.25, 0.25, 0.0, -1.0, 0.25, -1.0, 1.0, -0.25, 1.0, 0.25, 0.75, 0.75, 0.0, -0.25, -0.75, 1.0, 0.0, -0.5, -0.75, 0.25, 0.5, -0.5, -0.25, 0.0, 0.75, 0.75, -0.75, 1.0, 0.0, 0.5, 0.0, 1.0, 0.75, 0.75, -0.5, 1.0, 0.75, -0.75, 1.0, -1.0, 0.0, 1.0, 0.25, 0.75, -0.5, 0.75, 1.0, 1.0, -1.0, 0.0, 0.0, 0.5, -0.75, -1.0, -1.0, 0.75, -0.75, 0.5, -0.5, 0.25, 0.5, 0.75, 0.0, 0.5, 0.75, -0.75, 0.5, 0.0, -0.25, -0.75, 0.25, 0.0, 1.0, 0.0, -0.25, 0.0, -0.75, 0.75, 1.0, 1.0, -0.5, 1.0, -0.75, -0.5, 1.0, 0.5, 0.0, 0.5, -0.5, 0.25, 1.0, -0.75, 0.0, 0.25, 0.0, -0.25, -0.5, -0.5, ]);
    
    const array14 = new Float32Array([1.0, -1.0, -0.75, 0.5, 1.0, 0.75, 0.5, 0.0, 0.75, -0.75, -0.5, 0.75, 0.0, 0.5, -0.5, -0.5, 0.5, 1.0, -0.5, 0.75, -0.25, 1.0, 0.5, 0.75, 0.5, 0.0, 0.5, 0.5, 1.0, 0.0, -0.75, -0.75, 0.0, 1.0, -1.0, 0.0, 0.5, 0.5, -0.25, 1.0, -0.75, 0.0, 0.25, -1.0, -0.5, -0.5, 0.5, -0.75, -0.75, -0.5, 1.0, -0.5, -0.25, -0.25, -0.25, -0.25, -0.5, 0.25, 0.25, -1.0, -0.75, -0.75, 0.0, 1.0, 0.25, 0.75, -0.75, 1.0, 1.0, 1.0, 0.25, -0.25, 0.75, -0.5, 0.5, 0.75, 0.25, -0.25, 0.75, 1.0, 0.0, 0.0, 0.25, -0.5, 0.25, 0.5, 1.0, 1.0, -0.5, -1.0, 1.0, 0.0, -0.25, 0.5, -1.0, -0.25, 1.0, -0.75, 1.0, 1.0, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    device50.destroy();
    
    
    const array15 = new Float32Array([0.0, -1.0, 1.0, -0.25, 1.0, -0.75, -0.25, 0.0, 1.0, -0.5, -0.25, -0.75, 0.25, -0.75, -0.25, 0.75, -0.5, 1.0, -1.0, -0.25, -0.25, 0.0, -0.5, 0.5, 0.25, -0.25, 0.0, -1.0, -0.75, -0.75, -1.0, 0.5, 0.5, -0.25, -0.5, 0.75, -1.0, -0.5, 0.75, -1.0, -0.75, -0.25, 1.0, -0.75, -1.0, -0.75, -0.75, 0.75, -0.75, -1.0, 0.5, 0.75, 0.5, 0.0, 0.25, -0.25, -1.0, 0.25, -0.25, 1.0, 0.5, 0.75, -0.75, 0.75, 0.0, 0.5, 0.75, 0.0, 0.25, -0.25, 1.0, 0.75, 1.0, -0.25, -0.75, 0.5, 0.75, -0.5, 1.0, 1.0, -0.25, 0.75, -0.75, 0.0, -0.25, 0.75, 0.5, 0.75, -1.0, 0.25, -1.0, 0.0, 0.25, -0.5, -0.25, -0.5, -0.25, -1.0, -0.25, 0.0, ]);
    const array16 = new Float32Array([0.75, 0.25, 0.5, -1.0, -0.75, -0.5, -0.75, 0.75, -0.25, 0.25, 0.25, 0.5, 0.75, -0.75, 0.25, -1.0, -0.5, -0.75, 0.75, 0.25, 1.0, -0.5, 0.25, -0.25, 0.0, -0.5, -0.75, -0.25, -0.5, 1.0, -0.25, -0.75, -0.75, -1.0, -1.0, 0.25, 0.75, -1.0, 0.0, -0.5, 1.0, -0.25, -0.75, -0.25, 0.75, 0.5, -0.75, 0.0, 1.0, 0.25, -0.75, 1.0, -0.25, -0.75, 0.75, 0.75, 0.25, -1.0, -0.5, 0.0, 1.0, 0.0, 0.0, 1.0, -0.75, 0.25, 0.25, 1.0, 0.5, -0.5, 0.5, 0.5, -1.0, 1.0, 0.25, 0.5, 0.75, 0.5, -0.25, 0.25, 0.25, 0.0, -0.5, -0.5, 0.25, 0.25, -0.75, -0.25, 0.5, 0.75, -0.5, -1.0, -1.0, 0.5, 0.25, -0.25, -0.75, 0.25, -0.25, 0.25, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    const array17 = new Float32Array([-0.25, -0.75, -0.75, 0.0, -1.0, -0.25, -0.75, 0.75, 0.5, -0.25, 0.75, -0.75, -0.25, -0.25, 0.0, -0.75, -1.0, 1.0, -0.25, 1.0, 0.25, 1.0, -1.0, -0.75, -1.0, -0.25, 0.5, -1.0, 0.5, -0.5, -0.5, -1.0, 0.25, 1.0, 0.0, 0.75, -0.75, 0.75, -0.25, 1.0, 0.25, -1.0, -0.5, -1.0, -0.75, -0.5, -0.5, -0.75, 0.5, 0.5, -0.5, -0.75, 0.5, 1.0, 1.0, 0.25, -0.25, 0.0, -1.0, -0.75, 0.5, 0.25, -0.75, 0.75, 0.5, 0.5, -0.5, -0.75, -0.75, 0.5, 1.0, 0.0, 0.75, 1.0, 1.0, -0.75, 0.0, -0.5, 0.5, -1.0, 0.75, 0.25, 0.25, -1.0, 0.5, -0.75, 1.0, -1.0, -0.75, -0.75, -0.75, -0.25, 0.0, 0.0, -0.75, 0.0, -0.25, 0.5, -0.25, -0.5, ]);
    
    
    
    
    
    const array18 = new Float32Array([-0.75, -0.25, 0.25, -0.75, 0.0, -1.0, -1.0, -1.0, -1.0, 0.5, 0.5, 0.25, -0.75, 0.5, 0.0, 1.0, 0.75, -1.0, 0.5, 0.5, 0.5, 0.0, -1.0, -0.25, -0.75, -0.5, 1.0, 1.0, 0.25, -0.25, 0.0, -0.75, -0.25, -0.5, -0.75, -0.75, -0.75, 0.5, 0.75, 0.75, -0.5, 0.75, 0.25, -0.25, -1.0, -0.5, -0.25, 1.0, 0.0, 0.25, -0.25, 0.25, -0.25, 0.75, 0.0, -0.75, -0.25, -0.25, 0.75, 1.0, 0.75, -0.5, 1.0, 1.0, -1.0, 0.75, 0.25, 0.5, -1.0, -1.0, 0.0, -1.0, 1.0, 1.0, 0.25, 0.5, -0.75, 0.25, -0.75, -0.5, -0.5, -1.0, -0.75, 0.5, -0.75, -0.75, 0.5, -0.5, 0.5, -0.25, 0.5, -0.25, 0.0, 0.75, 0.5, -0.5, -1.0, -0.5, 0.25, 1.0, ]);
    
    
    
    const array19 = new Float32Array([0.0, 1.0, 0.25, 0.25, 1.0, 0.5, -0.5, -1.0, 0.75, -1.0, 0.0, 0.75, 0.5, 0.25, 0.75, 1.0, 0.25, 0.75, 1.0, -0.5, -1.0, 1.0, -0.5, 0.0, -0.25, -0.5, 1.0, -0.5, -1.0, 0.75, -1.0, -0.5, -0.75, 0.25, 0.75, -0.75, 0.75, 0.25, -0.5, 0.25, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0, 0.5, 0.5, 0.0, 0.5, -0.75, 0.75, 0.0, 0.75, -0.5, 1.0, -0.25, -0.75, 0.25, -1.0, 0.5, 0.0, -0.25, 0.25, 0.75, 1.0, 0.0, -0.5, 0.0, 0.0, 0.5, -0.5, -0.5, 0.75, 0.25, -0.5, 0.25, -0.25, 0.0, 0.75, -0.5, -0.75, 1.0, 0.0, 0.25, 1.0, 0.25, -0.25, 0.5, 0.25, -0.25, -1.0, 0.25, 0.5, -0.25, -0.5, -0.5, 0.5, 0.5, 0.0, ]);
    
    
    
    
    const array20 = new Float32Array([-1.0, 1.0, -1.0, -1.0, 1.0, 0.0, 0.5, 0.0, 0.25, -0.75, 0.25, 0.5, -1.0, -0.5, 0.5, -0.25, 0.25, 0.25, -0.5, -1.0, 0.5, 0.0, -0.75, -0.25, -0.75, 0.0, 0.75, -0.75, 0.5, -1.0, 0.75, 1.0, 1.0, -0.75, 0.75, -0.75, -0.5, 0.0, 0.5, 1.0, 0.75, -0.25, 0.0, 0.5, -0.75, -1.0, 0.75, 0.25, -0.75, 0.5, 1.0, -0.75, 0.75, -0.25, -0.5, 0.0, -1.0, 0.75, 0.75, -0.25, -0.25, -0.25, -0.5, 0.25, -0.5, 0.25, -0.75, -0.75, 0.75, 0.75, 0.75, -0.5, 0.75, 0.25, -0.25, -0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.5, -1.0, -0.75, 0.25, 0.0, 0.25, -1.0, -1.0, -1.0, 0.25, 0.25, -1.0, -0.5, 0.25, 0.5, -1.0, -0.25, -1.0, -0.25, ]);
    
    
    
    
    const array21 = new Float32Array([0.5, 0.75, 0.5, 0.75, 1.0, -0.75, -0.25, 0.75, 0.5, 0.0, -1.0, 1.0, 0.5, 1.0, -0.25, -0.5, 0.25, 1.0, 0.0, 0.75, 1.0, -0.75, -0.25, -0.75, -0.75, 1.0, 0.0, 0.25, 0.5, 0.0, -0.5, -0.5, 1.0, -0.5, -0.75, -0.75, 0.0, -0.25, 0.5, -0.25, -1.0, -0.25, -0.5, -0.5, -0.75, -0.75, 1.0, -0.75, -0.75, -1.0, 0.0, 0.25, 0.75, 0.0, 0.5, 0.5, 1.0, 0.5, 0.5, 0.5, -0.25, -1.0, 0.5, -0.5, -0.5, 0.0, -0.25, 0.25, 0.5, -0.5, 0.75, -0.75, 0.0, -0.25, -0.75, 0.25, -0.75, 1.0, -0.5, 0.25, -0.75, 0.5, 0.75, -0.25, 0.25, -1.0, 0.75, 1.0, -1.0, -1.0, 0.0, 0.5, -0.25, 0.0, 0.25, 0.25, 0.0, 0.0, -0.25, 0.0, ]);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    
    
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const array22 = new Float32Array([0.0, 0.25, 0.0, -0.5, 0.75, 0.5, -0.25, -0.25, 0.25, 0.5, 0.75, 0.0, 1.0, 0.0, -0.5, 0.75, -0.75, -1.0, 0.75, -0.75, 0.75, 0.75, -1.0, 0.75, -0.5, -0.25, -0.25, 0.75, -0.5, -0.5, 0.25, 0.5, -0.25, 0.5, 1.0, -0.5, 0.0, -1.0, 0.5, -0.25, 0.0, 0.5, 0.5, 0.25, 0.25, 0.5, 0.0, -0.75, 1.0, 0.75, -0.5, -0.5, 0.5, 0.0, -1.0, 0.75, 0.75, -0.25, 0.25, 0.0, -0.5, -0.75, 0.75, 0.75, -0.5, -0.5, 0.5, 0.75, -1.0, 1.0, 1.0, 0.75, 0.75, 1.0, 0.0, -1.0, 0.5, -0.5, 0.5, 0.0, 0.75, -1.0, 0.0, -1.0, 0.5, 0.75, 0.0, -0.75, -0.75, 1.0, 0.25, 0.25, 1.0, -0.75, 0.75, -0.75, 0.25, 0.0, -0.5, 1.0, ]);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    query600.destroy()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
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
    texture600.destroy();
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    buffer700.destroy()
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer600.destroy()
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const array23 = new Float32Array([0.75, -1.0, 0.75, -0.75, -0.75, 0.5, 0.5, 0.25, -1.0, 0.25, 1.0, 0.5, -0.5, -1.0, 0.0, -0.25, 1.0, 0.0, -0.25, 0.0, -0.25, 0.0, 0.75, -1.0, -1.0, -0.5, 0.25, 0.0, 0.25, -0.75, -0.25, 0.75, -1.0, 0.25, -0.5, -0.25, -1.0, 0.5, 0.5, 0.0, 1.0, -0.25, -0.25, -1.0, 0.75, 0.0, 0.0, 0.5, 0.75, -0.75, 1.0, -1.0, -0.5, -0.75, -0.75, -0.5, 0.75, 0.75, 0.0, -0.75, -0.75, -0.75, -0.25, 0.75, -0.5, 0.25, 0.5, 0.75, -1.0, -1.0, -0.25, -0.25, 0.5, -0.25, 0.5, -0.25, -0.5, 0.75, 0.75, 0.25, 0.25, 0.5, -0.5, -1.0, 0.5, -1.0, -0.25, 0.25, 0.25, 0.75, -1.0, 0.0, 0.75, 0.75, 0.0, 1.0, 0.75, 1.0, 0.5, 0.0, ]);
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    query701.destroy()
    query600.destroy()
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    
    
    
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const array24 = new Float32Array([0.0, 0.25, -0.75, -0.5, 0.5, -0.25, 1.0, -1.0, 0.75, -0.75, 0.0, 0.75, 0.25, -0.25, -1.0, 0.25, -0.25, 1.0, -0.75, 0.75, -1.0, -0.25, 0.75, 1.0, -0.75, -0.5, -0.5, -1.0, -0.75, 1.0, 0.0, -1.0, -1.0, 0.0, -0.75, -0.5, 0.75, 0.75, -0.5, 0.75, -0.5, 0.5, -1.0, 0.25, 0.25, -0.25, -0.5, 1.0, 0.25, 1.0, 0.0, 0.75, -1.0, 0.0, 1.0, 0.75, -1.0, 0.75, -0.75, 1.0, 0.0, 0.0, 0.25, -0.75, 0.0, 0.5, -0.5, 0.5, -0.25, 0.0, -1.0, -1.0, 0.25, 0.25, 0.75, 1.0, 1.0, 1.0, 1.0, 0.0, -0.25, 1.0, -1.0, -0.75, 0.0, -0.25, 1.0, -0.75, -0.75, 1.0, -0.25, 0.0, 0.75, 0.75, -0.5, -0.5, 0.0, 0.75, 0.75, -0.75, ]);
    query700.destroy()
    query600.destroy()
    render_bundle_encoder602.popDebugGroup();
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    
    texture601.destroy();
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
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
    render_bundle_encoder600.insertDebugMarker("marker");
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    texture602.destroy();
    
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout601]
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device70.destroy();
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout601]
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    query600.destroy()
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    
    
    render_bundle_encoder602.popDebugGroup();
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout600]
    });
    query600.destroy()
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    buffer601.destroy()
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
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
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout608,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    texture603.destroy();
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout606,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const array25 = new Float32Array([-0.25, -0.75, 0.75, 1.0, 0.0, 0.25, -0.75, -0.5, -1.0, -0.25, -0.75, 0.0, 0.5, 0.25, 1.0, 0.25, -0.25, 0.25, -0.75, 0.0, -0.5, 0.5, -0.75, -0.25, -1.0, 0.5, 1.0, 0.25, 0.0, 0.0, -0.5, 0.5, -1.0, 0.5, -1.0, -0.5, -0.5, 1.0, -1.0, 0.0, 1.0, -1.0, -1.0, 0.0, 0.75, -1.0, 0.0, -0.5, -1.0, 0.0, -0.25, 1.0, 0.75, -1.0, 0.75, -1.0, 0.75, -1.0, 0.25, -0.75, 0.0, -0.5, 0.25, 1.0, -0.25, 0.75, -0.25, -1.0, -0.75, 1.0, 1.0, 1.0, 1.0, -0.5, 0.25, -1.0, 0.75, -0.25, 0.5, 1.0, -0.5, -0.5, -0.25, 0.75, -1.0, 0.25, 1.0, -0.5, -0.25, 0.75, 0.75, 0.25, -1.0, -0.25, 0.5, 0.0, 0.75, -0.5, 0.25, -0.75, ]);
    render_bundle_encoder601.popDebugGroup();
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    render_bundle_encoder600.popDebugGroup();
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
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
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
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
    
    const pipeline_layout6010 = device60.createPipelineLayout({ 
        label: "pipeline_layout6010",
        bindGroupLayouts: [bind_group_layout602]
    });
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout607,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout609,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device60.destroy();
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
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
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    device80.destroy();
    
    const array26 = new Float32Array([-0.25, 0.25, 0.75, 0.75, -1.0, -0.25, 1.0, -1.0, 1.0, -0.75, 0.0, -0.5, -0.75, 0.25, -1.0, 0.0, 0.75, 0.0, 0.0, -0.5, -0.25, -0.25, -0.25, -0.5, 0.25, -1.0, 0.0, 0.75, 0.5, -0.25, -0.5, 0.5, 1.0, 0.0, 0.0, 0.5, 0.5, 1.0, 0.75, 0.25, 0.75, 0.0, 1.0, 0.75, -0.75, 0.25, 1.0, 0.25, 0.75, -0.25, -0.75, 1.0, -0.5, 1.0, -0.75, -0.25, 1.0, 0.25, 0.0, 1.0, 0.75, 0.75, 0.25, 1.0, 0.75, -0.5, 0.0, 0.5, 0.5, -0.5, 0.25, -0.25, -0.5, 0.75, 0.75, -0.75, -0.5, 0.0, 0.5, -0.5, 1.0, 0.5, -0.5, -0.75, 0.5, -0.5, 0.0, -0.25, 0.25, 1.0, -1.0, 0.25, 0.75, 0.0, 0.5, 0.25, 0.75, -0.75, 0.25, 0.25, ]);
    const array27 = new Float32Array([-1.0, 0.5, 0.75, -0.75, -0.25, 0.75, -0.75, 0.75, -1.0, 0.75, -0.5, 0.5, -0.5, 0.0, 0.0, -1.0, 0.25, 0.5, 0.75, 0.75, 0.25, -0.25, -0.75, 0.0, 0.5, -0.5, 0.0, -0.25, -0.25, -0.75, -0.5, -0.5, 0.0, 0.25, 0.25, 0.25, 0.25, -0.25, 0.25, 0.0, -1.0, 0.75, 0.25, 1.0, 0.25, 0.0, -0.25, 0.25, 0.75, -0.25, 0.25, -0.25, -0.75, -1.0, 1.0, -1.0, 0.0, 0.75, 0.0, -0.25, 0.0, 1.0, 0.0, 0.5, 1.0, -0.25, 0.0, -1.0, -0.75, -1.0, -0.75, -0.5, 0.5, 0.25, 0.0, -0.75, -0.5, -0.5, -0.5, 1.0, 0.5, 0.25, -0.75, -0.5, 0.75, -1.0, -0.5, -1.0, -0.5, -0.75, -0.75, 0.5, -0.25, 0.5, 1.0, 0.0, 0.5, 0.5, -1.0, 0.5, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    const array28 = new Float32Array([-0.25, -1.0, -0.75, -0.75, 0.0, 0.5, -0.25, -0.25, -0.75, 0.0, 0.75, 0.75, 1.0, -1.0, -0.25, 1.0, 1.0, -1.0, 1.0, -0.75, 0.75, 0.25, -0.75, -1.0, -1.0, 0.25, 0.75, 1.0, 1.0, -0.5, -0.25, -0.75, 0.75, -0.75, 0.75, 0.25, 0.25, 0.25, 0.75, 0.0, -1.0, 0.25, -0.5, -0.5, 1.0, 0.5, 0.25, 0.0, 0.5, 0.75, -1.0, 1.0, 0.0, -0.25, -0.5, -1.0, 0.0, -0.25, -0.5, -0.75, -1.0, -0.75, -1.0, 0.75, 0.0, -0.5, 0.75, -1.0, 0.0, -0.75, 0.25, -0.5, 0.25, -0.25, 1.0, -1.0, 0.25, -1.0, -0.5, -0.25, -0.75, 1.0, -0.25, 1.0, 0.0, 0.0, 0.75, -1.0, -0.5, 0.0, 0.0, 0.25, 1.0, -0.25, -1.0, 0.75, -0.5, -1.0, -0.5, 0.25, ]);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const array29 = new Float32Array([0.25, -0.5, -0.75, 1.0, -0.75, 0.25, 1.0, -0.75, -0.5, -0.5, -0.5, 0.0, 0.25, -1.0, -0.75, 0.25, 0.5, -0.5, 0.0, 1.0, -0.25, 0.5, 0.25, -0.75, 1.0, -0.5, -0.5, 0.5, -0.75, 0.75, -0.75, 0.75, 0.5, -0.75, 1.0, -0.25, -0.5, 0.75, 0.75, -0.5, -0.75, 1.0, -0.5, -1.0, -0.75, 0.25, -1.0, -0.75, -1.0, 1.0, -0.75, 0.5, 0.5, -1.0, -1.0, -1.0, 0.25, 0.25, 0.25, 0.75, 0.75, 0.25, 0.25, -1.0, 0.5, 0.75, 0.25, 0.75, 0.75, -0.5, -0.25, 0.25, 0.5, -0.5, -1.0, 1.0, -0.25, -0.5, -0.5, 0.25, 1.0, 0.75, -1.0, 0.0, -1.0, 0.25, 0.25, 0.75, 0.5, -0.5, -0.5, 0.25, 0.5, 0.0, 0.5, -0.5, -0.5, 0.0, 0.0, -0.75, ]);
    const array30 = new Float32Array([1.0, 0.0, -0.75, -0.5, 0.75, 0.5, 0.25, -0.5, 0.75, 0.75, -0.75, 0.25, 0.5, 0.75, -0.5, 0.75, -1.0, 0.75, -0.75, -1.0, 0.0, 0.75, -1.0, 0.75, -1.0, -0.25, 0.25, 0.25, -0.75, 0.5, -0.5, 0.5, 0.75, -0.5, -1.0, 0.25, 0.0, -0.75, -0.25, -1.0, 0.5, 0.5, -1.0, 1.0, -0.75, 0.5, -1.0, -0.75, -1.0, 1.0, 0.75, 0.5, 0.5, -0.5, 1.0, 0.75, 0.0, -0.75, 0.0, 0.0, -0.25, 1.0, 1.0, -0.5, -1.0, -0.5, 0.5, 0.75, 0.5, -0.25, 0.75, 0.5, 0.5, -0.5, -1.0, 1.0, 0.0, 0.0, -0.5, -0.25, 0.0, 0.0, 0.25, 0.25, 0.5, 0.75, -0.5, -0.75, 0.75, -0.25, 0.75, -0.5, -0.75, 0.25, 1.0, 0.75, -0.5, 0.5, -0.75, 1.0, ]);
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    texture900.destroy();
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture1101.destroy();
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder1100.insertDebugMarker("marker");
    
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device110.destroy();
    
    texture1200.destroy();
    
    
    query901.destroy()
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    device100.destroy();
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    query900.destroy()
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile(__dirname + '/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    device120.destroy();
    
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
}