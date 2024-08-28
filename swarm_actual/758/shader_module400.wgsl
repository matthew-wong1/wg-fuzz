// {"0:0":[36,185,64,12,221,127,206,169,122,22,43,65,46,34,164,19]}
// Seed: 15396639624358692861

struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-12182i, 34709i, 0i);

var<private> global1: vec4<i32>;

var<private> global2: array<vec2<bool>, 19>;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: Struct_2 = Struct_2(vec3<bool>(false, true, false), vec2<f32>(-816f, 683f));

fn func_3(arg_0: vec2<i32>) -> vec4<u32> {
    var var_0 = !(!global4.a);
    let var_1 = Struct_1(~(firstTrailingBit(clamp(u_input.b, 40101u, u_input.b)) - select(0u, u_input.b, any(vec4<bool>(false, false, true, true)))), select(~select(abs(vec4<u32>(0u, u_input.b, u_input.b, 54251u)), select(vec4<u32>(u_input.b, 13228u, u_input.b, 1u), vec4<u32>(53299u, u_input.b, u_input.b, 0u), vec4<bool>(global4.a.x, false, false, true)), !vec4<bool>(false, false, global4.a.x, false)), vec4<u32>(79691u, u_input.b, abs(14182u << 4294967295u), u_input.b), false));
    let var_2 = Struct_2(select(select(select(global4.a, vec3<bool>(var_0.x, true, false), !global4.a), !vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(!global4.a.x, var_0.x, global4.a.x == false)), !(!(!global4.a)), var_0.x), -global4.b);
    var var_3 = Struct_2(!vec3<bool>(true, var_1.a <= dot(vec4<u32>(var_1.a, u_input.b, u_input.b, var_1.a), vec4<u32>(var_1.b.x, u_input.b, u_input.b, 0u)), u_input.b < (0u * 0u)), -(-(-(var_2.b - global4.b))));
    global1 = vec4<i32>(~(~min(1i, 18377i) - dot(vec2<i32>(u_input.a.x, u_input.a.x), global0.xy)), abs(7505i), dot((vec3<i32>(u_input.a.x, 20663i, 5432i) + vec3<i32>(global1.x, global0.x, global1.x)) | ~global1.wyz, global1.wxz) | -1i, abs(-(1i | global0.x)));
    return var_1.b;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_3 {
    global3 = select(!arg_0.a.zy, global2[~u_input.b], true);
    global3 = !arg_1.xz;
    var var_0 = round(-229f - ceil(max(global4.b.x - arg_0.b.x, abs(-522f))));
    let var_1 = Struct_1(~u_input.b, countOneBits(clamp(func_3(global0.yy), reverseBits(vec4<u32>(u_input.b, 0u, 0u, u_input.b) / vec4<u32>(16627u, u_input.b, 54560u, u_input.b)), max(~vec4<u32>(0u, 78975u, u_input.b, 645u), vec4<u32>(1u, 12490u, u_input.b, u_input.b)))));
    var var_2 = -594f;
    return Struct_3(var_1, 453f, global4.a.zz, reverseBits(select(global0.x, countOneBits(global1.x), any(arg_1.yx)) & 0i), arg_0);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = -(51482i % ~(i32(-2147483648)));
    return arg_0.e;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = (firstTrailingBit(vec3<u32>(~arg_3.x, firstTrailingBit(40069u), u_input.b)) << ((~vec3<u32>(1u, u_input.b, 23489u) + select(vec3<u32>(arg_3.x, 0u, arg_3.x), vec3<u32>(arg_3.x, u_input.b, 2585u), vec3<bool>(global3.x, arg_2.a.x, arg_1))) ^ func_3(min(vec2<i32>(14659i, global1.x), global0.yx)).wyx)) - func_2(arg_2, arg_2.a).a.b.wxw;
    return Struct_1(u_input.b / u_input.b, vec4<u32>(abs(clamp(var_0.x, u_input.b, 0u) ^ (u_input.b ^ 4294967295u)), ~(var_0.x >> reverseBits(10374u)), ~arg_3.x % ~(~4294967295u), u_input.b));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = ceil(vec4<f32>(837f, -1243f, min(global4.b.x, 1171f), global4.b.x)) * select(-(vec4<f32>(-1062f, global4.b.x, 2827f, global4.b.x) + -vec4<f32>(global4.b.x, global4.b.x, global4.b.x, global4.b.x)), -vec4<f32>(898f, global4.b.x, global4.b.x, global4.b.x) / vec4<f32>(global4.b.x + global4.b.x, round(-887f), global4.b.x, global4.b.x / 493f), all(!global4.a));
    var var_1 = vec2<u32>(~u_input.b, dot(vec2<u32>(firstLeadingBit(arg_3.a) * func_2(Struct_2(vec3<bool>(false, global3.x, false), global4.b), vec3<bool>(true, true, global3.x)).a.b.x, u_input.b), ~arg_3.b.wx << vec2<u32>(7770u % 26636u, reverseBits(arg_3.b.x))));
    let var_2 = func_2(func_4(Struct_3(arg_0, 408f, select(vec2<bool>(global4.a.x, false), !global4.a.yy, !global2[arg_3.a]), 1i, Struct_2(global4.a, global4.b / global4.b))), !(!vec3<bool>(true, arg_1.x && arg_1.x, all(global4.a)))).c.x;
    return Struct_3(Struct_1(27702u, abs((arg_3.b / arg_3.b) - vec4<u32>(0u, 4294967295u, 69071u, arg_2))), -(-var_0.x), func_2(func_2(Struct_2(!vec3<bool>(global4.a.x, arg_1.x, var_2), global4.b), vec3<bool>(false, global4.a.x | var_2, false)).e, vec3<bool>(any(global4.a), var_2, false || (global3.x & true))).c, global1.x, func_2(Struct_2(global4.a, vec2<f32>(min(-433f, var_0.x), 1429f * 433f)), vec3<bool>(global3.x, true, any(global4.a))).e);
}

fn func_7(arg_0: Struct_3, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = ~countOneBits(arg_0.a.a);
    global3 = global4.a.yy;
    let var_1 = !false;
    global1 = ~vec4<i32>(~0i, abs(-arg_0.d) % ((global1.x | 26239i) | -2147483647i), max(global0.x, i32(-2147483648)), ~abs(arg_0.d));
    global4 = Struct_2(vec3<bool>(min(-95566i, min(global1.x, 43114i)) < -33680i, func_3(~vec2<i32>(global0.x, u_input.a.x)).x > (~11571u ^ u_input.b), false == !false), (vec2<f32>(arg_3.b.x, 487f + global4.b.x) / global4.b) / -vec2<f32>(1540f, 1163f));
    return func_2(func_2(Struct_2(global4.a, arg_3.b), arg_0.e.a).e, !func_6(func_2(arg_0.e, func_2(arg_3, vec3<bool>(true, global3.x, global4.a.x)).e.a).a, !(!global4.a.yy), 8061u, Struct_1(reverseBits(0u), arg_0.a.b ^ vec4<u32>(u_input.b, u_input.b, u_input.b, arg_0.a.b.x))).e.a).a;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> u32 {
    var var_0 = func_7(func_6(func_5(Struct_2(select(global4.a, vec3<bool>(true, true, global3.x), vec3<bool>(global4.a.x, true, true)), vec2<f32>(887f, arg_0)), !global4.a.x, func_4(func_2(Struct_2(global4.a, vec2<f32>(441f, global4.b.x)), vec3<bool>(false, global4.a.x, arg_3))), vec2<u32>(8014u, arg_1.b.x)), vec2<bool>(all(!global2[u_input.b]), any(select(vec4<bool>(true, false, true, global4.a.x), vec4<bool>(true, true, global4.a.x, global3.x), true))), max(4294967295u, u_input.b), func_5(Struct_2(select(vec3<bool>(false, true, false), vec3<bool>(global4.a.x, global3.x, false), arg_3), func_2(Struct_2(vec3<bool>(false, false, global3.x), vec2<f32>(arg_0, -1416f)), vec3<bool>(arg_3, true, true)).e.b), global4.a.x, func_2(func_2(Struct_2(vec3<bool>(global3.x, global4.a.x, false), vec2<f32>(arg_2.x, -614f)), vec3<bool>(global3.x, true, true)).e, global4.a).e, (vec2<u32>(131897u, arg_1.b.x) % arg_1.b.ww) ^ (vec2<u32>(0u, arg_1.a) - arg_1.b.zy))), -((global0.x - global0.x) % (9783i ^ u_input.a.x)) * ((i32(-2147483648) | (0i * global0.x)) / dot(select(vec4<i32>(-36216i, 0i, u_input.a.x, u_input.a.x), vec4<i32>(global0.x, 21095i, global0.x, -4768i), vec4<bool>(global3.x, global3.x, global3.x, arg_3)), -vec4<i32>(49079i, global0.x, global1.x, 9970i))), vec3<i32>(dot(vec3<i32>(14400i, -26049i, ~(i32(-2147483648))), vec3<i32>(countOneBits(1i), i32(-2147483648) + 22939i, 36380i)), -1i & -(-27564i), select((-1i ^ 173i) << func_3(global0.yy).x, ~func_6(Struct_1(0u, arg_1.b), global2[4294967295u], 54595u, arg_1).d, 2147483647i == firstTrailingBit(2147483647i))), func_2(Struct_2(!(!global4.a), -arg_2.zz), vec3<bool>(func_4(Struct_3(arg_1, global4.b.x, vec2<bool>(global4.a.x, global3.x), global0.x, Struct_2(global4.a, vec2<f32>(818f, -1760f)))).a.x, all(vec2<bool>(global3.x, global4.a.x)), global3.x)).e);
    return (abs(var_0.b.x) + func_7(func_2(Struct_2(global4.a, vec2<f32>(-822f, global4.b.x)), func_6(arg_1, global2[42089u], 29622u, arg_1).e.a), 2147483647i, -global1.yyx, Struct_2(vec3<bool>(global4.a.x, global3.x, true), exp2(vec2<f32>(arg_2.x, -197f)))).a) & var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~(~(vec4<u32>(u_input.b, 10699u, 120693u, u_input.b) * vec4<u32>(u_input.b, 4294967295u, 44725u, u_input.b)))) % vec4<u32>(~(~func_1(global4.b.x, Struct_1(1041u, vec4<u32>(u_input.b, 45818u, 20380u, u_input.b)), vec3<f32>(global4.b.x, 343f, -894f), global4.a.x)), ~(dot(vec2<u32>(1u, 10004u), vec2<u32>(693u, u_input.b)) / (1u + u_input.b)), (u_input.b ^ (1u ^ u_input.b)) + ~(4191u >> 2218u), 1u);
    var var_1 = Struct_3(func_2(func_6(func_7(func_6(Struct_1(u_input.b, var_0), vec2<bool>(global4.a.x, true), 39076u, Struct_1(6245u, vec4<u32>(1u, var_0.x, var_0.x, u_input.b))), u_input.a.x, vec3<i32>(1i, u_input.a.x, 1i), Struct_2(vec3<bool>(global3.x, global4.a.x, true), global4.b)), func_6(Struct_1(var_0.x, vec4<u32>(u_input.b, u_input.b, 91074u, u_input.b)), vec2<bool>(false, false), reverseBits(var_0.x), Struct_1(var_0.x, var_0)).c, func_6(Struct_1(u_input.b, var_0), global4.a.zz, 4294967295u, Struct_1(var_0.x, var_0)).a.b.x << dot(vec2<u32>(var_0.x, u_input.b), vec2<u32>(u_input.b, 0u)), Struct_1(~var_0.x, vec4<u32>(58225u, var_0.x, var_0.x, 0u))).e, vec3<bool>(global4.a.x, var_0.x == u_input.b, false)).a, -(-1158f), global2[max(60845u, ~u_input.b)], firstLeadingBit(u_input.a.x) - i32(-2147483648), Struct_2(vec3<bool>((i32(-2147483648) > 0i) | func_2(Struct_2(global4.a, vec2<f32>(612f, 765f)), vec3<bool>(true, true, false)).e.a.x, true, !true), global4.b));
    let var_2 = !true;
    let var_3 = ~reverseBits(1u) < ~(~(~(~var_1.a.b.x)));
    var_1 = func_2(func_4(func_6(func_5(func_2(Struct_2(var_1.e.a, global4.b), var_1.e.a).e, false, Struct_2(global4.a, global4.b), vec2<u32>(0u, var_0.x)), global4.a.xx, firstLeadingBit(4294967295u % 52487u), Struct_1(1u, vec4<u32>(16760u, var_1.a.b.x, 32248u, var_0.x)))), vec3<bool>(true, any(vec3<bool>(func_6(Struct_1(0u, var_0), var_1.e.a.zz, 1u, var_1.a).c.x, false, !false)), true | !(false & false)));
    let var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(countOneBits(u_input.a)) >> vec2<u32>(~7423u, var_1.a.b.x), 73598u, ~var_0.x, -(~vec4<i32>(i32(-2147483648), firstLeadingBit(19555i), i32(-2147483648), u_input.a.x)));
}

