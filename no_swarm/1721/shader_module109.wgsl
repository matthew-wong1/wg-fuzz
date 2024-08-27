struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = arg_0 & true;
    var_0 = false;
    let var_1 = Struct_1(-1061f, ~(~_wgslsmith_sub_u32(min(32592u, 4294967295u), 1u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2276f, 538f), vec2<f32>(var_1.a, 485f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 1177f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(424f - var_1.a), -521f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-781f, 1547f) - vec2<f32>(var_1.a, var_1.a)), true))), !select(!select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), vec2<bool>(false, true)), !(!vec2<bool>(arg_0, true)), vec2<bool>(true, true))));
    let var_3 = vec4<bool>(false, all(vec4<bool>(_wgslsmith_add_u32(var_1.b, var_1.b) <= 1u, !arg_0, 2147483647i < abs(u_input.a), true)), !(arg_0 & (_wgslsmith_f_op_f32(select(var_2.x, 1708f, true)) >= var_1.a)), false);
    return var_2.x;
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<u32>(5175u, 15500u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1064f + _wgslsmith_f_op_f32(max(-722f, -1770f)))), reverseBits(var_0.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * -352f);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -842f) + _wgslsmith_f_op_f32(func_2(true)))));
    var var_4 = firstTrailingBit(14482i);
    return Struct_2(Struct_1(-1026f, ~((1u >> (var_1.b % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(36292u, 4294967295u, var_0.x, 0u), vec4<u32>(var_0.x, 41106u, 0u, 34531u)) % 32u))), ~vec3<i32>(u_input.a, firstLeadingBit(min(-1i, u_input.a)), -u_input.a), true, Struct_1(var_3.x, _wgslsmith_dot_vec2_u32(abs(~var_0), vec2<u32>(var_1.b, _wgslsmith_mult_u32(var_0.x, var_1.b)))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: bool) -> bool {
    var var_0 = func_1();
    var_0 = func_1();
    var var_1 = var_0.b.yx;
    var var_2 = func_1().d;
    var_1 = var_0.b.xx;
    return 134f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1108f, 376f)));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec2<f32>, arg_3: u32) -> f32 {
    let var_0 = func_1().a;
    let var_1 = func_1().c;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-745f, var_0.a) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + var_0.a), -1367f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-1000f, !func_3(u_input.a, -609f, false), vec2<f32>(_wgslsmith_f_op_f32(select(100f, var_0.a.a, false)), var_0.a.a), var_0.d.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_0.c == var_0.c))));
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(-15918i, var_0.b.x), _wgslsmith_mod_i32(u_input.a, func_1().b.x));
    var_2 = ~1i;
    var_2 = -_wgslsmith_sub_i32(u_input.a, 6210i);
    let x = u_input.a;
    s_output = StorageBuffer(267f, _wgslsmith_mod_u32(~var_0.a.b, _wgslsmith_mod_u32(var_0.d.b, countOneBits(var_0.a.b)) >> ((_wgslsmith_mod_u32(var_0.a.b, var_0.a.b) >> (var_0.a.b % 32u)) % 32u)), _wgslsmith_mod_vec4_i32(countOneBits(~vec4<i32>(-7273i, u_input.a, 42212i, u_input.a)), -vec4<i32>(-4410i, var_0.b.x, 0i, -43710i)) | (-(vec4<i32>(u_input.a, var_0.b.x, var_0.b.x, u_input.a) | vec4<i32>(var_0.b.x, u_input.a, 2147483647i, 1i)) | -vec4<i32>(var_0.b.x, 1i, 2147483647i, 2147483647i)), _wgslsmith_div_u32(var_0.a.b ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.b, var_0.a.b), ~vec2<u32>(var_0.d.b, 4294967295u)), var_0.a.b), vec2<u32>(4294967295u, _wgslsmith_div_u32(~var_0.a.b ^ _wgslsmith_clamp_u32(30092u, 4294967295u, 0u), max(4294967295u, var_0.d.b) ^ (var_0.d.b >> (4294967295u % 32u)))));
}

