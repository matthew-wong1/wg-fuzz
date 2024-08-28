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
    
    const array0 = new Float32Array([-1.0, 0.75, -0.5, 0.75, -1.0, 1.0, -1.0, -0.75, -0.25, 1.0, 1.0, 1.0, -1.0, -0.75, -1.0, -0.75, 0.25, -0.25, 1.0, 0.75, 1.0, -0.5, -0.5, -0.5, 0.0, 0.5, 0.75, 1.0, -0.25, 0.75, -0.5, -0.25, 0.25, -0.25, 0.75, -0.5, 0.25, 0.0, -1.0, 0.75, 0.0, -0.5, -0.25, -0.75, -0.75, 0.5, 0.5, -0.25, -1.0, 0.25, -0.25, 0.0, 1.0, 0.5, 0.5, 0.0, 0.25, 0.0, 0.25, 1.0, 0.5, -0.75, 0.75, -0.5, 0.0, 0.5, 0.5, -1.0, 0.0, 0.0, -0.5, 0.75, -0.25, 0.25, 0.5, 1.0, 0.75, 1.0, 0.5, -0.5, -0.25, -0.25, 0.5, -0.5, 1.0, -0.75, 1.0, -1.0, -0.5, -0.75, -1.0, 0.0, -0.5, -0.5, -0.25, 0.25, 0.5, -1.0, 1.0, -1.0, ]);
    const array1 = new Float32Array([0.75, 0.0, 0.0, 0.75, -0.5, 0.25, 1.0, -0.25, -0.5, 0.75, 1.0, -1.0, -0.25, 0.75, -1.0, 0.0, 0.5, 1.0, -1.0, -0.75, 0.5, 0.5, 0.75, 1.0, 0.5, 0.5, 0.25, -0.5, 0.75, -0.25, -0.5, -1.0, 0.75, 1.0, 0.25, 0.0, 1.0, 0.5, 1.0, -1.0, 0.0, 0.0, 0.25, -0.5, 0.0, -0.25, 0.5, 0.75, 1.0, -0.75, 1.0, -0.25, 0.25, -0.75, -0.75, 0.5, 1.0, 0.75, 0.5, 1.0, -0.5, -0.5, 0.5, 0.5, -0.5, 0.0, 1.0, 1.0, 0.25, 0.75, 1.0, 0.25, -1.0, -0.75, 0.75, -1.0, 0.5, -0.5, -0.75, 0.25, 0.75, 0.0, -0.25, -0.25, 0.75, -0.25, 0.5, -0.25, -0.25, -0.75, 0.75, -1.0, -0.5, 0.75, 0.0, -0.25, -0.25, 0.25, -0.25, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([0.75, 0.5, -0.25, -0.5, -0.5, -0.75, 0.5, -1.0, 1.0, 0.5, 0.0, -1.0, 0.75, 0.25, -0.25, 0.75, 0.5, 1.0, 1.0, -0.75, 1.0, 0.0, -0.5, 0.25, -1.0, -1.0, -0.75, 1.0, 0.75, 0.5, 0.75, 0.0, -0.25, 0.5, 0.25, 0.5, -1.0, -0.5, -0.5, 0.25, -0.5, 0.75, 0.25, 0.0, -0.75, 0.25, -0.5, 0.5, 0.0, -0.5, -0.5, -1.0, -0.75, -0.5, -0.25, -0.75, -0.75, -1.0, -1.0, 0.75, 0.0, 1.0, 1.0, -0.75, 0.5, -1.0, -0.75, 0.75, -1.0, 0.25, 1.0, 1.0, -0.75, -0.25, -0.5, -0.75, 0.5, -1.0, -0.5, 0.5, 0.25, 1.0, -0.25, 0.5, 0.0, 0.0, -0.75, 0.5, -1.0, 0.75, 0.25, -0.5, -1.0, 0.75, -1.0, -0.25, 0.5, 0.25, -1.0, -0.25, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const array3 = new Float32Array([0.5, -0.25, 0.75, -0.75, -0.75, -0.25, 0.0, -0.25, 0.25, -0.75, 0.0, 1.0, -0.5, 0.25, 0.0, 0.25, -0.75, -0.5, 1.0, -1.0, 0.25, 0.5, 0.75, -0.25, 0.5, 1.0, 0.5, 0.5, -0.75, -0.5, 0.5, 0.5, -0.5, 0.25, 0.0, 0.25, -0.25, 0.0, -1.0, -0.25, -0.5, 0.5, 1.0, 0.25, 0.25, -0.5, 0.0, 1.0, 0.0, 0.75, 0.5, 0.75, -0.75, -0.5, -0.5, 0.5, 0.75, -1.0, -1.0, 0.75, -1.0, 0.75, 0.25, -0.5, 0.75, 0.5, 0.25, 1.0, -0.25, 1.0, 0.75, -0.25, 0.5, -0.75, 0.0, 1.0, -0.5, 0.5, 0.5, 0.5, -0.5, -0.5, 0.5, 0.0, -0.5, -0.75, -0.25, 1.0, 0.0, 0.0, -1.0, -0.75, -0.5, 0.75, -0.5, 0.5, -0.75, -0.75, -0.25, -0.5, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    
    device20.destroy();
    
    
    
    
    
    const array4 = new Float32Array([-1.0, -1.0, 0.75, -0.75, 0.25, 0.25, -0.75, -0.25, 0.25, 0.5, 0.5, -0.75, -1.0, -0.75, 0.5, -1.0, 0.75, -0.25, -0.25, 0.75, 1.0, -1.0, -0.75, -0.25, 0.5, 0.25, 0.75, 1.0, -1.0, 0.0, 0.5, 0.25, -0.75, -1.0, -1.0, 0.75, 1.0, -1.0, 0.5, 0.5, 0.75, -0.5, 0.5, -0.25, 0.25, 0.75, -0.75, -0.25, 0.0, -0.25, -1.0, -0.5, -0.25, 0.0, -1.0, 0.75, -1.0, 0.75, 0.25, 1.0, -0.75, 0.25, 0.75, -0.75, -1.0, 0.0, -0.75, -0.25, 1.0, 0.25, -0.5, 0.25, -0.25, 0.75, 0.5, -0.75, 0.5, 0.5, 0.5, 0.0, 0.75, -0.75, -0.5, 0.5, -0.25, -1.0, -0.5, 0.75, -0.75, -1.0, -0.5, -0.5, 0.75, -0.25, 0.5, 0.5, -0.25, -1.0, 0.25, -1.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([0.25, -0.5, -0.5, 0.75, 1.0, -0.5, -0.25, 0.25, -1.0, 0.25, 1.0, 0.0, -0.75, 0.25, -0.25, 1.0, 0.25, -0.75, -1.0, -1.0, 1.0, 0.0, -1.0, -0.5, 0.25, -0.5, 0.5, 0.0, -0.75, 0.75, 0.25, 0.25, -0.75, 0.0, -0.75, -1.0, -0.75, 0.75, -0.5, 0.25, 1.0, 0.75, -0.25, 0.25, -0.25, 1.0, -0.5, -1.0, -0.75, -1.0, 0.75, 1.0, -0.25, -1.0, 0.0, -0.5, 0.5, -0.75, -0.75, 0.5, -1.0, 0.5, -0.75, -0.25, 1.0, 0.75, 0.5, -0.25, 0.25, 0.75, -0.25, 0.75, 1.0, -1.0, -0.25, -0.5, -0.5, 0.25, -0.75, 0.75, -1.0, -0.75, 0.25, 1.0, -0.25, 0.75, 0.75, 0.75, 0.75, 0.25, 0.25, -1.0, -1.0, 0.75, -0.25, -0.5, 0.75, 0.5, 0.0, 1.0, ]);
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array6 = new Float32Array([0.5, -0.75, -0.25, 1.0, 0.0, 0.0, 1.0, -1.0, -1.0, 0.75, -1.0, 0.75, -0.5, 0.25, -0.75, 0.25, 0.5, 1.0, 0.5, 0.0, 0.5, -0.5, 0.25, 0.5, 0.0, 0.75, -0.75, 0.0, 0.75, 0.0, 0.25, 0.0, 0.25, 0.25, -0.5, 1.0, -0.5, 0.75, 0.0, 1.0, -0.5, 0.0, 0.75, 0.75, 0.0, -1.0, 0.0, 1.0, -0.5, 0.5, 0.75, -0.75, 0.25, -0.5, 1.0, -0.5, 0.25, -0.75, 1.0, -0.25, 0.75, 1.0, 0.5, 1.0, -0.5, -0.75, -0.5, 0.75, 0.5, -0.25, 0.5, 0.0, -1.0, -1.0, -0.5, 0.5, -0.75, -1.0, 1.0, -0.25, 0.75, 0.0, 0.5, 0.5, -0.75, 0.0, 0.0, 1.0, -0.5, -0.25, -1.0, -0.75, -1.0, 0.25, -1.0, -0.5, 0.75, -0.5, 1.0, -0.25, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.pushErrorScope("out-of-memory");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
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
    texture401.destroy();
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture402.destroy();
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
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    device30.pushErrorScope("validation");
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture301.destroy();
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
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array7 = new Float32Array([0.5, 0.5, 0.0, -0.75, -0.5, 0.75, 1.0, -0.75, 0.75, -0.5, -1.0, 0.5, -0.25, -0.25, 0.75, -0.75, -1.0, 0.0, 1.0, 0.5, -0.25, 0.25, 0.25, -0.5, -0.75, 0.5, 1.0, 0.25, -0.5, -0.75, 0.5, 0.75, 0.5, 0.5, 1.0, 0.75, 0.0, 0.75, 0.0, 0.75, -0.25, -0.5, 0.0, -1.0, -1.0, -1.0, -0.75, 0.25, 0.0, 0.5, 0.5, 0.5, -0.5, 0.75, 0.75, -0.75, -1.0, 0.25, -0.75, -1.0, -1.0, 0.75, 0.25, -0.5, 0.5, -0.25, 0.75, 0.75, -0.5, 0.75, 0.75, 1.0, 0.5, 0.75, -0.25, -0.5, 0.5, 1.0, -0.25, 0.75, -0.5, 1.0, -1.0, 1.0, 1.0, 0.75, -0.5, 0.5, 1.0, 0.25, 0.0, 0.5, 0.0, 0.0, 0.0, 0.75, 0.75, -0.5, 1.0, 0.0, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8unorm",
        dimension: "2d"
    });
    
    const command_buffer300 = command_encoder300.finish();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    buffer400.destroy()
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    texture400.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
        dimension: "2d"
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([0.75, 0.25, 0.5, -0.25, -0.5, 0.5, -0.75, -0.75, 0.0, 0.5, 0.25, -0.75, -0.25, 1.0, 0.25, 1.0, 0.0, 0.25, 0.75, -0.75, 0.75, -0.5, 0.5, -0.25, -0.75, 0.5, 0.0, 0.25, 0.25, 0.0, -1.0, 0.75, 0.25, 0.5, -0.75, -0.25, -0.25, 0.0, -0.75, 0.25, -0.5, 1.0, 0.5, -0.75, 0.75, -0.75, -1.0, -0.25, -0.75, 0.75, -1.0, 0.5, -0.25, 0.25, 0.25, -1.0, -0.75, 0.0, -1.0, -1.0, 0.25, 0.75, -1.0, -0.75, 0.75, 0.25, -1.0, 0.25, 0.25, -0.5, -0.25, 0.75, -1.0, 0.75, -1.0, -0.5, -1.0, -0.5, 0.75, 0.5, 0.0, -0.75, 0.25, 0.75, -1.0, -0.5, 0.25, -0.75, -0.5, 0.25, 0.75, -1.0, -0.25, -0.5, -0.25, -1.0, -0.75, 0.0, 0.0, 1.0, ]);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const array9 = new Float32Array([1.0, 0.75, 0.0, -1.0, 0.5, -0.5, 0.0, 1.0, 0.0, -0.75, -1.0, 0.5, -1.0, -0.5, -1.0, 1.0, 0.25, 0.0, -0.5, -0.25, 0.0, -0.25, 1.0, 0.25, 0.75, 0.0, 1.0, 1.0, -1.0, -1.0, -0.5, 0.75, -0.5, -0.5, -0.75, -0.75, 1.0, -0.25, -1.0, 0.75, 0.5, 0.0, 0.25, -0.25, 0.5, -0.25, -0.5, -1.0, -1.0, -0.75, -0.75, 0.0, 1.0, -0.5, 0.75, 0.25, 0.5, -0.25, 0.0, -0.5, 0.25, 0.25, -0.75, -0.25, 0.75, -0.5, 0.5, 0.0, -0.25, -0.5, 1.0, -0.5, 0.75, -1.0, -0.5, 0.5, -1.0, 1.0, 0.5, 0.25, -0.25, -1.0, -0.5, -0.25, -0.25, -0.75, -0.5, -0.25, 0.5, -0.75, 0.25, 0.25, 0.25, 0.75, 0.75, 0.0, -0.5, -0.5, -0.75, 0.5, ]);
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer303, 0, array9, 0, array9.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    buffer300.destroy()
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.pushErrorScope("out-of-memory");
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query300.destroy()
    query400.destroy()
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    texture403.destroy();
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    texture500.destroy();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    query302.destroy()
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    query400.destroy()
    
    
    query500.destroy()
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    query301.destroy()
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    
    query300.destroy()
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout405,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    query302.destroy()
    
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    
    
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    query400.destroy()
    
    
    
    
    query300.destroy()
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
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
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    buffer303.destroy()
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query502.destroy()
    
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    texture303.destroy();
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture_view4041 = texture404.createView({ label: "texture_view4041" });
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    buffer301.destroy()
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
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
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout400,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    buffer302.destroy()
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3010.setPipeline(compute_pipeline301);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout406,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout406,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    query503.destroy()
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout407,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    texture501.destroy();
    
    
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout407,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    buffer304.destroy()
    query500.destroy()
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture_view4042 = texture404.createView({ label: "texture_view4042" });
    texture405.destroy();
    command_encoder501.resolveQuerySet(
        query503,
        0,
        32,
        buffer501,
        0
    )
    const compute_pipeline4043 = device40.createComputePipeline({
        label: "compute_pipeline4043",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    command_encoder501.resolveQuerySet(
        query504,
        0,
        32,
        buffer501,
        0
    )
    command_encoder500.insertDebugMarker("mymarker");
    
    
    texture302.destroy();
    const compute_pipeline4044 = device40.createComputePipeline({
        label: "compute_pipeline4044",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
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
    const compute_pipeline4045 = device40.createComputePipeline({
        label: "compute_pipeline4045",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline4046 = device40.createComputePipeline({
        label: "compute_pipeline4046",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const compute_pipeline4047 = device40.createComputePipeline({
        label: "compute_pipeline4047",
        layout: pipeline_layout405,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    buffer500.destroy()
    const compute_pipeline4048 = device40.createComputePipeline({
        label: "compute_pipeline4048",
        layout: pipeline_layout406,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
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
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
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
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group300);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline4049 = device40.createComputePipeline({
        label: "compute_pipeline4049",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    device60.destroy();
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4050 = device40.createComputePipeline({
        label: "compute_pipeline4050",
        layout: pipeline_layout407,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    query500.destroy()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder501.resolveQuerySet(
        query501,
        0,
        32,
        buffer501,
        0
    )
    const compute_pipeline4051 = device40.createComputePipeline({
        label: "compute_pipeline4051",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
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
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    texture300.destroy();
    command_encoder501.resolveQuerySet(
        query505,
        0,
        32,
        buffer501,
        0
    )
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    const compute_pipeline4052 = device40.createComputePipeline({
        label: "compute_pipeline4052",
        layout: pipeline_layout405,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder500.resolveQuerySet(
        query501,
        0,
        32,
        buffer501,
        0
    )
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline4053 = device40.createComputePipeline({
        label: "compute_pipeline4053",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4054 = device40.createComputePipeline({
        label: "compute_pipeline4054",
        layout: pipeline_layout407,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const command_buffer501 = command_encoder501.finish();
    const compute_pipeline4055 = device40.createComputePipeline({
        label: "compute_pipeline4055",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    query500.destroy()
    
    
    command_encoder500.insertDebugMarker("mymarker");
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4040,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline4056 = device40.createComputePipeline({
        label: "compute_pipeline4056",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("out-of-memory");
    
    
    
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture305 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4057 = device40.createComputePipeline({
        label: "compute_pipeline4057",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline4058 = device40.createComputePipeline({
        label: "compute_pipeline4058",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4059 = device40.createComputePipeline({
        label: "compute_pipeline4059",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const compute_pipeline4060 = device40.createComputePipeline({
        label: "compute_pipeline4060",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4061 = device40.createComputePipeline({
        label: "compute_pipeline4061",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query301.destroy()
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout303]
    });
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    
    
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3050,
            },
        ],
        occlusionQuerySet: query301
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    device30.queue.writeTexture({ texture: texture305 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3030.pushDebugGroup("group_marker");
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    command_encoder502.resolveQuerySet(
        query505,
        0,
        32,
        buffer501,
        0
    )
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const compute_pipeline4062 = device40.createComputePipeline({
        label: "compute_pipeline4062",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const texture407 = device40.createTexture({
        label: "texture407",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query501.destroy()
    
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder302.popDebugGroup()
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const compute_pipeline4063 = device40.createComputePipeline({
        label: "compute_pipeline4063",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture305 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture305 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const compute_pipeline4064 = device40.createComputePipeline({
        label: "compute_pipeline4064",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture305 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder3010.popDebugGroup()
    const compute_pipeline4065 = device40.createComputePipeline({
        label: "compute_pipeline4065",
        layout: pipeline_layout407,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query504
    });
    
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture305 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline4066 = device40.createComputePipeline({
        label: "compute_pipeline4066",
        layout: pipeline_layout407,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    render_pass_encoder5000.beginOcclusionQuery(0)
    
    render_pass_encoder4000.insertDebugMarker("marker");
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline4067 = device40.createComputePipeline({
        label: "compute_pipeline4067",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    query501.destroy()
    const command_buffer302 = command_encoder302.finish();
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout303,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    
    const compute_pipeline4068 = device40.createComputePipeline({
        label: "compute_pipeline4068",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder5020.setPipeline(render_pipeline500);
    render_pass_encoder4000.setPipeline(render_pipeline400);
    render_pass_encoder3030.setPipeline(render_pipeline302);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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

    render_pass_encoder5020.setBindGroup(0, bind_group500);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5000.setPipeline(render_pipeline500);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3011, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3011, 0);
    compute_pass_encoder3010.end();
    render_pass_encoder3030.popDebugGroup();
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group400);
    const command_buffer301 = command_encoder301.finish();
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group302);
    render_pass_encoder4000.setVertexBuffer(0, buffer400);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder4000.draw(3);
    render_pass_encoder4000.end();
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

    render_pass_encoder5000.setBindGroup(0, bind_group501);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder5000.endOcclusionQuery()
}