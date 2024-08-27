struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = Struct_5(Struct_2(~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, arg_1.a, 46888u, arg_2)), ~vec4<u32>(1u, 0u, u_input.d, u_input.d), ~vec4<u32>(4294967295u, u_input.d, 0u, arg_2))), _wgslsmith_f_op_vec3_f32(floor(arg_0.xxy)));
    return _wgslsmith_f_op_f32(var_0.b.x - arg_0.x);
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: Struct_4, arg_3: Struct_4) -> f32 {
    let var_0 = all(select(select(vec4<bool>(false, any(vec4<bool>(true, false, true, true)), all(vec4<bool>(false, true, true, false)), any(vec3<bool>(true, true, false))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a.a.x, arg_2.a.a.x, arg_2.a.a.x, 4294967295u), vec4<u32>(4294967295u, 0u, arg_2.a.a.x, 90455u)) != arg_2.a.a.x), false));
    let var_1 = arg_0;
    var var_2 = select(~arg_3.a.a, arg_2.a.a, !(!vec4<bool>(true, any(vec4<bool>(false, false, true, false)), arg_3.c <= u_input.a.x, true & var_0)));
    let var_3 = select(vec2<bool>(var_0, any(!(!vec4<bool>(false, false, var_0, var_0)))), select(select(!select(vec2<bool>(var_0, false), vec2<bool>(var_0, false), vec2<bool>(false, var_0)), select(!vec2<bool>(true, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), true), false), ~0u != (arg_0.a.a.x << (var_1.a.a.x % 32u))), !(!select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, false))), !(!vec2<bool>(true, var_0))), select(!(!vec2<bool>(var_0, var_0)), vec2<bool>(!var_0, select(all(vec3<bool>(var_0, true, false)), !var_0, all(vec4<bool>(true, false, false, var_0)))), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(var_0, false)))));
    var var_4 = !(abs(-34736i) >= ~u_input.a.x);
    return _wgslsmith_f_op_f32(ceil(-613f));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1432f))))) * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_4(Struct_5(arg_0, vec3<f32>(-2583f, -1847f, -1296f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-492f, 837f, 610f, -704f)), Struct_1(1u, vec3<i32>(-8011i, u_input.b, 1807i), 145f), ~0u)), Struct_4(Struct_2(vec4<u32>(1u, arg_0.a.x, 56393u, 4294967295u)), u_input.a.x, abs(u_input.a.x)), Struct_4(Struct_2(vec4<u32>(0u, 0u, 1u, 0u)), u_input.b >> (u_input.d % 32u), -8962i)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -554f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(206f, -705f)))) + -1268f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(866f + 271f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(242f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1436f * -440f))))));
    return arg_0;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_5(func_2(Struct_2(~(~vec4<u32>(4294967295u, 4294967295u, u_input.d, 4294967295u)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 261f, -1000f) * vec3<f32>(281f, 1888f, -2119f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_f_op_f32(abs(var_0.b.x)));
    var var_2 = false;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.b.zz)));
    var var_3 = vec4<u32>(u_input.d, countOneBits(u_input.d), 0u, ~53315u);
    return StorageBuffer(_wgslsmith_div_u32(firstTrailingBit(var_0.a.a.x) | var_0.a.a.x, ~_wgslsmith_dot_vec4_u32(abs(var_0.a.a), reverseBits(vec4<u32>(u_input.d, var_0.a.a.x, 1u, 4294967295u)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(func_4(Struct_5(Struct_2(var_0.a.a), var_0.b), var_1.x, Struct_4(Struct_2(var_0.a.a), u_input.c.x, u_input.a.x), Struct_4(Struct_2(vec4<u32>(27944u, 1u, var_0.a.a.x, 4294967295u)), 2147483647i, u_input.c.x)))), var_1.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-51260i, -1i), vec2<i32>(u_input.a.x, ~u_input.c.x)), -_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.c.x, 0i), ~(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

