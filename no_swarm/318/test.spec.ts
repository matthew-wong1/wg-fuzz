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
    const array0 = new Float32Array([0.75, 0.75, 0.5, 0.0, -0.5, 0.5, -0.75, -0.25, 1.0, 0.0, 0.5, -1.0, -0.75, -0.25, 0.5, -0.5, 1.0, 0.25, -0.5, 0.0, -0.75, 0.25, -0.75, 0.0, -0.75, 0.25, -0.25, -0.25, 0.75, 0.25, -0.25, 0.0, 1.0, 0.25, 1.0, -0.75, -0.25, -0.25, -1.0, -0.25, -0.5, -0.75, 0.5, 0.5, -0.25, 1.0, 0.25, -0.5, -0.5, 1.0, 0.25, -0.25, -0.25, 0.0, 0.75, -0.75, -0.5, -0.5, 0.25, -1.0, -0.5, -0.5, 0.0, 0.75, 0.0, 0.5, 0.0, 0.0, 0.25, 0.5, 1.0, -0.75, 0.25, -0.75, 0.75, 1.0, -1.0, -1.0, -0.5, 1.0, -0.75, 0.75, 0.25, 1.0, 0.75, -0.75, 0.0, 0.75, 0.75, 0.25, -1.0, 0.25, 0.75, 1.0, -1.0, 0.75, -1.0, 1.0, 0.5, 0.5, ]);
    const array1 = new Float32Array([0.0, 1.0, -0.75, -1.0, 0.75, 1.0, 0.0, 0.25, 0.0, -0.25, -0.25, 1.0, 0.5, 0.5, 0.75, -0.75, 0.0, 1.0, 0.5, 0.75, -0.25, -0.5, 0.5, -0.5, -0.5, 0.5, -0.75, 0.75, 0.75, 0.0, -0.5, -0.5, -0.5, 1.0, -0.5, -0.75, 0.5, 1.0, -0.25, 0.75, -1.0, -0.25, 0.75, 0.5, -0.75, 0.5, -0.75, 0.5, 0.5, -0.25, -1.0, 0.5, 0.0, -1.0, -0.5, 0.5, 0.0, 0.0, -0.75, 0.25, -0.5, 0.25, 0.25, 0.5, 1.0, 0.5, -0.75, 0.0, 1.0, 0.0, 0.5, 1.0, -0.75, -0.25, 0.5, 1.0, -0.75, 0.0, 0.0, -0.5, 0.5, 1.0, 1.0, 1.0, -0.25, 0.25, 0.0, -0.5, 0.75, -0.25, 0.5, -0.25, 0.5, 0.5, 0.25, 0.25, -1.0, 1.0, -0.75, -0.25, ]);
    const array2 = new Float32Array([-0.25, 0.0, 0.25, 0.5, 0.25, 1.0, 0.5, 0.75, 0.0, -0.25, -0.75, -0.5, 0.0, 0.0, -0.75, -1.0, 0.5, 0.5, -1.0, -0.5, 0.5, 0.5, -0.75, -0.25, 0.5, 0.25, 0.5, 0.75, 0.5, 0.0, -0.75, -0.25, -0.25, 0.0, -0.75, -0.25, 0.25, -0.75, -1.0, 0.5, 0.75, -0.75, 0.75, -1.0, 0.75, -0.5, -0.25, -0.75, -0.5, 0.25, 1.0, 0.75, 0.75, 0.5, 0.25, -0.5, -0.25, 0.5, -0.5, 0.5, 0.0, 0.5, -0.25, 1.0, 0.25, -0.25, -1.0, -0.25, -1.0, -0.5, -0.5, 0.25, 0.25, 0.5, -0.75, -0.25, -0.25, -0.5, 0.25, -1.0, -0.25, -0.75, -0.5, -1.0, 0.75, -0.25, 0.0, 0.75, 0.0, -1.0, 0.0, 0.0, 0.25, 0.0, -0.75, 0.0, -1.0, 0.75, 1.0, -1.0, ]);
    
    
    
    const array3 = new Float32Array([0.75, 0.0, -0.5, -1.0, 0.5, -0.5, 0.25, -0.25, -0.5, 0.0, 0.0, -0.75, 1.0, -0.25, 0.75, -0.5, -0.75, 1.0, 1.0, 0.25, 0.25, -0.5, -0.25, -1.0, -0.5, -0.75, 0.5, 1.0, 0.75, 0.5, 0.75, 0.5, 0.75, -0.25, -0.5, 0.5, 0.0, -0.5, 0.0, 0.75, 0.75, 1.0, 1.0, 0.25, 0.0, 1.0, 1.0, -0.75, 0.25, -0.5, 0.75, 0.25, 0.0, 1.0, 1.0, 0.75, -0.5, -1.0, -0.25, 0.0, 1.0, 1.0, -0.75, 0.0, 0.5, -0.75, -0.75, -0.25, 0.75, 0.75, -0.25, 0.0, -1.0, 0.0, -1.0, 0.5, 0.5, 0.5, -1.0, -1.0, 0.25, -0.25, 0.0, -0.75, 0.0, 0.75, 0.5, 0.5, -0.75, -0.5, -0.25, 0.5, 0.25, -0.75, 0.75, 1.0, 1.0, 0.0, -0.75, 0.5, ]);
    
    const array4 = new Float32Array([0.0, -1.0, -0.25, 0.75, 1.0, -0.75, -1.0, -0.25, -1.0, 0.0, -0.25, 0.0, -0.5, 0.5, 1.0, 0.75, 1.0, -0.75, 0.75, 0.75, -0.25, 0.0, 0.75, 0.5, -1.0, 1.0, 0.0, 1.0, -0.25, 1.0, -0.25, 1.0, -0.5, 0.0, 0.75, 0.5, -0.25, -1.0, 0.75, -0.25, -0.5, -0.5, 0.0, 1.0, -1.0, -1.0, -0.25, -0.75, 1.0, 0.75, -0.75, 0.75, 1.0, 0.25, 0.25, -0.25, 0.25, -0.75, 0.75, -0.25, -1.0, -0.75, 1.0, 0.75, -0.5, -1.0, -0.25, -0.75, -1.0, -1.0, 0.5, -1.0, -0.25, 1.0, 0.75, -0.5, 0.25, 0.75, -0.25, 0.25, -1.0, -0.5, 0.5, 0.0, -0.25, 0.5, 0.5, 0.5, 0.25, -1.0, -0.5, -0.5, -1.0, -0.25, 0.0, 0.0, 0.25, -1.0, -0.75, -0.25, ]);
    const array5 = new Float32Array([-0.25, -0.25, 0.0, -0.5, -0.25, -1.0, -1.0, 0.0, 0.75, 1.0, -0.75, 0.75, 0.25, 0.5, -0.25, -0.5, -0.25, 0.5, 0.75, 0.0, -0.75, -1.0, 0.5, -0.25, 0.75, 1.0, 0.0, -1.0, 0.0, 0.0, 0.75, -0.25, 0.25, 0.0, 1.0, 0.0, 0.75, 0.0, -0.5, 0.5, 0.25, -0.5, -0.5, 0.5, -0.75, -0.5, 0.25, 0.75, 0.0, 0.75, -0.75, 0.25, 0.25, -0.25, -0.5, 0.5, 0.0, -0.75, 0.0, 0.0, -0.25, 0.25, -0.25, 0.5, 0.5, -1.0, 1.0, -0.5, -0.25, -0.25, 0.75, -0.75, 0.5, -0.25, 0.75, 0.25, 0.25, -0.5, 1.0, -0.25, -0.5, 0.25, -0.5, -1.0, -0.25, -0.5, 0.0, 1.0, -1.0, -1.0, 0.75, -1.0, 0.5, -0.75, -0.5, -1.0, 0.75, 0.5, 1.0, 0.25, ]);
    const array6 = new Float32Array([0.5, 0.75, 0.25, 0.5, 0.25, 0.0, -0.25, 0.25, -0.25, 1.0, 0.75, -0.75, 1.0, -0.75, 0.0, 0.5, 1.0, 0.75, -0.25, 0.25, -0.5, 0.25, 0.5, -0.25, -0.25, 0.25, 0.75, -0.5, -0.5, -0.5, 1.0, 0.0, 0.75, 0.25, -0.5, -0.5, 0.5, -0.75, 1.0, -0.25, 0.75, -0.25, -0.5, 0.5, 0.5, 0.5, -1.0, -1.0, 0.25, -0.75, 0.5, -1.0, -0.25, 1.0, -1.0, -0.75, -0.75, 0.0, 0.25, 0.5, 0.5, 0.0, -0.75, 1.0, -0.75, 1.0, -0.75, 0.25, 0.5, 1.0, 0.0, -0.5, -1.0, 0.5, 1.0, -0.75, -0.5, -1.0, -0.75, -1.0, 0.5, -0.25, -0.5, -0.5, 1.0, 0.25, 0.0, 0.25, -1.0, -1.0, 0.5, 0.0, 0.0, -0.25, 1.0, 1.0, -1.0, -0.25, -1.0, -0.5, ]);
    
    
    const array7 = new Float32Array([-0.25, 0.25, -0.25, -0.25, 0.0, -0.25, 0.75, -0.25, 0.5, 0.25, 1.0, 0.0, 0.5, 0.0, 0.75, 0.5, -0.5, -0.5, -0.5, 0.5, -1.0, 0.25, -0.25, -0.5, 0.25, -0.25, -0.5, 0.75, -0.25, 1.0, -1.0, -0.75, -0.25, -0.25, -0.5, -0.5, -0.25, 0.0, -0.5, 0.0, -0.5, -0.75, 0.75, 0.5, 0.25, 0.25, 0.5, 0.25, -0.5, 0.25, 0.25, 0.0, 0.0, 0.25, 1.0, -0.75, 0.0, 1.0, 0.0, -0.75, -0.5, 0.25, 0.75, 0.5, 0.25, 0.0, -0.25, 0.5, -0.75, -0.5, 0.25, -0.5, -1.0, -0.5, -0.75, 0.25, -0.75, -1.0, 1.0, 0.0, -0.25, -1.0, -0.75, 0.75, -0.25, -0.75, -1.0, -0.25, 1.0, 0.75, 0.0, -1.0, 0.25, -1.0, -0.25, -0.5, 0.25, 1.0, -0.5, 1.0, ]);
    
    
    
    const array8 = new Float32Array([0.5, 0.25, 0.75, -0.75, 1.0, 1.0, -0.25, 0.0, 1.0, -0.5, 0.5, 0.25, -0.25, -1.0, -1.0, 0.25, 0.5, -0.75, 0.75, -0.75, 1.0, -0.75, 1.0, 0.25, 1.0, 0.5, 0.0, 0.5, 0.25, -0.75, -0.75, -1.0, 1.0, 0.0, 0.25, 0.0, 1.0, 0.25, 0.25, -0.75, 0.0, 1.0, 1.0, -0.5, -0.25, 0.0, 0.75, -1.0, 0.75, -0.75, 0.25, 0.25, -0.5, 0.5, -1.0, 0.25, 1.0, 0.0, 0.75, 0.75, -0.5, -1.0, 0.5, 0.0, -0.75, 0.0, 0.25, -1.0, -1.0, 0.25, 1.0, -0.75, -0.5, -0.25, 0.75, 0.25, -0.25, -0.5, 0.0, 0.5, 0.25, -0.25, 0.5, 0.5, 1.0, 1.0, 0.0, -0.75, 1.0, -0.25, -0.5, 0.75, 0.0, -0.25, -0.25, -0.25, 0.0, -0.75, -0.25, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array9 = new Float32Array([1.0, 0.5, 0.25, 0.5, 0.0, -1.0, -0.75, 0.0, 1.0, -1.0, 0.25, 0.0, 0.75, -0.5, 0.0, -0.25, 0.25, 0.25, 0.25, 0.5, -0.5, 0.0, -0.25, -0.25, 0.75, 1.0, 0.0, -1.0, 1.0, -1.0, -0.75, -0.75, 1.0, -0.25, 0.5, -0.25, 0.0, 0.0, -1.0, -1.0, -0.25, 0.75, -1.0, 0.5, -1.0, 0.5, 0.5, -0.25, 0.25, -0.5, 0.25, 0.75, 0.5, 0.25, 1.0, -0.25, -0.5, 0.25, 1.0, 0.75, 0.75, 0.5, 0.5, 0.25, -0.25, 0.75, -1.0, -0.75, -1.0, -0.25, 0.75, -0.75, 0.5, -0.5, 1.0, 0.25, -1.0, 0.0, 0.0, -0.25, -0.75, 0.5, 0.25, -0.75, -0.5, -0.25, -0.25, 0.5, -0.25, 0.25, 1.0, 0.25, -0.75, 1.0, -1.0, -1.0, -0.25, -0.25, 1.0, -0.75, ]);
    
    const array10 = new Float32Array([-1.0, -1.0, -0.25, -0.75, 1.0, -1.0, -0.75, 0.0, -0.25, 0.25, -0.5, -1.0, 0.75, 0.0, -0.5, 0.0, -1.0, -0.25, 0.0, 0.0, -0.25, 0.75, -0.75, 1.0, 1.0, 0.5, 0.25, 1.0, 0.0, 0.25, 0.75, 0.75, -0.25, 0.5, 1.0, 0.75, -1.0, 0.75, 0.5, 0.25, 0.0, 0.5, -0.25, 0.0, -1.0, -0.75, 0.5, 0.25, -1.0, 0.75, -0.75, -0.75, 0.0, 0.5, -0.75, -0.5, -1.0, 0.5, 0.5, -0.5, -1.0, 0.25, -0.25, 0.25, 0.5, -0.75, 0.25, 1.0, -0.75, 1.0, -1.0, 1.0, 0.0, -0.5, 1.0, -0.5, -0.5, 0.25, 0.75, 0.75, -1.0, -0.75, -0.25, 0.25, 0.25, 0.25, -0.25, 0.0, -0.5, 1.0, -0.5, 1.0, -0.25, -0.75, 0.25, -0.75, 0.75, 0.75, 1.0, 0.25, ]);
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("internal");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    command_encoder000.insertDebugMarker("mymarker");
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder000.popDebugGroup()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
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
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16sint",
        dimension: "2d"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device20.destroy();
    
    command_encoder000.insertDebugMarker("mymarker");
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder003.pushDebugGroup("mygroupmarker")
    const array11 = new Float32Array([0.75, 0.5, 0.5, -0.25, 0.25, -0.25, 0.5, -1.0, -0.25, 0.25, 0.0, -1.0, 1.0, -0.75, 0.5, 0.25, 0.5, -0.75, -0.25, 0.25, -1.0, -0.25, 0.0, 1.0, 1.0, 1.0, -1.0, -0.75, 0.5, 0.0, -0.25, -1.0, 0.75, 0.75, -1.0, -0.75, -1.0, 0.75, -0.25, -0.75, -0.5, -0.75, 1.0, 0.5, -0.25, 0.25, -0.5, 0.5, 1.0, 0.5, 0.25, 0.75, -0.75, 0.5, 0.0, 0.5, 0.25, -0.5, -0.5, -0.5, -1.0, -1.0, -0.25, -0.25, 1.0, 0.25, 0.5, -0.75, -0.5, -0.5, -0.5, -0.5, 0.25, 0.0, 0.75, 0.5, 0.5, 0.5, 0.25, -1.0, 1.0, 0.25, -1.0, -0.5, 0.0, 0.0, 0.25, 0.0, 0.5, -0.75, -1.0, -0.5, 0.0, 0.0, 1.0, -0.5, -1.0, 0.25, -0.25, -1.0, ]);
    command_encoder003.popDebugGroup()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    command_encoder000.insertDebugMarker("mymarker");
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    buffer300.destroy()
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
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
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
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
    const command_buffer300 = command_encoder300.finish();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_buffer100 = command_encoder100.finish();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    texture001.destroy();
    const array12 = new Float32Array([-1.0, 0.75, 1.0, 1.0, 0.75, 1.0, 0.0, 0.0, 0.75, 0.5, 0.0, 0.25, -1.0, -0.75, -1.0, -0.5, 1.0, -0.5, -1.0, -0.5, -1.0, 0.5, 0.0, -0.75, -1.0, -1.0, -1.0, -0.75, -1.0, 0.25, -0.25, 0.5, 0.0, -0.25, 0.25, -0.75, 0.0, 0.5, -0.75, 0.0, -0.25, -0.75, 1.0, -1.0, 0.5, 0.0, -1.0, -1.0, -0.75, 0.25, -0.75, -0.25, -0.5, -0.25, 0.0, 0.25, 0.25, 0.5, -0.5, -0.25, -0.5, 0.25, -1.0, -0.5, -0.25, 0.75, 0.25, -1.0, -0.5, -0.75, 0.75, -0.75, -0.5, 0.5, -1.0, 0.0, 0.5, -1.0, -0.5, 0.75, 1.0, 1.0, -0.75, 1.0, -0.75, -0.75, -0.25, -0.75, 0.5, -0.5, 0.5, -0.75, -0.75, 1.0, 1.0, -0.75, 0.75, -0.25, 0.75, -0.5, ]);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    buffer301.destroy()
    texture003.destroy();
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder302.pushDebugGroup("mygroupmarker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer000.destroy()
    
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const array13 = new Float32Array([-0.75, 0.75, -0.25, 1.0, 0.25, 1.0, 0.5, 0.25, -0.25, 0.0, 1.0, 0.25, -0.75, 0.25, 0.0, 0.25, -0.25, 0.75, 0.25, 0.5, -0.5, -0.25, 0.5, -0.5, -0.25, 0.25, -0.5, -0.5, 0.5, -0.5, -0.25, -0.5, 0.0, 0.0, 0.25, 0.75, -0.75, -0.5, -0.25, -0.75, -1.0, 0.75, 0.75, -0.5, 0.0, 0.25, 0.0, 0.0, 0.0, -0.25, 1.0, -0.75, 0.75, -0.75, -0.25, -0.75, -0.5, -0.75, 0.75, -0.25, -0.75, 0.0, 1.0, 0.75, 0.25, -0.5, -1.0, -1.0, 0.5, 1.0, 0.25, -0.25, -1.0, -1.0, -0.75, -0.5, 1.0, 0.5, 0.75, 1.0, 1.0, -0.75, 0.75, -0.5, 1.0, -1.0, 0.0, -0.25, -0.25, 0.0, 0.5, 0.75, 0.5, 0.5, -1.0, -0.5, 0.5, -0.75, -0.75, 0.0, ]);
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder302.popDebugGroup()
    command_encoder302.pushDebugGroup("mygroupmarker")
    query000.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("out-of-memory");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_buffer400 = command_encoder400.finish();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    texture300.destroy();
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    buffer101.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder000.popDebugGroup();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    texture301.destroy();
    
    compute_pass_encoder0010.popDebugGroup()
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    buffer302.destroy()
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const array14 = new Float32Array([0.5, -0.75, 1.0, 0.0, -0.5, 0.25, -1.0, -0.75, 0.25, -0.5, 0.5, -0.5, 0.5, -0.5, 1.0, 1.0, 0.25, 0.25, -0.25, -1.0, -0.5, 0.0, 1.0, 0.5, -1.0, 0.25, -0.5, 0.0, -1.0, -1.0, -1.0, -0.5, -1.0, 1.0, -0.75, 0.75, -0.5, -0.25, 0.25, -0.75, 1.0, 0.25, 0.75, 0.0, 0.0, 0.0, -1.0, -0.25, -0.75, 0.5, 0.5, 0.25, -0.25, -0.25, 0.0, -0.75, -0.5, -0.5, 0.25, 0.75, 0.0, 0.5, -0.75, 0.25, -0.25, -1.0, 0.75, 1.0, -0.75, 0.75, 0.5, 1.0, 0.75, 0.75, -1.0, 0.0, -0.25, -1.0, 1.0, 0.25, -1.0, 0.0, -0.5, 0.5, -1.0, 0.5, -1.0, 0.75, 0.0, -0.5, -0.5, -0.75, 1.0, 0.25, -1.0, -1.0, -0.75, 0.75, -0.75, -0.75, ]);
    texture002.destroy();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device30.pushErrorScope("internal");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer003, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer003, 0);
    texture100.destroy();
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer002.destroy()
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    compute_pass_encoder3010.setPipeline(compute_pipeline301);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    device00.queue.submit([command_buffer003, ]);
    texture400.destroy();
    
    query101.destroy()
    device40.queue.submit([command_buffer400, ]);
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    device00.queue.writeBuffer(buffer003, 0, array13, 0, array13.length);
    
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    query100.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0020.setPipeline(compute_pipeline001);
    compute_pass_encoder0020.popDebugGroup()
    
    const command_buffer402 = command_encoder402.finish();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3030.setPipeline(compute_pipeline303);
    device30.queue.writeBuffer(buffer304, 0, array13, 0, array13.length);
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
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
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    render_bundle_encoder300.popDebugGroup();
    
    
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    
    command_encoder302.popDebugGroup()
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    device40.queue.submit([command_buffer402, ]);
    
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module003,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module003,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query000.destroy()
    render_bundle_encoder400.popDebugGroup();
    device30.queue.writeBuffer(buffer304, 0, array12, 0, array12.length);
    device30.queue.writeBuffer(buffer304, 0, array10, 0, array10.length);
    compute_pass_encoder4030.insertDebugMarker("marker")
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer304, 0, array0, 0, array0.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
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
    compute_pass_encoder0000.popDebugGroup()
    command_encoder302.pushDebugGroup("mygroupmarker")
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    device30.queue.writeBuffer(buffer304, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer304, 0, array14, 0, array14.length);
    device50.pushErrorScope("validation");
    device00.queue.writeBuffer(buffer003, 0, array11, 0, array11.length);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.end();
    render_bundle_encoder302.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array9, 0, array9.length);
    command_encoder302.popDebugGroup()
    
    compute_pass_encoder0020.popDebugGroup()
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module101,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
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
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    compute_pass_encoder4030.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
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
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group300);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    
    const array15 = new Float32Array([-0.25, 0.25, -0.5, 0.25, -0.75, 0.0, 0.75, 0.0, 0.0, -1.0, 0.25, -1.0, 0.5, 1.0, 0.75, 0.5, -1.0, -0.5, -1.0, 0.25, -0.25, 0.25, -0.25, -0.5, 0.25, -0.5, -0.75, 0.5, 0.0, 1.0, 1.0, -0.75, 1.0, -1.0, -0.25, -0.25, 0.0, 0.75, 0.0, 0.75, -0.75, 0.75, -0.75, -0.25, 0.0, 0.5, 0.0, -0.5, -1.0, 0.5, 0.0, -0.5, 0.0, 0.0, 1.0, -0.25, -1.0, 0.75, 0.5, -0.5, -1.0, -0.75, -0.25, 1.0, 1.0, 1.0, 0.25, 0.0, 0.75, 0.0, 1.0, 0.25, -0.5, 0.25, 0.5, 0.75, 0.75, -0.25, -0.5, 0.0, -0.25, 0.0, -0.25, 0.5, -1.0, -1.0, 0.25, -1.0, 0.0, 0.25, 0.5, 0.25, -0.5, -0.5, 0.0, 0.5, -0.75, 0.5, -0.75, 0.25, ]);
    device30.queue.writeBuffer(buffer304, 0, array3, 0, array3.length);
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    compute_pass_encoder3020.setPipeline(compute_pipeline306);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder304.insertDebugMarker("mymarker");
    render_bundle_encoder400.setPipeline(render_pipeline401);
    
    compute_pass_encoder4030.popDebugGroup()
    
    query302.destroy()
    device00.queue.writeBuffer(buffer003, 0, array9, 0, array9.length);
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device30.queue.writeBuffer(buffer304, 0, array3, 0, array3.length);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module404,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module404,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    buffer004.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    buffer001.destroy()
    device30.queue.writeBuffer(buffer304, 0, array3, 0, array3.length);
    compute_pass_encoder3030.insertDebugMarker("marker")
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    
    buffer003.destroy()
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    buffer303.destroy()
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
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module003,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module003,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device30.queue.writeBuffer(buffer304, 0, array2, 0, array2.length);
    command_encoder001.pushDebugGroup("mygroupmarker")
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer304, 0, array8, 0, array8.length);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group001);
    command_encoder102.insertDebugMarker("mymarker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder304.insertDebugMarker("mymarker");
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout304,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    device30.queue.writeBuffer(buffer304, 0, array11, 0, array11.length);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_pass_encoder0010.setPipeline(render_pipeline001);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder000.setPipeline(render_pipeline001);
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setStencilReference(1);
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    device30.queue.writeBuffer(buffer304, 0, array13, 0, array13.length);
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer401.destroy()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer100.destroy()
    command_encoder304.clearBuffer(buffer304);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout305,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
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
    
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder401.setPipeline(render_pipeline401);
    command_encoder304.copyBufferToBuffer(
        buffer307,
        0,
        buffer304,
        0,
        400
    );
    device30.queue.writeBuffer(buffer304, 0, array6, 0, array6.length);
    render_pass_encoder0010.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer304, 0, array15, 0, array15.length);
    
    buffer307.destroy()
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    command_encoder101.popDebugGroup()
    command_encoder500.copyBufferToTexture(
        {
            buffer: buffer500
        },
        {
            texture: texture500
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device30.queue.writeBuffer(buffer304, 0, array6, 0, array6.length);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    buffer007.destroy()
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer304 = command_encoder304.finish();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer009, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer009, 0);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline306.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group301);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder4010.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3010, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3010, 0);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder3020.end();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group302);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3013, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3013, 0);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group100);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer106, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer106, 0);
    compute_pass_encoder3010.end();
    compute_pass_encoder1020.end();
    const command_buffer103 = command_encoder103.finish();
    const command_buffer104 = command_encoder104.finish();
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group002);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0012, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0012, 0);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group003);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder0000.end();
    compute_pass_encoder3030.end();
    const command_buffer303 = command_encoder303.finish();
    command_encoder000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    command_encoder102.popDebugGroup()
    compute_pass_encoder0020.end();
    device10.queue.submit([command_buffer104, ]);
    const command_buffer102 = command_encoder102.finish();
    device50.queue.submit([command_buffer500, ]);
    const command_buffer000 = command_encoder000.finish();
    device10.queue.submit([command_buffer102, ]);
    const command_buffer002 = command_encoder002.finish();
    const command_buffer302 = command_encoder302.finish();
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer000, ]);
    device30.queue.submit([command_buffer300, command_buffer302, command_buffer304, ]);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer303, ]);
}