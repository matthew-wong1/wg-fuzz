struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_4) -> bool {
    global0 = vec2<bool>(all(vec3<bool>(!select(global0.x, global0.x, true), global0.x, true)), true | !arg_1.b.a);
    let var_0 = arg_0;
    global0 = vec2<bool>(true, arg_1.b.a);
    var var_1 = -630f;
    let var_2 = Struct_5(arg_1.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1951f) * _wgslsmith_f_op_f32(arg_1.a.b + _wgslsmith_f_op_f32(arg_1.a.b + arg_1.b.b))))), ~min(countOneBits(_wgslsmith_sub_u32(4294967295u, 0u)), 0u));
    return all(select(select(!vec4<bool>(true, var_2.a.a, arg_1.b.a, global0.x), vec4<bool>(true, true, false, global0.x), vec4<bool>(all(vec2<bool>(false, false)), !arg_1.a.a, !global0.x, false)), vec4<bool>(true, false, !global0.x, global0.x), select(!select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(var_2.a.a, false, false, var_2.a.a), true), select(!vec4<bool>(var_2.a.a, arg_1.b.a, global0.x, global0.x), vec4<bool>(true, false, true, true), true), !vec4<bool>(var_2.a.a, false, false, false))));
}

fn func_2(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: f32) -> f32 {
    var var_0 = vec4<u32>(24244u, _wgslsmith_mod_u32(~(~1u), ~arg_0.c | 0u) ^ 24404u, 77253u, u_input.a.x);
    global0 = vec2<bool>(func_3(vec2<u32>(1u, 1u), Struct_2(Struct_1(false, _wgslsmith_div_f32(arg_3, arg_3), -arg_1.x, ~(-1039i)), arg_0.a), Struct_4(countOneBits(min(arg_1, arg_2.a)), arg_2.b)), global0.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(858f, arg_0.a.b))) + vec2<f32>(_wgslsmith_f_op_f32(sign(arg_3)), _wgslsmith_f_op_f32(floor(arg_0.b)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-123f, -877f), vec2<f32>(-1907f, arg_0.a.b)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1899f, 1359f), vec2<f32>(-825f, 2013f))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, 612f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b, -752f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_3)))) * vec2<f32>(_wgslsmith_f_op_f32(round(-248f)), _wgslsmith_f_op_f32(sign(arg_0.a.b)))));
    global0 = select(vec2<bool>(true, 1000f <= _wgslsmith_f_op_f32(abs(arg_0.a.b))), !(!vec2<bool>(false, select(false, global0.x, false))), select(!select(select(vec2<bool>(global0.x, arg_0.a.a), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(arg_0.a.a, global0.x), vec2<bool>(global0.x, global0.x), global0.x), select(vec2<bool>(false, true), vec2<bool>(false, arg_0.a.a), true)), vec2<bool>(arg_0.a.a, any(vec3<bool>(arg_0.a.a, global0.x, true)) | any(vec2<bool>(true, true))), ~(~arg_0.c) == ~(42235u >> (arg_0.c % 32u))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_3, 1346f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(163f, 1092f) + vec2<f32>(arg_3, arg_3)))))));
    return _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-arg_0.b));
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-455f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 195f) + 1207f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_5(Struct_1(global0.x, -1034f, -55014i, u_input.e.x), 527f, 1u), u_input.e, Struct_4(vec4<i32>(1i, u_input.b, u_input.e.x, -1i), Struct_3(u_input.c)), -319f))), _wgslsmith_div_f32(219f, _wgslsmith_f_op_f32(min(-149f, 2303f)))) - vec4<f32>(_wgslsmith_f_op_f32(round(1522f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1550f)), _wgslsmith_f_op_f32(sign(698f))), _wgslsmith_f_op_f32(-1012f - _wgslsmith_f_op_f32(step(-764f, -116f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-986f + -1716f), _wgslsmith_f_op_f32(f32(-1f) * -396f))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2224f + -1968f) - _wgslsmith_f_op_f32(1609f * -116f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1766f)), -1042f, _wgslsmith_f_op_f32(min(-1670f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-277f, 382f, true)) + _wgslsmith_f_op_f32(-1000f - 1127f)))))));
    let var_1 = countOneBits(3954u);
    return Struct_3(min(4294967295u, 1u));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_4 {
    var var_0 = max(u_input.a.yx, vec2<u32>(~(~(~arg_0.a)), u_input.a.x));
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(619f)), 576f, -699f, _wgslsmith_f_op_f32(ceil(-613f)))));
    var var_3 = var_2.xyy;
    let var_4 = u_input.e;
    return Struct_4(vec4<i32>(0i, u_input.e.x, 2147483647i, ~0i), func_1(!any(!arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1((~u_input.c ^ ~u_input.a.x) < u_input.d), vec3<bool>(all(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), global0.x)), any(select(!vec4<bool>(global0.x, global0.x, true, true), !vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, true, false, true)))), u_input.b < -28047i));
    global0 = vec2<bool>(global0.x, !all(!select(vec3<bool>(false, false, true), vec3<bool>(global0.x, global0.x, true), global0.x)));
    var var_1 = select(vec3<bool>(!global0.x, !all(vec4<bool>(global0.x, global0.x, true, true)) | global0.x, u_input.e.x == u_input.b), vec3<bool>(select(true, all(!vec3<bool>(global0.x, global0.x, global0.x)), true), -1i <= firstTrailingBit(_wgslsmith_mult_i32(48748i, u_input.e.x)), global0.x), any(!(!vec3<bool>(true, global0.x, global0.x))));
    var var_2 = _wgslsmith_div_vec2_u32(u_input.a.yy, vec2<u32>(_wgslsmith_mult_u32(countOneBits(4294967295u), 61351u) ^ ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~4294967295u));
    var_2 = ~u_input.a.xy;
    let var_3 = Struct_2(Struct_1(any(vec2<bool>(true, false)), -547f, _wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, ~0i), ~countOneBits(-42759i)), var_0.a.x), Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(min(162f, _wgslsmith_f_op_f32(-1015f - -872f)))), countOneBits(-(i32(-1i) * -19175i)), 1i));
    var var_4 = u_input.a & firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(51295u, var_0.b.a), var_2.x, u_input.d, ~34171u) >> (~abs(vec4<u32>(0u, 1u, 14727u, 26952u)) % vec4<u32>(32u)));
    var_4 = _wgslsmith_mult_vec4_u32((u_input.a ^ ~vec4<u32>(4294967295u, 4348u, 54632u, 4294967295u)) & u_input.a, vec4<u32>(~(~1u), ~(103000u ^ var_4.x) >> (7787u % 32u), func_4(func_4(var_0.b, !vec3<bool>(global0.x, true, global0.x)).b, !vec3<bool>(false, global0.x, false)).b.a, ~(~var_4.x)));
    let var_5 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(919f, var_3.b.b)))), vec4<u32>(var_5, var_0.b.a, 4294967295u, ~4294967295u), vec2<f32>(_wgslsmith_f_op_f32(abs(var_3.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.b) * 1f))), _wgslsmith_clamp_vec3_u32(var_4.xzz & vec3<u32>(_wgslsmith_mod_u32(1u, var_4.x), var_4.x, 1u), var_4.wxx, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(6423u, u_input.c), u_input.a.yz), u_input.a.x, _wgslsmith_mult_u32(var_0.b.a, var_0.b.a) >> (_wgslsmith_mod_u32(var_5, var_4.x) % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1812f - var_3.a.b) - _wgslsmith_f_op_f32(-var_3.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.a.b)) + _wgslsmith_f_op_f32(-var_3.a.b)), !(!global0.x)))));
}

