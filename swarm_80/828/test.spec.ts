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
    const array0 = new Float32Array([0.0, 1.0, 0.0, -0.75, -0.5, 1.0, -0.75, -0.25, -1.0, 1.0, -0.75, 0.5, -0.5, -0.5, 0.75, 0.5, -0.25, 1.0, 0.5, 1.0, -0.25, 0.25, -1.0, -1.0, 1.0, 0.0, -0.5, -0.75, 0.25, -0.25, -1.0, -0.5, 1.0, 0.25, -0.75, 1.0, 1.0, 1.0, -1.0, -1.0, 0.25, -1.0, 0.75, 0.75, -0.25, -0.75, -0.5, 0.0, 0.5, 0.25, 1.0, 1.0, 1.0, 1.0, -0.25, -1.0, -0.75, -1.0, -0.75, -0.5, -1.0, 0.0, -1.0, 0.5, 0.0, -1.0, -0.75, 0.5, -0.75, 0.25, 0.0, 0.25, 0.25, 0.75, 0.0, -0.75, 0.5, 0.0, 0.25, -1.0, 0.5, -0.25, -0.75, 0.0, -0.5, 1.0, 0.75, -0.5, -0.5, 0.5, -1.0, 0.25, 0.0, 1.0, -1.0, -0.75, 0.25, 0.0, 1.0, -0.5, ]);
    
    const array1 = new Float32Array([0.25, 1.0, -0.5, 0.5, -1.0, -0.25, 0.75, -0.5, 0.0, -0.75, -0.75, -1.0, 0.75, 0.25, 0.0, -1.0, 0.75, -1.0, -0.25, -1.0, -0.75, -0.75, 1.0, 0.5, -1.0, 0.5, 0.5, -0.25, 0.5, -1.0, 0.75, -0.75, 0.0, 1.0, 0.75, -0.25, 0.0, -0.5, 0.25, -0.75, -1.0, 1.0, -0.25, 0.25, 1.0, -0.5, 0.5, 0.5, 1.0, 1.0, 0.25, 0.5, 0.0, 0.0, -0.25, 0.0, 0.25, 0.25, -0.5, -0.5, 0.75, 1.0, -1.0, 0.5, -1.0, 0.5, 0.5, 0.0, -0.25, -0.75, -1.0, -1.0, 1.0, -1.0, 0.0, -0.5, 0.25, 0.5, -1.0, 0.5, 0.5, -0.75, 0.75, 0.75, -0.25, -0.75, -0.5, -0.5, 1.0, 1.0, -1.0, 0.0, 1.0, 1.0, -1.0, 0.25, 0.0, -0.5, -0.75, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    
    
    
    device00.destroy();
    const array2 = new Float32Array([-0.25, 0.75, 0.25, 1.0, -0.75, 0.25, 0.75, 1.0, 0.0, -0.75, 0.25, 0.75, -0.75, 0.5, 1.0, -1.0, 1.0, 0.5, 0.0, -0.25, -1.0, -0.5, 0.5, -0.5, 0.75, -0.75, 0.5, 0.5, 0.5, -0.75, 0.25, 0.25, -0.25, -0.25, -0.5, 0.25, 0.5, -0.5, -1.0, 0.0, 1.0, -0.5, 0.0, 0.25, -1.0, 0.25, -1.0, -0.25, -1.0, 1.0, 0.0, -0.25, -0.5, 0.0, 0.5, -0.5, -0.75, 0.5, 0.5, -0.25, -0.75, -0.25, 1.0, 0.0, 0.25, -0.5, -1.0, 0.5, -0.75, -1.0, -1.0, 0.5, 1.0, -0.25, -0.25, 0.5, 0.0, -0.5, 0.5, -0.25, 0.0, -0.5, 0.25, -0.25, 1.0, -0.5, -0.75, -0.75, -0.25, -0.75, -0.75, -0.75, -1.0, 0.0, 0.25, -0.5, -0.5, 1.0, 0.0, 0.5, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array3 = new Float32Array([-0.25, 0.75, -0.75, 0.0, 0.75, 0.25, -0.5, -0.75, 0.25, -0.25, 0.5, -0.25, -0.25, -0.75, -1.0, -1.0, 0.5, -1.0, 0.75, -1.0, -0.25, 0.0, 0.0, 0.0, 0.25, 1.0, 0.25, -1.0, -0.5, -0.5, -0.25, 1.0, 0.75, -0.25, 0.0, -0.25, 1.0, 0.0, 0.75, -1.0, 0.75, 0.5, 0.0, 0.75, -1.0, -0.25, 0.0, -0.25, -0.25, 1.0, 1.0, 0.5, 0.5, 0.5, 0.75, 0.25, 0.0, -0.25, -1.0, -0.75, 1.0, -0.25, -0.75, 0.75, -0.5, -0.75, -1.0, 0.5, -0.5, -1.0, 0.75, -0.5, 0.25, 0.5, 1.0, -1.0, 0.25, -0.75, 0.5, -0.75, -0.75, -0.75, 0.5, 0.0, 0.5, -0.75, -0.25, -0.5, 0.25, 0.5, 0.75, 0.75, 0.5, -0.75, -1.0, 0.25, 0.75, -0.25, 0.5, 0.5, ]);
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
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    const array4 = new Float32Array([-0.5, 0.5, 1.0, -1.0, 0.0, -0.75, 0.0, 0.75, 0.25, -0.75, 0.5, -0.25, -0.75, -0.25, 0.5, 0.25, 0.5, -0.75, -0.25, 1.0, -0.5, -0.5, 1.0, -0.25, 0.75, 0.5, 0.0, -0.5, -1.0, 0.25, -0.75, -0.75, 1.0, 0.0, 0.5, 1.0, 0.5, -0.25, -1.0, -0.75, 0.0, 0.0, -0.5, -1.0, -0.5, -0.25, -0.75, -0.25, 0.5, 0.75, -0.75, 0.25, 0.25, 0.25, 0.0, -0.5, 0.25, 0.75, -1.0, 0.25, -0.25, -0.25, 0.0, -0.75, 1.0, 0.0, 0.25, 0.5, 0.25, 0.25, -1.0, 0.5, -0.75, 0.25, -0.25, 1.0, 0.5, 0.0, -1.0, -1.0, 0.5, 0.25, 0.0, 1.0, -0.75, 1.0, 0.0, 0.0, 0.0, 0.5, 0.25, 0.5, 1.0, 0.25, 0.0, 0.75, -0.25, 0.75, -0.5, 0.75, ]);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device40.pushErrorScope("internal");
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("validation");
    device30.destroy();
    
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device20.pushErrorScope("internal");
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
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
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const array5 = new Float32Array([0.25, -0.5, -1.0, 0.25, -0.25, 0.5, 0.5, -0.5, 1.0, 0.5, -1.0, -1.0, -1.0, 0.25, -0.25, 0.0, -0.75, 0.5, -0.75, 0.75, 0.5, -0.5, 0.75, -1.0, 0.0, 0.75, -0.75, -0.75, 0.0, 0.25, 0.0, 0.0, 0.75, 0.5, -0.25, 0.25, 0.0, -1.0, 0.75, 1.0, 0.5, 0.25, -0.5, -0.5, -1.0, 0.75, 1.0, -0.25, 0.5, 0.75, -0.25, -0.75, -0.5, 1.0, -0.25, 0.5, -1.0, -0.5, 0.75, 1.0, -0.75, -1.0, -0.75, 0.75, -1.0, 0.0, 1.0, -0.5, 0.25, 0.75, 0.5, -0.25, -0.25, -0.75, -1.0, 0.25, -0.75, 1.0, 0.75, 0.25, 0.0, -0.75, 0.5, -0.5, -0.25, -1.0, -0.5, 0.5, 0.5, -0.75, -0.25, -0.5, 0.0, 0.75, 0.5, -1.0, -0.5, -0.75, 0.0, 0.0, ]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    texture200.destroy();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    command_encoder200.insertDebugMarker("mymarker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    
    
    
    command_encoder201.popDebugGroup()
    
    command_encoder400.popDebugGroup()
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    texture201.destroy();
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_buffer401 = command_encoder401.finish();
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    command_encoder400.pushDebugGroup("mygroupmarker")
    command_encoder204.pushDebugGroup("mygroupmarker")
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    command_encoder204.insertDebugMarker("mymarker");
    command_encoder400.insertDebugMarker("mymarker");
    
    command_encoder202.insertDebugMarker("mymarker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder204.popDebugGroup()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    device40.pushErrorScope("out-of-memory");
    command_encoder201.pushDebugGroup("mygroupmarker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array6 = new Float32Array([-1.0, 0.0, 1.0, -0.5, -0.75, -0.75, 0.0, -1.0, -1.0, -0.5, 0.5, 0.0, 1.0, -1.0, -0.5, 0.5, -0.75, 0.0, 1.0, -0.25, -0.5, -0.75, -1.0, 0.5, 0.75, -0.5, 0.25, -1.0, -0.25, 0.5, -0.5, -1.0, 0.5, -0.75, 0.25, 0.75, -0.25, -0.75, 0.75, 0.25, 1.0, -0.5, -0.5, 0.75, 0.5, -1.0, 0.0, 1.0, -0.5, -1.0, 1.0, -0.25, 0.75, 0.5, 0.75, -0.75, 0.25, 0.75, 0.5, 0.75, 0.25, 0.5, -0.25, -0.25, -0.75, -0.5, 0.25, 0.0, -1.0, 0.75, 0.0, -0.25, 1.0, 0.5, 0.25, -0.25, -0.5, -0.25, -0.5, -0.25, 0.75, -1.0, -0.75, 1.0, -1.0, -0.25, 0.75, 0.5, -0.75, 1.0, -1.0, 1.0, -0.5, 0.25, -1.0, 0.25, 0.25, 0.5, -0.5, -0.75, ]);
    const command_buffer204 = command_encoder204.finish();
    const command_buffer203 = command_encoder203.finish();
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder400.insertDebugMarker("mymarker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    
    
    const command_buffer205 = command_encoder205.finish();
    command_encoder200.insertDebugMarker("mymarker");
    device20.pushErrorScope("out-of-memory");
    
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
    
    command_encoder201.popDebugGroup()
    const command_buffer201 = command_encoder201.finish();
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
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
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    command_encoder400.insertDebugMarker("mymarker");
    device60.destroy();
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
    const command_buffer403 = command_encoder403.finish();
    
    texture400.destroy();
    command_encoder402.insertDebugMarker("mymarker");
    
    
    
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
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    command_encoder402.pushDebugGroup("mygroupmarker")
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    command_encoder206.pushDebugGroup("mygroupmarker")
    device20.queue.submit([command_buffer201, command_buffer205, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    command_encoder402.popDebugGroup()
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder400.insertDebugMarker("mymarker");
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
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder404.insertDebugMarker("mymarker");
    command_encoder206.popDebugGroup()
    command_encoder206.pushDebugGroup("mygroupmarker")
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    texture401.destroy();
    command_encoder404.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    device40.pushErrorScope("validation");
    command_encoder404.insertDebugMarker("mymarker");
    const array7 = new Float32Array([1.0, -0.25, -0.5, 0.25, 0.5, 1.0, -0.75, -0.75, 0.0, 1.0, -0.5, 1.0, -0.25, 0.0, 0.25, 1.0, 0.5, -0.25, 0.75, -0.25, -0.75, 0.0, 0.75, -1.0, 0.0, -0.5, 0.5, 1.0, 0.5, -0.25, 0.5, -0.75, 0.25, -0.25, 0.0, -0.25, 0.0, 0.75, -0.5, 0.25, -0.75, 0.75, 0.75, -0.25, 1.0, -0.5, 0.75, 0.25, -0.5, -0.25, 0.75, 0.25, 0.0, -0.25, 0.5, 0.5, 0.25, 0.0, 0.5, -0.25, 0.75, 0.75, 0.5, 1.0, 1.0, -0.75, 0.5, -1.0, -0.75, -0.5, 0.25, 0.25, -0.5, -0.25, 0.5, 0.75, 1.0, 1.0, -1.0, 0.25, -1.0, -0.25, -1.0, -0.75, -1.0, -0.25, 0.25, -1.0, 0.0, 1.0, -0.75, 0.25, 0.75, 1.0, -0.25, -0.25, -0.5, 0.5, 0.75, -0.5, ]);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.destroy();
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder404.insertDebugMarker("mymarker");
    
    render_bundle_encoder402.insertDebugMarker("marker");
    command_encoder206.insertDebugMarker("mymarker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    command_encoder400.insertDebugMarker("mymarker");
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
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
    command_encoder404.insertDebugMarker("mymarker");
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
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    command_encoder402.insertDebugMarker("mymarker");
    command_encoder206.popDebugGroup()
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer206 = command_encoder206.finish();
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.queue.submit([command_buffer403, ]);
    
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
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
    device20.queue.submit([command_buffer206, ]);
    
    
    const array8 = new Float32Array([0.75, 0.25, -0.5, -0.25, 0.5, -0.25, -0.25, -0.5, 0.0, 0.5, 0.0, 1.0, -0.25, -0.25, 0.0, 0.5, -1.0, 0.5, 0.0, 0.25, 0.25, 0.75, -0.75, 0.5, -1.0, -1.0, -1.0, 0.0, -0.5, 0.25, 1.0, 0.75, 0.5, -0.75, 1.0, 0.0, -0.75, -0.5, 1.0, -0.25, 0.0, -1.0, -0.5, 0.5, -0.5, 0.75, 1.0, 0.0, 0.5, 0.0, -1.0, 0.25, 0.75, -0.5, 0.5, -0.5, -0.25, 0.75, -1.0, -0.75, -0.5, -0.25, 0.5, -1.0, 0.75, -1.0, 1.0, 0.0, 1.0, 0.5, -0.25, -1.0, 0.25, -0.5, -0.5, 1.0, -0.5, -0.25, -1.0, 0.0, -0.25, 1.0, 0.25, 0.0, -0.25, -0.25, -0.5, -0.5, -1.0, -0.25, -1.0, 0.0, -0.75, -1.0, 0.0, 1.0, 0.5, 0.75, 0.25, -0.75, ]);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.pushErrorScope("validation");
    command_encoder405.insertDebugMarker("mymarker");
    
    
    
    
    const command_buffer402 = command_encoder402.finish();
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
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
    command_encoder200.insertDebugMarker("mymarker");
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    command_encoder400.popDebugGroup()
    render_bundle_encoder701.insertDebugMarker("marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device80.destroy();
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device70.destroy();
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
    
    
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
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
    device40.queue.submit([command_buffer402, ]);
    command_encoder202.popDebugGroup()
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder200.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder400.insertDebugMarker("mymarker");
    
    command_encoder405.pushDebugGroup("mygroupmarker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer200, ]);
    
    
    command_encoder406.insertDebugMarker("mymarker");
    device40.queue.submit([command_buffer401, ]);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    command_encoder202.insertDebugMarker("mymarker");
    device20.queue.writeTexture({ texture: texture202 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    render_bundle_encoder401.insertDebugMarker("marker");
    texture202.destroy();
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    
    
    
    
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.pushErrorScope("validation");
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    device20.queue.writeTexture({ texture: texture203 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.destroy();
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    command_encoder406.insertDebugMarker("mymarker");
    
    command_encoder202.insertDebugMarker("mymarker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module4010_code = "";
    try {
        shader_module4010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4010 = await device40.createShaderModule({ label: "shader_module4010", code: shader_module4010_code })
    
    render_bundle_encoder202.insertDebugMarker("marker");
    device100.destroy();
    texture403.destroy();
    
    
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    
    texture203.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    command_encoder404.popDebugGroup()
    
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder400.insertDebugMarker("mymarker");
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    var shader_module4011_code = "";
    try {
        shader_module4011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4011 = await device40.createShaderModule({ label: "shader_module4011", code: shader_module4011_code })
    command_encoder405.popDebugGroup()
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    texture404.destroy();
    command_encoder406.pushDebugGroup("mygroupmarker")
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
    const command_buffer207 = command_encoder207.finish();
    
    
    var shader_module4012_code = "";
    try {
        shader_module4012_code = await fs.readFile(__dirname + '/shader_module4012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4012 = await device40.createShaderModule({ label: "shader_module4012", code: shader_module4012_code })
    
    
    
    
    
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module4013_code = "";
    try {
        shader_module4013_code = await fs.readFile(__dirname + '/shader_module4013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4013 = await device40.createShaderModule({ label: "shader_module4013", code: shader_module4013_code })
    
    const command_buffer202 = command_encoder202.finish();
    command_encoder406.popDebugGroup()
    
    texture402.destroy();
    
    
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder400.insertDebugMarker("mymarker");
    
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    const command_buffer405 = command_encoder405.finish();
    device20.queue.submit([command_buffer202, ]);
    
    
    
    const texture_view4051 = texture405.createView({ label: "texture_view4051" });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    var shader_module4014_code = "";
    try {
        shader_module4014_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4014 = await device40.createShaderModule({ label: "shader_module4014", code: shader_module4014_code })
    command_encoder400.popDebugGroup()
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    
    
    const render_bundle_encoder1102 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module4015_code = "";
    try {
        shader_module4015_code = await fs.readFile(__dirname + '/shader_module4015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4015 = await device40.createShaderModule({ label: "shader_module4015", code: shader_module4015_code })
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    command_encoder404.insertDebugMarker("mymarker");
    
    
    
    
    device20.queue.submit([command_buffer207, ]);
    render_bundle_encoder1102.insertDebugMarker("marker");
    device110.destroy();
    
    
    
    var shader_module4016_code = "";
    try {
        shader_module4016_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4016 = await device40.createShaderModule({ label: "shader_module4016", code: shader_module4016_code })
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, command_buffer405, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer406 = command_encoder406.finish();
    const command_buffer404 = command_encoder404.finish();
    device40.queue.submit([command_buffer404, command_buffer406, ]);
}