struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32) -> vec2<f32> {
    var var_0 = !vec3<bool>(any(vec3<bool>(true, all(vec2<bool>(true, false)), !arg_0.e.a)), !(!any(vec3<bool>(arg_0.c.a, false, arg_0.c.a))), false | !arg_0.c.a);
    var_0 = select(vec3<bool>(any(vec2<bool>(arg_0.c.a, arg_0.d != arg_0.d)), (~arg_0.a.x & reverseBits(u_input.a)) == ~(25124u << (arg_2 % 32u)), true), select(!(!select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, true, true), false)), select(select(!vec3<bool>(arg_0.c.a, false, true), !vec3<bool>(true, arg_0.e.a, var_0.x), all(vec3<bool>(arg_0.e.a, var_0.x, arg_0.c.a))), select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, arg_0.c.a, true), arg_1.x < arg_1.x), all(!vec3<bool>(arg_0.e.a, arg_0.c.a, var_0.x))), vec3<bool>(!(!arg_0.c.a), false, any(select(vec4<bool>(arg_0.c.a, arg_0.c.a, true, false), vec4<bool>(true, true, true, true), true)))), select(vec3<bool>(!all(vec2<bool>(false, true)), var_0.x, false), select(select(select(vec3<bool>(arg_0.c.a, var_0.x, true), vec3<bool>(true, arg_0.c.a, arg_0.e.a), arg_0.e.a), vec3<bool>(var_0.x, arg_0.c.a, true), any(vec4<bool>(true, false, arg_0.c.a, var_0.x))), vec3<bool>(select(false, arg_0.e.a, false), true, true), vec3<bool>(u_input.d.x == -1i, !var_0.x, var_0.x)), true));
    var var_1 = arg_0;
    var_0 = vec3<bool>(false, -389f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d - -191f) + 1154f)), true);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.d * arg_1.x), arg_1.x, -733f, _wgslsmith_f_op_f32(trunc(arg_0.d))), vec4<f32>(-126f, _wgslsmith_f_op_f32(f32(-1f) * -658f), var_1.d, var_1.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(498f)))), _wgslsmith_f_op_f32(trunc(-507f)), var_1.d)));
    return var_2.xx;
}

fn func_4(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = ~vec3<u32>(23537u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(14597u, u_input.b, u_input.a, 23773u) | vec4<u32>(u_input.a, 1u, u_input.b, 8878u), vec4<u32>(~u_input.b, u_input.b, u_input.b, u_input.b)));
    let var_1 = Struct_1(false);
    let var_2 = !all(vec4<bool>((15658u > u_input.a) && var_1.a, all(select(vec4<bool>(true, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec4<bool>(var_1.a, var_1.a, false, var_1.a))), -22251i != _wgslsmith_mod_i32(2147483647i, u_input.d.x), true));
    let var_3 = arg_0.a;
    let var_4 = vec2<bool>(true, true);
    return vec2<f32>(arg_0.a.x, arg_0.a.x);
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_1(true);
    var var_1 = 0i;
    var_1 = u_input.d.x;
    var var_2 = var_0;
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(979f, 183f) + vec2<f32>(-457f, 1909f)) - _wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec3<u32>(4294967295u, u_input.a, 11386u), u_input.b, var_0, -986f, Struct_1(true)), vec2<f32>(-203f, -563f), 8831u)))))));
    return _wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(step(-151f, 561f)));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.a.x, arg_3.a.x, true))) * _wgslsmith_f_op_f32(-985f + -716f)), arg_0.x), vec2<f32>(916f, _wgslsmith_f_op_vec2_f32(func_4(arg_3)).x)));
    let var_1 = vec2<i32>(-_wgslsmith_clamp_i32(40741i, 2147483647i, arg_2.x), -1i);
    return Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_3.a))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3) -> f32 {
    var var_0 = arg_1.a.x;
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.a.x, arg_1.a.x, 443f), vec3<f32>(arg_1.a.x, arg_1.a.x, 2173f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, -1047f, -163f) - vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x)))) - _wgslsmith_div_vec3_f32(vec3<f32>(-831f, _wgslsmith_f_op_f32(201f + -316f), _wgslsmith_f_op_f32(arg_1.a.x - 573f)), vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(func_2(arg_0.x)), _wgslsmith_f_op_f32(func_2(arg_0.x))))), u_input.d, _wgslsmith_add_vec4_i32(~(-select(vec4<i32>(2147483647i, u_input.d.x, u_input.c, -1i), vec4<i32>(-1i, 1i, u_input.c, 1i), vec4<bool>(false, arg_0.x, arg_0.x, true))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-6700i, -2147483647i, -2147483647i, u_input.c), select(vec4<i32>(34203i, -2147483647i, u_input.c, u_input.d.x), vec4<i32>(-35847i, u_input.c, u_input.c, -2715i), true))), arg_1);
    var var_2 = 1f;
    var_2 = _wgslsmith_f_op_f32(-var_1.a.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(1066f + _wgslsmith_f_op_vec2_f32(func_4(arg_1)).x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1717f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.x))) * var_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b;
    let var_1 = Struct_1(false);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-662f - _wgslsmith_f_op_f32(abs(-1639f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(var_1.a, false, var_1.a), Struct_3(vec2<f32>(2637f, 817f)))), _wgslsmith_f_op_f32(func_2(var_1.a)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-661f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1631f + _wgslsmith_f_op_f32(f32(-1f) * -1466f)) + _wgslsmith_f_op_f32(f32(-1f) * -741f))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(672f, var_2)) * vec2<f32>(var_2, var_2))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_5(vec3<f32>(var_2, var_2, var_2), u_input.d, vec4<i32>(0i, u_input.c, 52966i, 51041i), Struct_3(vec2<f32>(var_2, 280f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -751f))))));
    let var_4 = !(!(!(!select(vec2<bool>(true, var_1.a), vec2<bool>(true, var_1.a), false))));
    var var_5 = abs(firstTrailingBit(u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(-514f, 1f, u_input.c);
}

