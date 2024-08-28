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
    
    
    device00.destroy();
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("out-of-memory");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    texture101.destroy();
    
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device20.pushErrorScope("internal");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.pushErrorScope("internal");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.destroy();
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
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
    device30.pushErrorScope("validation");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    texture300.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer300.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.pushErrorScope("out-of-memory");
    
    device50.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    texture301.destroy();
    device60.pushErrorScope("validation");
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    device70.pushErrorScope("validation");
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.pushErrorScope("out-of-memory");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer302.destroy()
    
    buffer700.destroy()
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    device30.pushErrorScope("validation");
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    buffer301.destroy()
    
    buffer303.destroy()
    
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device60.destroy();
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    texture302.destroy();
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8unorm",
        dimension: "2d"
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8uint",
        dimension: "2d"
    });
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    texture700.destroy();
    
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device70.destroy();
    device90.pushErrorScope("internal");
    
    texture303.destroy();
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device80.destroy();
    
    
    
    texture304.destroy();
    
    
    
    
    
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view9011 = texture901.createView({ label: "texture_view9011" });
    texture900.destroy();
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    buffer306.destroy()
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view9030 = texture903.createView({ label: "texture_view9030" });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    buffer400.destroy()
    
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const texture_view9020 = texture902.createView({ label: "texture_view9020" });
    const texture904 = device90.createTexture({
        label: "texture904",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device100.pushErrorScope("internal");
    texture305.destroy();
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view3060 = texture306.createView({ label: "texture_view3060" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    texture306.destroy();
    
    
    
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device100.destroy();
    const texture_view9012 = texture901.createView({ label: "texture_view9012" });
    device40.pushErrorScope("out-of-memory");
    
    const texture_view9040 = texture904.createView({ label: "texture_view9040" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer305.destroy()
    
    
    
    texture904.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture905 = device90.createTexture({
        label: "texture905",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture906 = device90.createTexture({
        label: "texture906",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture401.destroy();
    
    texture906.destroy();
    texture903.destroy();
    
    texture402.destroy();
    texture400.destroy();
    const texture_view9050 = texture905.createView({ label: "texture_view9050" });
    buffer304.destroy()
    
    
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const texture_view9021 = texture902.createView({ label: "texture_view9021" });
    buffer900.destroy()
    
    
    const texture_view9013 = texture901.createView({ label: "texture_view9013" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view9051 = texture905.createView({ label: "texture_view9051" });
    texture905.destroy();
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture901.destroy();
    
    device110.destroy();
    buffer307.destroy()
    device30.destroy();
    const texture_view9022 = texture902.createView({ label: "texture_view9022" });
    
    texture902.destroy();
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture403.destroy();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device90.destroy();
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture404.destroy();
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.pushErrorScope("validation");
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device130.destroy();
    
    buffer401.destroy()
    
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth32float",
        dimension: "2d"
    });
    buffer403.destroy()
    
    
    const texture_view12010 = texture1201.createView({ label: "texture_view12010" });
    texture1201.destroy();
    
    
    device120.pushErrorScope("validation");
    
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    
    
    const texture1202 = device120.createTexture({
        label: "texture1202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture1203 = device120.createTexture({
        label: "texture1203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view12020 = texture1202.createView({ label: "texture_view12020" });
    texture1200.destroy();
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view12030 = texture1203.createView({ label: "texture_view12030" });
    
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    buffer402.destroy()
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device120.destroy();
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    device140.pushErrorScope("internal");
    
    device40.pushErrorScope("internal");
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture406.destroy();
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device140.destroy();
    texture405.destroy();
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("internal");
    
    
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    device150.pushErrorScope("internal");
    
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    device150.pushErrorScope("validation");
    
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device150.pushErrorScope("validation");
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    buffer404.destroy()
    const query1501 = device150.createQuerySet({
        label: "query1501",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view15000 = texture1500.createView({ label: "texture_view15000" });
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.pushErrorScope("internal");
    
    
    const query408 = device40.createQuerySet({
        label: "query408",
        type: "occlusion",
        count: 32,
    });
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    const query409 = device40.createQuerySet({
        label: "query409",
        type: "occlusion",
        count: 32,
    });
    
    
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device170.destroy();
    
    
    const texture407 = device40.createTexture({
        label: "texture407",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1501 = device150.createBuffer({
        label: "buffer1501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer1500.destroy()
    
    const texture1501 = device150.createTexture({
        label: "texture1501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture1500.destroy();
    
    
    
    const query1502 = device150.createQuerySet({
        label: "query1502",
        type: "occlusion",
        count: 32,
    });
    const texture1502 = device150.createTexture({
        label: "texture1502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const texture1601 = device160.createTexture({
        label: "texture1601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1502 = device150.createBuffer({
        label: "buffer1502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture408 = device40.createTexture({
        label: "texture408",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer1502.destroy()
    const texture409 = device40.createTexture({
        label: "texture409",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view16010 = texture1601.createView({ label: "texture_view16010" });
    const texture1602 = device160.createTexture({
        label: "texture1602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture409.destroy();
    const texture_view15020 = texture1502.createView({ label: "texture_view15020" });
    device160.pushErrorScope("validation");
    
    const texture_view16011 = texture1601.createView({ label: "texture_view16011" });
    texture1600.destroy();
    texture407.destroy();
    
    
    
    const buffer1503 = device150.createBuffer({
        label: "buffer1503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture1503 = device150.createTexture({
        label: "texture1503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    
    
    const texture_view16012 = texture1601.createView({ label: "texture_view16012" });
    
    
    
    
    
    const texture4010 = device40.createTexture({
        label: "texture4010",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query1503 = device150.createQuerySet({
        label: "query1503",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const texture4011 = device40.createTexture({
        label: "texture4011",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32uint",
        dimension: "2d"
    });
    
    texture4011.destroy();
    
    texture1501.destroy();
    
    
    
    const texture1504 = device150.createTexture({
        label: "texture1504",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture1603 = device160.createTexture({
        label: "texture1603",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    const texture_view15021 = texture1502.createView({ label: "texture_view15021" });
    texture1602.destroy();
    
    
    
    
    const texture_view15022 = texture1502.createView({ label: "texture_view15022" });
    
    
    
    texture408.destroy();
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    texture1503.destroy();
    const query4010 = device40.createQuerySet({
        label: "query4010",
        type: "occlusion",
        count: 32,
    });
    
    const query4011 = device40.createQuerySet({
        label: "query4011",
        type: "occlusion",
        count: 32,
    });
    const texture_view16030 = texture1603.createView({ label: "texture_view16030" });
    device160.popErrorScope().then((error) => {
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