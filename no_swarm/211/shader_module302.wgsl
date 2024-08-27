struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    let var_0 = select(true, select(all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)) && select(true, true, true), true, all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(step(467f, _wgslsmith_f_op_f32(f32(-1f) * -848f))) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1000f, 1616f)))))));
    let var_1 = Struct_1(906f);
    var var_2 = (4294967295u != _wgslsmith_mod_u32(1u >> (~u_input.c.x % 32u), 748u)) | any(select(!vec4<bool>(var_0, false, var_0, false), select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(true, var_0, true, var_0), !vec4<bool>(var_0, var_0, var_0, true)), select(vec4<bool>(false, false, var_0, true), vec4<bool>(true, var_0, var_0, var_0), select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, var_0, var_0, true)))));
    let var_3 = -vec4<i32>(-u_input.b, _wgslsmith_clamp_i32(u_input.b, -1i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-19104i, 2147483647i)), vec2<i32>(47183i, u_input.d))), u_input.b, 2147483647i);
    let var_4 = reverseBits(_wgslsmith_div_u32(u_input.c.x, ~(~4294967295u) ^ _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), _wgslsmith_mod_u32(0u, 1u))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1509f + var_1.a)));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.wxw >> (vec3<u32>(31576u, max(select(_wgslsmith_add_u32(16387u, u_input.c.x), reverseBits(u_input.c.x), true), u_input.c.x), _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 0u)), reverseBits(1u))) % vec3<u32>(32u));
    let var_1 = vec4<f32>(-951f, -1000f, -1041f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-792f)) * 190f), 1f))));
    var var_2 = Struct_1(471f);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -654f))))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(func_3()));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -1152f) + 247f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a * -1145f) - _wgslsmith_f_op_f32(var_1.x - var_4.a))))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 129f, arg_0.a, 142f)))))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(abs(arg_0.a)), arg_0.a, -305f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, 1221f)))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_div_f32(1000f, arg_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-641f, -400f, -762f, 290f), vec4<f32>(-174f, -329f, 2328f, 1454f))))));
    var var_1 = func_2();
    let var_2 = true;
    var var_3 = ~select(~select(vec4<u32>(7059u, u_input.c.x, 1u, 52494u), select(vec4<u32>(0u, 89066u, 1u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 263u, 0u), vec4<bool>(var_2, false, true, true)), select(vec4<bool>(var_2, false, var_2, var_2), vec4<bool>(var_2, true, true, var_2), false)), ~vec4<u32>(9066u, 0u >> (u_input.c.x % 32u), u_input.c.x, 1u), vec4<bool>(!(!var_2), _wgslsmith_f_op_f32(sign(arg_0.a)) == -627f, all(select(vec2<bool>(true, var_2), vec2<bool>(true, var_2), false)), all(vec2<bool>(true, true))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, var_1.a, arg_0.a, 431f), vec4<f32>(var_0.x, var_1.a, -1062f, var_1.a))), vec4<f32>(_wgslsmith_f_op_f32(round(var_0.x)), 1315f, -886f, _wgslsmith_f_op_f32(-arg_0.a)))));
    return _wgslsmith_f_op_f32(-var_1.a);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_2.x));
    return Struct_1(_wgslsmith_f_op_f32(func_4(func_2())));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-9846i, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(299f, -628f)), _wgslsmith_f_op_f32(f32(-1f) * -1105f)))), vec3<f32>(117f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-217f * 378f), -608f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1521f) * -199f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-141f - _wgslsmith_f_op_f32(-1838f * 292f)))));
    var var_1 = select(vec4<bool>(true, all(vec3<bool>(true, true, true)), ~_wgslsmith_mult_u32(u_input.c.x, 26998u) <= u_input.c.x, true), !select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true), vec4<bool>(false, true, true, false)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), (91908u & u_input.c.x) < u_input.c.x), vec4<bool>(all(vec3<bool>(true, true, true)), !(_wgslsmith_mult_i32(u_input.b, u_input.d) > firstTrailingBit(11731i)), !all(vec2<bool>(false, false)), false));
    var_1 = vec4<bool>(true, all(select(vec2<bool>(false, select(var_1.x, false, var_1.x)), select(var_1.wx, select(vec2<bool>(var_1.x, false), vec2<bool>(false, var_1.x), var_1.x), var_1.x), any(vec3<bool>(false, true, var_1.x)))), select(!((var_1.x | var_1.x) | any(vec2<bool>(false, false))), !(u_input.d != 2147483647i) | !select(var_1.x, var_1.x, var_1.x), true), false);
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a, var_0.a))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-859f, -1000f), vec2<f32>(var_0.a, 222f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 748f) * vec2<f32>(-636f, var_0.a)) + vec2<f32>(-1536f, var_0.a))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1304f, var_0.a), vec2<f32>(1046f, -219f)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-223f, var_0.a) + vec2<f32>(326f, var_0.a))))))));
    var_1 = !select(select(!(!vec4<bool>(var_1.x, false, false, var_1.x)), !(!vec4<bool>(var_1.x, var_1.x, var_1.x, true)), vec4<bool>(false, all(vec3<bool>(true, var_1.x, false)), any(var_1.wyw), true)), !select(!vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false), var_1.x), false);
    let var_3 = var_2.x;
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(min(~reverseBits(0u << (u_input.c.x % 32u)), select(1u, ~_wgslsmith_sub_u32(2406u, u_input.c.x), true)));
}

