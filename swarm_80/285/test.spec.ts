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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array0 = new Float32Array([-0.75, -0.25, 0.5, 1.0, 0.25, -0.25, 0.0, 1.0, -0.75, -0.5, 1.0, 0.25, 1.0, 1.0, 0.0, -0.75, -1.0, -0.75, -0.25, 0.0, 0.5, 0.25, 0.75, 1.0, 1.0, -0.5, -0.25, 0.75, -1.0, -0.5, 1.0, -1.0, 0.25, -1.0, -0.5, -1.0, 1.0, 0.0, -1.0, -0.5, 0.25, 0.0, -1.0, -1.0, 0.75, 1.0, -0.75, 0.5, -1.0, 0.75, -0.25, 1.0, -1.0, -0.25, 0.0, 1.0, -0.5, -0.5, -0.25, -0.5, -0.75, 0.25, -0.5, 1.0, 0.0, -0.75, 1.0, -0.75, -0.5, 0.75, -1.0, 0.25, 0.75, -0.5, 0.5, -0.75, 0.25, 1.0, 1.0, -0.75, 0.0, -1.0, 0.75, -1.0, 0.0, 0.25, 0.75, 0.0, 0.5, -1.0, 0.0, 0.0, -0.5, 0.0, -0.75, -0.5, 1.0, -0.5, -0.25, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.destroy();
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    query100.destroy()
    query100.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    
    
    const command_buffer100 = command_encoder100.finish();
    
    
    query100.destroy()
    query000.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query101.destroy()
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder002.insertDebugMarker("mymarker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    query000.destroy()
    const array1 = new Float32Array([-0.75, 0.75, 0.75, -0.25, 0.75, 0.75, -1.0, 0.0, -0.75, -0.75, -1.0, 1.0, 0.0, -0.25, 0.25, 0.25, -1.0, 0.75, 0.75, -0.25, -1.0, 0.0, 0.25, 0.0, 0.0, -0.25, -1.0, -0.5, -1.0, 0.25, 1.0, -0.5, 1.0, -0.5, -0.25, -1.0, -1.0, 0.75, -0.25, -0.25, 1.0, -0.5, 0.25, 0.25, -0.25, -0.5, -0.5, -0.25, 0.75, 0.5, 0.5, -0.75, -0.75, -0.75, -1.0, 0.75, 1.0, 0.25, 0.0, -0.5, -0.5, -1.0, 0.0, -0.5, 0.5, 0.75, 0.25, 1.0, -1.0, -0.5, -1.0, -0.75, 0.75, -0.5, -0.5, -0.5, 0.5, 0.25, 0.5, -0.25, -1.0, -1.0, 0.0, -0.75, 0.25, -0.75, 1.0, 0.0, 1.0, 0.75, -0.25, -0.75, -0.25, 0.75, 0.75, -1.0, -0.5, -1.0, 0.25, 0.5, ]);
    command_encoder002.pushDebugGroup("mygroupmarker")
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    query000.destroy()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    query000.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    compute_pass_encoder0010.popDebugGroup()
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    
    query001.destroy()
    
    
    
    texture101.destroy();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    query001.destroy()
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    command_encoder300.pushDebugGroup("mygroupmarker")
    const array2 = new Float32Array([-1.0, -0.75, -1.0, -0.25, -1.0, -0.5, -1.0, -0.25, -0.75, 0.75, 1.0, -1.0, -0.75, 0.25, 0.25, -0.75, 0.75, 0.5, 1.0, 1.0, 0.5, 0.5, 1.0, 0.0, -0.5, -0.25, -1.0, -0.5, 1.0, -0.5, 0.25, -1.0, -1.0, 0.0, 0.0, 0.0, 0.0, -1.0, -0.5, 1.0, 0.25, -1.0, -0.25, -1.0, -0.75, -1.0, -0.25, 1.0, 0.25, -0.5, -0.75, 0.5, -0.75, -0.5, 0.75, 0.0, -0.5, 0.0, 0.25, -0.5, 0.5, 0.25, 0.75, -0.75, -0.25, -0.5, -0.5, -1.0, -0.75, -1.0, 0.0, 0.75, -0.5, 1.0, 0.0, -0.25, -0.75, -0.5, -1.0, 0.25, 1.0, -1.0, -0.5, 0.5, 0.5, -0.25, 0.25, 0.5, -0.75, 0.0, 0.25, 0.5, 0.75, -0.75, 0.0, -1.0, -0.5, 0.0, -1.0, 0.75, ]);
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    query000.destroy()
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    query104.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const array3 = new Float32Array([1.0, 0.0, -0.75, 0.0, 0.25, -1.0, 0.0, 0.0, 0.5, 1.0, 0.25, -1.0, 0.5, 0.25, 0.25, 0.75, 0.75, 0.0, 0.75, -1.0, 0.5, 1.0, 0.25, 1.0, 0.75, 0.75, 0.0, 0.75, 1.0, 0.75, 1.0, 1.0, 1.0, 0.25, 0.25, 0.75, -0.5, 0.75, 0.0, -0.75, 0.5, -0.25, -0.75, 0.0, -0.25, 0.0, -1.0, 0.5, 0.5, 1.0, -0.75, -1.0, 0.5, 0.75, -0.75, 0.5, 0.25, 0.0, 0.25, -0.25, -0.25, 0.5, -0.5, 0.75, -0.5, -0.5, -0.5, -0.75, -0.25, 0.25, 1.0, 0.0, -0.75, -0.75, 0.25, 0.75, -0.25, 0.75, 0.25, 1.0, -1.0, -0.75, 0.75, 0.75, -0.25, -0.5, -0.5, -0.25, -1.0, 1.0, -0.5, -0.25, -1.0, -0.75, -1.0, 0.5, -0.25, 1.0, 0.5, 0.0, ]);
    texture000.destroy();
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    
    command_encoder300.insertDebugMarker("mymarker");
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    query100.destroy()
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    query103.destroy()
    const array4 = new Float32Array([0.0, -0.75, -1.0, -1.0, 0.0, 0.25, 0.75, -0.5, 0.75, -0.75, 0.75, -0.25, 0.75, 0.25, 0.0, 0.75, 0.75, 0.25, -1.0, 0.75, -0.5, -1.0, 0.75, -0.25, 0.5, -0.75, 1.0, -0.5, 0.75, -0.25, 0.5, 0.5, 1.0, 0.0, -0.25, 1.0, 0.5, 0.75, -0.5, -1.0, -1.0, 0.5, 0.5, -1.0, 0.75, -0.75, 0.5, 0.25, 1.0, 0.0, 0.75, -0.75, 0.0, -0.75, -0.5, 0.75, 1.0, 0.75, -0.75, -1.0, -1.0, -0.75, -0.5, 0.75, -0.5, 1.0, -0.25, 1.0, -0.75, 1.0, -0.75, 0.25, 0.25, -1.0, 0.25, -0.25, -0.75, 1.0, 0.0, 1.0, 0.75, -0.5, 0.5, 0.0, 0.0, 0.25, -1.0, 0.5, -0.75, -0.5, 0.25, -0.75, 0.5, 0.25, -0.5, -0.75, -1.0, 0.0, 0.75, -0.5, ]);
    query002.destroy()
    
    query104.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    command_encoder300.insertDebugMarker("mymarker");
    
    command_encoder300.insertDebugMarker("mymarker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    command_encoder003.insertDebugMarker("mymarker");
    
    
    
    
    
    render_pass_encoder1010.executeBundles([])
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    command_encoder300.insertDebugMarker("mymarker");
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query301.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setStencilReference(1);
    
    query103.destroy()
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    
    command_encoder004.insertDebugMarker("mymarker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    command_encoder004.insertDebugMarker("mymarker");
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    query001.destroy()
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    query002.destroy()
    
    render_pass_encoder1020.executeBundles([])
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    const command_buffer301 = command_encoder301.finish();
    
    query103.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder1010.setStencilReference(1);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    compute_pass_encoder0000.popDebugGroup()
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const array5 = new Float32Array([0.25, 0.75, -0.75, 1.0, -0.75, 1.0, 0.25, 0.0, -0.25, -0.5, 0.75, -1.0, 0.5, 0.5, 0.25, 0.0, -0.5, -0.25, 0.75, 0.5, -0.25, 0.5, 0.0, -1.0, 0.5, 0.0, -1.0, -0.25, 0.75, 0.0, -1.0, -0.75, 0.25, -0.25, 0.75, 0.0, 0.25, 0.25, 0.0, 0.0, 0.75, 0.0, -1.0, 0.0, -0.75, -0.5, 0.5, -0.25, -1.0, -0.25, 1.0, -0.75, 0.0, -1.0, 1.0, 0.25, 0.25, 0.25, -0.25, -0.25, 0.0, 1.0, -0.25, 0.5, 0.0, 1.0, -0.25, -0.75, -0.75, -0.75, 0.75, -0.5, -0.25, 0.75, 0.0, 0.25, -0.75, 1.0, 1.0, 0.25, 0.0, 0.25, -0.25, 0.25, 1.0, -0.5, 0.25, 1.0, 0.75, 0.5, -1.0, -0.25, 0.75, -0.75, 0.25, 0.25, 0.25, 1.0, 0.75, 0.5, ]);
    
    query104.destroy()
    render_pass_encoder1010.executeBundles([])
    texture301.destroy();
    
    render_pass_encoder1010.executeBundles([])
    query001.destroy()
    
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    texture102.destroy();
    query001.destroy()
    
    
    texture300.destroy();
    render_pass_encoder1010.insertDebugMarker("marker");
    query102.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query104.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1020.setStencilReference(1);
    
    command_encoder004.insertDebugMarker("mymarker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_pass_encoder1020.insertDebugMarker("marker");
    
    device60.destroy();
    
    query301.destroy()
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    query301.destroy()
    
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    render_pass_encoder1020.setStencilReference(1);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    query300.destroy()
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1010.setStencilReference(1);
    query104.destroy()
    texture100.destroy();
    
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1020.setStencilReference(1);
    query002.destroy()
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    
    
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    render_pass_encoder1020.setStencilReference(1);
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    query001.destroy()
    
    render_pass_encoder1010.executeBundles([])
    compute_pass_encoder0050.insertDebugMarker("marker")
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1020.insertDebugMarker("marker");
    
    
    
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    render_pass_encoder1010.executeBundles([])
    
    
    
    query301.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    query300.destroy()
    query100.destroy()
    
    
    
    
    const array6 = new Float32Array([-0.5, -0.25, 0.25, 0.5, 1.0, -0.5, -0.25, 0.0, 1.0, 0.5, 0.5, -0.5, 1.0, 0.25, 0.75, 0.25, -0.25, -0.5, 0.25, 0.5, -0.25, -1.0, 0.0, 0.0, 0.75, -0.75, 1.0, 0.75, -1.0, 0.25, -0.5, -0.25, 0.0, 0.5, -1.0, -1.0, 0.25, -0.25, 1.0, 1.0, 0.75, 1.0, 0.0, -0.25, 0.75, -1.0, -1.0, -0.5, 1.0, -0.75, -0.75, -1.0, -0.5, 0.25, 0.0, 0.75, -0.5, -0.5, 0.5, -0.75, 0.25, -0.75, 1.0, 0.0, 0.75, 0.75, 0.75, -0.25, 0.5, 0.75, 0.25, -0.75, -1.0, 0.25, -1.0, -0.5, -0.75, 0.0, 0.25, -0.75, 0.5, 0.25, 1.0, -0.75, -0.5, 1.0, 0.0, -0.25, -1.0, -1.0, 0.0, 1.0, -1.0, 0.5, 0.0, -0.25, -0.5, -0.25, 0.75, 1.0, ]);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query003.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    query000.destroy()
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query101
    });
    
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    
    
    query104.destroy()
    query302.destroy()
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    query105.destroy()
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    texture302.destroy();
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    texture103.destroy();
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    
    query300.destroy()
    const command_buffer007 = command_encoder007.finish();
    
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    query002.destroy()
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    render_pass_encoder1020.insertDebugMarker("marker");
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    command_encoder008.pushDebugGroup("mygroupmarker")
    
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile(__dirname + '/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1020.insertDebugMarker("marker");
    query003.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    
    
    
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    command_encoder008.insertDebugMarker("mymarker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    query101.destroy()
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    render_pass_encoder1030.executeBundles([])
    
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder1020.setStencilReference(1);
    
    
    query003.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    query001.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1030.insertDebugMarker("marker");
    
    
    query301.destroy()
    query301.destroy()
    
    render_pass_encoder1020.executeBundles([])
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query106.destroy()
    
    query108.destroy()
    const compute_pass_encoder0090 = command_encoder009.beginComputePass({ label: "compute_pass_encoder0090" });
    
    
    
    compute_pass_encoder0010.popDebugGroup()
    query107.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_pass_encoder1030.setStencilReference(1);
    
    query103.destroy()
    
    
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder3000.popDebugGroup()
    query105.destroy()
    query003.destroy()
    
    
    
    query102.destroy()
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    query002.destroy()
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0060.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const array7 = new Float32Array([-0.75, 0.0, 0.0, -1.0, 1.0, -0.5, -0.75, 0.75, -0.75, -0.75, -0.25, 0.5, -0.75, 0.75, 0.0, -0.5, 1.0, -0.5, 0.5, 0.5, 0.25, 0.0, -1.0, 0.75, 0.25, -0.5, -0.25, 0.25, 0.25, -0.25, -0.25, 0.25, 1.0, 0.75, 1.0, -0.75, -0.25, -0.5, 0.0, -0.75, -0.25, 0.25, 0.25, -1.0, 0.0, -0.75, 1.0, 0.25, 0.25, -1.0, 0.25, 0.5, 1.0, -1.0, -0.25, -0.5, 0.75, 0.0, -0.75, 1.0, 0.0, -0.5, 1.0, -0.25, 0.75, -0.25, 0.5, 0.25, 0.0, 0.25, -1.0, 0.5, 0.25, 0.25, -1.0, 1.0, -0.75, -0.5, 0.5, -0.5, 0.25, 0.25, -1.0, 1.0, -0.5, 0.5, -0.5, 0.5, -1.0, 1.0, -0.75, 0.0, 0.25, -0.75, -0.5, 1.0, -0.5, 0.25, -1.0, -0.75, ]);
    compute_pass_encoder0060.popDebugGroup()
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query103.destroy()
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    
    
    
    
    query105.destroy()
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    var shader_module1014_code = "";
    try {
        shader_module1014_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1014 = await device10.createShaderModule({ label: "shader_module1014", code: shader_module1014_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
}