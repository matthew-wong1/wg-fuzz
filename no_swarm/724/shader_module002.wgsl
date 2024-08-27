struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> vec4<f32> {
    let var_0 = u_input.c.x;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -669f))) * _wgslsmith_f_op_f32(271f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(305f, 1831f)))));
    let var_2 = 4294967295u;
    var var_3 = abs(u_input.a.wxx);
    let var_4 = Struct_2(217f);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * -167f), -535f, var_4.a, 1289f)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1230f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 425f))) + vec2<f32>(_wgslsmith_f_op_f32(abs(320f)), _wgslsmith_f_op_f32(max(1009f, -2046f)))), vec4<bool>(all(vec3<bool>(all(vec3<bool>(false, false, true)), any(vec4<bool>(true, false, true, false)), true)), all(vec3<bool>(all(vec4<bool>(false, false, false, false)), true, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), (u_input.a.x << (u_input.a.x % 32u)) >= 1u, false, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, select(true, true, false), true, u_input.a.x > u_input.a.x), true)), abs(1u));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x))))), !vec4<bool>(true, false, var_0.b.x, var_0.c.x), vec4<bool>(!(!var_0.b.x || select(var_0.c.x, var_0.b.x, false)), var_0.c.x, var_0.b.x, false), abs(reverseBits(var_0.d)));
    var_0 = Struct_1(vec2<f32>(var_0.a.x, -1233f), var_0.c, select(select(!(!vec4<bool>(false, false, true, var_0.b.x)), vec4<bool>(false, true, true, true), var_0.b.x), vec4<bool>(any(var_0.c.xw), true, select(false, !var_0.b.x, all(var_0.b.zzw)), false), select(false, var_0.b.x, var_0.b.x)), 0u);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_0.a)), var_0.b, var_0.c, _wgslsmith_mult_u32(_wgslsmith_div_u32(firstLeadingBit(~1u), max(firstLeadingBit(48450u), 99096u)), select(3358u, 1u, !(var_0.a.x <= 1318f))));
    var var_1 = vec3<f32>(479f, _wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x);
    return u_input.a.x < ~4294967295u;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-734f + _wgslsmith_f_op_f32(select(-172f, 511f, true))) + -642f) * -1000f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_2());
    var_0 = var_1.x;
    let var_2 = select(select(vec3<bool>(true, false, _wgslsmith_f_op_f32(-var_1.x) != _wgslsmith_f_op_f32(-2183f * 523f)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), all(vec2<bool>(true, true))), vec3<bool>(true, true, true)), !select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), !select(vec3<bool>(true, true, false), vec3<bool>(all(vec2<bool>(false, false)), true, func_3(u_input.c.x)), 658f < _wgslsmith_f_op_f32(var_1.x + var_1.x)));
    var_0 = var_1.x;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.zw), select(vec4<bool>(any(!vec3<bool>(var_2.x, var_2.x, true)), true, true, _wgslsmith_f_op_f32(abs(-771f)) <= _wgslsmith_f_op_f32(sign(var_1.x))), !vec4<bool>(!var_2.x, !var_2.x, var_2.x | true, false), select(select(select(vec4<bool>(true, false, var_2.x, var_2.x), vec4<bool>(var_2.x, false, false, false), vec4<bool>(var_2.x, true, false, var_2.x)), select(vec4<bool>(true, true, var_2.x, true), vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(var_2.x, false, false, true)), all(vec3<bool>(false, true, var_2.x))), select(!vec4<bool>(false, false, true, var_2.x), select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x), true), !vec4<bool>(var_2.x, false, false, false)), 39992u >= _wgslsmith_mod_u32(1u, u_input.a.x))), vec4<bool>(all(select(select(vec4<bool>(false, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_2.x), select(vec4<bool>(var_2.x, false, true, var_2.x), vec4<bool>(false, var_2.x, var_2.x, var_2.x), true), !vec4<bool>(false, var_2.x, var_2.x, true))), any(var_2.zy), true, !any(!var_2.zz)), ~max(u_input.a.x, _wgslsmith_div_u32(~0u, ~132509u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.b.x, _wgslsmith_sub_i32(u_input.c.x ^ (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.b.x, 36056i), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -2147483647i)) & _wgslsmith_add_i32(1i, u_input.b.x)), 0i));
    var_0 = u_input.c;
    var var_1 = func_1(-37759i);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * var_1.a.x))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_1.d, _wgslsmith_mult_u32(10283u, var_1.d), 1u, u_input.a.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -348f) * 477f), var_3.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(var_2.a - var_3.a)), var_2.a))), ~u_input.b.yx, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_1.a.x)))));
}

