// {"0:0":[46,239,245,117,86,30,57,152,47,188,40,0,0,20,8,219,254,113,249,170,130,173,246,163,206,207,219,171,176,160,187,51,151,250,100,240,227,151,70,19,171,214,249,27,186,160,160,100]}
// Seed: 14898564101084913729

struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2>;

var<private> global1: array<i32, 32>;

var<private> global2: vec3<bool>;

var<private> global3: Struct_1;

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<f32>) -> vec2<bool> {
    var var_0 = vec3<u32>(~abs(1u), ~30848u, 61343u);
    global3 = Struct_1(vec4<f32>(1592f - floor(-672f), -(global3.a.x + global3.a.x) * (-2180f + (arg_2.x - arg_2.x)), -139f, 532f), global3.b, var_0.x >> var_0.x, 0u);
    let var_1 = Struct_1(-global3.a, ~(abs(vec2<u32>(0u, 1u)) >> (global3.b ^ vec2<u32>(14288u, 25725u))) ^ firstLeadingBit(~(vec2<u32>(77239u, 4294967295u) + vec2<u32>(4294967295u, 2850u))), global3.d, max(var_0.x, var_0.x));
    global0 = array<vec2<bool>, 2>();
    var var_2 = ~(~4294967295u);
    return !select(vec2<bool>(global2.x, all(select(vec3<bool>(true, global2.x, false), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, false, true)))), !select(!vec2<bool>(global2.x, false), vec2<bool>(false, global2.x), global2.x), false);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = vec2<bool>(false, !true && all(func_3(Struct_2(arg_3.x), arg_0, select(global3.a, global3.a, global2.x))));
    global3 = Struct_1((-(vec4<f32>(-690f, global3.a.x, global3.a.x, -1197f) / global3.a) - ((vec4<f32>(355f, -381f, arg_1, arg_1) - vec4<f32>(230f, global3.a.x, 254f, 424f)) + vec4<f32>(arg_1, arg_1, global3.a.x, 704f))) / (global3.a - global3.a), max(vec2<u32>(8475u, arg_2.a), ~u_input.c.xy), ~78820u, ~(~(9550u | clamp(arg_3.x, global3.c, arg_2.a))));
    return Struct_2(u_input.c.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> vec4<f32> {
    global3 = Struct_1(-(-(vec4<f32>(-1142f, 1174f, global3.a.x, global3.a.x) / arg_1.a) / -select(vec4<f32>(1591f, global3.a.x, global3.a.x, -1882f), vec4<f32>(arg_1.a.x, global3.a.x, arg_1.a.x, -264f), global2.x)), countOneBits(arg_1.b), ~(~1u >> ~(arg_0.a % 29990u)), ((global3.d >> arg_1.c) << dot(vec3<u32>(u_input.e, 0u, arg_1.b.x), clamp(u_input.c, vec3<u32>(arg_1.d, 0u, 8538u), u_input.c))) | arg_0.a);
    global1 = array<i32, 32>();
    var var_0 = Struct_2(~(~1u));
    global3 = Struct_1(-min(vec4<f32>(682f, -global3.a.x, global3.a.x, round(-985f)), select(vec4<f32>(-1312f, global3.a.x, 1109f, global3.a.x), vec4<f32>(arg_1.a.x, global3.a.x, global3.a.x, -1485f), vec4<bool>(global2.x, true, false, global2.x))), select(vec2<u32>(4294967295u, 0u) + ~vec2<u32>(global3.b.x, 1u), vec2<u32>(arg_1.c, ~1414u), any(select(select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, global2.x, false), vec3<bool>(false, global2.x, global2.x)), select(vec3<bool>(global2.x, false, true), vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, false, false)), true))), select(47587u, ~(dot(vec4<u32>(40883u, arg_0.a, 47148u, arg_1.c), vec4<u32>(0u, 4294967295u, 36656u, 4294967295u)) << (arg_0.a + arg_1.c)), func_3(Struct_2(~1u), ~(vec2<i32>(global1[0u], -1i) / vec2<i32>(arg_2, global1[global3.b.x])), ceil(vec4<f32>(649f, -375f, 565f, global3.a.x)) * (arg_1.a / vec4<f32>(global3.a.x, global3.a.x, global3.a.x, 1217f))).x), ~((~u_input.b % u_input.c.x) * 21770u));
    var_0 = func_2(vec2<i32>(clamp(i32(-2147483648), 23677i, u_input.a), -1i), -(-872f), arg_0, vec3<u32>(~(~(4294967295u & 13573u)), 53775u, u_input.b));
    return -max(vec4<f32>(arg_1.a.x, -525f + -1000f, round(-507f) + (1571f / global3.a.x), arg_1.a.x), step((arg_1.a / arg_1.a) + vec4<f32>(arg_1.a.x, arg_1.a.x, -1060f, arg_1.a.x), sign(vec4<f32>(1580f, 1578f, arg_1.a.x, global3.a.x))));
}

fn func_1(arg_0: vec2<bool>) -> vec2<i32> {
    global3 = Struct_1(-round(func_4(func_2(vec2<i32>(-17413i, i32(-2147483648)), global3.a.x, Struct_2(u_input.e), u_input.c), Struct_1(global3.a, u_input.c.yy, u_input.e, u_input.c.x), 1i ^ 8584i)), firstTrailingBit(~countOneBits(u_input.c.xx)) - vec2<u32>(4294967295u, countOneBits(countOneBits(global3.d))), global3.b.x, global3.d);
    global1 = array<i32, 32>();
    global0 = array<vec2<bool>, 2>();
    var var_0 = (abs(-vec2<f32>(global3.a.x, -206f)) / vec2<f32>(step(global3.a.x / 132f, -(-1556f)), global3.a.x / -802f)) / ceil(round((global3.a.yy / vec2<f32>(-1000f, 2081f)) - global3.a.zy));
    var var_1 = vec2<f32>(abs(exp2(global3.a.x * var_0.x)), (var_0.x / round(sign(global3.a.x))) / 321f);
    return (~vec2<i32>(abs(-1i), ~1003i) >> (global3.b & ~(vec2<u32>(u_input.d, 0u) / vec2<u32>(u_input.b, 43600u)))) % reverseBits(((vec2<i32>(0i, 68989i) & vec2<i32>(global1[13880u], global1[0u])) + (vec2<i32>(-1i, 41774i) * vec2<i32>(i32(-2147483648), 2147483647i))) + vec2<i32>(u_input.a ^ 19940i, 29558i + 1i));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = firstLeadingBit(arg_3.c);
    var var_1 = Struct_2(4294967295u);
    let var_2 = Struct_3(clamp(vec2<u32>(~(12101u & global3.b.x), ~var_1.a + var_1.a), u_input.c.zx >> (~vec2<u32>(1u, 0u) - (vec2<u32>(0u, global3.d) | arg_3.b)), arg_3.b));
    var var_3 = func_2(arg_2 - firstTrailingBit(~(arg_2 >> vec2<u32>(var_2.a.x, 4294967295u))), -1413f, func_2(~(-arg_2), -685f, Struct_2(~(~44831u)), firstTrailingBit(max(clamp(u_input.c, u_input.c, vec3<u32>(1u, 0u, var_2.a.x)), u_input.c | u_input.c))), select(clamp((vec3<u32>(1u, 16019u, global3.b.x) / u_input.c) + (vec3<u32>(arg_3.b.x, 87421u, global3.b.x) ^ u_input.c), vec3<u32>(global3.b.x + u_input.c.x, dot(vec4<u32>(0u, 9013u, arg_3.c, 93176u), vec4<u32>(arg_3.d, global3.c, 0u, global3.c)), arg_3.c), select(vec3<u32>(25507u, 86416u, 1u) | vec3<u32>(u_input.e, 65631u, arg_3.d), u_input.c, !false)), vec3<u32>(global3.c, var_2.a.x, var_1.a), select(global2.x, !true, (0u > var_2.a.x) | arg_1.x)));
    let var_4 = vec3<f32>(global3.a.x, global3.a.x, arg_3.a.x);
    return func_2(abs(arg_2) ^ vec2<i32>(u_input.a, select(~(-32263i), arg_2.x, !arg_1.x)), global3.a.x, func_2(abs(vec2<i32>(arg_2.x, -43475i)) * select(select(vec2<i32>(-37387i, 1i), arg_2, vec2<bool>(global2.x, true)), arg_2, !false), -var_4.x, Struct_2(arg_3.d), abs(~vec3<u32>(1u, var_2.a.x, var_1.a))), u_input.c);
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = -(-clamp(countOneBits(~vec3<i32>(-40329i, -1i, arg_1)), vec3<i32>(select(16880i, u_input.a, global2.x), global1[17265u] % -17515i, dot(vec3<i32>(2147483647i, global1[global3.d], arg_1), vec3<i32>(arg_1, global1[u_input.d], global1[arg_0.a]))), vec3<i32>(u_input.a, u_input.a, arg_1)));
    global2 = !select(select(vec3<bool>(true, any(vec2<bool>(arg_2.x, false)), false), vec3<bool>(func_3(Struct_2(5376u), vec2<i32>(global1[0u], arg_1), vec4<f32>(-1810f, global3.a.x, global3.a.x, -1294f)).x, global2.x, global2.x), !(0u < u_input.c.x)), vec3<bool>((false || true) && any(vec3<bool>(false, arg_2.x, arg_2.x)), global2.x, !(u_input.e == 0u)), select(select(!vec3<bool>(global2.x, true, true), vec3<bool>(arg_2.x, true, true), select(vec3<bool>(arg_2.x, true, false), vec3<bool>(false, global2.x, true), arg_2.x)), !vec3<bool>(true, global2.x, arg_2.x), (false | arg_2.x) | false));
    global3 = Struct_1(vec4<f32>(-109f, abs(global3.a.x), round(-(-123f) - -754f), (round(800f) - (146f / 449f)) - global3.a.x), clamp(vec2<u32>(min(4294967295u & global3.b.x, 0u), arg_3.a), u_input.c.zy, vec2<u32>(0u, ~global3.d)), 1u, u_input.e);
    var_0 = firstTrailingBit(-(vec3<i32>(global1[1u], 0i, 2147483647i) >> ~u_input.c) | vec3<i32>(-3967i & 0i, dot(min(vec2<i32>(u_input.a, var_0.x), var_0.zx), clamp(vec2<i32>(-8024i, global1[u_input.c.x]), vec2<i32>(arg_1, i32(-2147483648)), var_0.zy)), -(23320i + u_input.a)));
    var var_1 = reverseBits(vec3<i32>(-18909i, clamp(2147483647i, ~1i, (-7792i * arg_1) * ~42569i), arg_1));
    return Struct_2(~(~reverseBits(34810u) & (dot(vec4<u32>(global3.c, 4294967295u, u_input.d, 0u), vec4<u32>(4294967295u, u_input.c.x, 1u, 0u)) << u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(-4879i, select(vec3<bool>(select(false, false, false), !false, global2.x), select(!vec3<bool>(true, global2.x, global2.x), vec3<bool>(false, global2.x, global2.x), u_input.a <= 2707i), !(global1[21364u] == global1[u_input.e])), func_1(select(vec2<bool>(false, false), select(global2.xy, vec2<bool>(true, global2.x), vec2<bool>(true, global2.x)), !vec2<bool>(false, global2.x))), Struct_1(vec4<f32>(global3.a.x, -479f, global3.a.x, global3.a.x), ~vec2<u32>(4294967295u, u_input.d), max(82108u, u_input.b), 85792u)), 0i, vec2<bool>(!global2.x, (abs(global3.a.x) != 1703f) & (all(vec3<bool>(false, true, global2.x)) | !true)), func_2(firstLeadingBit(select(vec2<i32>(global1[global3.b.x], global1[global3.c]) & vec2<i32>(global1[67281u], global1[52873u]), ~vec2<i32>(global1[u_input.c.x], u_input.a), global2.xz)), global3.a.x, func_2(~(vec2<i32>(42225i, global1[12723u]) ^ vec2<i32>(u_input.a, 0i)), ceil(global3.a.x * global3.a.x), func_2(vec2<i32>(-15643i, -18112i), -710f, func_5(0i, vec3<bool>(false, false, true), vec2<i32>(i32(-2147483648), -17160i), Struct_1(global3.a, vec2<u32>(u_input.b, global3.c), global3.d, 7595u)), u_input.c), ~(~vec3<u32>(0u, u_input.c.x, 53726u))), ~(abs(vec3<u32>(41419u, 56984u, u_input.c.x)) / ~u_input.c)));
    global3 = Struct_1(step(sign(vec4<f32>(2009f, global3.a.x * 754f, -1441f, global3.a.x * 1259f)), vec4<f32>(-2453f, 694f, -global3.a.x, -509f)), u_input.c.zx, global3.d, ~u_input.b);
    var var_1 = !(!(!vec3<bool>(global2.x, func_3(Struct_2(0u), vec2<i32>(u_input.a, global1[var_0.a]), global3.a).x, global2.x)));
    global2 = !select(select(vec3<bool>(all(vec3<bool>(var_1.x, var_1.x, var_1.x)), 0u <= var_0.a, false), select(select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, var_1.x, true), var_1.x), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(global2.x, true, global2.x)), var_1.x), !select(!vec3<bool>(global2.x, true, false), select(vec3<bool>(false, false, true), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, var_1.x, false)), select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, false, global2.x), var_1.x)), select(!vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(!true, var_0.a >= global3.b.x, global2.x), all(select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(global2.x, true, var_1.x), vec3<bool>(global2.x, true, var_1.x)))));
    global3 = Struct_1(global3.a, firstLeadingBit(~u_input.c.zx), ~(~(~var_0.a)), ~u_input.d);
    global1 = array<i32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global3.a.x, -(-(-vec4<f32>(global3.a.x, global3.a.x, global3.a.x, global3.a.x)) - global3.a));
}

