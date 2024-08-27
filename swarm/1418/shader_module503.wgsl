struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> bool {
    global0 = array<Struct_1, 1>();
    var var_0 = select(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.d.x, u_input.b) << (firstTrailingBit(1u) % 32u), abs(~u_input.b)), 1i), abs(-_wgslsmith_mult_i32(2147483647i, u_input.b) | -8866i), all(select(vec2<bool>(true, true), vec2<bool>(4294967295u < arg_1, true), select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec4<bool>(true, false, true, true))))));
    global0 = array<Struct_1, 1>();
    let var_1 = 131f;
    global0 = array<Struct_1, 1>();
    return !(!any(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false))));
}

fn func_2() -> Struct_1 {
    let var_0 = func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1070f, 1823f) * vec2<f32>(1039f, -785f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1137f, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(232f, -1416f) * vec2<f32>(340f, -1192f)) + vec2<f32>(357f, -312f)), true))), ~countOneBits(min(_wgslsmith_add_u32(1u, u_input.c), 26534u)));
    global0 = array<Struct_1, 1>();
    let var_1 = Struct_1(_wgslsmith_clamp_i32(max(abs(u_input.d.x), -u_input.b) >> (~_wgslsmith_add_u32(u_input.a, u_input.c) % 32u), -1i, -2147483647i | u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-617f))))));
    let var_2 = Struct_2(Struct_1(2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1826f)) - _wgslsmith_f_op_f32(var_1.b * _wgslsmith_div_f32(-1026f, var_1.b)))));
    global0 = array<Struct_1, 1>();
    return var_1;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = false;
    global0 = array<Struct_1, 1>();
    var_0 = false;
    let var_1 = Struct_2(func_2());
    let var_2 = ~(~abs(_wgslsmith_mod_u32(0u, arg_1)));
    return abs(0u);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d.a.b) - arg_0.d.a.b);
    var var_1 = vec3<f32>(1665f, 778f, _wgslsmith_f_op_f32(round(arg_0.d.a.b)));
    let var_2 = firstLeadingBit(arg_0.c);
    let var_3 = vec4<u32>(21953u << (~func_4(_wgslsmith_f_op_f32(2310f - 1000f), 0u, arg_1, func_2()) % 32u), 1u, _wgslsmith_div_u32(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(37252u, reverseBits(0u), ~36956u), select(reverseBits(vec3<u32>(4294967295u, u_input.c, u_input.c)), vec3<u32>(1u, 1u, 1u), false & arg_3.a))), _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.a), vec4<u32>(u_input.c, 4294967295u, u_input.c, 0u)), 0u));
    global0 = array<Struct_1, 1>();
    return _wgslsmith_f_op_f32(round(var_1.x));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 1>();
    var var_0 = Struct_3(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, -1591f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b, 130f)))), 1u | arg_1.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(289f + arg_0.a.b), _wgslsmith_f_op_f32(-arg_2.b)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-350f, arg_2.b))), vec2<f32>(_wgslsmith_f_op_f32(-991f - 1000f), _wgslsmith_f_op_f32(min(-212f, arg_2.b)))), !any(vec2<bool>(false, true)))), ~_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-23873i, arg_0.a.a, arg_0.a.a), -vec3<i32>(-8493i, 31210i, 0i)), vec3<i32>(0i, -19329i, -30036i) & (vec3<i32>(arg_0.a.a, 0i, -2147483647i) >> (vec3<u32>(0u, 0u, u_input.a) % vec3<u32>(32u)))), arg_0);
    var_0 = Struct_3(all(!select(vec2<bool>(var_0.a, false), select(vec2<bool>(true, var_0.a), vec2<bool>(true, true), false), var_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, ~u_input.b, firstLeadingBit(-2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c.x, -28719i, arg_0.a.a), vec3<i32>(-1i, -21933i, -1i))), Struct_2(arg_2));
    global0 = array<Struct_1, 1>();
    let var_1 = _wgslsmith_add_i32(_wgslsmith_add_i32(arg_0.a.a >> (firstTrailingBit(firstTrailingBit(u_input.c)) % 32u), ~abs(~arg_0.a.a)), ~arg_2.a);
    return Struct_1(_wgslsmith_dot_vec2_i32(u_input.d, select(~var_0.c.yy, abs(u_input.d), !vec2<bool>(var_0.a, var_0.a))) >> (~(~(~arg_1.x)) % 32u), 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    var var_0 = Struct_2(func_5(Struct_2(Struct_1(2147483647i, _wgslsmith_f_op_f32(func_1(Struct_3(true, vec2<f32>(-226f, 834f), vec3<i32>(u_input.d.x, u_input.d.x, -36641i), Struct_2(Struct_1(7930i, -239f))), 48520i, vec2<i32>(-2147483647i, -2147483647i), Struct_3(true, vec2<f32>(1985f, 1006f), vec3<i32>(u_input.b, u_input.b, -1i), Struct_2(global0[_wgslsmith_index_u32(u_input.c, 1u)])))))), countOneBits(~vec2<u32>(71268u, 0u) >> (max(vec2<u32>(39657u, u_input.a), vec2<u32>(u_input.a, 1u)) % vec2<u32>(32u))), Struct_1(u_input.b >> (40209u % 32u), -2381f)));
    var_0 = Struct_2(global0[_wgslsmith_index_u32(0u, 1u)]);
    var var_1 = u_input.d;
    var var_2 = vec4<f32>(func_5(Struct_2(Struct_1(var_1.x, -1000f)), vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(u_input.c, 4294967295u, u_input.c))), Struct_1(select(1i, var_0.a.a, 0u >= u_input.a), 1218f)).b, _wgslsmith_div_f32(var_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -486f) + var_0.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.b))) + -245f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.b - var_0.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -992f)))), var_0.a.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(var_2.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.xy)), !(!all(vec3<bool>(false, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(f32(-1f) * -581f), _wgslsmith_f_op_f32(-var_3.x)))));
}

