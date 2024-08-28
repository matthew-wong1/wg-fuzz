// {"0:0":[33,48,97,35,34,88,40,0,105,105,216,225,11,25,125,3,84,128,179,225,77,92,165,234,3,246,60,242,111,47,72,252,182,200,99,17,29,199,144,253,231,146,142,2,25,117,113,93,74,183,216,227,216,44,162,17,100,174,41,254,25,114,191,40]}
// Seed: 286460893016657805

struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: vec2<i32> = vec2<i32>(18254i, 20193i);

var<private> global2: Struct_3;

fn func_2() -> Struct_1 {
    return global2.d;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<f32>) -> vec2<i32> {
    let var_0 = arg_1;
    var var_1 = Struct_1(45462u, -(~26965i), arg_1.d.c, reverseBits(global2.b.d >> 4294967295u), global2.a.x);
    global1 = -u_input.b.xx;
    var_1 = func_2();
    global2 = Struct_3(arg_1.a, global2.d, -global0[1u], arg_0);
    return select(vec2<i32>(var_1.d, arg_0.d) >> vec2<u32>(1u, dot(u_input.c.wy, ~u_input.c.yw)), firstTrailingBit(vec2<i32>(-34810i, -(-1i)) << u_input.c.xz), func_2().c);
}

fn func_3() -> vec3<bool> {
    let var_0 = select(-46548i, 1i, !global2.b.c.x);
    var var_1 = Struct_4(!vec3<bool>(false == true, false, false));
    let var_2 = Struct_1(~global2.b.a, -((~13106i + (-1i % 8340i)) | global0[countOneBits(global2.d.a << global2.b.a)]), var_1.a.yx, ((abs(0i) ^ (i32(-2147483648) % global2.c)) - (-var_0 / ~global2.c)) / ~(-20386i), global2.a.x);
    var var_3 = 819f + var_2.e;
    global0 = array<i32, 28>();
    return vec3<bool>(func_2().c.x, dot(u_input.b, abs(u_input.b) + (u_input.b / vec3<i32>(global2.d.d, u_input.b.x, -17253i))) > var_2.b, false);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    var var_0 = -785f;
    var var_1 = global2.a;
    var var_2 = Struct_3(-vec4<f32>(1665f, -global2.d.e, max(global2.b.e, step(1000f, -1515f)), -(-1066f)), func_2(), -61045i, global2.b);
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(global2.a * vec4<f32>(-654f, ceil(896f * global2.a.x), global2.d.e, global2.a.x), Struct_1((max(global2.d.a, u_input.c.x) - ~0u) * 4294967295u, ~(~2147483647i / min(u_input.a, -1i)), global2.b.c, abs(u_input.d), 686f * 228f), dot(vec4<i32>(~(global0[u_input.c.x] | global1.x), -1i, dot(u_input.b << vec3<u32>(0u, 119442u, 13124u), vec3<i32>(global2.d.b, u_input.b.x, -1i)), global0[7758u] >> (4294967295u * 15891u)), (vec4<i32>(u_input.b.x, 74822i, 0i, global2.b.d) | max(vec4<i32>(global0[u_input.c.x], 206i, 27327i, global2.b.d), vec4<i32>(0i, 44158i, global1.x, global2.c))) / abs(min(vec4<i32>(i32(-2147483648), u_input.a, global1.x, i32(-2147483648)), vec4<i32>(27147i, 39346i, global0[0u], global1.x)))), Struct_1(~u_input.c.x, 2147483647i + global0[global2.b.a], global2.d.c, dot(func_1(Struct_1(1u, global1.x, global2.b.c, global2.c, -836f), Struct_3(vec4<f32>(-2779f, 772f, global2.d.e, global2.a.x), global2.d, 0i, Struct_1(global2.b.a, 56697i, global2.b.c, u_input.b.x, global2.b.e)), global2.a.yy) + -u_input.b.yx, min(select(u_input.b.xy, vec2<i32>(u_input.a, global2.c), global2.d.c), firstLeadingBit(vec2<i32>(i32(-2147483648), global0[u_input.c.x])))), global2.a.x));
    global1 = vec2<i32>(12126i, max(~(~(-8074i)), func_1(global2.b, Struct_3(vec4<f32>(1000f, 374f, 1094f, 1000f), Struct_1(16751u, global1.x, global2.d.c, -1i, 1109f), 1i, global2.b), vec2<f32>(442f, global2.d.e)).x >> dot(vec3<u32>(u_input.c.x, 5529u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 1069u)))) >> vec2<u32>(~global2.d.a, ~4294967295u);
    var var_0 = Struct_3(global2.a + -exp2(global2.a), global2.b, global0[func_4(Struct_4(select(!vec3<bool>(global2.d.c.x, global2.d.c.x, global2.b.c.x), func_3(), select(vec3<bool>(false, global2.b.c.x, global2.d.c.x), vec3<bool>(false, false, global2.b.c.x), true))), func_2())], Struct_1(4294967295u, abs(u_input.a), vec2<bool>(func_1(global2.d, Struct_3(global2.a, global2.b, 0i, Struct_1(u_input.c.x, global1.x, vec2<bool>(global2.b.c.x, global2.b.c.x), u_input.a, global2.d.e)), global2.a.yz).x <= (global1.x * u_input.d), true), ~min(abs(global1.x), global1.x), -1558f));
    var var_1 = abs(vec2<i32>(~(-global2.b.b), clamp((global2.d.d & global0[var_0.b.a]) ^ (0i * 0i), -26367i, (var_0.c * -1i) >> 70686u)));
    var var_2 = select(~vec2<u32>(global2.b.a, u_input.c.x), vec2<u32>(var_0.d.a, global2.d.a), !func_2().c);
    var_0 = Struct_3(step(var_0.a, -(trunc(vec4<f32>(global2.d.e, -1612f, var_0.b.e, var_0.a.x)) - -global2.a)), func_2(), var_0.d.d, Struct_1(~(var_0.d.a * 19615u), 730i, vec2<bool>(!global2.b.c.x, var_0.d.c.x), 1i, 1932f * 1269f));
    var var_3 = Struct_4(select(!func_3(), !(!vec3<bool>(false, global2.d.c.x, true)), all(var_0.d.c)));
    let x = u_input.a;
    s_output = StorageBuffer(-387f, -dot(~abs(vec4<i32>(2147483647i, var_0.d.d, var_0.d.b, global1.x)), vec4<i32>(45711i, global1.x, dot(vec2<i32>(var_1.x, 21206i), vec2<i32>(26405i, u_input.b.x)), -1i)), global2.a.wyy, -1i);
}

