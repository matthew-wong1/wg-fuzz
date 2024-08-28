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
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("internal");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    texture200.destroy();
    command_encoder200.insertDebugMarker("mymarker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder200.popDebugGroup()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    buffer202.destroy()
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder202.insertDebugMarker("mymarker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    device30.pushErrorScope("out-of-memory");
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
    command_encoder200.popDebugGroup()
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder202.insertDebugMarker("mymarker");
    render_bundle_encoder300.insertDebugMarker("marker");
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
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    buffer200.destroy()
    
    query300.destroy()
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer201.destroy()
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    command_encoder201.insertDebugMarker("mymarker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
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
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    command_encoder200.insertDebugMarker("mymarker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder201.popDebugGroup();
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder203.popDebugGroup()
    query201.destroy()
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    query201.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder200.popDebugGroup();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer204.destroy()
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder203.pushDebugGroup("mygroupmarker")
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    buffer300.destroy()
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    command_encoder202.pushDebugGroup("mygroupmarker")
    command_encoder203.popDebugGroup()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    render_bundle_encoder201.popDebugGroup();
    command_encoder204.pushDebugGroup("mygroupmarker")
    query200.destroy()
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    command_encoder202.popDebugGroup()
    buffer203.destroy()
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder100.popDebugGroup()
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.popDebugGroup();
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    texture201.destroy();
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder203.pushDebugGroup("mygroupmarker")
    command_encoder203.popDebugGroup()
    command_encoder201.insertDebugMarker("mymarker");
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
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder202.insertDebugMarker("mymarker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    command_encoder204.popDebugGroup()
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    query300.destroy()
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder206.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    render_bundle_encoder202.popDebugGroup();
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
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
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    texture202.destroy();
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    
    command_encoder202.insertDebugMarker("mymarker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
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
    
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    command_encoder207.insertDebugMarker("mymarker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    command_encoder207.pushDebugGroup("mygroupmarker")
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    buffer101.destroy()
    command_encoder203.insertDebugMarker("mymarker");
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    
    
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    command_encoder207.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder206.pushDebugGroup("mygroupmarker")
    device10.pushErrorScope("validation");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
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
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder301.insertDebugMarker("marker");
    texture101.destroy();
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    query301.destroy()
    command_encoder103.insertDebugMarker("mymarker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    command_encoder204.pushDebugGroup("mygroupmarker")
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    command_encoder202.pushDebugGroup("mygroupmarker")
    command_encoder200.popDebugGroup()
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder302.pushDebugGroup("group_marker");
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    
    
    command_encoder206.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    
    
    query101.destroy()
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder207.insertDebugMarker("mymarker");
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder205.insertDebugMarker("mymarker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder207.insertDebugMarker("mymarker");
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    buffer205.destroy()
    command_encoder202.popDebugGroup()
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    query200.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder201.popDebugGroup();
    command_encoder206.popDebugGroup()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder207.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    command_encoder206.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    command_encoder200.popDebugGroup()
    buffer400.destroy()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    query301.destroy()
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder501.insertDebugMarker("mymarker");
    texture301.destroy();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    command_encoder207.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
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
    query100.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder203.insertDebugMarker("mymarker");
    buffer100.destroy()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    texture100.destroy();
    
    command_encoder206.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    query301.destroy()
    
    
    
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    
    command_encoder207.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder206.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    query200.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    command_encoder300.popDebugGroup()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    command_encoder200.insertDebugMarker("mymarker");
    
    
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder501.insertDebugMarker("mymarker");
    device40.destroy();
    command_encoder207.insertDebugMarker("mymarker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    query300.destroy()
    
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder204.popDebugGroup()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder103.pushDebugGroup("mygroupmarker")
    command_encoder202.popDebugGroup()
    
    command_encoder100.insertDebugMarker("mymarker");
    buffer206.destroy()
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder207.popDebugGroup()
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    
    query200.destroy()
    
    query103.destroy()
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    query500.destroy()
    
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder100.popDebugGroup();
    command_encoder205.insertDebugMarker("mymarker");
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder103.popDebugGroup()
    command_encoder201.popDebugGroup()
    command_encoder101.popDebugGroup()
    command_encoder102.popDebugGroup()
}