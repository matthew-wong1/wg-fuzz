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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.pushErrorScope("internal");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const array0 = new Float32Array([-0.25, -0.25, 0.5, 1.0, -0.25, 0.0, 0.75, 1.0, 1.0, 0.5, -0.75, 0.25, -1.0, -0.25, 0.25, -0.75, 1.0, -0.5, -0.5, -0.75, 0.5, 0.75, -0.5, 1.0, 0.75, -0.75, 0.25, -0.25, 1.0, -0.25, 0.25, 1.0, 0.25, -1.0, -0.25, 1.0, -0.75, 0.25, -0.75, 0.0, 0.25, 0.5, 1.0, -0.25, 0.25, 1.0, 1.0, 0.75, 0.0, 0.75, 0.75, 0.5, -0.25, 0.25, 1.0, 0.5, 0.25, -1.0, 0.75, 0.5, -1.0, 0.0, 0.75, -0.25, -0.25, 0.25, -0.75, 1.0, 0.75, -0.25, -0.75, -1.0, 0.25, 0.75, -0.75, 0.5, -0.5, 0.5, -1.0, -0.75, 0.25, -1.0, 0.75, -0.5, -1.0, 1.0, 0.75, 0.5, -1.0, -1.0, 1.0, 0.5, 0.0, -1.0, -0.75, 0.0, -0.25, -0.5, 0.75, -0.25, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const array1 = new Float32Array([-0.5, 0.0, 0.25, -0.5, 0.5, -0.75, 0.75, -0.25, 0.5, -0.5, -0.5, 0.5, 0.75, -0.25, 0.75, 1.0, 0.25, -1.0, 1.0, 0.0, 1.0, 0.5, 0.0, 0.0, -0.75, 0.25, 0.0, 0.5, -0.5, 1.0, 0.0, -1.0, 0.5, 0.75, -1.0, 0.5, 0.25, -0.75, 0.25, 1.0, 0.75, 0.75, -0.25, -0.75, -0.25, 0.75, 0.25, -0.5, 0.25, 0.0, -0.5, -0.75, -0.75, -0.25, -0.5, -0.5, -0.75, -0.75, 0.75, 0.5, -0.25, 0.5, 0.5, -0.25, 0.25, 1.0, 0.0, -0.25, -1.0, -1.0, 0.0, -1.0, 0.0, 1.0, 0.25, 0.25, 0.25, 0.0, 0.25, 0.0, 1.0, -0.25, -0.25, -0.25, 1.0, -1.0, 1.0, -0.25, 1.0, -0.25, 0.75, -1.0, -0.75, 0.5, 0.5, -1.0, -0.25, 0.25, -0.5, 0.5, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.pushErrorScope("validation");
    query001.destroy()
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
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
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
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
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    command_encoder300.pushDebugGroup("mygroupmarker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    query300.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    texture300.destroy();
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.destroy();
    device40.pushErrorScope("validation");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    query000.destroy()
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    query302.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    query000.destroy()
    
    
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
    compute_pass_encoder3000.insertDebugMarker("marker")
    query300.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    texture001.destroy();
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device70.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    device60.pushErrorScope("internal");
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query302.destroy()
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    render_bundle_encoder201.insertDebugMarker("marker");
    query300.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    query300.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    texture200.destroy();
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    texture000.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
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
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
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
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query300.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const array2 = new Float32Array([0.75, 0.25, 0.0, 0.75, -1.0, 0.5, 0.25, 0.0, 1.0, -0.5, 0.0, 0.75, -0.25, 0.0, -0.25, 1.0, -0.25, -1.0, -0.25, 0.25, -0.5, -1.0, -1.0, 0.75, 0.25, -0.75, 0.75, -0.5, 0.5, 0.25, 1.0, -0.75, 1.0, -1.0, 0.25, 0.0, -0.75, 1.0, -0.75, -0.75, 0.75, -0.25, -0.5, -0.5, 0.75, -1.0, 0.25, -0.75, -0.25, -1.0, 0.0, -0.75, 0.25, -0.5, -0.5, -1.0, 0.5, -0.5, 0.0, -0.5, 0.0, -1.0, -0.75, -0.5, 0.25, -0.75, 0.25, -0.5, -1.0, 0.0, 0.25, 0.0, -1.0, -0.25, -0.25, 0.25, 0.0, -0.5, -0.5, 0.0, 0.25, -0.75, -0.25, -1.0, -0.25, -0.75, -0.5, -0.75, -1.0, 0.75, 0.25, -0.5, 1.0, -0.25, -0.5, -0.75, -0.5, 0.5, -0.5, 0.5, ]);
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device20.pushErrorScope("validation");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query301.destroy()
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder900.insertDebugMarker("mymarker");
    command_encoder600.pushDebugGroup("mygroupmarker")
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
    
    
    device40.pushErrorScope("validation");
    render_bundle_encoder201.insertDebugMarker("marker");
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    query301.destroy()
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query002
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0020.setStencilReference(1);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder0000.setStencilReference(1);
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder0020.setStencilReference(1);
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_buffer900 = command_encoder900.finish();
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    
    const command_buffer902 = command_encoder902.finish();
    command_encoder003.insertDebugMarker("mymarker");
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const command_encoder903 = device90.createCommandEncoder({ label: "command_encoder903" });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_bundle_encoder900.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query600
    });
    query400.destroy()
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    query602.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    query003.destroy()
    render_pass_encoder0030.setStencilReference(1);
    
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const command_encoder904 = device90.createCommandEncoder({ label: "command_encoder904" });
    const command_buffer903 = command_encoder903.finish();
    
    
    query200.destroy()
    const command_buffer901 = command_encoder901.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const array3 = new Float32Array([0.25, 0.0, -0.75, -0.75, 1.0, 0.0, -0.5, -0.25, 0.25, 0.5, -1.0, 0.5, 0.0, 0.5, 1.0, -0.75, -1.0, -0.75, 0.0, 0.75, 0.0, 0.5, -0.25, 0.5, 1.0, 1.0, -1.0, -0.75, 0.25, -0.25, -0.25, -1.0, -1.0, 0.75, 0.75, -0.75, -0.5, 0.75, 1.0, -0.5, 0.5, 0.5, -0.75, -0.25, 0.5, -1.0, -1.0, -0.5, -1.0, -1.0, -1.0, -0.75, 0.0, -0.5, -0.75, 0.25, -0.25, -0.5, -1.0, 0.75, -0.25, 0.75, 1.0, -0.5, 0.0, 0.0, -1.0, 0.0, -1.0, 0.75, -1.0, 1.0, 0.5, 1.0, -0.5, 0.75, 1.0, -1.0, -0.25, 0.25, 0.75, 0.5, 0.75, 0.0, 0.5, -0.5, 0.75, -0.75, 0.25, -1.0, -0.5, 1.0, 0.0, 0.75, 0.5, -1.0, 0.5, 0.25, 1.0, 0.75, ]);
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.insertDebugMarker("marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query600
    });
    query000.destroy()
    
    command_encoder602.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.pushErrorScope("internal");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    render_pass_encoder0020.setStencilReference(1);
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    query601.destroy()
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    query400.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    command_encoder904.pushDebugGroup("mygroupmarker")
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    render_pass_encoder6010.setStencilReference(1);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query002.destroy()
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.pushErrorScope("internal");
    render_pass_encoder3010.setStencilReference(1);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture301.destroy();
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    texture002.destroy();
    compute_pass_encoder3000.insertDebugMarker("marker")
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    render_pass_encoder6030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.setStencilReference(1);
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
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
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
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const command_encoder905 = device90.createCommandEncoder({ label: "command_encoder905" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    query003.destroy()
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device90.pushErrorScope("internal");
    const command_encoder906 = device90.createCommandEncoder({ label: "command_encoder906" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_pass_encoder6030.setStencilReference(1);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0000.setStencilReference(1);
    query301.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    
    
    query002.destroy()
    
    
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    texture003.destroy();
    compute_pass_encoder6020.insertDebugMarker("marker")
    device30.pushErrorScope("validation");
    
    const compute_pass_encoder9040 = command_encoder904.beginComputePass({ label: "compute_pass_encoder9040" });
    
    device40.pushErrorScope("validation");
    texture900.destroy();
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    query602.destroy()
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder0020.setStencilReference(1);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query303.destroy()
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query601.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder200.insertDebugMarker("mymarker");
    
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
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
    query301.destroy()
    render_pass_encoder6000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
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
    query204.destroy()
    render_pass_encoder0030.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    query302.destroy()
    
    compute_pass_encoder6020.insertDebugMarker("marker")
    
    compute_pass_encoder9040.pushDebugGroup("group_marker")
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder6030.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder401.clearBuffer(buffer405);
    
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
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    texture601.destroy();
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder6010.setStencilReference(1);
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder200.insertDebugMarker("mymarker");
    device90.queue.submit([command_buffer901, ]);
    
    render_pass_encoder0010.setStencilReference(1);
    command_encoder403.insertDebugMarker("mymarker");
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    query401.destroy()
    compute_pass_encoder6020.popDebugGroup()
    render_bundle_encoder901.insertDebugMarker("marker");
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device80.pushErrorScope("internal");
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    texture004.destroy();
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder6010.setStencilReference(1);
    query401.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    device40.queue.writeBuffer(buffer405, 0, array0, 0, array0.length);
    render_pass_encoder6030.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer406, 0, array0, 0, array0.length);
    render_pass_encoder0000.setStencilReference(1);
    query400.destroy()
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    command_encoder403.clearBuffer(buffer405);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_bundle_encoder602.insertDebugMarker("marker");
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    render_pass_encoder3010.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer800 = command_encoder800.finish();
    compute_pass_encoder9040.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder2010.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    const command_buffer905 = command_encoder905.finish();
    const command_buffer403 = command_encoder403.finish();
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.queue.submit([command_buffer900, command_buffer902, command_buffer905, ]);
    const command_buffer906 = command_encoder906.finish();
    device90.queue.submit([command_buffer903, command_buffer906, ]);
}