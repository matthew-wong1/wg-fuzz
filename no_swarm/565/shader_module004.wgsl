struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec2<f32>(476f, -2342f), vec4<f32>(-1000f, 1531f, -990f, -1000f)), Struct_2(vec2<f32>(505f, 291f), vec4<f32>(-2881f, -1347f, -1335f, 1842f)), Struct_2(vec2<f32>(1015f, 851f), vec4<f32>(-1000f, 1013f, -326f, 239f)), Struct_2(vec2<f32>(166f, -683f), vec4<f32>(-953f, 407f, -256f, 649f)), Struct_2(vec2<f32>(-1399f, -246f), vec4<f32>(374f, 716f, -156f, 175f)), Struct_2(vec2<f32>(-1296f, 185f), vec4<f32>(-2189f, -2558f, -1664f, -220f)), Struct_2(vec2<f32>(710f, -682f), vec4<f32>(-221f, -375f, -1219f, -1453f)), Struct_2(vec2<f32>(-1000f, -1000f), vec4<f32>(654f, 174f, 1000f, -898f)), Struct_2(vec2<f32>(1499f, -1738f), vec4<f32>(1000f, 215f, -674f, 591f)), Struct_2(vec2<f32>(460f, 887f), vec4<f32>(-719f, 338f, -738f, 282f)), Struct_2(vec2<f32>(-1820f, 1197f), vec4<f32>(207f, 260f, 293f, 740f)), Struct_2(vec2<f32>(1132f, 324f), vec4<f32>(1000f, 101f, -1672f, -1000f)), Struct_2(vec2<f32>(493f, 369f), vec4<f32>(-628f, 757f, -176f, -650f)), Struct_2(vec2<f32>(1860f, 273f), vec4<f32>(376f, -2515f, -265f, -521f)), Struct_2(vec2<f32>(-644f, 309f), vec4<f32>(-599f, 456f, 970f, -789f)), Struct_2(vec2<f32>(1428f, -261f), vec4<f32>(661f, -564f, 727f, 2095f)), Struct_2(vec2<f32>(-289f, -304f), vec4<f32>(1212f, -211f, 144f, 734f)), Struct_2(vec2<f32>(-455f, 865f), vec4<f32>(1000f, 545f, 728f, -1033f)), Struct_2(vec2<f32>(421f, -788f), vec4<f32>(-355f, -430f, 137f, -1031f)), Struct_2(vec2<f32>(154f, 975f), vec4<f32>(-507f, 1569f, 871f, 1000f)), Struct_2(vec2<f32>(1000f, -319f), vec4<f32>(1041f, 310f, 278f, -125f)), Struct_2(vec2<f32>(916f, -137f), vec4<f32>(1064f, -1157f, -396f, 1000f)));

var<private> global2: vec2<bool>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !vec2<bool>(global2.x & !(!global2.x), global2.x);
    var var_0 = ~(~firstLeadingBit(~(global0.x ^ u_input.c.x)));
    let var_1 = max(u_input.a, u_input.a) | (select(vec2<i32>(u_input.a.x, 1i), _wgslsmith_mult_vec2_i32(u_input.a & u_input.a, select(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), global2.x)), 4294967295u == u_input.b.x) & vec2<i32>(-17034i, _wgslsmith_mult_i32(-2147483647i, min(-34299i, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer((global0.x | ~(39928u | global0.x)) | 4294967295u, u_input.a.x);
}

