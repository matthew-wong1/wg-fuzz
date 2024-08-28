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
    const array0 = new Float32Array([-1.0, 1.0, 0.5, -0.75, 1.0, 0.5, -0.75, -0.5, 0.5, 0.5, 0.0, 0.25, -0.75, 0.75, -0.5, 1.0, -1.0, 0.75, -0.75, 0.75, 0.5, 0.0, -0.5, -0.75, -1.0, -0.25, 0.75, 0.0, -0.25, -1.0, 0.25, -0.75, 0.25, -1.0, 0.5, 0.75, 0.75, -0.5, 0.75, 0.75, -0.5, -0.75, 0.75, 0.5, 0.75, -0.5, -0.5, -1.0, 0.25, -0.25, 1.0, 0.75, 1.0, 0.75, 0.25, -0.75, 0.5, -0.75, 0.5, -1.0, 0.75, 0.25, -0.25, 0.0, -0.5, 0.75, 0.0, 1.0, -0.5, 0.25, -1.0, 0.25, -1.0, -1.0, -0.5, 0.0, -1.0, 0.0, -0.25, 0.25, -1.0, -0.5, -0.25, 1.0, 0.0, -1.0, 1.0, 0.0, 0.5, 0.75, -0.25, 1.0, 0.0, 0.5, 0.75, -1.0, -1.0, 0.0, 0.0, -1.0, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.5, 0.5, -0.5, -0.75, 0.25, -0.5, 0.25, 0.75, -0.25, -0.5, -0.75, 1.0, -0.5, -0.75, 0.5, -0.25, -0.5, -1.0, 0.75, 1.0, 0.25, -1.0, 0.0, -0.25, 0.0, 0.0, -0.25, -1.0, 0.0, 0.25, 1.0, 0.0, 0.25, -0.5, -0.5, 1.0, 0.0, -0.5, -0.75, 0.5, 0.25, -0.5, -0.25, -0.5, 0.5, -1.0, 0.25, -0.75, 0.75, 1.0, -1.0, -1.0, -0.5, 1.0, -0.5, 0.0, 0.75, -0.75, -0.5, 1.0, 0.25, -0.5, -0.5, -0.5, -1.0, 0.25, 0.75, -1.0, 0.5, 1.0, 0.75, -1.0, 1.0, 0.75, 0.25, -0.25, -0.5, 1.0, 0.75, 0.25, -0.25, -0.25, -0.5, -1.0, 0.75, -0.75, 0.25, 0.5, 0.0, -0.5, -0.5, 0.5, -0.25, 1.0, -0.5, -0.75, 0.75, -0.75, -0.75, 0.75, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("out-of-memory");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_buffer100 = command_encoder100.finish();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer100.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("validation");
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device50.pushErrorScope("internal");
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    device40.pushErrorScope("out-of-memory");
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device50.pushErrorScope("out-of-memory");
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    command_encoder500.insertDebugMarker("mymarker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer102 = command_encoder102.finish();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    query400.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    device40.pushErrorScope("internal");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query101.destroy()
    query100.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    command_encoder500.popDebugGroup()
    query200.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    query201.destroy()
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    query202.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    query103.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device20.pushErrorScope("internal");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    command_encoder400.insertDebugMarker("mymarker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    device00.pushErrorScope("internal");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    command_encoder502.pushDebugGroup("mygroupmarker")
    query400.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device50.pushErrorScope("internal");
    
    
    command_encoder500.insertDebugMarker("mymarker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    command_encoder104.insertDebugMarker("mymarker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device30.pushErrorScope("internal");
    query202.destroy()
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer400 = command_encoder400.finish();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    query203.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    buffer001.destroy()
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_buffer501 = command_encoder501.finish();
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    buffer502.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const command_buffer301 = command_encoder301.finish();
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    buffer400.destroy()
    query400.destroy()
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer200 = command_encoder200.finish();
    render_bundle_encoder500.insertDebugMarker("marker");
    buffer501.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    buffer002.destroy()
    
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    const array2 = new Float32Array([-1.0, -0.75, -0.75, -0.5, -1.0, -1.0, 0.75, -0.25, -0.25, 1.0, -0.5, -1.0, 0.25, 0.5, 0.75, -0.25, 0.25, 0.5, 0.0, -0.75, -0.25, 0.25, 1.0, -0.75, -0.75, 0.25, 1.0, -1.0, -1.0, -1.0, -1.0, 0.5, 1.0, 1.0, 0.5, 0.5, -1.0, -0.5, -1.0, 0.0, -0.75, -0.75, 0.25, -0.5, 0.0, 0.0, 0.25, -0.25, -0.75, 1.0, 0.75, -0.25, 0.25, 0.25, -0.25, 0.5, -0.25, -1.0, 0.25, -0.5, 0.5, -0.5, 0.5, -0.75, -0.75, 0.25, -0.5, 0.5, 1.0, -1.0, 1.0, -0.25, 0.5, 0.0, -0.25, -0.25, 0.0, -0.75, 0.75, 0.75, -1.0, 1.0, 0.75, -0.75, 0.0, 0.25, 0.5, 0.75, 0.0, -0.5, 0.5, -1.0, 1.0, 0.25, 0.75, 0.75, 0.5, -0.25, 1.0, 0.0, ]);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    buffer500.destroy()
    
    
    const command_buffer201 = command_encoder201.finish();
    const command_buffer104 = command_encoder104.finish();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder502.insertDebugMarker("mymarker");
    
    command_encoder300.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query103.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder101.popDebugGroup()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    query102.destroy()
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_buffer500 = command_encoder500.finish();
    
    buffer300.destroy()
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    buffer004.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder300.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    query101.destroy()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    buffer503.destroy()
    
    command_encoder300.insertDebugMarker("mymarker");
    
    query202.destroy()
    const sampler506 = device50.createSampler( { label: "sampler506" } );
    const command_buffer001 = command_encoder001.finish();
    
    
    query200.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    buffer101.destroy()
    command_encoder105.insertDebugMarker("mymarker");
    query200.destroy()
    buffer301.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const command_buffer302 = command_encoder302.finish();
    
    command_encoder300.insertDebugMarker("mymarker");
    query103.destroy()
    const array3 = new Float32Array([0.5, 0.0, 0.5, -1.0, -0.25, 0.5, 0.25, -1.0, 0.75, -0.75, -1.0, -0.75, 0.25, 0.0, -0.75, -0.75, -1.0, 0.0, 0.75, -1.0, 0.75, 0.5, 0.5, -1.0, -0.5, -1.0, -0.5, -0.25, -1.0, 1.0, 0.75, -0.25, 0.75, 1.0, -0.5, 0.0, 0.5, 1.0, 1.0, -1.0, 1.0, 1.0, 0.25, 0.5, -0.5, -0.5, 0.5, 1.0, -0.25, -0.5, -0.75, 0.0, 0.25, 0.5, 0.0, 0.0, 0.25, 0.5, -0.75, 0.25, 0.0, -0.25, 0.5, 0.5, 0.75, -0.75, -0.25, -0.75, -0.25, 0.25, -0.75, -1.0, 0.75, 0.25, 0.5, 0.0, 0.5, 0.5, 0.25, 0.75, 0.0, -0.25, 1.0, -0.25, -0.5, -1.0, -0.75, -0.25, -1.0, 0.0, 0.0, -0.25, -1.0, 1.0, -0.75, -0.75, 1.0, 0.25, 0.0, -1.0, ]);
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query202.destroy()
    
    query201.destroy()
    query203.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    query103.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.insertDebugMarker("mymarker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    query103.destroy()
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder401.insertDebugMarker("marker");
    query500.destroy()
    device30.pushErrorScope("out-of-memory");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder300.insertDebugMarker("mymarker");
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    buffer200.destroy()
    
    
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    query203.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query501.destroy()
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    device10.queue.submit([command_buffer104, ]);
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    command_encoder000.popDebugGroup()
    
    device50.queue.writeBuffer(buffer505, 0, array0, 0, array0.length);
    command_encoder103.insertDebugMarker("mymarker");
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    
    
    query204.destroy()
    device30.queue.submit([command_buffer301, ]);
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query202.destroy()
    command_encoder105.pushDebugGroup("mygroupmarker")
    command_encoder502.popDebugGroup()
    
    command_encoder002.insertDebugMarker("mymarker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    command_encoder101.insertDebugMarker("mymarker");
    query303.destroy()
    query302.destroy()
    render_bundle_encoder502.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    query502.destroy()
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device40.queue.submit([command_buffer400, ]);
    command_encoder000.pushDebugGroup("mygroupmarker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device30.pushErrorScope("out-of-memory");
    command_encoder101.insertDebugMarker("mymarker");
    
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder402.insertDebugMarker("mymarker");
    const array4 = new Float32Array([0.0, -1.0, 1.0, 0.25, -0.75, -0.5, -1.0, 0.0, 0.5, -1.0, 0.5, 1.0, 0.25, 0.75, 0.5, 0.75, 0.25, 0.0, -0.75, -0.75, 0.0, 0.5, -0.25, 0.25, 0.75, -0.5, -1.0, -1.0, 0.0, 0.75, 0.75, 0.75, 0.5, 0.75, 0.25, -0.25, 1.0, 1.0, -0.5, 0.0, -0.5, -1.0, -0.75, 0.0, 0.0, 0.25, -0.25, 1.0, 0.75, 0.5, 0.75, -0.25, -0.25, 0.25, 0.75, -0.5, 0.0, 0.5, -1.0, 0.5, 1.0, 0.5, -0.5, 0.0, -0.5, -0.75, 0.75, 0.0, -0.25, -0.5, -1.0, -0.25, -0.5, 1.0, -1.0, -1.0, 0.25, 0.25, 0.75, 0.75, 0.5, -0.5, 0.25, 1.0, 0.75, 1.0, 0.75, -0.5, -0.25, 0.5, -1.0, -0.75, 1.0, 0.0, 0.5, 0.75, 0.25, 0.0, 0.75, -1.0, ]);
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_buffer303 = command_encoder303.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    buffer506.destroy()
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    
    
    device50.queue.writeBuffer(buffer505, 0, array4, 0, array4.length);
    device60.pushErrorScope("out-of-memory");
    command_encoder502.pushDebugGroup("mygroupmarker")
    
    
    query504.destroy()
    device50.queue.writeBuffer(buffer505, 0, array1, 0, array1.length);
    buffer303.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder105.popDebugGroup()
    
    query104.destroy()
    device30.queue.submit([command_buffer303, ]);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer505.destroy()
    render_bundle_encoder402.insertDebugMarker("marker");
    command_encoder101.popDebugGroup()
    
    
    query300.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    command_encoder003.insertDebugMarker("mymarker");
    query504.destroy()
    
    device30.queue.writeBuffer(buffer304, 0, array2, 0, array2.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    command_encoder402.insertDebugMarker("mymarker");
    
    command_encoder000.insertDebugMarker("mymarker");
    
    query101.destroy()
    query401.destroy()
    const sampler507 = device50.createSampler( { label: "sampler507" } );
    command_encoder000.popDebugGroup()
    const sampler508 = device50.createSampler( { label: "sampler508" } );
    command_encoder402.insertDebugMarker("mymarker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder402.popDebugGroup()
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    
    const command_buffer106 = command_encoder106.finish();
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    command_encoder000.insertDebugMarker("mymarker");
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder105.insertDebugMarker("mymarker");
    query105.destroy()
    {
        await buffer304.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer304.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer304.unmap();
        console.log(new Float32Array(data));
    }
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    command_encoder502.popDebugGroup()
    command_encoder103.popDebugGroup()
    const command_buffer402 = command_encoder402.finish();
    const command_buffer101 = command_encoder101.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder300.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    const command_buffer502 = command_encoder502.finish();
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    const command_buffer300 = command_encoder300.finish();
    const command_buffer000 = command_encoder000.finish();
    const command_buffer105 = command_encoder105.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer200, ]);
    const command_buffer103 = command_encoder103.finish();
    device10.queue.submit([command_buffer103, ]);
    command_encoder002.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    const command_buffer003 = command_encoder003.finish();
    command_encoder401.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer105, ]);
    const command_buffer401 = command_encoder401.finish();
    device50.queue.submit([command_buffer502, ]);
    device40.queue.submit([command_buffer402, ]);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    device00.queue.submit([command_buffer000, ]);
}