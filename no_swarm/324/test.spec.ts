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
    const array0 = new Float32Array([1.0, -1.0, 1.0, 1.0, -0.25, 0.5, -0.75, 1.0, 0.0, -0.5, 0.0, 0.0, -0.75, 0.5, 0.75, -0.25, 0.5, 0.75, 0.5, 1.0, 0.25, -0.5, -0.5, 0.5, 0.5, 1.0, 1.0, -0.25, -1.0, 0.0, -0.75, -1.0, 0.25, 1.0, 0.5, -0.5, 0.75, -0.25, 0.0, 1.0, 0.75, 0.5, -0.5, 0.75, 1.0, -0.5, 1.0, 0.0, 1.0, -0.75, -0.75, -0.25, 1.0, 0.75, -0.75, -0.75, -0.5, 0.25, 1.0, 0.5, 0.25, 0.5, 1.0, -0.25, -0.5, -0.5, 0.5, -1.0, 0.5, 0.75, 0.0, -0.25, -1.0, -0.75, 0.5, -1.0, -0.25, -0.5, -0.25, -1.0, -0.25, -0.5, 0.75, -1.0, -1.0, 0.75, -0.75, 0.0, 0.25, 1.0, -0.25, -0.75, 0.5, 1.0, 0.0, 0.25, -0.75, 0.0, -0.5, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([-0.75, 0.75, 0.5, 1.0, -0.5, 0.75, -1.0, 0.0, -0.5, -1.0, 1.0, -0.5, 0.25, -0.25, 0.75, 0.75, -0.75, -1.0, 0.75, 0.0, -0.5, -0.25, -0.5, -0.75, 0.75, 0.25, 0.5, 0.5, -0.75, 0.25, 0.5, 0.0, 0.25, -0.5, 0.0, 1.0, -0.5, -1.0, -0.5, -0.75, -1.0, -0.5, 1.0, 0.25, -0.25, 0.25, 0.5, -1.0, -0.5, 0.75, 1.0, 0.25, 0.25, 0.25, -0.5, -0.5, -0.75, -0.25, -0.5, -0.5, -0.25, -0.25, 0.25, 0.75, -1.0, 0.75, 0.0, 1.0, 0.75, 0.0, -1.0, 0.75, -0.75, 0.5, 0.75, -0.5, 0.0, -0.5, 0.0, -0.5, -0.5, -1.0, 0.0, 0.75, -1.0, -0.5, -0.5, -0.5, -0.25, 1.0, 0.25, 0.25, 0.25, -0.5, -0.75, -0.5, -1.0, -0.75, 0.5, 0.25, ]);
    const array2 = new Float32Array([0.5, 1.0, 0.25, 1.0, -0.75, -0.25, 0.25, 0.5, 0.25, 0.5, 0.5, 0.0, -0.5, 0.25, -0.75, -0.5, -0.75, -0.5, 0.25, -1.0, 1.0, -0.75, 0.25, 0.0, -0.5, -1.0, 0.5, -1.0, -0.5, 0.5, 0.5, -1.0, 0.5, -0.75, 1.0, 0.0, 1.0, -1.0, 0.0, -0.25, 0.0, 0.5, -1.0, 0.0, -0.25, 0.75, -0.25, 1.0, -1.0, -0.75, 0.75, 0.5, -1.0, 0.75, -0.75, -0.5, 0.0, 0.5, -0.75, 0.0, 0.25, -0.25, 0.25, 0.25, 1.0, -0.25, -0.75, 0.0, 0.75, -0.5, -0.75, -0.25, 0.0, -0.75, -0.75, 0.0, 0.25, -0.5, -0.5, 0.75, -0.25, -1.0, 1.0, 0.25, -0.5, 0.75, 1.0, -0.75, -1.0, 0.5, 0.0, 0.25, 0.5, 1.0, 1.0, -0.25, 0.75, 1.0, 0.75, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array3 = new Float32Array([0.5, 1.0, 0.75, 0.25, 0.5, 0.25, 0.75, -0.25, -0.25, 1.0, 0.5, 0.5, 1.0, -0.25, -1.0, 0.25, -0.25, -0.5, -1.0, -1.0, 0.0, 1.0, 0.75, -1.0, 1.0, 0.0, -0.75, -0.75, -0.75, 0.5, 0.75, -0.5, 0.75, -0.75, 0.0, -1.0, 1.0, 0.25, -1.0, 0.75, -1.0, 0.5, 0.25, 0.0, 0.0, -0.75, 0.75, 0.5, -0.75, -0.25, 0.75, 0.75, -0.75, 1.0, -0.5, 0.75, 0.25, 0.0, 0.25, 0.0, 0.5, 0.0, 0.75, -0.5, 0.5, 1.0, -0.25, 1.0, -0.25, -0.5, -0.25, 0.0, 0.0, 0.0, 0.0, 0.0, -0.25, -1.0, 1.0, 0.75, -0.25, -1.0, 0.0, -0.5, -0.75, 0.0, 0.0, -1.0, -0.25, -0.75, 0.25, 1.0, 0.5, -0.5, -0.5, 0.5, -0.5, 0.0, 0.25, -0.25, ]);
    device00.destroy();
    const array4 = new Float32Array([0.5, -1.0, 0.0, -0.75, -0.5, 0.0, -0.25, -0.75, 0.0, -1.0, -0.25, 1.0, -1.0, -0.5, -0.25, -0.5, -0.5, -0.25, 1.0, 0.75, 0.5, -0.5, -0.75, -0.75, -0.75, 0.25, -1.0, 0.25, -0.75, 0.0, -0.75, 0.25, 0.5, 0.75, 0.75, 0.25, -0.25, 1.0, -0.5, 0.0, -1.0, 1.0, -1.0, 0.75, -1.0, -0.75, 0.75, -0.5, 0.0, 1.0, 0.25, 0.25, 0.5, 0.5, 0.75, 0.5, 1.0, 0.0, 1.0, -1.0, -0.5, -0.75, -0.25, 0.25, -1.0, 0.25, -1.0, 0.0, 0.5, 0.25, 0.0, -1.0, -0.5, 0.0, -0.25, 0.75, -0.25, 0.75, 0.5, -0.5, 1.0, 1.0, 0.75, 0.75, -0.25, 0.75, -0.5, -0.5, -0.25, 0.25, 1.0, 0.5, 0.0, 0.5, -0.75, 1.0, 0.5, -0.75, 1.0, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([0.25, 0.5, 1.0, 0.5, 0.75, 0.75, -0.5, 0.0, 1.0, 1.0, -0.25, -0.5, 0.25, 0.75, -0.75, 0.5, 0.0, 0.25, 0.25, 0.5, -1.0, -1.0, 0.5, -0.75, -0.5, -0.75, 0.75, 0.25, -0.5, 0.75, 0.75, 1.0, 0.0, -0.25, 0.25, -0.5, -1.0, -1.0, -0.25, -0.25, 1.0, 0.25, 0.0, -0.5, -1.0, -0.5, 0.5, 0.5, 0.5, 0.75, 0.0, 0.0, -0.5, -0.5, 0.5, 0.25, 1.0, -1.0, 0.0, 1.0, -0.5, -0.25, 0.25, 0.25, -1.0, -1.0, 0.75, 0.75, 1.0, 1.0, 0.75, 0.0, -0.75, 0.0, -1.0, 0.25, 0.5, -0.25, -0.25, -0.5, 0.75, -0.25, 0.0, -0.5, -0.5, -0.5, -0.5, -0.25, -0.25, 0.25, 1.0, 0.75, 1.0, 1.0, 0.5, -0.25, 1.0, 0.0, 0.75, 0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array6 = new Float32Array([0.25, 0.25, -0.5, 0.0, 0.0, 0.0, 0.25, -0.5, -0.75, 0.0, 0.25, -0.25, 0.75, 0.5, 0.75, 0.25, 1.0, -0.75, 0.25, 1.0, 0.25, -0.5, -0.25, 0.25, 0.0, -0.25, 0.75, 1.0, 0.5, 0.75, 0.25, -0.25, -0.75, -0.5, 0.5, -0.5, 0.0, 0.5, -1.0, -0.25, 1.0, -0.25, 0.5, 0.25, 0.25, 0.75, -0.25, 0.25, -1.0, -1.0, -0.25, -1.0, 1.0, -0.75, -0.75, 0.5, 0.75, 1.0, 0.5, 0.25, 1.0, -0.25, -1.0, -0.25, 0.5, 1.0, 0.25, 0.25, 0.5, -0.75, -0.75, 1.0, -1.0, -0.25, 0.75, 0.5, 1.0, 1.0, 0.0, 1.0, -0.25, -0.25, 0.25, 0.5, -0.25, -0.75, 0.0, 0.0, -1.0, -0.25, 0.75, 0.0, 1.0, 0.25, 0.75, 0.0, -1.0, -0.5, -0.5, 1.0, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    device30.pushErrorScope("internal");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const array7 = new Float32Array([0.25, 0.0, 0.25, -0.25, 0.75, -0.75, -1.0, -1.0, -0.5, 0.0, -0.75, 0.75, -1.0, -0.5, 0.25, -0.25, 0.75, -0.75, 0.5, -0.5, 0.0, -0.25, -0.25, -0.25, 0.5, 1.0, 0.0, -0.75, -0.75, -0.25, 0.0, 1.0, 0.5, -0.75, 0.5, 1.0, 1.0, 0.25, -0.25, -0.5, -0.5, 1.0, -0.5, 0.25, 1.0, 0.0, 0.25, -0.75, 0.75, -1.0, 0.0, 0.5, 1.0, -0.75, -0.5, 0.0, -1.0, -0.25, 0.25, 0.75, 0.25, -0.5, 0.75, -0.75, 1.0, 1.0, 1.0, -0.5, -0.25, -0.25, 0.75, -0.75, 0.75, 0.5, 0.25, 0.75, 0.0, 0.0, -1.0, -0.5, 0.25, -1.0, -0.75, 1.0, 0.25, -0.5, -0.5, 1.0, -1.0, -1.0, -0.25, 1.0, -0.25, 1.0, 0.25, -0.25, 0.0, 0.0, -0.5, -1.0, ]);
    device40.destroy();
    const array8 = new Float32Array([0.0, 0.5, -0.25, -0.25, 0.0, 0.25, -0.5, -0.75, 0.0, -1.0, 0.75, -0.5, -0.25, -0.5, -1.0, 0.0, 1.0, -1.0, 0.5, -0.75, 1.0, 0.5, -0.25, -0.25, 0.25, 0.0, 0.5, 0.0, 1.0, -0.5, 0.5, -1.0, 0.0, -0.25, -0.25, 0.5, -0.75, 0.75, 0.25, -0.5, 0.25, 1.0, -0.5, -0.75, 1.0, 0.5, 0.25, 1.0, -0.25, -0.5, -1.0, 0.75, -0.25, 1.0, 0.25, 0.75, -0.5, -1.0, -0.25, 0.25, 1.0, -0.75, 0.0, 0.25, 0.25, -0.5, 1.0, -0.25, -0.75, -0.25, -0.75, 0.0, -0.5, -0.25, 1.0, 0.25, 0.0, -0.5, 0.5, 0.0, -0.25, -0.75, -1.0, -0.5, -1.0, 0.0, 0.75, -1.0, 0.25, 0.75, 0.75, -0.5, 1.0, -0.5, -0.75, -0.25, -0.5, -0.5, 0.75, 0.5, ]);
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const array9 = new Float32Array([-0.75, 0.5, -0.5, -1.0, 0.5, 0.25, 0.25, -0.75, 0.25, -0.25, 1.0, -0.75, 0.0, -1.0, -1.0, 0.25, -0.75, 0.75, -1.0, 0.5, -0.75, 0.5, -1.0, -1.0, 0.5, 0.25, -0.25, -0.75, 0.75, -1.0, 0.0, -1.0, 1.0, -0.5, 1.0, 1.0, -0.75, -1.0, 0.5, 0.5, -0.5, 0.75, 0.5, 0.25, -0.25, 0.75, 0.0, -0.5, -0.75, 0.25, -0.25, 0.75, -0.75, 0.0, -1.0, -0.5, -1.0, 0.75, 0.5, -0.5, -1.0, 0.25, -1.0, 0.5, 0.5, -0.25, 0.5, -0.75, 0.5, -1.0, -0.25, 0.0, 1.0, 1.0, -1.0, -0.5, 0.0, -1.0, 1.0, 0.5, -0.75, 0.75, -0.75, -0.5, -0.75, 0.25, -1.0, 1.0, 0.5, 0.0, 0.0, 0.5, 1.0, 1.0, -0.25, 1.0, 0.75, 0.75, 0.75, -0.25, ]);
    
    texture300.destroy();
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const array10 = new Float32Array([0.5, 0.75, 0.5, -1.0, -0.25, -0.25, -0.25, 0.0, 0.75, -0.5, 0.75, -0.5, -0.5, 1.0, 0.5, 1.0, -0.25, -1.0, 1.0, 0.0, 0.25, -1.0, 0.5, -0.5, -0.5, 0.0, 0.75, 0.5, -0.25, 0.75, -1.0, -0.5, 0.0, 1.0, -0.75, 0.25, 1.0, -1.0, 0.25, -0.25, -1.0, 0.75, -0.75, 1.0, -0.75, 0.5, -0.25, -0.5, -0.5, 0.75, 0.25, -0.5, 0.75, -1.0, 0.75, -0.75, 0.0, -0.25, -0.5, -1.0, -0.25, -0.25, 0.25, 0.75, 1.0, 0.25, 0.0, -0.25, 0.25, -0.25, -0.25, -0.25, 1.0, -0.75, 0.5, 0.25, -0.25, 0.0, 0.25, 1.0, -0.5, -1.0, 0.5, 1.0, 0.75, 1.0, -1.0, 0.75, 0.0, -1.0, -0.25, -0.25, -0.5, 0.0, 1.0, 0.25, -1.0, 0.75, 1.0, 0.0, ]);
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
    const sampler302 = device30.createSampler( { label: "sampler302" } );
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.popDebugGroup();
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    query301.destroy()
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
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
    render_bundle_encoder300.setPipeline(render_pipeline302);
    
    texture301.destroy();
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
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
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    query301.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
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
    query301.destroy()
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    device60.pushErrorScope("out-of-memory");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
        powerPreference: "high-performance"
    });
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    
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
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query303.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    query301.destroy()
    
    device20.pushErrorScope("validation");
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query301.destroy()
    buffer302.destroy()
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    texture600.destroy();
    
    device60.pushErrorScope("out-of-memory");
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    const array11 = new Float32Array([-1.0, -1.0, -0.25, -0.25, 0.0, 0.25, 0.5, -0.25, -0.75, 0.5, 0.75, 0.75, 0.0, -0.5, -0.5, 1.0, 0.75, -0.75, -1.0, 0.25, 0.25, 0.0, 0.25, -1.0, 1.0, -0.5, 1.0, 0.0, 0.75, 0.5, -1.0, -0.25, 0.25, -1.0, 0.25, -0.25, 0.0, -1.0, 0.0, -0.75, -1.0, -0.5, 1.0, 0.75, 0.75, 0.0, 1.0, -0.75, 1.0, 0.0, 0.75, -0.5, 0.75, 0.75, 0.0, -1.0, 1.0, 0.5, -0.75, 0.25, 0.0, 0.0, -0.25, 0.5, 0.75, 0.5, 0.75, 0.0, 0.75, 0.0, -1.0, 0.25, 0.75, 0.25, -0.5, 0.25, -0.5, -0.5, 0.5, -0.75, -0.75, 0.0, -0.5, -0.25, 0.0, 0.25, 1.0, -0.75, -0.75, -1.0, -0.25, -0.5, -0.25, -0.5, -1.0, -0.75, -1.0, 0.25, 0.5, 0.0, ]);
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder300.popDebugGroup();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer600.destroy()
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    
    
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
    buffer700.destroy()
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const array12 = new Float32Array([0.0, 0.0, 0.75, 1.0, 0.5, 0.0, -0.75, -0.25, 0.0, 0.75, 0.25, -0.25, -1.0, -0.5, -0.5, -0.75, -1.0, -1.0, 0.25, 1.0, 0.5, 0.75, 0.75, -0.25, -0.75, 0.25, 0.75, 0.25, -0.5, -0.25, 0.5, 0.5, 0.25, -0.5, 0.25, 0.0, 0.5, 1.0, 0.75, -1.0, -0.5, -0.25, 0.75, -0.5, 0.0, 1.0, 0.5, 0.5, -0.5, -0.25, -0.5, 0.0, 0.5, 0.0, 0.0, 1.0, 0.5, -0.25, -0.75, 0.0, 0.25, 1.0, 0.75, -0.75, 0.5, 0.5, -0.75, -1.0, 0.5, 0.5, 0.25, -0.5, 0.5, 0.75, 0.5, -0.25, -1.0, -1.0, 0.0, 0.25, 0.75, -0.25, -1.0, 0.25, -0.25, 0.75, 0.25, -1.0, 0.25, 0.25, 0.25, 0.25, 0.25, -0.75, -0.5, -0.25, 0.25, 0.5, 0.5, -1.0, ]);
    device50.pushErrorScope("out-of-memory");
    
    
    
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
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer301.destroy()
    command_encoder700.insertDebugMarker("mymarker");
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3000.setPipeline(compute_pipeline302);
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    const sampler204 = device20.createSampler( { label: "sampler204" } );
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
    
    const command_buffer301 = command_encoder301.finish();
    
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
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    
    device30.queue.submit([command_buffer301, ]);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
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
    query301.destroy()
    device30.pushErrorScope("validation");
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    query300.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    query200.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
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
    command_encoder600.insertDebugMarker("mymarker");
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder7000.insertDebugMarker("marker")
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
    render_bundle_encoder301.setPipeline(render_pipeline304);
    
    
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
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout303]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout701]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_bundle_encoder701.insertDebugMarker("marker");
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
    render_bundle_encoder302.setPipeline(render_pipeline301);
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    const command_buffer500 = command_encoder500.finish();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    device30.queue.writeBuffer(buffer305, 0, array11, 0, array11.length);
    compute_pass_encoder7000.insertDebugMarker("marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device30.queue.writeBuffer(buffer305, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer305, 0, array0, 0, array0.length);
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    
    
    buffer201.destroy()
    device30.queue.writeBuffer(buffer305, 0, array7, 0, array7.length);
    buffer305.destroy()
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    device60.pushErrorScope("out-of-memory");
    
    render_bundle_encoder701.insertDebugMarker("marker");
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device70.pushErrorScope("out-of-memory");
    query300.destroy()
    
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    query303.destroy()
    
    
    buffer304.destroy()
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_pass_encoder6000.setPipeline(render_pipeline600);
    
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    
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
    device90.queue.writeBuffer(buffer900, 0, array5, 0, array5.length);
    device90.queue.writeBuffer(buffer900, 0, array9, 0, array9.length);
    render_bundle_encoder500.setPipeline(render_pipeline501);
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    
    device90.queue.writeBuffer(buffer900, 0, array7, 0, array7.length);
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    
    buffer200.destroy()
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder900.clearBuffer(buffer900);
    render_bundle_encoder701.setPipeline(render_pipeline700);
    device90.queue.writeBuffer(buffer900, 0, array5, 0, array5.length);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const array13 = new Float32Array([-0.25, -0.25, -0.75, -0.75, 0.75, -0.5, -0.25, -0.75, 0.75, -1.0, -0.75, -0.75, 0.75, 0.75, -0.5, 0.75, 1.0, 1.0, -0.75, 1.0, -0.5, 0.75, -0.5, -1.0, 0.5, 0.0, 0.5, -0.25, 0.75, 0.25, -1.0, 0.0, -0.5, -0.75, -0.25, 0.25, 0.0, -0.75, -1.0, -0.75, -0.5, -0.25, -1.0, 0.75, 1.0, 1.0, -0.25, 1.0, 1.0, -0.75, 0.25, 0.0, -1.0, 0.25, 0.25, -0.25, 0.0, 0.25, -0.5, -0.75, 0.75, -0.5, -0.5, -0.75, -0.75, 0.75, 1.0, -0.75, -0.25, 1.0, -0.25, 1.0, 1.0, 0.5, -0.75, 0.0, -0.25, -0.25, -1.0, 0.5, 1.0, 0.0, 0.75, 0.0, -0.5, 1.0, 0.75, 1.0, 0.25, 0.25, 0.75, 1.0, -0.5, -0.5, -0.5, -1.0, 0.25, 1.0, 0.75, 0.5, ]);
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
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
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder6000.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    device90.queue.writeBuffer(buffer900, 0, array9, 0, array9.length);
    texture601.destroy();
    
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    
    device90.queue.writeBuffer(buffer900, 0, array9, 0, array9.length);
    render_bundle_encoder901.setPipeline(render_pipeline900);
    const array14 = new Float32Array([0.0, 0.5, -0.25, 0.25, -1.0, -1.0, -0.25, -0.75, 0.75, -0.25, 1.0, 0.25, 1.0, 0.75, 1.0, 0.5, -0.5, -0.75, 0.0, 1.0, -0.5, -0.25, -1.0, 1.0, 0.5, 0.25, 0.5, 1.0, 0.75, 0.0, -0.75, 0.0, 0.75, -0.25, 1.0, 0.75, -0.5, -0.5, -0.75, 0.25, 0.5, 1.0, -0.75, -0.5, 0.75, 1.0, 0.75, 0.0, -0.25, 1.0, -1.0, 0.0, 0.25, 0.25, 1.0, -0.5, -0.25, -0.25, -0.75, -0.25, -0.25, -0.5, -0.75, 0.25, -1.0, 0.0, 0.0, -0.75, -0.75, 0.25, 0.25, 0.0, -0.25, 0.0, 0.0, 0.5, 0.0, -0.25, 0.0, 0.25, 0.25, -0.25, -1.0, 0.25, -0.5, -0.25, 0.75, -1.0, 0.75, 0.75, -1.0, 0.25, -0.25, 0.75, -0.25, 0.75, -0.5, 0.5, 0.25, -1.0, ]);
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
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
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer601,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer602,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    
    buffer601.destroy()
    render_pass_encoder6000.setStencilReference(1);
    render_bundle_encoder300.insertDebugMarker("marker");
    device70.pushErrorScope("internal");
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder6000.pushDebugGroup("group_marker");
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout701]
    });
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
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
    query200.destroy()
    render_pass_encoder6000.setStencilReference(1);
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    buffer602.destroy()
    
    
    compute_pass_encoder7000.popDebugGroup()
    device90.queue.writeBuffer(buffer900, 0, array6, 0, array6.length);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
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
    device90.pushErrorScope("internal");
    
    
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    
    query700.destroy()
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device90.queue.writeBuffer(buffer900, 0, array0, 0, array0.length);
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group900 = device90.createBindGroup({
        label: "bind_group900",
        layout: render_pipeline900.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer901,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer902,
                },
            },
        ],
    });

    render_bundle_encoder901.setBindGroup(0, bind_group900);
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    
    
    query601.destroy()
    
    
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device90.queue.writeBuffer(buffer900, 0, array0, 0, array0.length);
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    buffer300.destroy()
    buffer303.destroy()
    const texture_view9001 = texture900.createView({ label: "texture_view9001" });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_pass_encoder9010 = command_encoder901.beginRenderPass({
        label: "render_pass_encoder9010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view9000,
            },
        ],
        occlusionQuerySet: query900
    });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query700.destroy()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    query303.destroy()
    render_pass_encoder9010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer902.destroy()
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout303]
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout307,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
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
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    device90.queue.writeBuffer(buffer900, 0, array0, 0, array0.length);
    render_pass_encoder9010.setPipeline(render_pipeline900);
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device90.queue.writeBuffer(buffer900, 0, array10, 0, array10.length);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    device90.queue.writeBuffer(buffer900, 0, array8, 0, array8.length);
    device70.pushErrorScope("internal");
    
    render_pass_encoder6000.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    render_pass_encoder6000.setBindGroup(0, bind_group601);
    compute_pass_encoder2000.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer500, ]);
    const command_buffer200 = command_encoder200.finish();
    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer904 = device90.createBuffer({
        label: "buffer904",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group901 = device90.createBindGroup({
        label: "bind_group901",
        layout: render_pipeline900.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer903,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer904,
                },
            },
        ],
    });

    render_pass_encoder9010.setBindGroup(0, bind_group901);
    compute_pass_encoder3000.end();
    device20.queue.submit([command_buffer200, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer800 = command_encoder800.finish();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer300 = command_encoder300.finish();
    device80.queue.submit([command_buffer800, ]);
}