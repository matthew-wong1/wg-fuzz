// {"0:0":[162,89,79,85,64,239,36,15,135,127,42,44,144,76,38,95,246,82,24,134,78,129,202,106,214,248,49,85,55,246,100,176]}
// Seed: 4465201206245373460

struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<u32, 3>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(2147483647i, 26051i, 0i, 1i), 12663i, -51928i, vec3<i32>(0i, -9100i, i32(-2147483648)), true);

var<private> global3: array<i32, 23> = array<i32, 23>(32236i, 1i, -59577i, 0i, -31728i, -4196i, -47794i, 2147483647i, 12890i, i32(-2147483648), -1i, -23915i, 1i, 1i, 16083i, -1i, i32(-2147483648), 1i, 0i, -25084i, 2147483647i, -1i, -1104i);

fn func_3() -> bool {
    global2 = Struct_1(-vec4<i32>((global0.x | u_input.b) | global2.b, u_input.b, abs(0i), 1i & u_input.c), ~abs(0i), u_input.b, vec3<i32>(2298i, -(-16574i) % -20247i, 38387i) + ~global2.a.yxy, true);
    let var_0 = Struct_2(min(~vec2<u32>(~u_input.d.x, global1[global1[global1[0u]] | 39192u]), ~(vec2<u32>(u_input.d.x, 1u) << vec2<u32>(4294967295u, 21783u))));
    let var_1 = ~dot(var_0.a >> ~(~vec2<u32>(global1[0u], 13836u)), (vec2<u32>(var_0.a.x, global1[88130u]) | var_0.a) % min(vec2<u32>(u_input.d.x, var_0.a.x) % var_0.a, select(vec2<u32>(global1[67429u], 4294967295u), vec2<u32>(23679u, 75089u), global2.e)));
    let var_2 = var_0;
    global0 = ~(~(((global2.a & vec4<i32>(0i, 0i, global2.d.x, -1i)) / ~global2.a) / min(vec4<i32>(-65733i, global3[u_input.d.x], u_input.b, global0.x) ^ vec4<i32>(global2.d.x, -1i, u_input.b, global3[56351u]), vec4<i32>(i32(-2147483648), 34109i, u_input.c, global2.c))));
    return global2.b == firstLeadingBit(min(dot(-global0.zy, global2.d.xz | vec2<i32>(global0.x, 14590i)), -43967i));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>) -> u32 {
    let var_0 = 1u;
    global1 = array<u32, 3>();
    let var_1 = vec3<bool>(global2.e, !false, !func_3() && (var_0 == 0u));
    let var_2 = Struct_1((vec4<i32>(max(global3[global1[u_input.d.x]], -5485i), ~(i32(-2147483648)), arg_0.x * global0.x, global0.x << u_input.d.x) >> abs(~u_input.d)) ^ -vec4<i32>(min(global2.c, -11393i), u_input.b, global2.a.x, max(-35274i, global3[7643u])), firstLeadingBit(-1i), -(-5589i), arg_0, arg_1.x < u_input.a.x);
    var var_3 = global0.xw;
    return abs(~global1[35400u]) & ~u_input.a.x;
}

fn func_1() -> vec2<f32> {
    var var_0 = vec3<bool>(false, ~func_2(max(global2.d, global0.yyw), ~u_input.d.wy) < (334u * min(dot(u_input.a, vec2<u32>(60154u, global1[1u])), global1[global1[u_input.a.x]] >> global1[u_input.d.x])), ((6311u | (70422u / 0u)) - dot(u_input.d.xyx | u_input.d.yzx, u_input.d.ywx | u_input.d.zxz)) < 34423u);
    var var_1 = vec4<i32>(global0.x, min(abs((-1i >> u_input.d.x) << dot(vec4<u32>(global1[3992u], u_input.d.x, global1[1u], 76154u), vec4<u32>(u_input.d.x, 138964u, u_input.a.x, global1[4294967295u]))), global2.a.x), global0.x, -(-(~dot(vec3<i32>(8066i, global3[23800u], u_input.c), vec3<i32>(2147483647i, global0.x, global2.d.x)))));
    var var_2 = 1000f;
    var var_3 = -(-floor(-(-596f - 989f)));
    var var_4 = Struct_2(~u_input.a);
    return min(-vec2<f32>(-(-1228f), -(-284f * 650f)), exp2(step(vec2<f32>(-1044f, 1055f) - vec2<f32>(-658f, 665f), vec2<f32>(-1000f, 616f) / vec2<f32>(-296f, -618f))) - vec2<f32>(-210f, select(-848f, 1112f, global2.e) * exp2(-1496f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (-926f - -889f) + abs(-(-select(-672f, -187f, global2.e)));
    var var_1 = firstLeadingBit(dot(u_input.d.wy, (vec2<u32>(60541u, 9160u) + vec2<u32>(global1[global1[u_input.d.x]], 4294967295u)) | vec2<u32>(0u, global1[66406u]))) + (u_input.a.x << ~1u);
    var var_2 = ~(~global2.a);
    var var_3 = var_2.xy;
    var var_4 = any(vec4<bool>(global2.e, true, any(select(!vec3<bool>(false, global2.e, false), select(vec3<bool>(false, true, true), vec3<bool>(global2.e, false, global2.e), vec3<bool>(false, global2.e, global2.e)), vec3<bool>(false, false, global2.e))), any(!select(vec4<bool>(true, global2.e, false, false), vec4<bool>(false, true, global2.e, global2.e), vec4<bool>(global2.e, false, false, global2.e)))));
    var var_5 = select(select(!select(select(vec2<bool>(global2.e, global2.e), vec2<bool>(global2.e, global2.e), vec2<bool>(true, false)), vec2<bool>(false, global2.e), true), vec2<bool>(false && false, (u_input.a.x != 58198u) && all(vec3<bool>(true, global2.e, global2.e))), any(select(!vec4<bool>(global2.e, global2.e, global2.e, true), !vec4<bool>(global2.e, global2.e, true, true), !false))), vec2<bool>(!global2.e, all(select(vec3<bool>(false, true, global2.e), !vec3<bool>(global2.e, global2.e, false), false))), select(vec2<bool>(!(global2.e & false), global2.e), vec2<bool>(global2.e, global2.e), !vec2<bool>(false, global2.e)));
    let var_6 = -(vec2<f32>(trunc(111f) * ceil(2916f), -1000f * (755f + -1383f)) * ((func_1() + vec2<f32>(1000f, 494f)) * vec2<f32>(trunc(1000f), -(-1554f))));
    global3 = array<i32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x);
}

