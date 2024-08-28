struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    let var_0 = u_input.a.zyz;
    global0 = all(!select(vec3<bool>(select(false, true, true), all(vec2<bool>(true, arg_2.a)), true), !vec3<bool>(arg_1.x, arg_1.x, true), -1195f >= _wgslsmith_f_op_f32(arg_2.d + arg_2.d)));
    global0 = select(arg_1.x, arg_2.e, (~(arg_2.b.x | 13853u) >= 0u) & (u_input.a.x == _wgslsmith_add_i32(select(0i, -2147483647i, arg_2.a), ~2147483647i)));
    global0 = false;
    let var_1 = -36862i;
    return !all(vec4<bool>(arg_1.x || arg_2.a, any(vec3<bool>(true, false, true)), arg_1.x, arg_2.e)) || true;
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(any(!select(vec4<bool>(false, arg_0.a, true, arg_0.a), select(vec4<bool>(false, true, true, arg_0.e), vec4<bool>(false, arg_0.e, false, false), vec4<bool>(arg_0.a, true, arg_0.e, false)), !vec4<bool>(arg_0.e, true, true, arg_0.a))), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.b, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), arg_0.b, vec2<u32>(u_input.b, arg_0.b.x))), _wgslsmith_div_vec2_u32(arg_0.b, arg_0.b)), 25074u, _wgslsmith_f_op_f32(max(arg_0.d, arg_0.d)), _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_sub_i32(-47122i, u_input.a.x)), min(~u_input.a.x, u_input.a.x)) < firstTrailingBit(firstTrailingBit(_wgslsmith_div_i32(u_input.a.x, -2147483647i))));
    var_0 = Struct_1(true, arg_0.b, arg_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1625f), arg_0.d, false)), -439f), true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)) < -357f;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, arg_0.d) - vec2<f32>(var_0.d, arg_0.d)) - vec2<f32>(arg_0.d, 366f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-141f, var_0.d)), arg_0.d) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(sign(397f))))));
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(983f + var_2.x) + var_3.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1259f) - _wgslsmith_f_op_f32(trunc(arg_0.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(1442f * 476f)))));
}

fn func_2() -> u32 {
    global0 = _wgslsmith_f_op_f32(func_3(Struct_1(true, vec2<u32>(42705u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(4294967295u, u_input.b))), 0u, _wgslsmith_f_op_f32(round(406f)), true))) > 489f;
    let var_0 = Struct_1(any(!vec3<bool>(true, all(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, false, true, true)))), ~vec2<u32>(~4294967295u, u_input.b & ~u_input.b), 24422u, -692f, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(-155f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, var_0.b, 4294967295u, -1249f, var_0.a))), var_0.d), var_0.d), -339f, 1562f)));
    let var_2 = vec4<i32>(_wgslsmith_div_i32(-u_input.a.x, u_input.a.x), _wgslsmith_sub_i32(~7967i, -19959i), u_input.a.x, ~u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, var_0.d) * vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -441f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_1.wx - var_1.yz))))));
    return ~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 4294967295u, abs(var_0.c), 51112u), firstTrailingBit(~vec4<u32>(var_0.b.x, 35207u, 77821u, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(select(vec4<i32>(u_input.a.x, u_input.a.x, 3863i, u_input.a.x), u_input.a, true), vec2<bool>(true, true), Struct_1(true, vec2<u32>(u_input.b, 0u), 84701u, _wgslsmith_f_op_f32(1054f + 148f), any(vec3<bool>(true, false, true)))) && true, vec2<u32>(4553u ^ u_input.b, func_2()), ~abs(4294967295u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-994f * _wgslsmith_f_op_f32(-1415f + _wgslsmith_f_op_f32(floor(178f)))))), select(any(vec4<bool>(false, true, true, false)), true, all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)))));
    global0 = any(select(vec3<bool>(4294967295u >= (93850u & var_0.c), var_0.a, any(!vec4<bool>(true, false, var_0.e, true))), vec3<bool>(var_0.e, var_0.a, !any(vec2<bool>(false, var_0.e))), !select(!vec3<bool>(var_0.e, false, var_0.e), vec3<bool>(false, false, false), vec3<bool>(var_0.a, var_0.a, false))));
    global0 = !var_0.a;
    var var_1 = var_0;
    var var_2 = vec2<bool>(var_0.e, !var_1.a);
    var_1 = Struct_1(var_2.x, (vec2<u32>(1u, var_0.c) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.c, var_0.b.x), vec2<u32>(var_0.b.x, var_1.b.x), ~var_0.b) % vec2<u32>(32u))) & select(vec2<u32>(18703u, countOneBits(21462u)), var_0.b >> (var_0.b % vec2<u32>(32u)), all(select(vec4<bool>(true, false, var_1.e, false), vec4<bool>(false, var_2.x, true, var_0.a), false))), _wgslsmith_add_u32(~select(_wgslsmith_mod_u32(39505u, u_input.b), _wgslsmith_add_u32(var_1.b.x, 71343u), !var_2.x), var_1.b.x), var_0.d, any(!(!select(vec4<bool>(false, false, false, var_1.e), vec4<bool>(true, true, true, var_2.x), vec4<bool>(var_1.e, var_1.e, true, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(), u_input.a.x, -125f, var_1.d);
}

