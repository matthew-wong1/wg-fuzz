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
    const array0 = new Float32Array([0.5, 0.0, -1.0, -0.25, -0.5, 0.5, -0.75, -0.25, -1.0, -1.0, -0.5, 0.0, 0.5, -0.75, 0.75, 0.0, 0.25, 0.25, -0.5, 0.75, 1.0, -0.25, 0.0, 0.75, -0.5, -0.75, -0.75, -0.25, 0.25, 0.75, 0.5, 0.5, -0.75, 0.0, 0.25, -0.75, 0.25, 1.0, -0.5, 1.0, -0.25, -0.75, -0.75, 1.0, -0.75, 1.0, 0.75, 1.0, 0.25, -0.5, -1.0, -1.0, -0.5, -1.0, -0.5, 0.5, 0.25, 0.0, 0.25, -0.25, 0.0, -1.0, -0.75, 0.25, 0.5, -0.5, 0.75, -0.5, 0.0, 0.25, -0.5, 0.75, 0.75, 0.5, -0.5, 0.0, 0.5, 0.25, 0.75, 1.0, -0.5, -0.75, -1.0, -0.25, 0.0, 1.0, 0.0, 0.5, -0.5, 0.0, 0.5, -0.25, -0.25, 0.75, -0.5, 0.25, 0.5, 0.25, 0.75, -0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
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
    render_bundle_encoder002.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    texture000.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    render_bundle_encoder002.insertDebugMarker("marker");
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
    
    query000.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    query100.destroy()
    render_bundle_encoder000.popDebugGroup();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device00.pushErrorScope("out-of-memory");
    
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query002.destroy()
    texture001.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query002.destroy()
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const array1 = new Float32Array([0.0, 0.25, 0.25, -0.75, 0.75, -0.75, -0.25, -0.75, -0.5, 0.5, -1.0, 1.0, -0.75, -0.5, 0.0, -0.75, 0.25, 0.0, 1.0, 0.25, 0.5, 0.0, -0.5, 1.0, 1.0, 1.0, -0.75, -1.0, -0.75, 1.0, -0.75, -1.0, 0.75, 1.0, 0.0, -0.25, 0.75, -0.25, 0.5, 0.0, -0.25, -1.0, 1.0, -1.0, -1.0, 0.75, -0.25, 0.5, 0.25, 0.25, -0.25, -0.75, 0.0, 0.0, -1.0, 0.25, 1.0, -0.5, 0.0, 0.75, 0.75, 0.25, 0.25, 0.25, -1.0, -0.75, -0.5, -1.0, -1.0, 1.0, 1.0, 0.75, -0.5, 0.25, -0.5, 0.25, -0.5, -1.0, 0.25, 1.0, 0.5, 0.5, 0.0, 0.5, 0.75, -0.5, 0.0, 0.5, 0.5, 0.25, -0.25, -0.25, 0.5, -0.75, 0.25, 0.0, -0.25, -0.75, -0.25, -0.25, ]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device30.pushErrorScope("validation");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
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
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
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
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder000.popDebugGroup();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.pushErrorScope("internal");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    buffer001.destroy()
    const array2 = new Float32Array([0.5, -1.0, 1.0, 0.75, 0.25, -0.75, 0.25, 0.5, -1.0, 0.5, -0.25, 0.5, -0.25, 1.0, -0.25, -0.75, -0.75, 0.0, 1.0, 0.5, 0.75, -1.0, 1.0, -0.5, 0.5, -0.25, 0.5, 0.0, -0.75, 0.0, -1.0, 0.0, -1.0, 1.0, 0.0, -1.0, 0.0, -0.75, -0.75, -0.75, 0.0, 0.0, -0.75, 0.25, 0.5, 0.5, 1.0, 0.5, 0.0, 1.0, -0.5, 0.75, -0.25, -0.25, 0.25, 1.0, -0.75, 1.0, 0.25, 0.75, 0.5, -0.75, 1.0, -0.75, 0.5, 0.5, -1.0, -0.5, -1.0, 1.0, 0.25, 0.25, 1.0, 0.5, 0.0, 0.5, -0.25, -1.0, -0.5, -0.25, 0.75, -0.5, -0.75, -0.25, -1.0, 0.5, -0.5, -0.25, -0.5, -0.25, 0.25, 1.0, 0.5, 0.25, 1.0, -1.0, -0.5, 0.0, -0.75, 0.75, ]);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    buffer200.destroy()
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    device30.destroy();
    
    query000.destroy()
    query001.destroy()
    query002.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query002.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    query001.destroy()
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([0.0, -0.5, 1.0, 0.5, 0.25, 0.5, 0.75, -0.25, 1.0, 0.0, 0.5, -0.5, 0.5, 1.0, 0.0, 0.5, -0.5, -0.75, 1.0, -1.0, -0.25, 0.25, 0.75, 0.5, 1.0, 0.5, 1.0, 1.0, -0.5, 0.75, -0.75, -0.5, 0.75, 1.0, 0.75, 0.5, -1.0, -0.5, 0.25, 0.75, 0.5, 0.75, 0.0, 0.75, 0.0, 0.25, 0.0, 1.0, 0.5, 0.75, -0.25, 0.75, 0.5, 0.25, 0.0, -0.75, 0.5, 0.0, -0.75, 1.0, -0.75, -0.75, 0.0, 0.5, 0.0, 0.5, 1.0, 0.0, 1.0, 0.0, 0.25, 1.0, -0.5, -0.75, -0.25, 0.75, -0.5, -0.75, -0.25, -0.25, 1.0, -1.0, 0.5, 0.75, -1.0, 0.75, 0.25, -0.75, 0.75, 0.5, 0.0, 0.5, -0.75, 0.5, 0.25, -0.25, 0.0, 1.0, 0.75, 0.5, ]);
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer000.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query002.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    query003.destroy()
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    buffer002.destroy()
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    
    device10.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    render_bundle_encoder200.popDebugGroup();
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    query200.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder600.insertDebugMarker("marker");
    device20.destroy();
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
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    device60.queue.submit([]);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    query003.destroy()
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    query004.destroy()
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("out-of-memory");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    
    
    render_bundle_encoder000.popDebugGroup();
    query002.destroy()
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer600.destroy()
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
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    buffer400.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    buffer300.destroy()
    render_bundle_encoder602.pushDebugGroup("group_marker");
    texture500.destroy();
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    texture002.destroy();
    query004.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8unorm",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    render_bundle_encoder600.insertDebugMarker("marker");
    query500.destroy()
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    query005.destroy()
    query500.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const array4 = new Float32Array([0.75, 0.25, -1.0, 1.0, 0.5, -1.0, -0.75, -0.75, 0.5, -1.0, 0.5, 0.25, -0.5, 0.75, 0.0, 0.0, 0.75, 0.75, -0.5, -1.0, 0.75, 0.0, 0.0, 0.5, -0.25, 0.25, -1.0, -0.75, 0.25, 0.0, -0.25, -1.0, 1.0, 0.25, -0.5, 0.0, 0.75, -0.5, 0.25, 0.75, -0.25, -0.25, -1.0, -1.0, -0.5, 0.0, -0.25, -0.75, 0.5, 0.25, -1.0, 1.0, -1.0, -0.25, 0.25, -0.25, -0.75, 0.0, -1.0, 1.0, -1.0, -1.0, -0.75, -1.0, -0.5, -1.0, 0.25, 0.5, 0.5, 0.25, -0.5, -0.75, 0.25, 0.75, -0.25, 1.0, -0.25, 0.75, -0.5, -1.0, 0.75, 0.75, 0.75, -0.25, 0.5, 0.0, -0.25, 0.5, -0.5, -0.75, 0.5, 0.5, 1.0, -0.75, -1.0, -0.5, -0.25, -0.25, -1.0, 0.75, ]);
    render_bundle_encoder601.insertDebugMarker("marker");
    
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device60.pushErrorScope("internal");
    texture600.destroy();
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    query005.destroy()
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    texture502.destroy();
    
    query001.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    
    
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
    query006.destroy()
    
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    render_bundle_encoder601.insertDebugMarker("marker");
    buffer001.destroy()
    
    
    
    query400.destroy()
    device50.pushErrorScope("out-of-memory");
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    query005.destroy()
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const render_bundle_encoder603 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder603",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    
    
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    
    query008.destroy()
    render_bundle_encoder603.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder600.popDebugGroup();
    query501.destroy()
    render_bundle_encoder602.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder400.insertDebugMarker("marker");
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    texture501.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32uint",
        dimension: "2d"
    });
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    render_bundle_encoder601.insertDebugMarker("marker");
    
    texture004.destroy();
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device10.pushErrorScope("validation");
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    query500.destroy()
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
    texture002.destroy();
    device50.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    query002.destroy()
    query000.destroy()
    
    const texture_view6013 = texture601.createView({ label: "texture_view6013" });
    query001.destroy()
    
    
    
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer601.destroy()
    
    query007.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    
    
    
    
    
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
    render_bundle_encoder001.popDebugGroup();
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const array5 = new Float32Array([-1.0, -0.75, -1.0, 0.0, 0.5, -1.0, 0.75, -0.75, -0.5, 1.0, -0.5, 0.5, -1.0, -0.5, 0.75, -0.75, -0.75, 0.75, 0.0, 0.5, -0.5, 0.25, 0.5, -0.75, -1.0, -0.25, 0.5, 0.0, 0.25, 0.25, 0.75, 1.0, -0.5, 1.0, -1.0, -1.0, 0.0, 0.0, -0.75, -0.25, -1.0, -0.5, 0.75, 0.25, 0.25, -1.0, -1.0, -0.75, 0.75, -0.75, 0.25, -0.5, 0.75, 0.0, 0.75, 0.0, -0.5, 0.0, 0.75, -1.0, 0.75, -1.0, 0.5, -0.25, -0.25, 0.75, -0.25, -0.75, 0.5, 0.5, 0.75, -0.5, 0.25, 0.25, 0.5, -0.5, -1.0, 1.0, 0.0, -0.5, 1.0, 0.0, -0.75, 0.25, 0.75, -1.0, 1.0, 0.5, 0.75, -0.25, 0.0, -0.5, 0.75, -0.5, -1.0, -0.75, 0.75, 0.75, 0.5, 0.5, ]);
    device00.pushErrorScope("internal");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    texture601.destroy();
    
    buffer401.destroy()
    query004.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    query003.destroy()
    render_bundle_encoder000.popDebugGroup();
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    
    
    render_bundle_encoder400.popDebugGroup();
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    texture400.destroy();
    
    
    query600.destroy()
    const array6 = new Float32Array([-0.75, 1.0, 0.75, 0.5, -0.5, -0.25, -0.25, -0.5, -0.75, -0.75, 0.5, -0.75, 0.75, -0.5, -0.5, 0.25, 0.75, 0.0, -0.5, 0.25, 0.5, 0.5, 0.5, -0.75, -0.5, 0.75, 1.0, -1.0, 0.25, -1.0, 0.0, 1.0, 1.0, 0.75, 0.0, 0.75, -1.0, 0.75, -0.75, 1.0, 0.5, 0.25, 0.0, -1.0, 1.0, 0.75, 0.0, -0.25, 0.25, 0.25, 0.5, -0.25, 0.5, 0.0, -1.0, -0.5, -0.75, -0.5, 1.0, -0.75, 1.0, -1.0, 1.0, 0.5, 0.5, -1.0, -0.75, -0.75, 0.75, -0.25, -1.0, -1.0, -0.25, -1.0, 0.5, 0.5, 0.25, 1.0, -0.75, 0.5, 0.0, 0.75, -0.75, 0.25, -0.75, 0.75, -0.5, 0.5, -1.0, 0.5, 0.25, 0.5, 0.75, 0.75, -0.5, 0.25, 0.0, 0.75, -1.0, 0.75, ]);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    query002.destroy()
    device80.queue.submit([]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view0033 = texture003.createView({ label: "texture_view0033" });
    render_bundle_encoder002.popDebugGroup();
    
    
    query601.destroy()
    query400.destroy()
    device80.pushErrorScope("internal");
    var shader_module0015_code = "";
    try {
        shader_module0015_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0015 = await device00.createShaderModule({ label: "shader_module0015", code: shader_module0015_code })
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_bundle_encoder602.popDebugGroup();
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder603.pushDebugGroup("group_marker");
    query002.destroy()
    query008.destroy()
    query000.destroy()
    
    
    buffer602.destroy()
    
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.destroy();
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    query602.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder603.popDebugGroup();
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    render_bundle_encoder602.insertDebugMarker("marker");
    buffer601.destroy()
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}