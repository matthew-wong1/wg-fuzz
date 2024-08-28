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
    const array0 = new Float32Array([1.0, 0.0, 1.0, 0.0, 0.75, -1.0, 1.0, 1.0, 0.5, 0.25, -0.25, 0.25, -1.0, -0.5, 0.0, 0.75, -0.5, -0.25, -0.25, 0.25, 1.0, 0.0, -0.25, -0.25, -0.75, 0.75, 0.5, 1.0, 0.25, 1.0, 0.25, 1.0, 0.0, 0.75, -0.5, -0.25, 1.0, 1.0, 0.75, 0.0, 0.25, 0.25, 0.0, 0.5, 0.75, 1.0, -0.75, -0.5, 1.0, 0.5, -1.0, -0.25, 0.25, -0.5, -0.25, -0.75, -1.0, -0.75, -1.0, -0.5, 0.0, 0.5, 1.0, -0.75, 0.25, -0.25, 0.25, -1.0, -0.5, 0.75, 0.0, -1.0, -1.0, 0.25, -0.5, -0.25, 0.75, 1.0, -1.0, -0.25, 1.0, -0.5, -1.0, -0.5, -0.5, 0.25, -0.5, 0.25, 1.0, 0.5, 0.5, -0.5, -1.0, -0.75, 0.25, -0.25, 0.25, 0.5, -1.0, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([1.0, -0.75, 0.75, 0.75, -0.25, 0.25, 1.0, -0.75, -0.25, 0.5, 1.0, -0.5, 0.25, 0.75, -0.5, 0.0, -1.0, -1.0, 0.0, -0.75, -0.75, 0.25, 1.0, 0.0, 0.75, -0.5, 0.5, 0.5, -0.25, 0.5, 0.0, 0.25, 0.5, 1.0, 0.75, 0.0, 1.0, 0.25, -1.0, 0.25, 1.0, 0.0, 0.0, 0.5, 0.25, -0.5, 0.0, 0.0, -0.25, -0.75, -0.25, 1.0, -0.5, -0.5, -1.0, -0.75, -1.0, -0.25, 0.0, 0.0, -0.75, -0.75, -0.5, -0.5, 0.25, -1.0, 0.0, -0.25, 0.0, -0.5, 0.0, 0.0, 1.0, 0.25, 0.5, -0.25, 0.75, 0.5, -0.5, 0.75, 0.5, -0.25, -0.5, -0.5, -0.75, -0.25, -1.0, 0.5, -0.5, 0.75, 0.0, -0.5, 0.25, -0.5, 0.0, -1.0, -0.5, 0.25, -0.75, 0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array2 = new Float32Array([-0.25, -1.0, -0.5, 0.5, 0.5, 0.5, 0.0, 0.75, -1.0, -0.25, -0.75, 0.25, -0.75, 1.0, -0.25, 0.25, 1.0, 1.0, -0.25, 0.75, -0.5, 0.0, -0.25, -1.0, -0.75, -0.5, 0.75, 0.75, 0.25, -0.5, 0.5, 0.25, 1.0, 0.5, 0.0, 1.0, 0.75, 1.0, 1.0, -1.0, -0.75, -0.25, -1.0, 0.75, 1.0, -0.5, 0.25, -1.0, 0.25, -0.5, -0.5, -0.75, 0.25, 1.0, 0.75, 1.0, 0.5, -0.75, 0.75, 0.5, -0.75, -0.5, -0.5, -1.0, 0.75, -0.25, -0.5, -0.5, -0.25, 1.0, -0.25, 0.75, 1.0, 1.0, -1.0, -1.0, -0.75, -0.75, 0.25, -1.0, -1.0, -0.75, -0.25, 0.75, 1.0, -0.75, 1.0, 0.5, -1.0, -1.0, -0.75, 1.0, 1.0, 0.5, -1.0, 0.0, -0.5, 0.75, 0.75, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.pushErrorScope("internal");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array3 = new Float32Array([1.0, -0.25, 0.0, -0.75, -0.75, 0.5, 0.5, -0.75, -0.25, -0.25, 0.75, -0.5, 0.5, 0.75, -0.25, -0.5, 0.25, 0.5, 0.75, -0.25, 1.0, 0.25, -0.25, 0.0, -0.5, -1.0, -1.0, 0.5, 1.0, -0.25, -0.5, -0.25, -1.0, 0.0, -0.75, 1.0, 0.0, 0.5, 0.5, 0.0, -0.75, -0.5, 0.25, 0.25, -0.75, 0.25, -0.5, -1.0, -0.25, -0.5, -0.75, 0.25, 0.0, -0.25, -0.75, 0.5, -1.0, -0.25, -0.25, 0.25, 1.0, 0.75, 1.0, 0.5, 0.5, 0.0, 0.75, 1.0, 0.0, -0.5, -0.25, 0.25, 0.25, -0.25, -0.5, -0.5, 0.25, -0.75, 0.75, 0.0, 1.0, 0.75, 1.0, -0.5, -0.75, -0.25, 0.25, -0.5, -0.25, 0.5, 1.0, 0.75, -0.75, -0.5, 0.75, -1.0, 0.75, 0.0, 1.0, 1.0, ]);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.pushErrorScope("validation");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([-0.5, -0.25, -0.25, -0.75, -0.25, 0.5, -1.0, -1.0, -1.0, -1.0, 1.0, 0.5, 0.25, -1.0, -0.75, 0.0, 0.25, 0.25, 1.0, 0.5, -0.75, -0.75, 0.5, 0.75, -0.75, -0.5, -1.0, -1.0, -0.5, 0.5, -0.5, 0.0, -0.75, -0.25, -0.75, 1.0, 1.0, 0.5, -1.0, -0.5, -1.0, 0.0, -0.75, -0.5, -0.25, 0.75, -0.25, 0.0, 0.0, -0.5, 0.0, -0.75, 0.25, -0.25, 0.25, 0.25, -0.75, -1.0, 0.75, 0.0, 0.5, 1.0, -1.0, 0.75, -1.0, 1.0, -1.0, 0.5, -0.75, -0.5, -1.0, -0.25, 0.5, 0.5, 0.75, 0.25, -1.0, -0.5, -0.25, -0.25, 0.5, 0.75, -0.5, 0.0, -0.5, -1.0, -1.0, -0.25, -0.75, -1.0, 0.5, 0.5, -0.5, -0.75, 0.0, 0.75, 1.0, -1.0, 0.25, -0.75, ]);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.pushErrorScope("validation");
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder100.pushDebugGroup("mygroupmarker")
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
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.pushErrorScope("validation");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([0.0, -0.25, -1.0, 0.0, 0.0, 0.5, 0.25, 1.0, -0.75, -0.5, 0.75, 1.0, -0.75, 0.5, -0.25, 0.25, 0.75, 0.25, 0.5, -1.0, -0.5, -0.75, 1.0, 0.0, 0.0, -0.5, -1.0, -0.5, -0.5, -1.0, -0.25, 0.0, -0.5, -1.0, 0.25, 0.5, 0.25, -0.75, 0.5, -0.25, 0.25, 0.25, 0.0, -0.75, 0.0, -0.5, 0.25, 1.0, 0.75, -0.25, 0.75, -1.0, -0.25, -1.0, -0.75, 0.5, -0.25, 0.5, 1.0, 0.25, -0.5, -0.25, 0.5, 0.5, 0.75, -0.5, -0.75, -0.25, 0.0, 0.25, 0.25, 1.0, -0.75, -0.25, 1.0, -0.75, 0.75, -0.25, 0.75, 0.5, -0.5, -0.5, 0.25, 0.0, 1.0, 0.5, 0.0, -0.5, -0.5, 0.25, -0.5, -1.0, 0.25, -0.75, 0.5, -0.25, 0.5, -1.0, 0.75, 0.75, ]);
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
    command_encoder000.pushDebugGroup("mygroupmarker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const array6 = new Float32Array([-1.0, -0.25, -1.0, 0.25, -0.25, 1.0, 1.0, -0.75, -0.25, -0.5, 1.0, -1.0, 0.25, 0.25, 0.0, 1.0, -0.75, 0.5, 0.5, 0.5, 1.0, 0.0, -0.75, 0.75, 0.5, -0.75, -1.0, 1.0, 0.25, 0.25, -0.25, 0.0, 0.75, 0.25, 0.25, -0.25, 0.75, -0.25, -1.0, -0.5, 0.75, -0.75, 0.0, 0.5, -0.5, -0.75, -0.25, 1.0, 0.0, 0.5, -0.75, 0.75, -0.5, -1.0, 0.0, -1.0, -0.5, -0.25, -0.75, 1.0, -1.0, 0.75, 1.0, 0.5, 0.25, -0.75, -0.5, 1.0, -0.75, -0.25, -0.5, 1.0, -0.75, 1.0, 0.25, 0.0, 0.75, -0.25, -0.5, 1.0, 0.25, -0.75, 0.75, 1.0, 0.0, -0.75, 1.0, -1.0, 0.25, 0.75, -0.25, -0.5, -1.0, -0.75, -0.5, -0.25, -1.0, -0.75, -0.5, 0.25, ]);
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array7 = new Float32Array([0.75, -0.5, -0.5, 0.75, -0.25, -0.25, 0.25, 1.0, 0.25, 0.75, 1.0, 1.0, 0.0, -0.5, 0.5, -0.75, 0.75, 0.0, -0.75, 0.0, -0.25, 0.0, -0.5, -0.75, -1.0, 0.5, 0.25, 0.0, 0.25, 0.0, -0.75, 0.25, 1.0, -0.75, 0.0, 0.25, 0.0, 0.0, 0.25, 1.0, 0.0, 0.75, 0.25, 0.75, -0.75, -0.75, 0.5, 0.0, -0.25, 0.5, -0.75, -0.5, -0.25, 0.25, 1.0, 0.0, -1.0, 0.0, 1.0, -0.5, 0.25, 1.0, 0.25, 1.0, 0.25, 0.0, 0.25, 0.0, -0.75, -1.0, -0.25, 0.75, 0.0, -0.25, -1.0, 0.75, 1.0, -0.5, -0.75, 1.0, 0.5, -1.0, -0.75, -0.5, -0.25, 0.75, 0.5, -0.5, 0.5, 0.75, -0.75, -0.25, -0.5, -0.25, 0.5, 0.75, 0.5, -0.5, -0.25, 1.0, ]);
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device10.pushErrorScope("internal");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array8 = new Float32Array([-0.75, -0.75, 0.5, 0.0, -0.5, -0.25, 1.0, -0.75, 0.5, 0.0, 0.25, 0.25, -0.5, -1.0, -0.75, -1.0, -0.5, -0.75, -1.0, 0.75, -1.0, 0.25, -0.25, 0.5, 0.5, -1.0, -0.5, 0.25, 1.0, 0.25, 0.0, 0.5, 0.25, 0.75, 0.25, 0.0, -0.25, -0.25, -0.5, -0.5, -1.0, -0.75, 0.75, -1.0, -0.25, 1.0, 0.0, 0.5, -1.0, -0.5, 1.0, -0.25, -0.25, -1.0, 0.0, 0.5, -0.5, 0.75, -0.25, -1.0, -0.25, 0.25, 1.0, -0.75, -0.75, -0.25, -0.75, -0.75, -1.0, -1.0, 0.0, 1.0, -1.0, -0.25, 0.75, -1.0, 0.25, 0.25, 0.5, 0.75, -0.75, 0.75, 0.75, 0.5, -0.75, 0.0, 0.25, 1.0, -0.75, -1.0, 0.5, 0.75, 0.0, -0.5, 1.0, -1.0, -0.25, -0.5, -1.0, 0.75, ]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    device40.pushErrorScope("internal");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const array9 = new Float32Array([0.75, -1.0, 0.25, 0.75, -0.5, 1.0, -0.5, -1.0, -0.5, 0.75, -0.25, 1.0, 0.75, 0.0, -0.5, -0.75, 0.5, 0.75, 0.25, -0.5, 0.0, 0.25, 0.5, 0.75, -0.75, 1.0, -0.75, -0.25, 1.0, -0.5, -0.75, 0.25, 0.0, 0.5, 0.75, 0.5, 0.0, 0.75, -0.25, -0.5, 0.25, 0.75, 0.25, 0.75, -0.75, 0.25, 1.0, -0.75, -0.25, -0.75, 0.75, -1.0, 0.25, 0.75, -0.25, 1.0, -1.0, 0.5, 0.75, -0.25, 1.0, -0.25, 0.5, -0.75, -0.75, 0.0, -0.75, 0.75, 0.5, 0.75, -0.5, 0.25, 0.0, 0.5, 0.25, 0.25, 0.0, -0.5, -0.75, -0.5, 0.25, 0.0, -0.5, 0.0, 0.75, 1.0, 1.0, -0.75, 1.0, 0.5, -0.25, 0.0, 0.5, 0.0, 0.5, -1.0, 1.0, -0.5, 0.75, -0.25, ]);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const array10 = new Float32Array([0.0, 0.0, -1.0, -0.25, -0.75, 0.5, 0.25, 1.0, -0.5, 0.25, -0.5, -1.0, 0.5, 0.25, 0.75, -0.25, 0.0, -1.0, 0.75, -0.25, 0.25, 0.5, 0.0, -1.0, 0.25, 0.75, 1.0, 0.25, -0.75, 0.75, 0.75, -0.75, -0.5, 0.0, 0.0, 0.75, 1.0, 0.5, 1.0, 0.5, -0.75, 0.25, 0.0, -1.0, -0.25, 1.0, -1.0, 0.25, -0.75, 0.0, -1.0, -0.75, 0.5, 0.75, 0.25, 0.75, 1.0, 0.0, 1.0, 1.0, 1.0, -0.25, 0.25, -0.25, 1.0, -0.75, 1.0, -0.75, 1.0, 0.75, -0.75, 0.25, -0.25, -0.75, -0.5, -0.25, -1.0, 0.5, -0.25, 0.75, -0.75, -0.5, -1.0, -0.75, -0.5, -0.5, 0.5, 0.25, 0.5, -0.75, 0.0, -1.0, -0.5, 0.0, 0.5, -1.0, -0.5, 0.75, -0.25, -1.0, ]);
    const array11 = new Float32Array([-0.25, -0.5, -0.5, -0.75, 0.25, 0.0, -1.0, -1.0, 0.5, 0.5, 0.25, -0.25, 0.0, 0.25, -0.25, -1.0, -1.0, -0.75, -1.0, -1.0, -0.75, -1.0, 0.75, 0.5, 0.0, -0.5, 0.0, -0.25, -0.75, 0.75, 1.0, -0.25, -0.5, 0.75, -1.0, -1.0, 0.75, -0.75, -0.5, -0.5, 1.0, 0.5, 0.25, -0.75, 0.25, 0.25, -0.75, 1.0, 0.75, 1.0, -0.5, 0.0, -0.5, 0.5, 1.0, 0.75, 1.0, 0.0, 0.25, -0.25, 1.0, -0.25, 0.0, -0.75, -0.5, 0.5, -1.0, -0.5, -0.5, -0.75, 0.5, -0.75, 1.0, 0.25, -0.5, 0.5, 0.75, 0.75, 0.25, 0.0, -0.25, -0.25, 0.25, -0.25, 0.75, -1.0, -1.0, -1.0, -0.75, 0.75, 0.5, 0.75, -0.75, -0.75, -0.5, 0.75, 1.0, -0.75, -1.0, -0.75, ]);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device30.pushErrorScope("internal");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
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
    command_encoder001.pushDebugGroup("mygroupmarker")
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
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
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
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
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device20.pushErrorScope("out-of-memory");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
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
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture202 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    device00.pushErrorScope("out-of-memory");
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    device40.pushErrorScope("internal");
    render_bundle_encoder001.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    device20.pushErrorScope("internal");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.pushErrorScope("validation");
    render_bundle_encoder101.insertDebugMarker("marker");
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
    device20.queue.writeTexture({ texture: texture202 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("out-of-memory");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device40.pushErrorScope("out-of-memory");
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1015 = texture101.createView({ label: "texture_view1015" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1016 = texture101.createView({ label: "texture_view1016" });
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder401.pushDebugGroup("mygroupmarker")
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_bundle_encoder100.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder004.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture_view1017 = texture101.createView({ label: "texture_view1017" });
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("out-of-memory");
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    device20.queue.writeTexture({ texture: texture202 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    const texture_view1018 = texture101.createView({ label: "texture_view1018" });
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
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    render_bundle_encoder101.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture204 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture204 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture204 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder201.pushDebugGroup("mygroupmarker")
    render_bundle_encoder202.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture202 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture204 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array12 = new Float32Array([-0.75, 0.25, 1.0, 0.5, 1.0, 0.25, -0.25, 0.0, -0.75, -0.5, -0.5, 0.0, -1.0, -0.75, -0.75, -0.25, 1.0, 0.75, -1.0, -1.0, 0.5, -0.75, -0.75, 1.0, 0.5, 0.0, 1.0, 0.75, 0.25, -0.25, 0.5, 0.5, -1.0, 0.25, -1.0, 0.75, 1.0, -0.5, -0.75, 0.0, 0.25, 0.25, 0.0, 0.5, 0.5, 0.5, -1.0, -0.5, 0.25, 0.75, 0.25, -0.75, -0.5, 0.5, -0.25, 1.0, 0.0, 1.0, -0.25, 0.25, -1.0, -0.5, 0.0, 0.5, -0.5, -1.0, -0.75, -0.75, 1.0, 0.0, -0.75, 0.25, 1.0, 0.25, 0.0, 0.25, -0.25, -0.75, 0.25, -0.25, 0.75, -1.0, -1.0, -0.75, -0.75, 0.5, 0.75, -0.75, 0.25, -0.75, 0.5, -0.5, 1.0, 0.5, 0.0, 0.5, 0.5, 1.0, 0.75, -0.25, ]);
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
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
    
    device20.queue.writeTexture({ texture: texture204 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture204 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    const bind_group_layout008 = device00.createBindGroupLayout({ 
        label: "bind_group_layout008",
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
    device20.queue.writeTexture({ texture: texture202 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    device20.queue.writeTexture({ texture: texture204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view1019 = texture101.createView({ label: "texture_view1019" });
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
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
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture204 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view2023 = texture202.createView({ label: "texture_view2023" });
    const texture_view2024 = texture202.createView({ label: "texture_view2024" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    device10.pushErrorScope("internal");
    device80.pushErrorScope("out-of-memory");
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    command_encoder006.pushDebugGroup("mygroupmarker")
    const texture_view10110 = texture101.createView({ label: "texture_view10110" });
    command_encoder1000.pushDebugGroup("mygroupmarker")
    
    
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    const texture_view0033 = texture003.createView({ label: "texture_view0033" });
    const texture_view0043 = texture004.createView({ label: "texture_view0043" });
    command_encoder007.pushDebugGroup("mygroupmarker")
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
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
    device20.queue.writeTexture({ texture: texture202 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2051 = texture205.createView({ label: "texture_view2051" });
    device20.queue.writeTexture({ texture: texture202 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("internal");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture204 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    const texture_view0044 = texture004.createView({ label: "texture_view0044" });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture202 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    device00.queue.writeTexture({ texture: texture005 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    device00.queue.writeTexture({ texture: texture005 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    
    device40.pushErrorScope("internal");
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture005 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture204 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture005 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    device20.queue.writeTexture({ texture: texture202 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    device00.queue.writeTexture({ texture: texture005 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view2033 = texture203.createView({ label: "texture_view2033" });
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    device00.queue.writeTexture({ texture: texture005 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const texture_view2034 = texture203.createView({ label: "texture_view2034" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const texture_view4013 = texture401.createView({ label: "texture_view4013" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
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
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    const texture_view2052 = texture205.createView({ label: "texture_view2052" });
    device00.pushErrorScope("internal");
    device20.queue.writeTexture({ texture: texture204 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const texture_view2035 = texture203.createView({ label: "texture_view2035" });
    command_encoder003.pushDebugGroup("mygroupmarker")
    device50.pushErrorScope("validation");
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const array13 = new Float32Array([-0.75, -0.75, -0.25, 0.0, -1.0, 0.5, -0.75, -0.5, -0.75, -0.75, -0.5, 0.75, -0.75, 0.75, -0.75, -0.75, -0.75, -0.75, 0.5, 1.0, -0.75, -0.5, -0.75, -0.25, -0.25, -0.5, -1.0, 0.25, 0.25, 0.5, 0.25, 0.25, -0.25, 0.25, 1.0, -0.5, -0.75, 0.75, -1.0, -0.25, -0.5, 0.25, -0.5, -1.0, -0.25, 0.75, 0.0, -0.25, 1.0, -1.0, 0.25, 0.5, -0.75, -0.75, -0.5, 0.5, -0.5, 0.5, -0.75, 0.25, -1.0, 0.25, 0.5, 0.75, -0.25, -0.75, -1.0, 0.0, -0.25, -0.75, 0.25, -0.25, 0.75, 0.75, 0.5, 0.5, -0.75, 0.0, -1.0, -1.0, -0.25, -0.5, 0.75, -0.75, -0.25, 0.5, -1.0, -0.75, 0.75, -0.5, -0.5, 0.5, -1.0, -1.0, -0.25, -1.0, 0.5, 1.0, -1.0, 0.75, ]);
    command_encoder202.pushDebugGroup("mygroupmarker")
    const texture_view0005 = texture000.createView({ label: "texture_view0005" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    device30.pushErrorScope("out-of-memory");
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
    device00.queue.writeTexture({ texture: texture005 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view0045 = texture004.createView({ label: "texture_view0045" });
    device00.queue.writeTexture({ texture: texture005 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device20.queue.writeTexture({ texture: texture204 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    device20.queue.writeTexture({ texture: texture204 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    device110.queue.writeTexture({ texture: texture1100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder401.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0046 = texture004.createView({ label: "texture_view0046" });
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2053 = texture205.createView({ label: "texture_view2053" });
    device20.queue.writeTexture({ texture: texture204 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    device20.queue.writeTexture({ texture: texture204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2014 = texture201.createView({ label: "texture_view2014" });
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
    device110.queue.writeTexture({ texture: texture1100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device110.queue.writeTexture({ texture: texture1100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    device50.queue.writeTexture({ texture: texture501 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    const texture_view1080 = texture108.createView({ label: "texture_view1080" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_bundle_encoder401.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1090 = texture109.createView({ label: "texture_view1090" });
    device40.pushErrorScope("internal");
    device00.queue.writeTexture({ texture: texture005 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture005 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture108 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder800.pushDebugGroup("mygroupmarker")
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}