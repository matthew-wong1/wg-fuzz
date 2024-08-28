struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, 1i, 2147483647i, 11195i);

var<private> global1: vec2<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec2<bool> {
    global1 = _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_mult_u32(abs(arg_0.a.d), u_input.b & 4294967295u), 4294967295u)), vec2<u32>(arg_0.a.b, reverseBits(u_input.b)) << (u_input.c % vec2<u32>(32u)), ~(vec2<u32>(global1.x, 1u) >> (u_input.c % vec2<u32>(32u))));
    let var_0 = vec2<u32>(select(arg_0.a.b, 1u, all(!select(vec2<bool>(false, true), vec2<bool>(true, arg_0.a.a.x), true))), arg_0.a.b);
    let var_1 = _wgslsmith_f_op_f32(sign(-419f));
    var var_2 = u_input.a;
    let var_3 = !(!select(~u_input.d >= u_input.a, !all(vec4<bool>(false, true, arg_0.a.c, arg_0.a.c)), false));
    return vec2<bool>(false == !any(vec3<bool>(true, true, true)), true & arg_0.a.c);
}

fn func_2() -> u32 {
    global0 = (~(-(~vec4<i32>(u_input.d, global0.x, global0.x, u_input.a))) ^ abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, u_input.e.x, -7147i, -33458i), vec4<i32>(global0.x, global0.x, 0i, 0i)))) & abs(abs(select(vec4<i32>(54172i, global0.x, global0.x, u_input.a), reverseBits(vec4<i32>(-1i, 1i, global0.x, 73816i)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), false))));
    let var_0 = Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_f_op_f32(trunc(-350f)) >= 1f), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), func_3(Struct_2(Struct_1(vec2<bool>(true, true), 4294967295u, true, 61705u, vec3<f32>(-2959f, 119f, -1368f)), 1266f), global0.x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), func_3(Struct_2(Struct_1(vec2<bool>(false, true), global1.x, false, 3679u, vec3<f32>(234f, -730f, -2409f)), _wgslsmith_f_op_f32(-1090f * 431f)), ~(i32(-1i) * -27845i))), _wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global1.x, global1.x, global1.x), vec4<u32>(67314u, global1.x, 1u, u_input.b)), ~0u), select(~vec3<u32>(15064u, global1.x, 15905u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, global1.x, u_input.b), vec3<u32>(u_input.b, 1u, 1u)), false)), vec3<u32>(22589u, ~u_input.b, reverseBits(1u))), true, ~select(_wgslsmith_div_u32(global1.x, u_input.b), 0u, true), vec3<f32>(_wgslsmith_f_op_f32(-1f), -344f, -1369f));
    global1 = ~(~u_input.c | _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(1u, global1.x)), u_input.c, _wgslsmith_mult_vec2_u32(vec2<u32>(64003u, var_0.d), vec2<u32>(4294967295u, global1.x))));
    let var_1 = Struct_1(!var_0.a, _wgslsmith_clamp_u32(~reverseBits(0u), u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d, _wgslsmith_mod_u32(var_0.d, 10079u), firstTrailingBit(var_0.b)), countOneBits(firstLeadingBit(vec3<u32>(0u, 1u, 0u))))), _wgslsmith_f_op_f32(-var_0.e.x) >= _wgslsmith_f_op_f32(-var_0.e.x), 4294967295u, _wgslsmith_f_op_vec3_f32(-var_0.e));
    let var_2 = _wgslsmith_sub_i32(u_input.a, min(reverseBits(_wgslsmith_dot_vec2_i32(global0.wz, global0.wx)), _wgslsmith_mod_i32(u_input.d >> (var_0.b % 32u), _wgslsmith_clamp_i32(u_input.a, -47266i, -44206i))) << (((_wgslsmith_sub_u32(0u, u_input.b) & global1.x) << (_wgslsmith_dot_vec2_u32(abs(u_input.c), u_input.c & u_input.c) % 32u)) % 32u));
    return ~(~global1.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> vec2<u32> {
    var var_0 = ~vec4<u32>(min(u_input.b, 1084u), func_2(), _wgslsmith_sub_u32(~(~47145u), 1u), abs(select(~global1.x, ~u_input.c.x, true)));
    global1 = u_input.c;
    let var_1 = firstLeadingBit(~(-1i));
    var_0 = ~(~_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, ~u_input.b, 4294967295u >> (u_input.b % 32u), ~u_input.b), ~vec4<u32>(4294967295u, 4294967295u, global1.x, 0u)));
    var_0 = _wgslsmith_mod_vec4_u32(firstTrailingBit(select(reverseBits(vec4<u32>(global1.x, 249u, 4294967295u, global1.x)), vec4<u32>(var_0.x, 63691u, var_0.x, 4294967295u), vec4<bool>(true, true, true, true)) >> (vec4<u32>(1u, global1.x >> (global1.x % 32u), ~63175u, ~global1.x) % vec4<u32>(32u))), ~(~(select(vec4<u32>(46403u, 0u, 1u, var_0.x), vec4<u32>(3467u, 1u, 15899u, var_0.x), true) & abs(vec4<u32>(25999u, 26522u, 4294967295u, u_input.b)))));
    return ~(~var_0.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -11201i;
    global0 = ~reverseBits(vec4<i32>(-46292i, -1i, global0.x, 17615i));
    var var_1 = _wgslsmith_dot_vec2_u32(func_1(~abs(select(vec2<i32>(u_input.a, -2147483647i), u_input.e, false)), -254f), ~vec2<u32>(~(~76908u), 4294967295u));
    global1 = u_input.c;
    var var_2 = abs(~1i);
    var_2 = u_input.e.x;
    var var_3 = 1f;
    let var_4 = Struct_1(vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))), max(~(~40773u), ~1u) >> (u_input.c.x % 32u), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true)), func_3(Struct_2(Struct_1(vec2<bool>(true, false), global1.x, true, global1.x, vec3<f32>(-1124f, -102f, -946f)), -1785f), -724i))), 7765u & global1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(u_input.e, ~_wgslsmith_div_vec2_i32(abs(u_input.e), vec2<i32>(-18762i, 2147483647i))), _wgslsmith_add_vec4_u32(vec4<u32>(~4294967295u, reverseBits(~47671u), var_4.d, ~func_1(global0.wx, var_4.e.x).x), select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, var_4.b, 3617u, u_input.b), firstTrailingBit(vec4<u32>(28234u, 1u, 4294967295u, var_4.b))), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, var_4.b, 4294967295u), vec4<u32>(52772u, 56826u, var_4.d, global1.x)), select(!vec4<bool>(false, false, false, var_4.c), vec4<bool>(var_4.c, true, var_4.c, var_4.c), select(vec4<bool>(var_4.c, var_4.a.x, var_4.c, var_4.a.x), vec4<bool>(false, true, true, var_4.c), false)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.e.x)))))), global0.yxy);
}

