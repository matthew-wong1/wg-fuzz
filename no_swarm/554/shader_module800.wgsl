// {"0:0":[181,155,191,194,44,189,52,139,40,44,73,148,245,39,52,162,98,188,217,43,200,16,42,18,87,74,67,174,255,97,122,28]}
// Seed: 4296318843572845653

struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25>;

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    global0 = array<vec3<f32>, 25>();
    var var_0 = 31265u;
    var_0 = ~1u;
    var var_1 = arg_1;
    var var_2 = max(-min(-vec4<f32>(-751f, -1795f, -503f, -1567f) * vec4<f32>(-1440f, 812f, -938f, -1092f), vec4<f32>(408f, -447f, 1405f * -489f, -2146f)), vec4<f32>(-1865f, 406f, abs(-(-1392f)), (exp2(2405f) - (-1906f - -554f)) + select(108f, -269f, false)));
    return vec2<f32>(-1447f, exp2(-var_2.x + abs(-(-352f))));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> Struct_1 {
    global0 = array<vec3<f32>, 25>();
    let var_0 = select(vec4<bool>(all(vec4<bool>(true, false, true, !false)), 53605u > 0u, any(!vec2<bool>(arg_1.x, arg_1.x)) && false, false), arg_1, arg_1);
    let var_1 = -((-func_3(var_0.yzw, Struct_1(vec4<bool>(true, true, var_0.x, true), 2147483647i, vec2<bool>(false, false)), Struct_1(arg_1, arg_0, var_0.zy)) * -(-vec2<f32>(567f, 1539f))) * vec2<f32>(-1166f / 100f, -713f * 1522f));
    let var_2 = Struct_1(select(select(select(var_0, select(arg_1, var_0, var_0.x), !vec4<bool>(arg_1.x, true, var_0.x, var_0.x)), !select(vec4<bool>(true, true, arg_1.x, arg_1.x), var_0, vec4<bool>(false, var_0.x, true, false)), !select(vec4<bool>(true, false, arg_1.x, true), var_0, arg_1)), vec4<bool>(true, any(!var_0), false, any(!var_0.xxz)), !((true & false) || var_0.x)), reverseBits(-40987i | -1i), select(arg_1.wx, vec2<bool>(!arg_1.x, all(!var_0)), arg_1.zw));
    let var_3 = (var_1 / var_1) / -(-(-var_1) - (-vec2<f32>(var_1.x, 1797f) / -var_1));
    return Struct_1(arg_1, -(-var_2.b), vec2<bool>(!(true || (1u > 0u)), false));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(vec4<bool>(true, any(vec4<bool>(arg_1.a.x, arg_3.c.x, true, false)) & false, func_3(vec3<bool>(arg_2, false, false), arg_1, func_2(54452i, vec4<bool>(arg_3.c.x, arg_1.c.x, true, arg_1.a.x))).x > 739f, !all(arg_3.a) & select(false, !false, false)), (~1i - dot(vec4<i32>(-29754i, 16016i, 1i, u_input.b) / vec4<i32>(arg_3.b, -28216i, -1i, u_input.a.x), vec4<i32>(-74i, arg_3.b, 2147483647i, 0i) & u_input.a)) & (arg_3.b << ~5567u), select(arg_1.a.wy, func_2(-13746i, !select(arg_1.a, vec4<bool>(true, true, arg_3.c.x, false), vec4<bool>(false, true, arg_1.a.x, false))).a.xz, true));
    var var_1 = !func_2(var_0.b, arg_1.a).a.zzx;
    return 20467u;
}

fn func_1() -> vec4<u32> {
    global0 = array<vec3<f32>, 25>();
    return vec4<u32>(countOneBits(firstTrailingBit(~4294967295u ^ ~35871u)), 0u | 53217u, 0u, dot(~(~(vec4<u32>(0u, 4294967295u, 19769u, 15185u) | vec4<u32>(26220u, 1u, 1u, 1u))), vec4<u32>(firstTrailingBit(1u + 0u), func_4(vec3<i32>(u_input.a.x, u_input.c, i32(-2147483648)) ^ u_input.a.yyx, func_2(u_input.b, vec4<bool>(true, false, true, true)), true && true, func_2(u_input.c, vec4<bool>(false, false, false, false))), max(clamp(44688u, 4294967295u, 49345u), func_4(u_input.a.wxx, Struct_1(vec4<bool>(true, false, false, false), 0i, vec2<bool>(true, false)), true, Struct_1(vec4<bool>(true, false, false, false), u_input.a.x, vec2<bool>(true, true)))), ~(~4294967295u))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec3<f32>(-func_3(select(!vec3<bool>(false, arg_2.a.x, arg_1.c.x), select(arg_2.a.wyy, vec3<bool>(arg_1.a.x, arg_1.a.x, false), arg_1.a.ywx), arg_2.a.x), func_2(func_2(2147483647i, arg_2.a).b, !vec4<bool>(false, true, arg_2.a.x, true)), Struct_1(select(arg_2.a, vec4<bool>(arg_2.a.x, arg_2.c.x, arg_2.a.x, arg_1.a.x), arg_1.c.x), 2147483647i, !vec2<bool>(true, arg_2.c.x))).x, -round(trunc(-1690f / 164f)), -1422f);
    var var_1 = all(!vec3<bool>(any(select(vec3<bool>(arg_1.c.x, arg_2.a.x, true), vec3<bool>(true, arg_2.c.x, arg_2.c.x), vec3<bool>(arg_2.a.x, arg_1.c.x, arg_1.a.x))), !(-1i > 23425i), arg_1.c.x));
    let var_2 = -(var_0.x + 1000f);
    var_1 = any(select(select(select(!vec2<bool>(false, true), func_2(0i, vec4<bool>(true, arg_2.a.x, arg_2.c.x, arg_2.c.x)).c, !false), !arg_2.a.zy, true), arg_1.a.xy, arg_1.a.x));
    var var_3 = select(arg_1.a, vec4<bool>(~(~45676u) > ~(96805u ^ 36582u), (-29720i ^ arg_2.b) <= -(~arg_2.b), false, step(-1257f, var_0.x) == (var_2 + -838f)), arg_1.a);
    return Struct_1(func_2(-1i, !select(vec4<bool>(var_3.x, false, true, var_3.x), func_2(arg_1.b, arg_2.a).a, arg_1.c.x)).a, 2147483647i, !vec2<bool>(!(699f < -1698f), arg_2.c.x));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = select(vec2<bool>(true, false), !var_0.a.yw, func_5(vec4<u32>(select(4294967295u, 1u, var_0.a.x) ^ 9876u, 63433u, 96801u, func_1().x), Struct_1(vec4<bool>(all(vec4<bool>(arg_0.c.x, false, true, var_0.a.x)), all(vec4<bool>(arg_0.a.x, true, arg_0.a.x, var_0.a.x)), false || var_0.c.x, true), u_input.b ^ (var_0.b ^ arg_0.b), vec2<bool>(0u > 137621u, 0u <= 27401u)), arg_0).a.x);
    var var_2 = func_5(vec4<u32>(4294967295u, ~0u, 14051u, clamp(~(56996u & 7877u), ~15698u, min(3827u | 72629u, ~10858u))), func_5(vec4<u32>(firstTrailingBit(~4294967295u), ~52340u >> 1u, 53733u, dot(firstLeadingBit(vec4<u32>(37296u, 1u, 100438u, 0u)), ~vec4<u32>(13235u, 0u, 0u, 4294967295u))), var_0, var_0), Struct_1(select(var_0.a, vec4<bool>(false, func_2(-1i, vec4<bool>(var_1.x, true, false, true)).c.x, !arg_0.a.x, all(arg_0.a.xyz)), !func_5(vec4<u32>(18021u, 4294967295u, 9490u, 0u), Struct_1(var_0.a, 1i, arg_0.c), arg_0).a), u_input.a.x, !vec2<bool>(false, var_0.a.x))).a.x;
    var_2 = var_1.x;
    global0 = array<vec3<f32>, 25>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(vec4<u32>(46532u, ~41509u, 19656u, 49764u + 1u) % (vec4<u32>(0u, 4294967295u, 1u, 4294967295u) | func_1()), Struct_1(func_2(u_input.b, select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false)).a, 19878i, func_2(-(-686i), !vec4<bool>(true, false, true, false)).c), Struct_1(select(!vec4<bool>(true, false, false, false), !vec4<bool>(false, true, true, false), false), -15090i, !(!vec2<bool>(true, false)))), func_3(func_2(u_input.a.x, !(!vec4<bool>(false, false, true, false))).a.xwz, Struct_1(!(!vec4<bool>(true, true, false, false)), u_input.c | (-3329i >> 4294967295u), func_2(dot(u_input.a.zw, u_input.a.yz), !vec4<bool>(true, false, false, true)).a.yw), Struct_1(vec4<bool>(i32(-2147483648) < -62410i, false, true, !false), u_input.b, vec2<bool>(false, !false))));
    var var_1 = (round(-vec4<f32>(1000f, 1594f, 129f, -999f)) + -(-(vec4<f32>(581f, -1721f, 983f, -111f) / vec4<f32>(-950f, 1272f, 104f, -1068f)))) * (-(-(-vec4<f32>(1131f, 691f, 262f, 797f))) - (min(vec4<f32>(2050f, -514f, 1093f, 846f) - vec4<f32>(-1000f, 384f, -548f, 908f), vec4<f32>(-1713f, -257f, 999f, 229f) / vec4<f32>(935f, -906f, 1369f, 1599f)) + (vec4<f32>(563f, 207f, 1000f, 550f) - (vec4<f32>(-1119f, -127f, -663f, -1000f) * vec4<f32>(-266f, -685f, -460f, -914f)))));
    var var_2 = func_2(-38988i, select(var_0.a, vec4<bool>(-var_1.x <= -var_1.x, !(!true), var_0.c.x, !(!var_0.a.x)), !false));
    let var_3 = u_input.a % u_input.a;
    var var_4 = Struct_1(!vec4<bool>((1u > 0u) || !var_2.c.x, !false, var_1.x > 409f, (true | var_2.c.x) != false), i32(-2147483648), !vec2<bool>(true, !(!var_0.a.x)));
    var var_5 = 4294967295u;
    let var_6 = var_0.b;
    var var_7 = max(var_3.yxw, u_input.a.zyy);
    var var_8 = func_5(~select(vec4<u32>(0u % 38902u, ~21988u, 28338u + 0u, ~1u), clamp(vec4<u32>(103920u, 6272u, 12774u, 16500u), vec4<u32>(0u, 41893u, 45675u, 103087u), vec4<u32>(85162u, 83322u, 33306u, 3204u) * vec4<u32>(1u, 92164u, 4107u, 73788u)), vec4<bool>(true, -20887i == 1i, var_2.a.x, 0u <= 4294967295u)), var_0, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(-((var_0.b % ~var_2.b) / 1i));
}

