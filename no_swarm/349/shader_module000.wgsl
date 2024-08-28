struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4936u), vec2<u32>(4294967295u, 43210u), vec2<u32>(48622u, 43361u), vec2<u32>(1u, 1u), vec2<u32>(0u, 45441u), vec2<u32>(33218u, 18503u), vec2<u32>(847u, 8892u), vec2<u32>(1u, 1u), vec2<u32>(40060u, 0u), vec2<u32>(15917u, 9322u), vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(8928u, 0u), vec2<u32>(2835u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(19295u, 44695u), vec2<u32>(26268u, 0u), vec2<u32>(53071u, 49249u), vec2<u32>(20720u, 4294967295u), vec2<u32>(12093u, 68319u), vec2<u32>(10732u, 4495u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 17051u), vec2<u32>(20957u, 1890u), vec2<u32>(11994u, 3464u), vec2<u32>(9175u, 1u), vec2<u32>(38097u, 56520u), vec2<u32>(0u, 1u), vec2<u32>(0u, 4294967295u));

var<private> global2: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(true, Struct_1(vec3<i32>(-23170i, -38532i, 42617i)), vec3<bool>(false, true, false)), Struct_2(true, Struct_1(vec3<i32>(-12047i, 55221i, -16670i)), vec3<bool>(true, true, false)), Struct_2(false, Struct_1(vec3<i32>(1i, i32(-2147483648), -1i)), vec3<bool>(false, true, true)), Struct_2(false, Struct_1(vec3<i32>(1i, 6700i, 7769i)), vec3<bool>(false, true, false)), Struct_2(true, Struct_1(vec3<i32>(-13095i, i32(-2147483648), 2147483647i)), vec3<bool>(true, true, true)), Struct_2(true, Struct_1(vec3<i32>(i32(-2147483648), -31525i, -1i)), vec3<bool>(false, false, true)), Struct_2(true, Struct_1(vec3<i32>(1i, -25076i, 1i)), vec3<bool>(true, true, true)), Struct_2(false, Struct_1(vec3<i32>(2147483647i, 1i, 0i)), vec3<bool>(false, true, true)), Struct_2(true, Struct_1(vec3<i32>(-2981i, 1i, 1i)), vec3<bool>(false, false, true)), Struct_2(true, Struct_1(vec3<i32>(-83548i, 27955i, -55417i)), vec3<bool>(true, true, true)), Struct_2(false, Struct_1(vec3<i32>(49716i, 23579i, -4849i)), vec3<bool>(false, false, false)));

var<private> global3: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    return ~abs(_wgslsmith_clamp_u32(~u_input.b, reverseBits(4294967295u), ~u_input.b) & _wgslsmith_sub_u32(1u, ~u_input.b));
}

fn func_2() -> vec3<bool> {
    let var_0 = 0u;
    global3 = Struct_1(vec3<i32>(0i >> (1u % 32u), -2147483647i, 0i));
    global0 = Struct_1(global0.a);
    let var_1 = global2[_wgslsmith_index_u32(select(func_3(global3.a, vec3<bool>(false, all(vec2<bool>(false, false)), true), Struct_1(abs(vec3<i32>(global3.a.x, global0.a.x, 1i))), vec2<bool>(true, true)), var_0, any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true))) << (~_wgslsmith_clamp_u32(4294967295u, 97698u, 0u) % 32u), 11u)];
    global1 = array<vec2<u32>, 31>();
    return vec3<bool>(false, var_1.c.x, var_1.a);
}

fn func_1(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_2(arg_0.a.c.x, Struct_1(-(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 1i, 10855i), vec3<i32>(global0.a.x, -1i, global0.a.x)) << (vec3<u32>(64039u, u_input.c, u_input.b) % vec3<u32>(32u)))), select(select(func_2(), vec3<bool>(arg_0.a.a | false, 19511i >= global0.a.x, true), any(vec4<bool>(arg_0.a.c.x, arg_0.a.a, arg_0.a.a, arg_0.a.a))), !vec3<bool>(arg_0.a.c.x, arg_0.a.a, true), !vec3<bool>(arg_0.a.a, any(arg_0.a.c), false)));
    var_0 = global2[_wgslsmith_index_u32(38306u, 11u)];
    let var_1 = ~_wgslsmith_clamp_u32(u_input.b >> ((firstLeadingBit(u_input.c) >> (~u_input.b % 32u)) % 32u), u_input.b, u_input.b);
    var var_2 = select(~global3.a.zy, arg_0.a.b.a.xy, vec2<bool>(false, false));
    var_0 = Struct_2(all(vec4<bool>(false, func_2().x, true, !all(vec4<bool>(true, false, true, false)))), arg_0.a.b, vec3<bool>(!(-var_0.b.a.x == -17284i), func_2().x, !var_0.a));
    return _wgslsmith_div_u32(u_input.b, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    var var_1 = firstTrailingBit(abs(~vec4<u32>(103340u, u_input.b, 4294967295u, 13171u) | firstTrailingBit(abs(vec4<u32>(81692u, 4294967295u, u_input.b, 17895u)))));
    global2 = array<Struct_2, 11>();
    let var_2 = _wgslsmith_dot_vec3_u32(var_1.xwx, _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(abs(var_1.x), func_1(Struct_3(global2[_wgslsmith_index_u32(16161u, 11u)]))), _wgslsmith_mult_u32(4294967295u, u_input.b), ~(~var_1.x)), vec3<u32>(1u | (var_1.x ^ 0u), u_input.c, ~func_3(vec3<i32>(-73515i, 2147483647i, 30922i), vec3<bool>(false, false, false), Struct_1(global3.a), vec2<bool>(true, true))), var_1.xww));
    global3 = Struct_1(u_input.a.zyy);
    let var_3 = Struct_3(global2[_wgslsmith_index_u32(~reverseBits(var_2), 11u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(global3.a, var_3.a.b.a), _wgslsmith_f_op_f32(-156f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2026f - _wgslsmith_f_op_f32(-1101f - 553f))))), 0i, _wgslsmith_dot_vec4_i32(-u_input.a, countOneBits(max(u_input.a, vec4<i32>(0i, 1i, u_input.a.x, u_input.d)))) | 13297i);
}

