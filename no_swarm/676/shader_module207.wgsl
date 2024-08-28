// {"0:0":[243,26,127,21,71,16,218,102]}
// Seed: 8687336612283752832

struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: Struct_3,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(39352i, vec4<i32>(0i, i32(-2147483648), -35225i, 2147483647i), false, vec2<f32>(1111f, -2257f)), Struct_1(-43690i, vec4<i32>(1i, 1602i, -85725i, 17122i), true, vec2<f32>(504f, 1511f)));

var<private> global1: array<vec2<bool>, 5>;

var<private> global2: u32 = 6104u;

var<private> global3: vec4<f32> = vec4<f32>(-252f, -936f, 1000f, -366f);

var<private> global4: vec3<bool>;

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>) -> i32 {
    let var_0 = select(select(!select(vec4<bool>(false, global0.a.c, global0.b.c, true), select(vec4<bool>(global4.x, global4.x, false, false), vec4<bool>(global4.x, true, global4.x, true), false), !global0.b.c), select(vec4<bool>(!true, global0.a.c, global0.a.c, arg_0.x), !(!vec4<bool>(false, arg_0.x, global4.x, true)), global0.a.c), select(vec4<bool>(!false, 14884u <= 21984u, i32(-2147483648) == 1i, !false), select(!vec4<bool>(true, true, true, false), select(vec4<bool>(global0.b.c, true, true, true), vec4<bool>(global0.a.c, false, false, true), false), false), vec4<bool>(arg_0.x && global0.b.c, !false, true && global4.x, !arg_0.x))), !select(select(!vec4<bool>(global0.b.c, global0.b.c, true, global4.x), !vec4<bool>(true, arg_0.x, true, true), vec4<bool>(true, false, global4.x, false)), vec4<bool>(arg_0.x, u_input.a > 2147483647i, 55469u <= 1u, 1u != 17347u), !select(vec4<bool>(true, global0.b.c, false, true), vec4<bool>(global0.b.c, global4.x, arg_0.x, global4.x), true)), trunc(-step(-1911f, arg_1.x)) <= (round(-1000f - arg_1.x) + -292f));
    var var_1 = Struct_4(~(~countOneBits(vec4<u32>(4294967295u, 44456u, 35013u, 1u) / vec4<u32>(1u, 74682u, 0u, 0u))), min(31023i, 242i >> 9248u), Struct_3(~u_input.b, Struct_2(global0.b, Struct_1(-23421i + 2147483647i, global0.a.b, true, arg_1.xy * arg_1.yx))), vec4<f32>(global0.a.d.x, -min(global0.b.d.x, -(-610f)), round(arg_1.x), -arg_1.x));
    global0 = var_1.c.b;
    var var_2 = Struct_2(Struct_1(abs(global0.b.b.x), global0.b.b, false, global0.a.d), global0.a);
    let var_3 = var_1.c;
    return -29152i;
}

fn func_2() -> vec3<bool> {
    global3 = -(-vec4<f32>(378f, -(-1239f), 1192f + global3.x, max(global3.x, 1000f)) - trunc(-vec4<f32>(527f, global3.x, -301f, global0.a.d.x)));
    var var_0 = select(~(select(-vec3<i32>(23375i, global0.b.a, global0.a.a), -global0.b.b.zyx, !vec3<bool>(global4.x, global4.x, true)) | vec3<i32>(min(-13597i, -71971i), ~u_input.b, 1i - -30791i)), vec3<i32>(firstLeadingBit(-55790i), u_input.b, ~abs(-3995i)) + (vec3<i32>(-21358i, u_input.a, global0.b.b.x >> 0u) + (global0.b.b.yzz | vec3<i32>(u_input.b, global0.b.a, u_input.b))), !(!(!select(vec3<bool>(global4.x, global0.b.c, global0.a.c), vec3<bool>(true, false, global0.a.c), vec3<bool>(true, global0.a.c, global0.a.c)))));
    let var_1 = !vec2<bool>(false || all(vec2<bool>(global0.b.c, true)), !(!(global4.x != global4.x)));
    let var_2 = Struct_3(985i ^ select(var_0.x << ~1u, clamp(-38254i, ~(i32(-2147483648)), ~(-1i)), !global4.x | (-1i >= 67662i)), Struct_2(Struct_1(-(~8893i), global0.a.b, !global4.x, global0.a.d), Struct_1(13807i, countOneBits(~global0.a.b), !false, -(-global3.yy))));
    var var_3 = global0.b;
    return vec3<bool>(-(-(var_2.b.b.a + var_3.b.x)) < ~func_3(!var_1, global3.ywz), !(min(-1819f, trunc(var_3.d.x)) < -global3.x), all(var_1));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global4 = select(!func_2(), !(!vec3<bool>(all(vec2<bool>(true, global4.x)), any(vec4<bool>(global4.x, true, global0.a.c, true)), any(vec2<bool>(false, true)))), select(!vec3<bool>(false, global0.a.c && global4.x, 398f == 1864f), func_2(), !select(!vec3<bool>(global0.a.c, global4.x, global0.b.c), !vec3<bool>(false, global4.x, global0.a.c), vec3<bool>(false, global4.x, false))));
    let var_0 = trunc(vec4<f32>(max(global0.b.d.x, ceil(-714f)) + -global0.b.d.x, -938f, -(711f / 372f), ceil(-339f)));
    var var_1 = Struct_3(~(select(min(0i, u_input.a), u_input.b, global4.x) * i32(-2147483648)), Struct_2(Struct_1(arg_0 + (-15997i + 20735i), max(global0.b.b - vec4<i32>(global0.a.b.x, global0.b.b.x, 8526i, 0i), global0.a.b), true, global0.b.d), Struct_1(u_input.b, vec4<i32>(min(-16597i, arg_0), -20022i, u_input.b & 62564i, abs(arg_0)), !(!false), sign(-global0.b.d))));
    let var_2 = ~(34139u >> firstTrailingBit(~(~1u)));
    var var_3 = func_2();
    return var_1.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> vec2<u32> {
    var var_0 = vec2<f32>(-func_1(1i).b.d.x, -1000f);
    global1 = array<vec2<bool>, 5>();
    global0 = arg_0.b;
    let var_1 = vec3<bool>(global4.x & global0.a.c, true, func_1(1i).a.c);
    let var_2 = u_input.b & (-(-select(arg_0.a, -30443i, global4.x)) ^ (-(~global0.a.a) - (arg_0.b.a.b.x + (1i >> 0u))));
    return abs(vec2<u32>(~4294967295u, dot(~arg_1, arg_1 & arg_1) | 4294967295u));
}

fn func_5(arg_0: vec2<u32>, arg_1: u32) -> StorageBuffer {
    let var_0 = select(!(!select(!vec4<bool>(false, global4.x, global4.x, true), vec4<bool>(true, global4.x, true, true), !vec4<bool>(global4.x, global0.a.c, global0.b.c, false))), select(select(select(!vec4<bool>(global0.b.c, true, true, true), vec4<bool>(true, false, false, true), !vec4<bool>(true, false, true, global4.x)), !(!vec4<bool>(false, global0.b.c, global0.a.c, global4.x)), any(select(vec4<bool>(false, global0.b.c, false, global4.x), vec4<bool>(true, false, false, false), vec4<bool>(global0.b.c, false, false, false)))), !(!(!vec4<bool>(global0.b.c, global0.a.c, global0.b.c, true))), select(!(!vec4<bool>(false, global4.x, global0.b.c, false)), !select(vec4<bool>(global0.a.c, true, global0.a.c, false), vec4<bool>(false, global0.a.c, false, true), false), select(vec4<bool>(global0.a.c, global4.x, global0.b.c, global0.a.c), select(vec4<bool>(global0.b.c, true, true, true), vec4<bool>(true, false, true, global4.x), vec4<bool>(false, global4.x, true, global4.x)), false))), all(!func_2()));
    global2 = ~func_4(Struct_3(i32(-2147483648), Struct_2(func_1(-30878i).b, global0.a)), ~select(vec3<u32>(arg_0.x, 14280u, arg_1) + vec3<u32>(arg_1, arg_0.x, arg_1), vec3<u32>(24685u, arg_0.x, 1373u) * vec3<u32>(1u, arg_1, arg_1), var_0.wzz)).x;
    var var_1 = true;
    var_1 = !(!all(var_0));
    var var_2 = Struct_2(Struct_1(~u_input.b + ((global0.b.a << arg_0.x) + global0.a.a), -firstTrailingBit(vec4<i32>(i32(-2147483648), global0.b.a, global0.a.a, -1708i) + vec4<i32>(10948i, global0.b.b.x, -1i, global0.a.b.x)), !(!false), -(-global3.xz)), global0.a);
    return StorageBuffer(~(~vec4<u32>(0u, 0u, 55178u, 4294967295u)) | abs((vec4<u32>(arg_0.x, arg_0.x, arg_1, 8679u) << vec4<u32>(4294967295u, arg_0.x, 1u, 90754u)) & ~vec4<u32>(78942u, arg_1, arg_0.x, arg_1)), -(-vec3<f32>(global3.x + var_2.b.d.x, trunc(1446f), select(2537f, var_2.b.d.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 5>();
    let var_0 = vec3<bool>(any(!select(!vec4<bool>(global4.x, global4.x, global4.x, true), select(vec4<bool>(global4.x, true, global4.x, true), vec4<bool>(global0.a.c, true, global4.x, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(global4.x, false, false, true), vec4<bool>(true, true, false, true)))), global0.b.c, global4.x);
    var var_1 = false;
    global3 = vec4<f32>(-165f / -272f, global3.x, global0.a.d.x, trunc(global3.x + -(-global3.x)));
    global4 = var_0;
    let var_2 = global3.x;
    global4 = var_0;
    let x = u_input.a;
    s_output = func_5(func_4(Struct_3(u_input.a + max(u_input.a, global0.b.a), func_1(global0.a.b.x)), ~(~(~vec3<u32>(4294967295u, 44077u, 60634u)))), ((~7442u & firstTrailingBit(1u)) & ((53427u / 20983u) << (0u & 26428u))) ^ (~countOneBits(4294967295u) * (21037u / ~4294967295u)));
}

