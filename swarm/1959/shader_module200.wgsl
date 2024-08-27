struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-422f - arg_0.x), _wgslsmith_f_op_f32(trunc(-1003f)), _wgslsmith_f_op_f32(-arg_0.x), arg_3)));
    var var_1 = Struct_1(u_input.c.yx);
    var var_2 = 1u;
    var_2 = 4294967295u ^ _wgslsmith_mod_u32(~var_1.a.x, ~arg_2.a.x);
    var_2 = ~firstTrailingBit(u_input.c.x);
    return u_input.c;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_5(u_input.b, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-770f, -202f), vec2<f32>(-1158f, 766f)), vec2<f32>(1350f, -1390f)))), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1397f, -1000f) - vec2<f32>(277f, 229f))), _wgslsmith_mult_i32(u_input.a.x, u_input.b) >> (u_input.c.x % 32u), Struct_1(~u_input.c.xy), -211f)));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1029f * -283f), _wgslsmith_f_op_f32(f32(-1f) * -683f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-179f, -130f) * vec2<f32>(var_0.b.a.x, -571f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.x, 931f)))))));
    var_0 = Struct_5(var_0.a, Struct_2(_wgslsmith_f_op_vec2_f32(sign(var_1)), ~(~(~vec4<u32>(var_0.b.b.x, var_0.b.b.x, u_input.c.x, 4853u)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a.x, var_1.x, var_1.x, var_0.b.a.x) - vec4<f32>(var_0.b.a.x, 333f, 566f, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.x, var_1.x, var_0.b.a.x, var_0.b.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_0.b.a.x) - 611f), -1000f, -1120f, _wgslsmith_f_op_f32(select(-666f, _wgslsmith_f_op_f32(var_1.x + 2510f), true))))));
    var_0 = Struct_5(var_0.a, var_0.b);
    return Struct_1(u_input.c.yz);
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: f32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(413f, arg_3) * vec2<f32>(arg_3, -939f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1745f, arg_3))) - vec2<f32>(_wgslsmith_f_op_f32(sign(1142f)), arg_3)))));
    var var_1 = max(-u_input.a.x, u_input.b);
    let var_2 = -(~u_input.a);
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(883f, 424f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_3), arg_3)));
    var var_3 = arg_1.x;
    return Struct_4((_wgslsmith_dot_vec4_i32(-vec4<i32>(-6479i, 2147483647i, -18360i, u_input.b), -u_input.a) & 1i) ^ var_2.x, func_2());
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_4, arg_3: bool) -> i32 {
    let var_0 = ~(~14964u);
    var var_1 = true;
    var_1 = arg_1;
    var var_2 = u_input.c;
    var var_3 = ~func_1(arg_1, u_input.c, select(select(vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_1, false), true), vec2<bool>(any(vec2<bool>(true, arg_3)), true), select(vec2<bool>(arg_1, arg_3), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_3), vec2<bool>(arg_1, true)), vec2<bool>(true, true))), -240f).b.a.x;
    return ~0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (u_input.a.x != func_4(func_1(true, firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, 47690u, 4294967295u)), vec2<bool>(true, true), -1677f), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), func_1(false, u_input.c, select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), _wgslsmith_f_op_f32(f32(-1f) * -489f)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false)))) && !any(vec4<bool>(any(vec4<bool>(false, false, false, false)), true, true, true));
    let var_1 = vec3<bool>(true, true, true);
    let var_2 = -362f;
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2, var_2), vec2<f32>(var_2, var_2))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(881f, 1130f))))))), ~u_input.c);
    let var_4 = func_1(all(vec4<bool>(true, (u_input.c.x < u_input.c.x) != true, !(!var_1.x), (u_input.c.x & u_input.c.x) != 4294967295u)), var_3.b, vec2<bool>(any(var_1.xy), all(!vec3<bool>(var_1.x, var_1.x, true))), var_3.a.x);
    var var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1353f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_3.a.x, -1150f)))))))));
    var_3 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_3.a.x), var_3.a.x), var_3.a), vec4<u32>(u_input.c.x, ~30480u, var_4.b.a.x ^ ~67786u, u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(46382u, var_4.b.a.x, var_3.b.x, var_3.b.xxw);
}

