struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool;

var<private> global2: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<f32> {
    global0 = u_input.b;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -263f) + _wgslsmith_f_op_f32(ceil(921f))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2741f) + _wgslsmith_f_op_f32(sign(351f)))), ~u_input.a.yyx, !select(vec4<bool>(any(vec4<bool>(false, false, false, false)), true, false, select(false, true, true)), vec4<bool>(true, true, true, true), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))));
    let var_1 = -1i == u_input.b;
    var var_2 = _wgslsmith_div_f32(-231f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-324f - _wgslsmith_f_op_f32(-1000f * 349f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1201f - 719f) + _wgslsmith_f_op_f32(f32(-1f) * -228f)), true)))));
    global1 = -u_input.b > u_input.b;
    return vec4<f32>(1622f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-3237f))), 696f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-352f - 1282f) - _wgslsmith_f_op_f32(-2140f - -1289f)), _wgslsmith_f_op_f32(max(761f, 875f)))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> vec4<f32> {
    global1 = all(arg_0.c.xww);
    global1 = true;
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(arg_2.x, -655f), _wgslsmith_f_op_f32(-322f * 1823f), _wgslsmith_f_op_f32(arg_2.x + 509f), _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 357f, arg_2.x, arg_2.x)) + vec4<f32>(-550f, arg_2.x, arg_2.x, -316f)))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2, -428f, -1298f, _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-258f * arg_2))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(false, u_input.a.wyx, vec4<bool>(false, arg_0.x, false, false)), arg_1, vec2<f32>(arg_2, arg_2)))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_2, _wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(sign(arg_2)))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(1165f + arg_2), _wgslsmith_f_op_f32(arg_2 + -1000f), -149f, _wgslsmith_f_op_f32(max(arg_2, 1172f)))))));
    let var_1 = ~u_input.a.xxz;
    var var_2 = abs(_wgslsmith_add_i32(~u_input.b, abs(u_input.b)));
    global0 = _wgslsmith_add_i32(u_input.b, (~(-23538i) >> (var_1.x % 32u)) | _wgslsmith_clamp_i32(-1i, firstTrailingBit(0i), ~13277i)) | _wgslsmith_add_i32(-5633i, u_input.b);
    global2 = !any(!arg_0);
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    global0 = 0i;
    let var_0 = Struct_1(true, vec3<u32>(~(arg_2.b.x | 1u), 27080u, arg_2.b.x), arg_0);
    global1 = !(!(_wgslsmith_sub_i32(1i, u_input.b) < -1i));
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -874f);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = (-_wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, u_input.b), select(u_input.b, -23886i, false)) >> (u_input.c % 32u)) <= _wgslsmith_div_i32(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, 45861i, -22251i), vec4<i32>(4894i, u_input.b, u_input.b, u_input.b))), -_wgslsmith_add_i32(u_input.b, u_input.b));
    global0 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(abs(vec2<i32>(u_input.b, u_input.b))), vec2<i32>(u_input.b | 42366i, u_input.b)), abs(~vec2<i32>(-5327i, 17318i) | vec2<i32>(u_input.b, u_input.b)));
    global0 = func_4(vec4<bool>((u_input.c > max(u_input.c, 0u)) && false, false, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, false, true), false, 397f))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * 237f)))), 36457i, Struct_1(false, u_input.a.xwy, !(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-205f, -301f))))));
    var var_0 = false;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-924f, _wgslsmith_f_op_f32(ceil(-1729f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f))), 1000f);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1010f + -618f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -182f))));
    let x = u_input.a;
    s_output = StorageBuffer(13715u, reverseBits(u_input.c), u_input.a.yx);
}

