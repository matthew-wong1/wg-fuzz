// {"0:0":[116,157,168,13]}
// Seed: 630226423691068242

struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3() -> vec2<f32> {
    let var_0 = (sign(-round(vec4<f32>(157f, -163f, 1012f, -1000f))) / (-vec4<f32>(-386f, -264f, 602f, 1528f) * (round(vec4<f32>(148f, 525f, -693f, -1268f)) / (vec4<f32>(-2091f, -208f, 1754f, -1770f) - vec4<f32>(727f, 115f, -408f, -414f))))) + -vec4<f32>(-410f + select(1000f, 909f, true), sign(-1447f), (1000f - 200f) - exp2(-1000f), -1211f);
    let var_1 = -(u_input.a % u_input.a);
    let var_2 = var_0.x;
    var var_3 = !(false && !(!true));
    var_3 = true;
    return ((round(max(vec2<f32>(799f, var_0.x), var_0.yw)) - (vec2<f32>(var_0.x, -545f) / -vec2<f32>(var_2, var_0.x))) + vec2<f32>(var_0.x, 562f)) * var_0.zy;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_4) -> Struct_5 {
    var var_0 = (vec2<u32>(~dot(vec4<u32>(arg_3.b.x, arg_3.b.x, 19434u, arg_3.b.x), vec4<u32>(0u, arg_3.b.x, arg_3.b.x, arg_3.b.x)), (1u / 18855u) ^ ~arg_3.b.x) / vec2<u32>(17670u, firstTrailingBit(41686u))) - vec2<u32>(79850u * ~(~64158u), min(~63004u + dot(vec4<u32>(61850u, 0u, arg_3.b.x, 1u), vec4<u32>(arg_3.b.x, 56231u, 61544u, arg_3.b.x)), 0u));
    var var_1 = Struct_3(vec2<bool>(select(arg_3.d.x, !true, arg_3.d.x), true), abs(func_3()), !(!vec2<bool>(any(vec2<bool>(true, false)), !arg_3.d.x)), arg_3.d.x, var_0.x);
    var_1 = Struct_3(vec2<bool>(!all(vec3<bool>(arg_3.d.x, false, false)) && true, all(vec3<bool>(any(vec3<bool>(false, true, true)), arg_3.d.x, true))), arg_1.a.zz, select(arg_3.d.yy, vec2<bool>(abs(arg_2.x) >= -37410i, var_0.x != 4294967295u), all(select(vec2<bool>(true, false), vec2<bool>(false, arg_3.d.x), arg_3.d.x))), !true, ~(~(~0u)) >> ~arg_3.b.x);
    var_1 = Struct_3(select(arg_3.d.xx, !vec2<bool>(all(arg_3.d.wxw), false), true), var_1.b, select(!vec2<bool>(true, !false), !arg_3.d.zy, any(select(arg_3.d.wzx, arg_3.d.yzz, !false))), var_1.a.x, 4294967295u & ~((1u / var_0.x) + var_0.x));
    var var_2 = 44074i;
    return Struct_5(select(vec3<i32>(-arg_3.c, -(-66608i), 2147483647i), ~(-(-vec3<i32>(-8386i, arg_3.c, arg_2.x))), any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(var_1.a.x, var_1.c.x)), !var_1.c, 35274i >= arg_2.x))), vec3<bool>(arg_3.d.x == !(true || var_1.a.x), !(!false), !true));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_4(abs(abs(459f) * trunc(-1000f)), arg_3, u_input.a >> ~firstTrailingBit(100231u), select(select(vec4<bool>(arg_0.b.x, true, false, func_2(Struct_1(vec4<f32>(647f, 1284f, -1710f, 1060f)), Struct_1(vec4<f32>(405f, 218f, -352f, -407f)), vec2<i32>(1i, arg_1.x), Struct_4(-835f, vec3<u32>(arg_3.x, 38355u, arg_3.x), 37287i, vec4<bool>(true, false, false, true))).b.x), select(vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x), select(vec4<bool>(true, arg_0.b.x, arg_0.b.x, false), vec4<bool>(false, arg_0.b.x, false, arg_0.b.x), arg_0.b.x), !vec4<bool>(arg_0.b.x, true, false, arg_0.b.x)), false || func_2(Struct_1(vec4<f32>(-881f, 983f, -340f, 1123f)), Struct_1(vec4<f32>(1254f, 1738f, 918f, 1589f)), arg_2.ww, Struct_4(152f, arg_3, arg_2.x, vec4<bool>(arg_0.b.x, true, true, false))).b.x), !(!(!vec4<bool>(true, false, true, arg_0.b.x))), arg_0.b.x | all(arg_0.b.yz)));
    var var_1 = Struct_1(vec4<f32>(step(min(var_0.a, min(var_0.a, var_0.a)), 439f - abs(-645f)), var_0.a, 169f, -1000f));
    var var_2 = abs(~var_0.b.x);
    var_1 = Struct_1(exp2(((vec4<f32>(960f, -162f, var_1.a.x, -671f) - vec4<f32>(var_1.a.x, 211f, var_1.a.x, 194f)) + var_1.a) + abs(vec4<f32>(var_0.a, 611f, var_0.a, var_0.a))));
    let var_3 = vec4<f32>(-1414f, min(min(-746f, var_0.a - var_1.a.x), 1000f), -325f, -615f);
    return Struct_3(var_0.d.xy, sign(var_1.a.zw * floor(-vec2<f32>(-310f, var_1.a.x))), !select(!var_0.d.yy, !arg_0.b.xy, var_0.d.x), !(-(-var_1.a.x) <= ((1407f + var_0.a) * exp2(var_0.a))), 4294967295u - clamp(dot(arg_3.zz, vec2<u32>(arg_3.x, 45477u)), (31557u * var_0.b.x) | (66620u - var_0.b.x), dot(firstLeadingBit(vec2<u32>(22605u, 49828u)), arg_3.yx)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<bool>) -> bool {
    let var_0 = floor(arg_0.b.x) + (102f / 943f);
    var var_1 = !false;
    let var_2 = Struct_2(Struct_1(vec4<f32>(-(-1000f), select(select(-1239f, -1486f, false), arg_1.a.a.x / arg_1.a.a.x, arg_1.d), (arg_1.c.a.x + 628f) + (arg_1.a.a.x - 1773f), -arg_0.b.x)), Struct_1(-arg_1.b.a * vec4<f32>(-822f, arg_0.b.x, -arg_0.b.x, arg_0.b.x)), Struct_1(vec4<f32>(1116f, -(arg_0.b.x / var_0), max(arg_0.b.x / 740f, arg_1.c.a.x), var_0)), arg_0.a.x, -u_input.a);
    let var_3 = !select(arg_0.c, arg_0.c, !vec2<bool>(arg_0.d, func_2(var_2.b, Struct_1(var_2.c.a), vec2<i32>(u_input.a, i32(-2147483648)), Struct_4(169f, vec3<u32>(arg_0.e, arg_0.e, arg_0.e), u_input.a, vec4<bool>(false, false, arg_1.d, false))).b.x));
    var var_4 = !(!(!arg_2));
    return !(!false);
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = (arg_0 & ~arg_0) + ((~arg_0 * ~28496u) & 1u);
    let var_1 = ~(~(~arg_0));
    var var_2 = select(!select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, arg_2.x, false), arg_2.x), !vec4<bool>(arg_2.x, arg_2.x, false, false), !true), !select(vec4<bool>(true, arg_2.x, true, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), true), !arg_2.x), vec4<bool>(arg_2.x, func_5(func_4(func_2(Struct_1(vec4<f32>(1000f, 1000f, -1149f, -1000f)), Struct_1(vec4<f32>(629f, -1102f, 2008f, -613f)), vec2<i32>(-22796i, 1i), Struct_4(-567f, vec3<u32>(var_1, arg_0, 1u), -12956i, vec4<bool>(false, arg_2.x, true, arg_2.x))), arg_1, vec4<i32>(u_input.a, 1i, u_input.a, 1i), vec3<u32>(var_0, arg_0, arg_0)), Struct_2(Struct_1(vec4<f32>(-1808f, -443f, 1406f, -875f)), Struct_1(vec4<f32>(1749f, -260f, 1062f, -2084f)), Struct_1(vec4<f32>(846f, -568f, -179f, 636f)), arg_2.x, firstLeadingBit(arg_1.x)), select(!vec4<bool>(false, false, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, false, true, arg_2.x), arg_2.x)), true, select(true, true, (4294967295u | var_0) > 4294967295u)), arg_2.x);
    var_2 = select(vec4<bool>(!(!arg_2.x), var_2.x, arg_2.x, var_2.x), select(!select(vec4<bool>(false, false, false, var_2.x), vec4<bool>(var_2.x, true, true, arg_2.x), !vec4<bool>(false, false, true, true)), select(vec4<bool>(true & false, select(false, true, false), arg_1.x == 3519i, true), select(select(vec4<bool>(true, false, arg_2.x, true), vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(arg_2.x, false, false, var_2.x)), select(vec4<bool>(arg_2.x, false, arg_2.x, var_2.x), vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(true, var_2.x, true, true)), !false), var_2.x), !select(vec4<bool>(var_2.x, false, arg_2.x, true), vec4<bool>(var_2.x, false, arg_2.x, true), !vec4<bool>(arg_2.x, false, true, arg_2.x))), !false);
    var var_3 = func_4(Struct_5(vec3<i32>(arg_1.x - u_input.a, firstLeadingBit(dot(vec4<i32>(arg_1.x, u_input.a, arg_1.x, u_input.a), vec4<i32>(2147483647i, 28994i, 0i, 1i))), 14051i), select(var_2.yxy, select(func_2(Struct_1(vec4<f32>(418f, -831f, -125f, 207f)), Struct_1(vec4<f32>(-500f, -1000f, 150f, 996f)), arg_1.zy, Struct_4(231f, vec3<u32>(var_1, 12698u, arg_0), 12282i, vec4<bool>(var_2.x, arg_2.x, false, arg_2.x))).b, vec3<bool>(true, true, arg_2.x), any(var_2.wx)), any(vec4<bool>(arg_2.x, arg_2.x, true, true)))), firstTrailingBit(vec3<i32>(firstLeadingBit(-4963i), u_input.a * 2147483647i, -39875i)) % vec3<i32>(-(-42192i), u_input.a, -37386i | (arg_1.x | -1i)), min(-vec4<i32>(-u_input.a, u_input.a, u_input.a - 35363i, -1i), ~select(vec4<i32>(0i, arg_1.x, 0i, 6821i) % vec4<i32>(-12301i, u_input.a, 38345i, u_input.a), vec4<i32>(-98718i, 1i, u_input.a, i32(-2147483648)), !vec4<bool>(true, true, false, arg_2.x))), vec3<u32>(~43816u, ~(clamp(arg_0, var_1, 35392u) / 104962u), var_1));
    return Struct_1(-exp2(-vec4<f32>(var_3.b.x, -320f, -1289f, var_3.b.x)) * (sign(select(vec4<f32>(-1000f, 864f, -296f, -899f), vec4<f32>(var_3.b.x, -216f, 1226f, -1074f), var_2.x)) + vec4<f32>(-(-966f), var_3.b.x, var_3.b.x, var_3.b.x)));
}

fn func_6(arg_0: Struct_2) -> Struct_4 {
    var var_0 = Struct_5(vec3<i32>(arg_0.e, u_input.a, u_input.a), func_2(Struct_1(-vec4<f32>(244f, arg_0.c.a.x, arg_0.a.a.x, 1601f) + -arg_0.a.a), Struct_1(-(arg_0.b.a + vec4<f32>(563f, arg_0.a.a.x, -366f, 158f))), firstLeadingBit(~clamp(vec2<i32>(arg_0.e, arg_0.e), vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.a, u_input.a))), Struct_4((121f - arg_0.a.a.x) + (arg_0.a.a.x + -859f), vec3<u32>(~106310u, min(1u, 4294967295u), 76803u >> 69511u), ~(2147483647i - arg_0.e), vec4<bool>(54830u <= 19888u, !arg_0.d, false, !arg_0.d))).b);
    var var_1 = vec4<f32>(-268f, -arg_0.b.a.x, -2505f, arg_0.b.a.x);
    let var_2 = ~firstTrailingBit(dot(vec3<u32>(countOneBits(4294967295u), 66570u * 29422u, ~45917u), ~(~vec3<u32>(4294967295u, 23353u, 1u))));
    return Struct_4(-var_1.x, vec3<u32>(~var_2, var_2 >> ~firstLeadingBit(12704u), countOneBits(6724u & 4294967295u) ^ min(var_2 * 58443u, var_2)), func_2(Struct_1(trunc(vec4<f32>(arg_0.a.a.x, -2747f, -118f, -749f))), func_1(48909u, vec3<i32>(i32(-2147483648), u_input.a, i32(-2147483648)) * var_0.a, !var_0.b.zz), ~(-var_0.a.yz), Struct_4(arg_0.a.a.x, vec3<u32>(var_2, 41071u, var_2) - vec3<u32>(17201u, 4294967295u, 1u), -u_input.a, vec4<bool>(true, var_0.b.x, true, var_0.b.x))).a.x ^ max(-arg_0.e >> ~46602u, 3062i), vec4<bool>(arg_0.d, func_4(func_2(func_1(54277u, vec3<i32>(-8391i, 1i, -2076i), var_0.b.zx), func_1(var_2, var_0.a, var_0.b.xx), vec2<i32>(var_0.a.x, arg_0.e), Struct_4(208f, vec3<u32>(var_2, 0u, 71246u), u_input.a, vec4<bool>(true, false, false, arg_0.d))), abs(countOneBits(vec3<i32>(var_0.a.x, i32(-2147483648), arg_0.e))), vec4<i32>(dot(vec2<i32>(arg_0.e, u_input.a), var_0.a.xx), arg_0.e >> 0u, select(var_0.a.x, -1i, true), firstTrailingBit(u_input.a)), select(firstTrailingBit(vec3<u32>(var_2, 4294967295u, 1u)), abs(vec3<u32>(var_2, 48281u, var_2)), vec3<bool>(var_0.b.x, arg_0.d, arg_0.d))).d, var_0.b.x, !(-1132f != 1714f)));
}

fn func_7(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: i32) -> StorageBuffer {
    var var_0 = firstTrailingBit(u_input.a);
    var var_1 = Struct_2(func_1(19253u, vec3<i32>(2147483647i, 0i, abs(-21888i) | 42425i), !select(vec2<bool>(false, true), !arg_1.d.zy, !true)), Struct_1(-(-vec4<f32>(-379f, arg_0.x, arg_1.a, arg_0.x))), Struct_1(vec4<f32>(arg_0.x, -(-(-545f)), 558f, arg_1.a)), true == arg_1.d.x, u_input.a);
    var_0 = min(~(-1i), reverseBits(17688i << firstLeadingBit(~36271u)));
    var_1 = Struct_2(func_1(abs(4294967295u ^ (arg_1.b.x & 1u)), ~select(vec3<i32>(arg_1.c, 0i, 8107i), vec3<i32>(15612i, 0i, 2147483647i) >> arg_1.b, arg_1.b.x > arg_1.b.x), func_4(Struct_5(vec3<i32>(arg_1.c, -38247i, var_1.e), !vec3<bool>(var_1.d, false, false)), vec3<i32>(arg_2 - i32(-2147483648), abs(0i), var_1.e), countOneBits(vec4<i32>(i32(-2147483648), -1803i, u_input.a, arg_2)), vec3<u32>(~1u, countOneBits(4294967295u), 0u)).c), Struct_1(-vec4<f32>(floor(320f), 138f + -754f, min(arg_0.x, arg_1.a), step(arg_0.x, 1099f))), func_1(arg_1.b.x, vec3<i32>(-1i, arg_1.c, ~reverseBits(-45979i)), vec2<bool>((false && arg_1.d.x) & false, true)), !(!arg_1.d.x), arg_2);
    var_0 = dot(-min(vec4<i32>(2147483647i, var_1.e, arg_1.c, arg_1.c), vec4<i32>(18595i, -40654i, arg_1.c, 65629i) % vec4<i32>(2421i, arg_1.c, u_input.a, u_input.a)), clamp(min(vec4<i32>(-40813i, -9134i, u_input.a, 49148i), vec4<i32>(arg_2, arg_2, 2147483647i, i32(-2147483648)) * vec4<i32>(0i, u_input.a, var_1.e, 2147483647i)), vec4<i32>(-var_1.e, i32(-2147483648), -(-49184i), max(var_1.e, -25829i)), ~countOneBits(vec4<i32>(16762i, -12621i, 2147483647i, 1i)))) << func_4(Struct_5(vec3<i32>(arg_2, -1i - -53077i, clamp(13096i, 2147483647i, var_1.e)), vec3<bool>(arg_1.d.x, false, 0u < 0u)), (vec3<i32>(arg_2, u_input.a, arg_2) ^ (vec3<i32>(31070i, 0i, var_1.e) * vec3<i32>(75691i, 0i, 31605i))) * max(vec3<i32>(u_input.a, 54414i, -24097i), -vec3<i32>(6118i, arg_2, -21252i)), vec4<i32>(~arg_1.c % -u_input.a, arg_1.c, var_1.e, 831i), vec3<u32>(arg_1.b.x + arg_1.b.x, 41519u, 17846u - ~arg_1.b.x)).e;
    return StorageBuffer(((vec2<i32>(u_input.a, 0i) % (vec2<i32>(1i, 20599i) % vec2<i32>(u_input.a, arg_2))) / -(-vec2<i32>(-6103i, u_input.a))) ^ ~vec2<i32>(u_input.a, -u_input.a), vec4<u32>(countOneBits(arg_1.b.x) >> 15467u, abs(~(5478u / 69514u)), arg_1.b.x, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(~(48714u * 19872u) + ~(~4294967295u));
    let var_1 = 1i & -10527i;
    let var_2 = -592f * -1291f;
    var var_3 = true;
    var var_4 = vec3<u32>(~max(4294967295u % var_0, var_0 ^ 1510u), ~max(var_0, 34254u), firstTrailingBit(var_0)) / (~(~vec3<u32>(10233u, var_0, 0u)) << vec3<u32>(var_0, var_0, reverseBits(var_0)));
    var var_5 = round(vec3<f32>(-1000f + (-289f * (var_2 - var_2)), -(-(-1066f - 1501f)), var_2));
    let x = u_input.a;
    s_output = func_7(-(-vec3<f32>(-1054f, var_5.x, -783f) - -(-vec3<f32>(var_2, var_2, var_5.x))), func_6(Struct_2(Struct_1(vec4<f32>(-567f, 2561f, var_2, -899f)), func_1(var_4.x | 9260u, vec3<i32>(1i, 45740i, u_input.a), vec2<bool>(false, false)), Struct_1(-vec4<f32>(1937f, var_5.x, var_5.x, var_2)), !(false || true), -22065i / i32(-2147483648))), (dot(countOneBits(vec2<i32>(u_input.a, -7392i)), ~vec2<i32>(var_1, i32(-2147483648))) + firstTrailingBit(var_1 >> var_0)) ^ var_1);
}

