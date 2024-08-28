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
    const array0 = new Float32Array([0.5, -0.25, 0.75, -0.5, -0.5, -1.0, -0.25, -0.25, 0.25, 0.5, -0.5, -1.0, 0.0, 1.0, 0.5, 0.5, 0.5, 0.25, -1.0, 0.5, -0.5, 0.75, -1.0, 1.0, 1.0, -0.25, -1.0, 1.0, -1.0, -0.75, 0.75, 1.0, -1.0, 0.25, -0.75, 0.0, 0.0, -0.75, 0.0, -0.25, -0.25, -0.25, 0.5, 0.5, -0.75, 0.25, 0.75, -0.75, 1.0, 0.5, 1.0, 0.25, -1.0, 0.5, -0.5, 1.0, -1.0, -1.0, -0.5, -0.25, 1.0, 0.0, 0.5, 0.0, -0.75, 0.5, 0.75, -0.5, -0.25, 1.0, 0.0, 0.25, 1.0, -1.0, 1.0, 0.5, -0.25, -0.25, 0.25, -0.25, -0.25, 0.25, 1.0, -1.0, -0.75, -0.75, -0.5, -0.25, 0.0, 0.25, 0.0, 1.0, -1.0, 1.0, -0.75, -0.25, 1.0, 0.5, -0.5, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([-1.0, 1.0, -0.25, 1.0, -0.75, -0.5, -1.0, 1.0, -0.25, -1.0, 0.75, 0.5, 1.0, 0.0, -0.5, 0.75, 1.0, -1.0, 0.75, 1.0, 0.5, -0.75, 0.75, -0.75, 0.5, -0.5, 0.0, 0.75, 0.5, 1.0, 0.75, -1.0, -0.25, -1.0, -0.75, 1.0, 1.0, 0.25, 0.75, 0.75, -0.5, 0.75, 0.0, 0.25, -0.75, 0.75, -0.25, 0.25, 0.0, -0.75, 0.0, 0.5, -1.0, -0.25, 0.5, 0.0, 0.0, 1.0, -0.75, 0.5, -0.25, 0.0, 0.75, -0.25, 0.25, 0.0, 0.0, -0.25, 0.0, -1.0, -0.25, -0.5, -0.75, -1.0, 0.0, 0.25, -0.25, 0.0, 0.0, 0.75, -0.25, -0.25, 0.0, 0.75, 0.25, 0.75, -0.25, -0.75, 1.0, -0.5, 1.0, 0.75, 0.5, -1.0, -0.25, -1.0, -0.75, -0.5, 0.5, 0.5, ]);
    const array2 = new Float32Array([0.75, 0.75, -0.75, -0.5, 1.0, -0.5, -0.5, 0.25, 1.0, -0.75, 1.0, 0.75, 0.25, -0.25, 0.25, 0.75, 0.25, 0.0, 1.0, 0.25, -1.0, -1.0, 0.0, 0.25, 0.75, 0.25, -0.25, 1.0, 1.0, -1.0, -0.5, 0.25, 0.5, -1.0, 0.0, -0.5, 0.75, -0.75, 0.5, 0.5, 0.25, 0.0, 1.0, -0.75, 0.0, -0.5, -0.75, 1.0, -0.75, 0.0, -1.0, -0.5, -0.5, 0.5, 0.5, 0.25, 0.75, 0.5, -0.75, -0.25, 0.5, 0.5, 1.0, 0.75, 0.5, 0.0, -0.25, 0.25, 0.25, 0.75, 0.5, 0.0, 0.25, -0.25, 0.0, -1.0, 0.75, 1.0, 0.75, 0.75, -0.75, -0.75, 1.0, -0.75, 0.0, 1.0, -0.75, 1.0, 0.25, -0.5, 0.0, -0.25, -0.25, -0.75, 1.0, 0.75, -1.0, 0.5, 0.25, -0.25, ]);
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_buffer100 = command_encoder100.finish();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_buffer101 = command_encoder101.finish();
    command_encoder103.pushDebugGroup("mygroupmarker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder103.popDebugGroup()
    
    command_encoder103.insertDebugMarker("mymarker");
    
    command_encoder102.insertDebugMarker("mymarker");
    
    device10.queue.submit([command_buffer101, ]);
    buffer300.destroy()
    texture101.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device30.pushErrorScope("internal");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.destroy();
    
    
    const command_buffer104 = command_encoder104.finish();
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder102.insertDebugMarker("mymarker");
    const command_buffer103 = command_encoder103.finish();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_buffer300 = command_encoder300.finish();
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([0.75, 0.0, -0.75, 1.0, 0.75, 0.0, 0.25, -0.5, -0.25, -1.0, -0.5, 0.5, 0.75, -0.75, 0.75, 0.75, 0.75, 0.75, 0.25, 1.0, -0.75, 0.75, -0.25, 1.0, -1.0, -0.25, 0.0, 0.25, 0.75, 0.75, -0.25, -0.75, -0.25, -0.75, 1.0, 0.75, 0.0, -0.25, 1.0, -0.75, 0.25, -0.5, 1.0, -0.75, 0.5, -0.75, -0.75, 0.0, -0.25, 0.25, -0.5, 1.0, -0.5, 0.75, -0.25, 1.0, 0.75, -0.5, 0.0, 0.5, -0.5, -0.75, 0.75, 0.25, -0.25, -0.75, 0.25, -0.5, -1.0, 0.75, 0.75, -0.5, -1.0, -0.75, -0.75, 0.0, -1.0, 0.75, 0.25, -0.5, -1.0, -1.0, -0.75, 1.0, 1.0, -1.0, -0.25, 0.75, 0.75, -0.5, -0.25, -0.25, 0.0, 0.0, -0.5, 1.0, 0.75, -0.25, -1.0, -0.5, ]);
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const array4 = new Float32Array([1.0, 1.0, -0.25, -1.0, -0.25, 0.75, -0.5, 0.5, 0.5, 0.5, 0.25, -0.75, 0.25, -0.75, 0.75, 0.0, 0.5, -1.0, 1.0, -0.25, -0.25, -1.0, -1.0, -1.0, 1.0, -0.5, -0.25, -0.25, 1.0, 0.0, -0.75, -0.75, -0.5, 0.5, 0.0, -1.0, 0.25, -0.25, -0.75, 1.0, -1.0, 0.5, 0.0, -0.5, -0.75, 1.0, -0.25, 0.25, 0.5, -0.25, 0.25, -0.25, -0.75, 0.5, 0.5, 0.0, 1.0, 1.0, 0.0, -1.0, -0.75, -0.5, 0.25, 1.0, -0.25, -0.75, 0.25, 0.75, -0.5, -1.0, 0.25, -0.25, 0.75, -0.75, 0.5, 0.0, -0.5, 0.0, -0.5, 0.75, 0.5, 0.5, 0.25, -1.0, 1.0, -0.75, -0.25, 0.0, 0.0, 0.25, 0.5, 0.25, 1.0, 0.75, -0.5, 0.0, 0.0, -1.0, 0.0, -0.75, ]);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device10.pushErrorScope("out-of-memory");
    
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder301.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer302.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const array5 = new Float32Array([1.0, 0.25, 0.25, 0.5, -0.5, -0.75, -0.75, 0.25, 0.25, 0.0, -0.75, 0.5, 0.0, 0.75, 0.25, 0.0, -0.75, -0.5, -0.25, -0.75, -1.0, 0.25, -0.75, -0.75, -0.25, -0.75, 0.0, -0.5, -0.75, -0.75, -1.0, 0.5, -0.75, -1.0, -0.25, -0.5, -0.25, 1.0, -0.75, 0.25, -1.0, 0.75, -0.5, 0.25, -1.0, -0.25, 1.0, -1.0, 0.25, 0.75, 0.75, -0.75, 0.5, -0.5, -1.0, 1.0, 0.25, 0.75, 0.25, 0.25, -1.0, 0.5, -0.75, -0.75, 1.0, 0.5, -0.5, -1.0, 1.0, 0.75, -0.75, -1.0, 0.5, 0.5, 0.25, -0.5, -1.0, 0.0, 0.75, 0.75, 0.25, 0.0, 0.75, -0.75, 0.5, 0.25, -0.75, 0.5, 1.0, 0.75, 1.0, 0.75, -0.25, -0.25, 0.0, -1.0, -0.5, 0.75, 0.0, -0.75, ]);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    command_encoder301.insertDebugMarker("mymarker");
    render_pass_encoder1020.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.executeBundles([])
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    device50.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    device40.pushErrorScope("internal");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16float",
        dimension: "2d"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture100.destroy();
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    render_bundle_encoder100.popDebugGroup();
    const command_buffer401 = command_encoder401.finish();
    render_bundle_encoder301.insertDebugMarker("marker");
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
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    device30.pushErrorScope("out-of-memory");
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.queue.submit([command_buffer300, ]);
    device20.destroy();
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device40.pushErrorScope("internal");
    render_bundle_encoder301.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer402 = command_encoder402.finish();
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder404.pushDebugGroup("mygroupmarker")
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
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
    command_encoder404.popDebugGroup()
    
    render_bundle_encoder301.popDebugGroup();
    command_encoder301.insertDebugMarker("mymarker");
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    command_encoder403.pushDebugGroup("mygroupmarker")
    texture103.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    texture102.destroy();
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    command_encoder405.pushDebugGroup("mygroupmarker")
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder400.insertDebugMarker("mymarker");
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.executeBundles([])
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    command_encoder404.insertDebugMarker("mymarker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    device40.queue.submit([command_buffer402, ]);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
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
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    command_encoder405.clearBuffer(buffer400);
    
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder303.pushDebugGroup("mygroupmarker")
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1060.pushDebugGroup("group_marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder1050.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer100.destroy()
    render_pass_encoder1060.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    command_encoder303.popDebugGroup()
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    command_encoder403.popDebugGroup()
    
    render_pass_encoder1050.pushDebugGroup("group_marker");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_bundle_encoder102.setPipeline(render_pipeline100);
    command_encoder404.pushDebugGroup("mygroupmarker")
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    render_bundle_encoder100.setPipeline(render_pipeline100);
    command_encoder404.clearBuffer(buffer400);
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder301.popDebugGroup()
    const command_buffer107 = command_encoder107.finish();
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder102.setVertexBuffer(0, buffer100);
    render_bundle_encoder102.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
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
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
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
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1050.popDebugGroup();
    command_encoder400.insertDebugMarker("mymarker");
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    buffer103.destroy()
    command_encoder403.insertDebugMarker("mymarker");
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder301.popDebugGroup();
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    render_bundle_encoder101.insertDebugMarker("marker");
    const array6 = new Float32Array([0.25, 0.5, -0.25, -1.0, -0.75, -0.25, -0.75, 0.25, -0.25, -1.0, 1.0, -1.0, 0.5, -0.5, -0.5, 1.0, 0.0, -1.0, -0.25, 0.25, -0.5, 0.0, 0.5, -0.75, -0.75, -0.75, 0.5, 0.75, -0.5, 0.25, 0.75, -0.75, -0.75, -0.25, -1.0, -1.0, 0.0, 1.0, 1.0, 0.75, 0.5, 0.75, 0.5, 0.75, -0.25, -0.25, -0.25, -0.75, 0.5, 0.0, 0.0, -0.75, -1.0, -0.75, 0.5, 0.0, 1.0, -1.0, 0.0, -0.75, -1.0, 0.25, 1.0, -1.0, -1.0, 0.75, -1.0, -0.25, -0.75, 0.0, 1.0, 0.75, 0.25, 0.75, 1.0, -0.5, 0.75, -0.25, -1.0, 1.0, 0.5, -0.75, -0.5, 0.0, 0.0, 0.75, 0.5, 0.0, -0.5, 0.75, -0.75, 1.0, 1.0, 0.5, -0.25, -1.0, -0.75, 1.0, 0.0, 0.25, ]);
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    command_encoder404.popDebugGroup()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder302.setPipeline(render_pipeline300);
    
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder302.popDebugGroup()
    render_bundle_encoder101.setPipeline(render_pipeline103);
    command_encoder303.insertDebugMarker("mymarker");
    buffer301.destroy()
    command_encoder400.clearBuffer(buffer400);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group300);
    command_encoder303.insertDebugMarker("mymarker");
    
    command_encoder403.insertDebugMarker("mymarker");
    
    command_encoder405.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const command_buffer404 = command_encoder404.finish();
    command_encoder406.clearBuffer(buffer400);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    render_bundle_encoder101.popDebugGroup();
    
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    command_encoder301.insertDebugMarker("mymarker");
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder302.pushDebugGroup("mygroupmarker")
    buffer101.destroy()
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_pass_encoder1050.executeBundles([])
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder406.insertDebugMarker("mymarker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder303.pushDebugGroup("mygroupmarker")
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    buffer303.destroy()
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const array7 = new Float32Array([0.25, 0.75, -0.25, 1.0, 1.0, -0.75, -1.0, 0.25, 0.5, 0.25, -0.75, 1.0, -1.0, -0.25, -0.75, -1.0, 0.0, -0.25, -0.75, -0.75, -0.75, 0.0, -0.25, -0.25, -1.0, -0.5, 0.0, 1.0, -1.0, 0.75, 1.0, 0.0, 0.5, 0.0, 0.5, 0.75, 0.0, 0.25, 0.5, 0.25, -0.75, -0.25, -0.25, -0.25, 0.5, -0.25, -0.75, -0.25, -0.25, -1.0, -0.25, 0.25, 0.0, -0.75, 0.25, 0.25, -0.75, -1.0, -1.0, -0.25, 1.0, 0.5, -0.75, -0.75, -0.25, -1.0, 0.25, 0.0, -0.25, -0.75, 0.25, 0.25, 0.25, -0.5, 0.75, 0.75, -0.75, 0.75, 0.0, -0.75, -0.5, 0.75, 0.25, -0.5, 1.0, -1.0, 0.0, -0.25, 0.75, -0.75, -0.25, 0.25, 0.0, -1.0, -0.75, 0.5, -1.0, -0.25, 0.25, 0.5, ]);
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    command_encoder303.popDebugGroup()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder403.insertDebugMarker("mymarker");
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    render_pass_encoder1060.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device40.pushErrorScope("out-of-memory");
    command_encoder405.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    
    render_pass_encoder1060.popDebugGroup();
    render_bundle_encoder102.draw(3);
    buffer107.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device10.pushErrorScope("internal");
    
    buffer402.destroy()
    render_pass_encoder1050.executeBundles([])
    command_encoder407.pushDebugGroup("mygroupmarker")
    buffer305.destroy()
    device70.pushErrorScope("out-of-memory");
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
    command_encoder405.insertDebugMarker("mymarker");
    texture104.destroy();
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder108.pushDebugGroup("mygroupmarker")
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    
    command_encoder407.popDebugGroup()
    command_encoder109.pushDebugGroup("mygroupmarker")
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder302.popDebugGroup()
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array8 = new Float32Array([-0.75, -0.5, -0.5, -0.25, 0.0, -0.25, -0.5, 0.0, 1.0, -0.75, 0.25, 1.0, -0.25, -0.25, 0.0, -1.0, -0.75, 0.25, -0.25, -0.75, -0.5, -0.75, -0.25, 1.0, -0.75, -0.5, 0.75, -0.25, 0.5, -0.75, -0.75, 0.5, -0.5, -0.25, -0.75, 1.0, -0.75, 0.5, -1.0, -0.25, 0.75, 0.75, 0.25, -0.75, 0.0, 1.0, -0.5, 0.25, -0.5, 0.0, -0.25, -0.75, 0.5, -1.0, 0.0, 0.75, 0.75, -0.75, 0.0, -0.75, -0.25, -0.5, 0.0, 0.25, -0.75, 0.0, -0.75, 0.25, 0.25, 0.0, 1.0, 0.5, -1.0, -0.5, 0.25, -0.5, -0.5, -0.5, -0.5, 0.25, -0.5, -0.25, -0.75, -0.25, 0.25, 0.75, 0.25, 0.0, 0.75, -0.25, 0.75, 0.0, -0.75, -1.0, 0.5, 0.0, 1.0, 0.0, 1.0, -0.25, ]);
    command_encoder400.popDebugGroup()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer303 = command_encoder303.finish();
    
    
    command_encoder109.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder300.setVertexBuffer(0, buffer300);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    command_encoder403.pushDebugGroup("mygroupmarker")
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder1060.pushDebugGroup("group_marker");
    render_pass_encoder1050.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder300.draw(3);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder406.insertDebugMarker("mymarker");
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1050.insertDebugMarker("marker");
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    
    
    const command_buffer406 = command_encoder406.finish();
    
    buffer102.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    command_encoder301.insertDebugMarker("mymarker");
    render_pass_encoder1050.insertDebugMarker("marker");
    render_bundle_encoder102.finish();
    buffer401.destroy()
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_pass_encoder1020.executeBundles([render_bundle_encoder102, ])
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_buffer400 = command_encoder400.finish();
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder109.insertDebugMarker("mymarker");
    command_encoder302.pushDebugGroup("mygroupmarker")
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder1060.popDebugGroup();
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
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
    command_encoder108.popDebugGroup()
    command_encoder407.clearBuffer(buffer400);
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    texture300.destroy();
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
    render_pass_encoder1060.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_bundle_encoder300.popDebugGroup();
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout105]
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    command_encoder109.insertDebugMarker("mymarker");
    
    render_pass_encoder1050.executeBundles([render_bundle_encoder102, ])
    command_encoder301.pushDebugGroup("mygroupmarker")
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    render_bundle_encoder302.insertDebugMarker("marker");
    buffer109.destroy()
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1060.insertDebugMarker("marker");
    
    render_pass_encoder1060.pushDebugGroup("group_marker");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pass_encoder1090 = command_encoder109.beginRenderPass({
        label: "render_pass_encoder1090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
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
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout105]
    });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder302.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer104, ]);
    device40.queue.submit([command_buffer404, ]);
    const command_buffer108 = command_encoder108.finish();
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group103);
    const command_buffer407 = command_encoder407.finish();
    render_pass_encoder1060.popDebugGroup();
    command_encoder403.popDebugGroup()
    const command_buffer403 = command_encoder403.finish();
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    device10.queue.submit([command_buffer107, command_buffer108, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder102.popDebugGroup()
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group104);
    const command_buffer102 = command_encoder102.finish();
    const command_buffer105 = command_encoder105.finish();
    const command_buffer405 = command_encoder405.finish();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.popDebugGroup();
    command_encoder301.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer105, ]);
    const command_buffer301 = command_encoder301.finish();
    device40.queue.submit([command_buffer405, command_buffer406, command_buffer407, ]);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    device30.queue.submit([command_buffer301, ]);
}