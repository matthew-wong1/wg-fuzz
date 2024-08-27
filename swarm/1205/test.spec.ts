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
    const array0 = new Float32Array([1.0, 0.25, -0.5, 1.0, 0.0, -0.75, 0.75, 1.0, 0.5, 0.5, -1.0, 0.0, -0.5, 1.0, -0.75, -0.75, -0.25, 1.0, 0.5, -1.0, -1.0, 0.5, -0.5, -1.0, 0.0, 0.0, 0.75, 0.5, -1.0, 1.0, -1.0, 0.25, -0.25, -0.25, -1.0, 0.25, -0.5, -0.75, -0.75, 0.5, 0.5, -0.75, 0.75, -0.5, -0.75, -0.25, 0.0, -1.0, -0.5, -0.5, -0.25, -0.25, -1.0, -0.25, -0.5, -0.5, -0.5, 1.0, -0.25, -0.5, 0.5, 0.25, -1.0, 1.0, -0.25, -0.75, 0.5, 0.25, 0.75, 1.0, 0.75, 0.25, -0.5, 0.75, 0.5, 0.0, -0.75, 0.75, -0.25, 0.0, -1.0, -0.75, -0.5, 0.25, -0.75, -0.25, 1.0, 0.75, 0.75, -0.25, 1.0, -1.0, -1.0, 0.75, -1.0, 1.0, 0.5, 0.0, -1.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array1 = new Float32Array([0.0, 0.0, 0.0, -0.5, -0.75, -0.5, 0.5, 0.5, 1.0, -1.0, -1.0, -1.0, 1.0, -0.25, -1.0, -1.0, -0.25, 1.0, 0.5, 0.0, -0.25, 0.75, -0.5, -1.0, 0.25, 1.0, 1.0, 0.0, -0.25, 0.25, 1.0, 1.0, -0.75, 0.25, -0.75, -0.75, 0.25, -0.75, -0.25, -0.25, -0.5, 0.75, 0.0, 1.0, -1.0, 1.0, 1.0, -0.5, -1.0, 0.5, 0.25, -1.0, 0.25, -0.75, 1.0, -1.0, 0.5, 0.5, 0.0, -1.0, -0.5, 0.25, -0.75, -0.5, 0.25, 0.0, 0.25, -0.75, 0.75, 1.0, -0.25, -0.75, 1.0, -0.75, 0.25, -1.0, -0.5, 0.0, 0.0, 0.25, 1.0, -0.25, 0.0, -1.0, 0.0, 0.0, -0.25, 0.75, -1.0, 0.25, -0.25, -0.25, 0.0, 0.5, 0.5, 0.0, 0.5, -0.5, -0.75, 0.5, ]);
    const array2 = new Float32Array([0.0, -0.75, 0.75, 0.5, 0.5, -0.25, 1.0, -0.25, 1.0, 0.75, 1.0, 1.0, -0.5, -0.25, 0.0, -0.75, -1.0, 0.75, 0.0, 0.75, -0.25, -0.25, -0.25, -1.0, -1.0, -1.0, 0.0, 0.75, -1.0, 1.0, 1.0, -0.5, 0.25, 0.0, 0.75, 0.5, 1.0, 0.0, 0.5, -0.5, -0.5, -0.75, 0.0, 0.75, -0.25, -0.75, -0.75, 0.5, 0.75, 0.25, -0.75, 0.5, 1.0, 0.5, -0.75, 0.0, -1.0, 0.0, -0.5, 0.75, 1.0, 0.75, 0.75, -0.75, 0.25, 1.0, 0.25, 0.5, -0.5, -0.25, 0.0, 0.25, 0.5, -0.25, 0.25, -0.5, 0.75, 0.0, 0.25, -0.25, 1.0, 1.0, 0.25, 0.0, 0.75, -0.75, -0.5, -0.75, 0.75, 0.0, 0.75, -0.75, 0.0, -0.5, 1.0, -0.75, 0.0, 0.75, 0.0, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const array3 = new Float32Array([0.75, 1.0, 0.75, 1.0, -0.75, 0.25, 0.75, -0.25, 0.0, 1.0, -0.25, 0.5, 0.5, -0.5, 0.75, 1.0, -1.0, 0.25, 1.0, -1.0, 0.0, -0.75, 0.75, -0.25, 0.75, 1.0, 0.75, 0.25, -1.0, 0.5, 0.25, 0.25, 0.25, 0.5, 0.25, -1.0, -0.75, -0.25, 0.25, 0.0, 0.75, 0.25, 0.5, -0.5, -1.0, -0.5, -0.25, -0.25, 0.5, 1.0, -0.25, -1.0, -0.75, 0.25, -0.75, -0.75, 0.5, 0.75, 0.75, -0.25, 0.25, 0.0, 0.75, 1.0, -0.5, 0.25, -0.25, -0.75, -0.25, -0.5, 0.25, -0.25, -0.25, -0.25, -0.25, 0.75, 1.0, -0.5, 0.5, -0.25, -0.25, 0.75, -0.25, -0.25, 0.5, -0.5, 0.5, 1.0, 0.0, -1.0, 0.75, 0.25, -0.75, -1.0, 0.5, -0.75, -1.0, 0.0, 0.5, 0.5, ]);
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    const array4 = new Float32Array([-0.75, -0.75, 1.0, 0.75, -0.5, 0.5, -0.5, 0.5, 0.0, 0.5, 0.25, -0.5, 0.25, 0.25, -0.75, 1.0, -0.25, -1.0, 0.25, -0.75, -0.25, 1.0, 0.5, -0.5, 0.75, 0.25, -0.25, 0.0, 0.5, -0.5, -1.0, -0.5, -0.25, -0.75, -0.5, -1.0, -1.0, 0.0, 0.5, -0.75, -0.5, 0.0, -0.25, -0.5, 0.0, -0.25, -0.5, -0.75, -0.5, 0.25, 1.0, 0.5, 1.0, 0.0, 0.0, 0.5, -0.25, 1.0, -0.25, 0.5, -0.5, -0.75, 0.5, 0.5, 1.0, 0.5, -1.0, 0.75, 0.5, 0.25, 0.75, -1.0, -0.5, -0.5, 0.75, 0.5, 0.25, -0.5, -0.25, 0.75, 0.0, 0.0, 0.0, -0.75, 0.75, -0.75, -0.5, 0.25, -0.5, -0.75, 0.5, 0.0, -1.0, -0.5, -0.25, 0.75, 0.25, 0.25, 0.25, -0.5, ]);
    
    
    const array5 = new Float32Array([0.75, 0.75, 0.25, 0.75, -1.0, 0.5, -0.75, 0.75, -0.5, 0.75, 0.0, 0.25, -1.0, -1.0, 1.0, -0.5, -0.25, 0.0, 0.0, 0.0, 0.5, -0.5, 0.75, -0.75, -0.75, -1.0, 0.75, 0.0, 0.25, 0.25, -0.25, -0.5, -0.75, 0.25, -0.25, 0.75, -0.5, 0.75, 0.25, 1.0, -0.75, 0.5, 0.75, -0.5, 1.0, 0.75, -1.0, 0.75, 0.75, -1.0, -1.0, -0.5, 0.75, -0.5, -1.0, -0.5, 0.75, -0.75, -0.75, -1.0, -0.75, 1.0, 0.25, 0.5, 0.5, 0.25, 0.25, 1.0, -0.75, -1.0, 0.25, 1.0, -0.25, -0.5, -0.5, -0.25, -0.75, 0.5, 0.0, 0.75, 0.75, -0.25, -0.5, 0.25, -0.75, -0.5, -0.75, 0.0, 0.0, -0.5, -1.0, 0.5, -0.75, -1.0, -0.25, -0.75, 0.0, 0.75, -0.25, 0.25, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    
    
    
    
    const array6 = new Float32Array([-0.5, 1.0, 0.75, 0.75, 0.75, -1.0, -1.0, 0.75, -0.5, 0.25, -0.5, 1.0, 0.25, -1.0, 0.25, 0.5, -0.5, -1.0, 0.75, -1.0, 0.75, -1.0, -1.0, 0.5, -0.75, 0.25, 0.0, -0.5, -0.25, -1.0, -0.5, -0.25, 0.5, 0.0, 0.25, -0.75, -0.5, 0.0, 0.0, -0.25, -0.5, 0.25, 0.25, 0.75, 0.0, 0.5, -1.0, 0.75, 0.75, -0.5, 0.5, 0.0, 0.75, -0.5, 0.0, -0.5, -0.75, 0.5, 0.5, -1.0, -0.25, -0.75, -0.5, -0.25, -1.0, 0.5, -0.75, 0.75, 0.5, 0.0, 1.0, 0.0, -0.75, -0.75, 0.0, 0.75, -0.75, 0.75, 0.5, 1.0, 0.25, -0.75, 0.25, 0.25, -0.25, 1.0, 0.75, 0.75, 0.5, -1.0, 0.75, -0.5, 0.25, -0.25, 0.25, -0.75, 0.25, 1.0, 0.25, 0.25, ]);
    
    
    
    
    
    
    
    const array7 = new Float32Array([1.0, 0.5, 0.75, -0.75, -0.25, 0.75, 1.0, 0.75, -0.25, 0.75, -0.5, -0.25, -1.0, 0.25, 0.75, -0.5, 0.75, 0.75, -0.75, -0.5, 0.75, -0.5, -0.5, -0.75, -0.75, 0.0, 0.25, 0.75, -0.25, 0.75, -0.5, 0.0, -0.5, -0.75, -0.75, 0.0, 1.0, -0.75, 0.25, 0.0, 1.0, 0.25, 0.0, -0.5, 0.75, -0.25, -0.25, -1.0, 0.75, 0.5, -0.75, 0.0, 0.25, -1.0, -0.25, 0.5, -1.0, 0.5, -0.25, -0.25, -0.5, 0.0, 0.0, -0.75, -0.75, 0.25, -0.5, 1.0, 0.0, 0.0, 0.5, -0.5, 0.5, 0.5, 0.75, -1.0, 0.5, 1.0, -1.0, 0.75, -0.75, 1.0, -0.5, -0.5, 1.0, -0.25, 0.75, -1.0, -0.25, 0.5, 0.75, -0.25, 0.75, -0.75, -0.5, -1.0, -0.25, -1.0, -1.0, -1.0, ]);
    
    const array8 = new Float32Array([0.5, 0.0, 0.5, 0.0, 0.25, 0.25, 1.0, 0.5, 0.25, -0.5, -0.75, 0.5, 0.75, 0.25, -1.0, -1.0, 0.75, -0.5, -0.25, -0.5, -1.0, 1.0, -0.25, -0.25, 1.0, 0.25, -0.25, -0.5, -0.25, -0.75, -0.75, 0.75, 0.75, -0.75, 0.0, -0.5, -1.0, 0.75, -1.0, 0.5, 0.5, 0.0, 0.5, -0.75, -1.0, 0.25, 0.5, -0.75, 0.75, -0.5, 0.0, 0.75, 0.0, -0.25, -1.0, 0.5, -1.0, 0.75, 0.0, 0.75, 1.0, -0.25, -0.25, 1.0, 0.75, 0.0, 0.75, -0.5, 0.75, -0.5, 0.5, -0.25, 0.5, 1.0, -0.25, 0.0, -0.25, 0.0, 0.5, 0.5, -0.5, 0.5, -0.25, 0.0, 1.0, -0.25, 0.0, 0.25, 0.0, -0.25, 0.0, 1.0, 1.0, 0.0, 0.0, 0.25, -0.75, -1.0, 0.5, -0.5, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("validation");
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const array9 = new Float32Array([-0.25, -0.5, 1.0, -0.75, 0.25, -0.25, 1.0, 1.0, 0.75, -0.5, -0.5, 1.0, 0.5, 1.0, -1.0, 1.0, 1.0, -0.25, -0.75, -1.0, 1.0, 0.75, 0.25, -1.0, 1.0, -0.75, 0.0, 0.75, 0.0, 0.75, 0.5, 0.75, -0.75, -0.5, -0.25, 0.0, 1.0, -0.5, -1.0, 0.5, 0.5, 0.25, 0.5, 0.0, -1.0, -0.25, -0.25, -0.5, -1.0, -0.25, -0.5, 0.5, -0.25, -0.5, 0.5, -0.25, -0.5, 0.75, -0.5, 1.0, 0.25, 1.0, -1.0, 0.0, -0.5, -0.75, 0.25, -0.25, 0.0, -0.5, 0.75, -0.5, 0.75, 0.0, -1.0, -1.0, 0.0, -1.0, -0.25, -0.25, -1.0, 1.0, -0.5, -0.75, 0.25, -1.0, -0.25, 0.75, 0.5, 1.0, 0.75, 0.75, 0.0, 0.0, -0.5, -0.25, 1.0, 0.75, 0.0, 0.0, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    command_encoder000.insertDebugMarker("mymarker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder200.popDebugGroup();
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    texture200.destroy();
    
    
    device30.destroy();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus",
        dimension: "2d"
    });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2010.executeBundles([render_bundle_encoder202, ])
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder201.pushDebugGroup("mygroupmarker")
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
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
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    command_encoder201.popDebugGroup()
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const command_buffer201 = command_encoder201.finish();
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
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    texture201.destroy();
    
    
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.pushErrorScope("out-of-memory");
    texture202.destroy();
    render_pass_encoder2020.setStencilReference(1);
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
    
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2021.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder2020.popDebugGroup();
    
    render_pass_encoder2021.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2021.setStencilReference(1);
    
    
    render_pass_encoder2021.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2021.pushDebugGroup("group_marker");
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16float",
        dimension: "2d"
    });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    device20.queue.writeTexture({ texture: texture204 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const array10 = new Float32Array([-1.0, 0.5, -0.25, 1.0, 0.5, -0.75, 0.75, -0.75, 0.25, -1.0, 0.0, -1.0, -0.75, 0.0, 0.0, 0.75, -0.5, 0.25, -1.0, -0.5, 0.0, -1.0, -0.75, 0.75, 1.0, -0.75, 0.0, 0.25, 0.0, -0.75, 1.0, 0.25, -1.0, -1.0, -0.25, -0.5, 0.0, -0.5, 0.5, -0.5, -0.25, -0.5, 1.0, 1.0, -0.25, -0.25, -0.5, -0.75, -0.25, 0.25, 1.0, 0.25, -0.25, 1.0, -0.25, 0.75, 1.0, 1.0, 0.75, 0.25, -0.75, 0.5, -0.25, 1.0, -0.75, -0.75, -0.25, 0.75, -0.5, 0.5, -0.75, 0.0, 0.0, 1.0, -0.75, -0.25, 0.75, -1.0, 0.5, -0.5, 0.75, 0.75, 0.0, -0.75, -0.75, 0.0, 0.0, -0.5, 0.5, -0.25, -0.25, -0.5, -0.25, 0.0, 0.25, 0.25, 0.75, 0.0, 1.0, -0.5, ]);
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2021.executeBundles([])
    texture204.destroy();
    
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2030.pushDebugGroup("group_marker");
    command_encoder204.pushDebugGroup("mygroupmarker")
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder204.insertDebugMarker("mymarker");
    render_pass_encoder2021.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2021.executeBundles([render_bundle_encoder200, ])
    device20.pushErrorScope("out-of-memory");
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("out-of-memory");
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    render_pass_encoder2021.setStencilReference(1);
    
    device20.queue.submit([command_buffer201, ]);
    
    render_pass_encoder2030.insertDebugMarker("marker");
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    render_pass_encoder2021.executeBundles([])
    
    render_pass_encoder2010.executeBundles([render_bundle_encoder202, ])
    render_pass_encoder2030.executeBundles([])
    render_pass_encoder2030.pushDebugGroup("group_marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture204 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.executeBundles([])
    command_encoder204.popDebugGroup()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    command_encoder205.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder2020.setStencilReference(1);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder2050.setPipeline(compute_pipeline202);
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2030.popDebugGroup();
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group200);
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_pass_encoder2040.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    buffer201.destroy()
    render_pass_encoder2030.setStencilReference(1);
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2021.executeBundles([render_bundle_encoder202, ])
    device20.pushErrorScope("internal");
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder2040.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.popDebugGroup();
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2021.popDebugGroup();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    buffer200.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.popDebugGroup();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder2040.pushDebugGroup("group_marker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    render_pass_encoder2010.executeBundles([])
    render_pass_encoder2020.setStencilReference(1);
    texture200.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    texture203.destroy();
    render_pass_encoder2021.executeBundles([])
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder101.insertDebugMarker("mymarker");
    render_bundle_encoder200.popDebugGroup();
    compute_pass_encoder2040.setPipeline(compute_pipeline203);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder202.insertDebugMarker("marker");
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    device20.pushErrorScope("out-of-memory");
    render_pass_encoder2030.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
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
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout203]
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    render_pass_encoder2010.popDebugGroup();
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2021.executeBundles([])
    compute_pass_encoder2000.popDebugGroup()
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.popDebugGroup();
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2040.popDebugGroup()
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2050.dispatchWorkgroups(100);
    
    
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device00.queue.writeTexture({ texture: texture000 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
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
    
    render_pass_encoder2040.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2040.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2010.executeBundles([])
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group201);
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout206,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.insertDebugMarker("marker");
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2021.executeBundles([render_bundle_encoder202, ])
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group202);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2032,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const command_buffer100 = command_encoder100.finish();
    
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.executeBundles([])
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
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
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    
    
    render_pass_encoder2000.setStencilReference(1);
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2051 = device20.createComputePipeline({
        label: "compute_pipeline2051",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2052 = device20.createComputePipeline({
        label: "compute_pipeline2052",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    texture205.destroy();
    const compute_pipeline2053 = device20.createComputePipeline({
        label: "compute_pipeline2053",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
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
    const compute_pipeline2054 = device20.createComputePipeline({
        label: "compute_pipeline2054",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2060.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline2055 = device20.createComputePipeline({
        label: "compute_pipeline2055",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2056 = device20.createComputePipeline({
        label: "compute_pipeline2056",
        layout: pipeline_layout207,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2057 = device20.createComputePipeline({
        label: "compute_pipeline2057",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2058 = device20.createComputePipeline({
        label: "compute_pipeline2058",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const compute_pipeline2059 = device20.createComputePipeline({
        label: "compute_pipeline2059",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2060 = device20.createComputePipeline({
        label: "compute_pipeline2060",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2061 = device20.createComputePipeline({
        label: "compute_pipeline2061",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
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
    command_encoder205.insertDebugMarker("mymarker");
    const compute_pipeline2062 = device20.createComputePipeline({
        label: "compute_pipeline2062",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    render_pass_encoder2060.insertDebugMarker("marker");
    render_pass_encoder2020.executeBundles([])
    const compute_pipeline2063 = device20.createComputePipeline({
        label: "compute_pipeline2063",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2064 = device20.createComputePipeline({
        label: "compute_pipeline2064",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2065 = device20.createComputePipeline({
        label: "compute_pipeline2065",
        layout: pipeline_layout208,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2066 = device20.createComputePipeline({
        label: "compute_pipeline2066",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2067 = device20.createComputePipeline({
        label: "compute_pipeline2067",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2068 = device20.createComputePipeline({
        label: "compute_pipeline2068",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2021.executeBundles([])
    const compute_pipeline2069 = device20.createComputePipeline({
        label: "compute_pipeline2069",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2070 = device20.createComputePipeline({
        label: "compute_pipeline2070",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2060.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline2071 = device20.createComputePipeline({
        label: "compute_pipeline2071",
        layout: pipeline_layout208,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder2060.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline2072 = device20.createComputePipeline({
        label: "compute_pipeline2072",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2073 = device20.createComputePipeline({
        label: "compute_pipeline2073",
        layout: pipeline_layout208,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline2074 = device20.createComputePipeline({
        label: "compute_pipeline2074",
        layout: pipeline_layout208,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const compute_pipeline2075 = device20.createComputePipeline({
        label: "compute_pipeline2075",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2076 = device20.createComputePipeline({
        label: "compute_pipeline2076",
        layout: pipeline_layout207,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.popDebugGroup();
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    
    const compute_pipeline2077 = device20.createComputePipeline({
        label: "compute_pipeline2077",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2078 = device20.createComputePipeline({
        label: "compute_pipeline2078",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2079 = device20.createComputePipeline({
        label: "compute_pipeline2079",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline2080 = device20.createComputePipeline({
        label: "compute_pipeline2080",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.executeBundles([])
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.setStencilReference(1);
    const compute_pass_encoder2070 = command_encoder207.beginComputePass({ label: "compute_pass_encoder2070" });
    compute_pass_encoder2070.setPipeline(compute_pipeline2033);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2020.executeBundles([])
    render_pass_encoder2010.executeBundles([])
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture207 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.destroy();
    render_pass_encoder2030.popDebugGroup();
    render_bundle_encoder202.popDebugGroup();
    const compute_pass_encoder2051 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2051" });
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    const compute_pipeline2081 = device20.createComputePipeline({
        label: "compute_pipeline2081",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2051.setPipeline(compute_pipeline2070);
    const compute_pipeline2082 = device20.createComputePipeline({
        label: "compute_pipeline2082",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture207 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder2080 = command_encoder208.beginRenderPass({
        label: "render_pass_encoder2080",
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
    const compute_pipeline2083 = device20.createComputePipeline({
        label: "compute_pipeline2083",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_pass_encoder2060.setStencilReference(1);
    const compute_pipeline2084 = device20.createComputePipeline({
        label: "compute_pipeline2084",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2085 = device20.createComputePipeline({
        label: "compute_pipeline2085",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2086 = device20.createComputePipeline({
        label: "compute_pipeline2086",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2087 = device20.createComputePipeline({
        label: "compute_pipeline2087",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const command_encoder209 = device20.createCommandEncoder({ label: "command_encoder209" });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout206]
    });
    command_encoder204.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline2088 = device20.createComputePipeline({
        label: "compute_pipeline2088",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2089 = device20.createComputePipeline({
        label: "compute_pipeline2089",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.setPipeline(compute_pipeline2011);
    const compute_pipeline2090 = device20.createComputePipeline({
        label: "compute_pipeline2090",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2091 = device20.createComputePipeline({
        label: "compute_pipeline2091",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2092 = device20.createComputePipeline({
        label: "compute_pipeline2092",
        layout: pipeline_layout208,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2080.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const compute_pipeline2093 = device20.createComputePipeline({
        label: "compute_pipeline2093",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.executeBundles([])
    const compute_pipeline2094 = device20.createComputePipeline({
        label: "compute_pipeline2094",
        layout: pipeline_layout208,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2090 = command_encoder209.beginRenderPass({
        label: "render_pass_encoder2090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2050,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline2095 = device20.createComputePipeline({
        label: "compute_pipeline2095",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2030.executeBundles([])
    
    const array11 = new Float32Array([-1.0, -0.25, 1.0, 0.5, -1.0, 1.0, -0.5, 0.25, 0.0, 0.75, 0.25, 0.25, 0.0, -0.25, -0.25, -0.5, 0.5, 0.25, -0.5, 1.0, 0.0, -1.0, -0.25, -0.5, -1.0, 0.25, 0.75, -0.5, 0.5, -0.25, 0.5, -0.25, 0.5, 1.0, 0.75, 1.0, -1.0, -0.75, 1.0, -1.0, 1.0, 0.25, -1.0, 1.0, 0.25, 0.0, -0.25, -0.25, -1.0, -0.25, -0.75, 0.0, -0.25, -0.75, 0.25, -0.5, -0.25, 1.0, 1.0, 0.75, -1.0, 0.75, 0.0, -0.75, 1.0, -1.0, -0.25, -0.75, 0.5, 0.25, 0.25, -1.0, -0.75, -0.25, 0.5, 0.5, 0.75, -0.25, 1.0, 0.75, 0.0, 0.75, 0.0, 1.0, -0.75, 0.75, 0.0, 0.0, 0.0, -0.75, 0.75, 0.25, -0.5, 0.75, 0.5, 0.25, -1.0, 0.25, -0.75, 0.75, ]);
    
    const compute_pipeline2096 = device20.createComputePipeline({
        label: "compute_pipeline2096",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2097 = device20.createComputePipeline({
        label: "compute_pipeline2097",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2098 = device20.createComputePipeline({
        label: "compute_pipeline2098",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder206.copyTextureToTexture(
        {
            texture: texture207
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
    render_pass_encoder2080.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder2050.end();
    compute_pass_encoder2040.popDebugGroup()
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline2011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group204);
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline2033.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    compute_pass_encoder2070.setBindGroup(0, bind_group205);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline2033.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    compute_pass_encoder2070.setBindGroup(0, bind_group206);
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder2070.dispatchWorkgroups(100);
    compute_pass_encoder2070.end();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline2070.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    compute_pass_encoder2051.setBindGroup(0, bind_group207);
    compute_pass_encoder2040.end();
    compute_pass_encoder2070.end();
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2060.popDebugGroup();
    const command_buffer207 = command_encoder207.finish();
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2051.dispatchWorkgroups(100);
    compute_pass_encoder2051.end();
    command_encoder205.popDebugGroup()
    render_pass_encoder2030.popDebugGroup();
    const command_buffer205 = command_encoder205.finish();
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer201, command_buffer205, command_buffer207, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2051.popDebugGroup()
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group208);
    compute_pass_encoder2020.end();
    device20.queue.submit([command_buffer201, ]);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder2021.popDebugGroup();
    const command_buffer208 = command_encoder208.finish();
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline2033.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    compute_pass_encoder2070.setBindGroup(0, bind_group209);
    compute_pass_encoder2070.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2050.end();
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline2033.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    compute_pass_encoder2070.setBindGroup(0, bind_group2010);
    device10.queue.submit([command_buffer100, ]);
    device20.queue.submit([command_buffer208, ]);
    device20.queue.submit([command_buffer201, ]);
    command_encoder204.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer205, ]);
    render_pass_encoder2090.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder2051.popDebugGroup()
    compute_pass_encoder2050.end();
    render_pass_encoder2090.popDebugGroup();
    render_pass_encoder2080.popDebugGroup();
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline2070.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    compute_pass_encoder2051.setBindGroup(0, bind_group2011);
    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline2033.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2025,
                },
            },
        ],
    });

    compute_pass_encoder2070.setBindGroup(0, bind_group2012);
    device20.queue.submit([command_buffer203, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2021.popDebugGroup();
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    compute_pass_encoder2051.end();
    render_pass_encoder2020.popDebugGroup();
}