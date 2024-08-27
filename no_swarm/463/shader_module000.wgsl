struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1088f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(u_input.b, _wgslsmith_f_op_f32(1745f - _wgslsmith_f_op_f32(max(115f, -1000f))), vec4<bool>(true, true, true, true));
    let var_1 = !select(!vec3<bool>(1u > u_input.d, false != var_0.c.x, false), vec3<bool>(var_0.c.x, !var_0.c.x, all(select(vec2<bool>(var_0.c.x, true), vec2<bool>(var_0.c.x, var_0.c.x), var_0.c.xw))), false);
    let var_2 = firstLeadingBit(_wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, vec4<i32>(u_input.b, 31174i, var_0.a, var_0.a)), ~u_input.c | -vec4<i32>(u_input.c.x, var_0.a, var_0.a, -2147483647i)));
    global0 = var_0.b;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-965f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * -1861f)), _wgslsmith_div_f32(1185f, _wgslsmith_f_op_f32(select(-2688f, var_0.b, false)))))));
    return 1000f;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(423f * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(abs(-1584f)), 518f, -1629f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-584f, 186f, -842f, 287f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 784f, 544f, -1000f), vec4<f32>(-563f, 518f, -1000f, -211f))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-var_0);
    global0 = var_0.x;
    return vec4<bool>(~(15710u & countOneBits(u_input.d)) <= 68549u, !arg_0, !(!(_wgslsmith_f_op_f32(-var_0.x) > _wgslsmith_f_op_f32(f32(-1f) * -580f))), arg_0);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = vec3<i32>(-u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, u_input.b, _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, 33738i), arg_0.a)), 27358i);
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, arg_0.a), 52704i);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-373f, arg_0.b, 1274f, arg_0.b))), vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2766f)), -360f), !(true | arg_0.c.x) && !any(arg_0.c))));
    global0 = _wgslsmith_f_op_f32(arg_0.b - 1000f);
    var var_3 = Struct_4(arg_0.c.x, _wgslsmith_dot_vec3_u32(select(~(~vec3<u32>(0u, 1u, u_input.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 19152u, u_input.d), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, 60819u), vec3<u32>(0u, u_input.a, u_input.a)), select(vec3<u32>(u_input.a, u_input.a, 36670u), vec3<u32>(u_input.d, 26304u, u_input.a), arg_0.c.x)), vec3<bool>(true, arg_0.c.x, true)), vec3<u32>(u_input.d, u_input.a, ~57151u)));
    return Struct_2(arg_0, arg_0);
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = func_4(Struct_1(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x))), func_2(true, -vec4<i32>(u_input.c.x, -22911i, u_input.b, -6481i) & u_input.c)));
    var var_1 = !var_0.b.c.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1004f), _wgslsmith_f_op_f32(-911f - arg_0.a.x), u_input.d != u_input.a)) * var_0.a.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b + -267f) * _wgslsmith_f_op_f32(floor(arg_0.a.x)))))) - arg_0.a.x);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(arg_0.a, vec4<f32>(arg_0.a.x, 535f, -1107f, var_0.a.b))))) + arg_0.a))));
    let var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1321f), _wgslsmith_f_op_f32(max(1296f, 1060f)), any(var_0.a.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-540f - -679f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1301f * var_0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-663f + -488f) + -1553f)), _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.a.x)), 945f))));
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(vec4<f32>(-298f, 116f, 436f, -421f))))) - _wgslsmith_f_op_f32(floor(1686f))));
    global0 = 645f;
    let var_1 = _wgslsmith_div_i32(-_wgslsmith_mult_i32(u_input.b, u_input.c.x), -(u_input.c.x ^ _wgslsmith_mod_i32(select(u_input.b, u_input.c.x, true), -1i)));
    var_0 = 599f;
    var var_2 = all(select(vec3<bool>(any(vec3<bool>(false, true, true)) & true, any(vec2<bool>(true, true)), false), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), func_4(Struct_1(1i, 501f, vec4<bool>(true, false, true, false))).a.c.xzz), (1i | u_input.b) >= (-2147483647i & var_1)));
    let var_3 = vec4<i32>(2449i, max(-2147483647i ^ var_1, -countOneBits(58876i) >> (1u % 32u)), var_1 ^ u_input.c.x, _wgslsmith_mult_i32(-((i32(-1i) * -2147483647i) | _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 37382i, u_input.c.x, -2147483647i), u_input.c)), ~_wgslsmith_clamp_i32(countOneBits(46383i), -2147483647i, -16847i)));
    let var_4 = vec4<u32>(u_input.a, ~u_input.a, select(1u, 1u, true), ~u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1137f, 191f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1564f, -1532f, false)) + _wgslsmith_div_f32(1000f, 904f)) * _wgslsmith_f_op_f32(abs(132f))), _wgslsmith_f_op_f32(1269f - 953f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-327f, 155f, false)) + 796f))), firstLeadingBit(var_4.xy), var_4.x, vec4<i32>(var_1, select(u_input.b, var_1, true) ^ 2147483647i, var_3.x, -var_1), 0i);
}

