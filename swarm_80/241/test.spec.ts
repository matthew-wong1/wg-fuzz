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
    const array0 = new Float32Array([-1.0, 1.0, 0.25, 1.0, 0.75, 0.0, -1.0, -0.25, -0.75, -0.25, 0.25, 0.75, 0.25, 0.75, -0.5, 0.25, -0.25, -1.0, 0.0, 0.0, 0.75, 1.0, -0.75, -1.0, -0.25, -0.75, -0.5, 1.0, 0.75, -0.75, 0.0, -0.25, 1.0, -0.25, 0.75, 0.0, -0.5, 0.0, -1.0, 0.5, 1.0, 0.5, 1.0, -0.75, -1.0, 0.75, -1.0, -0.25, 0.75, 0.75, -0.75, -0.25, 0.25, 0.5, 0.25, 0.75, 1.0, -0.5, -0.25, -0.75, -0.25, -0.5, 0.0, 0.75, -0.75, 0.0, 0.25, -0.25, 0.0, 0.0, 0.25, -0.5, 1.0, -1.0, 0.0, -0.75, 0.5, 1.0, 0.25, -1.0, 1.0, -0.25, -1.0, 0.5, 0.5, -0.25, 0.25, -0.25, -0.5, -1.0, -1.0, -0.75, -0.5, -0.75, 0.25, -0.25, 0.25, 0.75, -0.25, 0.75, ]);
    const array1 = new Float32Array([-0.25, 0.75, 0.75, 0.5, -0.25, 0.25, -0.5, 0.5, -0.5, 0.0, 0.5, 0.25, 0.25, 0.0, 0.75, -0.75, -0.75, 0.25, 1.0, 0.5, -0.75, 0.25, -0.5, 0.75, 0.75, -0.25, 0.75, -0.75, 1.0, -1.0, 1.0, -1.0, -0.5, 0.0, 0.0, -0.25, -1.0, 0.0, 1.0, -1.0, 1.0, 0.25, -0.5, 0.5, -0.75, -1.0, -0.75, -0.5, -0.5, 0.0, 0.75, 0.25, -0.25, 0.75, -1.0, 0.25, 0.25, -0.5, -1.0, 0.75, 0.0, 0.5, 0.75, 0.0, 0.5, -0.5, 0.0, -0.5, 0.5, -1.0, -0.5, -0.25, -0.5, 0.25, 0.5, 0.0, -0.5, 0.5, -1.0, 0.75, 0.0, 0.0, 0.5, 0.75, 0.0, -1.0, 1.0, -0.75, -0.75, -0.25, -0.25, 1.0, 0.0, 0.5, -0.5, 0.0, -0.25, 0.25, 0.75, 0.75, ]);
    const array2 = new Float32Array([0.25, 0.75, -1.0, 0.5, -0.5, -0.25, -0.75, 0.0, 0.75, -0.75, 0.0, -0.25, -1.0, -0.5, -0.25, 0.0, -0.75, -1.0, 0.0, 0.75, -0.5, 0.5, 1.0, -1.0, 0.5, 0.0, -0.25, 0.25, 0.5, 0.0, 0.5, 0.5, 0.75, 0.25, 0.5, -0.25, -1.0, -1.0, 0.25, -0.5, 1.0, 0.75, 0.5, -0.75, -0.75, -0.5, -0.5, 0.0, 0.75, 0.75, 0.25, 0.75, 0.75, 1.0, 0.25, -0.25, 0.75, -0.25, 1.0, 0.25, 0.5, 0.5, 0.5, 0.25, 0.75, -1.0, 0.75, -0.25, -0.75, 0.5, -0.75, 0.25, -1.0, 0.25, -1.0, -0.75, -1.0, 0.75, -0.25, 0.75, 1.0, 0.0, 0.75, 0.25, -0.5, 0.25, -0.25, 1.0, 0.0, -1.0, -1.0, 0.5, -0.25, 1.0, -0.75, -0.75, 0.75, -0.5, -0.75, 0.25, ]);
    const array3 = new Float32Array([0.25, 0.25, 0.25, -0.25, -0.75, 0.5, -0.5, 0.75, 0.25, -1.0, -0.25, -1.0, -1.0, 0.25, -0.5, 0.25, 0.5, -0.25, 0.0, 0.0, -0.5, 0.75, -0.25, -0.5, 0.75, -1.0, 0.5, -0.25, -1.0, 0.0, 0.5, 1.0, -1.0, 0.0, 1.0, 0.5, -1.0, -0.5, 0.5, 0.5, -0.25, -0.75, -1.0, 0.25, -1.0, -0.25, -0.75, 0.5, 0.25, 0.0, 0.25, 0.0, -0.25, 0.0, 0.75, -1.0, 0.5, -0.25, 0.0, 0.5, 0.0, -1.0, -0.25, 0.25, 0.25, -0.75, 0.5, -0.25, 0.75, -0.25, -1.0, 0.0, -1.0, -0.75, -0.75, -0.25, -1.0, -1.0, -0.75, 0.75, 1.0, -0.5, -0.25, 1.0, 0.0, 0.0, 0.5, 0.0, 0.25, 0.75, -0.25, -0.75, -0.5, -0.25, -0.75, -0.25, -0.5, -0.25, 0.5, 0.0, ]);
    const array4 = new Float32Array([-0.75, -0.75, -0.25, -0.75, -1.0, 0.75, 1.0, 0.5, -1.0, 0.75, -1.0, -0.5, -0.75, -1.0, -0.75, 0.25, -0.25, 0.75, 0.0, 0.5, 1.0, 0.25, -0.75, -0.25, -1.0, -0.5, 1.0, -0.25, 1.0, -1.0, 0.75, -0.5, -0.5, -0.75, -0.75, 0.75, -0.5, 0.75, 1.0, 1.0, -0.75, -0.5, 0.75, -1.0, 1.0, -1.0, 1.0, 0.0, 0.5, 0.75, 0.5, 0.5, 0.5, 0.0, 0.0, 1.0, 0.25, -0.5, -0.75, -0.5, 0.75, 0.75, -0.25, 0.75, 0.75, -0.5, 0.5, 0.5, -0.25, 0.25, 0.75, 0.5, -0.5, 0.0, 0.0, -0.25, -0.5, 0.0, -0.75, -0.25, -0.75, 0.5, 0.25, 0.5, 0.25, 0.75, 1.0, -0.5, 0.5, -0.25, -1.0, -1.0, -1.0, 0.75, 0.5, 0.5, -0.25, 0.25, -0.5, 0.75, ]);
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array5 = new Float32Array([0.5, -0.5, -0.75, -0.5, -0.5, 1.0, -0.75, -0.5, 0.75, -0.25, 0.0, 0.25, 1.0, 0.5, 0.0, -0.25, 1.0, -0.25, 1.0, -0.75, -0.25, -1.0, 0.5, -0.25, -1.0, -1.0, 0.5, 1.0, 0.25, 0.25, 0.75, -0.75, -0.25, 1.0, -0.5, -0.25, 0.25, -0.25, -0.75, -0.75, 0.75, 1.0, -0.5, 0.5, -0.5, -0.75, -0.75, 1.0, 1.0, 0.25, -1.0, 0.5, 1.0, 0.0, 0.0, -0.75, 0.75, 0.75, -1.0, -0.5, 0.25, -1.0, 0.25, -0.5, 0.5, -1.0, -1.0, 0.75, -0.25, 1.0, 0.5, -0.25, -1.0, 0.25, 0.75, 0.75, -0.75, -1.0, 0.75, 0.75, -0.75, -0.25, 1.0, 0.25, -1.0, 0.5, 0.5, 0.0, -0.5, 0.75, -0.5, -0.75, 0.5, 0.75, -0.5, -1.0, -0.5, -0.75, 0.25, 0.75, ]);
    
    
    const array6 = new Float32Array([0.0, -0.5, 0.25, -0.25, -0.75, -0.75, 1.0, 0.75, -1.0, -1.0, -0.5, -1.0, 0.25, 1.0, -0.25, 0.75, 0.75, 0.75, -0.5, -0.75, 0.5, -1.0, 0.5, -1.0, -0.5, -0.5, -0.75, -1.0, 0.75, 0.0, -0.75, 0.5, -0.25, 0.25, 0.25, 1.0, -0.25, -1.0, -0.25, -1.0, -0.75, -0.75, -0.75, 0.5, -0.5, -0.5, 0.0, -0.25, 1.0, -1.0, 0.75, 0.0, -0.75, -1.0, -1.0, 0.0, 0.75, 0.25, 0.25, 0.75, -1.0, -0.5, 0.25, 0.75, 1.0, 1.0, 0.75, 0.25, 0.75, -0.5, -1.0, 0.75, 1.0, -0.5, -1.0, 0.0, -0.5, 1.0, 0.25, 0.5, -0.75, -0.25, 1.0, -0.5, -0.5, 1.0, 1.0, -0.25, 0.75, 0.25, -0.5, 0.5, -1.0, -0.75, -0.5, 0.0, 0.0, -0.75, 0.0, -0.75, ]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    const command_buffer100 = command_encoder100.finish();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    device10.pushErrorScope("validation");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const array7 = new Float32Array([0.75, -0.25, 1.0, 0.75, -1.0, -1.0, 1.0, -1.0, 0.5, 0.75, -0.5, -0.75, -0.25, -0.25, 0.25, 0.0, 0.5, 0.75, -0.75, -0.75, 1.0, -0.75, 0.75, -1.0, 0.75, 0.5, -0.5, 0.0, 0.25, 0.25, 0.0, 0.5, 0.5, -0.5, -1.0, 0.0, -0.5, 0.0, -0.25, 0.75, 0.5, -0.25, 1.0, 0.0, 0.5, -1.0, 0.25, 0.75, 0.5, -0.75, 0.0, -0.75, 0.25, -0.5, 1.0, -1.0, 1.0, 0.25, 0.25, -0.5, -1.0, 0.75, -1.0, -0.5, 0.0, -0.75, -0.75, 0.25, -0.25, 0.75, 0.5, 0.5, -0.5, 0.25, -0.25, -0.5, 0.5, -1.0, -1.0, 0.75, -0.75, -0.5, -0.75, 0.75, -0.5, 0.5, 1.0, 0.25, 0.75, 0.5, -1.0, -0.75, 0.5, -0.25, -0.25, 0.5, 0.75, 0.0, 1.0, -0.25, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    const array8 = new Float32Array([0.75, 0.5, 1.0, -0.5, 0.0, -0.25, 0.75, -0.75, 1.0, -0.25, 0.75, -0.5, -0.25, -1.0, -0.25, -1.0, -1.0, -0.75, -1.0, -1.0, 0.25, 1.0, -0.75, 0.0, 0.0, -0.75, -0.5, 0.0, -1.0, 0.0, -0.5, -0.75, -0.25, 0.5, -0.5, -0.5, 0.5, -0.25, -1.0, -0.25, -0.25, -0.75, 0.0, -0.75, 0.75, 0.25, 0.25, -0.25, -0.5, 0.5, 1.0, -0.25, -0.5, 0.5, 1.0, -0.25, -0.75, 0.25, -1.0, 0.75, 0.5, 0.5, 0.75, 0.0, 0.25, 0.0, 1.0, -1.0, -1.0, -0.5, 0.25, -0.75, -0.5, -1.0, 1.0, 0.75, 0.75, 0.5, -0.25, -0.75, 0.75, 0.75, 0.5, -0.75, 1.0, 0.75, -0.25, -0.25, 0.5, -0.5, -0.5, 1.0, -0.75, 0.0, 0.25, -1.0, 0.5, -1.0, -0.25, 1.0, ]);
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const array9 = new Float32Array([0.5, -0.75, 0.0, 1.0, 0.5, 0.25, 0.0, -0.25, -0.5, -0.75, 0.75, -1.0, -1.0, -1.0, 0.75, -0.25, -1.0, -0.5, 1.0, 0.0, 0.0, 1.0, 0.0, 0.5, -1.0, 0.0, 0.0, 1.0, -0.75, 0.25, -0.25, -0.25, -1.0, 0.0, 0.0, 0.0, -0.25, -0.5, 1.0, 1.0, -1.0, 0.25, -0.5, 1.0, -0.25, -0.25, -1.0, 0.5, 1.0, -0.5, 0.0, 0.75, 0.0, 0.0, -1.0, 0.0, 1.0, -0.75, -0.5, -0.25, -0.25, -1.0, -0.25, 1.0, -0.25, -1.0, 0.75, -0.75, 0.75, 0.0, -1.0, -0.75, -0.75, 1.0, 0.5, 0.25, -0.25, -1.0, -0.5, 0.75, 1.0, -0.5, 0.25, 0.75, 0.75, 0.0, -1.0, 1.0, 1.0, 0.25, 0.25, -0.25, 0.25, 0.75, 0.25, 0.5, -1.0, -0.75, -1.0, 0.0, ]);
    
    device00.pushErrorScope("internal");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device10.queue.submit([command_buffer100, ]);
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    command_encoder101.insertDebugMarker("mymarker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const array10 = new Float32Array([-1.0, 0.5, 0.0, 0.0, 1.0, 0.0, 0.25, -0.5, 0.25, -1.0, 0.5, -1.0, 0.5, 0.0, 0.0, -0.25, 0.0, 0.75, 0.75, -0.5, 0.75, 0.75, -0.25, 1.0, 0.75, -1.0, 0.75, -0.5, -0.25, -0.25, -1.0, -0.5, -0.5, 1.0, 0.75, 0.5, 0.25, -0.25, 0.25, -0.75, -0.75, -0.5, 0.0, -0.5, -0.75, 0.0, 0.75, 0.5, 1.0, 1.0, 0.5, 1.0, -0.75, -1.0, -0.5, 0.25, -0.5, -0.5, 0.0, 0.0, -0.75, -0.25, 0.0, 0.75, -1.0, -0.5, 0.75, -0.75, 1.0, 0.25, -0.25, -1.0, -0.75, -0.25, 1.0, -0.25, 0.5, 1.0, -0.25, -0.5, 0.75, 0.5, 0.75, -0.5, 1.0, -0.75, -0.25, -1.0, -0.5, 0.75, 0.0, 0.75, 1.0, 0.75, 0.5, 0.75, 0.5, 0.25, 0.0, -0.75, ]);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.insertDebugMarker("mymarker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    device00.pushErrorScope("validation");
    
    const command_buffer200 = command_encoder200.finish();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("out-of-memory");
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array11 = new Float32Array([0.25, 0.5, 0.75, -0.25, 0.5, 0.25, 0.5, 0.25, -0.5, 0.5, -1.0, -0.25, -0.25, 0.0, 0.75, 1.0, 1.0, -0.25, -0.25, 0.5, 1.0, 1.0, -0.75, -0.5, 0.75, 0.5, 0.75, -0.5, -0.5, -0.75, 0.0, 1.0, 1.0, 0.0, 0.75, 0.75, -0.5, -0.25, 0.5, 1.0, -0.75, -1.0, 1.0, 1.0, 1.0, 0.5, 1.0, 0.75, 1.0, -0.5, -0.25, -0.25, -0.75, -0.5, 0.0, -0.25, -0.75, 1.0, 0.0, 0.25, 0.25, -0.75, 0.0, 0.5, 0.0, -1.0, 0.0, 0.0, 0.25, 0.0, -0.25, 0.5, -0.25, 0.75, -1.0, -0.25, 0.75, 0.75, 0.0, -0.5, 0.75, -0.75, 0.25, -0.5, 0.0, 0.5, 1.0, -1.0, -0.5, 0.5, 0.5, -0.75, 0.75, 0.0, -1.0, -0.5, -0.75, 1.0, 0.25, -0.75, ]);
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer101 = command_encoder101.finish();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
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
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    
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
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.insertDebugMarker("mymarker");
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer102 = command_encoder102.finish();
    
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
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
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
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
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    device50.pushErrorScope("validation");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    device10.pushErrorScope("out-of-memory");
    
    
    
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_buffer301 = command_encoder301.finish();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_buffer000 = command_encoder000.finish();
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder300.insertDebugMarker("mymarker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.pushErrorScope("out-of-memory");
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_buffer400 = command_encoder400.finish();
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const command_buffer300 = command_encoder300.finish();
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device00.pushErrorScope("validation");
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("internal");
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    
    const command_buffer401 = command_encoder401.finish();
    
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    command_encoder103.insertDebugMarker("mymarker");
    
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder103.insertDebugMarker("mymarker");
    const texture_view2004 = texture200.createView({ label: "texture_view2004" });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder001.insertDebugMarker("mymarker");
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    command_encoder402.insertDebugMarker("mymarker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const texture_view1033 = texture103.createView({ label: "texture_view1033" });
    
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
    const texture_view2061 = texture206.createView({ label: "texture_view2061" });
    const query500 = device50.createQuerySet({
        label: "query500",
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
    
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture_view2005 = texture200.createView({ label: "texture_view2005" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const command_buffer402 = command_encoder402.finish();
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const texture208 = device20.createTexture({
        label: "texture208",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    device30.pushErrorScope("validation");
    const array12 = new Float32Array([0.0, -1.0, -0.25, 0.25, -0.5, 0.25, 0.25, -1.0, -1.0, 0.25, 0.0, -0.75, 0.75, 0.5, -0.75, 0.0, -0.5, -0.75, 1.0, 0.25, 0.75, -0.25, -1.0, -0.75, 1.0, 0.75, 0.0, 0.5, 1.0, 0.25, -0.75, -1.0, 0.75, -0.75, -0.25, -0.75, -1.0, 0.5, 1.0, 0.5, -0.5, -0.25, -0.5, 0.5, -0.5, -0.75, 1.0, -0.25, -0.25, 0.0, -0.75, -0.5, -1.0, 1.0, -1.0, 0.25, 0.0, -0.75, 1.0, 0.5, 0.0, -0.25, -1.0, 0.25, -0.75, -0.75, 0.25, 0.0, -0.75, 1.0, 0.25, 0.5, 0.0, -1.0, -0.5, -0.75, 0.5, -0.5, 0.25, 0.75, -0.75, -0.5, -0.5, 1.0, -0.75, -0.5, 0.5, -1.0, 1.0, 1.0, 1.0, 0.5, -0.5, 1.0, 0.5, 1.0, 0.25, 0.25, 0.25, 0.75, ]);
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    command_encoder404.insertDebugMarker("mymarker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    device20.queue.submit([command_buffer200, ]);
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device00.queue.submit([command_buffer000, ]);
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    command_encoder103.insertDebugMarker("mymarker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
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
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const command_buffer403 = command_encoder403.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer001 = command_encoder001.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer404 = command_encoder404.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer002 = command_encoder002.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer002, ]);
    const command_buffer103 = command_encoder103.finish();
    const command_buffer201 = command_encoder201.finish();
    device10.queue.submit([command_buffer103, ]);
    device40.queue.submit([command_buffer400, command_buffer402, command_buffer403, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer001, ]);
}