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
        powerPreference: undefined
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("out-of-memory");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder100.popDebugGroup();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.pushErrorScope("internal");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    buffer000.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    
    
    device30.pushErrorScope("internal");
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_buffer301 = command_encoder301.finish();
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    query101.destroy()
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("validation");
    device20.pushErrorScope("out-of-memory");
    query101.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const command_buffer101 = command_encoder101.finish();
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder000.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query101.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder101.popDebugGroup();
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer003 = command_encoder003.finish();
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer300.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    buffer002.destroy()
    const command_buffer001 = command_encoder001.finish();
    command_encoder200.insertDebugMarker("mymarker");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const command_buffer200 = command_encoder200.finish();
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    
    
    render_bundle_encoder102.popDebugGroup();
    query102.destroy()
    compute_pass_encoder3020.insertDebugMarker("marker")
    query101.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    device30.pushErrorScope("internal");
    
    
    command_encoder002.insertDebugMarker("mymarker");
    
    buffer400.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    query300.destroy()
    
    const command_buffer201 = command_encoder201.finish();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.popDebugGroup();
    command_encoder002.insertDebugMarker("mymarker");
    device00.queue.submit([command_buffer001, ]);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_buffer202 = command_encoder202.finish();
    
    
    
    
    device00.pushErrorScope("validation");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device20.pushErrorScope("out-of-memory");
    
    device30.queue.submit([command_buffer301, ]);
    query101.destroy()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    query101.destroy()
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder000.popDebugGroup();
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    query102.destroy()
    query301.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    buffer003.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    query103.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device60.pushErrorScope("out-of-memory");
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder600.insertDebugMarker("marker");
    query100.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    query300.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    query102.destroy()
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    query300.destroy()
    
    device50.pushErrorScope("internal");
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query600 = device60.createQuerySet({
        label: "query600",
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
    
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    
    buffer401.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    buffer202.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer200.destroy()
    query000.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer001.destroy()
    
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    query000.destroy()
    query600.destroy()
    buffer201.destroy()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query300.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder000.popDebugGroup();
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    
    query101.destroy()
    buffer203.destroy()
    query600.destroy()
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    command_encoder303.pushDebugGroup("mygroupmarker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    query000.destroy()
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    render_bundle_encoder302.insertDebugMarker("marker");
    device50.pushErrorScope("validation");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    query100.destroy()
    command_encoder500.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    compute_pass_encoder1030.insertDebugMarker("marker")
    query001.destroy()
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    buffer004.destroy()
    
    command_encoder204.insertDebugMarker("mymarker");
    render_bundle_encoder000.popDebugGroup();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    
    compute_pass_encoder9000.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    
    compute_pass_encoder9000.insertDebugMarker("marker")
    buffer100.destroy()
    query103.destroy()
    
    device90.pushErrorScope("validation");
    compute_pass_encoder0020.insertDebugMarker("marker")
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder500.insertDebugMarker("mymarker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    query301.destroy()
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    
    
    
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer500.destroy()
    
    command_encoder500.popDebugGroup()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    query500.destroy()
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query000.destroy()
    device70.pushErrorScope("internal");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    query700.destroy()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    device30.pushErrorScope("out-of-memory");
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.popDebugGroup();
    
    query502.destroy()
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder100.popDebugGroup();
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query000.destroy()
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    const command_buffer005 = command_encoder005.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer500 = command_encoder500.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer005, ]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer400 = command_encoder400.finish();
    device50.queue.submit([command_buffer500, ]);
    command_encoder303.popDebugGroup()
    const command_buffer104 = command_encoder104.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer303 = command_encoder303.finish();
    device30.queue.submit([command_buffer303, ]);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer104, ]);
}