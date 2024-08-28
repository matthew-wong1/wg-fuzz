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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    device10.pushErrorScope("validation");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.pushErrorScope("out-of-memory");
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.destroy();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    buffer100.destroy()
    buffer101.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query101 = device10.createQuerySet({
        label: "query101",
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device50.pushErrorScope("validation");
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer102.destroy()
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
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    buffer500.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.pushErrorScope("internal");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    buffer600.destroy()
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
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    buffer201.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    buffer202.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout502]
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    
    buffer103.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder601.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
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
    
    
    device40.destroy();
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    render_bundle_encoder502.insertDebugMarker("marker");
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    buffer601.destroy()
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder502.insertDebugMarker("marker");
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    buffer503.destroy()
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
    
    
    buffer502.destroy()
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
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
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    buffer602.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    device70.destroy();
    buffer501.destroy()
    
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
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout502]
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer504.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
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
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    buffer200.destroy()
    
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout502]
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
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
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout504]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer203.destroy()
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout602]
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
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    render_bundle_encoder602.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    buffer505.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout504]
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout602]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    
    
    const pipeline_layout5011 = device50.createPipelineLayout({ 
        label: "pipeline_layout5011",
        bindGroupLayouts: [bind_group_layout501]
    });
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    const pipeline_layout5012 = device50.createPipelineLayout({ 
        label: "pipeline_layout5012",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout5013 = device50.createPipelineLayout({ 
        label: "pipeline_layout5013",
        bindGroupLayouts: [bind_group_layout503]
    });
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder502.insertDebugMarker("marker");
    const pipeline_layout5014 = device50.createPipelineLayout({ 
        label: "pipeline_layout5014",
        bindGroupLayouts: [bind_group_layout503]
    });
    
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    
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
    
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout603]
    });
    
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const pipeline_layout5015 = device50.createPipelineLayout({ 
        label: "pipeline_layout5015",
        bindGroupLayouts: [bind_group_layout505]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const bind_group_layout506 = device50.createBindGroupLayout({ 
        label: "bind_group_layout506",
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
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    buffer104.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout600]
    });
    buffer604.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout5016 = device50.createPipelineLayout({ 
        label: "pipeline_layout5016",
        bindGroupLayouts: [bind_group_layout504]
    });
    buffer509.destroy()
    
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const bind_group_layout507 = device50.createBindGroupLayout({ 
        label: "bind_group_layout507",
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
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    buffer105.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const bind_group_layout508 = device50.createBindGroupLayout({ 
        label: "bind_group_layout508",
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
    
    const pipeline_layout5018 = device50.createPipelineLayout({ 
        label: "pipeline_layout5018",
        bindGroupLayouts: [bind_group_layout506]
    });
    
    buffer5010.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const pipeline_layout5019 = device50.createPipelineLayout({ 
        label: "pipeline_layout5019",
        bindGroupLayouts: [bind_group_layout502]
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const pipeline_layout5020 = device50.createPipelineLayout({ 
        label: "pipeline_layout5020",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout5021 = device50.createPipelineLayout({ 
        label: "pipeline_layout5021",
        bindGroupLayouts: [bind_group_layout502]
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    
    buffer506.destroy()
    
    const pipeline_layout5022 = device50.createPipelineLayout({ 
        label: "pipeline_layout5022",
        bindGroupLayouts: [bind_group_layout507]
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout5023 = device50.createPipelineLayout({ 
        label: "pipeline_layout5023",
        bindGroupLayouts: [bind_group_layout504]
    });
    
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    
    const pipeline_layout5024 = device50.createPipelineLayout({ 
        label: "pipeline_layout5024",
        bindGroupLayouts: [bind_group_layout503]
    });
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout5025 = device50.createPipelineLayout({ 
        label: "pipeline_layout5025",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    
    buffer204.destroy()
    
    
    
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const pipeline_layout5026 = device50.createPipelineLayout({ 
        label: "pipeline_layout5026",
        bindGroupLayouts: [bind_group_layout503]
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout105]
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const pipeline_layout5027 = device50.createPipelineLayout({ 
        label: "pipeline_layout5027",
        bindGroupLayouts: [bind_group_layout506]
    });
    
    buffer205.destroy()
    const pipeline_layout5028 = device50.createPipelineLayout({ 
        label: "pipeline_layout5028",
        bindGroupLayouts: [bind_group_layout505]
    });
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    const pipeline_layout5029 = device50.createPipelineLayout({ 
        label: "pipeline_layout5029",
        bindGroupLayouts: [bind_group_layout508]
    });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout603]
    });
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const pipeline_layout5030 = device50.createPipelineLayout({ 
        label: "pipeline_layout5030",
        bindGroupLayouts: [bind_group_layout503]
    });
    
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer106.destroy()
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    buffer5011.destroy()
    
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout105]
    });
    const pipeline_layout5031 = device50.createPipelineLayout({ 
        label: "pipeline_layout5031",
        bindGroupLayouts: [bind_group_layout502]
    });
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout5032 = device50.createPipelineLayout({ 
        label: "pipeline_layout5032",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    const pipeline_layout5033 = device50.createPipelineLayout({ 
        label: "pipeline_layout5033",
        bindGroupLayouts: [bind_group_layout504]
    });
    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
}