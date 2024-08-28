// {"0:0":[242,173,147,88,28,193,56,6,28,80,184,133,74,60,40,92]}
// Seed: 14158487407944179998

struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec2<f32>(-121f, -1265f), vec3<bool>(true, true, false), Struct_1(-472f, false, true), Struct_1(1891f, false, false)), Struct_2(vec2<f32>(-1522f, -813f), vec3<bool>(false, false, true), Struct_1(1598f, false, true), Struct_1(-1861f, false, true)), Struct_2(vec2<f32>(-863f, -695f), vec3<bool>(true, false, false), Struct_1(922f, false, false), Struct_1(-2020f, false, false)), Struct_2(vec2<f32>(722f, -114f), vec3<bool>(true, false, true), Struct_1(-513f, false, false), Struct_1(-313f, false, false)), Struct_2(vec2<f32>(-1256f, 785f), vec3<bool>(true, false, true), Struct_1(-840f, false, true), Struct_1(1000f, true, false)), Struct_2(vec2<f32>(-1973f, 480f), vec3<bool>(true, true, true), Struct_1(-548f, true, true), Struct_1(437f, false, false)), Struct_2(vec2<f32>(2017f, 294f), vec3<bool>(false, true, false), Struct_1(532f, true, false), Struct_1(224f, true, false)), Struct_2(vec2<f32>(545f, 755f), vec3<bool>(false, true, true), Struct_1(561f, false, true), Struct_1(1008f, false, true)), Struct_2(vec2<f32>(948f, 303f), vec3<bool>(false, true, false), Struct_1(-1000f, false, true), Struct_1(2116f, true, false)), Struct_2(vec2<f32>(-2621f, 896f), vec3<bool>(true, false, false), Struct_1(-1000f, true, false), Struct_1(1197f, true, true)), Struct_2(vec2<f32>(1259f, -870f), vec3<bool>(true, false, false), Struct_1(869f, false, false), Struct_1(-1106f, false, true)), Struct_2(vec2<f32>(1000f, 510f), vec3<bool>(false, true, false), Struct_1(218f, true, true), Struct_1(1442f, false, false)), Struct_2(vec2<f32>(1784f, -1634f), vec3<bool>(false, false, true), Struct_1(902f, true, true), Struct_1(1480f, true, false)));

var<private> global1: Struct_2;

var<private> global2: array<bool, 31> = array<bool, 31>(true, false, true, true, false, true, false, true, false, false, true, false, true, false, true, false, false, false, true, false, false, true, false, true, false, false, true, true, false, false, true);

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> u32 {
    let var_0 = -vec3<f32>(-322f, exp2(-1000f / 298f) * max(global1.c.a, global1.a.x), round(abs(-(-821f))));
    let var_1 = u_input.a.zzy;
    let var_2 = Struct_2(global1.a, vec3<bool>(global1.b.x, ((var_1.x + 2147483647i) - u_input.a.x) != (dot(vec2<i32>(u_input.a.x, var_1.x), var_1.zx) << (1u * arg_0.x)), all(vec2<bool>(all(vec3<bool>(global1.c.b, global2[1u], false)), global1.c.c && global2[arg_0.x]))), Struct_1(-((var_0.x * 1556f) + global1.a.x), ~1u != 0u, ~45312i == arg_1), Struct_1(round(var_0.x * var_0.x), false, global2[select(~0u | arg_0.x, abs(~arg_0.x), global1.c.a > -135f)]));
    return 0u;
}

fn func_2() -> vec2<f32> {
    global2 = array<bool, 31>();
    let var_0 = Struct_2(global1.a, vec3<bool>(true, global2[~(1u ^ 26795u) & abs(42790u % 0u)], !all(!global1.b)), Struct_1(ceil((global1.c.a - -763f) - round(-242f)), !global2[func_3(vec2<u32>(1u, 76118u) ^ vec2<u32>(1u, 4294967295u), ~29922i)], false), Struct_1(-508f, any(select(vec2<bool>(false, global1.b.x), select(global1.b.yz, vec2<bool>(false, global1.b.x), vec2<bool>(global2[48461u], true)), select(global1.b.yy, vec2<bool>(global1.d.b, false), vec2<bool>(false, global2[9817u])))), ((1u - 4294967295u) % firstTrailingBit(4294967295u)) < dot(vec3<u32>(53848u, 34037u, 4294967295u), vec3<u32>(11729u, 11621u, 1026u))));
    global2 = array<bool, 31>();
    global2 = array<bool, 31>();
    var var_1 = -(-626f);
    return -(-(-round(vec2<f32>(global1.c.a, global1.a.x))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_2 {
    global0 = array<Struct_2, 13>();
    let var_0 = select(select(select(!arg_1.b.zx, global1.b.yx, !vec2<bool>(arg_1.c.c, global2[4294967295u])), vec2<bool>(true, false), !arg_1.b.yy), vec2<bool>(-global1.d.a == -(170f - 431f), any(global1.b.xx)), (select(-500f, -1003f, global2[1u] && global1.b.x) != (arg_1.a.x - min(arg_1.d.a, arg_1.c.a))) || !(!(false && global2[0u])));
    var var_1 = global1.c;
    var var_2 = func_2().x;
    var var_3 = !arg_1.d.c;
    return arg_1;
}

fn func_1(arg_0: Struct_2) -> u32 {
    global0 = array<Struct_2, 13>();
    let var_0 = vec3<i32>(-12449i, ~(-4046i), i32(-2147483648)) * u_input.a.zzx;
    global1 = func_4(var_0, Struct_2(func_2(), !(!(!vec3<bool>(arg_0.c.c, false, arg_0.c.c))), global1.c, Struct_1(-(arg_0.d.a + global1.d.a), !true, select(false || global2[1u], any(global1.b.xy), select(false, true, false)))));
    var var_1 = vec3<i32>(u_input.a.x, var_0.x ^ -firstTrailingBit(var_0.x), -1i % 2147483647i);
    var_1 = u_input.a.wxz;
    return ~(~1u);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = vec4<bool>((arg_2.x < 16572u) & any(global1.b.yz), true, (false && true) && ((arg_0.a != -(-487f)) | any(!vec4<bool>(false, true, arg_1, arg_0.c))), false);
    global0 = array<Struct_2, 13>();
    let var_1 = !(!vec3<bool>(true, global1.b.x, global2[firstLeadingBit(func_1(Struct_2(global1.a, var_0.wzw, Struct_1(global1.a.x, global1.c.b, arg_1), Struct_1(-2466f, global1.b.x, global1.d.c))))]));
    var_0 = vec4<bool>(func_4(-(-vec3<i32>(29528i, i32(-2147483648), -942i)), Struct_2(vec2<f32>(604f, 640f), var_0.zzx, Struct_1(global1.a.x, arg_0.b, global1.c.b), Struct_1(arg_0.a, var_0.x, true))).d.b & !arg_0.c, true, !global2[~arg_2.x], false);
    var var_2 = select(vec4<f32>(-1933f / -1480f, -664f, (func_2().x * 1161f) / -(arg_0.a - arg_0.a), 260f), -vec4<f32>(-232f, global1.a.x / (479f - -932f), global1.d.a, global1.a.x), select(vec4<bool>(!all(vec2<bool>(true, arg_0.c)), 4294967295u > dot(vec3<u32>(arg_2.x, arg_2.x, 4294967295u), vec3<u32>(4294967295u, arg_2.x, arg_2.x)), func_4(vec3<i32>(-5024i, u_input.a.x, u_input.a.x), global0[min(1u, 75303u)]).b.x, !(!arg_1)), !(!vec4<bool>(false, arg_0.b, var_0.x, var_1.x)), (-59480i >= (0i ^ -29869i)) && global1.b.x));
    return func_4(countOneBits(firstTrailingBit(firstLeadingBit(vec3<i32>(0i, -4615i, u_input.a.x)))), Struct_2(min(vec2<f32>(var_2.x, var_2.x), var_2.xy) - -(vec2<f32>(var_2.x, global1.c.a) / var_2.yy), !vec3<bool>(false, global2[abs(28777u)], true), Struct_1(min(-288f, round(-1791f)), func_4(firstLeadingBit(vec3<i32>(-15423i, i32(-2147483648), 27800i)), global0[~arg_2.x]).c.b, arg_1), Struct_1(-298f, var_1.x, !var_0.x))).d;
}

fn func_6(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2) -> f32 {
    var var_0 = func_4(u_input.a.yzz, Struct_2(vec2<f32>(-200f - 733f, trunc(func_4(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), arg_2).a.x)), select(vec3<bool>(53535u > 36587u, arg_1, arg_1), select(!vec3<bool>(true, false, arg_0.x), !global1.b, select(arg_2.b, arg_2.b, false)), select(vec3<bool>(true, arg_1, arg_0.x), !arg_2.b, arg_0.wxz)), func_5(global1.d, !(!arg_1), vec2<u32>(func_3(vec2<u32>(1u, 11020u), -8165i), 14131u)), func_4(vec3<i32>(u_input.a.x >> 26030u, u_input.a.x << 55360u, 1i), Struct_2(sign(vec2<f32>(arg_2.c.a, 819f)), select(arg_0.zzy, arg_0.xzx, false), global1.c, arg_2.c)).d)).d;
    var var_1 = func_4(-(u_input.a.xwz % u_input.a.yxx), arg_2).c;
    global1 = func_4(u_input.a.yyx, func_4(-u_input.a.zwx, Struct_2(arg_2.a, global1.b, func_5(arg_2.c, arg_2.d.b, ~vec2<u32>(8418u, 60004u)), func_5(arg_2.d, any(arg_0), vec2<u32>(4294967295u, 0u) + vec2<u32>(4294967295u, 56433u)))));
    let var_2 = u_input.a.xw;
    var var_3 = ~countOneBits(firstTrailingBit(firstTrailingBit(reverseBits(u_input.a.wz))));
    return -(-1457f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 31>();
    let var_0 = Struct_1(func_6(!(!vec4<bool>(global2[17920u], global1.c.b, true, global1.b.x)), !(~616u == ~18529u), Struct_2(vec2<f32>(926f, max(global1.d.a, 316f)), global1.b, func_5(Struct_1(global1.a.x, global1.b.x, true), global2[func_1(Struct_2(global1.a, vec3<bool>(global2[1u], true, true), Struct_1(-856f, global1.b.x, false), global1.c))], vec2<u32>(4294967295u, 72248u)), global1.d)), false, (true | true) && true);
    let var_1 = !(!any(vec4<bool>(!var_0.b, !true, global2[36036u % 0u], !true)));
    let var_2 = func_5(var_0, var_0.c || !(true | global1.d.c), ~(countOneBits(vec2<u32>(23871u, 1u) / vec2<u32>(37665u, 40239u)) * (select(vec2<u32>(5079u, 33584u), vec2<u32>(61225u, 24881u), vec2<bool>(false, global1.c.b)) << ~vec2<u32>(16251u, 55897u))));
    global0 = array<Struct_2, 13>();
    let var_3 = func_5(func_4(countOneBits(vec3<i32>(5231i, u_input.a.x, 6683i << 50991u)), Struct_2(-(-vec2<f32>(1186f, 2501f)), func_4(-u_input.a.xyz, global0[1u & 44570u]).b, global1.c, Struct_1(1293f, false, func_4(u_input.a.yxz, Struct_2(vec2<f32>(var_2.a, -1003f), vec3<bool>(true, global2[42810u], false), var_2, var_2)).d.b))).d, var_0.c, countOneBits(vec2<u32>(26911u, 38897u) ^ ~(~vec2<u32>(28784u, 0u)))).c;
    var var_4 = Struct_2(exp2(sign(-(-global1.a))), !func_4(vec3<i32>(u_input.a.x, -9931i, reverseBits(-1i)), Struct_2(vec2<f32>(-373f, global1.d.a), global1.b, func_5(Struct_1(887f, true, true), var_3, vec2<u32>(4294967295u, 4294967295u)), Struct_1(var_0.a, var_3, global2[4294967295u]))).b, Struct_1(275f, all(vec2<bool>(false, global2[0u] || false)), !(!true)), func_5(global1.c, !global2[select(4294967295u, ~1u, true)], ~firstLeadingBit(vec2<u32>(1u, 1u) / vec2<u32>(0u, 12989u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(exp2(global1.d.a / -758f), 446f, func_4(vec3<i32>(1i, u_input.a.x, u_input.a.x * i32(-2147483648)), Struct_2(round(vec2<f32>(global1.d.a, 1755f)), !vec3<bool>(true, false, true), func_4(u_input.a.www, Struct_2(vec2<f32>(var_0.a, 1079f), vec3<bool>(true, false, false), var_0, Struct_1(736f, true, false))).d, var_4.c)).d.a, var_0.a), vec4<u32>(func_3(~(~vec2<u32>(4294967295u, 4294967295u)), u_input.a.x), 1u, 0u ^ (91151u | dot(vec4<u32>(72079u, 19077u, 30808u, 4294967295u), vec4<u32>(1u, 1u, 0u, 10692u))), 4294967295u), global1.c.a, 32424i, -(~u_input.a.x));
}

