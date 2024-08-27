struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>) -> vec4<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.x)), arg_0.x) + arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x * -669f))), _wgslsmith_f_op_f32(-740f * arg_0.x), select(true, any(vec2<bool>(false, false)), true))) - 500f), arg_0.x);
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-538f + arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(min(-165f, 133f))))), -235f));
    var_0 = arg_0;
    let var_1 = select(u_input.b, vec3<u32>(1u, 1u, firstLeadingBit(u_input.b.x)), false & all(vec2<bool>(true, true)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_0.x - -170f), _wgslsmith_f_op_f32(arg_0.x + -982f), -106f, 286f), vec4<f32>(1139f, _wgslsmith_f_op_f32(step(261f, var_0.x)), var_0.x, var_0.x), vec4<bool>(true, true, true, 659f > var_0.x)))));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(var_2.a))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-405f, 460f, 1000f, 1257f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1652f, -415f, -1350f, 944f)))), vec4<f32>(_wgslsmith_f_op_f32(1682f + 840f), _wgslsmith_f_op_f32(min(527f, 368f)), 418f, _wgslsmith_f_op_f32(select(577f, 768f, true)))))));
    let var_1 = u_input.e;
    var var_2 = -10779i;
    let var_3 = !(!(!(!(u_input.e.x == var_1.x))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-403f - var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x)), 243f, _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, 1509f, 1381f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, -359f, -181f) - vec4<f32>(var_0.a.x, var_0.a.x, -707f, var_0.a.x))) * _wgslsmith_f_op_vec4_f32(func_3(var_0.a.xyy)))));
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) * vec4<f32>(1000f, -193f, -593f, -347f)) + var_0.a), vec4<f32>(_wgslsmith_div_f32(-1809f, var_0.a.x), var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-322f)))))));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = vec4<i32>(-35875i, u_input.e.x, abs(2147483647i), 1i);
    var var_1 = 1i <= u_input.e.x;
    return Struct_2(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2229f - arg_1) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_3(arg_2.a.a.wwy)).x))));
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1522f, -403f, 500f, 1367f))), vec4<f32>(-847f, _wgslsmith_div_f32(798f, 487f), -947f, -710f)) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1781f)), 516f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1062f, -338f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1444f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-154f, 1052f)))))));
    var var_1 = func_4(7141u, _wgslsmith_f_op_f32(438f * 1220f), Struct_2(func_2(), -1472f), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    let var_2 = Struct_2(func_2(), var_0.a.x);
    var var_3 = var_1.a;
    var_3 = func_2();
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, 919f, var_1.a.a.x) + vec3<f32>(var_1.b, var_2.a.a.x, -536f)))).x)), 1000f, _wgslsmith_f_op_f32(-var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2071f, -1000f, -1763f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-442f, -120f, 504f) * vec3<f32>(-393f, 577f, 523f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1528f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1835f, -563f)), -201f, all(vec2<bool>(false, false)))), 220f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-341f, -1370f, 1276f, var_0.x) - vec4<f32>(var_0.x, var_0.x, var_0.x, 243f)))))));
    var var_2 = _wgslsmith_div_i32(18897i, ~(-u_input.c));
    var_2 = _wgslsmith_clamp_i32(i32(-1i) * -50145i, 1i, 2147483647i);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0, _wgslsmith_f_op_vec3_f32(exp2(var_0)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_1.a.yxw), vec3<f32>(-432f, var_1.a.x, var_1.a.x))))));
    var var_4 = vec3<i32>(u_input.e.x, u_input.e.x, _wgslsmith_mult_i32(u_input.e.x, ~(-1i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.zy, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -153f))));
}

