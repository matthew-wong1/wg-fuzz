// {"0:0":[245,74,4,178,123,120,209,46,128,7,108,54,191,141,27,66,25,188,54,124,18,35,52,230,91,201,184,117,146,168,38,100,46,223,248,119,211,193,24,174,244,75,57,52,236,233,80,220]}
// Seed: 7940319544353233062

struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(0i);

var<private> global1: array<Struct_1, 17>;

fn func_3() -> bool {
    let var_0 = Struct_1(u_input.b.x);
    var var_1 = Struct_3(-(((vec3<f32>(-1240f, -688f, -700f) + vec3<f32>(-209f, -506f, 650f)) + vec3<f32>(673f, -732f, -1375f)) + vec3<f32>(1000f, -1365f, -(-125f))), reverseBits(23806u) <= var_0.a, var_0, var_0);
    var var_2 = -(-var_1.a.zy);
    let var_3 = -(-(var_1.a - -vec3<f32>(var_1.a.x, var_1.a.x, 831f))) + var_1.a;
    global1 = array<Struct_1, 17>();
    return exp2(floor(-491f) / var_2.x) <= var_2.x;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    global1 = array<Struct_1, 17>();
    var var_0 = vec2<bool>(arg_2.b, arg_2.b);
    let var_1 = (max(57073u, 1u) << (74060u * select(clamp(arg_2.d.a, u_input.b.x, 0u), reverseBits(915u), var_0.x))) < arg_2.c.a;
    var var_2 = reverseBits(-1i);
    let var_3 = Struct_2(arg_2.c.a < ~(~arg_2.d.a % 66893u), global1[~34163u]);
    return trunc(min(select(arg_2.a.x, arg_2.a.x, false) / (994f - 961f), -437f / -470f)) >= exp2(max(-(-arg_2.a.x), 378f));
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_2(func_4(func_3(), global1[~u_input.c], Struct_3(exp2(sign(vec3<f32>(-884f, 1308f, -1000f))), select(false, !true, 1499f == 1184f), global1[~(~u_input.c)], Struct_1(~0u))), Struct_1(~(0u + ~4294967295u)));
    let var_1 = global1[u_input.c];
    let var_2 = max(-(vec3<f32>(exp2(1000f), 445f - -1347f, -1681f) / round(vec3<f32>(-1230f, 1492f, 1000f))), vec3<f32>(trunc(-(-621f)) / -floor(-1059f), min(min(abs(857f), step(1337f, 181f)), (-1810f * -850f) * -770f), -(-2313f)));
    return var_2 * -(-var_2);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = vec3<i32>(~abs(dot(select(vec4<i32>(global0[1u], u_input.e, 22552i, u_input.d.x), vec4<i32>(2147483647i, i32(-2147483648), -72864i, u_input.a.x), vec4<bool>(false, true, false, true)), vec4<i32>(-29751i, -1i, 0i, u_input.e) - vec4<i32>(global0[45201u], 36842i, -1i, u_input.e))), dot(vec3<i32>(3722i | (u_input.a.x | global0[arg_0.x]), dot(vec3<i32>(u_input.d.x, 2147483647i, global0[0u]), vec3<i32>(445i, 1i, global0[arg_3.a]) - vec3<i32>(u_input.d.x, 36719i, u_input.d.x)), select(u_input.a.x % -17096i, ~(-4996i), any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))), ~vec3<i32>(-16216i, global0[arg_3.a], global0[5134u]) & (clamp(vec3<i32>(-1i, global0[14980u], global0[arg_3.a]), vec3<i32>(global0[arg_0.x], u_input.a.x, 53829i), vec3<i32>(u_input.a.x, -7895i, -1i)) | (vec3<i32>(global0[arg_0.x], 17223i, u_input.d.x) >> vec3<u32>(96867u, 17365u, arg_3.a)))), -clamp(2147483647i, u_input.e >> arg_3.a, -1534i) ^ reverseBits(global0[arg_3.a]));
    var var_1 = Struct_3(round(trunc(func_2() - -vec3<f32>(-1908f, arg_2.x, -479f))), !arg_1.x | true, global1[~abs((0u * arg_0.x) << 30369u)], Struct_1(~11310u));
    global1 = array<Struct_1, 17>();
    var var_2 = Struct_3(step(exp2(vec3<f32>(floor(938f), 1667f, func_2().x)), min(select(-var_1.a, vec3<f32>(var_1.a.x, 2687f, var_1.a.x), any(arg_1)), -vec3<f32>(-593f, 1149f, arg_2.x) / round(vec3<f32>(arg_2.x, var_1.a.x, var_1.a.x)))), !arg_1.x, Struct_1(arg_0.x), global1[~(~(~0u ^ (53938u - arg_0.x)))]);
    var_1 = Struct_3(var_2.a, func_4(!any(vec2<bool>(true, false)), arg_3, Struct_3(select(vec3<f32>(373f, -2148f, -1000f), vec3<f32>(arg_2.x, var_1.a.x, var_1.a.x), !vec3<bool>(true, true, true)), var_1.b, arg_3, var_1.c)), var_2.c, Struct_1(arg_0.x ^ arg_3.a));
    return Struct_3(-(vec3<f32>(-var_1.a.x, -514f, arg_2.x) / -(var_1.a - var_2.a)), arg_1.x, Struct_1(16057u), Struct_1(((arg_0.x * 74163u) ^ dot(vec4<u32>(arg_0.x, 1u, var_2.c.a, 0u), vec4<u32>(u_input.c, 13415u, 1u, 1u))) << ~(~154u)));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: Struct_3) -> Struct_3 {
    global1 = array<Struct_1, 17>();
    var var_0 = arg_0.c;
    var var_1 = u_input.c;
    let var_2 = select(vec4<bool>(arg_3.b, true, func_1(~u_input.b.yz, !select(vec2<bool>(true, arg_3.b), vec2<bool>(true, arg_0.b), vec2<bool>(true, arg_0.b)), arg_0.a.xy, global1[min(39125u, 1273u) / 0u]).b, any(vec2<bool>(any(vec3<bool>(arg_0.b, arg_3.b, arg_0.b)), all(vec3<bool>(arg_3.b, true, false))))), vec4<bool>(true | (1i == (global0[arg_1] << 6766u)), arg_3.b, any(!select(vec4<bool>(true, arg_3.b, false, arg_3.b), vec4<bool>(arg_3.b, arg_3.b, arg_3.b, true), arg_0.b)), ~func_1(vec2<u32>(21876u, arg_1), vec2<bool>(arg_0.b, false), vec2<f32>(arg_2, -1551f), global1[7909u]).d.a != (u_input.c + clamp(u_input.b.x, arg_1, 46267u))), select(vec4<bool>(false, false, func_4(false, arg_3.c, Struct_3(vec3<f32>(-287f, arg_3.a.x, arg_3.a.x), arg_0.b, arg_3.d, arg_0.d)), !(2147483647i >= u_input.d.x)), select(!vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, arg_0.b), arg_0.b), any(!vec2<bool>(false, false))), vec4<bool>(false, !(!arg_3.b), arg_3.b, exp2(-1399f) > round(-1335f))));
    var var_3 = Struct_1(71029u);
    return arg_3;
}

fn func_6(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    var var_0 = select(!select(!(!vec4<bool>(arg_1, arg_1, false, arg_0.b)), select(vec4<bool>(arg_0.b, true, arg_1, arg_1), select(vec4<bool>(arg_1, true, false, true), vec4<bool>(true, arg_1, true, arg_0.b), arg_1), false), func_5(arg_0, arg_0.d.a, 766f / arg_0.a.x, func_1(u_input.b.yx, vec2<bool>(arg_1, false), arg_0.a.yy, Struct_1(84584u))).b), vec4<bool>(!all(vec3<bool>(arg_1, arg_0.b, true)), arg_1, false, !(!(!arg_0.b))), false);
    var var_1 = func_5(arg_0, func_1(abs(vec2<u32>(reverseBits(0u), ~arg_0.c.a)), var_0.zx, func_1(vec2<u32>(0u, ~4294967295u), select(vec2<bool>(arg_1, arg_0.b), !var_0.ww, any(var_0.zx)), -(-arg_0.a.zz), func_5(arg_0, arg_0.d.a, -arg_0.a.x, func_1(u_input.b.xy, var_0.zz, vec2<f32>(870f, 1532f), Struct_1(1588u))).c).a.zz, global1[28264u]).d.a, -arg_0.a.x, func_1(~u_input.b.zx, select(var_0.xx, select(!vec2<bool>(var_0.x, arg_0.b), var_0.xz, vec2<bool>(true, var_0.x)), vec2<bool>(global0[4294967295u] > global0[86659u], func_4(arg_1, arg_0.d, Struct_3(vec3<f32>(-841f, 121f, 342f), var_0.x, Struct_1(arg_0.c.a), Struct_1(24857u))))), vec2<f32>(arg_0.a.x, -sign(arg_0.a.x)), Struct_1(u_input.c))).d;
    global0 = array<i32, 1>();
    let var_2 = arg_0;
    var var_3 = select(vec4<bool>(var_0.x, false, !true, !false), vec4<bool>(arg_0.b, !true, !(any(vec2<bool>(true, true)) | !true), func_4((var_2.a.x + var_2.a.x) > arg_0.a.x, arg_0.c, func_5(Struct_3(arg_0.a, arg_0.b, arg_0.c, Struct_1(var_2.d.a)), 0u, trunc(arg_0.a.x), func_5(Struct_3(var_2.a, var_0.x, var_2.d, Struct_1(u_input.b.x)), 18399u, var_2.a.x, arg_0)))), select(vec4<bool>(!(arg_1 && false), true, true, all(vec2<bool>(var_2.b, arg_1))), vec4<bool>(arg_0.b, arg_0.b, -arg_0.a.x == -716f, false & var_2.b), select(!(!vec4<bool>(true, true, true, false)), !select(vec4<bool>(arg_0.b, arg_0.b, arg_1, arg_1), vec4<bool>(var_0.x, var_2.b, true, true), vec4<bool>(arg_1, true, var_2.b, true)), !select(vec4<bool>(arg_0.b, false, true, true), vec4<bool>(arg_1, arg_0.b, arg_1, var_0.x), vec4<bool>(arg_1, var_2.b, true, var_0.x)))));
    return Struct_2(select(!arg_0.b | !var_2.b, !arg_1 && any(vec3<bool>(var_3.x, var_2.b, false)), select(func_5(var_2, 1u, -1266f, Struct_3(vec3<f32>(arg_0.a.x, var_2.a.x, arg_0.a.x), arg_1, var_2.c, global1[53299u])).b, false, func_4(var_0.x, Struct_1(arg_0.c.a), var_2))) | (0i != (clamp(global0[arg_0.d.a], 24798i, 0i) >> 1u)), arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_1(~firstLeadingBit(vec2<u32>(u_input.b.x, u_input.c)), !(!vec2<bool>(true, true)), select(vec2<f32>(-564f, 723f), vec2<f32>(177f, 172f), !false), Struct_1(4294967295u)), 1u, step(135f / 328f, 388f / -844f) * ((-1752f / 1244f) / (748f + -307f)), func_1(vec2<u32>(u_input.b.x & 4294967295u, u_input.b.x ^ u_input.c), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), (vec2<f32>(1844f, -315f) - vec2<f32>(941f, 1111f)) * (vec2<f32>(-648f, 1000f) + vec2<f32>(208f, -188f)), global1[u_input.c])), all(!vec3<bool>(!false, all(vec2<bool>(false, true)), func_3())));
    let var_1 = 1u;
    global0 = array<i32, 1>();
    var var_2 = select(vec4<bool>(!(-400f < (1148f - 1680f)), true, var_0.a, any(!vec4<bool>(true, false, var_0.a, false))), !(!select(!vec4<bool>(true, var_0.a, var_0.a, true), vec4<bool>(true, true, false, true), 933f > -367f)), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b));
}

