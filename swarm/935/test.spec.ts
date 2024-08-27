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
    const array0 = new Float32Array([-0.25, -0.25, 0.0, -0.25, 0.5, -0.25, -0.25, -0.25, -1.0, 1.0, 0.5, 0.5, -0.75, 0.75, 0.25, -0.75, -1.0, -0.25, 0.25, 1.0, -1.0, 0.25, 0.25, 0.25, -0.5, -0.75, -0.75, -1.0, -0.75, -0.25, -0.75, -1.0, -0.75, 0.25, 0.5, -0.25, -1.0, -1.0, -0.75, 0.0, 1.0, 0.0, 0.75, -0.25, -0.5, 0.75, 0.0, -0.75, 0.25, 0.5, -0.75, -1.0, -0.75, -0.5, 0.5, 0.0, -0.5, 0.25, 0.0, 0.25, 0.25, -0.25, 0.75, 0.0, -0.75, 0.5, -0.25, 0.75, 0.75, 0.0, -0.75, -0.5, -1.0, 0.75, 0.75, 0.5, -0.75, 0.5, 0.5, -1.0, 0.0, 0.5, -0.25, 0.0, -0.5, -0.5, -0.5, -0.75, 0.75, -0.5, 0.5, 0.75, -0.75, 0.0, -1.0, -1.0, -0.75, 0.0, 0.25, -1.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("internal");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer001.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array1 = new Float32Array([-1.0, 0.75, -0.75, -1.0, -1.0, 1.0, 0.5, -1.0, 0.0, -1.0, 0.0, 0.0, 0.75, 1.0, 0.75, 0.75, -0.25, 0.0, -0.25, 1.0, -0.5, -0.5, 0.25, 0.5, -0.75, -0.5, 1.0, -1.0, -1.0, -0.75, -0.25, 0.75, 0.5, 0.75, 0.5, -0.25, 0.0, -0.5, 0.0, 0.25, -0.25, 1.0, -1.0, 0.0, -1.0, -0.75, 0.5, 0.25, 0.25, -1.0, 0.0, 0.25, 0.0, -0.75, 0.75, 1.0, -0.5, -0.5, -0.75, -0.5, 0.75, 0.25, -0.25, -0.25, 0.75, -1.0, -0.5, -0.5, 1.0, 0.5, -1.0, 0.0, 0.5, -1.0, 1.0, 0.0, 0.75, 1.0, -0.25, 1.0, -1.0, -0.25, 0.5, 0.25, 0.0, -0.75, 1.0, -0.5, -0.25, -0.25, -0.5, 0.75, 0.5, 0.25, -0.5, 0.0, 1.0, 0.75, -0.5, -0.25, ]);
    
    device00.pushErrorScope("internal");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array2 = new Float32Array([0.25, -0.75, -0.75, 1.0, -0.25, -1.0, 0.5, -0.75, 0.5, 0.0, 0.0, 0.5, 1.0, 0.75, 0.0, 0.25, 1.0, -0.25, -1.0, 1.0, -0.25, -0.75, 0.0, -0.75, -0.75, -0.25, 0.75, -0.75, 1.0, -0.25, 0.5, 0.0, -0.5, 0.25, 0.5, 0.0, 0.25, 0.5, 0.25, 0.25, 0.0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.75, -0.5, 1.0, -0.25, -0.75, 0.25, 1.0, 0.25, 0.0, 0.5, -0.25, 0.5, 0.75, -0.5, -0.75, 1.0, 0.0, -1.0, 0.25, 1.0, 0.0, -0.75, 0.75, -1.0, -0.25, -0.75, -1.0, -0.25, 0.5, 0.5, -0.75, -0.25, 0.0, -0.25, -0.25, 0.75, -0.5, -1.0, -0.75, 0.5, 1.0, -0.25, -0.5, -0.5, -0.25, 1.0, -1.0, 0.75, 0.5, 0.25, 0.0, -0.5, -0.5, -0.5, ]);
    device10.destroy();
    buffer000.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([-0.25, -0.25, 0.75, 0.5, 0.75, -0.75, -0.75, 0.25, 0.25, 0.5, -0.5, -0.75, -0.5, 0.25, 1.0, 0.0, 0.75, 0.0, 0.75, -0.75, 1.0, -0.25, 0.25, 0.0, 0.75, -0.25, -0.75, -0.25, 0.5, 0.0, -0.5, 0.25, 0.0, 0.5, 1.0, 1.0, 0.75, -1.0, 0.75, -0.75, 0.25, -0.25, 0.25, -0.25, -0.25, 0.75, 0.75, 0.0, 0.5, 0.75, 0.75, 0.5, -0.5, 0.75, -0.75, 0.75, 0.5, 0.75, -1.0, 0.0, -0.5, 0.0, -1.0, -0.25, 0.25, -1.0, 0.5, 0.25, 0.0, 0.25, 0.5, 1.0, 0.25, 1.0, 0.5, 1.0, -0.75, 0.5, -0.75, -0.5, -0.75, 0.75, 0.5, -0.75, 0.25, 0.5, 0.25, 0.75, -0.5, 0.0, -0.75, -1.0, -0.5, 1.0, 0.25, -0.5, -1.0, 0.75, 0.25, -0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([-0.25, -0.5, 1.0, -0.75, 0.25, -0.25, -0.75, 0.75, -0.5, 0.5, 0.0, -0.5, -0.5, -0.5, -0.75, 0.75, 0.0, 0.5, 0.0, -1.0, -1.0, 0.75, 0.5, -1.0, 0.25, 1.0, -0.25, 0.75, 0.25, -0.75, 0.5, 1.0, -0.75, -0.5, 0.5, -0.75, -0.75, 1.0, -0.5, -0.75, 0.0, 0.0, 0.5, -1.0, 0.0, -0.75, -0.25, -1.0, 0.75, 0.5, 0.75, 0.75, -0.5, -0.5, 0.0, -1.0, 0.0, 1.0, -0.25, -0.25, 0.25, -1.0, -0.5, 0.0, 0.0, -0.25, 0.5, 0.0, -0.75, 1.0, 0.5, -1.0, 0.75, -0.75, 0.5, 0.75, 0.25, 0.5, -0.75, 0.5, 0.75, 0.25, 0.25, -1.0, -1.0, -0.5, -0.75, -0.5, 0.5, 0.5, -0.5, 1.0, 0.75, 0.75, 0.25, 0.25, 0.25, 1.0, -0.5, 1.0, ]);
    const array5 = new Float32Array([0.0, 1.0, -1.0, 0.0, -0.5, 0.5, 0.25, 0.25, 0.0, -0.25, 0.0, 0.5, -0.75, 0.0, 0.5, 0.5, -0.25, -1.0, 0.25, 0.0, -0.25, -1.0, -1.0, 0.75, -0.75, 0.5, 1.0, 0.0, 0.25, -0.25, 1.0, -0.5, 1.0, 0.0, 0.5, -1.0, -0.75, 1.0, 0.25, 1.0, 0.5, -0.75, 0.0, 0.5, -0.25, 0.0, 0.25, 0.0, -0.75, 0.75, 1.0, 0.5, 0.0, 0.25, 0.25, -0.25, -1.0, 0.0, -0.5, 0.25, 0.75, -0.25, -1.0, 0.75, -0.5, -0.25, 0.0, 0.25, 0.5, 1.0, 0.75, -1.0, -1.0, 0.25, -0.5, -0.25, 0.75, -0.25, 1.0, 0.75, -0.75, -0.75, -1.0, -0.25, -0.25, 0.25, 0.25, -0.75, 0.25, 0.5, -0.25, 0.25, 0.75, 0.25, 1.0, 0.5, 0.5, -1.0, 0.5, -0.75, ]);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const array6 = new Float32Array([-1.0, 0.75, 0.25, -1.0, 0.25, -1.0, -0.5, 1.0, 0.0, -0.5, 0.0, -0.25, 0.0, 0.0, 1.0, 0.75, 0.75, 0.75, 0.5, -1.0, -0.5, -1.0, 0.25, 0.25, -0.5, -0.25, 1.0, 0.0, -0.5, -0.5, -1.0, 0.75, 0.25, -0.25, 0.0, -0.5, -0.5, -0.5, -0.75, -0.75, -0.5, -1.0, 0.0, -0.25, -0.5, 0.25, 0.75, -0.75, 0.25, 1.0, 0.5, 1.0, 0.0, 1.0, -0.25, -0.75, -0.25, -0.75, 0.0, -0.25, 0.75, 0.75, 0.5, -0.75, 0.0, -0.75, -1.0, 0.75, 0.75, 0.75, 1.0, 0.75, 0.25, -0.5, -1.0, -0.5, -0.25, -1.0, 0.0, -1.0, 0.25, -0.5, -0.5, 0.25, -0.5, -0.75, -0.75, 0.0, -0.25, -1.0, -0.25, -0.5, -0.5, 1.0, -0.75, 1.0, 0.0, -0.25, 0.25, 0.5, ]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder001.popDebugGroup();
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const array7 = new Float32Array([-0.5, 0.5, 0.0, -1.0, 0.0, 0.5, 0.75, -1.0, 1.0, 1.0, 1.0, 0.5, 0.25, 0.25, 1.0, -0.75, -1.0, 0.75, -0.25, 0.5, 0.25, 0.75, -0.5, 0.25, -0.75, 0.5, 1.0, 0.0, 0.25, 0.0, 1.0, -0.75, 0.0, 0.0, -0.5, 1.0, -0.5, -0.75, -0.25, 0.5, -0.25, 0.25, -0.75, -0.5, -0.75, -1.0, -1.0, -1.0, 0.5, -0.75, -0.75, 1.0, -1.0, -1.0, 0.0, 0.0, -1.0, 0.25, 0.25, 0.0, -0.5, -0.25, 0.25, 0.5, -0.25, -0.25, 0.75, 1.0, 0.5, 0.5, -0.25, 0.25, 0.0, -1.0, 0.5, -0.25, 0.5, 0.75, 0.0, 0.5, 0.5, 0.0, 1.0, 1.0, 0.5, -0.75, 0.75, -1.0, 0.75, -1.0, 1.0, 0.75, 0.75, -0.75, 0.25, 0.75, 0.0, -0.25, -0.75, -0.5, ]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const array8 = new Float32Array([1.0, -0.5, 0.25, 1.0, 0.5, -1.0, 0.75, 1.0, 1.0, 0.25, -0.75, -0.75, 0.0, -1.0, 0.0, 0.75, -0.25, -1.0, 0.75, 0.25, -1.0, 0.0, -0.25, -0.25, 0.75, 0.0, -0.25, -0.25, -0.5, 0.5, -0.25, -0.25, 0.5, -0.5, -0.25, 0.75, 0.5, -0.75, 0.0, 1.0, 1.0, 1.0, 0.0, -0.5, 0.75, 0.75, 1.0, 0.25, 0.5, 0.5, -0.75, -0.75, -1.0, 0.25, -0.5, 0.25, 0.5, -0.75, 0.5, -0.75, 0.75, 0.25, -1.0, 0.25, -1.0, 1.0, 1.0, -0.25, -0.25, -0.25, 0.75, -1.0, 0.0, 0.75, 1.0, 0.25, 0.0, 0.0, -0.25, 0.75, 0.0, 0.25, 0.25, 0.5, -1.0, 1.0, 0.5, 0.25, 1.0, 0.5, -0.75, 0.0, -0.25, 0.0, -1.0, 1.0, -0.5, -0.25, 0.75, -1.0, ]);
    
    command_encoder000.popDebugGroup()
    buffer005.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_bundle_encoder000.popDebugGroup();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    command_encoder000.insertDebugMarker("mymarker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer202.destroy()
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    device20.pushErrorScope("out-of-memory");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer200.destroy()
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    buffer004.destroy()
    render_bundle_encoder001.popDebugGroup();
    buffer002.destroy()
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    buffer201.destroy()
    
    command_encoder002.insertDebugMarker("mymarker");
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    command_encoder002.pushDebugGroup("mygroupmarker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
    device20.pushErrorScope("validation");
    const command_buffer004 = command_encoder004.finish();
    
    
    
    
    command_encoder001.insertDebugMarker("mymarker");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    buffer003.destroy()
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    
    const command_buffer003 = command_encoder003.finish();
    
    command_encoder001.popDebugGroup()
    render_bundle_encoder000.popDebugGroup();
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer204.destroy()
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
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    buffer205.destroy()
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder200.insertDebugMarker("mymarker");
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device00.pushErrorScope("validation");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    command_encoder001.popDebugGroup()
    command_encoder200.clearBuffer(buffer206);
    
    
    
    command_encoder200.popDebugGroup()
    device00.queue.writeBuffer(buffer0010, 0, array8, 0, array8.length);
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    buffer008.destroy()
    command_encoder002.clearBuffer(buffer0010);
    buffer009.destroy()
    device00.pushErrorScope("out-of-memory");
    command_encoder200.clearBuffer(buffer206);
    
    device00.queue.writeBuffer(buffer0010, 0, array4, 0, array4.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder000.copyBufferToBuffer(
        buffer006,
        0,
        buffer0010,
        0,
        400
    );
    device00.queue.writeBuffer(buffer0010, 0, array4, 0, array4.length);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    buffer007.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder002.popDebugGroup()
    command_encoder200.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    command_encoder005.insertDebugMarker("mymarker");
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    device00.queue.writeBuffer(buffer0010, 0, array8, 0, array8.length);
    command_encoder000.insertDebugMarker("mymarker");
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
    
    buffer006.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    device00.queue.writeBuffer(buffer0010, 0, array7, 0, array7.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_buffer400 = command_encoder400.finish();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    command_encoder001.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer0010, 0, array2, 0, array2.length);
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder200.insertDebugMarker("mymarker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    buffer203.destroy()
    
    device40.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    command_encoder001.clearBuffer(buffer0010);
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder200.popDebugGroup()
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    command_encoder201.insertDebugMarker("mymarker");
    
    device00.queue.writeBuffer(buffer0010, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer0010, 0, array3, 0, array3.length);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.writeBuffer(buffer0010, 0, array6, 0, array6.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder200.clearBuffer(buffer206);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device00.queue.writeBuffer(buffer0010, 0, array5, 0, array5.length);
    device00.pushErrorScope("out-of-memory");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer0010, 0, array6, 0, array6.length);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const array9 = new Float32Array([-0.5, -0.75, -0.75, 0.5, -0.5, -0.25, 0.5, 0.5, 1.0, 0.5, 0.5, -1.0, 0.75, 1.0, -0.5, 0.5, -0.75, -1.0, 1.0, -0.25, -0.75, 0.0, -0.25, -0.75, 0.25, -0.75, -1.0, 1.0, 0.5, 0.75, 0.0, -0.25, -0.25, 0.0, 1.0, 1.0, -0.75, 0.25, -0.75, -0.25, 0.25, -0.5, 0.75, 0.0, -0.25, 1.0, -0.5, 0.75, 1.0, 0.0, 0.0, -1.0, 0.5, -0.5, 0.5, -1.0, 0.25, -0.5, -0.25, 0.0, -0.5, -0.5, 0.5, -1.0, -1.0, 0.25, -0.5, 0.0, -0.25, 0.0, 0.0, 0.0, 0.25, 0.0, 0.75, 1.0, 0.5, -1.0, -0.75, 0.25, -0.25, 0.25, -0.5, 1.0, -1.0, 0.75, -0.25, 0.0, -0.75, 0.25, 1.0, -0.25, 0.75, 0.0, 0.0, 1.0, -1.0, -0.5, 0.0, 0.5, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.queue.writeBuffer(buffer206, 0, array9, 0, array9.length);
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    device20.queue.writeBuffer(buffer206, 0, array2, 0, array2.length);
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
    buffer206.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    buffer401.destroy()
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    command_encoder005.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    buffer0010.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder001.popDebugGroup()
    
    
    device50.pushErrorScope("internal");
    const command_buffer200 = command_encoder200.finish();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.popDebugGroup()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
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
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device70.pushErrorScope("out-of-memory");
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer402.destroy()
    command_encoder005.insertDebugMarker("mymarker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
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
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const command_buffer000 = command_encoder000.finish();
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_buffer402 = command_encoder402.finish();
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_buffer401 = command_encoder401.finish();
    
    device70.queue.writeBuffer(buffer701, 0, array8, 0, array8.length);
    command_encoder005.pushDebugGroup("mygroupmarker")
    
    
    
    const array10 = new Float32Array([1.0, -1.0, 0.75, 0.0, 0.0, -0.75, 1.0, -1.0, 0.75, -0.5, 1.0, -1.0, -1.0, 1.0, 0.5, 0.75, 0.0, -0.25, -0.75, 0.25, 0.25, -0.75, -0.25, 0.75, -0.75, -0.75, 0.0, 0.5, -0.75, -1.0, 0.0, 0.75, 0.5, -0.5, -0.75, -1.0, 0.75, -0.25, 0.5, -0.75, -0.5, 0.0, 0.25, -0.75, 0.25, -0.25, 1.0, 0.0, -0.5, -1.0, -0.25, 1.0, -1.0, 0.25, -0.5, -0.75, -1.0, -0.25, 0.5, 1.0, 0.75, 0.5, 0.0, 0.5, 0.25, -1.0, 0.25, -0.75, -0.75, -1.0, -0.75, 0.0, -0.75, 0.75, 0.5, -0.5, 0.25, -1.0, 0.0, 0.0, -0.75, 0.25, 0.75, 0.5, 1.0, -0.5, -0.25, -0.5, -0.25, -0.5, 0.25, -0.75, -1.0, 0.75, 0.5, 0.25, 0.5, 1.0, -1.0, 0.0, ]);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    buffer208.destroy()
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    buffer400.destroy()
    command_encoder202.insertDebugMarker("mymarker");
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    command_encoder005.insertDebugMarker("mymarker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    device70.queue.writeBuffer(buffer701, 0, array8, 0, array8.length);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    device70.queue.writeBuffer(buffer701, 0, array6, 0, array6.length);
    device70.queue.writeBuffer(buffer701, 0, array7, 0, array7.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder202.insertDebugMarker("mymarker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.writeBuffer(buffer701, 0, array10, 0, array10.length);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    command_encoder203.insertDebugMarker("mymarker");
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder002.popDebugGroup();
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device70.queue.writeBuffer(buffer701, 0, array1, 0, array1.length);
    const command_buffer203 = command_encoder203.finish();
    command_encoder006.insertDebugMarker("mymarker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    buffer500.destroy()
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer400, ]);
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    device70.queue.writeBuffer(buffer701, 0, array4, 0, array4.length);
    buffer700.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    command_encoder202.popDebugGroup()
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    command_encoder201.insertDebugMarker("mymarker");
    
    command_encoder700.pushDebugGroup("mygroupmarker")
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder201.popDebugGroup();
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const command_buffer500 = command_encoder500.finish();
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    {
        await buffer701.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer701.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer701.unmap();
        console.log(new Float32Array(data));
    }
    device70.queue.writeBuffer(buffer701, 0, array10, 0, array10.length);
    const command_buffer006 = command_encoder006.finish();
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    command_encoder403.insertDebugMarker("mymarker");
    device70.queue.writeBuffer(buffer701, 0, array2, 0, array2.length);
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const command_buffer403 = command_encoder403.finish();
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    device00.pushErrorScope("internal");
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    
    buffer207.destroy()
    
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    device20.pushErrorScope("validation");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    device70.queue.writeBuffer(buffer701, 0, array10, 0, array10.length);
    
    
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const command_buffer007 = command_encoder007.finish();
    device50.queue.submit([command_buffer500, ]);
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder008.pushDebugGroup("mygroupmarker")
    command_encoder700.insertDebugMarker("mymarker");
    device40.queue.submit([command_buffer401, ]);
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device70.queue.writeBuffer(buffer701, 0, array5, 0, array5.length);
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder401.popDebugGroup();
    render_bundle_encoder400.popDebugGroup();
    device40.queue.writeBuffer(buffer403, 0, array10, 0, array10.length);
    
    command_encoder202.popDebugGroup()
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder201.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer007, ]);
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer200, command_buffer202, command_buffer203, ]);
    command_encoder002.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer404 = command_encoder404.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder001.popDebugGroup()
    command_encoder700.popDebugGroup()
    command_encoder008.popDebugGroup()
    const command_buffer008 = command_encoder008.finish();
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer006, ]);
    command_encoder005.popDebugGroup()
    const command_buffer005 = command_encoder005.finish();
    const command_buffer700 = command_encoder700.finish();
    device40.queue.submit([command_buffer404, ]);
    device70.queue.submit([command_buffer700, ]);
    device00.queue.submit([command_buffer005, command_buffer008, ]);
}