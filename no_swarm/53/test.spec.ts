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
    
    
    
    
    const array0 = new Float32Array([0.5, -1.0, 0.0, 1.0, 0.25, 0.75, -0.75, 0.25, -0.5, -0.25, -0.5, 0.0, -0.25, 0.75, -1.0, -0.5, 0.5, -0.75, -1.0, 0.25, -0.75, -0.75, 1.0, -0.25, 0.5, -0.75, 0.5, -1.0, -0.5, -0.75, -0.25, -0.5, 0.75, 0.5, -0.75, -0.25, 1.0, -1.0, 0.75, 0.5, 0.25, 0.25, 0.5, 0.75, 0.75, 0.25, 0.25, 0.25, -0.5, 0.75, 0.75, 0.0, -0.5, 0.5, -0.5, 0.75, -0.25, -0.5, 0.75, -0.5, 1.0, 1.0, 0.0, -0.25, 0.75, 1.0, -1.0, 0.0, -0.25, 0.5, -0.75, 0.75, -0.25, 1.0, 0.25, -1.0, 0.25, 0.75, -0.5, 0.0, -0.5, 0.0, -1.0, -0.75, 0.25, -0.5, -0.25, 0.75, 0.5, 0.5, 0.25, 0.25, -0.25, -0.75, -0.5, 1.0, -0.75, 0.25, -1.0, 0.5, ]);
    
    const array1 = new Float32Array([-0.5, 0.25, 0.0, -1.0, -1.0, -1.0, 0.5, 1.0, -0.75, 0.5, 1.0, -1.0, 1.0, 0.75, 0.75, 0.0, 1.0, -1.0, -1.0, -0.75, 1.0, -1.0, 0.0, -0.75, -0.75, 0.75, -0.25, 1.0, 0.75, -1.0, 0.5, -0.75, -0.75, 0.0, 0.25, 0.0, 0.25, 0.5, -0.75, -0.75, -1.0, -1.0, 1.0, 0.25, 0.75, -0.75, 0.0, 1.0, 1.0, -0.25, -0.75, 0.5, 0.5, 0.75, -0.75, 0.5, -0.25, 0.25, -0.75, -0.5, 0.25, -0.25, 1.0, 0.75, -0.75, -0.5, 0.0, 1.0, -1.0, -1.0, 0.0, -0.5, -0.5, -0.25, -0.75, 0.25, 0.0, 0.0, 0.0, 0.75, -0.25, 1.0, 0.25, 1.0, 1.0, -1.0, 0.25, 1.0, -0.75, -0.75, 0.5, 1.0, 0.5, 0.25, 0.25, -0.5, -0.5, -0.25, 1.0, 0.5, ]);
    
    
    
    
    const array2 = new Float32Array([-0.25, 0.75, 0.75, -0.75, -0.75, 1.0, -1.0, -0.75, -1.0, -0.25, 0.75, 0.25, 0.5, 1.0, 0.75, 0.0, -0.75, -0.5, 0.75, 0.5, 0.5, -0.5, -0.25, 0.5, 0.75, 1.0, -1.0, -1.0, 0.25, 0.0, 0.75, 0.0, 1.0, 0.0, 0.5, -0.5, -0.25, 0.75, 0.5, 0.75, 0.5, 1.0, 1.0, -0.75, 0.25, -0.25, 0.25, 0.25, 0.0, 0.25, -0.75, -0.5, 0.75, -0.75, 0.0, 0.75, -0.75, 1.0, 0.0, -1.0, -0.25, -1.0, 1.0, -1.0, 0.5, 0.25, 0.5, 0.0, 0.25, 1.0, -0.5, -0.75, -0.5, 0.5, -0.5, -0.75, -1.0, 0.25, 0.5, 0.5, 0.0, -0.25, 0.0, -0.75, 0.5, -0.25, 0.0, 0.0, 1.0, -0.75, 1.0, -0.75, -0.5, 1.0, -0.25, 0.5, -0.5, 0.25, -0.75, 0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array3 = new Float32Array([0.75, 0.0, 0.5, -0.25, 1.0, 1.0, -0.75, 0.5, -0.25, -0.25, 0.25, 0.5, 0.25, -1.0, 0.0, -0.75, 1.0, 1.0, 0.5, 0.75, 0.75, 1.0, -0.25, -0.5, 0.5, -0.25, -0.25, 0.75, -0.75, 0.0, -0.75, -0.75, -0.25, -1.0, 0.75, 0.25, -0.5, 0.0, 0.25, -1.0, -0.5, 0.0, -0.75, 0.5, -0.25, 0.5, 0.0, 0.0, 0.5, -0.25, -0.25, 0.75, 0.25, -0.25, -0.25, -0.75, 0.75, -0.25, 1.0, 1.0, 0.5, 0.25, 1.0, -0.75, -0.75, 0.0, -0.25, 1.0, -0.75, 0.75, 0.75, -0.25, -0.75, -0.25, 1.0, -0.25, 0.75, 0.75, -0.75, 0.5, 0.75, 0.75, -1.0, -1.0, -1.0, 0.75, 0.75, -1.0, -1.0, 0.0, 1.0, 0.5, 0.75, 0.0, 0.5, 0.0, 0.75, -1.0, 0.25, 0.75, ]);
    
    const array4 = new Float32Array([1.0, 0.75, 1.0, -1.0, -0.75, 0.5, 0.0, -1.0, 0.5, 0.5, 0.5, 0.75, -1.0, 1.0, -0.25, -0.75, 0.0, 0.25, -0.75, -0.25, 0.75, 0.75, -0.75, -0.25, 0.5, -0.25, 0.0, 0.5, 0.0, 0.25, 0.25, -0.75, -0.5, -0.25, -1.0, 0.75, -0.5, 0.25, 1.0, 0.25, 0.25, -0.5, 1.0, 0.0, -0.5, 0.5, 0.0, 0.0, -1.0, -0.25, -0.5, 0.25, 0.75, 0.75, 0.0, 0.0, 0.75, 0.5, 1.0, 0.25, 0.75, -1.0, 1.0, -0.25, 0.75, 0.5, -1.0, -1.0, 0.0, -1.0, -1.0, -0.5, 0.25, -0.75, 0.0, -0.5, 1.0, -0.75, 0.5, -0.75, -0.25, 1.0, -0.75, 1.0, -1.0, -1.0, -0.5, -0.75, 0.5, -0.75, 0.0, -0.5, 1.0, -0.5, 0.0, 0.75, 0.5, 0.0, 0.0, 0.75, ]);
    
    const array5 = new Float32Array([0.5, 1.0, 0.0, -0.25, -0.25, -0.5, 0.5, 0.75, 0.25, -0.75, 0.0, 0.5, -1.0, 0.5, 0.75, 0.75, -0.75, -0.5, 0.75, -0.25, -1.0, 0.75, -0.75, -0.25, -0.5, 0.75, 0.5, -0.5, 1.0, 0.0, -1.0, 0.5, -0.5, -0.75, 0.25, 0.5, -0.75, 0.25, 1.0, 1.0, 0.75, 0.75, 1.0, 0.25, 0.25, 0.75, 0.25, 1.0, 1.0, 0.25, 0.75, 0.5, 0.75, 0.5, 0.25, -0.5, -1.0, -0.5, 0.25, 0.25, -0.75, 1.0, -1.0, -0.75, 0.0, -0.5, -0.5, 0.25, -0.25, 1.0, 0.25, -0.5, 0.0, 0.5, -1.0, 0.5, 0.25, 0.75, 1.0, 0.0, -1.0, 0.75, 0.0, -0.75, 1.0, -0.25, 0.0, -1.0, 0.5, 0.25, -0.75, 0.0, 0.5, -0.25, 0.0, 0.0, 0.25, -1.0, -0.75, -0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    const array6 = new Float32Array([1.0, -1.0, 0.0, 0.25, -1.0, 1.0, 0.0, 0.25, -1.0, -0.25, -0.25, -0.5, 0.5, -0.75, 0.5, 0.0, -0.5, 0.75, -0.25, 0.0, 0.25, -0.5, 0.0, 0.0, -0.25, 1.0, -0.75, -0.75, -0.75, 0.75, 0.75, -0.75, -1.0, -0.5, 1.0, -0.5, 0.0, 0.5, 0.25, 0.0, -0.5, 0.25, 1.0, 1.0, 0.75, 1.0, -0.75, -0.25, 0.5, -1.0, 0.75, 0.0, -0.25, -0.25, -0.5, -0.25, -0.5, 0.75, 1.0, -0.25, -1.0, 0.0, -1.0, 0.25, 0.5, -0.5, -0.5, 0.25, 0.25, -0.25, 0.5, 1.0, 0.75, 0.25, 0.5, 1.0, -1.0, 0.5, 0.0, 1.0, 0.75, 0.75, -0.75, 0.25, -0.5, -1.0, 0.5, 1.0, 0.25, 1.0, 0.75, -1.0, 0.5, 0.75, -0.25, -0.25, 1.0, 1.0, 0.0, -0.5, ]);
    const array7 = new Float32Array([0.25, 0.5, 0.5, 0.75, 0.75, -0.25, 0.5, 0.75, 0.75, -0.5, -0.25, -0.75, -0.25, -1.0, 0.0, 0.25, 1.0, 1.0, 1.0, -0.25, 0.0, 1.0, 0.5, 0.25, -0.5, 0.5, -0.25, 0.75, 1.0, 1.0, -0.75, 0.5, 1.0, -0.5, 0.75, -1.0, 0.5, 0.75, 0.75, -0.75, 1.0, 1.0, -0.25, 0.5, -0.5, -1.0, -1.0, 0.0, 0.5, 0.75, -0.25, -0.5, 0.0, 0.5, -1.0, -0.25, 0.75, 0.25, -0.25, -0.25, 0.0, 0.25, -0.75, -0.75, 0.75, 0.0, 0.5, -1.0, 0.75, 0.5, 0.5, 0.0, -0.25, -0.5, 0.25, -0.25, -0.25, 0.0, 0.25, 0.0, 0.75, 0.25, -0.5, 0.5, 0.5, 0.0, 1.0, 0.25, 1.0, 0.0, 0.5, 0.75, 0.75, -0.25, 1.0, -1.0, -1.0, -0.5, 0.25, 0.25, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
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
    device20.pushErrorScope("validation");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
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
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.destroy();
    
    
    
    const array8 = new Float32Array([-1.0, 0.5, 0.0, -0.5, 1.0, -0.75, 1.0, -0.25, 1.0, 0.75, 0.75, 0.0, -0.25, 0.0, -0.25, -0.25, 0.5, -0.5, -0.5, -0.25, 0.0, 0.25, 0.75, 0.0, -0.5, 0.0, 0.5, -0.5, 1.0, -0.25, 1.0, 0.75, 0.75, 0.5, 0.0, -0.25, -0.5, -0.25, -0.5, -0.75, 0.0, -1.0, 0.25, -1.0, 0.75, 0.25, 0.25, 0.0, 0.75, 0.0, -0.75, -0.5, -1.0, -0.75, 0.75, 1.0, 1.0, 1.0, 0.75, -0.25, 0.0, 1.0, -1.0, 0.25, -0.25, 0.5, 0.5, 0.0, -0.25, 0.25, -1.0, 0.75, -0.25, 0.5, 0.5, 0.5, 0.5, -0.25, -0.75, -0.25, -0.25, 0.0, -1.0, -1.0, 0.25, -1.0, 1.0, 1.0, -0.25, 0.25, 0.75, 0.0, 0.25, -0.75, 0.5, -0.5, -0.75, 0.5, 0.5, 0.75, ]);
    const array9 = new Float32Array([0.25, 0.5, -0.75, -0.75, -0.5, 0.0, 0.75, -0.5, -1.0, 1.0, 0.75, 0.0, -0.25, -0.5, 0.0, -0.25, 0.75, 0.75, 0.75, 0.75, 1.0, 0.5, -0.5, -0.75, 0.5, 1.0, -0.5, 0.75, -0.5, -0.75, 0.0, -1.0, 0.75, 1.0, 0.5, -1.0, 0.75, -0.75, -0.25, 0.75, 0.25, -0.75, 0.0, -0.5, -0.5, 1.0, 0.75, 0.25, 1.0, 0.25, -0.5, 1.0, -1.0, 1.0, -0.75, 1.0, 0.75, -0.25, 0.75, 0.75, -1.0, -0.75, 0.75, -1.0, -0.5, -0.75, -1.0, -0.25, -0.75, 1.0, -0.25, -0.75, 0.25, -0.75, -0.25, -1.0, -1.0, 0.5, -1.0, 1.0, -1.0, -0.75, -0.25, 0.25, -0.25, -0.5, 1.0, -0.75, 0.75, -1.0, -0.25, -0.25, 0.75, 0.0, 0.25, 0.25, 0.0, 0.5, -0.25, 0.75, ]);
    
    
    
    
    
    
    
    const array10 = new Float32Array([-0.25, -0.5, 1.0, 0.25, 0.25, 0.5, 0.25, 0.75, -0.25, 0.0, -0.75, 1.0, 0.0, 0.5, -0.25, -1.0, 0.75, 0.5, 1.0, -0.5, -0.25, -1.0, -0.75, 0.75, -0.75, 1.0, 1.0, 1.0, 0.0, -1.0, 0.25, 0.5, -0.5, -1.0, 0.5, -1.0, -0.75, 0.0, -0.5, -0.25, -0.5, -0.25, 0.25, 0.75, -0.25, 0.75, 0.75, 0.0, -0.5, 0.25, 0.25, -1.0, -1.0, -0.75, 0.25, 0.25, 0.5, 0.5, -0.25, -1.0, 0.5, -0.25, 0.0, 1.0, 0.75, 1.0, 0.5, -1.0, -1.0, 1.0, 0.25, 0.75, 0.25, -0.5, 0.5, 0.0, -0.5, -0.5, 1.0, 0.25, -0.25, -0.25, 0.0, -1.0, 0.75, -0.25, -1.0, 0.25, -0.75, -0.75, 0.25, 0.5, 0.25, -1.0, 0.25, 0.25, -0.75, -1.0, 0.25, -0.5, ]);
    const array11 = new Float32Array([1.0, 0.75, -0.25, 1.0, 1.0, 0.5, -0.25, -1.0, 1.0, -0.75, -0.25, 0.25, 0.75, -0.25, 1.0, -0.75, 1.0, -0.5, 0.5, 0.0, -0.5, -0.5, -0.5, 0.5, 0.75, -1.0, 0.75, -1.0, 1.0, 1.0, -1.0, -0.25, -1.0, 0.5, 0.0, -1.0, -1.0, -0.5, -0.75, -0.75, 0.0, 0.0, -1.0, 0.75, -0.5, -1.0, -0.25, 0.75, -0.5, -0.75, 0.5, -0.25, -0.75, 1.0, 1.0, 0.5, 0.25, 0.0, -0.5, -0.5, -0.25, 0.5, -0.75, -1.0, -0.25, -1.0, -0.75, 1.0, -0.75, -0.25, -0.75, 0.0, 0.0, 0.5, 0.75, -0.5, 0.75, -1.0, 0.25, 0.0, 0.0, -0.75, -0.25, 0.75, 0.0, 0.5, -0.75, 0.25, 0.5, -0.25, -1.0, -0.5, -0.75, 0.0, 0.5, 0.75, -0.75, 0.5, 0.25, -0.75, ]);
    
    
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
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
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device30.pushErrorScope("internal");
    
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
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.destroy();
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.destroy();
    
    const array12 = new Float32Array([0.25, -1.0, -0.5, 1.0, -0.75, -0.25, 1.0, 0.25, 0.75, -0.5, 0.0, 0.75, 0.25, 0.5, -0.75, 0.75, 0.0, -1.0, -0.25, 0.75, 1.0, 0.75, -0.5, 0.75, -0.25, 0.5, 0.5, -1.0, 1.0, 0.75, -0.25, -0.75, -0.75, 0.5, 0.75, -0.5, -0.25, -0.25, 0.75, 0.0, -0.25, -0.75, -0.25, -0.75, 1.0, -0.5, -0.5, 0.25, 0.25, -0.75, -0.25, 0.25, -0.25, 1.0, -0.75, -0.25, -0.5, -0.75, 1.0, -0.25, 0.75, -0.75, 0.5, 1.0, 1.0, 0.75, 0.25, 1.0, -0.75, -1.0, 0.0, 0.25, 0.5, 1.0, 0.0, 0.75, 0.75, -1.0, 0.5, 0.0, -0.75, -1.0, 0.75, 0.5, 0.25, -1.0, 0.5, 0.0, -0.75, 0.5, -1.0, -0.25, -0.5, -1.0, 0.0, 0.5, -1.0, -0.25, 0.0, 0.25, ]);
    const array13 = new Float32Array([0.25, 0.5, -0.5, -0.75, -0.75, 0.75, 0.75, -0.5, 0.25, -0.5, -1.0, -1.0, 1.0, 1.0, 0.0, 0.0, 0.5, 1.0, 0.0, -0.75, 0.0, 0.0, -0.5, 0.75, -0.25, 0.0, 0.5, -0.75, 0.75, -0.75, 0.75, 0.5, 0.0, 1.0, 0.75, 0.25, -1.0, -0.75, -0.75, 0.0, -0.25, 0.75, 0.25, -0.25, 1.0, 1.0, -0.5, 1.0, 1.0, -1.0, 0.0, 0.75, 0.0, -1.0, 0.5, 0.5, 0.0, 0.25, -0.75, 1.0, 0.5, 0.5, -0.5, 0.0, -0.75, -0.5, 1.0, 0.25, 0.75, -1.0, -0.75, 0.75, -0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25, -1.0, -0.25, 1.0, -0.25, 1.0, -0.5, 0.25, -1.0, 1.0, 0.25, 0.75, -0.25, -0.5, 0.5, 1.0, 0.0, 0.75, 0.25, 0.25, -0.25, 0.0, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array14 = new Float32Array([1.0, 0.5, 0.25, 0.25, -0.5, -0.5, 0.5, 0.0, 0.0, 0.25, 1.0, 0.25, -1.0, -0.5, 0.75, 0.5, 1.0, 0.0, -0.25, 0.25, 0.5, 1.0, 0.5, -1.0, 1.0, -0.75, 0.75, -0.5, 0.0, 0.0, 0.5, 0.25, 0.0, -1.0, 0.5, -0.25, -0.75, -0.25, 0.0, 0.25, 0.0, 0.25, -1.0, 1.0, -1.0, -0.75, 0.75, 1.0, 1.0, -1.0, -1.0, 1.0, -0.75, 0.75, 0.5, -1.0, 0.25, 1.0, 0.5, 1.0, -1.0, 0.75, 0.0, 1.0, -0.75, -1.0, 0.0, -0.5, -0.25, 0.75, 0.0, 0.25, 0.75, -0.5, -0.5, 1.0, -0.5, 0.75, 0.25, 0.0, 1.0, 0.0, 0.5, -0.5, 1.0, -1.0, 0.0, 0.75, 0.5, -0.5, 0.0, 0.0, 0.25, -0.5, 0.75, 0.0, 0.0, -0.5, 0.25, 0.25, ]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const array15 = new Float32Array([0.5, 0.25, 0.0, 0.0, 0.75, 0.75, 0.0, 0.75, 0.75, -1.0, -1.0, 0.25, -1.0, -1.0, -0.75, 0.25, -0.5, 0.25, -1.0, -0.25, -0.25, 1.0, -0.75, 0.75, 1.0, 0.0, 0.75, 0.0, 0.75, 0.5, 0.75, 0.0, 0.25, 0.0, -0.25, 0.0, -0.25, 1.0, -0.75, 0.25, 0.25, -0.25, 0.5, 0.5, 1.0, -1.0, -0.5, 0.0, 0.75, 0.0, 0.25, 0.5, 0.25, 1.0, -0.25, 1.0, 0.25, -0.5, -0.75, 0.25, 1.0, 0.5, 0.75, 0.5, 0.25, -0.75, 0.5, -1.0, 0.0, 0.5, -0.25, 0.0, -0.5, 1.0, 0.0, 0.25, 0.25, 0.75, -0.25, -0.25, -0.25, -0.75, -0.75, 0.75, 0.75, -0.5, 0.75, 1.0, 0.0, -1.0, 1.0, 0.5, -0.25, -0.5, -0.5, 0.0, -1.0, 0.25, -0.5, -0.5, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    device70.destroy();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array16 = new Float32Array([-0.5, -0.25, 0.5, -1.0, 0.5, 0.25, -0.5, 0.5, 0.25, 0.25, 0.0, 0.5, 0.0, 0.5, 0.75, -0.5, -0.5, 1.0, -0.75, -1.0, -0.5, -0.75, 1.0, -0.5, 0.75, -1.0, 1.0, -1.0, -0.25, 0.25, -0.25, 0.25, -1.0, 0.25, 0.5, 0.75, -0.25, 0.75, 0.0, 0.25, -0.5, -1.0, 1.0, 0.0, 0.75, -1.0, 0.5, 0.0, 0.75, -1.0, 1.0, 0.5, -0.25, 0.5, -1.0, 0.75, -0.75, -1.0, -0.25, 1.0, 0.75, 0.25, -0.25, 0.5, 1.0, -0.25, -1.0, 0.25, 1.0, 0.25, 0.75, 0.25, 0.5, -1.0, -1.0, -0.25, -0.25, 0.5, 0.0, -0.75, 0.75, 0.75, 1.0, -0.25, -0.5, -0.5, 0.25, 0.25, 0.75, 0.0, 1.0, 1.0, 0.75, 0.75, -0.75, 1.0, -0.25, 1.0, -0.25, 0.0, ]);
    device60.pushErrorScope("out-of-memory");
    device40.destroy();
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
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
    
    
    const array17 = new Float32Array([0.0, 0.75, -0.75, -0.5, 1.0, -1.0, -0.75, 0.75, 0.75, -1.0, 0.0, 0.0, 0.75, 1.0, -1.0, 1.0, 1.0, 0.5, -0.25, -0.25, 0.75, 0.75, 1.0, 1.0, 0.75, 0.75, -0.75, 0.25, -1.0, -0.25, -0.25, 1.0, 1.0, 1.0, -0.75, 0.25, 0.25, 0.0, -0.75, 0.5, -0.75, 0.0, -0.75, -0.25, 0.75, 1.0, -1.0, -1.0, 0.5, 1.0, 0.5, 1.0, 0.25, 0.25, -0.25, -0.25, -1.0, 1.0, 0.0, 0.0, -0.75, -0.5, 0.0, -0.25, 0.5, 0.5, -1.0, 1.0, 1.0, -0.25, -0.25, 0.5, 0.0, 0.0, 0.0, -0.25, -1.0, -0.75, 0.75, 0.25, 0.5, -0.25, 0.25, -0.75, 0.75, 1.0, 0.25, -0.75, 0.5, -0.5, -0.5, -0.75, 0.25, 0.5, 0.75, 0.0, 1.0, 0.5, -0.5, 0.75, ]);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder600.setPipeline(render_pipeline600);
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    texture600.destroy();
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
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    device90.pushErrorScope("validation");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer600,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer601,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    buffer600.destroy()
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device90.destroy();
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    device60.destroy();
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    buffer801.destroy()
    
    
    
    
    device120.destroy();
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    texture800.destroy();
    
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    
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
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    buffer800.destroy()
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
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
    
    
    device110.destroy();
    const compute_pass_encoder8020 = command_encoder802.beginComputePass({ label: "compute_pass_encoder8020" });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
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
    
    
    
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
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
    compute_pass_encoder8010.insertDebugMarker("marker")
    device80.pushErrorScope("internal");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder800.setPipeline(render_pipeline800);
    const command_buffer800 = command_encoder800.finish();
    
    device80.queue.writeBuffer(buffer802, 0, array10, 0, array10.length);
    device80.queue.writeBuffer(buffer802, 0, array16, 0, array16.length);
    
    device80.queue.writeBuffer(buffer802, 0, array0, 0, array0.length);
    {
        await buffer802.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer802.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer802.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder8020.insertDebugMarker("marker")
    
    device80.queue.submit([command_buffer800, ]);
    device100.pushErrorScope("out-of-memory");
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    compute_pass_encoder8020.insertDebugMarker("marker")
    compute_pass_encoder8010.popDebugGroup()
    
    device80.queue.writeBuffer(buffer802, 0, array1, 0, array1.length);
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    command_encoder1000.insertDebugMarker("mymarker");
    device80.queue.writeBuffer(buffer802, 0, array8, 0, array8.length);
    device80.queue.writeBuffer(buffer802, 0, array9, 0, array9.length);
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    buffer802.destroy()
    command_encoder1000.pushDebugGroup("mygroupmarker")
    render_bundle_encoder1000.insertDebugMarker("marker");
    compute_pass_encoder8010.insertDebugMarker("marker")
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    
    
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    
    
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder8020.insertDebugMarker("marker")
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const render_pipeline803 = device80.createRenderPipeline({
        label: "render_pipeline803",
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
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const command_buffer803 = command_encoder803.finish();
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    
    texture801.destroy();
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    const command_encoder1002 = device100.createCommandEncoder({ label: "command_encoder1002" });
    command_encoder1001.insertDebugMarker("mymarker");
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder1000.popDebugGroup();
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    texture802.destroy();
    const command_encoder804 = device80.createCommandEncoder({ label: "command_encoder804" });
    
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    const texture_view8030 = texture803.createView({ label: "texture_view8030" });
    command_encoder1000.popDebugGroup()
    device100.queue.writeBuffer(buffer1001, 0, array2, 0, array2.length);
    
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    buffer1001.destroy()
    compute_pass_encoder8020.pushDebugGroup("group_marker")
    compute_pass_encoder8010.insertDebugMarker("marker")
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    device80.queue.writeBuffer(buffer803, 0, array12, 0, array12.length);
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    
    const query1003 = device100.createQuerySet({
        label: "query1003",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeBuffer(buffer803, 0, array6, 0, array6.length);
    
    const render_pipeline804 = device80.createRenderPipeline({
        label: "render_pipeline804",
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
    
    
    render_bundle_encoder801.insertDebugMarker("marker");
    query1002.destroy()
    device80.queue.writeBuffer(buffer803, 0, array6, 0, array6.length);
    
    
    device80.queue.writeBuffer(buffer803, 0, array12, 0, array12.length);
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    command_encoder1002.pushDebugGroup("mygroupmarker")
    command_encoder1000.pushDebugGroup("mygroupmarker")
    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device80.queue.writeBuffer(buffer803, 0, array3, 0, array3.length);
    command_encoder1002.insertDebugMarker("mymarker");
    query800.destroy()
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    render_bundle_encoder801.setPipeline(render_pipeline801);
    
    const render_pipeline806 = device80.createRenderPipeline({
        label: "render_pipeline806",
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
    render_bundle_encoder1001.insertDebugMarker("marker");
    {
        await buffer803.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer803.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer803.unmap();
        console.log(new Float32Array(data));
    }
    device80.queue.writeBuffer(buffer803, 0, array12, 0, array12.length);
    command_encoder804.pushDebugGroup("mygroupmarker")
    
    const render_pass_encoder8040 = command_encoder804.beginRenderPass({
        label: "render_pass_encoder8040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder8040.setPipeline(render_pipeline801);
    
    const texture_view8031 = texture803.createView({ label: "texture_view8031" });
    
    
    const array18 = new Float32Array([1.0, 0.5, -0.25, -0.75, 0.5, 0.25, -0.75, -0.5, 0.75, 0.0, 0.5, -1.0, 0.0, 0.75, -1.0, -0.25, 0.5, 1.0, -0.5, 0.5, -0.5, -0.25, -0.5, 0.0, 0.0, 0.75, 0.0, -0.75, 0.25, -1.0, 1.0, 0.75, -1.0, -0.25, 0.25, 0.5, -1.0, 0.0, -1.0, 1.0, -0.25, -0.5, 1.0, 0.25, 0.25, 0.75, -0.25, -0.5, 0.5, -0.5, 0.25, 1.0, -0.5, 1.0, 0.5, -0.75, 0.25, 1.0, -1.0, 0.75, 0.0, 0.0, 0.5, 0.25, 0.5, 0.0, -0.75, 0.75, 0.25, 0.0, 0.25, 0.25, -1.0, 1.0, 0.0, -0.5, 0.5, 0.25, -0.75, -1.0, -0.75, -0.5, 0.25, -0.25, 0.25, 0.75, -0.25, -0.25, 0.25, 1.0, -1.0, 0.5, -0.5, -1.0, 0.25, -0.75, 1.0, -1.0, 0.25, -1.0, ]);
    
    
    const render_pipeline807 = device80.createRenderPipeline({
        label: "render_pipeline807",
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
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1002,
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
            module: shader_module1002,
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
    const command_buffer1001 = command_encoder1001.finish();
    const query1004 = device100.createQuerySet({
        label: "query1004",
        type: "occlusion",
        count: 32,
    });
    
    device80.queue.writeBuffer(buffer803, 0, array2, 0, array2.length);
    
    device100.queue.submit([command_buffer1001, ]);
    
    const buffer805 = device80.createBuffer({
        label: "buffer805",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const render_pipeline808 = device80.createRenderPipeline({
        label: "render_pipeline808",
        vertex: {
            module: shader_module804,
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
            module: shader_module804,
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
    
    
    device80.queue.writeBuffer(buffer803, 0, array12, 0, array12.length);
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    device80.queue.writeBuffer(buffer803, 0, array1, 0, array1.length);
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    query1003.destroy()
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder1000.insertDebugMarker("marker");
    device80.queue.writeBuffer(buffer803, 0, array5, 0, array5.length);
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout800,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    texture804.destroy();
    const compute_pipeline1000 = device100.createComputePipeline({
        label: "compute_pipeline1000",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    
    device80.queue.writeBuffer(buffer803, 0, array18, 0, array18.length);
    device80.queue.writeBuffer(buffer803, 0, array6, 0, array6.length);
    
    render_bundle_encoder1002.insertDebugMarker("marker");
    device80.queue.writeBuffer(buffer803, 0, array8, 0, array8.length);
    command_encoder1000.insertDebugMarker("mymarker");
    const compute_pass_encoder10020 = command_encoder1002.beginComputePass({ label: "compute_pass_encoder10020" });
    compute_pass_encoder8020.setPipeline(compute_pipeline801);
    device80.queue.writeBuffer(buffer803, 0, array13, 0, array13.length);
    render_bundle_encoder1002.setPipeline(render_pipeline1000);
    device80.queue.writeBuffer(buffer803, 0, array3, 0, array3.length);
    render_pass_encoder8040.setScissorRect(0, 0, texture803.width / 2, texture803.height / 2);
    
    device80.queue.writeBuffer(buffer803, 0, array10, 0, array10.length);
    device80.queue.writeBuffer(buffer803, 0, array13, 0, array13.length);
    const command_encoder1003 = device100.createCommandEncoder({ label: "command_encoder1003" });
    const render_pipeline809 = device80.createRenderPipeline({
        label: "render_pipeline809",
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
    query1003.destroy()
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    device100.queue.writeTexture({ texture: texture1000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder805 = device80.createCommandEncoder({ label: "command_encoder805" });
    buffer805.destroy()
    
    render_pass_encoder8040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device80.queue.writeBuffer(buffer803, 0, array4, 0, array4.length);
    device100.queue.writeTexture({ texture: texture1000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device100.queue.writeTexture({ texture: texture1000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
    render_pass_encoder8040.setViewport(0, 0, texture803.width / 2, texture803.height / 2, 0, 1);
    
    device100.queue.writeTexture({ texture: texture1000 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder10020.insertDebugMarker("marker")
    device80.queue.writeBuffer(buffer803, 0, array17, 0, array17.length);
    const render_pipeline8010 = device80.createRenderPipeline({
        label: "render_pipeline8010",
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
    compute_pass_encoder8010.setPipeline(compute_pipeline801);
    const buffer806 = device80.createBuffer({
        label: "buffer806",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer807 = device80.createBuffer({
        label: "buffer807",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer806,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer807,
                },
            },
        ],
    });

    compute_pass_encoder8020.setBindGroup(0, bind_group800);
    const buffer808 = device80.createBuffer({
        label: "buffer808",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer809 = device80.createBuffer({
        label: "buffer809",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group801 = device80.createBindGroup({
        label: "bind_group801",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer808,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer809,
                },
            },
        ],
    });

    compute_pass_encoder8010.setBindGroup(0, bind_group801);
    compute_pass_encoder10020.setPipeline(compute_pipeline1000);
    command_encoder1000.popDebugGroup()
    const buffer8010 = device80.createBuffer({
        label: "buffer8010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8011 = device80.createBuffer({
        label: "buffer8011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group802 = device80.createBindGroup({
        label: "bind_group802",
        layout: render_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8011,
                },
            },
        ],
    });

    render_pass_encoder8040.setBindGroup(0, bind_group802);
    const command_buffer1003 = command_encoder1003.finish();
    render_pass_encoder8040.setVertexBuffer(0, buffer801);
    device100.queue.submit([command_buffer1003, ]);
    compute_pass_encoder8020.popDebugGroup()
    const uint32_8020 = new Uint32Array(3);

    uint32_8020[0] = 100;
    uint32_8020[1] = 1;
    uint32_8020[2] = 1;

    const buffer8012 = device80.createBuffer({
        label: "buffer8012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8012, 0, uint32_8020, 0, uint32_8020.length);

    compute_pass_encoder8020.dispatchWorkgroupsIndirect(buffer8012, 0);
    const uint32_8010 = new Uint32Array(3);

    uint32_8010[0] = 100;
    uint32_8010[1] = 1;
    uint32_8010[2] = 1;

    const buffer8013 = device80.createBuffer({
        label: "buffer8013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8013, 0, uint32_8010, 0, uint32_8010.length);

    compute_pass_encoder8010.dispatchWorkgroupsIndirect(buffer8013, 0);
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1000 = device100.createBindGroup({
        label: "bind_group1000",
        layout: compute_pipeline1000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1003,
                },
            },
        ],
    });

    compute_pass_encoder10020.setBindGroup(0, bind_group1000);
    const command_buffer1000 = command_encoder1000.finish();
    const uint32_10020 = new Uint32Array(3);

    uint32_10020[0] = 100;
    uint32_10020[1] = 1;
    uint32_10020[2] = 1;

    const buffer1004 = device100.createBuffer({
        label: "buffer1004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device100.queue.writeBuffer(buffer1004, 0, uint32_10020, 0, uint32_10020.length);

    compute_pass_encoder10020.dispatchWorkgroupsIndirect(buffer1004, 0);
    render_pass_encoder8040.setIndexBuffer(buffer805, "uint16");
    compute_pass_encoder8020.end();
    compute_pass_encoder10020.end();
    const command_buffer802 = command_encoder802.finish();
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder8040.drawIndirect(buffer8013, 0);
    compute_pass_encoder8010.popDebugGroup()
    render_pass_encoder8040.end();
    command_encoder804.popDebugGroup()
    device100.queue.submit([command_buffer1000, ]);
    device80.queue.submit([command_buffer803, ]);
    compute_pass_encoder8010.end();
    command_encoder1002.popDebugGroup()
    const command_buffer805 = command_encoder805.finish();
    const command_buffer804 = command_encoder804.finish();
    device80.queue.submit([command_buffer804, ]);
    const command_buffer801 = command_encoder801.finish();
    const command_buffer1002 = command_encoder1002.finish();
}