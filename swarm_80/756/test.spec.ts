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
    const array0 = new Float32Array([0.75, 1.0, -0.25, -0.5, 0.0, -0.25, 0.0, 0.0, -0.5, -0.5, 0.0, 1.0, 0.75, -0.5, -0.75, 1.0, -0.5, -1.0, -0.75, 0.5, -1.0, 0.5, -0.75, -0.25, 0.75, 0.5, -0.5, -0.25, 0.0, -0.75, -1.0, -0.75, -0.25, 0.25, -0.75, 0.5, -0.75, 0.25, 0.5, 0.75, -0.5, 1.0, 1.0, 1.0, 0.0, 1.0, -0.5, 1.0, 0.5, 0.0, 1.0, 0.5, -0.5, -1.0, 0.5, 1.0, 0.5, 0.0, -0.75, -0.5, 0.75, -1.0, 0.5, 0.75, 1.0, 1.0, -0.75, -1.0, 0.75, 0.5, -0.25, 0.25, -0.25, 0.5, 0.5, -0.75, -0.75, -0.25, -0.25, 1.0, -1.0, -0.25, 0.25, -0.75, -0.25, -0.5, -0.5, -0.5, 1.0, 0.25, 1.0, 0.75, 0.25, -0.75, -0.5, -1.0, 0.0, -0.5, -0.75, 0.0, ]);
    const array1 = new Float32Array([0.25, -1.0, -0.25, 0.75, 1.0, -0.5, 0.5, 0.75, 0.5, 0.25, 0.25, 1.0, 0.0, 0.25, 0.75, 0.75, -0.25, 0.0, 0.5, -0.75, 0.25, -0.5, 1.0, 1.0, 0.0, -0.25, -0.75, 0.25, -0.25, 0.0, 0.0, 1.0, 0.75, 0.25, 0.75, -0.5, -1.0, 0.0, 1.0, 0.75, -0.25, 0.75, -0.5, 0.25, -0.75, -0.75, 1.0, -0.25, -1.0, -0.25, 0.5, 0.0, 0.5, -0.5, 0.75, 1.0, -0.5, 0.0, 0.75, -0.75, -0.5, -0.5, 0.25, 0.0, -0.5, 0.25, -0.25, -0.5, -0.5, 0.25, 0.75, 0.5, 0.75, -0.5, -0.5, 0.5, -0.75, -1.0, -0.75, -0.25, -0.25, 0.0, 0.25, 0.75, -0.5, -0.75, -0.25, 0.5, -0.25, 0.0, -0.75, 0.5, -1.0, 0.5, 0.75, 0.5, 0.25, 0.5, 0.5, -1.0, ]);
    
    const array2 = new Float32Array([-0.25, -0.25, 0.75, 0.25, 1.0, -1.0, -0.25, -1.0, 0.0, 0.25, -1.0, 0.75, 1.0, -0.5, 0.5, 1.0, -0.25, -0.25, 0.25, -0.25, -0.75, -0.25, 0.5, -1.0, -1.0, 0.0, -0.75, -0.5, 0.5, 0.75, 0.5, 0.25, -0.25, -1.0, 0.75, 1.0, -0.5, 0.5, 0.75, -0.25, -0.5, -0.5, -1.0, -0.25, 0.75, -0.25, 1.0, -0.25, -1.0, 0.75, -0.5, -1.0, 0.5, 0.25, 0.75, 1.0, 0.75, 0.75, 0.5, -1.0, 0.0, -0.25, -1.0, -1.0, -0.5, -0.5, -1.0, -0.25, 0.0, -0.75, 0.75, 0.25, -0.5, -0.5, 0.5, 0.75, 0.25, -0.75, 0.5, 0.0, 0.5, 0.75, -0.25, 0.75, 1.0, -0.25, 0.75, -1.0, -0.75, 0.0, -0.25, -0.25, 0.5, -1.0, -0.5, 0.75, -1.0, 0.25, 0.75, 0.25, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("out-of-memory");
    
    const array3 = new Float32Array([-1.0, -1.0, -0.5, 0.5, 0.75, 0.0, -0.75, 0.25, -0.25, 0.25, 1.0, -0.75, 0.75, -0.25, 0.5, 0.0, 0.5, -0.25, 0.25, 0.5, 0.5, 0.0, -0.25, 0.0, -1.0, 0.0, 0.5, 1.0, -0.25, -0.75, 0.75, 0.0, 0.0, 1.0, 0.75, -0.25, -1.0, 0.5, -0.75, 0.0, -0.75, 1.0, -0.5, 0.0, 0.5, 0.0, -0.75, 0.25, 0.5, 0.75, 0.5, -0.75, 0.75, -0.75, 1.0, -1.0, -0.5, 0.25, 0.25, 1.0, -0.75, 1.0, -0.5, 0.5, 0.0, 0.75, 0.0, -0.75, 0.0, 0.75, 0.25, -0.25, 1.0, -0.25, -1.0, -0.5, -1.0, 0.25, 0.5, -1.0, -1.0, -1.0, 0.5, -0.25, 0.25, 0.0, -0.5, -0.75, 0.25, 1.0, -0.5, 0.25, 0.5, 0.25, -0.25, 0.5, 0.75, -1.0, -0.5, 0.25, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    device10.destroy();
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    query000.destroy()
    
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([0.25, -0.75, -0.75, 0.75, 1.0, 0.75, 0.0, -0.75, 1.0, -1.0, 0.5, 0.75, -0.25, -0.5, 0.75, -0.25, -0.25, 0.75, 0.0, 0.5, -0.75, -1.0, 0.0, -1.0, 0.75, 0.75, 0.75, 0.0, -0.5, -0.75, 0.75, 0.25, 0.75, 0.0, -0.75, 0.5, -0.5, -1.0, 1.0, -0.5, 0.0, -1.0, 1.0, 0.5, 1.0, -0.25, -0.75, -0.75, 1.0, 0.5, -1.0, -0.5, 0.0, -0.75, -0.75, 0.25, 0.0, 0.0, -0.25, -0.25, -1.0, -0.75, -0.25, -0.25, 1.0, -0.75, 1.0, -1.0, 0.25, -0.75, 0.25, -0.5, 0.5, 0.75, -1.0, 0.0, -0.25, 0.25, 1.0, -0.75, 0.5, -0.75, -0.25, -1.0, -0.5, 0.0, 0.0, 1.0, -0.5, -1.0, 1.0, -0.75, 0.5, 0.25, 1.0, -0.25, -0.5, -0.75, 0.25, -0.5, ]);
    const array5 = new Float32Array([-0.25, 0.0, 0.5, -1.0, -1.0, 0.5, 0.0, -0.25, -0.25, -0.75, 0.0, -0.5, 0.25, 0.0, 0.25, -0.25, 0.0, 0.75, 0.75, 0.75, 1.0, -0.25, 0.0, 0.5, -0.5, -0.5, 0.5, -0.75, 0.75, -0.5, -0.25, 0.25, -1.0, 0.5, 0.0, 0.75, -0.25, 0.75, 0.75, 0.0, 0.75, -0.5, 0.25, 1.0, -0.25, -1.0, 0.75, -0.5, -0.75, 0.75, 0.25, 1.0, 0.0, -0.75, -0.5, 0.75, -0.25, -1.0, 0.0, 0.25, 1.0, 0.5, 0.5, 1.0, 0.5, 0.5, -1.0, -0.5, -1.0, 0.25, 0.25, -0.75, 0.75, 0.25, 0.25, 0.5, -0.75, 0.75, -0.75, -1.0, 0.75, 0.25, -1.0, -0.75, 0.0, 0.0, 0.75, -0.5, 0.75, -0.75, -1.0, -0.25, -0.25, 0.5, 0.75, 0.25, 0.75, 1.0, -0.25, -1.0, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const array6 = new Float32Array([0.0, -1.0, -0.75, -1.0, -0.25, 0.25, 0.0, 0.5, 0.5, 0.25, 0.25, -0.5, 0.5, 0.5, -1.0, -0.25, 0.25, 0.5, -0.25, -0.5, 0.5, 0.75, 0.25, -0.75, 0.5, -0.25, 0.25, -1.0, 0.75, 1.0, 0.75, -0.5, -0.5, 0.25, 0.25, 1.0, 0.75, 1.0, -0.5, -0.75, 1.0, 1.0, 0.5, -0.5, 1.0, 0.75, 0.25, -0.75, -0.75, 0.0, -0.75, -1.0, -0.5, -1.0, -0.25, -0.5, -0.5, 0.5, -1.0, -0.5, 0.75, 1.0, 0.75, 0.5, 0.0, 0.0, -0.5, 0.0, -0.25, 0.75, -0.25, -1.0, -0.75, -0.75, 0.75, 0.75, -1.0, -0.25, -0.25, -0.25, -1.0, -0.5, 0.75, 0.0, 1.0, 0.5, 0.5, -0.25, 0.25, -0.5, 0.75, -1.0, 0.25, 1.0, -1.0, -1.0, 0.75, 0.5, 0.5, -0.75, ]);
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.pushErrorScope("internal");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder200.pushDebugGroup("mygroupmarker")
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture_view0005 = texture000.createView({ label: "texture_view0005" });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    command_encoder004.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder000.popDebugGroup();
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    query000.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder002.popDebugGroup();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.popDebugGroup();
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture_view0006 = texture000.createView({ label: "texture_view0006" });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array7 = new Float32Array([0.25, 0.25, 0.5, 0.5, -0.5, 0.25, -0.5, 0.0, 0.25, -0.5, 0.75, 0.0, 0.75, 0.5, -0.5, -0.5, 0.0, 0.25, 0.75, -0.5, -0.75, 0.75, 0.75, -0.5, -0.25, -1.0, -0.5, 0.5, -0.75, 0.25, 0.25, 0.0, 0.75, 0.0, 1.0, -0.25, -0.5, 0.5, 1.0, -0.75, 0.25, -1.0, -0.5, 1.0, 0.5, -0.25, -0.5, 1.0, -0.25, 0.25, -0.5, 0.0, -0.25, 0.75, 0.25, 0.5, -0.5, 0.5, -1.0, -0.25, 0.5, 0.0, 1.0, 0.25, 0.0, 0.75, -0.75, 0.5, -0.75, -1.0, 0.25, 0.0, 1.0, 0.5, 0.75, 0.75, -0.75, 0.0, -0.5, 1.0, 0.0, -1.0, 0.0, -0.25, 0.25, 0.75, -0.25, -0.25, 0.75, 1.0, 0.0, 0.5, 0.0, 0.5, -0.5, 0.25, 1.0, 0.75, -1.0, 0.25, ]);
    command_encoder300.pushDebugGroup("mygroupmarker")
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    render_bundle_encoder301.popDebugGroup();
    command_encoder005.pushDebugGroup("mygroupmarker")
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.popDebugGroup();
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    render_bundle_encoder301.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    render_bundle_encoder300.insertDebugMarker("marker");
    device20.pushErrorScope("out-of-memory");
    command_encoder007.pushDebugGroup("mygroupmarker")
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder202.popDebugGroup();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    device30.pushErrorScope("validation");
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array8 = new Float32Array([0.25, -0.5, 0.75, 0.25, -0.5, -0.75, -1.0, -1.0, 1.0, 0.25, -0.75, -1.0, 0.5, 0.75, -1.0, -0.75, 0.75, 0.0, 0.0, 0.5, 0.75, -0.5, -0.5, 0.5, 0.0, 0.25, 0.5, -0.25, -0.5, 0.0, 0.5, 0.5, 0.25, 0.25, -0.5, 0.75, -0.75, 0.25, -0.5, 0.0, -0.75, 0.5, 1.0, 0.25, -1.0, 0.25, 0.75, -0.5, 0.75, 1.0, 0.0, 0.0, -0.75, 0.0, 0.25, 0.25, 0.0, -0.5, 1.0, 0.75, -1.0, -1.0, 1.0, 0.25, -0.5, 0.0, -0.5, -0.25, 0.75, 0.75, -0.5, 0.5, -0.75, 0.5, -0.75, 1.0, 0.75, 0.5, 0.0, 0.5, 0.5, 0.25, -0.25, 0.5, -0.5, 1.0, -0.75, 0.75, -1.0, 0.5, 0.5, 0.0, -0.5, 0.5, 0.5, -0.75, 0.25, -0.25, 0.5, 0.5, ]);
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query200.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    device40.pushErrorScope("out-of-memory");
    command_encoder0011.pushDebugGroup("mygroupmarker")
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    query003.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder0010.pushDebugGroup("mygroupmarker")
    query002.destroy()
    query001.destroy()
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    
    query201.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder301.popDebugGroup();
    query000.destroy()
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    query300.destroy()
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_bundle_encoder300.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    
    query001.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    query200.destroy()
    
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/shader_module2011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("out-of-memory");
    
    query200.destroy()
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2023 = texture202.createView({ label: "texture_view2023" });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder0012.pushDebugGroup("mygroupmarker")
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const command_encoder0013 = device00.createCommandEncoder({ label: "command_encoder0013" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query003.destroy()
    const texture_view0007 = texture000.createView({ label: "texture_view0007" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    command_encoder009.pushDebugGroup("mygroupmarker")
    const array9 = new Float32Array([-0.25, -0.25, 0.75, 0.0, 1.0, -0.5, 0.5, 0.5, -1.0, -0.5, 0.0, 0.75, 0.25, 0.75, 1.0, -0.5, 0.5, 0.0, 0.25, 0.25, -0.25, -0.25, 0.0, -1.0, 1.0, -0.5, 1.0, -0.25, 0.5, -0.75, 0.75, 0.0, 0.5, 0.25, 1.0, 0.5, -0.5, 0.0, -0.25, -0.25, 1.0, 0.75, 0.25, 0.75, 0.0, 0.75, -1.0, -1.0, 1.0, -0.25, 0.75, -0.75, -1.0, 0.0, 0.25, 0.0, 0.5, 1.0, -1.0, 0.75, 1.0, -0.5, 1.0, 0.25, 0.25, -1.0, -1.0, 0.5, 0.5, 0.75, 0.75, 0.75, 0.5, -1.0, 0.0, 1.0, -0.75, 0.25, -0.5, 1.0, 0.25, 0.5, -1.0, 0.5, -0.75, -0.75, -0.5, -1.0, -0.25, -1.0, -0.75, -0.25, -0.5, 1.0, -0.75, 1.0, -0.25, -0.75, 0.75, -1.0, ]);
    query203.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    query202.destroy()
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query001.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder008.pushDebugGroup("mygroupmarker")
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    query203.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    
    query002.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view0008 = texture000.createView({ label: "texture_view0008" });
    const texture_view0009 = texture000.createView({ label: "texture_view0009" });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view00010 = texture000.createView({ label: "texture_view00010" });
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    query203.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    
    
    const array10 = new Float32Array([0.75, 0.75, 0.5, -0.75, -0.25, -1.0, -0.5, -0.75, -1.0, -0.5, -0.25, 0.0, 0.5, 0.25, 0.75, 0.25, -0.75, -0.75, -0.25, -1.0, -0.5, -0.25, 0.25, -0.25, -0.25, 0.25, -0.75, 0.0, 0.0, 0.25, 0.75, 1.0, 0.0, -0.5, -1.0, 0.0, 0.5, -0.25, 0.25, 0.0, -1.0, 0.25, -1.0, 0.75, -1.0, 0.0, 1.0, 0.5, 0.5, -0.75, 0.75, 0.25, 0.75, 0.75, -0.25, -0.25, -0.5, -0.25, 0.75, -0.25, -0.75, 0.0, 1.0, -0.5, -1.0, -0.75, -1.0, 0.5, 0.0, 0.0, -0.5, 0.75, 0.25, 0.5, -0.25, -0.5, -0.25, 0.0, -0.75, 0.5, 0.0, -0.5, 0.25, -1.0, -0.25, 0.5, 0.75, -0.75, 0.25, 0.0, -1.0, 1.0, -0.5, 1.0, -0.75, 0.0, 0.75, 0.0, -0.75, 0.5, ]);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder000.popDebugGroup();
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    device80.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    query003.destroy()
    
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    
    const array11 = new Float32Array([0.75, -1.0, 0.5, -0.75, 1.0, -1.0, 0.75, 1.0, 0.0, 0.25, -1.0, 0.5, 0.75, 0.0, 0.75, 0.0, -0.75, -1.0, 0.25, -0.25, -0.5, 1.0, -1.0, -0.5, 0.75, 0.5, -0.75, -1.0, 0.0, -0.5, -0.5, -0.75, 0.75, 0.75, 0.25, 0.5, -0.75, 0.75, 0.25, 0.25, -0.5, -0.75, -0.75, 1.0, -0.5, 0.25, -0.75, 0.0, 0.5, 0.0, -0.5, 0.5, -0.25, 0.75, 0.75, 0.75, -1.0, -1.0, -0.75, -0.5, 1.0, 0.0, 0.0, 0.75, -0.75, -0.5, 0.75, -0.75, 1.0, 0.25, 0.75, -0.75, 0.25, 0.75, -0.5, -0.25, -0.25, -1.0, 1.0, 1.0, -0.75, 0.75, 1.0, -1.0, 1.0, 0.5, -0.75, -0.75, -1.0, -0.25, 0.75, 0.0, 0.25, 0.0, -0.25, -0.25, 0.5, 0.25, -0.75, 0.5, ]);
    query200.destroy()
    render_bundle_encoder201.popDebugGroup();
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    command_encoder0013.pushDebugGroup("mygroupmarker")
    
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    var shader_module2013_code = "";
    try {
        shader_module2013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2013 = await device20.createShaderModule({ label: "shader_module2013", code: shader_module2013_code })
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view00011 = texture000.createView({ label: "texture_view00011" });
    
    const array12 = new Float32Array([0.5, 0.25, -0.25, -1.0, -0.5, 0.25, -0.25, 0.75, 0.0, 0.5, -1.0, 0.0, 0.75, -0.25, 1.0, 0.5, -0.25, 0.5, 0.75, 0.25, -0.5, 0.5, 0.25, 0.25, -0.25, -0.25, 0.5, 0.25, 0.0, 0.75, -0.25, 0.25, 1.0, 1.0, 0.25, -1.0, -0.75, -0.75, -0.5, -0.75, 0.25, 0.0, 1.0, -1.0, 0.5, 1.0, -1.0, -0.25, 0.25, 0.75, -0.75, 1.0, 0.75, 0.75, 0.75, -0.5, -1.0, 0.75, 1.0, 0.0, 1.0, -0.25, 0.75, 0.0, 0.75, -0.5, -0.75, 0.5, 0.5, 1.0, -1.0, -0.25, 0.0, 0.75, 0.5, 0.5, 0.75, 0.5, 0.5, -0.5, -0.5, 0.0, 1.0, 0.0, 0.25, 0.0, 0.25, 0.0, 0.75, -0.5, -0.5, 0.25, -0.75, -0.25, -0.25, 0.5, -0.5, -0.25, -0.5, -1.0, ]);
    
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    
    const command_encoder0014 = device00.createCommandEncoder({ label: "command_encoder0014" });
    
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    render_bundle_encoder302.popDebugGroup();
    
    
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_bundle_encoder001.popDebugGroup();
    const texture_view0014 = texture001.createView({ label: "texture_view0014" });
    
    render_bundle_encoder301.popDebugGroup();
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    
    const texture_view00012 = texture000.createView({ label: "texture_view00012" });
    
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    const texture_view2024 = texture202.createView({ label: "texture_view2024" });
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}