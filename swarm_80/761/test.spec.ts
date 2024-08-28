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
    const array0 = new Float32Array([0.5, -0.25, 0.75, 0.5, 1.0, 1.0, 0.75, 0.75, 0.25, 0.0, -1.0, -0.5, 0.25, 0.5, -1.0, 0.75, 1.0, 1.0, -1.0, -0.75, -0.75, -1.0, -0.75, -0.25, 0.0, 0.0, -0.5, -1.0, -0.75, 1.0, -0.75, 0.5, -1.0, 1.0, -0.5, 0.5, 0.0, -0.5, 0.0, 0.5, -0.75, -1.0, 0.0, 0.25, -0.25, -1.0, 0.5, -0.75, 0.5, 0.0, -0.5, -0.75, 0.75, 0.5, -1.0, -1.0, 0.25, 0.75, 1.0, 0.75, -0.25, 0.0, -1.0, -0.5, -0.75, -0.75, -0.75, -0.5, 0.0, 0.5, 0.5, -0.25, 0.0, 0.5, -0.5, -0.5, 0.5, 1.0, 0.0, -0.75, -0.5, 0.5, -0.25, 0.5, -0.5, -1.0, -0.75, -0.5, 0.0, 0.5, -0.75, -0.75, -0.25, 1.0, 1.0, 0.75, -1.0, 0.75, 0.5, -0.5, ]);
    const array1 = new Float32Array([-0.5, -0.75, -1.0, 0.25, 0.5, -0.5, 0.0, -0.5, -0.75, 0.0, 0.5, 1.0, -1.0, 1.0, 0.25, 0.25, 0.5, 0.0, -0.75, 1.0, -0.25, -0.25, -0.25, 0.25, 0.25, -1.0, -0.25, 0.75, 1.0, 0.0, -1.0, 0.0, 0.5, -0.5, -1.0, 0.75, -0.75, 0.5, -1.0, -0.5, 0.0, 0.75, -0.75, -1.0, 0.5, -0.25, 1.0, -0.5, -0.5, -1.0, 1.0, -0.5, -0.25, -0.5, 0.0, -0.5, -0.75, 0.25, 0.0, -0.25, -0.25, -0.25, 0.25, -0.5, 0.5, 0.25, 0.0, 0.0, 0.25, 0.0, -0.5, 0.5, -0.75, 0.75, 1.0, 0.75, -0.25, -0.75, 0.75, 0.75, -0.75, 0.25, 0.25, 0.5, -0.25, 1.0, 0.5, 0.25, -1.0, -0.5, -1.0, 0.75, 0.75, -1.0, 0.25, 0.0, 1.0, 0.5, -0.25, -0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array2 = new Float32Array([1.0, -1.0, -0.25, -0.5, 0.5, -0.25, -0.5, 0.0, -0.5, 0.75, -0.75, 0.0, -1.0, 1.0, -0.5, 0.75, 0.0, 0.25, -1.0, 0.5, -0.25, 0.25, 0.0, 1.0, -0.25, -0.75, 0.25, 0.5, 1.0, 0.25, 0.5, 1.0, 1.0, 1.0, 1.0, -1.0, 0.5, -0.25, 0.75, -0.5, 0.25, -0.75, 0.75, 0.25, 0.75, -0.25, -0.5, 0.5, 0.0, -0.75, -0.75, -0.75, 1.0, -0.25, -0.25, 0.75, 1.0, 0.5, 0.0, 1.0, -1.0, -0.25, 1.0, -0.25, -1.0, -0.5, 1.0, 0.5, 0.25, 0.75, 0.0, 0.75, 0.75, 0.0, 0.75, -0.75, 0.5, 0.75, 1.0, -0.75, 0.5, -0.5, 0.0, 1.0, -0.75, 0.5, -1.0, -0.5, -1.0, -0.75, 0.5, -0.5, 0.5, 0.0, -1.0, 0.75, 0.5, 0.25, 0.5, -0.75, ]);
    const array3 = new Float32Array([1.0, -0.25, 0.75, 0.75, 0.5, 0.0, 1.0, 0.0, 0.25, 0.0, 0.0, 0.5, -0.25, 0.25, -0.5, -1.0, 0.25, -1.0, -0.5, 0.5, 0.25, 0.25, -1.0, 1.0, 1.0, 0.25, 1.0, 1.0, -0.75, -1.0, 0.5, -0.5, 1.0, -1.0, -0.75, 1.0, -0.5, -0.25, 0.0, 1.0, -1.0, 0.75, 0.75, 0.5, -1.0, -1.0, -0.5, -0.75, -0.75, -0.75, -0.5, 0.0, -1.0, 0.75, 0.25, -1.0, 0.25, -1.0, 0.5, 1.0, 0.5, -0.75, 0.5, -0.75, -0.25, 0.5, -0.25, 0.25, 0.5, 1.0, 0.0, 0.75, -0.75, 0.5, -0.25, 0.0, -0.25, -0.5, 0.5, 0.0, 0.75, 0.25, -0.25, 1.0, -0.25, -1.0, 0.75, -0.75, -0.75, 1.0, 0.25, -0.5, -0.5, 0.25, 0.5, 0.75, 1.0, -0.5, 0.75, 0.5, ]);
    const array4 = new Float32Array([-0.25, 0.75, 0.5, 0.5, -0.5, -0.25, -0.75, 0.5, -1.0, 0.0, 0.5, -0.25, 0.75, -0.25, -0.25, -0.5, -0.5, 1.0, 0.0, 1.0, 0.25, 0.5, -0.5, 0.25, -0.5, -0.25, -0.25, 0.0, -0.5, 0.5, 1.0, 0.0, 0.5, 0.5, -0.25, 0.75, 0.0, 0.25, -0.25, 0.75, -0.5, 0.5, -0.75, 1.0, 0.25, -0.75, -1.0, -0.75, 0.0, -1.0, -0.25, 1.0, -1.0, -0.5, 0.75, 1.0, 0.0, 1.0, 0.75, -0.5, 0.0, 1.0, 0.5, 0.25, 0.5, 0.5, -0.5, 0.25, 1.0, -0.5, -1.0, 0.5, 0.75, -1.0, -0.25, 0.0, 0.75, 1.0, 0.75, 0.75, -0.25, -1.0, 0.5, 0.25, 0.75, 0.0, 0.5, 0.75, 0.75, 0.75, 0.25, -0.75, 0.75, 0.5, -0.5, 0.0, 0.75, 0.75, 0.5, 1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array5 = new Float32Array([-0.25, -1.0, -0.25, 0.0, -0.75, 1.0, -0.75, 1.0, 0.5, 0.25, -0.5, 1.0, 0.75, -1.0, 0.75, -0.75, -0.75, 0.75, 0.75, -0.25, 0.5, -0.5, 0.75, -1.0, -0.25, 0.25, 0.0, 0.5, -0.5, -0.25, 0.75, 0.25, 0.5, 0.5, 0.25, 0.0, 1.0, -0.25, -1.0, 0.75, 0.25, 0.0, -1.0, -1.0, -0.25, -0.75, -0.25, 0.5, 0.25, 0.0, 0.25, 0.25, 0.0, -1.0, -0.75, -0.75, -1.0, -0.75, -1.0, -0.5, -0.5, 1.0, 0.0, -0.75, -0.5, 0.25, 0.25, -0.75, -0.75, 0.25, -0.5, -1.0, 0.25, -0.75, -0.5, -0.75, -0.5, 0.25, 0.5, 1.0, 1.0, 1.0, -0.5, -0.25, -0.5, -0.25, -1.0, -0.5, -0.5, -0.75, -0.25, -1.0, 0.75, 0.0, 0.5, 0.0, 0.0, -0.25, 0.0, -1.0, ]);
    const array6 = new Float32Array([0.25, 0.5, 1.0, 1.0, -1.0, 0.5, 0.0, -0.75, -0.75, 0.0, 0.25, 0.0, 1.0, -0.25, -0.5, -0.5, 0.5, 0.75, -1.0, -1.0, 0.0, 0.75, 0.25, 0.25, 0.25, 0.5, -0.75, -0.75, -0.5, 0.75, 1.0, -0.5, -0.75, -0.5, 0.0, -0.75, -0.5, -0.75, 0.5, -1.0, 0.5, 0.75, -0.75, -0.25, 0.75, 1.0, -0.75, -0.5, -0.75, -0.25, -0.75, 1.0, 0.75, 1.0, 0.5, 1.0, 0.25, 0.75, -1.0, 0.75, 0.25, 1.0, 0.5, 0.25, 0.5, 0.0, -0.75, -1.0, -0.5, -0.75, -0.25, -0.25, -1.0, -0.5, 0.25, 0.25, -0.25, 0.25, 0.25, -0.75, 1.0, 0.5, -0.75, 0.5, -0.5, 0.75, -0.75, -1.0, -0.75, -0.5, -0.75, 1.0, 0.75, -1.0, -0.75, -0.75, -0.75, 0.0, 0.5, 1.0, ]);
    const array7 = new Float32Array([0.25, -0.5, 0.5, -0.5, 0.5, -1.0, -0.5, 0.5, -0.5, -0.25, -0.5, -0.5, -1.0, 0.5, -1.0, 0.5, 0.0, 0.75, 0.75, -1.0, -0.25, 1.0, -0.25, -0.75, 0.75, -0.5, -1.0, -0.5, 1.0, 0.5, 0.25, 1.0, 0.5, 0.5, -0.5, 0.5, 0.25, 0.75, -1.0, -1.0, -0.5, 0.25, 0.5, -0.5, -0.5, -0.75, -1.0, 0.75, -1.0, 0.25, 0.75, -0.5, -0.25, 0.75, -0.25, 0.75, 0.25, -1.0, -1.0, 0.75, -0.75, -0.25, -0.25, -0.75, -0.75, -0.25, -0.25, -0.25, 0.5, -0.75, 0.0, 0.75, 0.75, 1.0, 0.5, 0.75, -0.25, 0.75, -0.75, 0.25, -1.0, -1.0, 0.75, -0.5, -0.25, -1.0, -0.25, -0.5, 1.0, -1.0, 0.75, -0.75, -0.25, 0.5, -1.0, 0.5, 1.0, -0.25, 0.5, -1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("internal");
    render_bundle_encoder100.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array8 = new Float32Array([0.75, -0.5, 1.0, 1.0, -0.25, -0.5, 0.5, -1.0, -0.5, -0.5, 0.25, 1.0, 0.25, 0.5, 0.75, -0.5, 0.75, 0.25, -0.5, -1.0, 0.25, 0.75, 0.5, 0.25, 1.0, 0.5, 1.0, -0.25, 1.0, -0.75, 0.5, -1.0, 0.5, 0.25, 0.75, -0.5, -1.0, -0.5, -0.25, 0.0, 0.75, 1.0, 0.0, 0.5, 0.75, -0.75, 0.25, -0.5, -0.25, 1.0, -0.25, 1.0, -0.25, -0.5, 0.0, 1.0, 0.75, 0.75, -1.0, -0.25, -0.75, -0.5, -1.0, -0.25, -1.0, 1.0, 0.25, 0.5, 0.5, 0.75, -0.75, 1.0, 0.75, 0.5, 0.5, 0.5, -0.25, -0.75, 0.75, 0.75, -1.0, 0.0, 0.5, -0.25, 0.75, -0.75, 0.25, -1.0, 0.25, 0.25, 1.0, -0.5, -0.75, 1.0, 0.5, -0.75, 0.25, 0.5, 0.0, 1.0, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder000.insertDebugMarker("mymarker");
    texture100.destroy();
    render_bundle_encoder101.popDebugGroup();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.popDebugGroup();
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
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const array9 = new Float32Array([0.25, 0.25, 1.0, -0.75, 0.5, -1.0, -0.5, -0.75, 0.25, 0.5, 0.5, -0.75, -0.5, 0.25, 0.75, -0.25, -0.5, 0.25, -0.5, 1.0, 0.25, 0.5, 1.0, -0.25, -1.0, 0.0, -0.75, -1.0, -0.75, 0.5, 0.75, -0.5, 1.0, -0.25, 0.0, -0.25, -1.0, 0.5, -0.25, -0.25, 0.0, 0.75, 0.0, 0.5, 0.5, -0.75, 0.0, -0.5, 1.0, 1.0, -1.0, 0.5, 0.25, -0.5, 0.5, -1.0, 0.0, 0.0, 1.0, -1.0, -0.25, -1.0, -1.0, 1.0, 0.5, 1.0, 1.0, -0.5, 0.0, -0.25, -0.75, -0.5, 0.25, -1.0, 0.75, 0.75, -0.25, 0.75, -1.0, -1.0, 0.0, 1.0, 0.75, 0.25, -0.5, -0.5, -0.5, -0.75, -0.25, -0.75, -0.75, 0.25, 0.25, -0.5, 0.5, 0.5, -0.25, 0.5, 0.75, 0.0, ]);
    
    query200.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder201.popDebugGroup();
    
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device20.pushErrorScope("internal");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    const array10 = new Float32Array([-0.5, 0.75, -1.0, 0.75, 0.5, -0.75, -0.75, 0.0, -0.5, -0.75, 0.5, 0.5, 1.0, -0.25, -1.0, -1.0, 0.5, 0.25, -0.75, 1.0, -0.25, -0.25, 0.25, -0.5, -0.5, 0.75, -0.5, 0.25, -0.5, 0.0, 0.25, 0.0, 0.75, 0.25, -0.75, 0.25, 0.75, 0.5, 1.0, 0.0, 0.75, -1.0, 0.75, 0.75, -0.25, 0.75, 1.0, 0.75, -1.0, 0.25, -0.75, 0.5, -1.0, 0.5, -0.5, -0.25, -0.75, 1.0, 1.0, -0.25, 0.5, -0.75, 0.5, 0.0, 0.25, 0.0, -0.75, 1.0, 0.25, 0.5, -0.5, 0.0, -0.25, 1.0, 0.75, -0.5, -0.25, 0.0, 0.0, -0.25, 0.0, 0.75, -1.0, -0.5, -1.0, -0.25, -1.0, -1.0, -1.0, 0.5, 0.25, -1.0, -0.25, -0.75, 0.75, -0.5, 0.25, -0.5, -0.75, -1.0, ]);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture101.destroy();
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.popDebugGroup()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    texture000.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
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
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
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
    render_bundle_encoder100.popDebugGroup();
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
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
    texture200.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout103]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
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
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const array11 = new Float32Array([0.0, 1.0, -0.75, 0.75, -0.25, -0.5, 0.5, 1.0, -0.5, 0.5, 0.25, -0.75, -1.0, -0.5, 0.5, -0.25, -1.0, 0.25, 0.0, 0.25, -1.0, 0.75, 0.25, 0.5, 1.0, 0.0, 0.0, 0.25, 1.0, -1.0, -0.25, 0.5, 1.0, 0.25, 0.5, 0.75, 0.5, -0.5, 1.0, 1.0, -0.75, -0.5, 0.0, -1.0, -0.5, 0.0, 1.0, -0.75, -0.5, 0.0, 0.5, 0.0, 0.5, 0.0, 0.75, 1.0, 0.5, 0.75, 0.0, 1.0, 0.5, 0.0, 0.25, -0.25, 0.5, 0.5, -1.0, -0.25, 0.75, 0.25, 0.0, 0.0, 0.25, 0.75, 0.75, 0.5, -0.5, 1.0, 0.5, -0.5, -0.25, 0.5, -0.25, 0.5, -1.0, 0.75, 0.5, -0.75, 0.5, 0.0, -0.5, 0.0, 0.0, -0.75, -1.0, 0.75, 0.25, -0.5, 1.0, 0.0, ]);
    const array12 = new Float32Array([1.0, -0.75, 0.0, 0.5, -0.5, -0.5, 0.25, -0.25, -0.25, 0.25, 0.75, -0.75, 0.25, 0.5, 0.25, -0.25, 0.75, 0.75, 0.5, -0.75, -0.25, 0.0, 0.75, -1.0, -0.25, 0.75, 0.0, 0.25, -0.5, -1.0, -0.75, 0.25, 1.0, -0.75, 0.5, -0.75, 1.0, 1.0, 0.25, 0.25, -1.0, -0.25, 0.5, -0.75, 1.0, 0.0, -1.0, 1.0, -0.75, 0.5, 1.0, 0.0, 0.75, 0.75, -1.0, 0.75, 0.5, 1.0, -0.25, 0.0, -0.75, -1.0, 0.25, 0.0, -0.5, -0.5, 0.25, -1.0, 0.0, -0.25, -1.0, 0.75, 0.0, 0.25, 1.0, -1.0, -0.5, -1.0, 0.0, -0.25, -0.5, 1.0, -0.75, 0.75, 1.0, 0.0, -0.25, 1.0, 1.0, 1.0, 0.0, -0.25, -0.5, -0.75, -1.0, 0.0, 0.5, -1.0, 0.0, 0.5, ]);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.pushErrorScope("internal");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder101.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    render_bundle_encoder202.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer200, 0, array12, 0, array12.length);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    const command_buffer300 = command_encoder300.finish();
    query201.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder202.pushDebugGroup("group_marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture103.destroy();
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    texture102.destroy();
    compute_pass_encoder2010.insertDebugMarker("marker")
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query000.destroy()
    const array13 = new Float32Array([0.5, -0.75, -1.0, -0.25, -0.5, 0.0, 0.25, 0.75, 0.75, 0.25, -1.0, 1.0, -1.0, -0.25, -1.0, -0.25, 0.25, -0.75, -1.0, 0.25, 0.5, -0.25, 0.75, 0.5, 0.0, 0.5, 0.0, 0.5, 0.5, 0.5, 1.0, 0.5, 0.25, 0.0, 1.0, 1.0, 0.25, -0.25, 1.0, -0.5, -0.5, 0.25, -0.75, 0.0, 1.0, -0.25, 0.25, -0.5, -0.25, 0.0, 0.75, 0.5, -0.75, 0.5, 0.0, 0.5, -0.75, 0.25, 1.0, 0.5, -0.75, -0.75, 0.5, 1.0, 0.75, 0.75, 1.0, 0.25, -0.75, 1.0, 0.75, -1.0, 0.25, 0.0, 0.0, 0.5, -0.25, 0.75, -0.5, -1.0, -1.0, -0.25, -0.5, -0.5, -0.75, -0.25, -1.0, 0.0, 0.0, 1.0, 0.75, -0.75, 1.0, -0.25, -0.5, 0.75, -0.75, -1.0, 0.25, 1.0, ]);
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer202, 0, array13, 0, array13.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    query101.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer202, 0, array10, 0, array10.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    texture203.destroy();
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device20.queue.writeBuffer(buffer202, 0, array9, 0, array9.length);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    texture104.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    query101.destroy()
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
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
    
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    
    device20.queue.writeBuffer(buffer202, 0, array13, 0, array13.length);
    
    texture202.destroy();
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    const command_buffer500 = command_encoder500.finish();
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    compute_pass_encoder0010.popDebugGroup()
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    texture201.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    query101.destroy()
    texture400.destroy();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder202.popDebugGroup();
    command_encoder202.insertDebugMarker("mymarker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device40.queue.writeBuffer(buffer400, 0, array11, 0, array11.length);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    render_bundle_encoder100.popDebugGroup();
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder002.popDebugGroup();
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    
    command_encoder501.pushDebugGroup("mygroupmarker")
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    
    render_bundle_encoder300.popDebugGroup();
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    command_encoder501.insertDebugMarker("mymarker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder104.insertDebugMarker("mymarker");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    device40.pushErrorScope("out-of-memory");
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    const command_buffer105 = command_encoder105.finish();
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder203.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer204, 0, array4, 0, array4.length);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder0000.popDebugGroup()
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder500.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder104.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device20.queue.writeBuffer(buffer200, 0, array13, 0, array13.length);
    
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
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    query400.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device40.queue.writeBuffer(buffer400, 0, array13, 0, array13.length);
    device20.queue.writeBuffer(buffer204, 0, array7, 0, array7.length);
    texture105.destroy();
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    const array14 = new Float32Array([-1.0, 0.25, -0.5, -0.5, -0.25, -0.25, 0.0, 0.0, 0.5, -0.5, 0.25, 0.0, 0.25, 0.75, 0.5, 0.75, -0.25, -0.5, -0.75, 1.0, 1.0, -0.5, -0.25, -0.5, 0.0, -1.0, -1.0, -0.5, 0.5, 0.5, -1.0, -0.25, -1.0, -1.0, 0.5, 1.0, -0.75, 0.25, -0.25, 0.25, -0.5, 1.0, 1.0, 0.75, 0.75, 0.5, 0.75, 0.25, -0.25, -0.75, -0.25, 0.0, 0.25, -1.0, -0.75, -0.5, 0.25, 1.0, -0.5, 0.25, 0.25, 0.75, -0.5, 0.25, 0.75, 0.5, -1.0, 0.25, 0.5, 1.0, -0.25, -0.75, -0.25, 1.0, 0.0, 0.25, -0.75, 1.0, -1.0, 1.0, 1.0, 0.75, -0.5, 0.75, -0.75, -0.25, 0.25, 0.75, 0.0, 0.25, 0.75, 0.75, -0.75, 0.5, 0.25, -0.5, 0.75, 1.0, -0.75, 0.75, ]);
    command_encoder203.copyBufferToBuffer(
        buffer205,
        0,
        buffer200,
        0,
        400
    );
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    render_pass_encoder5010.executeBundles([])
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
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    device20.queue.writeBuffer(buffer204, 0, array11, 0, array11.length);
    query100.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    query102.destroy()
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
    query100.destroy()
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
    render_bundle_encoder500.popDebugGroup();
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer202, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer202, 0, array14, 0, array14.length);
    query100.destroy()
    device20.queue.writeBuffer(buffer202, 0, array10, 0, array10.length);
    device50.pushErrorScope("internal");
    device20.queue.writeBuffer(buffer202, 0, array14, 0, array14.length);
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    command_encoder203.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    command_encoder203.copyBufferToBuffer(
        buffer205,
        0,
        buffer202,
        0,
        400
    );
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device20.queue.writeBuffer(buffer204, 0, array14, 0, array14.length);
    device20.queue.writeBuffer(buffer202, 0, array10, 0, array10.length);
    query301.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder5020.insertDebugMarker("marker")
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder101.popDebugGroup();
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device20.queue.writeBuffer(buffer202, 0, array12, 0, array12.length);
    device20.queue.writeBuffer(buffer202, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer202, 0, array13, 0, array13.length);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.writeBuffer(buffer204, 0, array9, 0, array9.length);
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    command_encoder104.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer202, 0, array10, 0, array10.length);
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    query400.destroy()
    query300.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    render_pass_encoder4000.setStencilReference(1);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer202, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.writeBuffer(buffer202, 0, array14, 0, array14.length);
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const command_buffer002 = command_encoder002.finish();
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder0010.popDebugGroup()
}