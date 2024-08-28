// {"0:0":[240,138,178,75,232,88,146,231,168,45,167,162,32,143,143,2,27,161,134,135,136,197,136,150,101,67,151,246,251,135,184,44,238,166,206,51,26,139,215,58,255,238,34,25,250,66,144,14]}
// Seed: 15617991927928165274

struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, false), 1i), Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, false), 23143i), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, true), 11925i), Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, false), 2147483647i), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, true), 0i), Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, true), -38876i), Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, true), -29343i), Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, false), -1i), Struct_1(vec2<bool>(false, true), vec3<bool>(false, false, true), 14717i), Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, true), -35418i), Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, false), 2147483647i), Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, false), 5368i), Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, false), 69608i));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, true), 52198i);

var<private> global2: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(37280u, 1u, 63858u), vec3<u32>(1u, 90248u, 96658u), vec3<u32>(8045u, 33161u, 4294967295u), vec3<u32>(0u, 5406u, 10822u), vec3<u32>(39794u, 39395u, 0u), vec3<u32>(63656u, 43960u, 1u), vec3<u32>(42253u, 31579u, 70654u), vec3<u32>(3095u, 1u, 58467u), vec3<u32>(33445u, 4294967295u, 0u), vec3<u32>(0u, 0u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 16579u, 1u), vec3<u32>(24289u, 7806u, 116900u), vec3<u32>(46348u, 9446u, 4294967295u), vec3<u32>(4578u, 2498u, 17248u), vec3<u32>(0u, 58964u, 48329u), vec3<u32>(33598u, 4294967295u, 8347u), vec3<u32>(9790u, 1u, 0u), vec3<u32>(4294967295u, 1u, 49675u), vec3<u32>(121994u, 4294967295u, 28722u), vec3<u32>(7679u, 85168u, 124959u), vec3<u32>(45063u, 12819u, 73828u), vec3<u32>(68166u, 15154u, 0u), vec3<u32>(56835u, 0u, 9216u), vec3<u32>(20408u, 0u, 67263u), vec3<u32>(4294967295u, 15062u, 0u), vec3<u32>(6537u, 4294967295u, 0u), vec3<u32>(1u, 0u, 0u), vec3<u32>(4294967295u, 21075u, 1u));

var<private> global3: array<Struct_1, 20>;

var<private> global4: Struct_1 = Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, false), -3354i);

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(global4.a, vec3<bool>(global1.a.x, select(global1.a.x, true, true), false), u_input.a * arg_0.c), Struct_1(arg_0.a, !vec3<bool>(all(vec3<bool>(global1.b.x, global4.b.x, false)), true, all(vec2<bool>(global1.a.x, false))), clamp(global1.c, firstLeadingBit(0i) << arg_1.x, global4.c)));
    global0 = array<Struct_1, 13>();
    return floor(-(-select(exp2(vec2<f32>(689f, -842f)), -vec2<f32>(-2250f, 421f), global1.b.x)));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = func_3(global3[(dot(vec2<u32>(u_input.e.x, 33766u), vec2<u32>(u_input.e.x, u_input.e.x)) ^ 49320u) - (~(u_input.e.x ^ 92741u) | u_input.e.x)], ~u_input.e.xy);
    return 330f;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: f32) -> u32 {
    global1 = global0[u_input.e.x];
    global4 = global3[0u];
    let var_0 = Struct_2(global3[26198u], global0[~(~1u % u_input.e.x) + countOneBits(clamp(~u_input.e.x, 82644u, u_input.e.x | 0u))]);
    var var_1 = var_0;
    global4 = Struct_1(global1.b.xz, var_0.b.b, 2182i);
    return abs(u_input.e.x);
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    var var_0 = 1000f;
    let var_1 = u_input.d;
    global2 = array<vec3<u32>, 30>();
    return Struct_1(select(global4.b.xz, vec2<bool>(select(false && true, all(vec3<bool>(arg_0, global1.b.x, true)), 1325f <= -100f), (0i > var_1.x) && global1.b.x), any(!global1.b)), select(vec3<bool>(true, (-672f > -893f) != (global1.b.x & true), ~u_input.a < (0i ^ 62307i)), arg_1.b.b, vec3<bool>(false, !select(arg_1.b.b.x, false, false), global4.b.x)), abs(-1i) | countOneBits(-(u_input.a - 2147483647i)));
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<bool>(false, !false);
    global1 = func_5(!true, Struct_2(global0[abs(func_4(func_2(u_input.b), !global1.b, vec2<bool>(true, false), -355f))], global0[~4294967295u >> (~u_input.e.x - ~u_input.e.x)]));
    let var_1 = 1252f;
    global3 = array<Struct_1, 20>();
    global0 = array<Struct_1, 13>();
    return Struct_1(func_5(var_0.x, Struct_2(global0[u_input.e.x], Struct_1(vec2<bool>(global4.a.x, false), select(global1.b, vec3<bool>(false, true, var_0.x), false), func_5(var_0.x, Struct_2(Struct_1(vec2<bool>(global1.a.x, true), global4.b, global4.c), global3[19626u])).c))).a, select(!(!global4.b), vec3<bool>(var_0.x, false, func_5(var_0.x, Struct_2(global3[u_input.e.x], global0[u_input.e.x])).b.x || true), !(!(!var_0.x))), global1.c);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(select(!select(select(vec2<bool>(false, global4.b.x), global4.b.xy, vec2<bool>(false, true)), vec2<bool>(false, global1.a.x), global1.a), vec2<bool>(global4.b.x, false), all(!vec2<bool>(false, arg_1.a.x))), vec3<bool>(false, select(func_1().b.x, select(arg_1.a.x, false, false), all(global1.b)) || (u_input.e.x >= abs(1u)), global1.b.x), firstTrailingBit(-max(i32(-2147483648) - 1i, dot(vec3<i32>(global4.c, -35451i, 2147483647i), u_input.d.wzz))));
    var var_1 = Struct_1(var_0.a, !vec3<bool>(global4.b.x, all(vec4<bool>(true, false, arg_1.b.x, true)) | (2147483647i < global4.c), (1332f / 211f) > 1095f), 14699i / func_5(false, Struct_2(var_0, global3[56498u])).c);
    var var_2 = vec4<u32>(dot(~(u_input.e.yz & u_input.e.yy) | u_input.e.yz, ~u_input.e.xy), 4294967295u, (max(62746u, firstTrailingBit(u_input.e.x)) ^ (1u / (4294967295u % u_input.e.x))) * 4294967295u, u_input.e.x);
    let var_3 = -(-992f) + -(-311f);
    let var_4 = var_0;
    return Struct_1(vec2<bool>(!((-30916i * 3249i) == ~u_input.c), global1.b.x), select(!func_5(!false, Struct_2(Struct_1(arg_1.a, arg_1.b, u_input.c), Struct_1(vec2<bool>(true, global4.b.x), vec3<bool>(true, false, arg_0.a.x), global1.c))).b, select(select(vec3<bool>(var_0.a.x, var_1.b.x, false), !vec3<bool>(false, global4.a.x, arg_0.a.x), var_0.b), !vec3<bool>(var_0.a.x, arg_0.b.x, false), func_5(2165f == var_3, Struct_2(global3[15672u], Struct_1(vec2<bool>(false, false), vec3<bool>(global1.b.x, false, true), global1.c))).b), (select(18450u, var_2.x, global4.a.x) % (1u >> var_2.x)) < var_2.x), -(firstTrailingBit(u_input.a) % abs(var_0.c)) & ~(23333i * clamp(2147483647i, global1.c, u_input.b)));
}

fn func_7(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 13>();
    var var_0 = Struct_2(Struct_1(arg_0.a, vec3<bool>(!arg_0.a.x, true, arg_0.a.x), -20422i), arg_0);
    global1 = var_0.b;
    let var_1 = !(1000f < -(-909f - arg_1));
    var_0 = Struct_2(func_6(func_6(func_6(Struct_1(arg_0.b.yy, var_0.b.b, -32835i), Struct_1(global1.b.zz, vec3<bool>(false, global4.a.x, arg_0.b.x), 24216i)), func_1()), func_6(Struct_1(global1.a, !arg_3.b, -arg_0.c), Struct_1(select(global1.b.xz, vec2<bool>(global4.a.x, var_1), global4.b.x), vec3<bool>(false, arg_0.b.x, arg_3.b.x), global4.c))), Struct_1(vec2<bool>((10483i < 0i) == var_0.a.b.x, true), vec3<bool>(!arg_3.a.x, !arg_0.a.x, global4.a.x), ~0i));
    return func_5(all(func_1().b.xy) || ((!false && false) & func_6(arg_3, func_6(global3[u_input.e.x], Struct_1(vec2<bool>(false, true), global4.b, i32(-2147483648)))).b.x), Struct_2(arg_0, Struct_1(vec2<bool>(func_6(Struct_1(global4.b.xy, arg_0.b, 10964i), Struct_1(arg_3.a, arg_0.b, global1.c)).a.x, -16972i > 23518i), func_6(global3[u_input.e.x], global0[~2625u]).b, -(2147483647i | u_input.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 30>();
    let var_0 = func_7(func_6(func_1(), func_1()), -sign(exp2(-1310f) * -992f), vec4<u32>(0u, firstLeadingBit(~func_4(256f, global4.b, global1.b.yx, -125f)), u_input.e.x, func_4(-468f, vec3<bool>(true, false, true), !vec2<bool>(global1.b.x, global4.b.x), 541f + 1575f) * ~(~1u)), Struct_1(func_5(all(!global1.b.yy), Struct_2(Struct_1(global1.a, vec3<bool>(false, global1.a.x, global1.b.x), global4.c), Struct_1(global4.a, vec3<bool>(false, true, true), 1i))).b.zx, !(!func_5(global1.b.x, Struct_2(global3[0u], global3[u_input.e.x])).b), -((2147483647i >> 1u) - dot(vec3<i32>(41521i, -12652i, 17262i), u_input.d.zww))));
    global4 = Struct_1(func_1().b.xy, global4.b, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(((-13533i % (u_input.a ^ i32(-2147483648))) | firstTrailingBit(global1.c)) / -3915i, abs(u_input.e.x) * u_input.e.x);
}

