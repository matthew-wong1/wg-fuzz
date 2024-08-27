struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = 4294967295u == u_input.a.x;
    var var_1 = vec3<i32>(u_input.b.x, 1i, 1i);
    var_0 = any(!(!select(!vec4<bool>(true, arg_0, false, false), select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(true, true, arg_0, arg_0)), select(vec4<bool>(false, false, arg_0, false), vec4<bool>(true, arg_0, arg_0, arg_0), false))));
    var var_2 = arg_2;
    var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -626f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.b, var_2.b))))))));
    return -1000f;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: u32) -> vec4<f32> {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = Struct_1(1526f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.b - arg_0.a))), _wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(sign(var_0.b))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b)) * var_0.a))));
    var var_2 = u_input.b.x;
    var var_3 = 5703i;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(1064f * 1419f), _wgslsmith_f_op_f32(arg_0.b + arg_0.a), _wgslsmith_f_op_f32(func_3(arg_2, u_input.b.x, arg_0)), 1000f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(256f, arg_0.b, var_0.b, var_1.a) - vec4<f32>(-565f, arg_0.b, arg_0.a, -929f)))))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, -344f, arg_2.b, -2105f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, -2265f, arg_2.b, -336f) - vec4<f32>(arg_2.a, arg_2.a, -570f, -152f)), vec4<bool>(true, true, true, true)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, 1000f, -1491f, arg_2.a))));
    var var_1 = ~_wgslsmith_mult_vec4_u32(abs(_wgslsmith_div_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 11440u, 1u), vec4<u32>(arg_1, 4294967295u, arg_3.x, 1u)))), ~(~(~u_input.a)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -811f, var_0.x, arg_2.b) * vec4<f32>(arg_2.a, -156f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(func_2(Struct_1(715f, arg_2.a), vec3<bool>(true, true, true), true, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -504f, 322f, 1348f), vec4<f32>(var_0.x, arg_2.b, arg_2.a, -1365f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1523f, var_0.x)))));
    let var_2 = vec4<u32>(68294u, _wgslsmith_sub_u32(arg_1, abs(arg_3.x)), arg_3.x, _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 2774u, arg_3.x), arg_3.yxz), arg_0.x));
    let var_3 = 20587i >> (~(~firstTrailingBit(_wgslsmith_sub_u32(arg_3.x, var_1.x))) % 32u);
    return select(vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(!all(vec3<bool>(false, false, false)), all(vec4<bool>(true, true, true, true))), select(select(vec2<bool>(false, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-1688f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -491f))) - 619f));
    let var_1 = u_input.a.x;
    var var_2 = vec4<bool>(!select(any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), _wgslsmith_f_op_f32(round(-1093f)) <= _wgslsmith_f_op_f32(var_0.x * -1000f), !(var_1 < 0u)), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), !func_1(u_input.a.xy, 7617u, Struct_1(var_0.x, 248f), u_input.a), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_1, 1u, 1u, 1u)) != (var_1 ^ u_input.c.x))), false, all(vec2<bool>(select(true, false, false), any(vec2<bool>(false, true)))) != (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1359f + var_0.x)) >= var_0.x));
    var_2 = vec4<bool>(var_2.x, var_2.x & (var_0.x != var_0.x), !(!var_2.x), !var_2.x);
    let var_3 = _wgslsmith_add_i32(u_input.b.x, 23785i);
    let var_4 = u_input.a;
    let var_5 = Struct_1(-323f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)), var_0.x)));
    let var_6 = 2099u;
    let x = u_input.a;
    s_output = StorageBuffer(~min(min(u_input.b.zwx, select(u_input.b.zyy, u_input.b.wxz, vec3<bool>(true, var_2.x, false))), _wgslsmith_add_vec3_i32(-u_input.b.yxw, u_input.b.xxy)), vec3<u32>(~_wgslsmith_mod_u32(var_4.x, firstLeadingBit(var_4.x)), min(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 39866u, 1u), vec3<u32>(var_4.x, 1u, 0u)), var_1), 1u), 18012u), u_input.b.zw, -18363i, _wgslsmith_clamp_u32(~countOneBits(1u), _wgslsmith_add_u32(max(var_1, var_4.x), ~_wgslsmith_dot_vec4_u32(var_4, vec4<u32>(0u, 1u, var_4.x, 10859u))), var_4.x));
}

