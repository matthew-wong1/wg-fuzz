// {"0:0":[223,62,106,212,90,148,77,71]}
// Seed: 14930336465845475312

struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = max(vec4<f32>(-1630f, -((-550f - 248f) - max(677f, -500f)), 1081f, -(-min(-2246f, 215f))), -vec4<f32>(-(-293f), 595f, -1445f - -1074f, 933f) + ceil(sign(-vec4<f32>(550f, -395f, 181f, -991f))));
    var_0 = step(-(-(-vec4<f32>(var_0.x, 839f, var_0.x, -1292f))), -vec4<f32>(var_0.x, var_0.x, -var_0.x, 689f)) / vec4<f32>(round(-1967f), -1769f, -1163f, (1116f + -(-325f)) * 112f);
    let var_1 = abs(~(~((u_input.a - u_input.b) * arg_0)));
    let var_2 = select(vec4<f32>(trunc(exp2(1224f)), 1000f, var_0.x, -(-(var_0.x - 778f))), -(-(-vec4<f32>(1000f, 113f, var_0.x, 418f)) / -vec4<f32>(var_0.x, var_0.x, -768f, 444f)), select(vec4<bool>(!(!false), select(true, !false, any(vec4<bool>(false, false, false, false))), all(!vec4<bool>(false, false, true, true)), false), vec4<bool>(!(true & false), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), true, dot(vec3<u32>(0u, 41833u, 115898u), vec3<u32>(13067u, 1u, 1u)) >= (0u + 0u)), select(!(!vec4<bool>(true, false, true, false)), !(!vec4<bool>(false, true, false, true)), (0u << 4294967295u) == 0u)));
    var var_3 = abs(arg_0) / arg_0;
    return select(select(select(!vec2<bool>(true, false), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, false), all(vec4<bool>(false, true, true, true))), !false), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(!true, true && true), vec2<bool>(all(vec4<bool>(true, true, true, true)), false)), ((1004f - -173f) > (var_0.x + var_0.x)) | ((4294967295u < 0u) | !false)), select(select(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), !vec2<bool>(true, true)), select(vec2<bool>(false, true), !vec2<bool>(false, false), vec2<bool>(false, true)), (var_0.x <= -937f) && all(vec4<bool>(false, false, true, false))), !select(!vec2<bool>(false, false), !vec2<bool>(true, true), !false), select(select(!vec2<bool>(true, true), !vec2<bool>(true, true), all(vec4<bool>(false, false, true, false))), vec2<bool>(-1i >= -7567i, select(false, false, true)), select(!vec2<bool>(true, false), vec2<bool>(true, false), !vec2<bool>(true, true)))), select(select(!(!vec2<bool>(false, true)), vec2<bool>(all(vec4<bool>(true, false, true, false)), true & false), select(vec2<bool>(true, false), !vec2<bool>(true, true), vec2<bool>(true, false))), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true), false | (abs(45452u) > 1u)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = -(~u_input.b & firstLeadingBit(i32(-2147483648) % 27208i));
    var var_1 = arg_2.b;
    var var_2 = -1142f;
    let var_3 = arg_2;
    var var_4 = ~70226u;
    return vec3<u32>(max((43810u << 0u) & 1u, firstLeadingBit(1u | 25274u)) * ~(~20911u ^ ~0u), 17597u, (~(18732u | 18423u) ^ 25494u) << ~4779u);
}

fn func_2() -> vec2<u32> {
    let var_0 = dot(func_4(Struct_1(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), vec2<bool>(false, !false), select(false || true, true, false), ~(22157i & u_input.b), u_input.b), -exp2(min(135f, 433f)), Struct_1(!true, select(!vec2<bool>(false, true), func_3(22684i), any(vec2<bool>(true, true))), true, (u_input.a & 0i) >> ~0u, u_input.a)), vec3<u32>(abs(max(4294967295u, 4294967295u) * dot(vec2<u32>(288u, 0u), vec2<u32>(35961u, 71059u))), select(dot(vec3<u32>(38732u, 0u, 1u) | vec3<u32>(19353u, 0u, 13150u), vec3<u32>(4294967295u, 72547u, 0u)), 4294967295u / 4294967295u, !(false | false)), max(dot(vec2<u32>(4294967295u, 1u), firstLeadingBit(vec2<u32>(34116u, 0u))), 43158u)));
    var var_1 = vec4<f32>(select(2082f + -1000f, -887f, false), min(-floor(1000f), exp2(1922f) - min(-220f, 150f)) - (round(361f - 1000f) * -(-749f + -771f)), -(((1835f + 1942f) / -(-1051f)) / ceil(-(-1051f))), abs((-1000f - 461f) * 228f));
    var_1 = vec4<f32>(524f, sign(max(797f, -128f)), ((var_1.x / abs(-1361f)) + ((642f - -881f) * (-330f - 713f))) * 1659f, var_1.x);
    var var_2 = -(-44468i) <= 1i;
    var_2 = !any(vec3<bool>(all(!vec4<bool>(true, true, false, false)), true, false || (14208u > 0u)));
    return vec2<u32>(~(~func_4(Struct_1(true, vec2<bool>(false, false), false, 0i, u_input.a), 1408f, Struct_1(false, vec2<bool>(true, true), false, -1i, u_input.a)).x & 22679u), 83246u);
}

fn func_1() -> Struct_1 {
    let var_0 = ~func_2() >> ((~(~vec2<u32>(4294967295u, 4294967295u)) >> (~vec2<u32>(1u, 4294967295u) ^ countOneBits(vec2<u32>(1u, 1821u)))) - vec2<u32>(reverseBits(max(20671u, 0u)), func_2().x));
    var var_1 = -(exp2(-227f) - (select(789f, 609f, false) + 491f)) / -561f;
    var_1 = -(abs(-(-1274f)) * -((-715f - 1907f) * -(-2220f)));
    var var_2 = Struct_1(!(all(!vec3<bool>(true, false, true)) != select(any(vec2<bool>(true, true)), !true, !true)), select(func_3(select(-(-49070i), clamp(-1i, u_input.a, -4878i), !false)), func_3(u_input.b), !func_3(-55968i + u_input.a).x), !(!((211f == -229f) || all(vec4<bool>(true, false, false, false)))), 2147483647i, i32(-2147483648));
    var var_3 = countOneBits(1u);
    return Struct_1(all(!select(!vec3<bool>(false, var_2.b.x, var_2.b.x), !vec3<bool>(true, true, true), vec3<bool>(var_2.a, var_2.b.x, true))), vec2<bool>(!select(var_2.b.x, false, var_2.a) | any(!vec2<bool>(true, var_2.a)), !false), false, dot(countOneBits(vec2<i32>(-1i, 76757i) | ~vec2<i32>(u_input.a, 1i)), vec2<i32>(countOneBits(u_input.a), -(u_input.a + var_2.e))), -(u_input.a * -1i));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> i32 {
    let var_0 = arg_2;
    let var_1 = vec4<f32>(round(-exp2(step(1135f, -1405f))), -1084f, sign(-1202f), (375f - -(-716f + -716f)) / (select(-(-693f), -868f + -1000f, !arg_1.x) / 1176f));
    let var_2 = func_1();
    return 2147483647i;
}

fn func_6(arg_0: vec4<i32>, arg_1: i32) -> bool {
    var var_0 = -1538f;
    var var_1 = any(!select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(false, false, false)), vec3<bool>(all(vec4<bool>(true, false, false, false)), true, any(vec3<bool>(true, false, true))), false));
    var var_2 = all(vec3<bool>(dot(vec2<i32>(i32(-2147483648), arg_0.x) | vec2<i32>(arg_0.x, -42436i), vec2<i32>(u_input.b, arg_1)) >= 35733i, true, func_1().b.x));
    let var_3 = Struct_1(~(~23040u | 0u) <= ((~41462u >> ~8165u) % 1u), !select(!vec2<bool>(true, true), func_1().b, false), !(-(-62081i) <= arg_1), -countOneBits(~0i), arg_0.x);
    let var_4 = arg_0.yxw;
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, vec2<bool>(!((23858u > 90157u) & (true && true)), !all(!vec4<bool>(false, false, false, true))), all(!(!vec2<bool>(false, true))), ~29947i, u_input.a);
    var var_1 = func_6(clamp(vec4<i32>(~u_input.a, abs(u_input.b), u_input.a * 10194i, -(-1i)), (vec4<i32>(var_0.e, var_0.e, u_input.a, i32(-2147483648)) | vec4<i32>(u_input.b, var_0.e, 11858i, 53378i)) | -vec4<i32>(i32(-2147483648), -1i, u_input.a, u_input.a), vec4<i32>(u_input.a ^ 39730i, -13415i, ~20235i, var_0.e)) * vec4<i32>(u_input.a, func_5(func_1(), !vec2<bool>(var_0.b.x, true), 47256u / 7072u), u_input.a, u_input.a), i32(-2147483648) + dot(firstLeadingBit(vec2<i32>(u_input.b, u_input.b)) ^ (vec2<i32>(u_input.a, var_0.d) % vec2<i32>(26138i, i32(-2147483648))), -vec2<i32>(u_input.a, 2147483647i)));
    var var_2 = -dot(-vec3<i32>(u_input.b, var_0.e, -65067i) | firstTrailingBit(~vec3<i32>(u_input.a, 17786i, 46339i)), countOneBits(-vec3<i32>(u_input.a, 1i, var_0.e)));
    var_2 = -clamp(abs(i32(-2147483648)), -countOneBits(-1i) << (4294967295u << ~20850u), 19622i << (39704u % 38562u));
    var_2 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-303f, -630f, (669f / -577f) + -359f, exp2(-677f)) + (((vec4<f32>(-1135f, 168f, 570f, -279f) - vec4<f32>(242f, 142f, 1000f, 1708f)) - vec4<f32>(2769f, 168f, -1000f, 123f)) + (vec4<f32>(-585f, 396f, -1369f, 534f) - (vec4<f32>(-409f, -1356f, 709f, -1643f) / vec4<f32>(-799f, -1000f, 157f, -464f)))), select(u_input.a, 0i, !(!true | !var_0.b.x)), var_0.d);
}

