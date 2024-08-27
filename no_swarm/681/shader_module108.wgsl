struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(70459u, 319f, vec4<bool>(true, false, true, false), vec4<i32>(36183i, 0i, 2147483647i, -1i)), Struct_1(4294967295u, -1156f, vec4<bool>(false, false, false, false), vec4<i32>(60309i, i32(-2147483648), 0i, -1i)), Struct_1(1u, 435f, vec4<bool>(true, true, true, true), vec4<i32>(60332i, -33213i, 2147483647i, 210i)), Struct_1(40212u, -500f, vec4<bool>(false, true, false, true), vec4<i32>(26477i, 2147483647i, -12027i, i32(-2147483648))));

var<private> global1: vec2<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global1 = u_input.b.wz;
    var var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(global0.a.b)), 648f);
    let var_1 = countOneBits(vec4<u32>(_wgslsmith_mult_u32(firstLeadingBit(u_input.a), 4294967295u) | 69367u, global1.x, 67079u, 47360u));
    var var_2 = -max(-(u_input.c.x >> (~u_input.a % 32u)), global0.d.d.x >> (~var_1.x % 32u));
    var var_3 = Struct_2(Struct_1(~(~1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(559f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1000f))))), select(global0.c.c, !global0.b.c, global0.a.c), global0.a.d), Struct_1(~var_1.x, global0.a.b, vec4<bool>(global0.b.c.x, global0.a.c.x, all(!vec4<bool>(global0.b.c.x, false, global0.a.c.x, global0.c.c.x)), any(vec4<bool>(global0.a.c.x, true, global0.c.c.x, false))), _wgslsmith_add_vec4_i32(~(vec4<i32>(global0.c.d.x, 1i, global0.b.d.x, global0.b.d.x) ^ vec4<i32>(2147483647i, 35807i, 1i, global0.d.d.x)), vec4<i32>(~(-18025i), _wgslsmith_dot_vec2_i32(u_input.c.zx, vec2<i32>(global0.c.d.x, 9053i)), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), ~(-1i)))), global0.c, global0.b);
    return _wgslsmith_f_op_f32(-var_3.d.b);
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> Struct_3 {
    global1 = ~abs(vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(4294967295u), abs(u_input.a)), 1u));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2408f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.c.b, -1000f)))) * -206f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-451f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -544f), _wgslsmith_f_op_f32(-1000f + global0.b.b))))));
    global1 = ~(~u_input.b.zy);
    global1 = abs(u_input.b.ww);
    global1 = firstTrailingBit(vec2<u32>(~max(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 7067u, 7396u), vec3<u32>(u_input.a, 0u, global1.x)), ~u_input.a), 1u));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.b) + -1075f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = global0.c;
    let var_1 = func_2(global1.x, global0.b.c.wyy);
    let var_2 = Struct_2(global0.d, Struct_1(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global1.x, 5347u), u_input.b.xyy), abs(u_input.b.zyx)), var_1.b, !global0.a.c, vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(-3911i, 21152i, -40353i, -38978i), global0.a.d)), global0.a, Struct_1(global1.x, arg_0, select(global0.a.c, select(!var_0.c, !vec4<bool>(false, global0.b.c.x, true, true), all(vec4<bool>(var_0.c.x, true, false, var_0.c.x))), false), vec4<i32>(u_input.c.x ^ global0.b.d.x, _wgslsmith_dot_vec3_i32(u_input.c.wyz, vec3<i32>(2147483647i, u_input.c.x, var_0.d.x)), -var_0.d.x, -20497i) & u_input.c));
    global0 = var_2;
    global1 = abs(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.a ^ global0.c.a, 1u), vec2<u32>(select(~0u, ~4294967295u, var_2.c.c.x), ~_wgslsmith_sub_u32(0u, var_0.a))));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.b, func_1(-1620f), func_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.b * -1456f), _wgslsmith_f_op_f32(step(global0.a.b, 178f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2229f)))), global0.a);
    let var_0 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-262f + _wgslsmith_f_op_f32(floor(782f))))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1412f, global0.c.b)), 1264f));
    var var_1 = -firstTrailingBit(~2147483647i);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-114f)))), _wgslsmith_f_op_f32(-1168f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a, 1500f))) + -604f)));
    var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-785f)))), -1168f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_2.x) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-148f, -935f), vec2<f32>(var_2.x, -318f)), vec2<f32>(global0.b.b, global0.c.b), select(global0.c.c.zz, vec2<bool>(global0.c.c.x, global0.b.c.x), true)))))));
    var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1856f * -281f), var_2.x)))));
    let var_3 = _wgslsmith_div_i32(-7211i, -global0.c.d.x);
    var var_4 = global0.b.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(65626u, u_input.b.x, global1.x, 33175u), vec4<u32>(25778u, 1u, u_input.a, 1u))), u_input.b.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a, -1885f, var_2.x) - vec3<f32>(global0.c.b, global0.b.b, global0.b.b)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-650f, 415f, var_0.a)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, global0.d.b, global0.a.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-213f, var_0.b.a, 473f) - vec3<f32>(var_0.a, global0.b.b, -967f)))), !select(global0.c.c.wzz, global0.b.c.wwz, vec3<bool>(global0.a.c.x, true, global0.a.c.x)))), vec3<f32>(-2538f, 953f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global0.d.b))), select(func_1(-1791f).c.wwz, vec3<bool>(false, var_2.x > var_0.b.b, !global0.b.c.x), 27949u < _wgslsmith_div_u32(1u, global1.x)))));
}

