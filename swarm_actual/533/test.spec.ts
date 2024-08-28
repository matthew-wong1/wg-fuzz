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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.pushErrorScope("out-of-memory");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query000.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    query002.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("internal");
    query003.destroy()
    query003.destroy()
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query001.destroy()
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device00.pushErrorScope("validation");
    command_encoder102.insertDebugMarker("mymarker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device20.pushErrorScope("validation");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    command_encoder102.insertDebugMarker("mymarker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query003.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder101.insertDebugMarker("mymarker");
    query000.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    query004.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    query100.destroy()
    command_encoder102.insertDebugMarker("mymarker");
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.pushErrorScope("internal");
    query003.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder201.insertDebugMarker("mymarker");
    device10.pushErrorScope("internal");
    
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    command_encoder105.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder104.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder100.insertDebugMarker("mymarker");
    query004.destroy()
    query006.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder201.insertDebugMarker("mymarker");
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    command_encoder105.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder101.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder106.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    
    
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder101.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder104.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    
    
    
    
    command_encoder105.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder106.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder001.insertDebugMarker("mymarker");
    query002.destroy()
    command_encoder105.insertDebugMarker("mymarker");
    
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query004.destroy()
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    command_encoder106.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query102.destroy()
    
    query005.destroy()
    command_encoder105.insertDebugMarker("mymarker");
    query100.destroy()
    command_encoder104.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder106.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder106.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    query001.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    query100.destroy()
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder200.insertDebugMarker("mymarker");
    query100.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query001.destroy()
    command_encoder105.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query007.destroy()
    query100.destroy()
    
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder107.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder107.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder106.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    
    query004.destroy()
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    command_encoder101.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    query006.destroy()
    command_encoder101.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    command_encoder102.insertDebugMarker("mymarker");
    
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder102.insertDebugMarker("mymarker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.insertDebugMarker("mymarker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query005.destroy()
    query003.destroy()
    device10.pushErrorScope("validation");
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    
    query005.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    command_encoder107.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder106.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    command_encoder104.insertDebugMarker("mymarker");
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    query007.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer106,
        0
    )
    command_encoder101.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder107.insertDebugMarker("mymarker");
    query004.destroy()
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder107.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    command_encoder001.insertDebugMarker("mymarker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    query004.destroy()
    
    
    command_encoder107.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query005.destroy()
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    command_encoder106.insertDebugMarker("mymarker");
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    query103.destroy()
    command_encoder101.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer106,
        0
    )
    query101.destroy()
    
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer106,
        0
    )
    
    command_encoder101.insertDebugMarker("mymarker");
    query001.destroy()
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device00.pushErrorScope("validation");
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query006.destroy()
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder105.insertDebugMarker("mymarker");
    command_encoder107.copyTextureToBuffer(
        {
            texture: texture106
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query002.destroy()
    
    command_encoder101.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query001.destroy()
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture106
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder107.resolveQuerySet(
        query103,
        0,
        32,
        buffer106,
        0
    )
    command_encoder107.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    command_encoder102.insertDebugMarker("mymarker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    query200.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder106.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder105.copyTextureToBuffer(
        {
            texture: texture106
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query100.destroy()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    command_encoder107.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder107.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query006.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture106
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer106,
        0
    )
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder107.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture106
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    command_encoder101.resolveQuerySet(
        query103,
        0,
        32,
        buffer106,
        0
    )
    query101.destroy()
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    query000.destroy()
    query001.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    query002.destroy()
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    query101.destroy()
    
    query100.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    command_encoder101.resolveQuerySet(
        query104,
        0,
        32,
        buffer106,
        0
    )
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer106,
        0
    )
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    
    
    query007.destroy()
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer106,
        0
    )
    
    
    query000.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    command_encoder105.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture106
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder106.copyTextureToBuffer(
        {
            texture: texture106
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query003.destroy()
    command_encoder107.insertDebugMarker("mymarker");
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    
    query103.destroy()
    query005.destroy()
    command_encoder102.insertDebugMarker("mymarker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    
    query004.destroy()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer106,
        0
    )
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query004.destroy()
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer106,
        0
    )
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device30.pushErrorScope("validation");
    
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder103.insertDebugMarker("mymarker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    command_encoder104.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture106
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder102.insertDebugMarker("mymarker");
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    command_encoder105.copyTextureToBuffer(
        {
            texture: texture106
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder202.insertDebugMarker("mymarker");
    
    query002.destroy()
    command_encoder107.resolveQuerySet(
        query103,
        0,
        32,
        buffer106,
        0
    )
    
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder106.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    query007.destroy()
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder101.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    query003.destroy()
    command_encoder108.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    query001.destroy()
    command_encoder104.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    
    query001.destroy()
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer106,
        0
    )
    command_encoder003.insertDebugMarker("mymarker");
    
    command_encoder105.copyTextureToBuffer(
        {
            texture: texture106
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    
    command_encoder105.resolveQuerySet(
        query104,
        0,
        32,
        buffer106,
        0
    )
    
    query002.destroy()
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer106,
        0
    )
    
    command_encoder105.resolveQuerySet(
        query104,
        0,
        32,
        buffer106,
        0
    )
    
    
    command_encoder101.copyTextureToBuffer(
        {
            texture: texture106
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer106,
        0
    )
    
    
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer106,
        0
    )
    query100.destroy()
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder105.insertDebugMarker("mymarker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query009.destroy()
    
    command_encoder101.resolveQuerySet(
        query103,
        0,
        32,
        buffer106,
        0
    )
    
    query100.destroy()
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    command_encoder105.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder107.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
}