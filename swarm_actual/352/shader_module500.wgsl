// {"0:0":[240,125,245,172,78,58,70,181,84,125,208,5,11,69,103,139,180,21,108,156,178,143,88,51,31,41,215,218,220,206,61,33]}
// Seed: 13302049495304315027

struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32>;

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, -2294i, -1i, -21057i);

var<private> global2: vec4<f32>;

var<private> global3: array<bool, 32>;

var<private> global4: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(-1i, 16239i, -1i, 55461i), vec4<i32>(-17162i, 2147483647i, 0i, -43514i), vec4<i32>(-52238i, 31079i, -46739i, -1i), vec4<i32>(2147483647i, 1i, -28645i, 0i), vec4<i32>(i32(-2147483648), 6743i, -4439i, 4020i), vec4<i32>(0i, -9022i, -4044i, 23637i), vec4<i32>(25579i, -14803i, 1i, 0i), vec4<i32>(22563i, -16358i, -37479i, -2582i), vec4<i32>(-53477i, 1i, 2147483647i, 0i), vec4<i32>(-1i, i32(-2147483648), 0i, 1i), vec4<i32>(i32(-2147483648), 47819i, -1i, 1i), vec4<i32>(1i, 12930i, -15436i, 7721i), vec4<i32>(0i, 32118i, 8315i, 1i), vec4<i32>(2147483647i, 1i, 39200i, 0i), vec4<i32>(0i, -24636i, 1i, -1i), vec4<i32>(i32(-2147483648), 42458i, -71176i, -1i), vec4<i32>(18620i, -39354i, 2811i, 28894i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 0i), vec4<i32>(0i, -1i, 1937i, -80374i), vec4<i32>(i32(-2147483648), i32(-2147483648), 8675i, -2239i), vec4<i32>(-1i, -1i, i32(-2147483648), -11468i), vec4<i32>(0i, i32(-2147483648), -10395i, 1i), vec4<i32>(-6002i, 0i, 2147483647i, 5250i), vec4<i32>(-25590i, 0i, 2147483647i, 11894i), vec4<i32>(1i, i32(-2147483648), 4981i, 1i), vec4<i32>(-19493i, -1i, 0i, 0i), vec4<i32>(52126i, 0i, 0i, 2147483647i), vec4<i32>(2147483647i, -1i, -1i, -2959i), vec4<i32>(26378i, -8213i, 0i, 1i), vec4<i32>(0i, -1i, 50306i, -28115i), vec4<i32>(31109i, 50621i, 2147483647i, 13773i));

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> vec2<i32> {
    global0 = array<vec2<i32>, 32>();
    let var_0 = ~u_input.b ^ ((u_input.b * (countOneBits(u_input.b) << ~22113u)) & clamp(1u, u_input.b, u_input.b));
    return select(-vec2<i32>(-73156i, max(u_input.a.x, -7451i)) - (-vec2<i32>(86386i, -58271i) % global1.yy), -select(vec2<i32>(-1i, u_input.a.x), vec2<i32>(global1.x, global1.x), !global3[73317u >> u_input.b]), !(!(!vec2<bool>(arg_0, global3[u_input.b]))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = global2.xww - vec3<f32>(min(round(global2.x), max(global2.x, -1024f / global2.x)), global2.x, arg_0.d.x);
    let var_1 = dot(vec4<i32>(17740i >> 43217u, -u_input.a.x, i32(-2147483648), 1i / (-21028i ^ u_input.a.x)), clamp(countOneBits(-u_input.a), vec4<i32>(abs(global1.x), countOneBits(global1.x), -1i, 1i & 1i), vec4<i32>(u_input.a.x, -41574i, global1.x, u_input.a.x) ^ (vec4<i32>(arg_0.c.x, -72095i, -4794i, -23290i) * vec4<i32>(48432i, -1i, u_input.a.x, u_input.a.x)))) % u_input.a.x;
    var var_2 = arg_0;
    var var_3 = dot(u_input.a, vec4<i32>(-var_1, -(~u_input.a.x), var_1, global1.x | global1.x));
    var var_4 = reverseBits(global4[~u_input.b]);
    return arg_0.b;
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(Struct_1(func_3(false || all(vec3<bool>(global3[4294967295u], global3[u_input.b], global3[u_input.b])), global2.xx), global2.x, ~min(~global1.yyx, global1.zwy), global2.zy, false));
    global1 = -vec4<i32>(~(max(2147483647i, global1.x) / 22915i), max(-53703i, -(-1i)), u_input.a.x, select(-49391i, global1.x, false));
    var var_1 = Struct_1(u_input.a.wz, ceil(-1383f), vec3<i32>(~abs(global1.x), 2147483647i * global1.x, ~((-11740i * -24646i) >> ~u_input.b)), vec2<f32>(-(-738f), global2.x) - -(-(vec2<f32>(global2.x, -665f) - vec2<f32>(global2.x, global2.x))), any(!(!select(vec3<bool>(true, global3[u_input.b], global3[12480u]), vec3<bool>(global3[11279u], global3[u_input.b], true), vec3<bool>(false, true, global3[u_input.b])))));
    global2 = vec4<f32>((836f - (-var_1.b / var_1.b)) + 1724f, -(-(-select(global2.x, global2.x, true))), -global2.x, select(exp2(-func_4(Struct_1(vec2<i32>(-86851i, -1i), 289f, global1.wxz, vec2<f32>(global2.x, 1165f), false))), var_1.d.x, all(vec4<bool>(global3[u_input.b], !var_1.e, u_input.a.x != global1.x, false))));
    var_1 = Struct_1(vec2<i32>((global1.x >> 129714u) | i32(-2147483648), 0i) >> ~vec2<u32>(u_input.b, max(u_input.b, 0u)), -166f, vec3<i32>(-global1.x, ~dot(global4[u_input.b], vec4<i32>(1i, u_input.a.x, -18975i, global1.x)) & firstLeadingBit(-40511i), global1.x), -vec2<f32>(-514f + 690f, -(-2040f)) * vec2<f32>(global2.x, 151f), true);
    return Struct_1(vec2<i32>(global1.x, ((global1.x | i32(-2147483648)) - ~1i) * ~min(global1.x, 35798i)), global2.x, vec3<i32>(global1.x, min(global1.x, func_3(global3[u_input.b], var_1.d).x / -u_input.a.x), 10134i), global2.zx, !any(!select(vec2<bool>(true, global3[u_input.b]), vec2<bool>(true, false), true)));
}

fn func_5(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<f32> {
    global2 = max((vec4<f32>(global2.x + -1025f, ceil(1025f), 2080f / 1000f, -777f) * vec4<f32>(-1049f - arg_2.b, arg_2.b, -390f * arg_2.d.x, -(-783f))) * vec4<f32>(global2.x, 1000f, global2.x, global2.x), vec4<f32>(1667f, floor(global2.x), ceil(-arg_2.b), -step(-1314f, global2.x)) - (max(vec4<f32>(global2.x, global2.x, global2.x, global2.x) / vec4<f32>(global2.x, 293f, -1000f, global2.x), vec4<f32>(global2.x, arg_2.b, arg_2.b, global2.x) * vec4<f32>(-352f, -523f, global2.x, global2.x)) / min(vec4<f32>(arg_2.d.x, global2.x, global2.x, 2276f) - vec4<f32>(global2.x, 107f, global2.x, -551f), vec4<f32>(arg_2.d.x, arg_2.b, -1067f, -747f))));
    let var_0 = global2.x;
    global4 = array<vec4<i32>, 31>();
    global4 = array<vec4<i32>, 31>();
    let var_1 = Struct_2(func_2(), firstLeadingBit(select(~0i % arg_2.c.x, global1.x, true)));
    return -select(abs(abs(vec4<f32>(1377f, var_1.a.d.x, global2.x, arg_2.b))), vec4<f32>(global2.x - -arg_2.b, (-450f * 1000f) - round(var_1.a.b), var_1.a.d.x * -(-1229f), -459f), vec4<bool>(arg_2.e, true & false, !true, all(select(vec4<bool>(false, true, true, arg_0), vec4<bool>(arg_0, true, false, global3[u_input.b]), vec4<bool>(global3[5033u], false, arg_2.e, var_1.a.e)))));
}

fn func_1(arg_0: i32, arg_1: bool) -> StorageBuffer {
    global3 = array<bool, 32>();
    var var_0 = max(global2.wwy, global2.yxz / vec3<f32>(-497f, global2.x, global2.x));
    global3 = array<bool, 32>();
    var var_1 = vec4<i32>(-dot(u_input.a.wy, vec2<i32>(1i, max(-12147i, u_input.a.x))), -12484i, 40096i, u_input.a.x + arg_0);
    var var_2 = (ceil((vec4<f32>(var_0.x, var_0.x, global2.x, -342f) + vec4<f32>(984f, global2.x, -160f, global2.x)) - select(vec4<f32>(-658f, 799f, global2.x, var_0.x), vec4<f32>(var_0.x, var_0.x, -1817f, -891f), vec4<bool>(true, false, true, global3[4294967295u]))) * ceil(select(vec4<f32>(-1334f, -482f, -509f, var_0.x), vec4<f32>(-192f, -909f, -176f, -111f), global3[u_input.b]) - max(vec4<f32>(-978f, -2395f, -2195f, var_0.x), vec4<f32>(global2.x, 1908f, var_0.x, 1000f)))) + (func_5(true, -vec2<i32>(u_input.a.x, 1i) >> firstTrailingBit(vec2<u32>(u_input.b, 1u)), func_2(), u_input.a) - round((vec4<f32>(-142f, 3071f, var_0.x, 531f) * vec4<f32>(859f, -371f, 134f, global2.x)) * (vec4<f32>(var_0.x, global2.x, -1861f, -1419f) - vec4<f32>(var_0.x, -202f, var_0.x, global2.x))));
    return StorageBuffer(global2.wy, ((-u_input.a.x / -arg_0) + u_input.a.x) + u_input.a.x, trunc(abs(vec4<f32>(var_2.x, var_0.x, var_0.x, 536f)) / abs(vec4<f32>(764f, 1880f, -851f, 537f))) + vec4<f32>(-global2.x, -1096f * func_5(true, vec2<i32>(-1i, 12759i), Struct_1(vec2<i32>(global1.x, 1i), -287f, global1.yzy, vec2<f32>(global2.x, 1000f), arg_1), global4[4294967295u]).x, round(var_2.x), var_0.x), exp2(vec3<f32>(-(-var_0.x), -min(-958f, global2.x), -(-1022f))), abs(-u_input.a) << vec4<u32>(u_input.b & u_input.b, u_input.b - u_input.b, u_input.b, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 32>();
    let x = u_input.a;
    s_output = func_1(14726i, global3[4294967295u]);
}

