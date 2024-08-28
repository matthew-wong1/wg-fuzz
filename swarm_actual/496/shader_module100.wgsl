// {"0:0":[253,175,248,145,178,30,186,237,31,109,62,160]}
// Seed: 8344964051626598503

struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> i32 {
    let var_0 = true;
    var var_1 = Struct_1(vec4<i32>(2147483647i, arg_0.x, ~arg_1, ~0i), -(-930f), 531f, false);
    let var_2 = Struct_1(vec4<i32>(countOneBits(-21988i - var_1.a.x), ~(1i << (37141u / 30334u)), 21651i % (arg_1 + var_1.a.x), dot(vec2<i32>(max(12287i, 0i), reverseBits(2147483647i)), firstTrailingBit(vec2<i32>(var_1.a.x, var_1.a.x) + var_1.a.yy))), var_1.c, -var_1.b - 550f, !(true && !all(vec3<bool>(true, false, true))));
    var_1 = Struct_1(abs(-vec4<i32>(-52760i, var_1.a.x % var_1.a.x, 2147483647i | var_1.a.x, -1i)), min(-(-939f), -(-1010f)) * (-683f * 1669f), floor(var_2.b - sign(-var_1.b)), any(!vec4<bool>(var_0, false, false, false)) || select(all(select(vec3<bool>(var_1.d, var_0, var_0), vec3<bool>(var_0, var_0, var_0), true)), any(vec3<bool>(var_0, var_0, false)), false));
    var var_3 = ~(vec4<i32>(-33320i * ~1i, (arg_0.x % 29441i) % arg_1, var_2.a.x, ~reverseBits(arg_1)) / -select(vec4<i32>(var_2.a.x, arg_0.x, var_2.a.x, var_1.a.x), var_2.a, vec4<bool>(false, false, false, true)));
    return dot(~(-arg_0), vec3<i32>(var_3.x, 2435i | var_2.a.x, var_3.x));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !(!arg_0.d);
    var var_1 = arg_0;
    var var_2 = vec4<bool>(arg_0.d, true, !false & true, any(vec3<bool>(true, (var_1.a.x ^ 25731i) == func_3(vec3<i32>(var_1.a.x, arg_0.a.x, 24660i), 31809i), (arg_0.c + -1109f) < var_1.c)));
    var var_3 = false;
    var_2 = select(vec4<bool>(!(!(!true)), var_2.x, var_0, true), select(select(select(select(vec4<bool>(true, true, arg_0.d, var_2.x), vec4<bool>(var_2.x, false, true, arg_0.d), true), !vec4<bool>(false, true, var_0, true), true), !(!vec4<bool>(true, false, true, false)), vec4<bool>(u_input.a < u_input.c, true, var_2.x, all(var_2.yz))), select(vec4<bool>(var_1.d, true, !false, all(vec3<bool>(true, var_1.d, false))), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, var_2.x), !true), select(vec4<bool>(var_2.x, true, false, var_0), vec4<bool>(var_1.d, var_0, var_2.x, true), any(vec4<bool>(false, var_2.x, var_1.d, true)))), !(!(!true))), !all(!vec2<bool>(true, false)));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = arg_0;
    let var_1 = sign(abs(var_0.c)) / -(-(-arg_0.c) - ((arg_0.c * 1012f) - -275f));
    return vec4<i32>(-3556i, var_0.a.x | 31529i, var_0.a.x >> (~arg_1 % clamp(37801u, reverseBits(56825u), select(4187u, arg_1, var_0.d))), ~50129i);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(-select(vec4<i32>(-18052i, arg_1, arg_1, -37133i) % (arg_2.a & vec4<i32>(40885i, arg_2.a.x, arg_1, arg_2.a.x)), func_4(func_2(Struct_1(arg_2.a, -1169f, 415f, true)), 4294967295u, func_2(Struct_1(vec4<i32>(1i, arg_2.a.x, arg_2.a.x, arg_1), -1123f, -260f, true))), select(select(vec4<bool>(arg_2.d, true, false, arg_2.d), vec4<bool>(arg_0, false, arg_2.d, true), vec4<bool>(false, false, arg_2.d, arg_0)), !vec4<bool>(true, arg_2.d, arg_2.d, true), true)), arg_2.c / arg_2.b, -floor(arg_2.b), false);
    let var_1 = -arg_2.a.x;
    var var_2 = func_2(func_2(func_2(func_2(arg_2))));
    var var_3 = Struct_1(var_0.a, var_2.c, -775f, !(!((true | arg_2.d) || (arg_2.d || var_2.d))));
    var var_4 = Struct_1(vec4<i32>(-48257i, var_2.a.x, -countOneBits(var_3.a.x & 5958i), -var_2.a.x), -((var_3.b + arg_2.b) * abs(var_3.c)) / -(-(var_2.c + arg_2.c)), select(-arg_2.b, -var_2.b + (-1820f + 802f), true), any(!vec2<bool>(var_3.d || true, -220f == 128f)));
    return var_2.c - 791f;
}

fn func_5(arg_0: f32) -> vec2<bool> {
    let var_0 = Struct_1(vec4<i32>(dot(vec4<i32>(1i >> u_input.b, ~(i32(-2147483648)), 27615i ^ 54540i, 1i >> 71938u), clamp(vec4<i32>(-1i, -13785i, -12079i, -12344i), vec4<i32>(-48234i, 13916i, -1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 56758i, -1i, 14944i)) >> abs(vec4<u32>(u_input.b, u_input.a, 49587u, 24817u))), 65194i, dot((vec2<i32>(-28871i, -21649i) % vec2<i32>(44313i, -24813i)) - (vec2<i32>(-1i, -1i) / vec2<i32>(26602i, 48089i)), clamp(vec2<i32>(-30644i, 0i), vec2<i32>(9946i, -3541i), vec2<i32>(36840i, 0i)) & vec2<i32>(i32(-2147483648), 0i)), -select(~(-1i), 0i ^ 0i, !false)), step(447f * -600f, arg_0), ceil(-step(arg_0, -376f)) - -arg_0, !true);
    var var_1 = arg_0 != step(((560f / -515f) * abs(1000f)) - (arg_0 / 1586f), var_0.c);
    var var_2 = any(select(vec4<bool>(false, all(!vec3<bool>(var_0.d, var_0.d, true)), (u_input.b & 1u) > (0u % u_input.a), select(var_0.d, all(vec4<bool>(var_0.d, false, true, var_0.d)), u_input.a > 13863u)), vec4<bool>(2147483647i != -10694i, var_0.d, var_0.d, true && var_0.d), !select(select(vec4<bool>(var_0.d, false, var_0.d, false), vec4<bool>(true, false, var_0.d, false), var_0.d), !vec4<bool>(true, false, var_0.d, var_0.d), var_0.d)));
    var var_3 = Struct_1(vec4<i32>(-var_0.a.x, dot(vec3<i32>(var_0.a.x, var_0.a.x, -56223i) / vec3<i32>(0i, i32(-2147483648), var_0.a.x), vec3<i32>(var_0.a.x, -29985i, 3922i)) & func_2(Struct_1(vec4<i32>(0i, 0i, var_0.a.x, 2147483647i), -1000f, var_0.b, var_0.d)).a.x, ~(~var_0.a.x) ^ var_0.a.x, 95803i), exp2(1597f), ((var_0.b + 1451f) / -1534f) - func_2(var_0).c, !select(false, !all(vec4<bool>(true, var_0.d, false, var_0.d)), var_0.d));
    return !select(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), !vec2<bool>(var_0.d, var_0.d), select(vec2<bool>(true, var_0.d), vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_0.d, false))), vec2<bool>(true, true | var_0.d)), vec2<bool>(any(vec4<bool>(var_3.d, var_3.d, var_3.d, var_3.d)), false), !(!(!vec2<bool>(var_0.d, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(func_5(func_1(true, i32(-2147483648), Struct_1(vec4<i32>(i32(-2147483648), -2622i, i32(-2147483648), 2147483647i), -903f, 797f, false))), vec2<bool>(true, !true), func_5(1749f * 271f)), func_5(2637f), !false), vec2<bool>(all(vec4<bool>(false, all(vec3<bool>(true, true, true)), !false, false)), ((2147483647i >> u_input.a) < -20025i) & true), ((countOneBits(20301i) + -(-9509i)) <= -16032i) | false);
    var var_1 = func_2(func_2(func_2(Struct_1(vec4<i32>(-1i, 28067i, i32(-2147483648), i32(-2147483648)) & vec4<i32>(1i, 831i, -1i, -1i), 343f, -887f / -960f, all(vec2<bool>(false, var_0.x))))));
    var var_2 = func_2(func_2(func_2(Struct_1(var_1.a, -var_1.c, -var_1.b, u_input.c != 4294967295u))));
    var_1 = func_2(func_2(func_2(func_2(Struct_1(var_1.a, var_2.c, var_2.b, var_1.d)))));
    var_1 = Struct_1(vec4<i32>(-47427i, ~select(0i, -2147483647i, var_0.x), ~(~var_2.a.x) / -1i, ~41931i), max(-747f, -1692f), var_1.b, all(!(!select(vec2<bool>(var_1.d, true), vec2<bool>(false, true), true))));
    var_2 = Struct_1(~var_2.a, 901f + floor(var_2.c * -399f), func_2(Struct_1(-var_1.a, var_2.c, -348f, false)).c / -exp2(step(var_1.c, -132f)), !(!(!(u_input.a != 0u))));
    let var_3 = Struct_1(var_2.a, -(1039f - 703f), -var_1.b / (min(sign(505f), var_1.c + var_1.c) * 983f), !true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.b, (u_input.a % (0u % u_input.b)) | 0u, dot(select(vec4<u32>(1u, 1u, u_input.b, 74887u) - vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), ~vec4<u32>(u_input.c, 0u, 13566u, u_input.c), !vec4<bool>(true, true, true, var_1.d)), firstTrailingBit(vec4<u32>(4294967295u, 10813u, 1u, 14288u))), 1u), min(var_2.a.yx, firstTrailingBit(vec2<i32>(-5730i, var_1.a.x) ^ vec2<i32>(-54569i, var_3.a.x)) >> select(~vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.b, 65265u), var_3.d)), ~(-var_3.a.x));
}

