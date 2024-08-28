// {"0:0":[118,171,17,66]}
// Seed: 10879730768835690190

struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: i32,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<f32> {
    global0 = Struct_3(arg_0.a, abs(arg_1.c.c.x));
    var var_0 = reverseBits(dot(vec2<i32>(min(u_input.a, -8972i), u_input.a), -vec2<i32>(i32(-2147483648), 2368i))) >> max(min(9342u, 49086u) << 1u, ~4294967295u);
    global0 = Struct_3(all(arg_1.c.b), ~4294967295u % select(~abs(64080u), global0.b / ~3843u, true));
    var var_1 = false;
    let var_2 = max(min(-(-1450f), arg_1.b) + 454f, arg_1.b) / (arg_1.b + arg_1.b);
    return -(-abs((vec4<f32>(arg_1.b, -1000f, -119f, var_2) - vec4<f32>(-930f, -2511f, var_2, -552f)) + (vec4<f32>(-438f, 1676f, 1668f, -821f) * vec4<f32>(769f, arg_1.b, 991f, var_2))));
}

fn func_2() -> vec4<bool> {
    var var_0 = round(vec4<f32>((-1936f / select(-843f, 377f, false)) * -(-544f), min(trunc(609f + -198f), -687f), -1143f, -840f));
    var_0 = min(-(-sign(vec4<f32>(var_0.x, var_0.x, -1476f, 1395f))), func_3(Struct_3(global0.a, 1u), Struct_2(false, var_0.x / -191f, Struct_1(vec2<bool>(global0.a, true), vec4<bool>(global0.a, true, global0.a, true), vec2<u32>(41188u, global0.b))), !(!vec2<bool>(global0.a, false))) / exp2(vec4<f32>(-1036f - var_0.x, round(-1592f), var_0.x, 923f * 322f)));
    global0 = Struct_3((u_input.a - u_input.a) >= 35583i, ~(142557u ^ global0.b));
    global0 = Struct_3(739f > var_0.x, 60541u);
    var var_1 = 27176u;
    return vec4<bool>(all(!vec3<bool>(!true, !global0.a, false)), any(vec4<bool>(!true, global0.a, select(true, var_0.x < var_0.x, select(global0.a, global0.a, true)), select(false, true, false) | !global0.a)), var_0.x > (-315f * -var_0.x), select(select(true, true, global0.a || global0.a), all(select(vec4<bool>(global0.a, false, global0.a, global0.a), vec4<bool>(global0.a, global0.a, false, false), global0.a)), !false) || global0.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    var var_0 = any(arg_1.b.zxz) & false;
    let var_1 = Struct_1(!(!vec2<bool>(!arg_1.a.x, true)), !vec4<bool>(false, arg_1.b.x, !(720f > arg_2.b), !any(arg_0.b.wz)), arg_0.c - abs(~(arg_0.c << arg_0.c)));
    var_0 = -u_input.a == countOneBits(u_input.a);
    var_0 = select(true, global0.a, any(!select(!arg_1.b.zzy, vec3<bool>(arg_2.c.a.x, true, var_1.b.x), !arg_0.a.x)));
    var var_2 = !vec2<bool>(global0.a, arg_0.b.x);
    return Struct_3(arg_0.b.x, ~global0.b);
}

fn func_1() -> Struct_4 {
    global0 = func_4(Struct_1(vec2<bool>(global0.a, (0u % global0.b) < global0.b), func_2(), select(~reverseBits(vec2<u32>(global0.b, global0.b)), vec2<u32>(~global0.b, min(global0.b, 0u)), (-1000f / 1000f) == -1078f)), Struct_1(!(!(!vec2<bool>(global0.a, true))), vec4<bool>(!global0.a || false, (2147483647i * u_input.a) == -u_input.a, !(!false), global0.a), ~(vec2<u32>(global0.b, 7783u) - vec2<u32>(67743u, 10885u)) - ~(~vec2<u32>(43496u, 8522u))), Struct_2(global0.a, -1157f, Struct_1(!vec2<bool>(false, true), vec4<bool>(all(vec3<bool>(true, global0.a, true)), any(vec3<bool>(global0.a, false, global0.a)), false, any(vec2<bool>(false, global0.a))), firstTrailingBit(~vec2<u32>(4294967295u, global0.b)))));
    global0 = Struct_3(true || !true, global0.b);
    let var_0 = clamp(~(select(vec2<u32>(21462u, 0u), vec2<u32>(global0.b, 32794u), vec2<bool>(global0.a, false)) + abs(vec2<u32>(12273u, 9720u))) >> ~select(vec2<u32>(8766u, global0.b), ~vec2<u32>(4294967295u, 40228u), !vec2<bool>(true, global0.a)), ~vec2<u32>(~func_4(Struct_1(vec2<bool>(global0.a, global0.a), vec4<bool>(false, global0.a, true, true), vec2<u32>(29443u, global0.b)), Struct_1(vec2<bool>(global0.a, true), vec4<bool>(true, false, true, global0.a), vec2<u32>(global0.b, 15253u)), Struct_2(global0.a, 332f, Struct_1(vec2<bool>(true, global0.a), vec4<bool>(global0.a, global0.a, false, false), vec2<u32>(22389u, global0.b)))).b, 25711u), ~vec2<u32>(global0.b, 17188u) + (~vec2<u32>(29030u, 5857u) * firstTrailingBit(~vec2<u32>(0u, 0u))));
    let var_1 = Struct_2(func_4(Struct_1(!(!vec2<bool>(true, global0.a)), func_2(), vec2<u32>(~4294967295u, global0.b * global0.b)), Struct_1(vec2<bool>(false, !global0.a), select(!vec4<bool>(global0.a, true, false, global0.a), vec4<bool>(global0.a, global0.a, true, true), global0.a), (var_0 << var_0) % (vec2<u32>(global0.b, 11398u) << var_0)), Struct_2(!global0.a && global0.a, (177f * 1000f) * 521f, Struct_1(vec2<bool>(global0.a, true), func_2(), var_0))).a, func_3(func_4(Struct_1(vec2<bool>(false, global0.a), vec4<bool>(global0.a, global0.a, true, true), var_0), Struct_1(vec2<bool>(global0.a, true), vec4<bool>(global0.a, true, false, false), vec2<u32>(0u, 4294967295u)), Struct_2(true, 1146f, Struct_1(vec2<bool>(global0.a, global0.a), vec4<bool>(false, global0.a, global0.a, global0.a), var_0))), Struct_2(!global0.a, abs(-1327f), Struct_1(vec2<bool>(global0.a, true), vec4<bool>(global0.a, global0.a, global0.a, false), var_0)), select(func_2().wx, func_2().yz, !vec2<bool>(true, global0.a))).x / ceil(-(-791f) + select(-2062f, 1297f, global0.a)), Struct_1(!select(vec2<bool>(true, global0.a), func_2().wz, func_2().zx), func_2(), vec2<u32>(43910u + ~global0.b, select(var_0.x, var_0.x, false))));
    var var_2 = func_3(Struct_3(all(select(vec3<bool>(true, global0.a, var_1.a), vec3<bool>(global0.a, true, var_1.a), !vec3<bool>(false, global0.a, true))), countOneBits(7687u)), var_1, vec2<bool>(func_4(Struct_1(var_1.c.a, func_2(), var_0 & vec2<u32>(var_1.c.c.x, var_0.x)), Struct_1(var_1.c.b.xz, select(vec4<bool>(var_1.a, false, var_1.a, var_1.c.a.x), vec4<bool>(global0.a, var_1.c.b.x, true, true), var_1.c.b), vec2<u32>(global0.b, 0u) % var_1.c.c), var_1).a, !global0.a)).xw;
    return Struct_4(-663f, floor(-(-var_2.x / step(var_1.b, 2160f))), countOneBits(clamp((u_input.a - u_input.a) >> var_0.x, u_input.a, ~(u_input.a >> 4294967295u))), func_4(Struct_1(select(select(vec2<bool>(true, global0.a), var_1.c.b.xw, global0.a), var_1.c.b.zw, !var_1.c.a), func_2(), vec2<u32>(~4294967295u, ~var_1.c.c.x)), var_1.c, Struct_2(true, -1309f * -909f, Struct_1(vec2<bool>(false, true), vec4<bool>(global0.a, true, global0.a, true), ~vec2<u32>(0u, var_0.x)))), ~var_1.c.c.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec3<f32>) -> i32 {
    var var_0 = ~vec3<u32>(dot(~vec3<u32>(54074u, arg_1.e, arg_1.d.b) >> ~arg_0.zzy, min(vec3<u32>(arg_0.x, 4294967295u, 0u) % vec3<u32>(arg_1.e, 22596u, arg_0.x), min(arg_0.ywy, vec3<u32>(0u, arg_0.x, global0.b)))), abs(firstTrailingBit(1u)), ~(global0.b >> global0.b));
    let var_1 = (arg_2 * -(trunc(vec3<f32>(arg_2.x, arg_1.a, -1022f)) * (arg_2 * arg_2))) / (arg_2 * exp2(-vec3<f32>(1000f, arg_2.x, -688f)));
    let var_2 = select(-(-(-vec4<f32>(var_1.x, -599f, -1259f, 673f))), vec4<f32>((arg_2.x * -var_1.x) - -sign(-1472f), -1000f / var_1.x, -774f, arg_2.x), select(func_2(), !vec4<bool>(!arg_1.d.a, all(vec2<bool>(false, true)), all(vec3<bool>(global0.a, false, true)), arg_1.d.b < 1u), !(!(!vec4<bool>(false, global0.a, global0.a, arg_1.d.a)))));
    let var_3 = false;
    let var_4 = func_4(Struct_1(!vec2<bool>(!global0.a, !global0.a), vec4<bool>(global0.a, false, !(!var_3), all(vec4<bool>(arg_1.d.a, arg_1.d.a, arg_1.d.a, arg_1.d.a))), firstLeadingBit(vec2<u32>(4294967295u, 12439u)) | var_0.yz), Struct_1(!vec2<bool>(func_1().d.a, false), vec4<bool>(var_3, func_2().x, var_3, !(!true)), vec2<u32>((68972u * arg_0.x) << ~arg_1.e, reverseBits(~global0.b))), Struct_2(func_1().d.a, -(-(-arg_2.x)), Struct_1(!(!vec2<bool>(arg_1.d.a, global0.a)), !(!vec4<bool>(global0.a, arg_1.d.a, global0.a, var_3)), arg_0.yx)));
    return arg_1.c % ~(~reverseBits(1i) | -arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(clamp(~(31105u / ~35826u), countOneBits(global0.b), 63241u), ~(~(~72691u * (0u << 12765u))));
    var_0 = select(vec2<u32>(var_0.x, global0.b) % vec2<u32>(~0u, 0u), countOneBits(firstTrailingBit(~(~vec2<u32>(58070u, global0.b)))), vec2<bool>(false || !(!true), true));
    var var_1 = !vec4<bool>((dot(vec4<u32>(32767u, global0.b, global0.b, global0.b), vec4<u32>(1906u, 4294967295u, var_0.x, global0.b)) + global0.b) == var_0.x, (0i < -u_input.a) & false, true, false && global0.a);
    let var_2 = vec2<i32>(func_5(vec4<u32>(dot(vec3<u32>(71760u, global0.b, var_0.x), vec3<u32>(global0.b, var_0.x, var_0.x)), ~var_0.x, 49102u, var_0.x), func_1(), vec3<f32>(499f, exp2(1136f), 305f / -161f)), func_5(~(~vec4<u32>(0u, 4294967295u, var_0.x, 65435u)), Struct_4(-1000f, 1025f, -28520i - -6294i, func_4(Struct_1(var_1.xz, vec4<bool>(var_1.x, global0.a, true, false), vec2<u32>(var_0.x, 25301u)), Struct_1(var_1.zz, vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec2<u32>(var_0.x, global0.b)), Struct_2(false, -1286f, Struct_1(var_1.wy, vec4<bool>(true, global0.a, var_1.x, false), vec2<u32>(var_0.x, 0u)))), global0.b % 1u), -(-vec3<f32>(1764f, -719f, 534f)))) | vec2<i32>(-1i, max(-1i, -30254i) >> var_0.x);
    let var_3 = func_1();
    let var_4 = !var_1.zxy;
    var_0 = select(reverseBits(vec2<u32>(firstTrailingBit(~0u), dot(vec2<u32>(1u, var_3.e), vec2<u32>(52777u, 1u) - vec2<u32>(var_0.x, global0.b)))), abs(select(~vec2<u32>(1u, 8481u) << (vec2<u32>(var_3.d.b, var_0.x) - vec2<u32>(1u, var_3.e)), ~(~vec2<u32>(81945u, var_0.x)), any(var_1.xw))), vec2<bool>(-333f > ceil(var_3.b), !((var_3.a / 918f) > var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(reverseBits(clamp(1u | var_3.e, var_3.e, 1u))), min(-(-vec4<i32>(-1i, var_2.x, u_input.a, var_2.x) | vec4<i32>(55996i, var_2.x, -33086i, 12480i)), -reverseBits(vec4<i32>(-3089i, u_input.a, 1i, -34274i))), abs(2147483647i), firstLeadingBit(vec4<u32>(~var_0.x, 49358u >> 59218u, 17431u, clamp(var_3.e, global0.b, 27386u)) / (vec4<u32>(var_0.x, global0.b, var_0.x, 4294967295u) & (vec4<u32>(var_3.d.b, var_3.d.b, 75670u, global0.b) << vec4<u32>(var_3.e, 4294967295u, var_0.x, global0.b)))), ~(var_0.x >> 28630u));
}

