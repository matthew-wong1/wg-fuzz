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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    device00.destroy();
    
    
    const array0 = new Float32Array([0.5, -1.0, 0.5, -0.5, 0.5, 0.0, 0.25, -0.5, -0.5, -0.5, -0.25, 1.0, -0.75, 0.75, 0.0, 0.5, 0.5, 0.5, -1.0, -0.25, 1.0, 0.75, -1.0, -0.5, 0.25, 0.5, -0.5, 0.5, -0.75, 0.0, -0.5, -0.25, 0.25, 1.0, -1.0, -1.0, -0.25, 0.75, 0.5, -0.5, 1.0, 0.25, -0.25, 0.5, -0.5, 0.5, 0.75, 0.75, -0.25, -0.5, -0.5, 0.75, -0.25, -0.25, 0.75, -0.5, -0.5, -0.25, 0.25, 0.0, 0.25, -0.25, -0.5, -1.0, -0.5, 0.75, 0.75, 1.0, -0.75, 1.0, 0.25, -0.75, 0.5, -0.75, -0.75, -0.75, -0.5, 1.0, 0.0, -1.0, 0.75, -0.75, 0.5, -0.5, 1.0, -0.25, -0.75, -1.0, -1.0, -1.0, -0.75, 1.0, -0.5, 0.75, 1.0, 0.75, -0.25, 0.25, 0.75, 0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("validation");
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    const command_buffer100 = command_encoder100.finish();
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer200.destroy()
    
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16uint",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device10.pushErrorScope("validation");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8uint",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
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
    command_encoder201.insertDebugMarker("mymarker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    render_bundle_encoder200.popDebugGroup();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    buffer201.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    
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
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    device30.destroy();
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_buffer202 = command_encoder202.finish();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
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
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([0.5, -0.5, -0.75, 0.25, -0.25, 0.5, 1.0, 0.75, 0.0, -0.75, -0.75, 0.25, 0.5, -0.75, 0.75, 0.75, 0.5, 1.0, 0.75, -0.5, -1.0, -0.75, 1.0, -0.5, 1.0, -0.5, 0.0, 0.75, 0.5, -0.25, 0.25, 1.0, 1.0, 0.75, -0.25, 0.75, 0.5, 0.75, -0.25, 0.75, 0.75, 0.5, 0.0, -1.0, 0.25, 1.0, 0.75, 1.0, 0.5, 0.5, 0.25, -0.75, 1.0, 0.0, -1.0, 1.0, -0.75, 0.0, 1.0, 0.5, -0.25, -1.0, -0.75, -0.5, 0.5, 0.25, 0.75, -1.0, -1.0, 0.25, -0.25, 0.0, -0.5, 0.25, 0.75, 1.0, 0.5, 0.25, -1.0, -0.25, 1.0, -0.5, -1.0, -0.75, -0.75, -0.5, 0.0, -0.25, 1.0, 0.75, 0.25, -0.5, 1.0, -0.75, 0.25, -0.5, 0.0, 0.75, 1.0, 0.5, ]);
    
    device10.pushErrorScope("validation");
    render_pass_encoder1020.setStencilReference(1);
    buffer101.destroy()
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    texture100.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder203.insertDebugMarker("mymarker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    const command_buffer203 = command_encoder203.finish();
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    texture201.destroy();
    render_pass_encoder1020.executeBundles([])
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
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder1020.executeBundles([])
    
    command_encoder103.insertDebugMarker("mymarker");
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const array2 = new Float32Array([-0.5, 0.75, -0.5, -0.5, 0.25, 0.25, -0.75, -0.5, 0.75, 0.5, -0.25, 0.75, 1.0, 0.25, 0.0, 1.0, 1.0, 0.75, 1.0, -0.5, 1.0, -0.75, -1.0, 0.75, -0.25, 0.75, 1.0, 0.5, -0.5, 0.75, 1.0, 1.0, -1.0, -1.0, 0.25, -1.0, 0.0, 0.0, 0.0, -0.5, -1.0, 0.75, -0.5, -0.5, 0.75, 1.0, 0.0, -0.5, 1.0, -0.5, 1.0, -0.25, -0.25, -0.25, 0.0, -0.75, 1.0, -0.25, -0.25, -0.25, 0.0, 1.0, -0.25, 0.0, -0.25, -0.75, -0.25, 0.5, -1.0, -0.75, -0.5, -0.5, 0.75, -0.25, -0.5, -0.5, -1.0, 0.75, -1.0, 0.25, 0.25, -0.5, 0.25, 0.0, 0.5, 0.25, 1.0, 0.5, -0.5, 0.5, 0.25, -0.5, 0.25, 0.25, -1.0, -0.75, -1.0, -0.5, 0.25, 1.0, ]);
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    texture202.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2000.setStencilReference(1);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder205.insertDebugMarker("mymarker");
    
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    command_encoder204.insertDebugMarker("mymarker");
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1040.executeBundles([])
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2070.executeBundles([])
    render_bundle_encoder202.popDebugGroup();
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder2070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2060.setStencilReference(1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder2000.setStencilReference(1);
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    device40.pushErrorScope("internal");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.popDebugGroup();
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder2070.executeBundles([])
    render_pass_encoder1020.popDebugGroup();
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder2040.pushDebugGroup("group_marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
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
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1050.executeBundles([])
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    texture200.destroy();
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
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
    const array3 = new Float32Array([0.75, 0.5, 1.0, 0.25, -1.0, -0.5, 0.0, 1.0, 0.75, -1.0, -0.25, 1.0, 0.5, 0.75, -0.75, 0.5, -0.5, 0.0, -0.75, -0.75, -0.75, -0.75, 1.0, -0.25, 0.75, -1.0, 1.0, -0.5, 0.25, 0.75, -0.25, 0.75, -1.0, -0.75, 1.0, -1.0, -0.5, -0.25, 1.0, 1.0, -1.0, 0.0, -0.5, 0.0, -0.5, -1.0, -0.75, 0.25, -0.25, 0.75, -1.0, 1.0, 1.0, -0.5, -0.25, -0.5, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, 0.0, 0.75, 1.0, 0.0, 0.75, -0.5, -1.0, 1.0, -0.25, 0.75, 0.25, 0.25, -0.5, 0.75, -0.25, 1.0, 0.25, 0.0, -0.25, 0.5, 0.5, -1.0, 0.75, 0.75, -0.5, 0.75, 0.25, -0.75, 0.25, 0.75, -0.5, -0.75, -1.0, 0.0, 0.5, -1.0, 0.0, -0.25, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    render_pass_encoder2060.executeBundles([])
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder2060.executeBundles([])
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2040.setStencilReference(1);
    device50.destroy();
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
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
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer103.destroy()
    render_pass_encoder1030.setStencilReference(1);
    
    const array4 = new Float32Array([0.0, 0.5, -0.25, 1.0, 1.0, -0.25, 0.5, -1.0, 0.0, -1.0, 1.0, 0.75, 1.0, 1.0, 0.75, 0.5, -0.25, 0.0, -0.75, 0.0, -0.5, -0.75, -0.5, -1.0, 0.75, 1.0, -0.5, -1.0, 0.5, 1.0, 1.0, -0.5, -0.25, 0.25, 0.25, -0.25, -1.0, 0.25, 0.0, -0.5, 0.25, 0.25, 0.25, -0.25, 0.5, -0.25, 1.0, 0.0, -1.0, -0.5, 0.75, -0.5, 0.5, 0.25, -0.5, -0.75, -0.5, 0.75, 0.75, 0.25, -0.75, -0.25, 0.75, 0.75, 0.25, 0.75, 0.0, 0.25, 0.5, 0.0, -0.5, -0.5, 0.75, 0.5, -1.0, -0.25, 0.5, 0.5, -0.75, 0.0, 0.75, 0.75, -0.75, -1.0, -0.75, -0.25, 1.0, 0.75, 0.75, -0.25, 0.25, -1.0, 0.25, -1.0, 0.0, 1.0, 0.75, -0.75, 0.0, 0.0, ]);
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
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    command_encoder401.insertDebugMarker("mymarker");
    compute_pass_encoder2050.insertDebugMarker("marker")
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder100.popDebugGroup();
    const command_buffer208 = command_encoder208.finish();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_bundle_encoder401.popDebugGroup();
    
    render_bundle_encoder400.popDebugGroup();
    
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder2000.popDebugGroup();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const command_encoder209 = device20.createCommandEncoder({ label: "command_encoder209" });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2090 = command_encoder209.beginRenderPass({
        label: "render_pass_encoder2090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    texture102.destroy();
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2090.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_pass_encoder2090.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1050.executeBundles([])
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.setStencilReference(1);
    
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2040.popDebugGroup();
    buffer100.destroy()
    render_pass_encoder2090.executeBundles([])
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder2070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_pass_encoder1020.executeBundles([])
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2050.insertDebugMarker("marker")
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.popDebugGroup();
    
    render_pass_encoder1050.pushDebugGroup("group_marker");
    device20.pushErrorScope("out-of-memory");
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture204.destroy();
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
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2090.setStencilReference(1);
    
    render_pass_encoder1040.setStencilReference(1);
    render_bundle_encoder401.popDebugGroup();
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder2090.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.popDebugGroup();
    
    render_pass_encoder1030.popDebugGroup();
    texture101.destroy();
    
    render_pass_encoder2060.executeBundles([])
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture208 = device20.createTexture({
        label: "texture208",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.executeBundles([])
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const texture_view2080 = texture208.createView({ label: "texture_view2080" });
    render_pass_encoder1030.executeBundles([])
    
    
    
    texture205.destroy();
    
    
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.submit([command_buffer100, ]);
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    render_bundle_encoder201.popDebugGroup();
    const command_encoder2010 = device20.createCommandEncoder({ label: "command_encoder2010" });
    render_pass_encoder1050.executeBundles([])
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    texture103.destroy();
    render_pass_encoder2090.setStencilReference(1);
    
    render_pass_encoder2090.executeBundles([])
    
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder20100 = command_encoder2010.beginRenderPass({
        label: "render_pass_encoder20100",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2080,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1050.beginOcclusionQuery(0)
    render_bundle_encoder402.popDebugGroup();
    render_pass_encoder20100.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer202.destroy()
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder2090.executeBundles([])
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder20100.setScissorRect(0, 0, texture208.width / 2, texture208.height / 2);
    
    
    
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder20100.setStencilReference(1);
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    render_pass_encoder20100.executeBundles([])
    render_pass_encoder2070.pushDebugGroup("group_marker");
    render_pass_encoder2040.setStencilReference(1);
    const sampler105 = device10.createSampler( { label: "sampler105" } );
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
    
    
    
    render_pass_encoder2090.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.executeBundles([])
    const texture209 = device20.createTexture({
        label: "texture209",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.executeBundles([])
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const texture_view2081 = texture208.createView({ label: "texture_view2081" });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder2090.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture_view2082 = texture208.createView({ label: "texture_view2082" });
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
    const texture_view2033 = texture203.createView({ label: "texture_view2033" });
    
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
    compute_pass_encoder2050.insertDebugMarker("marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
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
    render_pass_encoder20100.setScissorRect(0, 0, texture208.width / 2, texture208.height / 2);
    const array5 = new Float32Array([0.5, -0.75, 1.0, 0.0, -1.0, 0.75, 0.0, 0.5, -0.75, 0.0, 0.0, 0.75, 1.0, -0.75, 0.25, -1.0, -0.75, -0.75, 1.0, 0.75, 0.75, -0.5, -0.25, 0.25, -0.5, -1.0, 0.5, 0.5, -1.0, 0.0, -1.0, -0.25, -0.75, -0.75, -1.0, 1.0, 0.25, 1.0, -0.25, -0.75, -0.5, 1.0, -0.25, 0.75, -0.25, 0.75, 0.25, 0.75, 0.25, 0.75, 0.25, 0.75, -0.25, -0.5, 1.0, 1.0, -0.25, 0.75, -0.25, 0.25, 1.0, 0.0, 0.0, -0.75, 0.75, -0.5, 0.25, 0.0, 0.5, -0.5, 1.0, -0.75, -0.25, 1.0, 1.0, -0.5, -0.25, -1.0, -0.25, 1.0, -0.75, 0.75, -0.25, 0.0, -0.5, 1.0, -0.75, -0.25, -0.25, -0.25, 0.25, -0.5, -1.0, -0.25, 0.25, -1.0, 1.0, -0.25, -0.75, 0.0, ]);
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder20100.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer401.destroy()
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    render_pass_encoder1040.executeBundles([])
    
    
    texture206.destroy();
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    
    
    
    device10.queue.writeTexture({ texture: texture104 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2050.insertDebugMarker("marker")
    
    render_pass_encoder2040.pushDebugGroup("group_marker");
    render_pass_encoder1040.popDebugGroup();
    buffer400.destroy()
    render_pass_encoder1050.beginOcclusionQuery(1)
    
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_pass_encoder2090.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture_view2090 = texture209.createView({ label: "texture_view2090" });
    render_pass_encoder1050.executeBundles([])
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    texture401.destroy();
    render_pass_encoder20100.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.pushErrorScope("out-of-memory");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_pass_encoder2060.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2000.executeBundles([])
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder1050.executeBundles([])
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
    
    
    
    buffer102.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2090.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2040.popDebugGroup();
    device20.queue.submit([command_buffer208, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
}