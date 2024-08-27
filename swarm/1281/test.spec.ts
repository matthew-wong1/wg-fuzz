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
    
    const array0 = new Float32Array([-0.75, 0.5, -0.5, -0.75, 0.75, 0.25, -1.0, 1.0, 0.75, 0.25, 0.0, 0.25, -1.0, -0.75, -0.25, 0.75, 1.0, 0.75, 0.25, -0.75, -1.0, 0.0, 0.75, -1.0, -0.5, -0.25, 0.75, 1.0, -0.25, 0.25, -0.5, 1.0, 0.0, -0.25, -1.0, 0.0, 0.0, -1.0, -0.5, 1.0, -0.75, -0.75, -0.25, -0.5, -0.25, 0.25, 1.0, 0.5, -0.5, 0.25, 0.25, 0.25, 0.75, -0.5, -0.5, -1.0, 0.0, 0.0, 0.5, -0.75, -0.25, 1.0, 0.0, -0.25, 0.5, -0.75, -0.5, -0.5, 0.75, -1.0, -0.5, 0.25, 1.0, -0.25, 1.0, 1.0, -0.25, -0.75, -0.75, 1.0, 0.0, 0.75, 1.0, 0.5, 0.5, -0.5, 0.75, -0.25, -0.5, -0.75, -0.75, 0.75, 0.0, 0.0, -0.5, 0.5, 0.25, -0.75, 0.75, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array1 = new Float32Array([0.25, 0.0, -0.5, -0.5, -1.0, 0.0, 0.25, -0.25, 0.0, 0.75, -0.5, 0.75, 0.25, 0.25, 0.0, 0.75, -0.5, 0.75, -1.0, 0.75, -1.0, -0.75, 0.0, -0.5, 1.0, -0.75, -1.0, 0.25, 0.5, -1.0, -0.5, -0.5, 0.5, 0.5, -0.5, -0.75, -0.25, -0.25, -0.25, -0.75, 1.0, 0.5, 0.25, -0.25, -0.75, -0.25, -0.25, -0.25, -0.75, -0.25, -0.75, -0.5, 0.75, -1.0, -0.5, 1.0, -0.5, 0.25, 0.0, 0.25, -0.5, 0.25, 0.25, 0.5, 0.0, -0.25, -1.0, -0.75, 0.75, -1.0, -1.0, 1.0, 0.25, -1.0, -0.25, 1.0, 0.75, -1.0, 0.0, 0.5, -0.75, 0.75, 1.0, -0.75, 1.0, 0.0, 1.0, -0.75, 1.0, 1.0, 0.75, -0.5, -0.25, -1.0, 0.5, 0.75, -0.25, -0.5, 0.5, 1.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array2 = new Float32Array([0.5, -1.0, 0.25, 0.5, -1.0, 1.0, 1.0, 0.25, 0.0, 0.0, 0.25, -1.0, 0.5, 0.0, 0.0, 0.75, -1.0, 0.25, 0.5, -0.5, -0.25, 1.0, 0.0, -0.75, 0.25, 0.75, -0.75, 0.75, 0.25, -1.0, -0.5, 0.5, 0.0, -0.25, 0.0, 1.0, 0.0, -0.25, -0.5, 0.0, 0.5, 0.75, 0.5, 0.5, -1.0, 1.0, -0.25, 1.0, 0.25, 0.75, 0.75, -1.0, -0.75, 0.5, 1.0, 1.0, 1.0, 0.5, -0.75, 1.0, 0.25, 1.0, -0.75, -0.5, -0.75, -0.75, -0.75, 1.0, 1.0, -0.75, -0.25, 0.25, 0.0, 0.25, -0.75, 0.75, -0.5, -0.75, -0.5, -0.5, -0.75, 0.0, -0.75, -1.0, 0.75, 0.5, -1.0, 0.0, -0.75, -0.75, -0.25, -1.0, 0.75, -0.25, 0.0, -1.0, -1.0, -0.5, 1.0, 1.0, ]);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array3 = new Float32Array([-0.75, 0.75, -1.0, 0.5, -0.25, 0.75, 0.5, 0.5, 0.0, 0.0, -0.25, -1.0, -0.5, 0.5, 1.0, -0.25, -0.5, -0.5, 1.0, 0.5, 1.0, -0.25, 0.25, -0.75, 0.75, 0.0, 0.5, 0.75, -0.75, 1.0, 1.0, 0.75, 0.5, 0.5, -0.5, 0.0, 1.0, 0.75, 0.0, -0.75, -0.75, -1.0, -0.75, 0.5, -0.5, -0.25, 0.0, -0.25, -0.5, -0.5, 0.0, -1.0, 0.25, 0.25, -0.5, 0.0, 1.0, -0.5, 1.0, 1.0, 0.5, 1.0, 0.0, 0.0, 0.25, -1.0, -0.25, 1.0, -0.75, 0.75, 0.5, 0.75, 0.75, 0.25, -0.75, -0.5, -0.25, -0.75, 1.0, -0.75, 0.5, 0.25, -1.0, 0.5, -0.5, -1.0, 1.0, -0.25, 1.0, 0.25, -1.0, 0.0, 0.0, -0.75, 0.75, 0.0, 0.25, 0.75, 0.0, 0.75, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    texture001.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.pushErrorScope("out-of-memory");
    
    const command_buffer000 = command_encoder000.finish();
    render_bundle_encoder000.popDebugGroup();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const command_buffer001 = command_encoder001.finish();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    device00.queue.submit([command_buffer000, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device10.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const array4 = new Float32Array([-1.0, -1.0, 0.75, -0.75, -0.5, 0.25, -0.75, -0.5, 0.25, -0.75, 0.0, 0.0, -0.5, -0.75, 0.0, 0.5, -1.0, -1.0, 1.0, -0.75, -1.0, 0.75, -0.75, 0.25, 1.0, -0.75, -0.25, 0.5, -0.75, -1.0, 0.75, 0.25, 0.5, -0.25, 0.5, 0.75, -0.5, -0.25, 0.0, 0.75, -0.25, 0.75, -0.5, -0.5, 0.25, 0.25, 0.75, 0.25, -0.25, 0.25, 0.0, 0.5, -0.25, -1.0, 0.75, -0.25, 0.0, 0.5, 0.25, 1.0, 1.0, -1.0, -1.0, 0.5, -1.0, 1.0, -0.5, -1.0, -0.5, 0.75, 0.75, 1.0, -1.0, -0.5, 1.0, 0.75, -1.0, -0.75, -1.0, 0.75, 0.0, -1.0, 1.0, -0.75, 1.0, -0.5, -0.75, 1.0, 1.0, 0.0, 0.25, -0.5, 0.75, 0.0, -0.5, 0.5, 1.0, -0.5, 1.0, 0.5, ]);
    device00.destroy();
    const array5 = new Float32Array([1.0, 0.0, 0.0, 0.0, -0.5, -0.25, 0.75, 0.75, 0.5, -0.5, 0.5, -0.5, 1.0, -1.0, 0.0, -0.25, 0.0, 1.0, 0.5, -0.75, -0.5, -0.5, -0.75, 0.75, -1.0, -0.75, 0.0, 1.0, -1.0, 0.25, 0.75, -0.25, -1.0, 0.5, 1.0, -0.75, -0.75, 1.0, -0.5, 0.5, -0.25, -0.5, 1.0, 0.25, 0.5, -0.25, -0.75, 0.75, -1.0, 0.25, -0.75, 0.0, 0.5, 1.0, -0.5, -1.0, -0.25, 0.5, 0.25, -0.75, 0.75, -1.0, 1.0, -0.25, -0.75, -1.0, 1.0, -0.25, 0.25, 1.0, -0.75, -0.75, 1.0, -1.0, 0.75, -0.5, 0.25, -0.5, -0.75, 1.0, 0.0, -0.5, 0.25, -1.0, 0.5, 0.5, -0.5, -0.25, 0.5, 0.0, 0.25, -0.5, -0.75, 1.0, -0.25, -1.0, -0.5, 1.0, -1.0, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.submit([]);
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    render_pass_encoder0020.beginOcclusionQuery(0)
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array6 = new Float32Array([1.0, -1.0, 0.25, -0.75, 0.0, -0.5, 0.25, 0.25, -0.75, 0.75, 0.0, 0.75, -0.25, 0.0, -0.25, -0.75, -1.0, -0.25, -0.25, -1.0, 0.75, -0.75, -0.25, 0.75, 0.75, 1.0, -0.5, -0.5, 0.0, 0.0, -1.0, 1.0, 0.25, 1.0, -0.5, 0.75, 0.5, 0.5, 0.0, -0.5, -0.75, 0.25, -0.5, -1.0, -0.5, -0.25, 0.0, 1.0, -1.0, -1.0, -0.75, -0.5, 0.5, -0.75, -0.75, 0.5, 0.5, -0.25, -0.25, -0.25, 0.25, 0.5, -1.0, -0.25, 1.0, -0.5, 0.0, -0.5, -1.0, -0.25, 1.0, 0.0, 1.0, -0.75, -0.5, -0.25, 0.75, -0.5, -0.75, -0.5, -1.0, -0.25, -0.5, 0.25, -1.0, -0.25, 0.5, 0.25, -0.25, 0.0, 1.0, -0.25, 0.25, 0.25, 0.5, 1.0, -1.0, -1.0, -1.0, -0.25, ]);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const array7 = new Float32Array([-0.25, -1.0, 0.75, 0.0, 0.0, -1.0, 0.75, -0.75, 0.5, 0.5, -1.0, -0.25, 0.75, 0.25, -0.75, -1.0, -1.0, -0.25, 0.0, 0.5, 0.25, 0.5, -0.25, 0.5, 0.5, -1.0, -1.0, -1.0, 1.0, -0.5, 0.0, -0.5, -0.75, -0.5, 0.5, 0.0, -0.75, -1.0, 0.0, -0.25, -0.25, 1.0, 0.25, 0.5, -0.75, -0.25, -1.0, 0.0, 0.5, 0.0, 1.0, -0.5, -1.0, -0.5, 0.5, -0.75, -0.75, -1.0, -0.25, -0.5, -0.25, 1.0, 0.75, -0.25, 0.75, -1.0, 1.0, 0.25, 0.5, -0.5, 0.0, 0.25, 0.75, 0.0, -0.75, 0.0, -0.75, 0.75, -0.75, -0.75, -0.75, 0.25, -1.0, 0.5, 0.5, -0.5, 1.0, 0.25, 1.0, 0.25, -0.25, -0.75, 0.75, -1.0, 0.5, -0.75, 0.75, -0.25, 0.25, -0.5, ]);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
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
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query200.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
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
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    texture200.destroy();
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
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
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    
    
    query200.destroy()
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    
    
    
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query201.destroy()
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
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2000.insertDebugMarker("marker");
    
    
    
    
    texture202.destroy();
    const array8 = new Float32Array([-0.5, 0.75, -0.75, -0.25, 1.0, -1.0, 0.25, 0.0, -0.5, 0.0, 0.75, -0.75, 0.0, -0.75, 0.0, -0.75, 0.25, -0.5, 0.5, 0.0, 0.0, 0.75, -0.5, 0.75, 0.75, -1.0, 0.5, 0.0, 1.0, 1.0, 0.0, -0.75, 0.5, 0.0, 0.5, -1.0, -0.25, 0.0, 0.25, -0.25, -0.5, -1.0, -1.0, -0.25, 0.75, -0.75, -0.25, 0.5, 1.0, 0.75, 0.25, 0.0, 0.0, 0.25, 0.75, -0.25, -0.25, 1.0, 0.75, 0.75, 0.0, -0.25, -1.0, 0.25, -0.5, -1.0, -0.25, -0.5, -0.5, -0.5, 0.5, 0.25, 0.25, 0.25, 1.0, -0.25, -1.0, -0.5, -0.75, 0.75, -0.5, 1.0, 0.75, -0.75, -0.5, 0.0, -0.25, -1.0, -0.75, 0.5, -0.25, 0.75, -0.25, 1.0, -1.0, 0.25, -0.75, 0.75, -1.0, 0.25, ]);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setStencilReference(1);
    
    device20.pushErrorScope("out-of-memory");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    render_pass_encoder2000.setStencilReference(1);
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
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.popDebugGroup();
    query201.destroy()
    texture201.destroy();
    render_pass_encoder2000.setStencilReference(1);
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2001.beginOcclusionQuery(0)
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    query203.destroy()
    
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
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array9 = new Float32Array([-0.5, 0.75, -1.0, -0.5, 0.5, -0.25, 0.0, 1.0, 0.75, -1.0, -0.5, -1.0, 1.0, 0.5, 0.75, 0.75, 1.0, -0.25, -0.75, -0.5, 1.0, 0.0, -0.75, -0.75, 1.0, -1.0, 0.5, 0.5, 0.75, 0.75, 1.0, -0.25, 0.5, -0.25, 0.0, 0.25, -0.25, -1.0, -0.25, -0.25, 0.25, 0.25, 1.0, -0.75, 0.25, -1.0, 0.75, 0.25, -0.25, -1.0, -0.25, -0.5, -0.75, -0.5, 0.5, 0.0, 1.0, -1.0, -0.25, -0.75, -0.25, 0.5, -0.25, -0.75, -0.25, -0.25, 0.75, 0.0, 0.75, 1.0, 0.5, -0.75, -0.75, 0.25, 0.5, -0.25, -0.5, -0.5, -0.25, 0.0, -0.25, -0.5, -0.25, -1.0, -0.5, 1.0, 0.25, 0.25, 0.75, 0.75, 0.25, -0.25, 1.0, 0.25, -0.5, 1.0, -1.0, 0.25, -0.25, -0.75, ]);
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    
    
    
    
    
    device30.destroy();
    
    
    query200.destroy()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query200.destroy()
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setStencilReference(1);
    texture203.destroy();
    const array10 = new Float32Array([0.0, -0.25, 0.0, 0.0, -0.75, 1.0, -1.0, -0.25, -0.5, 0.5, 0.25, 1.0, 0.0, -0.5, 0.0, 0.5, -0.75, 0.5, -0.75, -0.75, -0.75, -0.75, -0.25, 0.75, -0.75, 0.25, -1.0, 0.75, 0.25, 1.0, -0.5, 1.0, 1.0, 0.0, -0.75, -0.5, -0.5, 1.0, -1.0, -0.75, -0.25, -0.5, -0.75, -0.25, 0.0, 0.25, 0.25, -0.25, 0.25, 1.0, -1.0, 0.5, -0.75, 0.75, 0.25, -0.25, -0.75, 0.25, 0.75, 0.0, 0.75, -0.75, -0.25, -0.5, -0.5, -0.75, 0.75, 1.0, -0.25, 0.5, -0.5, 0.0, 0.75, 0.25, -0.25, 1.0, 0.5, 0.75, -0.25, 0.75, 0.75, 0.75, -0.25, 0.75, 0.25, 0.25, -0.75, -0.75, 0.0, -0.5, -1.0, -0.5, 1.0, 0.5, 0.75, -0.5, -0.5, 0.0, 0.0, 0.0, ]);
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query203
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
    
    
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query202
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2011.pushDebugGroup("group_marker");
    render_pass_encoder2011.insertDebugMarker("marker");
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    command_encoder200.insertDebugMarker("mymarker");
    
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
    device20.pushErrorScope("validation");
    
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2000.setStencilReference(1);
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    render_pass_encoder2001.setStencilReference(1);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2021.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    query203.destroy()
    
    
    render_pass_encoder2000.insertDebugMarker("marker");
    const array11 = new Float32Array([-1.0, -0.25, -1.0, 0.25, -0.75, 0.25, -0.75, 0.0, -0.5, 0.25, -0.75, -0.75, -0.5, 0.75, 0.5, 0.25, -1.0, 0.0, 0.75, 0.0, 1.0, 0.0, -0.5, -0.5, -1.0, -1.0, 1.0, 0.75, 0.25, -0.75, 1.0, 1.0, -0.75, -1.0, 0.75, -1.0, -0.25, -0.75, -0.25, 0.0, 0.5, -0.5, -0.25, -0.75, -0.5, 1.0, -0.25, 1.0, -0.75, -0.75, -0.25, 0.25, 0.25, 0.75, -0.75, 0.5, 0.5, 1.0, 0.5, 0.25, -1.0, -0.25, 0.25, 0.5, 0.75, 1.0, 1.0, -0.5, 0.75, 0.5, -0.25, 0.5, -1.0, -0.5, -0.25, 0.0, 0.0, -0.5, -0.75, -0.75, 0.5, -0.75, -0.25, -1.0, 1.0, -0.75, 0.0, 0.5, -1.0, 0.0, 0.5, 0.75, -0.5, -0.25, -1.0, 0.0, 0.75, 0.75, 0.25, -0.5, ]);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    render_pass_encoder2021.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    device20.queue.submit([]);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query201.destroy()
    render_pass_encoder2001.pushDebugGroup("group_marker");
    device10.destroy();
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2001.insertDebugMarker("marker");
    
    render_pass_encoder2020.setStencilReference(1);
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    var shader_module2013_code = "";
    try {
        shader_module2013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2013 = await device20.createShaderModule({ label: "shader_module2013", code: shader_module2013_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_pass_encoder2021.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    
    
    render_pass_encoder2021.setStencilReference(1);
    
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    query201.destroy()
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query204.destroy()
    
    
    const render_pass_encoder2022 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder2021.insertDebugMarker("marker");
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
    const bind_group_layout209 = device20.createBindGroupLayout({ 
        label: "bind_group_layout209",
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
    
    
    var shader_module2014_code = "";
    try {
        shader_module2014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2014 = await device20.createShaderModule({ label: "shader_module2014", code: shader_module2014_code })
    render_pass_encoder2000.setStencilReference(1);
    var shader_module2015_code = "";
    try {
        shader_module2015_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2015 = await device20.createShaderModule({ label: "shader_module2015", code: shader_module2015_code })
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture205.destroy();
    const render_pass_encoder2012 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2022.pushDebugGroup("group_marker");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2011.beginOcclusionQuery(0)
    
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder2012.beginOcclusionQuery(0)
    
    render_pass_encoder2011.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    var shader_module2016_code = "";
    try {
        shader_module2016_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2016.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2016 = await device20.createShaderModule({ label: "shader_module2016", code: shader_module2016_code })
    render_pass_encoder2012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2022.insertDebugMarker("marker");
    
    
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder2021.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2012.insertDebugMarker("marker");
    var shader_module2017_code = "";
    try {
        shader_module2017_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2017.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2017 = await device20.createShaderModule({ label: "shader_module2017", code: shader_module2017_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.queue.submit([]);
    render_pass_encoder2012.setStencilReference(1);
    
    
    
    render_pass_encoder2012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    
    
    render_pass_encoder2022.insertDebugMarker("marker");
    render_pass_encoder2011.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    var shader_module2018_code = "";
    try {
        shader_module2018_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2018 = await device20.createShaderModule({ label: "shader_module2018", code: shader_module2018_code })
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    query201.destroy()
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    render_pass_encoder2001.setStencilReference(1);
    render_pass_encoder2001.insertDebugMarker("marker");
    
    render_bundle_encoder001.popDebugGroup();
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query204
    });
    render_pass_encoder2011.beginOcclusionQuery(1)
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module2019_code = "";
    try {
        shader_module2019_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2019.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2019 = await device20.createShaderModule({ label: "shader_module2019", code: shader_module2019_code })
    
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query203
    });
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2012.endOcclusionQuery()
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder203.insertDebugMarker("marker");
    render_pass_encoder2030.setStencilReference(1);
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2031.setStencilReference(1);
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2022.insertDebugMarker("marker");
    
    
    
    const command_buffer200 = command_encoder200.finish();
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query205
    });
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2022.setStencilReference(1);
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2031.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2001.setStencilReference(1);
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query200
    });
    device20.pushErrorScope("validation");
    texture206.destroy();
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2021.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    render_pass_encoder2001.beginOcclusionQuery(1)
    query203.destroy()
    
    query203.destroy()
    
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_pass_encoder2011.endOcclusionQuery()
    texture206.destroy();
    render_pass_encoder2001.pushDebugGroup("group_marker");
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device10.pushErrorScope("internal");
    const render_pass_encoder2042 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    texture001.destroy();
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    query204.destroy()
    render_pass_encoder2021.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    const texture_view2042 = texture204.createView({ label: "texture_view2042" });
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2012.setStencilReference(1);
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    texture200.destroy();
    render_pass_encoder2031.setStencilReference(1);
    render_pass_encoder2040.setStencilReference(1);
    
    render_pass_encoder2041.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2001.insertDebugMarker("marker");
    render_bundle_encoder203.insertDebugMarker("marker");
    query201.destroy()
    render_pass_encoder2041.setStencilReference(1);
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const sampler2010 = device20.createSampler( { label: "sampler2010" } );
    
    render_pass_encoder0020.setStencilReference(1);
    
    query205.destroy()
    query205.destroy()
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setStencilReference(1);
    query001.destroy()
    render_pass_encoder2001.endOcclusionQuery()
    const array12 = new Float32Array([-0.5, 0.5, 1.0, -0.5, 0.5, -0.5, -1.0, -0.25, -0.75, -0.75, -0.75, -0.75, 0.5, 1.0, 0.5, -0.5, -0.25, -1.0, -0.5, -0.5, -0.5, -0.5, 0.0, 1.0, 0.75, -0.75, 0.5, -0.5, -0.75, 1.0, 0.5, -0.75, -0.75, 0.0, -1.0, -0.5, -0.5, -0.75, -0.5, -0.5, -0.5, -0.5, 0.25, 0.75, 1.0, -0.5, 0.75, 0.25, 0.75, -0.25, 1.0, 0.5, 0.75, 1.0, 0.0, -0.75, 0.5, 0.75, 0.0, 0.5, -1.0, -1.0, 0.0, -1.0, -1.0, 0.75, -0.5, 0.5, 0.5, -0.75, 0.25, -1.0, 0.0, 0.0, -0.25, -0.75, 0.75, 0.0, -0.25, 0.5, -0.75, 0.75, -0.5, -0.75, 1.0, 0.75, -1.0, 0.0, 0.75, 0.75, -0.75, 1.0, 0.25, 0.25, -0.5, 0.5, 0.75, 1.0, -0.75, 0.0, ]);
    render_pass_encoder2030.insertDebugMarker("marker");
    
    render_pass_encoder2022.insertDebugMarker("marker");
    
    render_pass_encoder2042.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2020.insertDebugMarker("marker");
    
    render_pass_encoder2022.insertDebugMarker("marker");
    
    query201.destroy()
    render_pass_encoder2022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder2031.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    query203.destroy()
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2031.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2010.setStencilReference(1);
    const render_pass_encoder2051 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query205
    });
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder2022.endOcclusionQuery()
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2001.setStencilReference(1);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2042.insertDebugMarker("marker");
    render_pass_encoder2050.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2021.setStencilReference(1);
    render_pass_encoder2041.insertDebugMarker("marker");
    const array13 = new Float32Array([0.5, 0.0, 0.0, 0.5, 0.25, 0.25, -0.5, 0.0, 0.75, -0.25, 0.5, 1.0, 1.0, -0.75, 0.25, -0.75, 0.25, -0.75, 1.0, -0.25, 1.0, -0.25, 0.5, -1.0, -0.25, 1.0, -1.0, -0.75, 0.75, 1.0, 0.75, -0.5, 0.25, -1.0, 0.25, 1.0, -0.75, -0.25, 1.0, 0.75, -0.75, 0.75, 0.5, 0.0, -0.75, -0.75, -0.5, 0.0, -1.0, 1.0, -0.5, -0.25, -0.25, -0.75, 0.5, 0.25, 0.25, 0.0, 1.0, 1.0, 0.75, 0.75, 1.0, -0.5, -0.5, -0.75, -0.25, -0.5, -1.0, -0.75, -0.25, 1.0, 0.0, -1.0, 1.0, -0.5, 1.0, -0.5, -0.75, 0.0, 0.25, -0.25, 0.0, 1.0, -0.75, 0.5, 0.5, 0.5, -0.25, -1.0, -0.75, 0.25, -0.25, -1.0, -1.0, -1.0, -0.5, 0.75, 0.75, -0.25, ]);
    query201.destroy()
    render_pass_encoder2031.setStencilReference(1);
    render_pass_encoder2040.endOcclusionQuery()
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2051.endOcclusionQuery()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2031.endOcclusionQuery()
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2042.endOcclusionQuery()
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2040.endOcclusionQuery()
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.endOcclusionQuery()
    device20.queue.submit([]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder2040.endOcclusionQuery()
}