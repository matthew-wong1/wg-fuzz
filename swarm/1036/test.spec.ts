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
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    texture000.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer100 = command_encoder100.finish();
    
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    const array0 = new Float32Array([0.75, -0.25, -1.0, -0.25, 1.0, 1.0, 1.0, 0.0, 0.25, 0.25, -1.0, -1.0, 1.0, 0.5, 1.0, 0.5, -0.25, -0.75, -0.75, 0.5, -1.0, -0.75, 1.0, -0.75, -0.25, 1.0, 0.5, -0.25, 0.5, 1.0, 0.5, -0.5, -0.75, -0.25, -0.25, 0.25, -1.0, 0.25, 0.5, 0.0, -0.75, 0.75, -0.25, -0.75, -1.0, 0.25, -0.75, -0.5, -0.5, -0.5, -0.5, 0.25, 0.75, -0.75, 0.75, 0.25, 0.5, 0.0, 0.0, -0.25, -0.25, 0.5, -1.0, -0.75, -0.25, -1.0, -0.75, -0.25, 0.0, 0.25, -1.0, 0.25, 0.25, 0.5, 0.0, 0.0, -0.25, 0.25, -0.75, 1.0, -1.0, 0.75, -0.25, 0.0, -0.75, -1.0, -0.75, 0.25, 0.25, -0.75, 0.25, -0.5, 0.25, -0.5, -0.75, -1.0, -0.25, 1.0, 1.0, 0.0, ]);
    
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    command_encoder101.copyBufferToBuffer(
        buffer100,
        0,
        buffer100,
        0,
        400
    );
    device10.pushErrorScope("internal");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    texture100.destroy();
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.popDebugGroup();
    
    
    const array1 = new Float32Array([-0.25, -0.5, 0.75, 0.75, -0.75, -0.25, 0.75, -0.75, -1.0, 1.0, -1.0, 1.0, -0.25, 0.5, 0.25, 0.75, 0.25, 0.0, 0.75, -0.5, -0.75, 0.25, -0.25, -0.75, -0.25, -0.5, 0.25, -0.75, 1.0, 1.0, 0.75, -1.0, 1.0, -0.25, 0.5, 1.0, 0.75, 0.75, 0.5, -0.25, 0.75, -0.75, 0.25, 0.5, 1.0, -0.25, 1.0, 0.0, 0.0, 0.25, -0.5, 0.0, 0.0, 0.25, -1.0, 0.75, 1.0, 0.5, 0.25, 1.0, -0.5, -0.75, 0.5, 0.75, -0.75, 1.0, -0.5, 0.25, 0.5, -0.75, -1.0, -0.25, -0.75, -0.5, 0.5, -0.5, -0.25, 1.0, -1.0, -0.75, -1.0, -0.5, 0.75, -1.0, 0.5, -1.0, 0.75, -1.0, 1.0, 0.5, 0.25, 0.75, 0.25, -0.75, -0.75, -0.25, 1.0, -1.0, 0.0, -0.5, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    render_bundle_encoder000.popDebugGroup();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const array2 = new Float32Array([1.0, -0.25, 0.0, 1.0, 0.0, -0.25, -1.0, -0.25, 0.25, -1.0, 1.0, 1.0, 0.75, 0.0, 0.5, 0.0, -1.0, -1.0, 1.0, 0.5, 0.75, 0.0, -0.75, -0.5, 1.0, -0.25, -0.5, -1.0, -0.5, 0.25, 0.25, 0.75, 1.0, -0.75, 1.0, 0.75, 0.0, 0.0, 1.0, 0.5, -0.5, 0.75, 0.75, 0.0, 0.0, -1.0, 1.0, -1.0, 0.25, -0.25, -0.25, -0.25, -0.25, -0.25, 0.75, -0.75, 0.75, 0.5, 0.25, -1.0, 0.0, 0.0, -1.0, 1.0, -1.0, -1.0, 0.75, 0.75, -0.5, -1.0, 1.0, 0.25, -0.25, 1.0, -1.0, 1.0, -0.75, 0.25, 0.75, 0.5, -0.25, 0.5, -0.25, -0.75, 1.0, 0.75, 1.0, 1.0, -0.75, 0.0, -1.0, 1.0, -1.0, -0.75, 1.0, 0.5, 0.5, -1.0, 0.25, -0.5, ]);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query000.destroy()
    device10.queue.submit([command_buffer100, ]);
    texture001.destroy();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    query100.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8snorm",
        dimension: "2d"
    });
    render_bundle_encoder102.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_buffer001 = command_encoder001.finish();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    query001.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder000.popDebugGroup();
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query100.destroy()
    render_bundle_encoder100.popDebugGroup();
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    device00.queue.submit([command_buffer001, ]);
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture102.destroy();
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
    command_encoder102.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    texture002.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    texture101.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_bundle_encoder102.popDebugGroup();
    
    device20.queue.submit([]);
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const array3 = new Float32Array([-1.0, 0.25, -0.75, 0.75, -0.75, -0.75, 0.25, -1.0, -0.25, -0.5, 0.75, -1.0, -1.0, 0.75, 0.75, -1.0, 0.5, 0.0, -1.0, -0.25, 0.0, 0.75, 0.5, -0.5, 0.5, -0.25, 1.0, 0.0, -0.75, -0.75, -0.25, -0.75, -0.25, 0.5, 0.0, 1.0, -0.25, 0.5, -1.0, 0.5, -0.25, 0.75, -0.25, -0.5, -0.25, -1.0, -1.0, 0.75, -1.0, -0.25, 0.5, -1.0, 0.0, 0.25, -0.25, 0.25, -0.25, -0.75, -0.25, 1.0, 0.25, 0.75, -0.75, -0.5, 0.5, 0.25, 0.5, 0.25, -0.75, -0.75, -0.5, 1.0, -0.25, -0.25, 0.25, 0.75, -1.0, 0.25, -0.25, 1.0, -0.5, 0.0, 0.25, -0.25, 0.75, 1.0, 0.75, -0.75, -0.75, -1.0, 1.0, -0.25, 0.75, -0.5, -0.5, 0.25, -0.25, -1.0, -0.25, -0.75, ]);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    render_bundle_encoder100.popDebugGroup();
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    query100.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    render_bundle_encoder101.popDebugGroup();
    const command_buffer200 = command_encoder200.finish();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
        powerPreference: "high-performance"
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
    device00.pushErrorScope("out-of-memory");
    query000.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.queue.submit([command_buffer200, ]);
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    query001.destroy()
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_pass_encoder1020.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture200.destroy();
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    query000.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.pushErrorScope("validation");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder201.copyBufferToTexture(
        {
            buffer: buffer200
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder102.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    compute_pass_encoder0000.popDebugGroup()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const command_buffer202 = command_encoder202.finish();
    
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    query200.destroy()
    command_encoder201.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    texture003.destroy();
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const array4 = new Float32Array([0.0, -0.75, 1.0, 0.5, 0.0, 0.25, 0.25, 0.75, 1.0, 0.5, 0.0, -0.75, -0.25, -0.75, 0.75, 0.0, 0.0, 1.0, -0.5, -0.5, 0.25, -1.0, -0.75, 0.75, 0.25, -1.0, 0.5, -0.25, 0.25, -0.5, 1.0, 1.0, 1.0, -0.25, -0.25, -1.0, 0.5, 1.0, 0.25, -0.75, -0.75, -0.75, 0.75, -0.25, 0.0, -0.5, 0.75, 0.75, 0.0, 0.25, 0.0, -0.5, 1.0, -1.0, 0.0, -0.25, 0.25, -0.5, -0.75, -0.5, 0.5, 1.0, 1.0, 1.0, 0.5, -0.75, 0.75, 1.0, 0.0, 0.5, 0.5, 0.0, 0.25, 0.0, -1.0, 0.0, -0.5, 0.75, -0.75, -0.75, 0.75, -0.5, 1.0, 0.0, 1.0, -1.0, 1.0, 1.0, -0.5, 0.5, -1.0, 0.0, 1.0, 0.25, -1.0, -0.75, -0.5, 0.25, -1.0, 0.75, ]);
    command_encoder203.copyBufferToTexture(
        {
            buffer: buffer200
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
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
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    render_pass_encoder1021.insertDebugMarker("marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    render_bundle_encoder100.popDebugGroup();
    
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query002.destroy()
    
    
    render_pass_encoder0000.insertDebugMarker("marker");
    
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.pushErrorScope("validation");
    
    
    
    compute_pass_encoder0000.popDebugGroup()
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder0000.insertDebugMarker("marker")
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    query001.destroy()
    
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1021.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    query100.destroy()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    query002.destroy()
    
    query101.destroy()
    device20.queue.submit([command_buffer202, ]);
    
    render_pass_encoder0000.insertDebugMarker("marker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    
    render_bundle_encoder103.pushDebugGroup("group_marker");
    query100.destroy()
    const array5 = new Float32Array([-0.25, 1.0, -0.25, 0.75, 1.0, 0.75, 0.25, 0.0, -0.75, -0.25, -0.5, 0.0, 0.0, -1.0, 0.75, 0.75, -0.5, -0.25, -1.0, 0.0, -0.75, -0.75, -1.0, 0.75, -0.25, 0.75, 0.5, -0.5, 1.0, -0.5, 0.25, 0.0, 0.5, 0.5, -1.0, 0.25, 0.0, -0.25, -1.0, -0.5, -1.0, 1.0, 0.75, -0.25, 1.0, 0.0, 1.0, -1.0, -0.75, -0.5, 0.0, -0.25, 0.25, 0.25, 0.25, 0.75, 0.0, 0.5, 1.0, 0.75, -0.5, 1.0, 0.25, 0.25, -0.25, 1.0, 1.0, -1.0, -1.0, -0.5, 1.0, 1.0, 0.5, -1.0, 0.75, -0.25, 0.75, -0.75, 0.75, -0.5, 0.0, 0.75, 0.0, 0.0, -1.0, 0.5, 0.75, -0.25, 0.5, 0.0, -1.0, 0.5, -0.25, 0.75, -1.0, 0.75, 0.5, 0.0, -1.0, -1.0, ]);
    
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder001.popDebugGroup();
    query002.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    
    query002.destroy()
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query100.destroy()
    render_pass_encoder1011.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    const render_bundle_encoder104 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder104",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder104.pushDebugGroup("group_marker");
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
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
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
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
    
    render_bundle_encoder101.insertDebugMarker("marker");
    query200.destroy()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder2040.insertDebugMarker("marker");
    query201.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder002.copyBufferToBuffer(
        buffer001,
        0,
        buffer004,
        0,
        400
    );
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder002.clearBuffer(buffer004);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const array6 = new Float32Array([-1.0, -0.25, 1.0, 0.5, 0.5, 0.5, -1.0, 0.75, 0.25, -0.25, -0.25, 0.5, 0.0, -0.25, -0.25, 0.5, -1.0, 0.25, -0.75, -1.0, 0.25, -1.0, -1.0, -0.25, -0.25, 0.75, 0.5, 0.5, -0.75, -0.5, -0.5, -0.5, -1.0, -0.75, 0.75, -1.0, 1.0, 0.25, 0.75, 0.25, -0.25, 0.5, -0.25, -0.5, -1.0, -1.0, 1.0, -0.25, -1.0, -0.25, -1.0, -1.0, 1.0, 0.25, 0.5, -0.75, -0.5, 0.5, -1.0, 1.0, 0.0, 0.75, -1.0, 0.25, 0.75, -0.5, -0.5, -1.0, 0.25, -0.5, 0.0, 0.75, -1.0, -0.75, -1.0, -1.0, 1.0, 0.0, 1.0, -0.5, -0.25, 0.5, 0.25, 0.5, -0.25, 0.5, 0.25, 0.5, -1.0, -1.0, -0.5, -0.5, 0.5, 0.75, -0.25, 0.75, 0.0, 1.0, -0.75, -1.0, ]);
    render_bundle_encoder102.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    query101.destroy()
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
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
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
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
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const array7 = new Float32Array([1.0, -0.75, -1.0, 0.0, -1.0, 0.75, -1.0, -0.5, -0.75, 0.5, 0.0, 0.5, 0.25, 0.25, 0.0, 0.5, -1.0, 0.75, 1.0, -0.25, -0.25, -0.5, 0.5, 0.0, -1.0, -0.25, 0.25, 0.0, -0.75, -0.5, 0.75, -0.25, -0.25, 0.25, -0.5, 1.0, 0.75, -0.75, 0.75, 0.0, 0.0, 0.75, -1.0, 0.25, 0.75, 0.75, 1.0, 0.25, -0.25, 1.0, -1.0, -0.25, -0.25, 0.75, 0.25, 0.25, 0.25, -1.0, -1.0, -0.75, 0.25, -0.5, 0.0, -0.75, -0.5, -1.0, 1.0, 1.0, 0.75, 0.5, 0.25, 0.0, 0.0, 0.75, 0.25, -0.5, -0.75, 1.0, 0.0, -1.0, 0.75, -0.25, 0.0, 0.75, 0.5, -1.0, -0.5, 0.5, -0.75, -0.5, 0.75, -0.75, -0.75, -1.0, -0.25, 1.0, 0.75, -0.25, -0.25, -0.25, ]);
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1021.insertDebugMarker("marker");
    
    
    device10.queue.writeTexture({ texture: texture104 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder105 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder105",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    
    
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    query101.destroy()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2031.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    texture006.destroy();
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.insertDebugMarker("marker");
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder104.popDebugGroup();
    render_pass_encoder1021.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0000.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1032,
            },
        ],
        occlusionQuerySet: query101
    });
    query202.destroy()
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    query200.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    texture104.destroy();
    compute_pass_encoder1010.insertDebugMarker("marker")
    device00.pushErrorScope("internal");
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query102
    });
    query203.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const texture_view0052 = texture005.createView({ label: "texture_view0052" });
    render_pass_encoder1021.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0052,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder1021.insertDebugMarker("marker");
    
    
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    render_bundle_encoder200.popDebugGroup();
    
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder104.insertDebugMarker("marker");
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder2030.insertDebugMarker("marker");
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    const texture_view0053 = texture005.createView({ label: "texture_view0053" });
    render_pass_encoder1030.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    render_pass_encoder0000.popDebugGroup();
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder104.insertDebugMarker("marker");
    
    query104.destroy()
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const texture_view0054 = texture005.createView({ label: "texture_view0054" });
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1021.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.endOcclusionQuery()
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder2031.endOcclusionQuery()
}