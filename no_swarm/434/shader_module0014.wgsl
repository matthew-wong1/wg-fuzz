// {"0:0":[198,80,23,55,118,29,198,232,31,186,172,242,63,120,36,104,206,113,228,67,61,189,173,183,208,216,18,20,219,255,192,73,173,154,7,166,196,38,123,90,55,228,189,148,247,55,202,28]}
// Seed: 13744959923237204748

struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: array<vec4<f32>, 12>;

var<private> global2: u32 = 0u;

var<private> global3: vec4<i32>;

var<private> global4: Struct_4 = Struct_4(Struct_2(Struct_1(1i, vec3<i32>(-49427i, -8370i, -1i), true, -17015i, vec2<i32>(1i, 17360i)), Struct_1(13912i, vec3<i32>(55942i, -62958i, 0i), true, 1i, vec2<i32>(-63169i, 55197i))));

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    global1 = array<vec4<f32>, 12>();
    global3 = vec4<i32>(-global3.x, 13714i, i32(-2147483648), global3.x);
    global1 = array<vec4<f32>, 12>();
    let var_0 = 228f;
    var var_1 = abs(arg_0.e.x & firstTrailingBit(max(global4.a.b.a / 32685i, -32546i)));
    return 0u;
}

fn func_2() -> u32 {
    global0 = array<bool, 19>();
    let var_0 = (((u_input.c.xy & vec2<u32>(1u, 7265u)) ^ u_input.b.yy) & vec2<u32>(dot(vec3<u32>(15919u, u_input.a.x, u_input.c.x), ~vec3<u32>(4294967295u, 1u, 9895u)), func_3(Struct_1(global3.x, vec3<i32>(i32(-2147483648), 0i, 0i), global0[u_input.c.x], 1i, vec2<i32>(global4.a.a.d, 0i)), !global4.a.a.c))) / select(u_input.b.yz, vec2<u32>(~(~u_input.b.x), dot(vec4<u32>(u_input.b.x, u_input.c.x, 4294967295u, u_input.b.x), max(vec4<u32>(0u, u_input.b.x, u_input.c.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.c.x, 4294967295u)))), global4.a.a.c);
    let var_1 = global3.x;
    var var_2 = -1076f;
    var var_3 = !all(select(!vec4<bool>(false, global4.a.a.c, false, global4.a.a.c), vec4<bool>(global0[4294967295u & u_input.b.x], false, global0[16341u], false), select(!vec4<bool>(global0[u_input.b.x], global0[var_0.x], global4.a.b.c, false), vec4<bool>(global0[var_0.x], true, global4.a.b.c, true), select(vec4<bool>(global4.a.b.c, false, global0[var_0.x], true), vec4<bool>(false, global0[var_0.x], true, global0[1u]), vec4<bool>(global0[u_input.b.x], global4.a.a.c, global4.a.b.c, global0[var_0.x])))));
    return var_0.x;
}

fn func_1() -> vec2<bool> {
    let var_0 = clamp(clamp(vec4<u32>(66021u, min(u_input.a.x >> 59827u, ~49355u), u_input.b.x, (17107u >> u_input.c.x) * u_input.c.x), vec4<u32>(38604u, 4959u, ~u_input.b.x, ~(~u_input.c.x)), ~vec4<u32>(u_input.c.x, 32777u, func_2(), u_input.a.x)), max(vec4<u32>(~dot(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(8441u, u_input.a.x)), u_input.a.x, u_input.c.x, func_3(Struct_1(global4.a.b.a, vec3<i32>(global4.a.a.b.x, -3702i, global3.x), global4.a.a.c, global3.x, global3.wy), global4.a.a.c) * u_input.a.x), vec4<u32>(abs(~u_input.a.x), ~u_input.c.x, 1u, firstTrailingBit(~u_input.a.x))), clamp(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.a.x) / (vec4<u32>(26119u, u_input.b.x, u_input.b.x, 4860u) | vec4<u32>(u_input.b.x, 4294967295u, 130601u, 28716u)), vec4<u32>(0u, u_input.c.x, u_input.c.x, 27812u) << ~vec4<u32>(19564u, u_input.b.x, 0u, u_input.a.x), vec4<u32>(1u, ~1u, 0u, ~4294967295u)) & firstTrailingBit(~vec4<u32>(32478u, u_input.b.x, 4609u, u_input.a.x)));
    global1 = array<vec4<f32>, 12>();
    let var_1 = vec3<bool>(((1u - u_input.b.x) - var_0.x) < dot(~select(vec4<u32>(48582u, var_0.x, 1u, var_0.x), var_0, vec4<bool>(global0[61151u], false, false, true)), max(var_0, vec4<u32>(1u, u_input.c.x, 26121u, 63446u)) * ~vec4<u32>(0u, 0u, u_input.b.x, 4294967295u)), true, true);
    global4 = Struct_4(global4.a);
    var var_2 = -dot(vec3<i32>(dot(vec4<i32>(35094i, -18724i, 0i, global4.a.a.b.x), vec4<i32>(4053i, 1i, -1i, i32(-2147483648))), global3.x, -1i ^ 3521i), global3.yzz) ^ 259i;
    return var_1.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.a.a;
    let var_1 = Struct_3(any(func_1()), global4.a);
    var var_2 = ((-(-900f) + -(310f - 1085f)) * round(-(134f + 214f))) + -(-trunc(-338f) + -(-(-230f)));
    var var_3 = Struct_1(2147483647i, vec3<i32>(var_1.b.a.e.x, 24592i, -79282i), !global0[1u], -20359i, firstLeadingBit(-(vec2<i32>(var_1.b.a.b.x, 2147483647i) & vec2<i32>(global3.x, var_0.e.x)) & (select(global4.a.a.e, var_1.b.a.e, true) % (vec2<i32>(-1i, var_0.e.x) | global3.zx))));
    let var_4 = 24540u >= reverseBits(~u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(firstLeadingBit(vec4<u32>(23543u, u_input.a.x, 4294967295u, u_input.a.x)) * vec4<u32>(0u, u_input.b.x, 67971u, u_input.b.x))), (~(vec4<i32>(global4.a.b.b.x, var_0.e.x, global3.x, -22982i) >> vec4<u32>(10399u, u_input.c.x, 9118u, u_input.c.x)) | vec4<i32>(-14980i, firstLeadingBit(1i), global4.a.b.a ^ var_0.b.x, i32(-2147483648))) | clamp((vec4<i32>(global3.x, var_1.b.a.a, 1i, var_1.b.b.a) % vec4<i32>(global4.a.a.d, 1i, 8819i, var_0.d)) ^ vec4<i32>(global4.a.b.d, 2147483647i, var_3.b.x, -1i), max(vec4<i32>(-12768i, var_1.b.a.b.x, var_1.b.a.b.x, 11594i) / vec4<i32>(-11640i, 3915i, -15474i, var_0.a), vec4<i32>(57911i, var_1.b.a.a, global3.x, 2147483647i) >> vec4<u32>(65026u, 0u, 4294967295u, 1u)), ~max(vec4<i32>(var_3.e.x, -36976i, 2147483647i, 2147483647i), vec4<i32>(global3.x, var_3.e.x, var_3.a, var_0.e.x))), -(global1[u_input.c.x] + -(-vec4<f32>(741f, -1591f, 546f, 1000f))), (~global3.x * -var_1.b.b.d) & 2147483647i);
}

