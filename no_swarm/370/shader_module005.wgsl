// {"0:0":[177,177,50,42]}
// Seed: 5560269494257624621

struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = -900f - -round(644f);
    let var_1 = vec4<f32>(1000f - var_0, var_0, -479f, var_0);
    let var_2 = select(~(firstLeadingBit(40499u) % 73973u), 34263u % 1u, any(select(vec2<bool>(arg_0 < arg_0, true), vec2<bool>(false, any(vec4<bool>(true, false, true, false))), (false & false) & !true)));
    var var_3 = 4294967295u;
    var var_4 = Struct_1(true, abs(firstTrailingBit(~1u) & 1u), var_0);
    return Struct_1(select(false, var_4.a, any(!select(vec3<bool>(false, var_4.a, var_4.a), vec3<bool>(false, var_4.a, var_4.a), var_4.a))), 14569u, var_0 / max(-278f, var_0));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_4(Struct_2(select(-1825f, -1438f, true & (1u < 10327u)), vec3<i32>(countOneBits(u_input.a), -1i, ~(34958i >> 1u)), func_1((0i >> 0u) - u_input.a), func_1(-24149i), reverseBits(~vec2<i32>(u_input.a, u_input.a))));
    var_0 = Struct_4(var_0.a);
    var_0 = Struct_4(Struct_2(var_0.a.c.c, -(~var_0.a.b / (var_0.a.b << vec3<u32>(0u, var_0.a.c.b, 4294967295u))), func_1(~(i32(-2147483648) | -20355i)), Struct_1(!all(vec3<bool>(var_0.a.d.a, var_0.a.c.a, true)), var_0.a.d.b, var_0.a.d.c), var_0.a.b.xx));
    var var_1 = true;
    let var_2 = any(!(!(!(!vec3<bool>(false, var_0.a.d.a, true)))));
    return select(select(!select(select(vec2<bool>(var_2, false), vec2<bool>(var_2, false), var_2), !vec2<bool>(var_2, var_2), !vec2<bool>(var_0.a.c.a, true)), !(!vec2<bool>(var_0.a.d.a, false)), false), select(!(!vec2<bool>(var_2, var_2)), vec2<bool>(false, var_0.a.c.c < var_0.a.c.c), !vec2<bool>(false & false, -174f < var_0.a.a)), select(select(vec2<bool>(false, true || false), vec2<bool>(false, !var_0.a.c.a), !(!vec2<bool>(false, true))), vec2<bool>(any(vec3<bool>(var_0.a.d.a, false, true)), all(select(vec4<bool>(var_2, var_2, var_2, true), vec4<bool>(var_2, var_2, var_2, false), false))), vec2<bool>((0u < var_0.a.c.b) | select(var_2, false, false), (3599u - var_0.a.d.b) <= ~39965u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<f32>) -> vec3<u32> {
    var var_0 = Struct_4(arg_0);
    var var_1 = -arg_0.c.c;
    let var_2 = !select(!(!select(vec4<bool>(arg_1.x, arg_1.x, false, false), vec4<bool>(arg_0.c.a, arg_0.d.a, false, false), vec4<bool>(true, arg_1.x, var_0.a.c.a, arg_1.x))), select(vec4<bool>(select(arg_0.c.a, true, arg_0.c.a), arg_0.c.a, 0i > 848i, false), select(vec4<bool>(arg_0.d.a, var_0.a.d.a, arg_1.x, arg_1.x), select(vec4<bool>(arg_0.c.a, arg_0.d.a, arg_0.d.a, var_0.a.c.a), vec4<bool>(false, false, false, true), true), true), arg_0.c.a), !vec4<bool>(func_1(arg_0.e.x).a, arg_1.x || false, var_0.a.d.a & false, true));
    var_0 = Struct_4(Struct_2(-arg_2.x, vec3<i32>(-(0i << 0u), var_0.a.e.x, -32432i), Struct_1(!false, arg_0.c.b, step(-741f, -499f)), Struct_1(false, dot(vec2<u32>(arg_0.c.b, var_0.a.c.b), vec2<u32>(60320u, 0u)) >> var_0.a.d.b, var_0.a.d.c - abs(var_0.a.c.c)), var_0.a.e));
    var_0 = Struct_4(arg_0);
    return vec3<u32>(arg_0.d.b, ((arg_0.d.b / arg_0.c.b) / (4294967295u ^ 0u)) & countOneBits(12380u), 57208u) >> abs(vec3<u32>(4294967295u, 101321u, (var_0.a.d.b - 1u) % 1u));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    let var_0 = ~(~(-vec4<i32>(u_input.a, 1i, arg_0.x, 2147483647i) >> ~(vec4<u32>(arg_2.b, 76522u, arg_3.c.b, arg_3.c.b) & vec4<u32>(0u, arg_3.c.b, arg_2.b, 4294967295u))));
    let var_1 = func_4(arg_3, select(vec2<bool>(all(!vec2<bool>(arg_2.a, false)), any(!vec2<bool>(arg_3.d.a, arg_2.a))), !(!vec2<bool>(arg_3.c.a, arg_2.a)), select(select(vec2<bool>(true, arg_2.a), !vec2<bool>(arg_3.d.a, false), vec2<bool>(arg_3.c.a, arg_3.d.a)), select(func_3(), !vec2<bool>(arg_2.a, arg_2.a), false), !(!arg_2.a))), floor(vec3<f32>(exp2(trunc(2513f)), arg_2.c * arg_3.a, -arg_3.c.c - (arg_1 / arg_1))));
    return Struct_3(Struct_1(false, arg_3.d.b, -(-floor(arg_1))), !select(select(select(vec4<bool>(arg_2.a, false, false, true), vec4<bool>(arg_3.d.a, arg_3.d.a, true, true), true), select(vec4<bool>(arg_2.a, false, arg_3.d.a, arg_2.a), vec4<bool>(arg_2.a, arg_3.d.a, true, arg_3.c.a), vec4<bool>(false, arg_2.a, arg_2.a, arg_3.d.a)), !vec4<bool>(arg_2.a, arg_3.d.a, arg_2.a, true)), vec4<bool>(all(vec4<bool>(true, arg_3.c.a, arg_2.a, false)), false, !true, -1428f < -532f), any(vec2<bool>(false, arg_2.a))), arg_3);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(arg_1.x, (arg_3.c.b ^ select(arg_3.c.b, vec3<i32>(arg_3.c.e.x, -21334i, 1i), vec3<bool>(arg_3.b.x, arg_3.a.a, arg_0.a))) | (firstTrailingBit(arg_3.c.b) | vec3<i32>(23543i, 24941i, -7976i)), arg_0, arg_0, ~arg_3.c.e));
    let var_1 = 52852u << arg_3.c.d.b;
    return var_0.a;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: Struct_4) -> Struct_1 {
    var var_0 = vec4<f32>(719f - arg_2.a.c.c, arg_2.a.c.c, (func_2(~vec4<i32>(arg_2.a.e.x, -22450i, -5521i, -45471i), -1241f, func_5(arg_2.a.c, vec3<f32>(-926f, arg_2.a.a, -685f), arg_2.a.c.b, Struct_3(Struct_1(arg_0, arg_2.a.d.b, arg_2.a.a), vec4<bool>(arg_1, arg_1, arg_2.a.c.a, arg_0), arg_2.a)).c, func_2(vec4<i32>(u_input.a, arg_2.a.b.x, 2147483647i, -3737i), -536f, arg_2.a.d, Struct_2(653f, vec3<i32>(-1i, arg_2.a.e.x, arg_2.a.e.x), arg_2.a.c, Struct_1(arg_1, arg_2.a.c.b, -1000f), arg_2.a.b.xx)).c).c.d.c * (-arg_2.a.d.c / (-613f / -1000f))) / (min(floor(arg_2.a.d.c), arg_2.a.a) + -587f), -(-arg_2.a.d.c));
    var_0 = -((floor(-vec4<f32>(1365f, arg_2.a.a, arg_2.a.c.c, 385f)) - vec4<f32>(858f, -554f, -982f, -2907f)) - vec4<f32>(665f - 1249f, var_0.x, -(arg_2.a.d.c + var_0.x), exp2(-2076f)));
    var_0 = vec4<f32>(-239f - -939f, -(-sign(1915f) / (func_1(arg_2.a.e.x).c + -(-1000f))), -1615f, step(select(323f / -var_0.x, arg_2.a.c.c, !any(vec3<bool>(arg_2.a.d.a, false, true))), func_5(func_5(Struct_1(true, 0u, -1257f), var_0.yxw + vec3<f32>(-208f, -1356f, -1215f), ~17878u, Struct_3(Struct_1(true, arg_2.a.d.b, arg_2.a.c.c), vec4<bool>(false, arg_2.a.d.a, true, true), Struct_2(var_0.x, vec3<i32>(0i, i32(-2147483648), u_input.a), Struct_1(true, 51239u, 1610f), Struct_1(arg_0, 160066u, -1103f), arg_2.a.b.yx))).c, var_0.wzw, ~arg_2.a.d.b / (14849u | 100457u), Struct_3(Struct_1(false, arg_2.a.c.b, arg_2.a.a), vec4<bool>(false, arg_2.a.d.a, true, false), func_2(vec4<i32>(arg_2.a.b.x, arg_2.a.e.x, 30253i, 2147483647i), 132f, arg_2.a.d, Struct_2(var_0.x, vec3<i32>(0i, u_input.a, 0i), arg_2.a.c, arg_2.a.c, arg_2.a.e)).c)).d.c));
    let var_1 = func_3().x;
    var_0 = -vec4<f32>(-513f, var_0.x, -252f * (-1000f * var_0.x), step(var_0.x, arg_2.a.c.c));
    return func_5(Struct_1(arg_2.a.c.b > 17166u, (4294967295u & 61693u) & (~arg_2.a.d.b << arg_2.a.c.b), func_2(countOneBits(vec4<i32>(64786i, 5862i, 0i, u_input.a)), min(-1885f, var_0.x), Struct_1(false, arg_2.a.d.b, var_0.x), arg_2.a).a.c + -1468f), var_0.xxy, ~(dot(~vec4<u32>(34588u, arg_2.a.c.b, arg_2.a.c.b, arg_2.a.c.b), firstTrailingBit(vec4<u32>(1u, 0u, arg_2.a.d.b, arg_2.a.d.b))) >> (101830u << (31069u << arg_2.a.c.b))), Struct_3(Struct_1(arg_2.a.d.a, firstLeadingBit(16846u), floor(-1140f)), vec4<bool>(-1000f <= -arg_2.a.a, true & all(vec2<bool>(false, true)), all(func_2(vec4<i32>(1i, -1i, 0i, i32(-2147483648)), -1289f, arg_2.a.d, Struct_2(var_0.x, arg_2.a.b, arg_2.a.c, arg_2.a.c, arg_2.a.e)).b.zx), !true && select(true, arg_1, arg_1)), func_2(~vec4<i32>(46548i, u_input.a, u_input.a, u_input.a) - (vec4<i32>(15199i, u_input.a, u_input.a, u_input.a) % vec4<i32>(-24189i, -7081i, arg_2.a.e.x, arg_2.a.b.x)), abs(arg_2.a.a + arg_2.a.d.c), func_2(~vec4<i32>(-1737i, u_input.a, 0i, arg_2.a.b.x), 705f / -867f, func_1(u_input.a), func_2(vec4<i32>(u_input.a, 2147483647i, arg_2.a.b.x, -23652i), -898f, Struct_1(arg_1, 0u, arg_2.a.a), Struct_2(var_0.x, vec3<i32>(i32(-2147483648), 17663i, u_input.a), arg_2.a.c, arg_2.a.d, vec2<i32>(i32(-2147483648), arg_2.a.e.x))).c).c.c, Struct_2(-1000f, reverseBits(arg_2.a.b), Struct_1(var_1, arg_2.a.d.b, var_0.x), arg_2.a.d, arg_2.a.e << vec2<u32>(arg_2.a.d.b, 4294967295u))).c)).d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(48929u <= ~(~(~0u)), ~(-(u_input.a / -38517i)) >= -(u_input.a ^ u_input.a), Struct_4(func_5(func_1(16008i), -(-vec3<f32>(1466f, 1371f, 2306f)), 1u, func_2(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), 1866f, Struct_1(false, 1u, 959f), Struct_2(539f, vec3<i32>(u_input.a, -20400i, u_input.a), Struct_1(false, 0u, 846f), Struct_1(true, 0u, 1039f), vec2<i32>(u_input.a, u_input.a))))));
    var var_1 = Struct_5(!func_2(countOneBits(vec4<i32>(55477i, 1i, 825i, u_input.a)), -(-1921f), Struct_1(func_6(var_0.a, var_0.a, Struct_4(Struct_2(var_0.c, vec3<i32>(u_input.a, 1i, 8974i), Struct_1(false, var_0.b, -1328f), Struct_1(false, var_0.b, var_0.c), vec2<i32>(u_input.a, -10414i)))).a, var_0.b >> 7113u, 970f), func_2(vec4<i32>(1i, 1i, -1i, u_input.a), -546f + var_0.c, func_2(vec4<i32>(701i, 33103i, u_input.a, u_input.a), var_0.c, Struct_1(var_0.a, var_0.b, -141f), Struct_2(var_0.c, vec3<i32>(2147483647i, u_input.a, u_input.a), Struct_1(false, 1u, 2185f), Struct_1(var_0.a, var_0.b, var_0.c), vec2<i32>(u_input.a, u_input.a))).a, Struct_2(599f, vec3<i32>(37644i, u_input.a, u_input.a), Struct_1(false, var_0.b, var_0.c), Struct_1(true, 1u, 1000f), vec2<i32>(u_input.a, -24158i))).c).b, vec2<bool>(func_3().x, false), func_1(i32(-2147483648)), -(-(vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c) / vec4<f32>(var_0.c, var_0.c, -1571f, var_0.c)) / (vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c) * -vec4<f32>(318f, var_0.c, var_0.c, -276f))), ~abs((3446u - 0u) * 0u));
    var_1 = Struct_5(!select(!vec4<bool>(var_1.a.x, false, true, var_0.a), var_1.a, !true & true), !vec2<bool>(var_1.a.x, true), func_1(countOneBits(-u_input.a)), round(vec4<f32>(var_0.c, var_1.d.x, func_2(~vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), -1171f, var_1.c, func_5(var_1.c, var_1.d.yxy, var_1.e, Struct_3(Struct_1(true, var_1.e, -1000f), vec4<bool>(true, true, true, false), Struct_2(-2317f, vec3<i32>(1i, u_input.a, u_input.a), var_1.c, Struct_1(false, 0u, -621f), vec2<i32>(u_input.a, -1i))))).c.c.c, func_2(vec4<i32>(u_input.a, u_input.a, u_input.a, 67367i), -1654f, var_1.c, Struct_2(var_0.c, vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_1(false, 22941u, -1338f), var_1.c, vec2<i32>(u_input.a, u_input.a))).a.c / (var_1.d.x * var_0.c))), var_0.b);
    var var_2 = u_input.a;
    var var_3 = -(u_input.a / (reverseBits(u_input.a) / dot(vec4<i32>(15520i, i32(-2147483648), 12068i, -53090i), -vec4<i32>(u_input.a, u_input.a, -2941i, u_input.a))));
    let var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-(-64519i), -36308i, 0i), abs(max(vec4<i32>(firstLeadingBit(0i), u_input.a, 1i ^ 43497i, u_input.a), -vec4<i32>(0i, 2415i, u_input.a, i32(-2147483648)))));
}

