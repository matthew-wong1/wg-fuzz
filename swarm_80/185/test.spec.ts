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
    const array0 = new Float32Array([1.0, 0.75, 0.0, 0.0, 0.75, -0.75, -0.5, -0.75, 0.25, -0.5, 1.0, 0.25, -0.5, 0.0, -0.25, -0.5, -0.25, 0.25, 0.25, -1.0, -0.25, -1.0, 0.5, 1.0, 0.25, -1.0, 0.5, 0.5, 0.5, -0.5, 0.25, 0.25, 0.75, 1.0, -0.25, -0.25, 0.5, 0.0, -0.25, 0.0, 1.0, 0.0, 0.25, -0.25, 0.25, 0.0, 0.5, -0.5, -0.75, 0.0, -0.5, -0.75, 0.0, 0.25, -0.75, -0.25, 0.75, 0.25, 1.0, 1.0, -0.25, -1.0, 0.5, 1.0, -0.25, -0.25, -0.25, -0.5, -0.75, 0.5, 0.75, 0.5, 1.0, -0.25, 0.75, -0.25, 0.5, -0.75, -0.5, 0.0, 0.5, 0.25, 1.0, -0.75, -1.0, 0.25, 0.75, 1.0, -0.75, -0.5, 0.5, -1.0, -0.75, 0.5, 0.25, 0.75, -1.0, -1.0, -1.0, 0.75, ]);
    const array1 = new Float32Array([0.5, 0.75, 0.0, -1.0, -0.5, -0.75, -0.5, 0.5, 0.75, -0.75, 1.0, 0.75, -1.0, -0.75, -0.5, -0.25, 1.0, 0.25, 1.0, -0.5, -0.75, 0.75, 0.0, -0.5, -1.0, -0.5, -1.0, 0.25, 0.5, 0.5, 0.5, 1.0, -0.25, 0.25, -0.5, -0.25, -0.75, -0.5, 1.0, 0.75, 0.5, 1.0, -0.5, 1.0, -0.75, -0.25, 1.0, 0.25, -0.5, 1.0, -0.5, -0.75, 0.5, 0.75, 1.0, -0.5, 0.75, -1.0, -0.75, -0.5, 0.5, 0.75, 1.0, -0.5, 0.25, 0.75, 0.0, 0.5, 0.0, -0.25, -0.25, -1.0, 1.0, 0.5, 0.25, 0.5, 0.5, 0.5, -0.25, -1.0, 1.0, 0.0, 0.25, 0.75, 0.25, -0.25, 0.75, 0.75, 0.75, 0.75, -0.5, 0.5, 0.5, 0.25, -1.0, -0.5, 1.0, 0.5, -1.0, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([0.5, 0.75, 0.5, 0.25, -1.0, 0.75, 0.75, -0.5, 0.25, 0.5, -0.5, -1.0, -1.0, 0.75, 0.0, 0.75, -0.5, 0.5, 0.0, 0.25, 0.25, -1.0, -0.25, 0.75, -0.5, 0.25, 0.75, -0.75, 0.75, 0.25, 0.25, 0.75, 0.0, 1.0, 0.5, 0.75, 0.75, 0.75, -0.5, 0.75, 0.0, -0.75, 1.0, -1.0, 0.5, -0.25, 1.0, -0.25, 0.0, -0.75, 0.0, -0.75, -1.0, -0.25, -0.5, -0.75, -1.0, -1.0, 0.5, 1.0, 0.25, 0.5, 0.0, -0.5, 0.5, -1.0, 0.75, 1.0, 0.25, 0.0, 0.5, 0.25, 0.5, 0.0, 0.5, 0.5, -1.0, -1.0, 1.0, -0.25, -0.5, 0.5, 0.0, -0.25, 0.25, -0.5, 0.5, 0.75, 0.25, -0.5, -0.5, 1.0, 0.0, 1.0, 1.0, 0.75, 0.0, 0.0, -1.0, -0.75, ]);
    
    const array3 = new Float32Array([-1.0, 0.5, -1.0, -0.5, 1.0, 1.0, -0.75, -1.0, 0.75, 0.0, -0.5, 0.25, -0.25, 0.0, -1.0, 0.5, 0.75, -0.75, 1.0, -0.25, -1.0, 0.0, 0.25, -0.5, 1.0, 0.0, -0.75, 0.0, 0.0, -0.25, 0.25, 0.5, 1.0, 1.0, 0.25, -0.75, -0.75, 0.75, -0.75, 0.5, 0.0, 0.5, 1.0, -0.5, 0.25, -0.25, -0.5, 0.5, 0.5, -0.25, -1.0, 0.75, -1.0, 0.25, -0.75, -0.75, 0.75, 0.0, -1.0, 1.0, -1.0, 0.0, -1.0, 0.25, 0.25, 0.75, 0.0, -0.25, -0.5, 0.75, -0.25, 0.0, 0.5, -1.0, 0.75, -1.0, -0.75, -1.0, 0.5, 0.25, -0.25, 1.0, -0.75, 0.75, 0.25, 0.75, 0.75, 0.5, 0.5, -0.5, 0.0, 1.0, -1.0, 0.0, 0.0, -1.0, 0.5, -0.75, 1.0, 0.0, ]);
    
    const array4 = new Float32Array([0.5, 0.0, 0.25, 0.25, 0.0, -1.0, 0.5, 1.0, -0.75, 0.75, -1.0, -0.25, 0.75, 0.75, -0.75, -1.0, -0.25, 0.0, 0.5, 1.0, -0.25, 0.25, -0.5, -1.0, -0.75, 0.25, -1.0, -0.25, 0.75, 0.0, 0.25, -0.25, 0.5, -0.75, -0.75, 0.0, -1.0, 0.5, -0.25, 0.25, -1.0, 0.75, -0.25, 0.75, 0.0, -0.5, -1.0, 0.5, 0.25, -0.75, 0.75, -1.0, 0.0, -0.5, 0.5, 0.5, 0.75, 0.0, 1.0, -1.0, -1.0, 0.25, 0.0, 0.25, 0.5, 0.25, 0.75, 1.0, -0.5, -0.25, -0.75, 0.75, 0.0, 0.75, 0.25, 0.5, -0.75, -0.75, -0.75, 0.5, -0.25, 1.0, 0.25, -0.25, 0.75, 0.0, -1.0, 0.0, 0.25, -0.75, 0.25, 1.0, 0.5, -0.25, 0.5, -0.5, 0.0, 0.25, 0.0, 0.75, ]);
    
    
    
    const array5 = new Float32Array([0.75, -0.75, 0.25, 0.75, -0.75, -1.0, -1.0, -0.25, 0.25, -0.5, 0.5, 0.0, 0.75, -0.75, 0.25, 1.0, 0.5, 0.5, 0.0, 0.25, -0.75, 0.75, 1.0, 1.0, -0.25, 0.0, -0.75, 0.75, 0.5, 1.0, 0.5, 0.25, 0.25, -0.5, -0.75, -0.25, 1.0, 1.0, -0.25, -0.25, -1.0, -0.5, -0.5, 1.0, 0.5, -1.0, 0.25, -0.75, 0.5, 0.0, 0.25, 0.25, 0.75, -0.75, 0.5, 0.25, 0.0, 0.25, 0.5, -1.0, 1.0, 0.75, -0.25, -1.0, -0.25, -0.75, -0.25, -0.5, 0.5, 0.0, 1.0, 0.0, -0.25, -0.25, 0.75, 0.25, 1.0, 0.0, -0.75, -1.0, 0.75, 0.75, 0.75, 0.75, 0.75, 0.0, 0.5, -0.25, 0.5, -0.75, 0.25, -1.0, 0.5, 0.5, 0.25, -0.5, -0.5, 0.25, 0.5, 1.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array6 = new Float32Array([-0.25, -1.0, 0.75, -0.75, -0.75, 0.75, 0.0, -0.75, 0.0, -0.75, -0.25, -0.25, -0.5, -0.5, 1.0, 0.25, -0.25, 0.75, 1.0, -0.25, -0.75, -0.25, -0.5, -1.0, 0.0, -0.75, 0.0, -0.25, 0.5, 0.25, 0.0, 0.5, 0.0, -0.75, -1.0, -0.25, 0.0, -0.25, 1.0, 0.25, -0.25, 0.5, 0.75, 0.0, 0.0, 0.75, -0.25, 0.0, 0.0, 0.0, 1.0, -1.0, 0.0, 0.0, 0.25, -1.0, -1.0, -1.0, 0.5, -0.75, 1.0, -0.75, -0.75, 0.75, -1.0, -0.75, 0.25, -0.5, 1.0, 0.0, -0.25, 0.75, 0.5, -0.75, 1.0, 0.25, 1.0, 0.75, 0.5, -1.0, -0.75, 0.5, 1.0, -0.75, -0.25, 1.0, 0.5, -1.0, 0.25, -0.75, -0.75, 0.25, 0.0, 0.5, 0.0, -1.0, -1.0, 0.5, 0.75, 0.25, ]);
    
    device00.pushErrorScope("validation");
    
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("out-of-memory");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device40.pushErrorScope("validation");
    query000.destroy()
    query400.destroy()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    device00.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device10.pushErrorScope("internal");
    
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
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
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const array7 = new Float32Array([0.75, 0.0, 1.0, -0.5, -1.0, 0.75, 1.0, 0.25, -0.25, 0.0, 0.75, 0.0, -0.5, -0.5, -0.5, 1.0, -0.25, 0.25, 0.75, -0.75, 0.25, -0.75, 0.5, 1.0, 1.0, 0.5, 0.0, 0.25, 1.0, -0.25, 0.75, 0.75, 0.75, 0.0, 0.0, 0.75, 0.25, 0.25, -0.75, 0.0, -0.25, -0.75, -0.5, 0.25, 0.25, 0.5, 0.5, 0.5, 0.5, 0.0, 1.0, 1.0, -1.0, -0.5, 0.5, -0.75, 0.0, 0.0, 0.5, 0.0, -0.75, 0.25, -0.25, -0.25, -0.75, 0.25, -1.0, -0.75, 1.0, 1.0, 0.5, -0.75, -0.5, -0.75, -0.25, -1.0, -0.75, -1.0, 0.5, 0.5, 0.5, 1.0, -0.75, -1.0, -1.0, 0.25, -0.5, 0.75, 1.0, 0.5, 0.0, -0.75, 0.75, 0.0, 1.0, -0.25, -0.5, 0.25, 0.75, -0.25, ]);
    device10.pushErrorScope("validation");
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("out-of-memory");
    texture100.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder4000.insertDebugMarker("marker")
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder4000.popDebugGroup()
    command_encoder101.popDebugGroup()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.popDebugGroup();
    compute_pass_encoder4010.insertDebugMarker("marker")
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.pushDebugGroup("mygroupmarker")
    texture300.destroy();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device30.pushErrorScope("out-of-memory");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
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
    
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device40.pushErrorScope("validation");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
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
    
    texture400.destroy();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    render_bundle_encoder401.popDebugGroup();
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    texture302.destroy();
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    texture101.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const bind_group_layout406 = device40.createBindGroupLayout({ 
        label: "bind_group_layout406",
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
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder1000.popDebugGroup()
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
    
    query100.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout407 = device40.createBindGroupLayout({ 
        label: "bind_group_layout407",
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
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder102.popDebugGroup();
    texture301.destroy();
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    query102.destroy()
    device50.pushErrorScope("out-of-memory");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder4000.insertDebugMarker("marker")
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
    
    render_bundle_encoder301.popDebugGroup();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder400.popDebugGroup();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query102.destroy()
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const bind_group_layout408 = device40.createBindGroupLayout({ 
        label: "bind_group_layout408",
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
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder301.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device40.pushErrorScope("internal");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
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
    query102.destroy()
    
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
    query400.destroy()
    render_bundle_encoder102.popDebugGroup();
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder401.insertDebugMarker("marker");
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8uint",
        dimension: "2d"
    });
    
    query100.destroy()
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
    
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
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
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    query103.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder501.pushDebugGroup("mygroupmarker")
    render_bundle_encoder500.popDebugGroup();
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const sampler404 = device40.createSampler( { label: "sampler404" } );
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
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    query501.destroy()
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
    query103.destroy()
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder3000.popDebugGroup()
    query100.destroy()
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    query500.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    
    query400.destroy()
    
    
    texture203.destroy();
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    render_bundle_encoder300.insertDebugMarker("marker");
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
    render_bundle_encoder100.insertDebugMarker("marker");
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    texture200.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder500.insertDebugMarker("marker");
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
    device10.pushErrorScope("validation");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder100.popDebugGroup();
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    device50.pushErrorScope("validation");
    compute_pass_encoder4030.insertDebugMarker("marker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
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
    query501.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder4020.insertDebugMarker("marker")
    compute_pass_encoder2000.popDebugGroup()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query500.destroy()
    const bind_group_layout409 = device40.createBindGroupLayout({ 
        label: "bind_group_layout409",
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
    
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    query302.destroy()
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture201.destroy();
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
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder201.popDebugGroup();
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder5020.insertDebugMarker("marker")
    
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    
    render_bundle_encoder500.popDebugGroup();
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder2010.popDebugGroup()
    
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.popDebugGroup()
    render_bundle_encoder400.popDebugGroup();
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    query101.destroy()
    query200.destroy()
    render_bundle_encoder101.popDebugGroup();
    
    const bind_group_layout4010 = device40.createBindGroupLayout({ 
        label: "bind_group_layout4010",
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
    texture402.destroy();
    render_bundle_encoder501.insertDebugMarker("marker");
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    compute_pass_encoder4010.popDebugGroup()
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    compute_pass_encoder4030.insertDebugMarker("marker")
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    query200.destroy()
    compute_pass_encoder4040.insertDebugMarker("marker")
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.popDebugGroup();
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    render_bundle_encoder401.popDebugGroup();
    texture500.destroy();
    render_bundle_encoder102.insertDebugMarker("marker");
    
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder102.insertDebugMarker("marker");
    const array8 = new Float32Array([-1.0, -0.75, 1.0, 0.25, -0.25, 0.5, -0.75, 0.25, 1.0, -0.75, 0.0, 1.0, 1.0, 0.25, 0.25, -0.25, 0.5, 0.5, 1.0, -0.25, -0.75, 0.75, 1.0, -1.0, 0.25, 0.0, -0.75, 0.5, -0.75, 0.25, 1.0, -0.5, 0.75, -0.25, 0.5, 0.75, 1.0, 0.0, -0.25, -1.0, 0.5, 0.0, 0.75, 0.25, 0.0, 0.75, 0.25, -1.0, -0.75, 0.75, -0.75, 0.25, 0.5, 0.25, 0.5, 0.25, -0.25, 0.75, -0.5, 1.0, 0.0, -0.25, 1.0, -0.75, 0.25, 0.0, 0.75, 1.0, 0.25, 0.5, -0.5, -0.75, -1.0, -0.5, 0.25, -0.5, 0.75, 1.0, 0.5, -0.25, 0.0, 0.75, -0.5, 0.25, 0.25, -0.75, -0.25, -1.0, 0.25, 0.75, -1.0, -1.0, 1.0, 0.25, 0.25, -0.5, -1.0, 1.0, 0.25, 0.0, ]);
    texture600.destroy();
    
    query201.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder4040.popDebugGroup()
    compute_pass_encoder4030.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3010.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
}