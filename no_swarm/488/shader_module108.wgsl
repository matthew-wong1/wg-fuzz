// {"0:0":[219,71,2,187,162,63,186,16,233,157,188,224,116,17,64,163,3,83,54,62,97,220,23,41,105,9,45,22,37,158,69,195,129,205,46,88,110,65,116,101,36,120,11,240,48,214,110,111,69,19,123,9,230,118,202,106,30,113,42,244,73,245,45,20]}
// Seed: 9332412553809464940

struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(1u, 88034u, 1u, 0u, 48220u, 1115u, 0u, 1u, 4294967295u, 0u, 81674u, 1u, 50938u, 31445u, 1u, 1u, 1u, 0u, 1u, 4294967295u, 66787u, 1u, 1u, 4294967295u, 1u, 4547u, 35575u, 19671u, 0u, 76464u);

var<private> global1: Struct_1 = Struct_1(vec2<u32>(36161u, 0u), true, vec3<bool>(true, true, true), 1u);

fn func_3(arg_0: u32, arg_1: Struct_4) -> vec3<bool> {
    global1 = Struct_1(u_input.d.xy, global1.b, select(arg_1.a.c, select(vec3<bool>(global1.c.x | arg_1.a.b, !false, global1.b), select(vec3<bool>(arg_1.a.c.x, arg_1.b.a, global1.b), vec3<bool>(false, true, true), global1.b), global1.b), true), 0u);
    var var_0 = ~((select(u_input.b.zzx % u_input.d.zzy, max(u_input.d.wyz, u_input.b.zwz), 79757u == u_input.b.x) ^ ~(u_input.d.wyy & u_input.b.zxy)) ^ vec3<u32>(countOneBits(~u_input.d.x), ~0u | 0u, ~arg_0 >> 32789u));
    global0 = array<u32, 30>();
    let var_1 = -(abs(exp2(1206f)) - -((-956f + 506f) - sign(-947f)));
    let var_2 = -reverseBits(u_input.c);
    return select(arg_1.a.c, select(!(!global1.c), vec3<bool>(global1.c.x, all(!vec4<bool>(global1.c.x, global1.b, true, true)), arg_1.b.a), true), vec3<bool>(!(any(global1.c) || global1.b), arg_1.a.c.x, !(492f < -382f)));
}

fn func_2() -> Struct_3 {
    return Struct_3(false, Struct_1((~vec2<u32>(4294967295u, 24649u) % global1.a) % (clamp(vec2<u32>(u_input.d.x, global0[global1.a.x]), vec2<u32>(u_input.d.x, u_input.d.x), global1.a) >> select(global1.a, global1.a, vec2<bool>(global1.b, global1.b))), all(!vec4<bool>(true, true, false, false)), func_3(reverseBits(11642u), Struct_4(Struct_1(global1.a, true, vec3<bool>(true, false, true), 87734u), Struct_3(true, Struct_1(global1.a, true, global1.c, global0[global1.a.x])))), global0[0u]));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: f32) -> vec2<u32> {
    global1 = Struct_1(global1.a, true, arg_1.b.c, abs(0u >> ~dot(u_input.b.zyy, vec3<u32>(u_input.b.x, 4294967295u, 1u))));
    let var_0 = func_2().b;
    var var_1 = func_2().b;
    global0 = array<u32, 30>();
    let var_2 = vec4<u32>((var_1.a.x | 1u) - (~var_0.a.x ^ ~28883u), firstTrailingBit(607u), func_2().b.a.x, var_0.d);
    return ~vec2<u32>(var_0.a.x, global0[1u | var_2.x]);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: u32) -> bool {
    var var_0 = Struct_1(func_4(arg_0, func_2(), -1000f), global1.b, vec3<bool>(true, func_2().a, func_3(35666u, Struct_4(Struct_1(vec2<u32>(u_input.b.x, global0[26320u]), global1.c.x, vec3<bool>(global1.b, global1.b, true), 4294967295u), Struct_3(global1.c.x, Struct_1(vec2<u32>(44049u, arg_3), global1.b, vec3<bool>(false, global1.b, false), 0u)))).x), dot(arg_2, arg_2));
    let var_1 = Struct_3(false, Struct_1(~firstTrailingBit(u_input.d.zz), ((-1516f / -461f) / abs(339f)) == ((arg_0 * arg_0) / step(arg_0, arg_0)), func_2().b.c, 4294967295u));
    let var_2 = Struct_3(any(func_3(reverseBits(~0u), Struct_4(var_1.b, Struct_3(global1.b, var_1.b)))), var_1.b);
    global1 = Struct_1(vec2<u32>(arg_3, global0[global1.a.x]), false, func_3(21547u * arg_3, Struct_4(var_2.b, var_1)), ~(reverseBits(select(var_1.b.a.x, 1u, false)) & select(43828u, min(var_2.b.d, 0u), !false)));
    var_0 = var_2.b;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global1.c.x, !(734f >= -select(-286f, -1114f, true)), !global1.b, false);
    var_0 = !select(!(!select(vec4<bool>(global1.c.x, true, false, false), vec4<bool>(true, false, true, var_0.x), global1.c.x)), !vec4<bool>(!var_0.x, global1.b, any(vec4<bool>(true, false, true, false)), var_0.x), vec4<bool>(func_1(-516f / -2090f, ~vec3<u32>(global1.a.x, u_input.b.x, 10149u), vec2<u32>(132662u, global1.a.x), u_input.d.x % 35664u), !global1.c.x | !var_0.x, var_0.x | all(vec4<bool>(true, true, false, true)), false));
    var var_1 = Struct_4(Struct_1(~reverseBits(~vec2<u32>(global0[4613u], 16031u)), !(!false), var_0.www, reverseBits(1u)), func_2());
    var var_2 = Struct_4(Struct_1(firstTrailingBit(vec2<u32>(8379u, u_input.d.x)), global1.c.x, func_3(firstTrailingBit(var_1.a.d << 1u), Struct_4(Struct_1(vec2<u32>(u_input.b.x, u_input.d.x), false, vec3<bool>(false, var_0.x, true), var_1.b.b.d), Struct_3(global1.c.x, var_1.a))), select(53563u, 3211u, !var_1.a.b & true)), Struct_3(var_1.b.a, var_1.a));
    var var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(func_2().b.a.x ^ global0[~(global1.d >> global0[global1.d]) + ~countOneBits(u_input.d.x)], vec4<i32>(2147483647i, u_input.c, firstLeadingBit(8835i), ~countOneBits(u_input.a.x + -19595i)), countOneBits(~(4294967295u + reverseBits(u_input.d.x))));
}

