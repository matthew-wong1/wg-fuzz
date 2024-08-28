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
    const array0 = new Float32Array([-0.75, -1.0, -1.0, -0.5, 0.75, 0.5, -1.0, -0.5, 1.0, 0.5, 1.0, -0.75, -0.25, -0.25, 0.75, -1.0, 0.5, 0.0, -0.25, -0.25, 0.5, -1.0, -1.0, -0.5, -0.5, 1.0, -0.25, -0.25, -0.75, -0.5, -1.0, 1.0, -0.25, 0.0, 0.5, 0.0, -1.0, 0.5, 0.75, -0.5, 0.25, 0.5, -1.0, -0.25, -1.0, 0.75, 0.25, -0.75, -0.25, 0.75, 1.0, -0.75, 0.0, -1.0, 0.75, 1.0, 0.0, 1.0, -1.0, -1.0, 0.75, 0.75, -0.25, -0.25, 0.0, 1.0, 0.5, -0.5, -1.0, -0.75, -0.5, 1.0, 0.0, -0.75, 0.25, -0.25, -0.25, 0.25, 1.0, -0.25, -0.25, -0.75, 0.0, -0.5, -0.25, 0.5, -1.0, 0.75, 0.75, 0.75, -0.75, -0.5, 0.0, -0.25, 0.75, -0.25, -0.75, 0.25, 0.5, 0.75, ]);
    const array1 = new Float32Array([1.0, 0.25, -0.75, -0.5, -0.5, -0.5, -0.5, -0.75, -0.75, -0.75, 0.25, -0.25, 0.5, -0.5, 0.75, 0.75, -0.5, -1.0, 0.75, -0.5, 0.5, 0.0, -0.5, -0.75, -0.75, 0.75, -0.25, 0.25, -0.5, 0.25, 0.75, 0.0, 0.25, 0.25, 0.0, -1.0, 0.25, 1.0, -1.0, 0.0, -0.5, -0.25, 1.0, 0.75, -0.25, 0.25, 0.25, 0.75, 0.0, -1.0, 1.0, -0.25, -0.5, -0.25, -1.0, -0.5, -1.0, -0.5, 0.0, -0.75, 1.0, -0.5, 0.0, 0.25, 1.0, -0.25, -0.25, 0.25, -0.5, 1.0, -0.5, -0.25, 0.0, -0.75, 0.5, -0.75, 1.0, -0.75, 1.0, 0.25, -1.0, -0.5, -1.0, 0.5, -0.25, 0.25, -0.25, 0.5, -0.5, 0.75, -1.0, -0.25, 0.0, -0.25, 0.5, -0.25, 0.75, 0.25, -0.75, -1.0, ]);
    
    const array2 = new Float32Array([-0.75, 1.0, -1.0, -0.75, -0.25, 0.25, 0.5, 0.25, 1.0, 0.75, -1.0, 1.0, 0.5, -0.25, -1.0, -0.25, -0.5, -0.5, -0.75, -0.5, -0.25, -0.5, -1.0, 0.0, 1.0, 0.75, -0.25, 0.0, -0.75, 0.25, 0.5, -0.5, -0.5, 0.0, 0.5, -0.75, 0.0, 1.0, 0.75, -0.25, 0.25, 1.0, -0.25, 0.5, 0.5, 0.25, -0.25, 0.5, -0.5, -0.25, -0.75, -1.0, -0.75, -1.0, 0.75, -0.25, -0.25, 0.25, -0.75, 0.0, -1.0, 0.25, -0.75, 1.0, -0.75, -0.25, -0.25, 0.5, -0.75, 0.75, 1.0, 0.25, -0.5, 0.25, -0.25, 1.0, 0.75, 0.25, 0.75, 0.25, -0.5, -0.25, 0.75, -0.5, 0.25, 0.0, -0.25, -0.75, -1.0, 0.75, 0.5, -0.25, -0.75, 0.5, -0.75, -1.0, 0.0, 0.0, -0.5, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([0.0, -0.75, -0.25, 0.25, 0.25, -0.25, 1.0, 0.5, 0.75, 0.25, -0.75, 0.0, -1.0, 1.0, 0.0, -0.5, -0.5, -0.75, 0.0, -0.75, -0.25, -1.0, -1.0, -0.75, 0.5, 0.75, 1.0, 1.0, -0.5, 0.5, 0.75, 1.0, -1.0, -0.75, -0.5, 0.25, 1.0, 0.75, -1.0, 0.75, -0.5, 0.75, 1.0, 0.0, 0.5, -1.0, 1.0, -0.25, 0.0, 0.75, -1.0, -0.75, -0.5, -0.75, -0.5, -0.75, 0.0, -0.25, 0.0, -0.75, 0.5, 0.5, 0.25, -1.0, -0.5, -0.5, -0.5, 0.25, 0.0, 0.75, 0.75, -0.5, 0.25, 1.0, -0.5, -1.0, -0.25, -0.5, -0.5, -0.25, -1.0, -0.5, 0.75, -0.75, 1.0, -0.5, -0.25, 0.5, -0.25, 0.75, -1.0, 0.25, -1.0, -0.5, 0.75, -0.75, 0.25, -0.75, 0.25, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const array4 = new Float32Array([0.0, 0.25, -0.5, 1.0, 0.75, 0.0, -0.5, 0.25, 1.0, -0.25, 0.25, -1.0, -0.5, 1.0, 1.0, 0.25, -0.25, -0.25, 0.5, -1.0, -0.25, -0.75, 0.5, -0.75, 0.0, -1.0, -0.25, 0.75, -0.5, -0.25, 0.5, 0.75, -1.0, 0.0, -1.0, 0.5, 0.5, 0.0, -0.5, -0.75, -0.25, -0.75, 1.0, -0.5, -0.5, -0.25, 0.0, -0.75, 0.75, -0.25, 0.75, 0.75, -0.25, -0.5, 0.25, -1.0, 0.0, 0.75, -0.5, -0.25, 0.5, 0.25, -0.75, 0.25, 1.0, 0.75, -0.5, -0.5, 0.75, -0.25, 0.25, -0.75, -0.25, 0.75, -0.5, 0.0, -0.75, -0.5, 0.25, 0.0, 0.25, 0.0, -1.0, -0.5, -0.25, -0.5, -0.5, 0.75, 0.0, -0.5, -0.5, -0.25, -0.5, -0.5, -0.75, 1.0, 0.5, 0.0, 0.0, -0.25, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array5 = new Float32Array([-0.25, 0.0, 0.0, -0.5, 0.5, 1.0, 0.5, 0.5, 0.0, -0.25, 1.0, -0.5, -1.0, 0.25, 0.0, -0.25, -0.5, -0.25, -0.25, -0.5, 0.25, 0.5, -1.0, 0.25, 0.75, -0.25, -1.0, -0.25, -0.75, -1.0, 0.75, 0.25, 0.0, 1.0, 0.25, -1.0, 0.25, 0.0, -0.75, -0.25, 0.25, 0.25, 0.25, -0.75, 1.0, 1.0, 0.75, -0.25, 0.25, -0.5, -0.25, 0.0, -0.25, -0.75, 0.75, 0.0, -0.75, -0.75, -0.5, 1.0, 0.5, -0.75, 0.25, -0.5, 0.5, -0.75, -0.75, -1.0, 0.25, -0.5, 0.0, -0.75, 0.25, -0.75, 0.25, -1.0, -0.5, -0.5, 0.0, -0.25, -0.75, -0.75, 0.5, -1.0, 0.5, 1.0, -0.25, 1.0, -0.75, -0.5, 0.75, -0.75, 0.25, -1.0, -0.5, -1.0, -0.25, -0.75, 0.5, -0.5, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const array6 = new Float32Array([-0.25, -0.25, 0.5, 0.25, 1.0, -0.5, 0.75, 0.5, 0.0, 0.25, -0.5, -1.0, 0.75, 1.0, 0.0, -0.25, 0.0, -0.25, -0.5, 0.75, -0.5, -1.0, -1.0, 0.5, -0.5, 0.5, -0.75, -1.0, -0.5, 0.0, -0.5, -0.25, -0.25, -0.75, -0.25, 0.75, 0.25, -0.75, -0.75, -0.75, 1.0, -0.25, -1.0, 0.5, 0.0, 0.5, 1.0, -0.75, -0.75, 1.0, 0.25, -1.0, 0.25, -0.25, 0.25, -0.25, 0.0, -0.5, -0.25, 1.0, -0.25, -1.0, 0.25, 1.0, -0.75, 0.5, 0.0, 0.75, -0.75, -0.25, -0.5, 0.0, 0.75, -0.25, 0.5, 1.0, -0.5, 0.75, -0.25, 0.25, 0.5, -0.75, 0.25, -1.0, -0.75, -1.0, 0.25, -0.75, 0.75, -0.5, 1.0, 0.25, 1.0, -0.75, 1.0, 1.0, -1.0, 0.0, 0.75, 1.0, ]);
    texture000.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const array7 = new Float32Array([1.0, 0.75, -0.5, 0.25, -0.25, -0.5, -0.5, 0.25, 0.75, -0.25, -0.5, -1.0, -0.5, -0.25, 0.0, 0.25, 0.25, -0.75, 0.5, 1.0, -1.0, -0.5, -0.25, -1.0, 0.0, 0.25, 0.25, 0.75, 0.5, -1.0, -0.25, 0.25, 1.0, 0.25, -0.25, 0.75, -0.25, 1.0, 0.5, 0.0, -0.25, -0.25, -0.75, 0.25, -0.5, -0.25, -1.0, 0.5, -1.0, 0.25, 0.75, 0.5, 1.0, 0.75, -0.75, 0.75, 0.75, -0.25, -0.75, -1.0, 0.75, -1.0, -1.0, 1.0, 0.75, -0.25, 0.5, -0.75, 0.75, 0.25, -1.0, 1.0, 0.75, 0.75, 1.0, -0.5, -0.25, 0.5, 0.0, -0.5, 0.75, 0.25, 0.75, -0.25, 1.0, -0.5, 1.0, 1.0, 0.5, -0.5, -1.0, 0.5, -0.25, -0.75, -0.25, -0.5, -1.0, 0.5, 0.25, 0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    
    
    const array8 = new Float32Array([1.0, -0.25, 0.75, 0.25, 0.5, 0.75, -0.5, -0.5, 1.0, 0.25, -0.75, 1.0, 0.0, -0.25, -0.5, 0.75, -0.25, 1.0, -0.25, 1.0, -1.0, 1.0, 0.5, 0.75, -1.0, 1.0, -1.0, -0.25, 0.5, -0.25, 0.75, 0.25, 1.0, -1.0, 1.0, 0.0, -0.5, 0.5, 0.0, 0.5, -0.5, -0.5, 0.75, 0.75, -0.75, 0.0, -0.75, -1.0, -0.75, -1.0, 1.0, 0.25, -1.0, 1.0, 1.0, -0.75, 0.25, 0.25, 0.5, 0.75, -0.75, 0.25, -0.75, 0.5, 0.75, -0.5, 1.0, 0.5, 0.25, 0.0, -0.25, -0.5, 0.25, 0.25, 0.25, -1.0, 1.0, 0.0, 0.0, -0.25, 0.0, -0.25, 0.75, -1.0, 1.0, -0.25, 0.0, 0.75, -0.75, 0.75, 0.5, 0.75, -0.5, 0.0, -0.75, 0.5, 0.5, 0.0, -0.25, 0.25, ]);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    const array9 = new Float32Array([-0.75, 0.0, -0.25, -1.0, -1.0, 1.0, -0.25, 1.0, -0.75, -0.5, -0.5, 0.75, -0.5, 0.5, 0.5, 0.25, -1.0, -0.5, 0.25, -0.75, 0.75, -1.0, 1.0, 0.5, 0.5, 0.5, -0.75, 0.75, -1.0, 0.0, -0.25, 0.75, 0.0, -0.5, 0.0, 0.75, 1.0, -0.5, -1.0, 0.25, -0.5, -0.5, -1.0, -0.25, 0.25, 0.75, 0.25, 1.0, -0.25, 0.25, 0.75, -0.25, -0.5, 0.0, 1.0, 0.75, -1.0, 0.5, -0.5, -0.5, 0.25, 1.0, -0.75, -0.5, 0.25, 0.75, -0.75, -0.75, 0.25, -0.75, 0.5, -0.25, -0.5, 0.0, 0.75, 0.75, 0.0, 1.0, -0.5, 0.0, 1.0, -0.5, -0.25, -0.5, 0.0, 1.0, -0.5, 0.25, -0.25, 0.0, 1.0, -0.75, 1.0, 0.25, 0.25, 0.25, 0.0, 0.25, 0.0, 0.5, ]);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    
    
    
    const array10 = new Float32Array([-0.5, -0.5, 0.0, -0.75, 0.0, -0.75, -1.0, -0.25, -0.25, -0.75, -1.0, 1.0, 0.75, -0.25, -0.25, -0.5, 0.5, 1.0, -0.75, -1.0, 1.0, 1.0, 1.0, 0.0, -0.25, -1.0, -1.0, 0.75, 0.25, -1.0, 0.5, 1.0, 0.75, 0.5, 0.25, 0.0, 0.25, 1.0, 0.25, 0.0, 0.5, 0.25, 1.0, 0.25, 1.0, -0.75, -0.25, 0.5, -0.5, 0.0, -0.25, 1.0, 0.5, -1.0, -0.5, 0.5, 0.75, 0.75, 1.0, 0.25, -0.75, 0.0, -0.75, -0.75, 0.25, 0.75, 0.25, 0.25, -1.0, -0.5, 0.5, 0.0, -0.75, 0.75, 1.0, -1.0, -0.75, -0.5, 0.5, -1.0, -1.0, -0.5, 0.5, -1.0, 0.0, -0.25, -0.5, 0.25, 0.5, 0.25, 0.25, 0.75, -0.5, 0.25, -0.25, -0.75, 0.25, 0.5, 0.25, 0.5, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0020.popDebugGroup()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    compute_pass_encoder0030.popDebugGroup()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    texture001.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture002.destroy();
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_bundle_encoder002.insertDebugMarker("marker");
    const array11 = new Float32Array([-0.5, -1.0, 0.75, -0.75, 0.0, 1.0, -0.75, 1.0, -0.25, -0.5, 0.75, 0.25, -0.25, -0.75, -0.5, -0.75, 0.0, 0.75, -1.0, 0.75, -0.25, 0.5, 1.0, 0.25, -0.5, 1.0, -1.0, -0.75, -0.75, -0.25, 0.25, -0.5, 0.75, -0.25, -0.5, -0.25, -0.5, -0.75, -0.75, 0.0, -0.25, 0.25, 0.0, 0.5, 1.0, -0.75, -0.5, 0.25, 0.25, 0.75, -1.0, 0.25, 0.25, 1.0, -0.25, -1.0, -0.75, 1.0, 0.25, 1.0, 0.75, -1.0, 0.25, -1.0, 1.0, -1.0, 0.75, -0.75, -0.5, 0.25, 0.5, 0.5, -1.0, 0.25, 0.0, -1.0, 0.25, 1.0, 0.75, 0.0, 0.5, 1.0, 1.0, 0.25, -1.0, -0.75, 0.25, 0.5, -0.5, -1.0, 0.0, -1.0, 0.75, -0.5, -1.0, -0.75, -0.75, -0.75, 0.5, -0.5, ]);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device00.queue.writeTexture({ texture: texture003 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array12 = new Float32Array([0.5, 0.5, -1.0, 0.5, -0.5, 0.5, 0.75, 0.5, -1.0, 0.25, -0.25, -1.0, 0.0, 0.0, 0.5, -1.0, 0.0, -1.0, -0.75, 1.0, -0.5, -0.25, 1.0, -0.75, 1.0, -0.25, -0.75, -1.0, -0.5, -1.0, 0.75, 0.75, -1.0, 0.0, -0.25, -0.25, 0.5, -0.5, -0.25, 0.0, 0.75, -1.0, -0.25, -1.0, 0.0, 0.0, 1.0, 0.5, 0.25, 0.25, -1.0, -0.75, -0.75, -0.75, 0.0, -1.0, 0.0, 1.0, 0.5, 0.5, -1.0, -0.5, 0.25, 1.0, -0.5, 0.5, 0.75, 1.0, 0.0, 0.75, -0.5, -0.25, 1.0, -0.25, 0.0, -0.5, 0.5, -0.75, -0.25, -0.75, 0.5, -0.25, 0.25, 0.25, -0.75, -1.0, -0.75, -0.5, -1.0, -1.0, 0.75, 1.0, 0.5, 0.25, -1.0, 1.0, -1.0, -1.0, -0.5, -0.25, ]);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device00.queue.writeTexture({ texture: texture003 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    compute_pass_encoder0020.popDebugGroup()
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    render_pass_encoder0050.insertDebugMarker("marker");
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0030.popDebugGroup()
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder0010.popDebugGroup()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0050.executeBundles([])
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    compute_pass_encoder0000.popDebugGroup()
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.destroy();
    device00.queue.writeTexture({ texture: texture003 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const array13 = new Float32Array([-0.75, 1.0, 0.25, 0.5, -0.75, -0.5, 0.25, -0.25, -0.5, 0.75, 0.0, -0.25, -0.75, 1.0, -1.0, 0.5, 0.0, 0.75, -0.25, -0.25, -0.75, -1.0, -1.0, 0.0, -1.0, -0.25, 0.75, 0.0, 0.25, 0.5, -0.75, -0.75, -0.5, 1.0, 0.25, 0.0, 0.75, -0.75, -0.5, 0.5, 0.75, 0.5, 1.0, -0.25, -1.0, 0.5, -0.75, 0.5, -0.75, -1.0, 0.75, 1.0, 0.5, -0.5, 0.0, -0.75, 0.25, 0.25, 0.75, 0.75, -1.0, 0.5, 0.75, 0.75, -0.25, 0.0, -0.75, 0.0, -0.25, -0.75, -0.25, 0.75, -0.25, -0.75, 0.25, -0.5, 1.0, -1.0, -0.25, 1.0, 0.25, 0.0, -0.25, -0.5, -0.25, -1.0, -0.5, 0.5, -0.25, -0.75, 0.75, 1.0, 0.0, -1.0, -0.5, -0.25, -0.5, -1.0, 0.25, 0.75, ]);
    device40.destroy();
    compute_pass_encoder0030.popDebugGroup()
    render_bundle_encoder301.insertDebugMarker("marker");
    texture301.destroy();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.executeBundles([])
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture003 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    device00.queue.writeTexture({ texture: texture003 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0040.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const array14 = new Float32Array([-0.25, -0.5, 0.5, 0.25, 0.0, -0.5, 1.0, -1.0, 1.0, -0.5, -1.0, 0.25, 0.25, 0.0, 0.5, 0.75, 0.25, -0.5, -1.0, 0.75, -1.0, 0.5, 1.0, 0.5, -0.75, -1.0, -1.0, 0.5, 0.75, 0.0, 0.0, -0.75, 0.5, -0.25, -0.75, -0.75, -0.25, 0.5, -0.75, 0.5, 0.5, -0.25, -0.25, -0.5, -0.75, 0.0, 0.75, 0.75, -0.25, 1.0, 0.75, -0.5, -0.75, 0.0, 0.0, 0.25, 1.0, 0.5, -1.0, 0.0, -0.25, 0.5, -1.0, -0.25, 0.0, 1.0, -0.75, 0.0, 0.5, -0.5, 0.0, -0.75, -0.5, -0.5, 0.75, -0.25, -0.5, -0.5, -1.0, 0.25, 0.25, 0.75, 0.5, -0.25, -0.25, 0.75, -0.25, 0.5, -0.5, 0.5, 1.0, 0.5, -0.5, -1.0, -1.0, 0.5, 0.75, 0.5, -0.25, 0.0, ]);
    
    device00.queue.writeTexture({ texture: texture003 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture003 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder3000.insertDebugMarker("marker");
    const texture_view3005 = texture300.createView({ label: "texture_view3005" });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.insertDebugMarker("marker");
    texture003.destroy();
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array15 = new Float32Array([-0.5, 0.25, 0.25, -0.25, 0.75, 0.0, 0.75, 0.5, 0.5, -0.75, -1.0, -0.75, 0.75, 0.25, 0.5, 1.0, 0.75, -0.25, 1.0, 1.0, -0.5, 1.0, 0.75, 0.25, -1.0, -0.25, -0.25, 0.5, 0.25, 0.25, 0.5, 1.0, 1.0, -0.75, 0.75, 1.0, 0.75, 1.0, -0.75, 0.5, 1.0, -0.5, 0.5, 0.75, 0.0, 1.0, -0.25, 0.25, 0.25, -1.0, 1.0, 0.0, 0.0, 1.0, 0.5, 0.0, -0.75, -0.5, -0.5, 0.5, 0.25, 0.75, 0.0, -1.0, 1.0, 0.0, 0.75, 0.25, 0.75, 0.0, 0.25, -0.25, 0.5, 1.0, 1.0, -0.75, 0.0, -0.75, 0.75, 0.25, -0.25, 0.25, 0.75, -0.25, 1.0, -1.0, -0.25, -1.0, -0.25, 0.75, 1.0, 0.0, 0.25, 0.75, -0.5, 0.75, -0.75, 1.0, 0.5, 0.5, ]);
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const array16 = new Float32Array([-1.0, 0.25, -0.5, 1.0, 1.0, -0.75, -1.0, 0.5, -0.75, -0.75, -0.25, -0.25, 0.75, 0.5, 0.75, -0.75, -0.75, 0.0, 0.5, 0.75, -0.25, -0.5, 0.0, 0.5, 0.25, 0.25, -1.0, 0.75, -0.25, 0.75, -0.25, -0.5, 0.5, -1.0, -0.5, -0.75, 0.25, 0.25, 1.0, -1.0, 0.0, 0.25, 0.5, -0.5, 0.75, 0.0, -0.25, 1.0, 0.0, -1.0, -1.0, 1.0, 1.0, 0.25, -0.5, -1.0, 1.0, -0.75, -0.75, -0.75, -0.5, 0.25, -0.25, 0.0, -0.75, -1.0, -1.0, -0.25, 0.75, -0.25, 1.0, 0.25, -0.25, -0.75, -0.25, -1.0, 0.5, -0.25, -0.75, 0.5, 0.75, 0.0, 0.75, -0.5, -0.75, -0.75, 0.75, 0.5, 0.0, 0.5, 0.0, -0.25, 0.75, -0.25, -0.5, 0.5, 0.75, -1.0, 0.25, -0.75, ]);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder3000.insertDebugMarker("marker");
    
    render_pass_encoder0060.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    
    compute_pass_encoder0030.popDebugGroup()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0050.insertDebugMarker("marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder3000.insertDebugMarker("marker");
    device60.destroy();
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    texture300.destroy();
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
        occlusionQuerySet: undefined
    });
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder0040.insertDebugMarker("marker");
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder00100 = command_encoder0010.beginRenderPass({
        label: "render_pass_encoder00100",
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
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder3010.executeBundles([])
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    device70.queue.writeTexture({ texture: texture700 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    device70.queue.writeTexture({ texture: texture700 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder00100.insertDebugMarker("marker");
    device70.queue.writeTexture({ texture: texture700 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.writeTexture({ texture: texture700 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0080.insertDebugMarker("marker");
    render_pass_encoder00100.insertDebugMarker("marker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder0070.insertDebugMarker("marker");
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3004,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    texture800.destroy();
    render_pass_encoder0060.executeBundles([])
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    device70.queue.writeTexture({ texture: texture700 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    device70.queue.writeTexture({ texture: texture700 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture700 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture700 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    const render_pass_encoder9000 = command_encoder900.beginRenderPass({
        label: "render_pass_encoder9000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view9000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
    texture900.destroy();
    render_pass_encoder00100.insertDebugMarker("marker");
    device70.queue.writeTexture({ texture: texture700 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.queue.writeTexture({ texture: texture700 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.popDebugGroup()
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0040.insertDebugMarker("marker");
    device70.queue.writeTexture({ texture: texture700 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_pass_encoder0060.executeBundles([])
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder0070.executeBundles([])
    render_pass_encoder0050.insertDebugMarker("marker");
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.executeBundles([])
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    texture1000.destroy();
    device70.queue.writeTexture({ texture: texture700 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_pass_encoder0040.executeBundles([])
    render_bundle_encoder001.insertDebugMarker("marker");
    device80.destroy();
    render_pass_encoder0050.insertDebugMarker("marker");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_pass_encoder3010.executeBundles([])
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    render_pass_encoder0040.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    texture004.destroy();
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pass_encoder00110 = command_encoder0011.beginComputePass({ label: "compute_pass_encoder00110" });
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    device70.queue.writeTexture({ texture: texture700 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.insertDebugMarker("marker");
    
    compute_pass_encoder00110.pushDebugGroup("group_marker")
    render_pass_encoder3000.insertDebugMarker("marker");
    device70.queue.writeTexture({ texture: texture700 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture700 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder502.insertDebugMarker("marker");
    render_pass_encoder0060.insertDebugMarker("marker");
    texture302.destroy();
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    render_pass_encoder3000.executeBundles([])
    
    const render_pass_encoder7000 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
    render_pass_encoder0070.executeBundles([])
    
    
    
    
    compute_pass_encoder3020.popDebugGroup()
    
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3000.executeBundles([])
    device70.queue.writeTexture({ texture: texture700 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0050.executeBundles([])
    const array17 = new Float32Array([1.0, -1.0, 0.75, 0.5, -0.25, -0.25, 0.5, -0.25, 0.5, -0.5, 0.25, 0.5, 0.75, 0.75, 0.5, 0.5, -1.0, 0.0, -0.5, 0.75, 0.0, 1.0, 0.75, 0.5, -0.25, 0.75, 0.25, 0.5, 1.0, -0.25, 0.25, -0.75, -0.75, 0.75, -0.25, -0.5, 0.5, 1.0, -1.0, -0.25, -0.75, 1.0, 0.25, -0.25, -0.5, -0.25, 0.0, -0.25, -0.25, 1.0, 0.0, -1.0, 0.75, 1.0, -0.25, 0.0, -0.75, -1.0, 0.5, 0.5, -0.5, 0.0, -0.25, 0.75, 1.0, -0.75, 0.75, 0.0, -0.25, -0.25, -1.0, 0.0, 1.0, -0.75, 1.0, -0.25, 0.75, 1.0, 0.75, 0.5, 0.25, -0.75, 1.0, -1.0, 0.75, 1.0, -0.25, 0.25, 0.0, -1.0, -1.0, 0.25, 0.0, -0.5, 0.5, 0.25, 0.75, -0.25, 0.75, 0.5, ]);
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_pass_encoder3030.executeBundles([])
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3004,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder9000.insertDebugMarker("marker");
    device70.queue.writeTexture({ texture: texture700 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0070.executeBundles([])
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_pass_encoder9000.insertDebugMarker("marker");
    const texture_view7002 = texture700.createView({ label: "texture_view7002" });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3030.executeBundles([])
    render_pass_encoder9000.executeBundles([])
    render_pass_encoder3000.executeBundles([])
    device70.queue.writeTexture({ texture: texture700 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder7000.insertDebugMarker("marker");
    device70.queue.writeTexture({ texture: texture700 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_pass_encoder9000.executeBundles([])
    render_pass_encoder9000.executeBundles([])
    
    device70.queue.writeTexture({ texture: texture700 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder7000.insertDebugMarker("marker");
    
    
    render_pass_encoder9000.insertDebugMarker("marker");
    render_pass_encoder0080.insertDebugMarker("marker");
    
    compute_pass_encoder0030.popDebugGroup()
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    texture901.destroy();
    device70.queue.writeTexture({ texture: texture700 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    texture303.destroy();
    
    render_pass_encoder0050.insertDebugMarker("marker");
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    render_pass_encoder0090.executeBundles([])
    
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    
    
    
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder3000.executeBundles([])
    
    
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    compute_pass_encoder10000.pushDebugGroup("group_marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0070.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    device70.queue.writeTexture({ texture: texture700 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder3030.insertDebugMarker("marker");
    const command_encoder0013 = device00.createCommandEncoder({ label: "command_encoder0013" });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_bundle_encoder900.insertDebugMarker("marker");
    render_pass_encoder0070.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pass_encoder00120 = command_encoder0012.beginRenderPass({
        label: "render_pass_encoder00120",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture902.destroy();
    render_pass_encoder0050.insertDebugMarker("marker");
    
    render_pass_encoder0090.executeBundles([])
    const render_pass_encoder00130 = command_encoder0013.beginRenderPass({
        label: "render_pass_encoder00130",
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
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_pass_encoder3040.insertDebugMarker("marker");
    device70.queue.writeTexture({ texture: texture700 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pass_encoder7010 = command_encoder701.beginRenderPass({
        label: "render_pass_encoder7010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device70.queue.writeTexture({ texture: texture700 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.queue.writeTexture({ texture: texture700 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.popDebugGroup()
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view7003 = texture700.createView({ label: "texture_view7003" });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    const texture_view7011 = texture701.createView({ label: "texture_view7011" });
    render_bundle_encoder900.insertDebugMarker("marker");
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3005,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view7004 = texture700.createView({ label: "texture_view7004" });
    
    render_pass_encoder9000.insertDebugMarker("marker");
    render_pass_encoder0080.executeBundles([])
    
    render_pass_encoder3030.insertDebugMarker("marker");
    
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder10000.popDebugGroup()
    compute_pass_encoder00110.popDebugGroup()
}