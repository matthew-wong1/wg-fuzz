struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = arg_0;
    var var_1 = arg_1;
    let var_2 = true;
    var_1 = Struct_1(true, var_0.b);
    return 2147483647i;
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = Struct_1(any(!vec2<bool>(true, all(vec4<bool>(true, true, true, false)))), (_wgslsmith_mult_i32(-1i, func_3(Struct_1(false, true), Struct_1(false, true), 105f, Struct_1(true, false))) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)) % 32u)) > ~_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, 12732i, -6211i, -5464i)), vec4<i32>(0i, -2902i, -4218i, 2147483647i) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 27307u) % vec4<u32>(32u))));
    let var_1 = Struct_1(arg_0 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -301f))), var_0.b);
    let var_2 = Struct_1(any(vec3<bool>(all(vec2<bool>(var_0.a, false)), true, any(select(vec4<bool>(false, var_0.b, false, var_0.a), vec4<bool>(true, true, var_0.a, true), var_0.b)))), var_1.a);
    let var_3 = u_input.a;
    var_0 = Struct_1(any(select(!(!vec3<bool>(var_0.a, false, var_2.a)), select(!vec3<bool>(true, true, var_1.b), vec3<bool>(var_2.a, var_2.b, false), select(vec3<bool>(true, false, false), vec3<bool>(var_1.a, var_1.a, true), false)), all(!vec3<bool>(var_0.b, var_1.a, false)))), select(!var_1.a, true, !all(!vec2<bool>(true, var_2.a))));
    return 7962i;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = 39808u;
    var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 266f) - vec2<f32>(1969f, 362f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, 987f))), vec2<f32>(arg_1, -1156f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 938f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(441f, arg_1)))), true)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-107f + _wgslsmith_f_op_f32(-arg_1)), arg_1))));
    var_0 = ~min(select(51061u, _wgslsmith_add_u32(0u, ~4294967295u), true), abs(~min(1u, u_input.a)));
    let var_2 = true;
    return func_2(_wgslsmith_f_op_f32(-arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(!all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)))), !(true && ((i32(-1i) * -56885i) <= func_1(vec2<i32>(-13565i, -28093i), 759f, Struct_1(true, false), Struct_1(false, false)))), true || (firstTrailingBit(-20306i) <= ~1i));
    var var_1 = vec2<bool>(var_0.x, any(vec4<bool>(abs(u_input.a) >= ~u_input.a, true, false, !(var_0.x | true))));
    var_1 = var_0.xx;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(201f, 550f), vec2<f32>(833f, -785f))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(2079f, 413f) * vec2<f32>(-1000f, -738f))))))));
    var var_3 = u_input.a;
    let var_4 = var_2.x;
    var_1 = !vec2<bool>(all(vec3<bool>(false, any(vec4<bool>(var_1.x, var_1.x, var_0.x, var_1.x)), any(var_0.xx))), any(select(vec4<bool>(var_0.x, var_1.x, false, true), !vec4<bool>(var_0.x, false, true, var_1.x), !vec4<bool>(true, false, var_1.x, var_0.x))));
    var_1 = vec2<bool>(_wgslsmith_f_op_f32(-var_4) > var_4, _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(-109f - 648f) != _wgslsmith_f_op_f32(var_2.x * -1081f))) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-693f * var_2.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - 831f) + -700f)));
    var_1 = select(!(!select(vec2<bool>(true, true), !var_0.zz, !var_1.x)), select(select(!select(var_0.yz, var_0.zz, vec2<bool>(false, var_0.x)), !var_0.zz, var_1.x), select(select(vec2<bool>(true, var_0.x), var_0.yz, true), select(vec2<bool>(var_1.x, true), vec2<bool>(var_0.x, var_1.x), !var_0.zy), false), vec2<bool>(!(!var_0.x), false)), var_0.zy);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-134f - -708f), var_4))), var_2.x, _wgslsmith_f_op_f32(step(-500f, _wgslsmith_f_op_f32(step(var_2.x, 1f))))), var_2, reverseBits(_wgslsmith_add_i32(_wgslsmith_mod_i32(abs(-36938i), -17162i), func_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-8953i, 1i), vec2<i32>(0i, -55259i), vec2<i32>(6553i, 45880i)), 339f, Struct_1(var_1.x, false), Struct_1(var_0.x, false)))), vec2<i32>(reverseBits(1i), -10198i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), 76314u);
}

