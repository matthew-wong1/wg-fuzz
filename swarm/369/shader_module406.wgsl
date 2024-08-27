struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>) -> vec3<bool> {
    let var_0 = true;
    let var_1 = select(vec4<bool>(any(vec2<bool>(true, true)), var_0, false, true), vec4<bool>(select(max(u_input.d.x, u_input.d.x) < 0i, var_0, u_input.c.x != 1u), var_0, any(select(vec2<bool>(false, false), vec2<bool>(var_0, true), vec2<bool>(var_0, false))) || var_0, var_0), select(select(vec4<bool>(false, var_0, select(var_0, true, false), all(vec3<bool>(true, true, var_0))), vec4<bool>(!var_0, var_0, var_0, false), 38775i >= _wgslsmith_clamp_i32(-43771i, -30374i, u_input.b)), select(select(!vec4<bool>(false, false, var_0, true), vec4<bool>(true, true, var_0, false), select(vec4<bool>(false, false, true, true), vec4<bool>(var_0, var_0, var_0, false), var_0)), select(vec4<bool>(true, true, false, var_0), vec4<bool>(false, true, var_0, false), false), var_0), any(vec3<bool>(true, true, arg_0.x >= arg_0.x))));
    let var_2 = -abs(u_input.d);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -382f) + _wgslsmith_f_op_f32(f32(-1f) * -188f))) * 433f);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-689f, 962f)) + var_3), _wgslsmith_f_op_f32(round(var_3)), var_1.x))));
    return select(var_1.xyx, var_1.zyx, !var_1.zxz);
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    return Struct_2(select(!(!func_3(vec4<u32>(u_input.a, u_input.a, u_input.a, 39471u))), !(!(!vec3<bool>(true, var_0, var_0))), all(!vec2<bool>(var_0, true))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = vec2<bool>(var_0.a.x, ((var_0.a.x & var_0.a.x) & all(select(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, true, false, var_0.a.x), false))) == all(vec2<bool>(any(vec4<bool>(var_0.a.x, false, false, false)), all(vec2<bool>(false, var_0.a.x)))));
    var var_2 = vec2<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.c.x, 24493u, u_input.a));
    var var_3 = abs(vec4<u32>(reverseBits(_wgslsmith_clamp_u32(22070u, u_input.a, 4294967295u)), 4294967295u, var_2.x, 4294967295u) ^ vec4<u32>(0u >> (~u_input.a % 32u), 54591u, 0u ^ var_2.x, u_input.a));
    let var_4 = -countOneBits(2903i);
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -915f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -11895i;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(1f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-192f)))))));
    var_0 = -u_input.d.x;
    var_0 = ~reverseBits(_wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.b, -2147483647i, u_input.d.x) >> (vec3<u32>(u_input.a, 98937u, 1u) % vec3<u32>(32u))), ~vec3<i32>(-949i, 0i, -3783i) | ~vec3<i32>(u_input.b, u_input.b, -18481i)));
    let var_2 = func_1(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-3612f)))));
    var var_3 = _wgslsmith_sub_vec3_i32(min(u_input.d, ~(vec3<i32>(-1i) * -vec3<i32>(1i, -1i, 0i))), ~u_input.d);
    var_3 = ~vec3<i32>(u_input.e.x, ~(-20257i), -17756i);
    var_0 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1615i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 491f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))), (abs(~u_input.c.x) >> (max(u_input.a, u_input.c.x) % 32u)) & u_input.c.x);
}

