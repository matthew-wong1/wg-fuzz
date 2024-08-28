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
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device10.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array0 = new Float32Array([-0.25, 0.5, -0.25, 1.0, 0.25, 1.0, -0.25, -0.25, 0.5, 0.0, -1.0, 0.0, -1.0, 0.5, -1.0, 0.0, -1.0, -0.25, 0.75, 0.75, 0.5, -0.5, 1.0, 0.25, -0.5, -0.5, 1.0, -0.25, 0.75, -1.0, -0.5, 0.75, -1.0, 1.0, 0.5, 0.0, 1.0, -1.0, -0.25, -0.5, 0.0, -0.25, 1.0, -0.25, -0.25, 0.25, -1.0, 0.25, -0.25, 0.5, -1.0, -1.0, -0.5, 1.0, 1.0, -0.25, 0.5, -1.0, -0.75, 0.5, 0.75, -1.0, -1.0, -0.25, -0.5, -0.75, -0.5, 0.5, -0.25, -0.5, -0.75, 0.0, -1.0, 0.0, -0.25, -0.25, 0.25, 0.5, 1.0, 0.5, 0.0, -0.75, 1.0, 1.0, -1.0, -1.0, 0.5, -0.25, 0.0, -1.0, 0.25, 0.25, 0.75, -0.5, 0.5, -1.0, 1.0, -1.0, -0.5, 0.5, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device30.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.pushErrorScope("internal");
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device20.destroy();
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([1.0, -0.75, -0.25, 0.5, -0.5, 0.75, 0.25, 0.0, -0.25, -1.0, -1.0, 0.0, 0.5, -1.0, 0.0, 0.0, -0.75, 0.25, 0.5, -0.75, -0.25, -0.75, 1.0, -0.75, 1.0, 0.25, -0.5, -0.25, 0.75, -0.25, -0.75, 1.0, 0.25, -0.25, 0.75, 0.25, 0.0, 0.5, -0.75, 0.0, 0.5, 0.5, -0.5, 0.25, -0.75, 0.75, 1.0, -1.0, 0.5, 0.75, 0.0, -0.25, -1.0, -1.0, -0.25, 0.5, -0.25, 0.5, 1.0, -1.0, 0.0, 0.5, -0.25, 1.0, 0.5, 0.25, -0.25, -0.75, -0.5, 0.25, -0.75, 0.0, 0.75, -0.25, 0.5, -0.25, 0.0, 1.0, 0.25, -0.75, -0.25, -0.25, 0.0, 0.25, 1.0, -1.0, 0.0, 0.25, 0.75, 1.0, 0.0, 0.5, 1.0, -0.25, 0.25, 0.0, 0.5, 0.75, -0.25, -0.25, ]);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device50.destroy();
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    device60.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
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
    device00.pushErrorScope("validation");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    query401.destroy()
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    texture400.destroy();
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query401.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    query401.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    texture401.destroy();
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.destroy();
    query401.destroy()
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    query400.destroy()
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout405]
    });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout404]
    });
    device40.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
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
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    query700.destroy()
    
    query700.destroy()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    texture700.destroy();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([0.75, -0.75, 0.75, 0.25, 0.0, -0.5, 0.75, -1.0, 0.5, 0.0, 0.0, -0.75, 0.5, -0.5, -0.75, -0.25, -1.0, 0.5, 0.25, -0.5, -0.75, 0.75, -0.5, 1.0, 0.5, 0.5, 0.5, -0.75, -0.25, -0.75, 0.0, 0.25, 0.75, 0.75, 1.0, 0.5, -0.75, 0.5, 0.0, 1.0, -0.75, -1.0, 0.0, 0.5, 0.75, -0.25, 0.25, 1.0, 0.0, -0.5, -0.75, -1.0, 1.0, 0.75, 0.75, -1.0, -0.25, 0.75, 0.75, 0.75, 0.5, -0.5, 0.25, 0.5, 0.5, 0.75, -0.25, -1.0, -0.5, 0.75, -0.25, 1.0, -0.75, -1.0, 0.0, -1.0, 0.75, 0.0, -0.5, 1.0, -0.5, 0.0, 0.5, -0.75, 0.0, 0.0, 0.75, 0.25, -1.0, -0.75, 0.5, 0.5, 0.75, 0.5, 0.5, -1.0, 0.5, -0.25, 0.25, -1.0, ]);
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device70.pushErrorScope("out-of-memory");
    const array3 = new Float32Array([0.25, 1.0, -0.25, -0.5, -0.75, -0.75, 0.5, -0.5, -0.75, 0.25, 0.0, 0.25, -0.75, 0.5, 0.5, -0.5, 0.25, 0.5, 0.25, 0.25, -1.0, 0.25, -0.75, 0.5, 1.0, -0.5, 0.25, -0.25, -0.5, -1.0, -0.75, -0.25, 1.0, -0.5, -0.5, -0.75, -0.75, 0.5, 1.0, -0.5, -0.5, -1.0, -1.0, 0.25, -1.0, 0.75, -1.0, -1.0, -0.75, -0.75, -0.75, 1.0, -0.5, 0.25, 1.0, -1.0, 0.25, -0.25, 0.5, -0.75, -1.0, 1.0, 1.0, -0.75, -0.25, 1.0, -0.5, 0.75, 0.5, 0.0, -1.0, -0.25, 0.0, -0.25, -0.5, -1.0, -1.0, 1.0, 0.25, 1.0, 1.0, -0.25, -0.25, -0.75, 0.5, 1.0, -1.0, -0.5, -0.75, 1.0, 0.5, 0.25, 0.25, 0.0, -0.5, -0.25, 0.5, 1.0, -0.75, 1.0, ]);
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    device80.destroy();
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    query701.destroy()
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture702.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
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
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder701.setPipeline(render_pipeline700);
    query700.destroy()
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_bundle_encoder700.insertDebugMarker("marker");
    query701.destroy()
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder700.setPipeline(render_pipeline701);
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
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device100.pushErrorScope("validation");
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    texture701.destroy();
    
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile(__dirname + '/shader_module705.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    texture1000.destroy();
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    device90.queue.writeTexture({ texture: texture900 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    device90.queue.writeTexture({ texture: texture900 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout703,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout702,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile(__dirname + '/shader_module706.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout700,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    device90.queue.writeTexture({ texture: texture900 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query700.destroy()
    device90.destroy();
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout703,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout700]
    });
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
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
    const compute_pipeline707 = device70.createComputePipeline({
        label: "compute_pipeline707",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    render_bundle_encoder702.setPipeline(render_pipeline702);
    const compute_pipeline708 = device70.createComputePipeline({
        label: "compute_pipeline708",
        layout: pipeline_layout702,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    
    
    const compute_pipeline709 = device70.createComputePipeline({
        label: "compute_pipeline709",
        layout: pipeline_layout700,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    
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
    const compute_pipeline7010 = device70.createComputePipeline({
        label: "compute_pipeline7010",
        layout: pipeline_layout701,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7011 = device70.createComputePipeline({
        label: "compute_pipeline7011",
        layout: pipeline_layout703,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7012 = device70.createComputePipeline({
        label: "compute_pipeline7012",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    
    var shader_module707_code = "";
    try {
        shader_module707_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module707 = await device70.createShaderModule({ label: "shader_module707", code: shader_module707_code })
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline7013 = device70.createComputePipeline({
        label: "compute_pipeline7013",
        layout: pipeline_layout703,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const array4 = new Float32Array([-0.75, 0.75, -0.5, 0.0, -0.25, 0.5, -0.5, 0.0, 1.0, 0.5, -1.0, -1.0, 0.5, -0.75, 0.5, -0.75, -0.25, 0.5, -1.0, 0.5, 0.75, -0.5, 0.75, 1.0, -0.5, 0.0, -0.5, 0.25, 0.25, 1.0, 0.0, 0.5, 1.0, 0.25, -1.0, -1.0, 0.5, 0.75, -1.0, 0.75, 0.5, -0.25, 0.5, 0.0, -0.5, 0.75, 0.5, 0.75, -0.5, 0.25, 0.75, 0.25, -0.25, 0.5, -1.0, 1.0, 1.0, 0.75, 0.25, 0.0, -1.0, -0.25, -0.25, 0.5, 0.0, 1.0, -1.0, 0.0, 0.5, -1.0, 0.25, 0.75, 0.0, -1.0, 0.25, -1.0, 1.0, -0.75, -0.25, -0.5, 1.0, 0.25, -0.75, 0.0, 0.0, -0.75, 0.75, -0.75, -0.5, 0.0, -0.75, 0.25, 0.5, 0.0, 0.25, -0.5, 0.75, -0.75, -0.5, 1.0, ]);
    const compute_pipeline7014 = device70.createComputePipeline({
        label: "compute_pipeline7014",
        layout: pipeline_layout704,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    const compute_pipeline7015 = device70.createComputePipeline({
        label: "compute_pipeline7015",
        layout: pipeline_layout705,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7016 = device70.createComputePipeline({
        label: "compute_pipeline7016",
        layout: pipeline_layout705,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7017 = device70.createComputePipeline({
        label: "compute_pipeline7017",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7018 = device70.createComputePipeline({
        label: "compute_pipeline7018",
        layout: pipeline_layout702,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    const compute_pipeline7019 = device70.createComputePipeline({
        label: "compute_pipeline7019",
        layout: pipeline_layout700,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7020 = device70.createComputePipeline({
        label: "compute_pipeline7020",
        layout: pipeline_layout703,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7021 = device70.createComputePipeline({
        label: "compute_pipeline7021",
        layout: pipeline_layout705,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7022 = device70.createComputePipeline({
        label: "compute_pipeline7022",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const compute_pipeline7023 = device70.createComputePipeline({
        label: "compute_pipeline7023",
        layout: pipeline_layout705,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7024 = device70.createComputePipeline({
        label: "compute_pipeline7024",
        layout: pipeline_layout705,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline7025 = device70.createComputePipeline({
        label: "compute_pipeline7025",
        layout: pipeline_layout703,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    device100.queue.writeTexture({ texture: texture1001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline7026 = device70.createComputePipeline({
        label: "compute_pipeline7026",
        layout: pipeline_layout701,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module707,
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
            module: shader_module707,
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
    query702.destroy()
    const compute_pipeline7027 = device70.createComputePipeline({
        label: "compute_pipeline7027",
        layout: pipeline_layout702,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7028 = device70.createComputePipeline({
        label: "compute_pipeline7028",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    query700.destroy()
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline1001 = device100.createRenderPipeline({
        label: "render_pipeline1001",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1002]
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const compute_pipeline7029 = device70.createComputePipeline({
        label: "compute_pipeline7029",
        layout: pipeline_layout701,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    device100.queue.writeTexture({ texture: texture1001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module708_code = "";
    try {
        shader_module708_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module708 = await device70.createShaderModule({ label: "shader_module708", code: shader_module708_code })
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture1001.destroy();
    
    const render_pipeline705 = device70.createRenderPipeline({
        label: "render_pipeline705",
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
    const compute_pipeline7030 = device70.createComputePipeline({
        label: "compute_pipeline7030",
        layout: pipeline_layout705,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const texture_view11010 = texture1101.createView({ label: "texture_view11010" });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array5 = new Float32Array([0.75, 0.75, 0.0, -1.0, -0.5, 0.25, -0.25, 0.25, -1.0, -0.75, 0.25, -0.5, 1.0, -0.25, -0.75, 0.5, -0.25, 0.25, 0.75, 0.0, 0.5, 0.75, 0.0, 1.0, 1.0, -0.25, 0.25, -1.0, 0.5, 0.0, 1.0, 0.5, 0.5, -0.75, -1.0, -1.0, 0.25, -0.75, 0.75, -0.75, 0.25, 0.5, 1.0, -1.0, 0.5, -0.25, 0.25, -0.5, 0.5, 0.25, 0.75, 0.5, 0.75, 0.0, -0.75, 1.0, 0.5, -0.75, 0.0, 0.75, 0.5, 0.0, 1.0, 0.5, 0.75, -0.5, -1.0, 0.0, -0.75, -0.75, -0.25, -0.25, 0.0, -0.25, 0.5, -0.75, -1.0, 0.0, 0.75, -0.25, -0.75, -0.5, -0.25, -0.5, -1.0, -0.5, -0.25, 0.75, -0.25, -1.0, 0.25, 0.75, -0.5, -0.75, -0.25, 0.5, 0.0, 0.5, 0.75, -0.75, ]);
    
    
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const compute_pipeline7031 = device70.createComputePipeline({
        label: "compute_pipeline7031",
        layout: pipeline_layout705,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const render_pipeline706 = device70.createRenderPipeline({
        label: "render_pipeline706",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const compute_pipeline7032 = device70.createComputePipeline({
        label: "compute_pipeline7032",
        layout: pipeline_layout705,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    texture703.destroy();
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline7033 = device70.createComputePipeline({
        label: "compute_pipeline7033",
        layout: pipeline_layout703,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7034 = device70.createComputePipeline({
        label: "compute_pipeline7034",
        layout: pipeline_layout704,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    query701.destroy()
    const compute_pipeline7035 = device70.createComputePipeline({
        label: "compute_pipeline7035",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7036 = device70.createComputePipeline({
        label: "compute_pipeline7036",
        layout: pipeline_layout705,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    device110.queue.writeTexture({ texture: texture1101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1100.destroy();
    const render_pipeline1002 = device100.createRenderPipeline({
        label: "render_pipeline1002",
        vertex: {
            module: shader_module1001,
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
            module: shader_module1001,
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
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const compute_pipeline7037 = device70.createComputePipeline({
        label: "compute_pipeline7037",
        layout: pipeline_layout704,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile(__dirname + '/shader_module1004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    texture704.destroy();
    const bind_group_layout1003 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1003",
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
    device110.queue.writeTexture({ texture: texture1101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline7038 = device70.createComputePipeline({
        label: "compute_pipeline7038",
        layout: pipeline_layout703,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7039 = device70.createComputePipeline({
        label: "compute_pipeline7039",
        layout: pipeline_layout704,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7040 = device70.createComputePipeline({
        label: "compute_pipeline7040",
        layout: pipeline_layout702,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const compute_pipeline7041 = device70.createComputePipeline({
        label: "compute_pipeline7041",
        layout: pipeline_layout703,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const compute_pipeline7042 = device70.createComputePipeline({
        label: "compute_pipeline7042",
        layout: pipeline_layout700,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const texture705 = device70.createTexture({
        label: "texture705",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture1003 = device100.createTexture({
        label: "texture1003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query701.destroy()
    const compute_pipeline7043 = device70.createComputePipeline({
        label: "compute_pipeline7043",
        layout: pipeline_layout701,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
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
    device110.queue.writeTexture({ texture: texture1101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    device110.queue.writeTexture({ texture: texture1101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view7050 = texture705.createView({ label: "texture_view7050" });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const texture_view10020 = texture1002.createView({ label: "texture_view10020" });
    const compute_pipeline7044 = device70.createComputePipeline({
        label: "compute_pipeline7044",
        layout: pipeline_layout704,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    texture1003.destroy();
    device110.queue.writeTexture({ texture: texture1101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1002 = device100.createPipelineLayout({ 
        label: "pipeline_layout1002",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline707 = device70.createRenderPipeline({
        label: "render_pipeline707",
        vertex: {
            module: shader_module708,
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
            module: shader_module708,
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
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout701]
    });
    const pipeline_layout707 = device70.createPipelineLayout({ 
        label: "pipeline_layout707",
        bindGroupLayouts: [bind_group_layout701]
    });
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const compute_pipeline7045 = device70.createComputePipeline({
        label: "compute_pipeline7045",
        layout: pipeline_layout707,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7046 = device70.createComputePipeline({
        label: "compute_pipeline7046",
        layout: pipeline_layout705,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7047 = device70.createComputePipeline({
        label: "compute_pipeline7047",
        layout: pipeline_layout701,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7048 = device70.createComputePipeline({
        label: "compute_pipeline7048",
        layout: pipeline_layout705,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7049 = device70.createComputePipeline({
        label: "compute_pipeline7049",
        layout: pipeline_layout701,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    
    device110.queue.writeTexture({ texture: texture1101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture705.destroy();
    render_bundle_encoder700.insertDebugMarker("marker");
    const bind_group_layout1004 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1004",
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
    const compute_pipeline7050 = device70.createComputePipeline({
        label: "compute_pipeline7050",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7051 = device70.createComputePipeline({
        label: "compute_pipeline7051",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7052 = device70.createComputePipeline({
        label: "compute_pipeline7052",
        layout: pipeline_layout706,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1005_code = "";
    try {
        shader_module1005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1005 = await device100.createShaderModule({ label: "shader_module1005", code: shader_module1005_code })
    const compute_pipeline1000 = device100.createComputePipeline({
        label: "compute_pipeline1000",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1004,
            entryPoint: "main"
        }
    });
    const pipeline_layout1003 = device100.createPipelineLayout({ 
        label: "pipeline_layout1003",
        bindGroupLayouts: [bind_group_layout1003]
    });
    const query705 = device70.createQuerySet({
        label: "query705",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline7053 = device70.createComputePipeline({
        label: "compute_pipeline7053",
        layout: pipeline_layout705,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1101,
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
            module: shader_module1101,
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
    const compute_pipeline7054 = device70.createComputePipeline({
        label: "compute_pipeline7054",
        layout: pipeline_layout705,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    device120.destroy();
    const compute_pipeline7055 = device70.createComputePipeline({
        label: "compute_pipeline7055",
        layout: pipeline_layout704,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const query706 = device70.createQuerySet({
        label: "query706",
        type: "occlusion",
        count: 32,
    });
    device110.queue.writeTexture({ texture: texture1101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline7056 = device70.createComputePipeline({
        label: "compute_pipeline7056",
        layout: pipeline_layout706,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7057 = device70.createComputePipeline({
        label: "compute_pipeline7057",
        layout: pipeline_layout706,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([1.0, -0.25, -1.0, -0.25, 0.75, 1.0, -0.25, 1.0, 0.75, 0.75, 1.0, 1.0, -0.25, -1.0, 0.75, 0.0, -1.0, -0.5, 0.25, 0.5, 0.5, 0.25, -0.25, -0.75, 0.5, -1.0, -1.0, -0.25, -0.5, -0.5, -1.0, -0.75, 0.75, -0.25, -1.0, -0.5, 0.5, -1.0, 0.25, 0.0, 0.75, -0.25, -0.25, 0.0, -0.25, -0.5, 0.75, -0.75, 1.0, -1.0, 0.25, -0.5, 0.5, 1.0, -1.0, 0.25, 1.0, 0.0, -1.0, 0.0, 1.0, -1.0, -0.5, 0.25, -0.25, 0.5, 1.0, 1.0, -0.75, 0.75, 0.0, 0.0, 0.5, -0.75, 0.5, -0.75, 0.75, 0.0, -1.0, 0.0, -0.25, -1.0, -0.25, 0.5, 0.0, 0.25, -0.25, -0.75, -1.0, 0.5, 0.25, -1.0, 0.25, -0.5, 0.5, 0.0, 0.25, -0.5, 0.75, 0.25, ]);
    
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    var shader_module709_code = "";
    try {
        shader_module709_code = await fs.readFile(__dirname + '/shader_module709.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module709 = await device70.createShaderModule({ label: "shader_module709", code: shader_module709_code })
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline7058 = device70.createComputePipeline({
        label: "compute_pipeline7058",
        layout: pipeline_layout706,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    var shader_module7010_code = "";
    try {
        shader_module7010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module7010 = await device70.createShaderModule({ label: "shader_module7010", code: shader_module7010_code })
    const compute_pipeline1001 = device100.createComputePipeline({
        label: "compute_pipeline1001",
        layout: pipeline_layout1003,
        compute: {
            module: shader_module1004,
            entryPoint: "main"
        }
    });
    var shader_module7011_code = "";
    try {
        shader_module7011_code = await fs.readFile(__dirname + '/shader_module7011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module7011 = await device70.createShaderModule({ label: "shader_module7011", code: shader_module7011_code })
    const render_pipeline1101 = device110.createRenderPipeline({
        label: "render_pipeline1101",
        vertex: {
            module: shader_module1101,
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
            module: shader_module1101,
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
    const compute_pipeline7059 = device70.createComputePipeline({
        label: "compute_pipeline7059",
        layout: pipeline_layout700,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    device110.queue.writeTexture({ texture: texture1101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline7060 = device70.createComputePipeline({
        label: "compute_pipeline7060",
        layout: pipeline_layout703,
        compute: {
            module: shader_module7011,
            entryPoint: "main"
        }
    });
    const compute_pipeline7061 = device70.createComputePipeline({
        label: "compute_pipeline7061",
        layout: pipeline_layout706,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline7062 = device70.createComputePipeline({
        label: "compute_pipeline7062",
        layout: pipeline_layout707,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7063 = device70.createComputePipeline({
        label: "compute_pipeline7063",
        layout: pipeline_layout700,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    texture1101.destroy();
    const pipeline_layout708 = device70.createPipelineLayout({ 
        label: "pipeline_layout708",
        bindGroupLayouts: [bind_group_layout701]
    });
    const compute_pipeline7064 = device70.createComputePipeline({
        label: "compute_pipeline7064",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    var shader_module7012_code = "";
    try {
        shader_module7012_code = await fs.readFile(__dirname + '/shader_module7012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module7012 = await device70.createShaderModule({ label: "shader_module7012", code: shader_module7012_code })
    render_bundle_encoder1101.setPipeline(render_pipeline1101);
    const compute_pipeline7065 = device70.createComputePipeline({
        label: "compute_pipeline7065",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const render_pipeline1003 = device100.createRenderPipeline({
        label: "render_pipeline1003",
        vertex: {
            module: shader_module1005,
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
            module: shader_module1005,
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
    
    render_bundle_encoder1100.setPipeline(render_pipeline1101);
    const compute_pipeline7066 = device70.createComputePipeline({
        label: "compute_pipeline7066",
        layout: pipeline_layout701,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    const pipeline_layout1004 = device100.createPipelineLayout({ 
        label: "pipeline_layout1004",
        bindGroupLayouts: [bind_group_layout1000]
    });
    query705.destroy()
    const compute_pipeline1002 = device100.createComputePipeline({
        label: "compute_pipeline1002",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1004,
            entryPoint: "main"
        }
    });
    const compute_pipeline7067 = device70.createComputePipeline({
        label: "compute_pipeline7067",
        layout: pipeline_layout703,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7068 = device70.createComputePipeline({
        label: "compute_pipeline7068",
        layout: pipeline_layout702,
        compute: {
            module: shader_module7011,
            entryPoint: "main"
        }
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    const compute_pipeline7069 = device70.createComputePipeline({
        label: "compute_pipeline7069",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    query704.destroy()
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1100]
    });
    const compute_pipeline7070 = device70.createComputePipeline({
        label: "compute_pipeline7070",
        layout: pipeline_layout701,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    const render_pipeline708 = device70.createRenderPipeline({
        label: "render_pipeline708",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    render_bundle_encoder701.insertDebugMarker("marker");
    const compute_pipeline7071 = device70.createComputePipeline({
        label: "compute_pipeline7071",
        layout: pipeline_layout707,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7072 = device70.createComputePipeline({
        label: "compute_pipeline7072",
        layout: pipeline_layout700,
        compute: {
            module: shader_module709,
            entryPoint: "main"
        }
    });
    const pipeline_layout1005 = device100.createPipelineLayout({ 
        label: "pipeline_layout1005",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const compute_pipeline7073 = device70.createComputePipeline({
        label: "compute_pipeline7073",
        layout: pipeline_layout706,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    const compute_pipeline1003 = device100.createComputePipeline({
        label: "compute_pipeline1003",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1004,
            entryPoint: "main"
        }
    });
    const compute_pipeline7074 = device70.createComputePipeline({
        label: "compute_pipeline7074",
        layout: pipeline_layout701,
        compute: {
            module: shader_module709,
            entryPoint: "main"
        }
    });
    const compute_pipeline7075 = device70.createComputePipeline({
        label: "compute_pipeline7075",
        layout: pipeline_layout706,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    
    const render_pipeline709 = device70.createRenderPipeline({
        label: "render_pipeline709",
        vertex: {
            module: shader_module708,
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
            module: shader_module708,
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
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline7076 = device70.createComputePipeline({
        label: "compute_pipeline7076",
        layout: pipeline_layout707,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    const compute_pipeline7077 = device70.createComputePipeline({
        label: "compute_pipeline7077",
        layout: pipeline_layout702,
        compute: {
            module: shader_module7011,
            entryPoint: "main"
        }
    });
    const compute_pipeline7078 = device70.createComputePipeline({
        label: "compute_pipeline7078",
        layout: pipeline_layout700,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7079 = device70.createComputePipeline({
        label: "compute_pipeline7079",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7080 = device70.createComputePipeline({
        label: "compute_pipeline7080",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7081 = device70.createComputePipeline({
        label: "compute_pipeline7081",
        layout: pipeline_layout701,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7082 = device70.createComputePipeline({
        label: "compute_pipeline7082",
        layout: pipeline_layout708,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7083 = device70.createComputePipeline({
        label: "compute_pipeline7083",
        layout: pipeline_layout702,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7084 = device70.createComputePipeline({
        label: "compute_pipeline7084",
        layout: pipeline_layout701,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7085 = device70.createComputePipeline({
        label: "compute_pipeline7085",
        layout: pipeline_layout705,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    const compute_pipeline7086 = device70.createComputePipeline({
        label: "compute_pipeline7086",
        layout: pipeline_layout702,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1000.setPipeline(render_pipeline1002);
    device110.pushErrorScope("out-of-memory");
    const compute_pipeline7087 = device70.createComputePipeline({
        label: "compute_pipeline7087",
        layout: pipeline_layout703,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const pipeline_layout1006 = device100.createPipelineLayout({ 
        label: "pipeline_layout1006",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const compute_pipeline7088 = device70.createComputePipeline({
        label: "compute_pipeline7088",
        layout: pipeline_layout707,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const render_pipeline1004 = device100.createRenderPipeline({
        label: "render_pipeline1004",
        vertex: {
            module: shader_module1001,
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
            module: shader_module1001,
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
    texture1002.destroy();
    const compute_pipeline7089 = device70.createComputePipeline({
        label: "compute_pipeline7089",
        layout: pipeline_layout704,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7090 = device70.createComputePipeline({
        label: "compute_pipeline7090",
        layout: pipeline_layout703,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7091 = device70.createComputePipeline({
        label: "compute_pipeline7091",
        layout: pipeline_layout702,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline7092 = device70.createComputePipeline({
        label: "compute_pipeline7092",
        layout: pipeline_layout702,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    const array7 = new Float32Array([0.0, 1.0, -0.5, 0.5, 0.5, -0.25, 0.5, 0.75, 0.25, -0.25, 0.0, -1.0, 0.5, -1.0, -0.75, -1.0, 0.25, 1.0, 1.0, -0.75, 0.75, -0.5, -1.0, -0.75, 0.5, -0.5, -0.75, 0.0, 0.75, 0.0, 0.75, 1.0, -0.75, -0.5, -0.5, -1.0, 1.0, 0.5, -0.75, -0.5, 0.5, -0.25, -0.75, 0.5, 0.75, -1.0, 1.0, 0.25, 0.5, -0.5, 0.0, -0.75, -0.75, -1.0, -0.5, 0.5, 0.75, -0.5, -0.25, -0.75, -0.75, 1.0, -0.25, -0.75, 1.0, -0.5, -0.75, -0.5, 0.5, -0.25, 1.0, -1.0, -0.25, -0.75, -1.0, -0.25, 0.25, 0.0, 0.75, -0.5, 1.0, 0.25, -0.25, -0.75, 0.75, 0.5, 0.75, 0.75, 0.75, 0.5, 0.5, 0.0, -0.5, 1.0, -0.5, 0.75, -1.0, -0.75, 0.25, -0.75, ]);
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder1102 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1102",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1007 = device100.createPipelineLayout({ 
        label: "pipeline_layout1007",
        bindGroupLayouts: [bind_group_layout1001]
    });
    const compute_pipeline7093 = device70.createComputePipeline({
        label: "compute_pipeline7093",
        layout: pipeline_layout708,
        compute: {
            module: shader_module7011,
            entryPoint: "main"
        }
    });
    const compute_pipeline7094 = device70.createComputePipeline({
        label: "compute_pipeline7094",
        layout: pipeline_layout706,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7095 = device70.createComputePipeline({
        label: "compute_pipeline7095",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7096 = device70.createComputePipeline({
        label: "compute_pipeline7096",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const pipeline_layout709 = device70.createPipelineLayout({ 
        label: "pipeline_layout709",
        bindGroupLayouts: [bind_group_layout702]
    });
    const compute_pipeline7097 = device70.createComputePipeline({
        label: "compute_pipeline7097",
        layout: pipeline_layout708,
        compute: {
            module: shader_module709,
            entryPoint: "main"
        }
    });
    const sampler1003 = device100.createSampler( { label: "sampler1003" } );
    
    const compute_pipeline7098 = device70.createComputePipeline({
        label: "compute_pipeline7098",
        layout: pipeline_layout706,
        compute: {
            module: shader_module7011,
            entryPoint: "main"
        }
    });
    const compute_pipeline7099 = device70.createComputePipeline({
        label: "compute_pipeline7099",
        layout: pipeline_layout704,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    const compute_pipeline70100 = device70.createComputePipeline({
        label: "compute_pipeline70100",
        layout: pipeline_layout706,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    var shader_module7013_code = "";
    try {
        shader_module7013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module7013 = await device70.createShaderModule({ label: "shader_module7013", code: shader_module7013_code })
    const compute_pipeline70101 = device70.createComputePipeline({
        label: "compute_pipeline70101",
        layout: pipeline_layout708,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline70102 = device70.createComputePipeline({
        label: "compute_pipeline70102",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline1004 = device100.createComputePipeline({
        label: "compute_pipeline1004",
        layout: pipeline_layout1006,
        compute: {
            module: shader_module1004,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([0.5, -0.25, -0.25, 0.25, -0.25, 0.5, -1.0, 0.75, -0.5, -0.75, -0.75, -0.75, -0.5, 0.0, 0.5, -1.0, -0.25, 0.75, 0.25, 0.5, -1.0, 1.0, 0.25, -0.5, -0.5, 0.0, 1.0, 0.25, -1.0, 0.75, 0.25, -0.25, -0.75, 0.5, 0.5, 0.0, -0.5, -1.0, 0.0, 0.25, 0.5, 0.5, 0.75, 0.75, -1.0, 0.75, 0.0, -0.25, 0.25, 0.5, -0.25, -1.0, -0.25, -0.75, 0.75, 0.25, -0.75, -1.0, 0.5, -1.0, -0.5, 0.5, 0.0, -0.75, -0.75, 0.5, -0.5, -0.75, -0.25, -0.25, 0.75, -0.75, -0.75, 0.0, 0.25, 0.75, 0.0, -0.5, 0.25, 0.25, 0.0, 0.0, -1.0, 0.5, -0.5, -1.0, -0.25, 0.0, -1.0, -0.5, 0.25, -1.0, 0.75, 0.5, -0.25, 0.0, -0.25, 0.75, 0.75, 0.75, ]);
    const compute_pipeline70103 = device70.createComputePipeline({
        label: "compute_pipeline70103",
        layout: pipeline_layout706,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline70104 = device70.createComputePipeline({
        label: "compute_pipeline70104",
        layout: pipeline_layout708,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline70105 = device70.createComputePipeline({
        label: "compute_pipeline70105",
        layout: pipeline_layout709,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline1005 = device100.createComputePipeline({
        label: "compute_pipeline1005",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1004,
            entryPoint: "main"
        }
    });
    const texture706 = device70.createTexture({
        label: "texture706",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline70106 = device70.createComputePipeline({
        label: "compute_pipeline70106",
        layout: pipeline_layout701,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline70107 = device70.createComputePipeline({
        label: "compute_pipeline70107",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline70108 = device70.createComputePipeline({
        label: "compute_pipeline70108",
        layout: pipeline_layout702,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline70109 = device70.createComputePipeline({
        label: "compute_pipeline70109",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline70110 = device70.createComputePipeline({
        label: "compute_pipeline70110",
        layout: pipeline_layout708,
        compute: {
            module: shader_module7011,
            entryPoint: "main"
        }
    });
    const pipeline_layout1008 = device100.createPipelineLayout({ 
        label: "pipeline_layout1008",
        bindGroupLayouts: [bind_group_layout1002]
    });
    const texture_view7060 = texture706.createView({ label: "texture_view7060" });
    const compute_pipeline70111 = device70.createComputePipeline({
        label: "compute_pipeline70111",
        layout: pipeline_layout709,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    const compute_pipeline70112 = device70.createComputePipeline({
        label: "compute_pipeline70112",
        layout: pipeline_layout701,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline70113 = device70.createComputePipeline({
        label: "compute_pipeline70113",
        layout: pipeline_layout709,
        compute: {
            module: shader_module7011,
            entryPoint: "main"
        }
    });
    const compute_pipeline70114 = device70.createComputePipeline({
        label: "compute_pipeline70114",
        layout: pipeline_layout705,
        compute: {
            module: shader_module7012,
            entryPoint: "main"
        }
    });
    const render_pipeline7010 = device70.createRenderPipeline({
        label: "render_pipeline7010",
        vertex: {
            module: shader_module7010,
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
            module: shader_module7010,
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
    const render_pipeline1102 = device110.createRenderPipeline({
        label: "render_pipeline1102",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    const texture1004 = device100.createTexture({
        label: "texture1004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    const compute_pipeline70115 = device70.createComputePipeline({
        label: "compute_pipeline70115",
        layout: pipeline_layout701,
        compute: {
            module: shader_module709,
            entryPoint: "main"
        }
    });
    const compute_pipeline70116 = device70.createComputePipeline({
        label: "compute_pipeline70116",
        layout: pipeline_layout707,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    device70.destroy();
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    const array9 = new Float32Array([1.0, -0.5, -1.0, 1.0, 0.25, 0.25, -0.5, 1.0, 0.25, -0.5, -0.5, 0.5, -0.5, -0.25, 0.5, -0.75, -0.25, -0.5, -1.0, -0.25, 0.75, -0.5, 0.75, 0.75, -1.0, 1.0, -1.0, 1.0, -0.75, -1.0, -0.25, -0.25, -1.0, 0.75, -1.0, -0.25, -0.25, -0.25, 0.75, 0.75, -0.25, -0.75, -0.25, 0.0, -0.75, 1.0, 0.0, 0.25, -0.5, 0.75, -0.5, -0.25, -0.75, 0.5, -1.0, -0.5, -1.0, -0.75, 0.25, -0.5, 1.0, 0.0, -0.75, 0.5, 1.0, -0.75, -0.25, 1.0, -0.75, 0.0, 1.0, -0.75, -0.5, 0.0, -0.25, -0.25, -0.25, -0.25, 0.0, -1.0, 1.0, -1.0, 1.0, 0.5, 0.0, 0.25, 0.0, -0.5, -0.75, -1.0, 0.0, -1.0, -0.75, 0.25, 0.75, 0.5, -0.75, 1.0, -1.0, -0.75, ]);
    
    const pipeline_layout1102 = device110.createPipelineLayout({ 
        label: "pipeline_layout1102",
        bindGroupLayouts: [bind_group_layout1100]
    });
    var shader_module1006_code = "";
    try {
        shader_module1006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1006 = await device100.createShaderModule({ label: "shader_module1006", code: shader_module1006_code })
    render_bundle_encoder1102.setPipeline(render_pipeline1101);
    const render_pipeline1103 = device110.createRenderPipeline({
        label: "render_pipeline1103",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    var shader_module1007_code = "";
    try {
        shader_module1007_code = await fs.readFile(__dirname + '/shader_module1007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1007 = await device100.createShaderModule({ label: "shader_module1007", code: shader_module1007_code })
    render_bundle_encoder1101.insertDebugMarker("marker");
    const compute_pipeline1006 = device100.createComputePipeline({
        label: "compute_pipeline1006",
        layout: pipeline_layout1005,
        compute: {
            module: shader_module1007,
            entryPoint: "main"
        }
    });
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}