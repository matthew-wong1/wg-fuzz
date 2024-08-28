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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder000.insertDebugMarker("marker");
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
    query000.destroy()
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder100.insertDebugMarker("mymarker");
    const command_buffer100 = command_encoder100.finish();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder102.insertDebugMarker("mymarker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
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
    const command_buffer103 = command_encoder103.finish();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.insertDebugMarker("mymarker");
    
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_buffer102 = command_encoder102.finish();
    command_encoder101.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_buffer104 = command_encoder104.finish();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query101.destroy()
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
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    
    query100.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
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
    query100.destroy()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    query100.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const command_buffer105 = command_encoder105.finish();
    
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    buffer100.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query102.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    query101.destroy()
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout101]
    });
    query100.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    query101.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    query101.destroy()
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device20.destroy();
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query103.destroy()
    query103.destroy()
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout103]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query101.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout102]
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout105]
    });
    buffer101.destroy()
    query102.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout102]
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
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder300.insertDebugMarker("mymarker");
    buffer301.destroy()
    const pipeline_layout1024 = device10.createPipelineLayout({ 
        label: "pipeline_layout1024",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    query101.destroy()
    const pipeline_layout1025 = device10.createPipelineLayout({ 
        label: "pipeline_layout1025",
        bindGroupLayouts: [bind_group_layout105]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    query104.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout1026 = device10.createPipelineLayout({ 
        label: "pipeline_layout1026",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout1027 = device10.createPipelineLayout({ 
        label: "pipeline_layout1027",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1028 = device10.createPipelineLayout({ 
        label: "pipeline_layout1028",
        bindGroupLayouts: [bind_group_layout103]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder300.clearBuffer(buffer302);
    buffer303.destroy()
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder300.insertDebugMarker("mymarker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    buffer300.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout1029 = device10.createPipelineLayout({ 
        label: "pipeline_layout1029",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    query300.destroy()
    query300.destroy()
    query105.destroy()
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.clearBuffer(buffer302);
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    query102.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    command_encoder106.resolveQuerySet(
        query106,
        0,
        32,
        buffer100,
        0
    )
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    buffer400.destroy()
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_buffer106 = command_encoder106.finish();
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
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query100.destroy()
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
    query300.destroy()
    command_encoder300.pushDebugGroup("mygroupmarker")
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    buffer501.destroy()
    query401.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder300.clearBuffer(buffer302);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    query401.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
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
    query400.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout502]
    });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    device10.queue.submit([command_buffer106, ]);
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
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    query100.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device50.destroy();
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder400.insertDebugMarker("mymarker");
    buffer302.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    query105.destroy()
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
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout1030 = device10.createPipelineLayout({ 
        label: "pipeline_layout1030",
        bindGroupLayouts: [bind_group_layout105]
    });
    command_encoder300.insertDebugMarker("mymarker");
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const pipeline_layout1031 = device10.createPipelineLayout({ 
        label: "pipeline_layout1031",
        bindGroupLayouts: [bind_group_layout101]
    });
    buffer401.destroy()
    
    query401.destroy()
    command_encoder400.insertDebugMarker("mymarker");
    query100.destroy()
    const pipeline_layout1032 = device10.createPipelineLayout({ 
        label: "pipeline_layout1032",
        bindGroupLayouts: [bind_group_layout103]
    });
    buffer103.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    query401.destroy()
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder300.popDebugGroup()
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    query401.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const pipeline_layout1033 = device10.createPipelineLayout({ 
        label: "pipeline_layout1033",
        bindGroupLayouts: [bind_group_layout105]
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout1034 = device10.createPipelineLayout({ 
        label: "pipeline_layout1034",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const pipeline_layout1035 = device10.createPipelineLayout({ 
        label: "pipeline_layout1035",
        bindGroupLayouts: [bind_group_layout101]
    });
    query300.destroy()
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    query301.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_buffer401 = command_encoder401.finish();
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    query102.destroy()
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout1036 = device10.createPipelineLayout({ 
        label: "pipeline_layout1036",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder300.pushDebugGroup("mygroupmarker")
    query300.destroy()
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    buffer402.destroy()
    buffer403.destroy()
    query401.destroy()
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout302]
    });
    command_encoder107.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout302]
    });
    command_encoder301.popDebugGroup()
    command_encoder400.resolveQuerySet(
        query401,
        0,
        32,
        buffer404,
        0
    )
    query400.destroy()
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder107.pushDebugGroup("mygroupmarker")
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    query100.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    query104.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    query401.destroy()
    query300.destroy()
    command_encoder300.popDebugGroup()
    const pipeline_layout1037 = device10.createPipelineLayout({ 
        label: "pipeline_layout1037",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout302]
    });
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
    command_encoder107.resolveQuerySet(
        query106,
        0,
        32,
        buffer100,
        0
    )
    query105.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    command_encoder107.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    command_encoder301.pushDebugGroup("mygroupmarker")
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    const command_buffer400 = command_encoder400.finish();
    command_encoder108.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const pipeline_layout1038 = device10.createPipelineLayout({ 
        label: "pipeline_layout1038",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout1039 = device10.createPipelineLayout({ 
        label: "pipeline_layout1039",
        bindGroupLayouts: [bind_group_layout104]
    });
    command_encoder108.pushDebugGroup("mygroupmarker")
    query103.destroy()
    command_encoder108.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout301]
    });
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    command_encoder108.insertDebugMarker("mymarker");
    query106.destroy()
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    query103.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1040 = device10.createPipelineLayout({ 
        label: "pipeline_layout1040",
        bindGroupLayouts: [bind_group_layout106]
    });
    query104.destroy()
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    query100.destroy()
    query301.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    command_encoder107.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder302.insertDebugMarker("mymarker");
    render_bundle_encoder402.insertDebugMarker("marker");
    command_encoder301.insertDebugMarker("mymarker");
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder108.resolveQuerySet(
        query106,
        0,
        32,
        buffer100,
        0
    )
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    command_encoder108.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder301.popDebugGroup()
    command_encoder301.insertDebugMarker("mymarker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1041 = device10.createPipelineLayout({ 
        label: "pipeline_layout1041",
        bindGroupLayouts: [bind_group_layout106]
    });
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    command_encoder109.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const command_buffer301 = command_encoder301.finish();
    command_encoder108.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    command_encoder108.insertDebugMarker("mymarker");
    command_encoder108.resolveQuerySet(
        query106,
        0,
        32,
        buffer100,
        0
    )
    command_encoder109.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    const pipeline_layout1042 = device10.createPipelineLayout({ 
        label: "pipeline_layout1042",
        bindGroupLayouts: [bind_group_layout102]
    });
    command_encoder107.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    command_encoder109.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    command_encoder108.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    command_encoder109.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const pipeline_layout1043 = device10.createPipelineLayout({ 
        label: "pipeline_layout1043",
        bindGroupLayouts: [bind_group_layout104]
    });
    query300.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    command_encoder108.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    command_encoder107.insertDebugMarker("mymarker");
    command_encoder302.insertDebugMarker("mymarker");
    query304.destroy()
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
    query300.destroy()
    const pipeline_layout1044 = device10.createPipelineLayout({ 
        label: "pipeline_layout1044",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder108.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    command_encoder108.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    command_encoder108.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    command_encoder107.resolveQuerySet(
        query106,
        0,
        32,
        buffer100,
        0
    )
    command_encoder108.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    command_encoder303.pushDebugGroup("mygroupmarker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder107.resolveQuerySet(
        query106,
        0,
        32,
        buffer100,
        0
    )
    query102.destroy()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    query300.destroy()
    command_encoder302.pushDebugGroup("mygroupmarker")
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout3017 = device30.createPipelineLayout({ 
        label: "pipeline_layout3017",
        bindGroupLayouts: [bind_group_layout301]
    });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    command_encoder109.pushDebugGroup("mygroupmarker")
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder109.resolveQuerySet(
        query107,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder402.insertDebugMarker("marker");
    command_encoder109.popDebugGroup()
    command_encoder300.insertDebugMarker("mymarker");
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
    query403.destroy()
    command_encoder109.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    command_encoder107.resolveQuerySet(
        query106,
        0,
        32,
        buffer100,
        0
    )
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query102.destroy()
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const pipeline_layout3018 = device30.createPipelineLayout({ 
        label: "pipeline_layout3018",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder109.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    command_encoder108.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    query106.destroy()
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    command_encoder300.pushDebugGroup("mygroupmarker")
    command_encoder109.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    command_encoder108.resolveQuerySet(
        query107,
        0,
        32,
        buffer100,
        0
    )
    const pipeline_layout3019 = device30.createPipelineLayout({ 
        label: "pipeline_layout3019",
        bindGroupLayouts: [bind_group_layout303]
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    query106.destroy()
    const sampler1010 = device10.createSampler( { label: "sampler1010" } );
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
    query303.destroy()
    command_encoder109.resolveQuerySet(
        query106,
        0,
        32,
        buffer100,
        0
    )
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1045 = device10.createPipelineLayout({ 
        label: "pipeline_layout1045",
        bindGroupLayouts: [bind_group_layout102]
    });
    command_encoder107.resolveQuerySet(
        query106,
        0,
        32,
        buffer100,
        0
    )
    const pipeline_layout3020 = device30.createPipelineLayout({ 
        label: "pipeline_layout3020",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout1046 = device10.createPipelineLayout({ 
        label: "pipeline_layout1046",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    command_encoder108.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    
    command_encoder109.resolveQuerySet(
        query107,
        0,
        32,
        buffer100,
        0
    )
    const pipeline_layout1047 = device10.createPipelineLayout({ 
        label: "pipeline_layout1047",
        bindGroupLayouts: [bind_group_layout106]
    });
    command_encoder108.resolveQuerySet(
        query106,
        0,
        32,
        buffer100,
        0
    )
    query402.destroy()
    const pipeline_layout3021 = device30.createPipelineLayout({ 
        label: "pipeline_layout3021",
        bindGroupLayouts: [bind_group_layout303]
    });
    command_encoder109.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    query302.destroy()
    command_encoder302.popDebugGroup()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder108.popDebugGroup()
    const pipeline_layout1048 = device10.createPipelineLayout({ 
        label: "pipeline_layout1048",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    query305.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder108.resolveQuerySet(
        query106,
        0,
        32,
        buffer100,
        0
    )
    command_encoder300.popDebugGroup()
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    command_encoder108.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer304.destroy()
    command_encoder108.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    command_encoder109.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    command_encoder108.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
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
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_buffer302 = command_encoder302.finish();
    const command_buffer108 = command_encoder108.finish();
    device40.queue.submit([command_buffer401, ]);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    const command_buffer109 = command_encoder109.finish();
    command_encoder303.popDebugGroup()
    device10.queue.submit([command_buffer108, command_buffer109, ]);
    const command_buffer303 = command_encoder303.finish();
    command_encoder107.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    const command_buffer107 = command_encoder107.finish();
    device30.queue.submit([command_buffer303, ]);
    const command_buffer300 = command_encoder300.finish();
    device10.queue.submit([command_buffer107, ]);
    device30.queue.submit([command_buffer300, ]);
}