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
    
    
    
    
    
    
    
    const array0 = new Float32Array([-0.5, -1.0, -0.25, 1.0, 0.75, 0.75, 0.5, 0.75, 0.5, -0.25, 0.5, -0.25, 1.0, -0.25, -0.25, 1.0, 0.5, 0.5, 0.75, 1.0, 0.75, 0.75, -0.5, -0.5, 0.75, -1.0, 0.0, -1.0, -1.0, 0.5, 0.5, 0.75, 0.0, -0.75, 0.25, -1.0, 0.75, 0.5, 0.75, 0.5, -0.25, 0.25, -1.0, -0.25, 0.75, -0.25, -0.25, 0.0, 0.0, 0.75, 0.0, -1.0, 1.0, 0.0, -0.5, -0.25, 0.0, -0.75, 0.0, -1.0, -0.5, 0.5, -0.25, 1.0, 0.5, -0.75, 0.5, -0.25, 0.0, -0.5, 0.0, -0.5, -1.0, -0.5, -1.0, -0.25, 0.5, 0.0, 1.0, -0.75, -0.5, 0.75, -0.25, -1.0, 0.0, 1.0, -0.75, -0.75, -0.75, -0.5, -0.5, 0.75, -0.25, 0.25, 0.75, -0.75, 1.0, 1.0, 0.5, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const array1 = new Float32Array([-0.25, 0.25, -0.5, 0.5, -0.75, 0.5, 0.0, 0.0, -0.75, 0.25, -1.0, -0.5, 0.5, 0.75, 0.25, 0.25, 1.0, -1.0, 0.0, 0.25, 1.0, 0.25, -0.75, -1.0, -0.75, 0.5, 0.75, 0.5, 0.0, -0.25, 0.0, 1.0, 0.75, -0.25, 1.0, -0.25, -1.0, 0.25, -1.0, 0.75, 0.5, -0.5, 0.25, 0.5, 0.5, 0.5, 1.0, 1.0, 0.75, 0.75, -0.75, 1.0, -0.75, 0.75, -0.75, 1.0, 0.75, 0.75, 0.75, 0.5, 0.5, -0.25, -0.5, 0.25, -0.5, -1.0, -0.25, 0.75, -1.0, -0.5, 0.75, 0.25, 0.75, -0.75, -0.25, 1.0, -0.75, -0.5, -0.5, -0.5, -0.75, -0.25, -0.5, 0.25, -0.5, -0.75, 0.75, -0.25, 1.0, 1.0, -0.5, -1.0, 1.0, -1.0, 0.25, -1.0, -1.0, -0.5, -0.25, 0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.destroy();
    
    
    
    const array2 = new Float32Array([0.5, 0.5, 1.0, -0.5, -0.75, 1.0, 0.5, -0.5, 0.25, -0.25, -1.0, 0.5, 0.5, -0.25, -1.0, 0.5, 0.25, 0.25, -1.0, -0.5, -0.5, -0.75, -0.75, 1.0, 0.5, 0.5, 0.0, 0.25, -0.5, -0.5, -1.0, -0.75, -0.5, -1.0, -0.75, 0.5, -1.0, 0.25, -0.5, 1.0, -0.25, 0.75, 1.0, -0.75, 0.25, 0.75, -1.0, 1.0, -0.75, -1.0, 0.5, 0.25, -0.5, -0.5, -0.75, -0.5, 0.25, -0.5, 0.0, 0.25, -0.25, 0.5, 0.75, -0.25, 0.5, -0.25, 0.0, 1.0, 0.75, -1.0, -1.0, 0.75, 1.0, -0.25, -1.0, -0.75, 0.25, 0.25, -1.0, 0.5, 0.0, -0.25, -0.75, 1.0, 0.5, -0.75, 0.5, 0.5, -0.5, 0.75, 0.75, -0.25, 1.0, -0.25, -0.5, 0.5, 0.5, 0.25, 0.5, -0.25, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device30.pushErrorScope("validation");
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("validation");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const array3 = new Float32Array([-0.5, 0.25, -0.75, 0.0, 0.25, -0.75, -0.25, -0.5, 0.25, -1.0, 0.5, 0.5, 0.0, -0.75, 1.0, 0.75, 0.5, 0.0, -0.5, -0.75, -1.0, -0.75, 0.0, 0.75, 0.75, 0.25, 1.0, -0.25, -0.5, 0.25, -0.5, -1.0, -0.5, 0.25, 0.5, 0.0, -0.5, 1.0, 0.5, 0.0, 1.0, -0.75, 1.0, -0.5, 1.0, -1.0, 0.5, 0.5, -0.75, -0.5, -0.5, -0.25, 0.0, 0.5, -0.5, 0.5, -0.25, -0.5, -1.0, -0.25, 1.0, -0.5, 1.0, 0.75, -0.75, 1.0, -0.5, -1.0, 1.0, -1.0, 0.25, -1.0, 0.25, 1.0, 0.25, 0.5, 0.25, -0.5, 0.25, -0.25, -0.25, 0.75, 0.0, -1.0, -0.25, -1.0, -0.5, 0.75, -1.0, 0.75, -0.5, -0.75, -1.0, 0.5, -0.5, 0.5, -0.5, -1.0, -1.0, 0.75, ]);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const array4 = new Float32Array([1.0, -0.75, -0.5, 0.0, -0.25, 0.75, 0.5, -0.75, 0.75, 0.0, 0.0, 0.5, -0.25, -0.25, -0.5, -0.5, 0.75, -1.0, 0.0, 0.75, -0.75, -0.75, -0.75, 0.5, 0.75, -0.5, -0.75, 0.0, -0.5, -0.5, 0.0, -0.5, 1.0, 0.5, 1.0, -0.25, -1.0, -0.5, -1.0, -1.0, 1.0, -1.0, 0.75, 1.0, 0.75, -1.0, 1.0, -0.75, 0.0, 0.25, 0.5, 1.0, -0.25, 0.25, 0.0, -0.5, -0.5, 0.0, 0.75, 1.0, 0.0, -1.0, -0.25, 0.0, -0.5, -0.5, -0.25, -0.5, 0.25, 0.0, -0.75, 0.0, -0.25, 0.25, -0.75, 0.5, 0.5, 0.25, -1.0, -0.5, 0.75, -1.0, 1.0, 0.75, 1.0, 0.75, -0.25, 0.0, 0.5, -0.75, -0.25, 0.5, -0.25, 0.25, 0.25, -0.5, -0.5, 0.75, 0.75, 1.0, ]);
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    device10.pushErrorScope("out-of-memory");
    
    const command_buffer100 = command_encoder100.finish();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer301.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    buffer300.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    buffer102.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    query101.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer100.destroy()
    buffer101.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    query300.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query301.destroy()
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    const array5 = new Float32Array([0.5, 0.0, -0.5, -1.0, 1.0, 0.25, -0.75, -1.0, -0.25, -1.0, -0.5, 0.5, 0.25, 1.0, 0.75, -1.0, -0.25, -0.75, -0.75, -1.0, -0.75, 1.0, -0.5, -0.5, -0.5, -0.75, -1.0, 1.0, -0.25, 0.25, 0.0, -0.5, 0.0, -0.5, -0.75, -0.25, 0.75, 0.25, -0.5, -0.5, -1.0, 0.5, 0.75, 0.25, 1.0, 0.5, 0.5, -0.5, -1.0, -1.0, 0.0, 0.25, 1.0, 0.0, -1.0, 0.75, 0.75, 0.75, -0.25, 0.25, -0.75, -1.0, -0.5, 0.5, -1.0, -0.5, 0.5, 0.0, 0.0, -0.75, -0.75, 0.0, 0.25, -0.75, 0.25, 0.5, -0.5, -0.5, 0.25, -0.25, 0.5, 1.0, 1.0, -1.0, -1.0, 0.25, 1.0, -1.0, -0.25, -0.5, 1.0, -0.75, 0.75, 1.0, -1.0, 1.0, 0.0, 0.25, 0.75, 0.0, ]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder300.popDebugGroup()
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device20.destroy();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    query100.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device30.pushErrorScope("internal");
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer400.destroy()
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    device10.queue.submit([command_buffer100, ]);
    
    device10.destroy();
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_buffer300 = command_encoder300.finish();
    
    
    render_bundle_encoder300.popDebugGroup();
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_bundle_encoder301.popDebugGroup();
    
    
    
    query401.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    buffer302.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder401.insertDebugMarker("mymarker");
    query300.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    command_encoder401.pushDebugGroup("mygroupmarker")
    buffer305.destroy()
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    command_encoder400.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder402.pushDebugGroup("mygroupmarker")
    render_bundle_encoder401.popDebugGroup();
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    render_bundle_encoder302.popDebugGroup();
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder401.insertDebugMarker("mymarker");
    
    device30.pushErrorScope("out-of-memory");
    
    render_bundle_encoder300.popDebugGroup();
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    buffer401.destroy()
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    buffer308.destroy()
    render_bundle_encoder301.popDebugGroup();
    buffer303.destroy()
    
    command_encoder402.popDebugGroup()
    buffer304.destroy()
    const command_buffer402 = command_encoder402.finish();
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_bundle_encoder401.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device40.queue.submit([command_buffer402, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder403.insertDebugMarker("mymarker");
    buffer306.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    device50.pushErrorScope("out-of-memory");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const array6 = new Float32Array([1.0, 0.25, 0.0, 0.25, -0.25, -0.5, 0.75, 0.0, -0.75, -1.0, -1.0, -1.0, 1.0, -1.0, 0.5, -0.5, -0.75, 0.75, 0.75, -0.25, 0.25, 0.5, -0.75, 0.25, 0.5, 1.0, 0.5, 1.0, -1.0, 0.25, 0.75, 0.0, -0.25, -1.0, -1.0, -0.5, 0.0, 0.25, 0.25, -0.75, -1.0, -1.0, 0.5, -0.25, -0.5, -0.5, -0.5, -0.75, 0.75, -1.0, -0.5, -0.25, -0.5, -0.75, -1.0, -1.0, 0.5, 0.5, 1.0, 1.0, -0.75, 0.75, -1.0, -0.75, -0.25, 0.5, 0.25, 1.0, -0.75, 0.75, -0.75, 0.0, -0.75, 0.5, -0.5, -0.5, -0.75, 0.25, -0.5, -1.0, -0.5, 1.0, -0.75, 1.0, -0.25, -1.0, -0.5, -0.25, 0.0, 0.0, -1.0, 0.25, -0.25, -0.25, -0.75, 0.5, -1.0, 1.0, 0.5, -0.25, ]);
    const array7 = new Float32Array([0.25, 1.0, -0.5, -0.25, 0.0, -0.75, 1.0, 0.0, 0.5, -1.0, -0.5, 0.75, -0.25, 1.0, 1.0, -0.5, 0.0, 0.75, -1.0, -0.75, 0.75, 0.0, -0.5, 1.0, -0.75, -0.75, -0.5, 0.25, 0.75, -1.0, 0.25, 0.75, 0.25, -1.0, 1.0, 0.5, -0.25, 0.75, 1.0, 1.0, -0.25, -0.5, 1.0, -0.5, 0.0, 0.5, 0.75, 1.0, 1.0, -1.0, -0.5, 0.75, -1.0, 0.25, 0.75, 0.0, -0.5, -1.0, -0.75, 0.75, 0.5, -1.0, -1.0, -0.5, 1.0, -0.5, 0.75, 0.75, 0.25, -0.25, -0.75, 0.0, 1.0, 0.5, -0.25, 0.0, -0.5, 0.25, 1.0, -1.0, 0.0, 0.5, 0.25, -0.5, -0.5, -1.0, 0.5, -0.25, -0.5, 0.5, 0.75, -0.25, -1.0, 0.5, -0.25, -0.25, 0.5, 0.75, 0.5, 0.5, ]);
    
    command_encoder404.pushDebugGroup("mygroupmarker")
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    command_encoder401.popDebugGroup()
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder400.insertDebugMarker("mymarker");
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder301.popDebugGroup();
    query301.destroy()
    buffer307.destroy()
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    command_encoder400.popDebugGroup()
    buffer500.destroy()
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query402.destroy()
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("internal");
    command_encoder401.insertDebugMarker("mymarker");
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder302.insertDebugMarker("marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_buffer500 = command_encoder500.finish();
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array8 = new Float32Array([-0.5, 0.0, -0.5, 0.5, 1.0, -0.5, 0.25, 0.25, 1.0, 0.0, 0.0, 0.0, 0.25, 0.0, -0.25, -0.25, -0.75, 0.5, -1.0, -0.75, 0.75, 0.5, 1.0, -0.25, 0.0, 0.5, 1.0, 1.0, 0.5, 0.75, 0.25, 1.0, -0.25, 0.5, -1.0, 0.0, 0.0, -0.75, -1.0, -1.0, 1.0, -1.0, -0.5, -1.0, 0.25, 1.0, 0.25, -0.5, -0.5, 0.75, -0.5, 1.0, -0.25, -0.5, 0.0, 0.5, 0.75, 0.0, 0.25, 0.25, -1.0, -0.25, 0.75, 0.0, 0.5, -0.75, -1.0, -0.75, -1.0, 0.75, -0.5, -0.75, 0.25, 0.0, -0.5, -0.25, -0.5, -0.75, 0.25, 0.0, 0.25, -0.75, 0.75, 0.75, 1.0, 0.5, 0.75, -0.25, 0.5, -0.5, 0.5, -0.75, 1.0, -0.75, -0.5, 0.5, -1.0, -0.25, 0.75, 0.5, ]);
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const array9 = new Float32Array([0.0, -0.75, -0.5, 0.25, 0.0, 0.25, 1.0, 0.0, -0.75, 0.0, -0.5, 0.25, 0.5, -0.75, -0.75, -0.25, -1.0, -0.5, 0.75, 0.0, -0.75, -0.5, 0.0, 0.0, 1.0, -0.5, 0.25, -1.0, 0.75, -0.75, -0.25, 0.75, -0.25, 0.5, 0.75, 0.0, -1.0, -0.5, 1.0, -0.75, 0.0, -1.0, 0.0, 0.5, 0.25, 0.25, -0.5, 0.0, -0.75, 0.5, -0.75, 0.75, -0.25, 0.5, -0.25, 1.0, -0.25, -0.75, -0.5, -0.75, -1.0, -0.25, -1.0, 0.0, -0.25, 0.5, 0.5, -0.75, -0.25, 0.0, -0.25, 1.0, 0.0, 0.75, -0.5, 0.75, 1.0, 0.0, -0.5, -0.25, -1.0, 0.75, -0.5, 0.25, 0.75, 0.25, 0.25, 1.0, 0.0, 0.25, 0.5, 1.0, -0.75, 1.0, 0.5, -0.5, 0.25, -0.25, 0.25, -0.75, ]);
    
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const command_buffer400 = command_encoder400.finish();
    query301.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("validation");
    const command_buffer501 = command_encoder501.finish();
    
    
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device50.queue.submit([command_buffer500, ]);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer3011,
        0
    )
    command_encoder301.resolveQuerySet(
        query302,
        0,
        32,
        buffer3011,
        0
    )
    
    
    command_encoder403.insertDebugMarker("mymarker");
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer3011,
        0
    )
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile(__dirname + '/shader_module3010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    command_encoder301.insertDebugMarker("mymarker");
    render_bundle_encoder301.insertDebugMarker("marker");
    query301.destroy()
    command_encoder301.insertDebugMarker("mymarker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    query402.destroy()
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    buffer402.destroy()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder401.popDebugGroup()
    
    render_bundle_encoder502.insertDebugMarker("marker");
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    buffer3011.destroy()
    command_encoder301.resolveQuerySet(
        query303,
        0,
        32,
        buffer3011,
        0
    )
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    
    query301.destroy()
    command_encoder302.resolveQuerySet(
        query303,
        0,
        32,
        buffer3011,
        0
    )
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    const command_buffer403 = command_encoder403.finish();
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const command_buffer401 = command_encoder401.finish();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    
    
    query402.destroy()
    command_encoder301.popDebugGroup()
    command_encoder301.resolveQuerySet(
        query303,
        0,
        32,
        buffer3011,
        0
    )
    
    render_bundle_encoder302.popDebugGroup();
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer3011,
        0
    )
    command_encoder302.insertDebugMarker("mymarker");
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    
    command_encoder405.insertDebugMarker("mymarker");
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    
    
    
    
    const command_buffer406 = command_encoder406.finish();
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query401.destroy()
    
    query403.destroy()
    command_encoder404.insertDebugMarker("mymarker");
    
    render_bundle_encoder301.popDebugGroup();
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer406, ]);
    command_encoder302.pushDebugGroup("mygroupmarker")
    command_encoder405.insertDebugMarker("mymarker");
    query403.destroy()
    
    buffer3012.destroy()
    
    command_encoder302.insertDebugMarker("mymarker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    buffer3010.destroy()
    
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer3011,
        0
    )
    command_encoder302.popDebugGroup()
    
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    render_bundle_encoder402.insertDebugMarker("marker");
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer3011,
        0
    )
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    query401.destroy()
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    render_bundle_encoder401.popDebugGroup();
    
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    query300.destroy()
    const command_buffer304 = command_encoder304.finish();
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    query301.destroy()
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    const command_buffer405 = command_encoder405.finish();
    query302.destroy()
    query400.destroy()
    
    query303.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.pushErrorScope("internal");
    
    command_encoder301.resolveQuerySet(
        query302,
        0,
        32,
        buffer3011,
        0
    )
    command_encoder301.popDebugGroup()
    
    
    query400.destroy()
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    query403.destroy()
    query404.destroy()
    render_bundle_encoder502.insertDebugMarker("marker");
    
    render_bundle_encoder501.popDebugGroup();
    command_encoder301.pushDebugGroup("mygroupmarker")
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    
    
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    
    const command_buffer303 = command_encoder303.finish();
    device50.queue.submit([command_buffer501, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder404.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder302.popDebugGroup()
    command_encoder301.popDebugGroup()
    device40.queue.submit([command_buffer405, ]);
    const command_buffer302 = command_encoder302.finish();
    const command_buffer404 = command_encoder404.finish();
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    const command_buffer301 = command_encoder301.finish();
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    device30.queue.submit([command_buffer304, ]);
}