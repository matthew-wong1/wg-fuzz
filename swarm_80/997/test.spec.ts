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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
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
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query200.destroy()
    
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.destroy();
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    query300.destroy()
    device30.pushErrorScope("validation");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    buffer300.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer301.destroy()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    query304.destroy()
    query304.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    query300.destroy()
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
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
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device30.destroy();
    render_bundle_encoder601.insertDebugMarker("marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    buffer500.destroy()
    
    
    query500.destroy()
    device50.pushErrorScope("validation");
    render_bundle_encoder601.insertDebugMarker("marker");
    
    render_bundle_encoder602.insertDebugMarker("marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    device60.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device70.destroy();
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device10.destroy();
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    query500.destroy()
    
    
    buffer502.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query500.destroy()
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    query500.destroy()
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    render_bundle_encoder501.insertDebugMarker("marker");
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    query500.destroy()
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device90.pushErrorScope("out-of-memory");
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile(__dirname + '/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const sampler506 = device50.createSampler( { label: "sampler506" } );
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer800.destroy()
    device80.pushErrorScope("internal");
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile(__dirname + '/shader_module508.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    query501.destroy()
    
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout501,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    buffer504.destroy()
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout500,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    
    
    
    device50.destroy();
    
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    query901.destroy()
    
    
    query902.destroy()
    device80.destroy();
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    query901.destroy()
    
    
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query902.destroy()
    buffer901.destroy()
    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query902.destroy()
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
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
    const query904 = device90.createQuerySet({
        label: "query904",
        type: "occlusion",
        count: 32,
    });
    query901.destroy()
    
    
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    
    
    
    const buffer904 = device90.createBuffer({
        label: "buffer904",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query900.destroy()
    buffer902.destroy()
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    const compute_pipeline900 = device90.createComputePipeline({
        label: "compute_pipeline900",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const buffer905 = device90.createBuffer({
        label: "buffer905",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query901.destroy()
    buffer904.destroy()
    render_bundle_encoder900.insertDebugMarker("marker");
    const compute_pipeline901 = device90.createComputePipeline({
        label: "compute_pipeline901",
        layout: pipeline_layout900,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    
    const query905 = device90.createQuerySet({
        label: "query905",
        type: "occlusion",
        count: 32,
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
    buffer905.destroy()
    render_bundle_encoder900.insertDebugMarker("marker");
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile(__dirname + '/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    
    const compute_pipeline902 = device90.createComputePipeline({
        label: "compute_pipeline902",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    query905.destroy()
    const buffer906 = device90.createBuffer({
        label: "buffer906",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query900.destroy()
    
    const query906 = device90.createQuerySet({
        label: "query906",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    query905.destroy()
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline903 = device90.createComputePipeline({
        label: "compute_pipeline903",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    buffer906.destroy()
    query902.destroy()
    const compute_pipeline904 = device90.createComputePipeline({
        label: "compute_pipeline904",
        layout: pipeline_layout900,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout902]
    });
    const query907 = device90.createQuerySet({
        label: "query907",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline905 = device90.createComputePipeline({
        label: "compute_pipeline905",
        layout: pipeline_layout901,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline906 = device90.createComputePipeline({
        label: "compute_pipeline906",
        layout: pipeline_layout901,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const bind_group_layout903 = device90.createBindGroupLayout({ 
        label: "bind_group_layout903",
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
    query902.destroy()
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout900]
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    query904.destroy()
    query907.destroy()
    buffer900.destroy()
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    buffer903.destroy()
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query905.destroy()
    query901.destroy()
    query901.destroy()
    const bind_group_layout904 = device90.createBindGroupLayout({ 
        label: "bind_group_layout904",
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
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const pipeline_layout903 = device90.createPipelineLayout({ 
        label: "pipeline_layout903",
        bindGroupLayouts: [bind_group_layout902]
    });
    const bind_group_layout905 = device90.createBindGroupLayout({ 
        label: "bind_group_layout905",
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
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    query900.destroy()
    query906.destroy()
    const compute_pipeline907 = device90.createComputePipeline({
        label: "compute_pipeline907",
        layout: pipeline_layout903,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout904 = device90.createPipelineLayout({ 
        label: "pipeline_layout904",
        bindGroupLayouts: [bind_group_layout900]
    });
    const compute_pipeline908 = device90.createComputePipeline({
        label: "compute_pipeline908",
        layout: pipeline_layout904,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const compute_pipeline909 = device90.createComputePipeline({
        label: "compute_pipeline909",
        layout: pipeline_layout900,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    query904.destroy()
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline9010 = device90.createComputePipeline({
        label: "compute_pipeline9010",
        layout: pipeline_layout902,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const compute_pipeline9011 = device90.createComputePipeline({
        label: "compute_pipeline9011",
        layout: pipeline_layout901,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    const pipeline_layout905 = device90.createPipelineLayout({ 
        label: "pipeline_layout905",
        bindGroupLayouts: [bind_group_layout905]
    });
    const pipeline_layout906 = device90.createPipelineLayout({ 
        label: "pipeline_layout906",
        bindGroupLayouts: [bind_group_layout900]
    });
    const compute_pipeline9012 = device90.createComputePipeline({
        label: "compute_pipeline9012",
        layout: pipeline_layout900,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const compute_pipeline9013 = device90.createComputePipeline({
        label: "compute_pipeline9013",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pipeline9014 = device90.createComputePipeline({
        label: "compute_pipeline9014",
        layout: pipeline_layout904,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const pipeline_layout907 = device90.createPipelineLayout({ 
        label: "pipeline_layout907",
        bindGroupLayouts: [bind_group_layout902]
    });
    query904.destroy()
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
    query906.destroy()
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline9015 = device90.createComputePipeline({
        label: "compute_pipeline9015",
        layout: pipeline_layout901,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout908 = device90.createPipelineLayout({ 
        label: "pipeline_layout908",
        bindGroupLayouts: [bind_group_layout905]
    });
    const compute_pipeline9016 = device90.createComputePipeline({
        label: "compute_pipeline9016",
        layout: pipeline_layout902,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    device120.pushErrorScope("validation");
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline9017 = device90.createComputePipeline({
        label: "compute_pipeline9017",
        layout: pipeline_layout905,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const compute_pipeline9018 = device90.createComputePipeline({
        label: "compute_pipeline9018",
        layout: pipeline_layout903,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const compute_pipeline9019 = device90.createComputePipeline({
        label: "compute_pipeline9019",
        layout: pipeline_layout905,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    const compute_pipeline9020 = device90.createComputePipeline({
        label: "compute_pipeline9020",
        layout: pipeline_layout901,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    
    const compute_pipeline9021 = device90.createComputePipeline({
        label: "compute_pipeline9021",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const compute_pipeline9022 = device90.createComputePipeline({
        label: "compute_pipeline9022",
        layout: pipeline_layout905,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const compute_pipeline9023 = device90.createComputePipeline({
        label: "compute_pipeline9023",
        layout: pipeline_layout903,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const compute_pipeline9024 = device90.createComputePipeline({
        label: "compute_pipeline9024",
        layout: pipeline_layout907,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline9025 = device90.createComputePipeline({
        label: "compute_pipeline9025",
        layout: pipeline_layout906,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pipeline9026 = device90.createComputePipeline({
        label: "compute_pipeline9026",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline9027 = device90.createComputePipeline({
        label: "compute_pipeline9027",
        layout: pipeline_layout902,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    query1200.destroy()
    const bind_group_layout906 = device90.createBindGroupLayout({ 
        label: "bind_group_layout906",
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
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline9028 = device90.createComputePipeline({
        label: "compute_pipeline9028",
        layout: pipeline_layout906,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline9029 = device90.createComputePipeline({
        label: "compute_pipeline9029",
        layout: pipeline_layout902,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout909 = device90.createPipelineLayout({ 
        label: "pipeline_layout909",
        bindGroupLayouts: [bind_group_layout903]
    });
    
    const compute_pipeline9030 = device90.createComputePipeline({
        label: "compute_pipeline9030",
        layout: pipeline_layout907,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    
    query907.destroy()
    const pipeline_layout9010 = device90.createPipelineLayout({ 
        label: "pipeline_layout9010",
        bindGroupLayouts: [bind_group_layout902]
    });
    const compute_pipeline9031 = device90.createComputePipeline({
        label: "compute_pipeline9031",
        layout: pipeline_layout906,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    const compute_pipeline9032 = device90.createComputePipeline({
        label: "compute_pipeline9032",
        layout: pipeline_layout901,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const pipeline_layout9011 = device90.createPipelineLayout({ 
        label: "pipeline_layout9011",
        bindGroupLayouts: [bind_group_layout902]
    });
    const pipeline_layout9012 = device90.createPipelineLayout({ 
        label: "pipeline_layout9012",
        bindGroupLayouts: [bind_group_layout905]
    });
    const compute_pipeline9033 = device90.createComputePipeline({
        label: "compute_pipeline9033",
        layout: pipeline_layout9010,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pipeline9034 = device90.createComputePipeline({
        label: "compute_pipeline9034",
        layout: pipeline_layout907,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const compute_pipeline9035 = device90.createComputePipeline({
        label: "compute_pipeline9035",
        layout: pipeline_layout9010,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline9036 = device90.createComputePipeline({
        label: "compute_pipeline9036",
        layout: pipeline_layout9011,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    const compute_pipeline9037 = device90.createComputePipeline({
        label: "compute_pipeline9037",
        layout: pipeline_layout901,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    query900.destroy()
    const compute_pipeline9038 = device90.createComputePipeline({
        label: "compute_pipeline9038",
        layout: pipeline_layout9012,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pipeline9039 = device90.createComputePipeline({
        label: "compute_pipeline9039",
        layout: pipeline_layout9010,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const compute_pipeline9040 = device90.createComputePipeline({
        label: "compute_pipeline9040",
        layout: pipeline_layout9010,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const compute_pipeline9041 = device90.createComputePipeline({
        label: "compute_pipeline9041",
        layout: pipeline_layout906,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    const compute_pipeline9042 = device90.createComputePipeline({
        label: "compute_pipeline9042",
        layout: pipeline_layout9011,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    const compute_pipeline9043 = device90.createComputePipeline({
        label: "compute_pipeline9043",
        layout: pipeline_layout903,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const compute_pipeline9044 = device90.createComputePipeline({
        label: "compute_pipeline9044",
        layout: pipeline_layout9011,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pipeline9045 = device90.createComputePipeline({
        label: "compute_pipeline9045",
        layout: pipeline_layout9011,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const sampler1401 = device140.createSampler( { label: "sampler1401" } );
    const compute_pipeline9046 = device90.createComputePipeline({
        label: "compute_pipeline9046",
        layout: pipeline_layout903,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const pipeline_layout9013 = device90.createPipelineLayout({ 
        label: "pipeline_layout9013",
        bindGroupLayouts: [bind_group_layout902]
    });
    device100.destroy();
    const compute_pipeline9047 = device90.createComputePipeline({
        label: "compute_pipeline9047",
        layout: pipeline_layout9012,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    query900.destroy()
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    const compute_pipeline9048 = device90.createComputePipeline({
        label: "compute_pipeline9048",
        layout: pipeline_layout907,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const compute_pipeline9049 = device90.createComputePipeline({
        label: "compute_pipeline9049",
        layout: pipeline_layout906,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const compute_pipeline9050 = device90.createComputePipeline({
        label: "compute_pipeline9050",
        layout: pipeline_layout900,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    query905.destroy()
    const compute_pipeline9051 = device90.createComputePipeline({
        label: "compute_pipeline9051",
        layout: pipeline_layout909,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const compute_pipeline9052 = device90.createComputePipeline({
        label: "compute_pipeline9052",
        layout: pipeline_layout9011,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const compute_pipeline9053 = device90.createComputePipeline({
        label: "compute_pipeline9053",
        layout: pipeline_layout9013,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1200.insertDebugMarker("marker");
    query906.destroy()
    const render_bundle_encoder1202 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline9054 = device90.createComputePipeline({
        label: "compute_pipeline9054",
        layout: pipeline_layout909,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    const compute_pipeline9055 = device90.createComputePipeline({
        label: "compute_pipeline9055",
        layout: pipeline_layout904,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    const compute_pipeline9056 = device90.createComputePipeline({
        label: "compute_pipeline9056",
        layout: pipeline_layout9012,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    const pipeline_layout9014 = device90.createPipelineLayout({ 
        label: "pipeline_layout9014",
        bindGroupLayouts: [bind_group_layout905]
    });
    const compute_pipeline9057 = device90.createComputePipeline({
        label: "compute_pipeline9057",
        layout: pipeline_layout9011,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const pipeline_layout9015 = device90.createPipelineLayout({ 
        label: "pipeline_layout9015",
        bindGroupLayouts: [bind_group_layout902]
    });
    query900.destroy()
    const compute_pipeline9058 = device90.createComputePipeline({
        label: "compute_pipeline9058",
        layout: pipeline_layout904,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const pipeline_layout9016 = device90.createPipelineLayout({ 
        label: "pipeline_layout9016",
        bindGroupLayouts: [bind_group_layout904]
    });
    
    
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline9059 = device90.createComputePipeline({
        label: "compute_pipeline9059",
        layout: pipeline_layout9015,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout9017 = device90.createPipelineLayout({ 
        label: "pipeline_layout9017",
        bindGroupLayouts: [bind_group_layout901]
    });
    const compute_pipeline9060 = device90.createComputePipeline({
        label: "compute_pipeline9060",
        layout: pipeline_layout9014,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    device140.destroy();
    const compute_pipeline9061 = device90.createComputePipeline({
        label: "compute_pipeline9061",
        layout: pipeline_layout903,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pipeline9062 = device90.createComputePipeline({
        label: "compute_pipeline9062",
        layout: pipeline_layout904,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const compute_pipeline9063 = device90.createComputePipeline({
        label: "compute_pipeline9063",
        layout: pipeline_layout909,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const compute_pipeline9064 = device90.createComputePipeline({
        label: "compute_pipeline9064",
        layout: pipeline_layout901,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pipeline9065 = device90.createComputePipeline({
        label: "compute_pipeline9065",
        layout: pipeline_layout903,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pipeline9066 = device90.createComputePipeline({
        label: "compute_pipeline9066",
        layout: pipeline_layout902,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const compute_pipeline9067 = device90.createComputePipeline({
        label: "compute_pipeline9067",
        layout: pipeline_layout904,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const compute_pipeline9068 = device90.createComputePipeline({
        label: "compute_pipeline9068",
        layout: pipeline_layout907,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    buffer1201.destroy()
    const compute_pipeline9069 = device90.createComputePipeline({
        label: "compute_pipeline9069",
        layout: pipeline_layout905,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const compute_pipeline9070 = device90.createComputePipeline({
        label: "compute_pipeline9070",
        layout: pipeline_layout9015,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pipeline9071 = device90.createComputePipeline({
        label: "compute_pipeline9071",
        layout: pipeline_layout9011,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pipeline9072 = device90.createComputePipeline({
        label: "compute_pipeline9072",
        layout: pipeline_layout9014,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const bind_group_layout907 = device90.createBindGroupLayout({ 
        label: "bind_group_layout907",
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
    const compute_pipeline9073 = device90.createComputePipeline({
        label: "compute_pipeline9073",
        layout: pipeline_layout9015,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    query901.destroy()
    const compute_pipeline9074 = device90.createComputePipeline({
        label: "compute_pipeline9074",
        layout: pipeline_layout9015,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const compute_pipeline9075 = device90.createComputePipeline({
        label: "compute_pipeline9075",
        layout: pipeline_layout9015,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline9076 = device90.createComputePipeline({
        label: "compute_pipeline9076",
        layout: pipeline_layout909,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const compute_pipeline9077 = device90.createComputePipeline({
        label: "compute_pipeline9077",
        layout: pipeline_layout9016,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pipeline9078 = device90.createComputePipeline({
        label: "compute_pipeline9078",
        layout: pipeline_layout9017,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pipeline9079 = device90.createComputePipeline({
        label: "compute_pipeline9079",
        layout: pipeline_layout906,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline9080 = device90.createComputePipeline({
        label: "compute_pipeline9080",
        layout: pipeline_layout9014,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const compute_pipeline9081 = device90.createComputePipeline({
        label: "compute_pipeline9081",
        layout: pipeline_layout908,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    const pipeline_layout9018 = device90.createPipelineLayout({ 
        label: "pipeline_layout9018",
        bindGroupLayouts: [bind_group_layout901]
    });
    const compute_pipeline9082 = device90.createComputePipeline({
        label: "compute_pipeline9082",
        layout: pipeline_layout9017,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    query1200.destroy()
    query902.destroy()
    render_bundle_encoder1200.insertDebugMarker("marker");
    const compute_pipeline9083 = device90.createComputePipeline({
        label: "compute_pipeline9083",
        layout: pipeline_layout903,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    query902.destroy()
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline9084 = device90.createComputePipeline({
        label: "compute_pipeline9084",
        layout: pipeline_layout902,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    buffer1200.destroy()
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}