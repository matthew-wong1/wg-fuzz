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
    
    
    
    
    const array0 = new Float32Array([-0.75, 0.0, 0.0, 1.0, -0.5, -0.25, -0.25, -1.0, 0.25, -0.25, 1.0, -0.5, -0.75, 0.0, -1.0, 0.0, -0.25, 0.75, 1.0, 0.5, 0.5, 0.75, 1.0, 0.5, 1.0, -0.25, 0.75, 1.0, 0.5, 0.25, 0.0, -0.5, 0.25, -0.25, 0.5, 0.75, 0.0, 0.75, 0.75, 0.75, 0.75, -1.0, 0.75, 0.0, 0.25, 0.75, -1.0, 0.25, 0.5, 0.0, 0.25, 0.75, 1.0, 0.0, 0.0, -0.5, 1.0, -0.25, 0.75, 0.25, 0.5, 1.0, 0.75, 0.75, 0.0, -0.5, -1.0, 0.75, 0.0, -1.0, -0.75, 0.75, -1.0, 0.0, 0.5, 0.0, 0.75, 0.0, 0.0, 0.0, -0.75, 0.0, 0.25, -0.5, -0.25, -0.5, 0.25, -0.25, 0.5, -0.5, 0.25, -0.25, 1.0, -0.5, 0.0, 1.0, -1.0, -0.75, -0.75, 0.0, ]);
    
    
    
    const array1 = new Float32Array([0.25, -0.25, 1.0, 0.5, -1.0, 1.0, -1.0, 0.0, 0.75, -0.25, -1.0, 0.75, 1.0, 0.0, 0.5, 1.0, 0.0, 0.75, 0.5, 0.75, -0.25, 0.5, 1.0, 0.75, -0.75, -0.75, -0.75, -0.75, 1.0, 0.75, -0.25, -0.75, -0.25, 0.0, 0.5, 1.0, 0.25, 0.5, -1.0, 1.0, 0.0, -0.5, -0.75, 0.0, -0.25, 0.75, -0.25, 0.25, -0.75, -1.0, 0.0, -1.0, 0.75, 1.0, 0.5, -0.75, 1.0, 1.0, -1.0, -0.25, -0.5, 0.25, -1.0, 0.75, 0.75, -0.75, -0.25, -0.75, -0.5, -0.5, -0.75, -0.25, -0.25, -0.25, -0.25, -1.0, 0.75, -0.5, 0.75, -0.75, 0.75, -0.5, 1.0, 0.75, 0.0, -1.0, 1.0, -0.25, 0.25, -0.5, 0.0, 0.5, -0.25, -0.5, -1.0, 1.0, 0.5, 0.25, 1.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.destroy();
    
    
    
    
    
    const array2 = new Float32Array([-0.25, -0.75, -0.75, -0.25, -1.0, -0.5, -1.0, -1.0, -0.75, 0.5, -0.5, -0.5, 1.0, 1.0, -0.5, 0.25, 0.5, 1.0, -0.5, 0.5, -0.5, -1.0, 0.5, -0.25, 0.5, 0.0, -0.75, -0.5, 0.75, -0.75, -0.5, -0.5, -0.75, 0.5, 0.25, 1.0, 0.75, -0.25, -0.25, -0.25, 1.0, 0.75, -0.75, 1.0, 0.75, 0.0, -0.25, -0.25, -0.5, 0.0, 0.75, -0.75, -0.5, 0.0, -1.0, 0.25, -0.75, 0.0, 0.75, -0.5, -0.25, -1.0, 1.0, -0.5, 0.5, 0.75, 0.0, 0.75, 0.75, 0.5, 0.75, -0.25, 0.5, 0.0, 0.5, 0.25, -0.5, 0.25, 0.75, 1.0, 0.75, -0.5, 0.0, 0.5, -0.75, 0.0, 1.0, 0.5, 1.0, 0.5, -0.25, 0.5, 0.25, 0.0, 1.0, -0.25, 1.0, 1.0, 1.0, -0.75, ]);
    
    
    const array3 = new Float32Array([-0.5, -0.75, 0.75, 1.0, 1.0, -0.5, 0.5, 0.75, 0.5, 0.75, -1.0, 0.25, -0.5, 0.25, -1.0, -0.5, 0.5, 0.25, 1.0, -0.75, 0.25, 0.75, 0.75, 0.0, -0.5, -0.5, -0.25, 1.0, 0.0, -0.75, -0.25, 0.75, 0.75, -0.75, 0.25, -1.0, 0.75, 0.75, 0.5, -0.75, 0.75, 0.25, -0.5, 0.75, -1.0, -0.25, 1.0, -0.5, -1.0, 0.0, 0.75, 0.0, 0.0, -1.0, -0.5, 0.0, 0.75, 0.75, 0.5, -0.75, -1.0, -1.0, -0.5, -1.0, -1.0, 0.75, -1.0, -0.75, -0.75, 0.5, -0.75, -0.5, 0.5, 0.75, 0.0, -0.25, 0.5, 0.5, -0.25, 0.0, 0.5, 0.0, 1.0, -1.0, -0.75, 0.5, -1.0, 1.0, -0.5, 0.5, -0.25, 0.75, 0.5, -1.0, 0.0, 0.75, 0.25, -1.0, 0.75, -0.5, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    
    buffer201.destroy()
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    
    device20.pushErrorScope("validation");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
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
    buffer200.destroy()
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.pushErrorScope("out-of-memory");
    command_encoder300.insertDebugMarker("mymarker");
    buffer202.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.insertDebugMarker("mymarker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("out-of-memory");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.pushErrorScope("validation");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
    
    render_bundle_encoder200.popDebugGroup();
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    command_encoder400.insertDebugMarker("mymarker");
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    device50.destroy();
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder200.insertDebugMarker("mymarker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    buffer203.destroy()
    buffer204.destroy()
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder200.popDebugGroup()
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    device30.pushErrorScope("out-of-memory");
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder401.insertDebugMarker("mymarker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    command_encoder402.insertDebugMarker("mymarker");
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout205]
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    
    command_encoder600.insertDebugMarker("mymarker");
    
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    command_encoder402.insertDebugMarker("mymarker");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder200.popDebugGroup();
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder401.popDebugGroup();
    
    
    const bind_group_layout207 = device20.createBindGroupLayout({ 
        label: "bind_group_layout207",
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
    render_bundle_encoder302.popDebugGroup();
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder202.popDebugGroup();
    device20.pushErrorScope("out-of-memory");
    command_encoder600.insertDebugMarker("mymarker");
    buffer400.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device70.destroy();
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    render_bundle_encoder400.popDebugGroup();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer300.destroy()
    
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    command_encoder201.insertDebugMarker("mymarker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout200]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    render_bundle_encoder201.popDebugGroup();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    
    
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder300.popDebugGroup();
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout2019 = device20.createPipelineLayout({ 
        label: "pipeline_layout2019",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    command_encoder600.clearBuffer(buffer600);
    
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer301.destroy()
    
    
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    device60.pushErrorScope("validation");
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const pipeline_layout2020 = device20.createPipelineLayout({ 
        label: "pipeline_layout2020",
        bindGroupLayouts: [bind_group_layout205]
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const pipeline_layout2021 = device20.createPipelineLayout({ 
        label: "pipeline_layout2021",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout303]
    });
    device80.pushErrorScope("validation");
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array4 = new Float32Array([0.5, -1.0, 0.75, 0.0, -0.5, 0.25, 1.0, 1.0, 1.0, 0.25, -0.25, 0.25, 0.5, -1.0, 0.25, 0.75, 1.0, 0.5, 0.0, -0.75, 0.5, 0.5, 0.75, 0.25, -0.75, 1.0, 0.25, -0.25, 1.0, 0.5, 0.5, -1.0, -0.25, 0.75, -1.0, -1.0, 1.0, 0.75, 0.25, 1.0, -0.25, -0.25, 0.75, -1.0, 1.0, 0.5, 1.0, 1.0, -1.0, 0.0, 0.25, -0.75, 0.75, -0.75, -0.25, 0.5, -0.75, -0.75, -0.75, -0.75, 0.25, -0.75, -0.5, 1.0, -0.75, 0.0, -0.25, -0.5, 1.0, 0.75, 0.25, -0.75, 0.25, -0.25, 0.5, -0.5, -0.25, 0.5, -1.0, 1.0, 1.0, 0.5, 0.0, 0.25, -0.5, 0.75, 0.75, 0.75, -1.0, 1.0, -0.75, 0.0, -0.25, 0.25, -0.75, -0.5, -1.0, -0.5, 0.0, -1.0, ]);
    command_encoder203.pushDebugGroup("mygroupmarker")
    command_encoder201.insertDebugMarker("mymarker");
    
    
    const array5 = new Float32Array([-0.5, 1.0, -1.0, -0.25, 0.75, 1.0, 0.5, 1.0, 0.75, 0.0, -1.0, -0.25, 1.0, -0.5, 0.25, 0.75, 1.0, -0.25, -0.25, 0.0, 0.25, 0.25, -0.5, -0.5, 0.25, 0.5, 0.0, 0.25, 0.75, -1.0, 0.25, 0.75, 0.25, 1.0, 0.5, 0.25, 0.25, 0.0, 0.75, -0.5, 1.0, 0.5, -1.0, 0.0, 0.25, 0.5, 1.0, 0.75, -0.5, 0.25, -0.25, -0.5, -1.0, 0.0, -0.5, 0.25, 0.75, -1.0, -0.5, -0.75, -0.25, 0.0, 0.5, 1.0, -0.75, -0.75, 0.25, -0.5, -0.75, -0.75, -0.5, 0.75, -0.5, 0.75, -0.5, 0.5, -0.75, 0.75, -0.25, 0.0, 0.25, 0.75, -1.0, -0.75, 0.25, 0.0, 0.5, -0.25, -0.5, -0.5, 0.0, 0.5, -0.75, 0.75, -0.5, -0.75, 1.0, 0.75, -0.25, -1.0, ]);
    
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder302.pushDebugGroup("mygroupmarker")
    command_encoder201.pushDebugGroup("mygroupmarker")
    command_encoder203.popDebugGroup()
    device30.pushErrorScope("internal");
    command_encoder201.insertDebugMarker("mymarker");
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer600.destroy()
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    command_encoder203.insertDebugMarker("mymarker");
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder203.pushDebugGroup("mygroupmarker")
    
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
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder203.popDebugGroup()
    const pipeline_layout2022 = device20.createPipelineLayout({ 
        label: "pipeline_layout2022",
        bindGroupLayouts: [bind_group_layout203]
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
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
    const query308 = device30.createQuerySet({
        label: "query308",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.popDebugGroup()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    buffer900.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder302.clearBuffer(buffer302);
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout304]
    });
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder901.insertDebugMarker("mymarker");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.pushErrorScope("out-of-memory");
    
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const query309 = device30.createQuerySet({
        label: "query309",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder601.insertDebugMarker("mymarker");
    render_bundle_encoder301.popDebugGroup();
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    command_encoder203.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder203.popDebugGroup()
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    command_encoder301.clearBuffer(buffer302);
    const command_encoder903 = device90.createCommandEncoder({ label: "command_encoder903" });
    command_encoder902.pushDebugGroup("mygroupmarker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder902.insertDebugMarker("mymarker");
    
    
    buffer401.destroy()
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
    const command_encoder904 = device90.createCommandEncoder({ label: "command_encoder904" });
    buffer302.destroy()
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout302]
    });
    command_encoder901.insertDebugMarker("mymarker");
    
    device90.pushErrorScope("validation");
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout304]
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const pipeline_layout2023 = device20.createPipelineLayout({ 
        label: "pipeline_layout2023",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder902.popDebugGroup()
    command_encoder601.clearBuffer(buffer601);
    const pipeline_layout2024 = device20.createPipelineLayout({ 
        label: "pipeline_layout2024",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout2025 = device20.createPipelineLayout({ 
        label: "pipeline_layout2025",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder903.insertDebugMarker("mymarker");
    const bind_group_layout208 = device20.createBindGroupLayout({ 
        label: "bind_group_layout208",
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
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder302.pushDebugGroup("mygroupmarker")
    command_encoder302.insertDebugMarker("mymarker");
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    command_encoder902.pushDebugGroup("mygroupmarker")
    
    buffer800.destroy()
    const bind_group_layout209 = device20.createBindGroupLayout({ 
        label: "bind_group_layout209",
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
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const pipeline_layout2026 = device20.createPipelineLayout({ 
        label: "pipeline_layout2026",
        bindGroupLayouts: [bind_group_layout204]
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    buffer402.destroy()
    command_encoder901.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout2027 = device20.createPipelineLayout({ 
        label: "pipeline_layout2027",
        bindGroupLayouts: [bind_group_layout209]
    });
    render_bundle_encoder600.popDebugGroup();
    
    buffer205.destroy()
    
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    buffer303.destroy()
    
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout2028 = device20.createPipelineLayout({ 
        label: "pipeline_layout2028",
        bindGroupLayouts: [bind_group_layout207]
    });
    command_encoder302.insertDebugMarker("mymarker");
    
    command_encoder302.popDebugGroup()
    
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder601.clearBuffer(buffer601);
    const compute_pass_encoder9040 = command_encoder904.beginComputePass({ label: "compute_pass_encoder9040" });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout2029 = device20.createPipelineLayout({ 
        label: "pipeline_layout2029",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    command_encoder900.insertDebugMarker("mymarker");
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout305]
    });
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    render_bundle_encoder201.popDebugGroup();
    const compute_pass_encoder9020 = command_encoder902.beginComputePass({ label: "compute_pass_encoder9020" });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    command_encoder301.popDebugGroup()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder901.popDebugGroup()
}