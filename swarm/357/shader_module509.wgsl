struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> Struct_1 {
    return Struct_1(true);
}

fn func_3(arg_0: u32) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-583f - _wgslsmith_f_op_f32(f32(-1f) * -1121f)))) + 446f);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(118f - -1000f))) * _wgslsmith_f_op_f32(max(-1573f, _wgslsmith_f_op_f32(abs(-1000f))))));
    let var_0 = ~u_input.c;
    var var_1 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, -56342i), -520i), _wgslsmith_sub_i32(-1i, u_input.a.x)), u_input.a.zz, vec2<i32>(u_input.d, 0i));
    global0 = _wgslsmith_div_f32(215f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(-877f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-317f * 1000f) + -228f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-470f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1231f, -170f)) - -343f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(845f * 184f))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> f32 {
    let var_0 = 1i;
    let var_1 = func_2();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.x))));
    let var_2 = vec4<i32>(var_0, 13795i, _wgslsmith_div_i32(var_0, -2147483647i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(var_0, 45748i), u_input.a.zx, vec2<bool>(arg_1, false)), u_input.a.zz) & (~u_input.a.x << (4294967295u % 32u)), var_0));
    global0 = 696f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(811f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(313f - -431f) * -1000f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - -1000f), -161f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1000f))))) + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(719f + -1014f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-175f)), _wgslsmith_f_op_f32(step(-382f, -240f)))) * _wgslsmith_f_op_f32(round(-156f))) - _wgslsmith_f_op_f32(func_1(~(vec3<u32>(37156u, 25198u, 19112u) ^ vec3<u32>(u_input.c, 76850u, u_input.c)), any(vec4<bool>(true, true, true, true)))))));
    global0 = _wgslsmith_f_op_f32(func_1(firstTrailingBit(vec3<u32>(u_input.c, max(46856u, ~u_input.b), 1u)), true));
    var var_0 = !select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), true), vec2<bool>(true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))));
    var_0 = select(select(vec2<bool>(all(!vec3<bool>(var_0.x, var_0.x, var_0.x)), false && (u_input.a.x < u_input.a.x)), !select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false), !vec2<bool>(true, var_0.x)), any(select(select(vec2<bool>(true, false), vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x)), !vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false)))), !vec2<bool>(!all(vec4<bool>(var_0.x, false, false, var_0.x)), false), true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(min(665f, 269f))))))) - -694f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(659f, var_1), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(577f, -739f), vec2<f32>(1936f, 230f), vec2<bool>(var_0.x, var_0.x)))))), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i << (u_input.b % 32u), firstTrailingBit(u_input.a.x)), _wgslsmith_mult_vec2_i32(u_input.a.xx, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, -1i), u_input.a.zz)))));
}

