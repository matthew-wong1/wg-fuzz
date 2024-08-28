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
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device00.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device20.pushErrorScope("internal");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    command_encoder301.insertDebugMarker("mymarker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    command_encoder302.insertDebugMarker("mymarker");
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder302.insertDebugMarker("mymarker");
    
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
    command_encoder301.insertDebugMarker("mymarker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device30.pushErrorScope("validation");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.destroy();
    command_encoder302.popDebugGroup()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    command_encoder300.popDebugGroup()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder302.pushDebugGroup("mygroupmarker")
    const array0 = new Float32Array([-0.5, 1.0, 0.5, -0.25, 0.75, 0.25, -0.25, 1.0, 1.0, -0.5, 1.0, 0.75, 0.75, 0.0, 0.5, 0.5, 1.0, 0.0, -0.5, 0.25, 0.75, 0.25, 1.0, -0.5, 0.0, -1.0, -0.5, 0.0, 0.25, -0.25, 1.0, 0.5, 0.25, 0.5, 1.0, 1.0, -0.25, 1.0, -0.25, 0.75, 0.75, 0.25, -0.75, 0.0, 0.75, -0.5, 0.25, -1.0, -0.75, 0.25, -1.0, -0.75, -0.75, -0.5, -0.75, -0.5, -0.25, -1.0, 0.75, -0.25, 0.5, 0.5, -0.25, -0.25, -0.75, -0.75, 0.0, 0.25, -0.75, -0.25, 1.0, 0.75, -1.0, 0.5, 0.0, -1.0, -0.5, 0.75, -0.5, -1.0, 0.0, 0.75, -1.0, -1.0, 1.0, 0.75, 0.0, 0.0, 0.5, 1.0, 0.75, -0.75, 0.75, 0.75, -0.5, 0.5, -0.25, 0.25, -1.0, -1.0, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    command_encoder300.insertDebugMarker("mymarker");
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_buffer300 = command_encoder300.finish();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    device50.pushErrorScope("out-of-memory");
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    compute_pass_encoder3020.insertDebugMarker("marker")
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device10.pushErrorScope("internal");
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device70.pushErrorScope("validation");
    
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
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
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device30.queue.submit([command_buffer300, ]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device30.pushErrorScope("out-of-memory");
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder303.insertDebugMarker("mymarker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    command_encoder303.insertDebugMarker("mymarker");
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
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
    
    
    const array1 = new Float32Array([0.25, -0.5, -0.5, -0.5, -1.0, -1.0, -0.75, -0.5, -1.0, -0.75, 1.0, -0.25, 0.5, 0.75, 0.5, -1.0, -0.75, 0.0, -0.75, 0.75, 0.0, 0.75, 0.5, 0.5, -1.0, -1.0, -0.25, -0.75, 0.75, -0.75, 0.0, -0.25, -0.75, 0.5, 0.0, 1.0, -1.0, 0.0, -0.25, -0.75, 0.5, -0.25, 0.25, 0.5, 0.75, -0.25, 0.25, -0.75, 0.5, 0.75, 1.0, -0.75, 0.75, -1.0, -1.0, -0.25, -1.0, 0.25, 0.25, 0.0, 0.5, 1.0, 0.25, -0.25, -0.75, 0.75, -0.75, 0.75, -0.75, 0.75, -0.25, 0.25, 0.25, 1.0, 0.0, -1.0, -0.25, -0.5, 1.0, -0.25, -1.0, -1.0, -0.5, 0.0, -1.0, 0.25, 0.75, -1.0, -1.0, 0.5, -1.0, -0.25, -1.0, 0.0, 0.5, 0.5, -0.75, -0.25, 0.75, 0.5, ]);
    device70.pushErrorScope("validation");
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder300.popDebugGroup();
    query301.destroy()
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
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query300.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    
    query300.destroy()
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device80.destroy();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device10.destroy();
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.popDebugGroup();
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    query600.destroy()
    
    
    
    
    
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout303]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout303]
    });
    device60.destroy();
    query301.destroy()
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    
    command_encoder501.insertDebugMarker("mymarker");
    render_bundle_encoder700.popDebugGroup();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    const command_buffer501 = command_encoder501.finish();
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    device70.pushErrorScope("out-of-memory");
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const sampler705 = device70.createSampler( { label: "sampler705" } );
    device50.queue.submit([command_buffer501, ]);
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    
    const command_buffer500 = command_encoder500.finish();
    
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
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    command_encoder303.pushDebugGroup("mygroupmarker")
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    
    
    compute_pass_encoder3040.insertDebugMarker("marker")
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("internal");
    render_bundle_encoder701.popDebugGroup();
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    
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
    render_bundle_encoder302.popDebugGroup();
    
    
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    query701.destroy()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder502.insertDebugMarker("mymarker");
    query500.destroy()
    query701.destroy()
    device50.queue.submit([command_buffer500, ]);
    const array2 = new Float32Array([-1.0, 0.5, -0.5, 1.0, 0.5, 0.75, -0.5, 0.0, 0.25, 1.0, 0.5, -0.25, -1.0, -0.5, 0.25, 0.75, 0.0, 0.0, -0.75, -0.5, 0.75, -0.25, 0.25, -0.75, -0.75, 0.25, 1.0, -0.25, 0.75, 0.5, -0.25, 0.5, 0.75, -1.0, 0.75, 0.75, -0.75, 1.0, 0.0, -0.75, -0.75, 0.0, 0.0, 1.0, 1.0, -0.25, -0.75, -1.0, 1.0, 0.25, 0.5, -1.0, 0.25, -0.25, -0.75, 0.5, 0.5, -0.75, -1.0, 0.5, 0.0, 0.5, 0.25, 0.75, -1.0, 0.5, -0.25, -1.0, 1.0, 0.0, 1.0, -1.0, 0.25, -0.75, 0.25, 1.0, -0.25, -1.0, 0.25, -0.25, 0.5, 0.5, -0.75, 0.25, 0.25, 0.0, 0.25, 0.5, 0.75, 0.75, -1.0, -0.5, -0.25, -1.0, 0.25, -0.25, 0.0, -0.75, 0.0, 1.0, ]);
    
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
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
    
    command_encoder700.pushDebugGroup("mygroupmarker")
    
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    query501.destroy()
    
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    query303.destroy()
    command_encoder303.popDebugGroup()
    
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    command_encoder700.popDebugGroup()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    const array3 = new Float32Array([0.5, -0.5, 0.0, 0.5, 0.0, -0.25, 0.0, -0.25, 0.75, 0.0, 0.5, -0.75, -1.0, -0.5, -0.25, -0.75, 0.25, 0.25, -0.25, -1.0, 0.0, 0.0, -0.75, 0.75, -0.75, 1.0, -0.75, -0.75, 0.0, 0.25, 0.0, -0.25, 0.75, 0.0, 0.0, -0.5, 1.0, -0.5, 0.0, -1.0, -0.25, -0.5, -1.0, 0.75, -1.0, -0.25, 0.0, 0.5, 0.0, -0.5, 0.5, -1.0, -1.0, 0.0, 1.0, 0.0, -0.75, -0.25, -0.5, 0.25, 0.5, 0.5, 1.0, 0.0, -0.25, 1.0, -1.0, 0.0, 0.5, 1.0, 1.0, -1.0, 0.5, -0.5, 1.0, -0.75, -0.25, -1.0, 0.5, 0.25, 0.5, 0.75, -0.25, 0.25, 0.0, -0.25, 0.5, 0.5, -0.75, 0.75, 0.0, 0.75, -0.75, -0.25, 0.25, 0.75, -0.75, 0.0, 0.75, 0.5, ]);
    query302.destroy()
    compute_pass_encoder3020.popDebugGroup()
    
    query500.destroy()
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    query500.destroy()
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    
    command_encoder502.copyBufferToBuffer(
        buffer502,
        0,
        buffer504,
        0,
        400
    );
    query501.destroy()
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const command_buffer303 = command_encoder303.finish();
    query301.destroy()
    const command_buffer700 = command_encoder700.finish();
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    query303.destroy()
    
    
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
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const sampler706 = device70.createSampler( { label: "sampler706" } );
    device50.queue.writeBuffer(buffer504, 0, array1, 0, array1.length);
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    
    
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_bundle_encoder702.pushDebugGroup("group_marker");
    query702.destroy()
    query502.destroy()
    
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const sampler707 = device70.createSampler( { label: "sampler707" } );
    query303.destroy()
    
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    query701.destroy()
    command_encoder702.resolveQuerySet(
        query701,
        0,
        32,
        buffer703,
        0
    )
    compute_pass_encoder3020.insertDebugMarker("marker")
    command_encoder502.copyBufferToBuffer(
        buffer503,
        0,
        buffer504,
        0,
        400
    );
    compute_pass_encoder3010.popDebugGroup()
    
    render_bundle_encoder701.popDebugGroup();
    device50.queue.writeBuffer(buffer504, 0, array3, 0, array3.length);
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array4 = new Float32Array([-0.5, -0.5, -0.25, -0.25, 0.0, 0.5, -0.5, -1.0, 0.5, -1.0, 0.25, -1.0, 0.75, -1.0, 0.5, -1.0, 1.0, 1.0, 0.5, 0.5, 0.75, 0.75, -0.5, -0.25, -1.0, -1.0, -0.5, -1.0, 1.0, -0.25, -1.0, -0.5, 0.0, -1.0, -0.5, -0.25, -1.0, -0.25, -0.25, -0.75, -0.75, 0.25, 0.5, -0.75, -1.0, -0.5, -1.0, 0.0, -0.75, -1.0, 0.75, -0.5, -0.25, -0.75, 0.75, 0.25, 0.5, -0.5, -0.5, 0.25, -0.5, -0.5, -0.25, 0.0, 0.75, 0.5, -1.0, -0.25, -0.75, -0.75, -0.5, 0.25, -1.0, -1.0, 1.0, -0.25, -0.5, 0.25, -0.25, -0.25, 0.0, 0.0, 1.0, -1.0, 0.75, 0.5, 0.75, 0.25, 0.25, 0.75, -1.0, -0.25, 1.0, 1.0, 1.0, -0.75, 0.75, -0.25, -0.75, 1.0, ]);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    compute_pass_encoder7010.insertDebugMarker("marker")
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    {
        await buffer308.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer308.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer308.unmap();
        console.log(new Float32Array(data));
    }
    
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    device70.pushErrorScope("validation");
    device50.queue.writeBuffer(buffer504, 0, array4, 0, array4.length);
    compute_pass_encoder7010.insertDebugMarker("marker")
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    query500.destroy()
    
    query701.destroy()
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query500.destroy()
    compute_pass_encoder3040.popDebugGroup()
    query304.destroy()
    
    compute_pass_encoder7010.insertDebugMarker("marker")
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer504, 0, array4, 0, array4.length);
    query1000.destroy()
    compute_pass_encoder3010.insertDebugMarker("marker")
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer308, 0, array1, 0, array1.length);
    
    command_encoder702.resolveQuerySet(
        query701,
        0,
        32,
        buffer703,
        0
    )
    command_encoder502.clearBuffer(buffer504);
    device50.queue.writeBuffer(buffer504, 0, array4, 0, array4.length);
    device30.queue.submit([command_buffer303, ]);
    
    
    
    command_encoder502.insertDebugMarker("mymarker");
    
    
    const sampler308 = device30.createSampler( { label: "sampler308" } );
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
    
    device30.queue.writeBuffer(buffer308, 0, array2, 0, array2.length);
    query701.destroy()
    command_encoder502.copyBufferToBuffer(
        buffer503,
        0,
        buffer504,
        0,
        400
    );
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    query700.destroy()
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    
    device50.pushErrorScope("validation");
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_buffer702 = command_encoder702.finish();
    
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    query503.destroy()
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    
    render_bundle_encoder500.popDebugGroup();
    query302.destroy()
    device30.queue.writeBuffer(buffer308, 0, array1, 0, array1.length);
    
    query301.destroy()
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const sampler506 = device50.createSampler( { label: "sampler506" } );
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    command_encoder502.insertDebugMarker("mymarker");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    
    query700.destroy()
    device70.queue.submit([command_buffer702, ]);
    const command_buffer502 = command_encoder502.finish();
    const command_buffer503 = command_encoder503.finish();
    compute_pass_encoder3040.popDebugGroup()
    device50.queue.submit([command_buffer502, command_buffer503, ]);
    compute_pass_encoder3010.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.submit([command_buffer700, ]);
}