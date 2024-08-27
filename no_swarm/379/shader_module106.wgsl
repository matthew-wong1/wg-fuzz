struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

var<private> global1: array<vec3<bool>, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<i32> {
    global1 = array<vec3<bool>, 23>();
    let var_0 = 554f;
    global1 = array<vec3<bool>, 23>();
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1017f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0)) * _wgslsmith_f_op_f32(sign(var_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 * var_0)))))));
    let var_2 = Struct_1(var_0, firstLeadingBit(26767u), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(select(u_input.a.x, u_input.a.x, true), u_input.a.x), u_input.a.x), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 0u) >> ((91095u << (u_input.a.x % 32u)) % 32u)), ~(vec2<u32>(u_input.a.x, 4294967295u) >> (u_input.a % vec2<u32>(32u)))), u_input.a.x);
    return global0[_wgslsmith_index_u32(1739u, 30u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(802f))), arg_3.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(f32(-1f) * -1153f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-126f, _wgslsmith_f_op_f32(select(1335f, 900f, all(vec2<bool>(false, false)))), -467f))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(-869f, 352f)), _wgslsmith_div_u32(0u, arg_0.b), 4294967295u ^ min(~(1u << (0u % 32u)), arg_0.c), ~arg_0.d & vec2<u32>(u_input.a.x & 0u, ~(~u_input.a.x)), u_input.a.x);
    var_0 = arg_3;
    let var_2 = arg_0;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_3)) + _wgslsmith_div_vec3_f32(vec3<f32>(100f, var_1.a, _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3) * arg_3))));
    return ~40755u;
}

fn func_2() -> Struct_1 {
    var var_0 = 1090f;
    var var_1 = abs(-45024i);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), Struct_1(1f, 31715u ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, 1u)), u_input.a.x, vec2<u32>(u_input.a.x, _wgslsmith_clamp_u32(abs(45097u), u_input.a.x, ~u_input.a.x)), func_4(Struct_1(-929f, 4294967295u | u_input.a.x, u_input.a.x, abs(vec2<u32>(u_input.a.x, 57539u)), 96074u), vec3<i32>(-14401i, ~(-19335i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-1i, 2147483647i))), func_3(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1332f, -1679f, -1052f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1901f, 2402f, 1432f) - vec3<f32>(814f, -1048f, 607f))))), true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1364f - 1953f) - _wgslsmith_f_op_f32(378f + 592f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-414f + 1490f))), ~(~1u), ~40720u, ~(u_input.a << (vec2<u32>(1u, 8383u) % vec2<u32>(32u))) << (u_input.a % vec2<u32>(32u)), ~select(0u, 4294967295u, true)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-185f)) - _wgslsmith_f_op_f32(ceil(-357f))), -1104f)), _wgslsmith_mod_u32(~4294967295u, ~u_input.a.x) ^ func_4(Struct_1(-543f, u_input.a.x, u_input.a.x, vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.x), vec3<i32>(-27855i, 2147483647i, -2147483647i), -global0[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_div_vec3_f32(vec3<f32>(-442f, 473f, 445f), vec3<f32>(-1990f, -730f, -386f))), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, abs(27883u)), 14081u), ~u_input.a, _wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(45574u, 0u, u_input.a.x, u_input.a.x), vec4<bool>(false, true, false, true)), abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))));
    var var_3 = true;
    var var_4 = var_2.d.b;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.e.a, var_2.e.a, all(!vec3<bool>(var_2.c, false, false))))), 352u, ~(1u | _wgslsmith_mult_u32(u_input.a.x, 37815u)), ~u_input.a, max(abs(18560u), ~(~_wgslsmith_add_u32(1u, var_2.d.c))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> bool {
    global0 = array<vec3<i32>, 30>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(226f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_div_f32(-1269f, -1463f), _wgslsmith_f_op_f32(-arg_1.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -763f)), 4294967295u, arg_2.x, vec2<u32>(~1u, ~_wgslsmith_clamp_u32(33130u, 38951u, 27025u)), ~(~arg_2.x)), true, func_2(), func_2());
    global1 = array<vec3<bool>, 23>();
    let var_1 = Struct_1(1000f, _wgslsmith_mod_u32(func_2().e, 34439u), select(~select(0u, ~37929u, false & var_0.c), var_0.b.d.x, var_0.c), ~var_0.d.d, var_0.e.e);
    let var_2 = ~countOneBits(vec4<u32>(reverseBits(u_input.a.x), ~1u, arg_0.x, ~(~4502u)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(round(-975f)), func_1(vec4<u32>(54110u, u_input.a.x, 0u, 30828u), vec4<f32>(251f, 410f, -1520f, -391f), vec3<u32>(u_input.a.x, u_input.a.x, 6210u)))), _wgslsmith_f_op_f32(sign(-391f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-833f, -1037f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(386f + 927f))))), func_2(), select(true, u_input.a.x > (_wgslsmith_mult_u32(24782u, u_input.a.x) & u_input.a.x), ~_wgslsmith_sub_i32(1i, -5487i) != (~0i >> (u_input.a.x % 32u))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -315f))), _wgslsmith_sub_u32(0u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 7246u, u_input.a.x)), _wgslsmith_sub_u32(40985u, 0u))), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(0u, u_input.a.x), ~4294967295u >> (select(0u, u_input.a.x, false) % 32u)), u_input.a, ~25998u), Struct_1(198f, firstLeadingBit(~(~u_input.a.x)), u_input.a.x, ~(vec2<u32>(u_input.a.x, u_input.a.x) >> (u_input.a % vec2<u32>(32u))) & ~u_input.a, ~103371u));
    global0 = array<vec3<i32>, 30>();
    var var_1 = var_0.d;
    var_0 = Struct_2(var_0.a, func_2(), var_0.c, Struct_1(var_0.d.a, func_2().e, ~4294967295u, vec2<u32>(countOneBits(1u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, var_0.e.c, var_1.c, var_1.d.x), vec4<u32>(49802u, u_input.a.x, 4294967295u, u_input.a.x)), vec4<u32>(u_input.a.x, 9437u, 29445u, u_input.a.x))), 0u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(702f, var_0.d.a), -1000f)), ~(28169u ^ var_1.d.x) | ~1u, 4294967295u, firstLeadingBit(vec2<u32>(~2089u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d.x, 59521u), vec2<u32>(var_0.d.b, 28433u)))), 2844u));
    global0 = array<vec3<i32>, 30>();
    let var_2 = Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), countOneBits(~max(var_0.b.e, u_input.a.x)), firstLeadingBit(4294967295u), u_input.a, ~func_4(var_0.d, firstLeadingBit(vec3<i32>(-1i, -159i, 2147483647i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(var_0.b.c, u_input.a.x, u_input.a.x, 4294967295u)), 30u)], _wgslsmith_f_op_vec3_f32(-var_0.a.wwz))), all(select(select(select(vec2<bool>(true, var_0.c), vec2<bool>(var_0.c, false), vec2<bool>(false, var_0.c)), vec2<bool>(var_0.c, true), var_0.c), !vec2<bool>(var_0.c, false), select(!vec2<bool>(false, var_0.c), select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, true), vec2<bool>(false, true)), vec2<bool>(var_0.c, true)))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.a))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 31816u, var_0.d.b)), vec3<u32>(~4294967295u, 55216u, u_input.a.x)), _wgslsmith_sub_u32(4294967295u, 0u), vec2<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1.c, var_0.b.e), vec3<u32>(var_1.d.x, u_input.a.x, 72812u)), u_input.a.x, var_0.c), u_input.a.x), u_input.a.x), Struct_1(var_1.a, ~(~(~var_0.b.d.x)), ~max(1u, 3479u ^ u_input.a.x), ~vec2<u32>(u_input.a.x & 120751u, var_1.b << (var_1.e % 32u)), func_4(var_0.d, global0[_wgslsmith_index_u32(abs(~u_input.a.x), 30u)], global0[_wgslsmith_index_u32(1u, 30u)], var_0.a.ywx)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.d.a, -154f, -1000f, 1529f))), func_2(), false, var_2.d, Struct_1(1015f, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, var_1.c) ^ vec2<u32>(1u, var_2.e.e), vec2<u32>(var_0.d.b, 15781u))), min(_wgslsmith_sub_u32(~var_0.e.c, 16443u), ~abs(var_1.e)), var_1.d, _wgslsmith_div_u32(var_0.e.e, _wgslsmith_add_u32(69148u, 0u)) ^ u_input.a.x));
    let var_4 = global1[_wgslsmith_index_u32(var_3.d.c >> (~(75539u ^ var_3.d.d.x) % 32u), 23u)];
    let var_5 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-176f + _wgslsmith_f_op_f32(-239f - _wgslsmith_f_op_f32(-var_3.b.a))), -1028f, 1616f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2591f, var_1.a))), vec2<i32>(56209i, ~((1i >> (var_0.b.e % 32u)) >> (4294967295u % 32u))));
}

