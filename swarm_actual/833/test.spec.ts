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
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device10.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    texture300.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.destroy();
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.pushErrorScope("internal");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.destroy();
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
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture401.destroy();
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
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
    device70.pushErrorScope("validation");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
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
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device80.pushErrorScope("out-of-memory");
    texture400.destroy();
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder801.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder801.insertDebugMarker("marker");
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout401]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
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
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    texture800.destroy();
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout702]
    });
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout703]
    });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    device90.pushErrorScope("out-of-memory");
    
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout700]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    render_bundle_encoder801.insertDebugMarker("marker");
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    render_bundle_encoder700.insertDebugMarker("marker");
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout700]
    });
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout409,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout704,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    texture802.destroy();
    
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout705 = device70.createBindGroupLayout({ 
        label: "bind_group_layout705",
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
    render_bundle_encoder700.insertDebugMarker("marker");
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout703]
    });
    render_bundle_encoder802.insertDebugMarker("marker");
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    texture700.destroy();
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
        dimension: "2d"
    });
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout702]
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder802.insertDebugMarker("marker");
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout409,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline707 = device70.createComputePipeline({
        label: "compute_pipeline707",
        layout: pipeline_layout705,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const compute_pipeline708 = device70.createComputePipeline({
        label: "compute_pipeline708",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    device60.pushErrorScope("internal");
    const compute_pipeline709 = device70.createComputePipeline({
        label: "compute_pipeline709",
        layout: pipeline_layout705,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline7010 = device70.createComputePipeline({
        label: "compute_pipeline7010",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    texture801.destroy();
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder801.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout707 = device70.createPipelineLayout({ 
        label: "pipeline_layout707",
        bindGroupLayouts: [bind_group_layout701]
    });
    const compute_pipeline7011 = device70.createComputePipeline({
        label: "compute_pipeline7011",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    render_bundle_encoder801.insertDebugMarker("marker");
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const compute_pipeline7012 = device70.createComputePipeline({
        label: "compute_pipeline7012",
        layout: pipeline_layout707,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline7013 = device70.createComputePipeline({
        label: "compute_pipeline7013",
        layout: pipeline_layout705,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout402]
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout708 = device70.createPipelineLayout({ 
        label: "pipeline_layout708",
        bindGroupLayouts: [bind_group_layout703]
    });
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout408,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module401,
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
    const compute_pipeline7014 = device70.createComputePipeline({
        label: "compute_pipeline7014",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout409,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const pipeline_layout709 = device70.createPipelineLayout({ 
        label: "pipeline_layout709",
        bindGroupLayouts: [bind_group_layout705]
    });
    texture402.destroy();
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout407,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline7015 = device70.createComputePipeline({
        label: "compute_pipeline7015",
        layout: pipeline_layout708,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7016 = device70.createComputePipeline({
        label: "compute_pipeline7016",
        layout: pipeline_layout708,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7017 = device70.createComputePipeline({
        label: "compute_pipeline7017",
        layout: pipeline_layout706,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout900]
    });
    const compute_pipeline7018 = device70.createComputePipeline({
        label: "compute_pipeline7018",
        layout: pipeline_layout703,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout407,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout406,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline7019 = device70.createComputePipeline({
        label: "compute_pipeline7019",
        layout: pipeline_layout705,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const compute_pipeline7020 = device70.createComputePipeline({
        label: "compute_pipeline7020",
        layout: pipeline_layout708,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7021 = device70.createComputePipeline({
        label: "compute_pipeline7021",
        layout: pipeline_layout709,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const pipeline_layout7010 = device70.createPipelineLayout({ 
        label: "pipeline_layout7010",
        bindGroupLayouts: [bind_group_layout704]
    });
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline7022 = device70.createComputePipeline({
        label: "compute_pipeline7022",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
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
    render_bundle_encoder900.insertDebugMarker("marker");
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
    const compute_pipeline7023 = device70.createComputePipeline({
        label: "compute_pipeline7023",
        layout: pipeline_layout706,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const compute_pipeline7024 = device70.createComputePipeline({
        label: "compute_pipeline7024",
        layout: pipeline_layout709,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7025 = device70.createComputePipeline({
        label: "compute_pipeline7025",
        layout: pipeline_layout709,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline7026 = device70.createComputePipeline({
        label: "compute_pipeline7026",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline900 = device90.createComputePipeline({
        label: "compute_pipeline900",
        layout: pipeline_layout900,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const compute_pipeline7027 = device70.createComputePipeline({
        label: "compute_pipeline7027",
        layout: pipeline_layout709,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline901 = device90.createComputePipeline({
        label: "compute_pipeline901",
        layout: pipeline_layout902,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const compute_pipeline7028 = device70.createComputePipeline({
        label: "compute_pipeline7028",
        layout: pipeline_layout705,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7029 = device70.createComputePipeline({
        label: "compute_pipeline7029",
        layout: pipeline_layout707,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout407,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline7030 = device70.createComputePipeline({
        label: "compute_pipeline7030",
        layout: pipeline_layout703,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
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
    render_bundle_encoder801.insertDebugMarker("marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline7031 = device70.createComputePipeline({
        label: "compute_pipeline7031",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const compute_pipeline902 = device90.createComputePipeline({
        label: "compute_pipeline902",
        layout: pipeline_layout901,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout409,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline7032 = device70.createComputePipeline({
        label: "compute_pipeline7032",
        layout: pipeline_layout705,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline7033 = device70.createComputePipeline({
        label: "compute_pipeline7033",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_bundle_encoder701.insertDebugMarker("marker");
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline7034 = device70.createComputePipeline({
        label: "compute_pipeline7034",
        layout: pipeline_layout707,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline4043 = device40.createComputePipeline({
        label: "compute_pipeline4043",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline7035 = device70.createComputePipeline({
        label: "compute_pipeline7035",
        layout: pipeline_layout704,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline7036 = device70.createComputePipeline({
        label: "compute_pipeline7036",
        layout: pipeline_layout707,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline4044 = device40.createComputePipeline({
        label: "compute_pipeline4044",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout404]
    });
    const compute_pipeline4045 = device40.createComputePipeline({
        label: "compute_pipeline4045",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline4046 = device40.createComputePipeline({
        label: "compute_pipeline4046",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline7037 = device70.createComputePipeline({
        label: "compute_pipeline7037",
        layout: pipeline_layout706,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const compute_pipeline4047 = device40.createComputePipeline({
        label: "compute_pipeline4047",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4048 = device40.createComputePipeline({
        label: "compute_pipeline4048",
        layout: pipeline_layout409,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pipeline4049 = device40.createComputePipeline({
        label: "compute_pipeline4049",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const compute_pipeline4050 = device40.createComputePipeline({
        label: "compute_pipeline4050",
        layout: pipeline_layout409,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4051 = device40.createComputePipeline({
        label: "compute_pipeline4051",
        layout: pipeline_layout406,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_bundle_encoder802.insertDebugMarker("marker");
    const compute_pipeline7038 = device70.createComputePipeline({
        label: "compute_pipeline7038",
        layout: pipeline_layout706,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline4052 = device40.createComputePipeline({
        label: "compute_pipeline4052",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline903 = device90.createComputePipeline({
        label: "compute_pipeline903",
        layout: pipeline_layout902,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline7039 = device70.createComputePipeline({
        label: "compute_pipeline7039",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const pipeline_layout7011 = device70.createPipelineLayout({ 
        label: "pipeline_layout7011",
        bindGroupLayouts: [bind_group_layout703]
    });
    const compute_pipeline4053 = device40.createComputePipeline({
        label: "compute_pipeline4053",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline7040 = device70.createComputePipeline({
        label: "compute_pipeline7040",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4054 = device40.createComputePipeline({
        label: "compute_pipeline4054",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
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
    const compute_pipeline4055 = device40.createComputePipeline({
        label: "compute_pipeline4055",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    render_bundle_encoder801.insertDebugMarker("marker");
    const compute_pipeline4056 = device40.createComputePipeline({
        label: "compute_pipeline4056",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline7041 = device70.createComputePipeline({
        label: "compute_pipeline7041",
        layout: pipeline_layout7011,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7042 = device70.createComputePipeline({
        label: "compute_pipeline7042",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7043 = device70.createComputePipeline({
        label: "compute_pipeline7043",
        layout: pipeline_layout707,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline4057 = device40.createComputePipeline({
        label: "compute_pipeline4057",
        layout: pipeline_layout407,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const pipeline_layout7012 = device70.createPipelineLayout({ 
        label: "pipeline_layout7012",
        bindGroupLayouts: [bind_group_layout704]
    });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const compute_pipeline7044 = device70.createComputePipeline({
        label: "compute_pipeline7044",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7045 = device70.createComputePipeline({
        label: "compute_pipeline7045",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline4058 = device40.createComputePipeline({
        label: "compute_pipeline4058",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline7046 = device70.createComputePipeline({
        label: "compute_pipeline7046",
        layout: pipeline_layout703,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline7047 = device70.createComputePipeline({
        label: "compute_pipeline7047",
        layout: pipeline_layout7012,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline4059 = device40.createComputePipeline({
        label: "compute_pipeline4059",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const bind_group_layout706 = device70.createBindGroupLayout({ 
        label: "bind_group_layout706",
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
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline7048 = device70.createComputePipeline({
        label: "compute_pipeline7048",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout603,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline7049 = device70.createComputePipeline({
        label: "compute_pipeline7049",
        layout: pipeline_layout7012,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline4060 = device40.createComputePipeline({
        label: "compute_pipeline4060",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    const compute_pipeline7050 = device70.createComputePipeline({
        label: "compute_pipeline7050",
        layout: pipeline_layout704,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline4061 = device40.createComputePipeline({
        label: "compute_pipeline4061",
        layout: pipeline_layout409,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline7051 = device70.createComputePipeline({
        label: "compute_pipeline7051",
        layout: pipeline_layout7012,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const compute_pipeline4062 = device40.createComputePipeline({
        label: "compute_pipeline4062",
        layout: pipeline_layout409,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    texture701.destroy();
    const compute_pipeline4063 = device40.createComputePipeline({
        label: "compute_pipeline4063",
        layout: pipeline_layout409,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4064 = device40.createComputePipeline({
        label: "compute_pipeline4064",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline7052 = device70.createComputePipeline({
        label: "compute_pipeline7052",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const compute_pipeline4065 = device40.createComputePipeline({
        label: "compute_pipeline4065",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout604,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline4066 = device40.createComputePipeline({
        label: "compute_pipeline4066",
        layout: pipeline_layout407,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline7053 = device70.createComputePipeline({
        label: "compute_pipeline7053",
        layout: pipeline_layout709,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline4067 = device40.createComputePipeline({
        label: "compute_pipeline4067",
        layout: pipeline_layout406,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device100.destroy();
    const compute_pipeline7054 = device70.createComputePipeline({
        label: "compute_pipeline7054",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7055 = device70.createComputePipeline({
        label: "compute_pipeline7055",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const sampler804 = device80.createSampler( { label: "sampler804" } );
    render_bundle_encoder700.insertDebugMarker("marker");
    const pipeline_layout7013 = device70.createPipelineLayout({ 
        label: "pipeline_layout7013",
        bindGroupLayouts: [bind_group_layout702]
    });
    const compute_pipeline904 = device90.createComputePipeline({
        label: "compute_pipeline904",
        layout: pipeline_layout901,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pipeline7056 = device70.createComputePipeline({
        label: "compute_pipeline7056",
        layout: pipeline_layout7011,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const compute_pipeline4068 = device40.createComputePipeline({
        label: "compute_pipeline4068",
        layout: pipeline_layout409,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4069 = device40.createComputePipeline({
        label: "compute_pipeline4069",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4070 = device40.createComputePipeline({
        label: "compute_pipeline4070",
        layout: pipeline_layout406,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4071 = device40.createComputePipeline({
        label: "compute_pipeline4071",
        layout: pipeline_layout4014,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4072 = device40.createComputePipeline({
        label: "compute_pipeline4072",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline7057 = device70.createComputePipeline({
        label: "compute_pipeline7057",
        layout: pipeline_layout709,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline4073 = device40.createComputePipeline({
        label: "compute_pipeline4073",
        layout: pipeline_layout408,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline7058 = device70.createComputePipeline({
        label: "compute_pipeline7058",
        layout: pipeline_layout703,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline4074 = device40.createComputePipeline({
        label: "compute_pipeline4074",
        layout: pipeline_layout4014,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4075 = device40.createComputePipeline({
        label: "compute_pipeline4075",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline7059 = device70.createComputePipeline({
        label: "compute_pipeline7059",
        layout: pipeline_layout701,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline4076 = device40.createComputePipeline({
        label: "compute_pipeline4076",
        layout: pipeline_layout409,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline7060 = device70.createComputePipeline({
        label: "compute_pipeline7060",
        layout: pipeline_layout707,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7061 = device70.createComputePipeline({
        label: "compute_pipeline7061",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline4077 = device40.createComputePipeline({
        label: "compute_pipeline4077",
        layout: pipeline_layout407,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline7062 = device70.createComputePipeline({
        label: "compute_pipeline7062",
        layout: pipeline_layout7012,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7063 = device70.createComputePipeline({
        label: "compute_pipeline7063",
        layout: pipeline_layout703,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout7014 = device70.createPipelineLayout({ 
        label: "pipeline_layout7014",
        bindGroupLayouts: [bind_group_layout702]
    });
    const compute_pipeline7064 = device70.createComputePipeline({
        label: "compute_pipeline7064",
        layout: pipeline_layout701,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7065 = device70.createComputePipeline({
        label: "compute_pipeline7065",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline4078 = device40.createComputePipeline({
        label: "compute_pipeline4078",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline7066 = device70.createComputePipeline({
        label: "compute_pipeline7066",
        layout: pipeline_layout706,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline7067 = device70.createComputePipeline({
        label: "compute_pipeline7067",
        layout: pipeline_layout707,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7068 = device70.createComputePipeline({
        label: "compute_pipeline7068",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline4079 = device40.createComputePipeline({
        label: "compute_pipeline4079",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
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
    const compute_pipeline905 = device90.createComputePipeline({
        label: "compute_pipeline905",
        layout: pipeline_layout901,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout602]
    });
    const compute_pipeline4080 = device40.createComputePipeline({
        label: "compute_pipeline4080",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline7069 = device70.createComputePipeline({
        label: "compute_pipeline7069",
        layout: pipeline_layout708,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline4081 = device40.createComputePipeline({
        label: "compute_pipeline4081",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline7070 = device70.createComputePipeline({
        label: "compute_pipeline7070",
        layout: pipeline_layout7013,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline906 = device90.createComputePipeline({
        label: "compute_pipeline906",
        layout: pipeline_layout900,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const compute_pipeline7071 = device70.createComputePipeline({
        label: "compute_pipeline7071",
        layout: pipeline_layout707,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    const compute_pipeline907 = device90.createComputePipeline({
        label: "compute_pipeline907",
        layout: pipeline_layout900,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    const compute_pipeline7072 = device70.createComputePipeline({
        label: "compute_pipeline7072",
        layout: pipeline_layout7013,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline4082 = device40.createComputePipeline({
        label: "compute_pipeline4082",
        layout: pipeline_layout4014,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline4083 = device40.createComputePipeline({
        label: "compute_pipeline4083",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline7073 = device70.createComputePipeline({
        label: "compute_pipeline7073",
        layout: pipeline_layout701,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline4084 = device40.createComputePipeline({
        label: "compute_pipeline4084",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4085 = device40.createComputePipeline({
        label: "compute_pipeline4085",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout604,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline4086 = device40.createComputePipeline({
        label: "compute_pipeline4086",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline4087 = device40.createComputePipeline({
        label: "compute_pipeline4087",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline7074 = device70.createComputePipeline({
        label: "compute_pipeline7074",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline4088 = device40.createComputePipeline({
        label: "compute_pipeline4088",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout7015 = device70.createPipelineLayout({ 
        label: "pipeline_layout7015",
        bindGroupLayouts: [bind_group_layout702]
    });
    texture803.destroy();
    const compute_pipeline4089 = device40.createComputePipeline({
        label: "compute_pipeline4089",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline7075 = device70.createComputePipeline({
        label: "compute_pipeline7075",
        layout: pipeline_layout705,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline802 = device80.createComputePipeline({
        label: "compute_pipeline802",
        layout: pipeline_layout800,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const pipeline_layout7016 = device70.createPipelineLayout({ 
        label: "pipeline_layout7016",
        bindGroupLayouts: [bind_group_layout702]
    });
    const compute_pipeline4090 = device40.createComputePipeline({
        label: "compute_pipeline4090",
        layout: pipeline_layout4014,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const sampler606 = device60.createSampler( { label: "sampler606" } );
    const compute_pipeline4091 = device40.createComputePipeline({
        label: "compute_pipeline4091",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline7076 = device70.createComputePipeline({
        label: "compute_pipeline7076",
        layout: pipeline_layout7012,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const pipeline_layout7017 = device70.createPipelineLayout({ 
        label: "pipeline_layout7017",
        bindGroupLayouts: [bind_group_layout704]
    });
    
    const compute_pipeline4092 = device40.createComputePipeline({
        label: "compute_pipeline4092",
        layout: pipeline_layout406,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline908 = device90.createComputePipeline({
        label: "compute_pipeline908",
        layout: pipeline_layout900,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const compute_pipeline7077 = device70.createComputePipeline({
        label: "compute_pipeline7077",
        layout: pipeline_layout704,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7078 = device70.createComputePipeline({
        label: "compute_pipeline7078",
        layout: pipeline_layout707,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline4093 = device40.createComputePipeline({
        label: "compute_pipeline4093",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4094 = device40.createComputePipeline({
        label: "compute_pipeline4094",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline7079 = device70.createComputePipeline({
        label: "compute_pipeline7079",
        layout: pipeline_layout7015,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline4095 = device40.createComputePipeline({
        label: "compute_pipeline4095",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const pipeline_layout4015 = device40.createPipelineLayout({ 
        label: "pipeline_layout4015",
        bindGroupLayouts: [bind_group_layout403]
    });
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline4096 = device40.createComputePipeline({
        label: "compute_pipeline4096",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout606,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout606,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline4097 = device40.createComputePipeline({
        label: "compute_pipeline4097",
        layout: pipeline_layout408,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    
    const compute_pipeline909 = device90.createComputePipeline({
        label: "compute_pipeline909",
        layout: pipeline_layout901,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const compute_pipeline7080 = device70.createComputePipeline({
        label: "compute_pipeline7080",
        layout: pipeline_layout703,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7081 = device70.createComputePipeline({
        label: "compute_pipeline7081",
        layout: pipeline_layout707,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline4098 = device40.createComputePipeline({
        label: "compute_pipeline4098",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline803 = device80.createComputePipeline({
        label: "compute_pipeline803",
        layout: pipeline_layout800,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    const compute_pipeline7082 = device70.createComputePipeline({
        label: "compute_pipeline7082",
        layout: pipeline_layout702,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline4099 = device40.createComputePipeline({
        label: "compute_pipeline4099",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline40100 = device40.createComputePipeline({
        label: "compute_pipeline40100",
        layout: pipeline_layout407,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline7083 = device70.createComputePipeline({
        label: "compute_pipeline7083",
        layout: pipeline_layout709,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7084 = device70.createComputePipeline({
        label: "compute_pipeline7084",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7085 = device70.createComputePipeline({
        label: "compute_pipeline7085",
        layout: pipeline_layout705,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline7086 = device70.createComputePipeline({
        label: "compute_pipeline7086",
        layout: pipeline_layout703,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline7087 = device70.createComputePipeline({
        label: "compute_pipeline7087",
        layout: pipeline_layout7017,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline40101 = device40.createComputePipeline({
        label: "compute_pipeline40101",
        layout: pipeline_layout406,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const pipeline_layout7018 = device70.createPipelineLayout({ 
        label: "pipeline_layout7018",
        bindGroupLayouts: [bind_group_layout700]
    });
    const compute_pipeline7088 = device70.createComputePipeline({
        label: "compute_pipeline7088",
        layout: pipeline_layout709,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline40102 = device40.createComputePipeline({
        label: "compute_pipeline40102",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline40103 = device40.createComputePipeline({
        label: "compute_pipeline40103",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline7089 = device70.createComputePipeline({
        label: "compute_pipeline7089",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline7090 = device70.createComputePipeline({
        label: "compute_pipeline7090",
        layout: pipeline_layout707,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7091 = device70.createComputePipeline({
        label: "compute_pipeline7091",
        layout: pipeline_layout705,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline7092 = device70.createComputePipeline({
        label: "compute_pipeline7092",
        layout: pipeline_layout707,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
}