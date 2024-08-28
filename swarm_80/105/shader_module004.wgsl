struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_5) -> vec2<bool> {
    let var_0 = Struct_2(arg_0.b, Struct_1(_wgslsmith_add_i32(u_input.a.x, u_input.a.x) ^ arg_0.a.a, vec3<bool>(true, all(arg_0.a.b.yy), true)), arg_0.a);
    var var_1 = Struct_4(var_0.c, vec3<bool>(!var_0.b.b.x, true, var_0.b.b.x), Struct_1(firstTrailingBit(firstTrailingBit(var_0.c.a)), select(select(arg_0.a.b, vec3<bool>(var_0.b.b.x, false, false), vec3<bool>(false, var_0.c.b.x, false)), select(select(vec3<bool>(var_0.b.b.x, arg_0.a.b.x, arg_0.a.b.x), vec3<bool>(var_0.c.b.x, false, false), arg_0.a.b), select(vec3<bool>(var_0.c.b.x, true, arg_0.a.b.x), vec3<bool>(true, arg_0.a.b.x, var_0.b.b.x), true), select(var_0.b.b.x, var_0.c.b.x, false)), true)));
    var_1 = Struct_4(var_1.a, var_0.b.b, Struct_1(-15537i, var_0.b.b));
    var_1 = Struct_4(Struct_1(max(2147483647i, arg_0.c), !arg_0.a.b), vec3<bool>(all(vec4<bool>(true, true, true, var_0.b.b.x)) && var_1.b.x, var_1.a.b.x | any(var_1.b), true), Struct_1(1i, arg_0.a.b));
    let var_2 = false;
    return select(!arg_0.a.b.yx, !select(!arg_0.a.b.zx, var_1.c.b.yy, !var_0.b.b.x), vec2<bool>(var_2, true));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = false;
    var var_1 = vec4<bool>(all(!select(vec2<bool>(true, false), func_3(Struct_5(Struct_1(-38756i, vec3<bool>(var_0, var_0, true)), 2276f, arg_0.x)), true)), var_0, true, !any(!select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(false, var_0, var_0, true), vec4<bool>(false, true, false, var_0))));
    var_1 = !vec4<bool>(false, (_wgslsmith_f_op_f32(trunc(arg_3.a)) > arg_3.a) && var_1.x, !(!var_1.x), true);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -844f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_3.a, 506f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -403f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(755f, arg_3.a) - -511f))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: i32) -> i32 {
    var var_0 = abs(~(-vec4<i32>(~arg_2, min(-4779i, 0i), -2147483647i, select(2147483647i, u_input.a.x, arg_1.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a, arg_0.a)) - _wgslsmith_f_op_f32(f32(-1f) * -574f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2056f * -972f) + _wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, arg_1.x))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1403f, var_1.x, 1151f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(u_input.a, vec4<i32>(40088i, -1i, 1i, -2147483647i), _wgslsmith_clamp_u32(1u, 51844u, 4294967295u), Struct_3(arg_0.a))))));
    var_1 = var_2.xz;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, -617f))), -180f) * -895f) >= _wgslsmith_f_op_f32(-var_1.x);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var_0 = func_1(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1042f) * -894f))), vec2<bool>(false, -u_input.a.x < 1i), -1i);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(floor(1000f)), Struct_1(-1i, select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, true, true, false)), true, func_3(Struct_5(Struct_1(1i, vec3<bool>(false, true, false)), 1738f, u_input.a.x)).x), true)), Struct_1(44595i, vec3<bool>(true, true, true)));
    var var_2 = all(!vec3<bool>(any(!vec2<bool>(var_1.b.b.x, var_1.c.b.x)), !var_1.c.b.x, var_1.a <= _wgslsmith_f_op_f32(-var_1.a)));
    var var_3 = max(vec2<i32>(-7587i, -1i), u_input.a.zx);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(1540u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 2942f)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, -2110f), vec2<f32>(833f, -1614f))))));
}

