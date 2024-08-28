struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = Struct_1(vec4<bool>((1u | ~arg_0.a.x) <= _wgslsmith_mult_u32(21630u, ~4294967295u), any(vec2<bool>(true, true)), false, true));
    var var_1 = -4573i;
    let var_2 = select(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(2147483647i, -8050i, 20030i, -33532i)), firstTrailingBit(vec4<i32>(-2435i, 2147483647i, -2147483647i, 0i))) << (u_input.c.x % 32u), reverseBits(2147483647i >> (countOneBits(u_input.e) % 32u))), -2147483647i, false);
    var var_3 = vec3<bool>(true, all(vec4<bool>(true, false, true, true)), !(!(!(var_0.a.x | true))));
    var var_4 = var_2;
    return !select(vec3<bool>(var_3.x, any(var_0.a.yyx), true), var_0.a.zzx, _wgslsmith_mod_u32(57699u & arg_0.a.x, ~u_input.a) < u_input.e);
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> f32 {
    var var_0 = Struct_2(~vec2<u32>(abs(1u), ~select(0u, 37816u, true)));
    var var_1 = 1u;
    global0 = -639f;
    var var_2 = !select(func_3(Struct_2(vec2<u32>(40290u, var_0.a.x))).zz, vec2<bool>(true, true), vec2<bool>(arg_3.x <= -752f, false));
    var var_3 = vec3<bool>(all(vec2<bool>(false & !var_2.x, var_2.x)), arg_2.x != abs(0i), true & func_3(Struct_2(firstLeadingBit(vec2<u32>(var_0.a.x, arg_0)))).x);
    return arg_3.x;
}

fn func_2() -> vec3<u32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~(~(~1u)), select(vec3<u32>(~u_input.e, ~u_input.e, ~u_input.d), select(u_input.c.zyx, _wgslsmith_add_vec3_u32(u_input.c.zzw, u_input.c.xxz), func_3(Struct_2(u_input.c.wx))), func_3(Struct_2(vec2<u32>(u_input.b.x, u_input.e))).x), vec2<i32>(countOneBits(min(-2147483647i, -9182i)), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-2147483647i, -31081i, 54605i)), firstLeadingBit(vec3<i32>(-13635i, -19845i, 23221i)))), vec3<f32>(-1279f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-221f, -920f)) * _wgslsmith_f_op_f32(abs(-727f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1713f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(392f))))));
    var var_0 = Struct_2(u_input.c.ww);
    let var_1 = all(vec2<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), true));
    var_0 = Struct_2(u_input.b);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -611f);
    return u_input.c.wzy;
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -633f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1869f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1565f), 1f)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -250f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -348f)));
    var var_2 = func_2();
    var var_3 = Struct_1(vec4<bool>(!(!all(vec4<bool>(true, true, true, true))), all(vec3<bool>(true, true, true)) & true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(false, false, false))), true));
    return !(!var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(func_1(), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, true))), vec4<bool>(any(vec4<bool>(true, 35000u >= u_input.e, all(vec4<bool>(true, false, true, false)), all(vec2<bool>(true, false)))), false, _wgslsmith_dot_vec3_i32(vec3<i32>(23235i, 1i, 2147483647i), vec3<i32>(1i, 1i, 1i)) == -_wgslsmith_div_i32(0i, 2147483647i), func_1().x));
    let var_1 = true;
    var var_2 = Struct_2(func_2().zx);
    var var_3 = 44508u;
    var var_4 = Struct_2(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<i32>(-2147483647i, -18537i)), 1f, max(_wgslsmith_sub_i32(-reverseBits(29549i), 38302i), 1i), var_2.a.x, countOneBits(-firstLeadingBit(_wgslsmith_div_i32(-2147483647i, -2147483647i))));
}

