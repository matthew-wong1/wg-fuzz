// {"0:0":[18,129,228,111,113,127,224,216,131,202,29,80,87,43,178,125]}
// Seed: 13611930222894387369

struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

var<private> global0: array<bool, 31>;

var<private> global1: array<Struct_2, 21>;

var<private> global2: array<vec3<f32>, 6>;

var<private> global3: i32;

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<bool> {
    global1 = array<Struct_2, 21>();
    global3 = -9571i;
    global2 = array<vec3<f32>, 6>();
    var var_0 = 48813u;
    let var_1 = Struct_1(vec3<bool>(false, ~(-u_input.b.x) == max(-10355i, -5577i), any(!arg_2.b.yz)), select(select(arg_2.e.yzz, select(!vec3<bool>(false, false, false), select(arg_2.e.xwx, arg_2.b, arg_2.e.xxy), select(arg_2.e.wxz, vec3<bool>(true, arg_2.a.x, global0[arg_2.c.x]), arg_2.e.wwy)), vec3<bool>(!global0[arg_2.c.x], true, true || global0[7552u])), arg_2.a, !all(!vec4<bool>(arg_2.e.x, false, false, false))), vec2<u32>(124985u, arg_2.c.x) / arg_2.c, arg_2.d, vec4<bool>(false, false, !false, !global0[~(~55156u)]));
    return !vec3<bool>(arg_2.b.x, !all(vec3<bool>(var_1.b.x, true, false)), 4294967295u != ~var_1.c.x);
}

fn func_2(arg_0: f32, arg_1: i32) -> vec3<bool> {
    var var_0 = Struct_1(select(!(!select(vec3<bool>(true, true, false), vec3<bool>(global0[33531u], global0[18769u], true), vec3<bool>(global0[41358u], global0[48152u], global0[0u]))), select(vec3<bool>(!false, global0[58668u], !true), !(!vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, global0[1u], true), vec3<bool>(true, false, global0[4294967295u]), vec3<bool>(global0[4294967295u], global0[115620u], true)), !global0[33016u])), select(select(!vec3<bool>(global0[4294967295u], global0[90193u], global0[0u]), !vec3<bool>(true, false, true), !vec3<bool>(false, true, true)), !func_3(vec3<f32>(1179f, arg_0, 827f), vec4<i32>(arg_1, arg_1, 2147483647i, u_input.a), Struct_1(vec3<bool>(false, global0[0u], global0[0u]), vec3<bool>(true, global0[3169u], false), vec2<u32>(0u, 35950u), 344f, vec4<bool>(true, global0[4294967295u], true, false))), true & !global0[1u])), func_3(vec3<f32>(-1221f, abs(-arg_0), max(-arg_0, round(-1000f))), min(select(vec4<i32>(arg_1, -52763i, -1999i, arg_1), vec4<i32>(arg_1, u_input.b.x, u_input.a, 2147483647i), true), ~vec4<i32>(u_input.b.x, u_input.b.x, -30840i, arg_1)) << countOneBits(vec4<u32>(27420u, 4294967295u, 44519u, 14005u)), Struct_1(vec3<bool>(!global0[1745u], global0[10896u ^ 0u], global0[reverseBits(0u)]), vec3<bool>(false, false, 23766u > 71833u), min(abs(vec2<u32>(58198u, 4294967295u)), vec2<u32>(13544u, 1u)), floor(select(-299f, 1709f, false)), vec4<bool>(global0[clamp(54917u, 32066u, 1u)], false, true | true, !true))), ~(vec2<u32>(~0u, ~0u) & (~vec2<u32>(1u, 1u) * (vec2<u32>(0u, 4294967295u) ^ vec2<u32>(1u, 4294967295u)))), -arg_0, select(select(vec4<bool>(global0[clamp(4294967295u, 4294967295u, 0u)], false, false && true, any(vec2<bool>(global0[43117u], global0[1u]))), vec4<bool>(any(vec4<bool>(global0[31757u], global0[79949u], false, true)), all(vec4<bool>(global0[5743u], global0[0u], false, global0[57375u])), !false, 18783i <= 0i), any(select(vec3<bool>(global0[72648u], global0[1u], global0[1354u]), vec3<bool>(global0[68717u], false, true), global0[10511u]))), !(!select(vec4<bool>(global0[51836u], global0[47216u], global0[1u], true), vec4<bool>(global0[44517u], global0[17306u], global0[0u], global0[17367u]), true)), vec4<bool>(select(true | global0[0u], false, global0[~0u]), any(vec2<bool>(true, true)), true, all(vec4<bool>(global0[4294967295u], true, global0[1u], false)))));
    global2 = array<vec3<f32>, 6>();
    return !var_0.b;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = vec3<bool>(true, !false, func_2(min(-442f, arg_1.d - arg_0), -1i & (2147483647i ^ 31364i)).x || !global0[1u]);
    global2 = array<vec3<f32>, 6>();
    global3 = u_input.b.x;
    return vec3<bool>(any(vec3<bool>(4294967295u < ~arg_1.c.x, !false, any(var_0.zy))), !(arg_1.c.x >= (46667u / arg_1.c.x)), !false);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    global0 = array<bool, 31>();
    let var_0 = Struct_1(!func_4(select(-1777f, arg_2.d, arg_0.x == u_input.a), Struct_1(func_2(arg_2.d, i32(-2147483648)), vec3<bool>(global0[4294967295u], true, false), vec2<u32>(19563u, arg_3.x), -593f, select(arg_2.e, arg_2.e, vec4<bool>(false, true, arg_2.b.x, false)))), arg_2.b, arg_2.c, -exp2(-150f), vec4<bool>(all(!arg_2.a.yy) || false, any(vec3<bool>(arg_0.x < -9911i, arg_2.e.x, !true)), false, arg_2.b.x));
    global0 = array<bool, 31>();
    let var_1 = !false;
    var var_2 = vec2<f32>(-(-1099f * -var_0.d), arg_2.d);
    return Struct_1(var_0.e.wzz, !(!var_0.b), firstLeadingBit(abs(abs(vec2<u32>(arg_3.x, 0u)))) ^ arg_3.xy, -arg_2.d, vec4<bool>(false, !global0[arg_3.x | ~0u], true, !var_1));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_2(arg_3.d, firstLeadingBit(vec3<i32>(arg_2.b.x * dot(arg_2.b.xz, arg_2.b.zz), dot(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.a, 1i, u_input.b.x)), ~vec4<i32>(u_input.a, 53654i, -7776i, 22032i)), (arg_2.b.x - arg_2.b.x) + u_input.b.x)), func_1(vec4<i32>(~u_input.a, 10767i, max(-5287i, 1i), u_input.b.x), vec4<u32>(firstTrailingBit(arg_2.d.c.x) & arg_2.d.c.x, 1u, ~(9803u << arg_3.c.x), dot(vec4<u32>(arg_1.x, arg_0.c.x, arg_3.c.x, 3225u), ~arg_1)), Struct_1(arg_0.e.wzx, vec3<bool>(all(arg_3.b), 64353u <= arg_0.c.x, false), select(max(vec2<u32>(arg_3.c.x, arg_2.d.c.x), vec2<u32>(4294967295u, 0u)), vec2<u32>(1u, arg_3.c.x), !arg_0.b.x), floor(select(arg_2.a, arg_2.d.d, arg_2.c.a.x)), func_1(vec4<i32>(2147483647i, 1i, arg_2.b.x, u_input.a) ^ vec4<i32>(u_input.a, -32579i, 1i, 1i), vec4<u32>(arg_2.d.c.x, 0u, arg_3.c.x, arg_0.c.x), Struct_1(arg_0.b, vec3<bool>(true, arg_3.b.x, false), arg_1.wx, arg_3.d, arg_0.e), min(vec3<u32>(arg_2.d.c.x, 25535u, arg_3.c.x), arg_1.wyz)).e), vec3<u32>(max(arg_2.c.c.x ^ arg_0.c.x, ~0u), arg_1.x, 91466u)), arg_0);
    global0 = array<bool, 31>();
    global3 = var_0.b.x;
    var_0 = global1[countOneBits(87867u + ~func_1(-vec4<i32>(4644i, arg_2.b.x, 11205i, 1i), arg_1, var_0.d, clamp(vec3<u32>(arg_3.c.x, 1u, arg_2.d.c.x), arg_1.xww, arg_1.xyy)).c.x)];
    var var_1 = Struct_1(!arg_2.c.a, vec3<bool>(!func_2(137f, 0i).x, var_0.d.a.x, arg_1.x > dot(vec4<u32>(4294967295u, 15673u, arg_1.x, arg_2.c.c.x) - arg_1, abs(arg_1))), vec2<u32>(~(~(~28221u)), countOneBits(arg_0.c.x)), -arg_0.d, var_0.c.e);
    return min(-2147483647i, select(max(-1057i, var_0.b.x + 55328i), abs(arg_2.b.x), func_3(floor(vec3<f32>(arg_3.d, var_0.a, arg_2.a) / vec3<f32>(424f, var_1.d, 1052f)), firstLeadingBit(max(vec4<i32>(13165i, -1i, -74736i, u_input.b.x), vec4<i32>(arg_2.b.x, -3700i, 37024i, var_0.b.x))), Struct_1(var_1.a, arg_2.d.e.zxz, arg_2.d.c % vec2<u32>(arg_2.c.c.x, arg_3.c.x), -(-212f), !vec4<bool>(arg_2.c.e.x, false, var_1.b.x, false))).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (-1000f / (((-1237f + -1468f) / (-1000f + -1000f)) - -min(1446f, 1410f))) / -2906f;
    let var_1 = 56978u;
    var var_2 = ~vec3<i32>(-(-(~u_input.a)), -func_5(func_1(vec4<i32>(14139i, u_input.a, -1i, 37081i), vec4<u32>(4294967295u, 4294967295u, var_1, var_1), Struct_1(vec3<bool>(false, global0[var_1], false), vec3<bool>(global0[var_1], global0[var_1], true), vec2<u32>(var_1, var_1), 178f, vec4<bool>(global0[71883u], global0[var_1], false, false)), vec3<u32>(46909u, 0u, var_1)), reverseBits(vec4<u32>(var_1, var_1, 2777u, var_1)), global1[76607u * 5186u], Struct_1(vec3<bool>(global0[18064u], global0[59529u], false), vec3<bool>(global0[var_1], global0[var_1], false), vec2<u32>(1u, var_1), 1516f, vec4<bool>(true, global0[var_1], global0[22976u], global0[var_1]))), (max(25655i, 60217i) + select(u_input.a, u_input.a, false)) - clamp(~u_input.b.x, countOneBits(-1i), -71399i));
    let var_3 = clamp(4294967295u, var_1 >> ~14727u, 9414u);
    let var_4 = trunc(vec4<f32>(select(step(-828f, 1077f), 739f / -757f, false) / round(495f * 1913f), (-1598f / 1765f) - (-(-1424f) / -1482f), 691f / 475f, -(-trunc(348f))));
    global0 = array<bool, 31>();
    let var_5 = global1[clamp(77931u, ~(19811u + var_1), select(func_1(vec4<i32>(u_input.b.x, var_2.x, u_input.b.x, var_2.x), vec4<u32>(var_3, 25265u, var_3, 0u), Struct_1(vec3<bool>(true, true, false), vec3<bool>(global0[35824u], global0[1u], global0[var_1]), vec2<u32>(var_1, var_1), var_4.x, vec4<bool>(false, false, global0[var_3], global0[48714u])), vec3<u32>(var_1, 1u, var_1)).c.x | ~61556u, 0u, !global0[~97083u]) >> 0u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

