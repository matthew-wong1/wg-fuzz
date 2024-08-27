struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global1 = ~(~arg_0.d.xx);
    global1 = vec2<u32>(1u, _wgslsmith_sub_u32(firstLeadingBit(4294967295u), u_input.a << (global1.x % 32u)));
    let var_0 = Struct_2(Struct_1(arg_0.a, arg_0.b, ~(~arg_0.c), ~_wgslsmith_sub_vec4_u32(vec4<u32>(31680u, global1.x, 1u, arg_0.d.x), abs(vec4<u32>(u_input.a, arg_0.c.x, 97133u, u_input.a)))), Struct_1(-vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.a, arg_0.a), 1i), !(_wgslsmith_clamp_u32(arg_0.d.x, 4294967295u, u_input.a) <= arg_0.d.x), arg_0.d.zy, arg_0.d), _wgslsmith_f_op_f32(floor(-1000f)));
    var var_1 = var_0.b;
    global1 = ~arg_0.d.zz & arg_0.c;
    return var_0.a.c.x;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    global1 = ~(~vec2<u32>(abs(~u_input.a), global1.x));
    global0 = _wgslsmith_f_op_f32(sign(2081f));
    global1 = min(vec2<u32>(~min(select(u_input.a, 1u, false), ~4294967295u), ~func_3(Struct_1(vec2<i32>(-2147483647i, 1i), false, vec2<u32>(global1.x, 3685u), vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a)))), vec2<u32>(1u, 22239u));
    global0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_0 = !((_wgslsmith_f_op_f32(select(arg_0.x, 1141f, true)) <= _wgslsmith_f_op_f32(sign(arg_0.x))) & (_wgslsmith_add_u32(85487u, 1u) == u_input.a)) && true;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(209f + _wgslsmith_f_op_f32(step(-795f, arg_0.x)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)))))), _wgslsmith_f_op_f32(-arg_0.x)));
}

fn func_1() -> f32 {
    let var_0 = select(-2147483647i == (_wgslsmith_add_i32(countOneBits(-1i), firstLeadingBit(8323i)) >> (u_input.a % 32u)), any(vec3<bool>(true, true, true)), ((~2147483647i >> (global1.x % 32u)) | ~0i) != -firstLeadingBit(1i));
    var var_1 = var_0;
    var var_2 = vec4<bool>(!var_0, max(0i, ~firstTrailingBit(0i)) >= 1093i, var_0, !(u_input.a < 4294967295u));
    let var_3 = vec4<u32>(~(u_input.a ^ global1.x), 65272u, max(~(~global1.x), ~_wgslsmith_add_u32(62912u, u_input.a)) ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(133101u, u_input.a) >> (~u_input.a % 32u), firstLeadingBit(29584u)), ~u_input.a);
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1746f, 460f) - vec2<f32>(-1000f, 397f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2682f, 1000f), vec2<f32>(291f, -211f), var_2.zz)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(416f, -541f)) * -731f), -103f) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1441f) * -472f), _wgslsmith_f_op_f32(floor(-988f)))));
    return _wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, 1000f, 183f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(2857f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-936f, 459f)))));
    global0 = -168f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-363f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1732f)), _wgslsmith_f_op_f32(f32(-1f) * -825f), true)), _wgslsmith_f_op_f32(min(-620f, -359f)))), _wgslsmith_f_op_f32(-1f)));
    let x = u_input.a;
    s_output = StorageBuffer(-340f, _wgslsmith_mod_i32(-1i, (i32(-1i) * -32906i) << (u_input.a % 32u)), abs(vec4<u32>(~_wgslsmith_mod_u32(global1.x, 22435u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(87782u, 0u, u_input.a, u_input.a), vec4<u32>(98989u, 13428u, global1.x, u_input.a)), global1.x & abs(24775u), min(0u, ~62148u))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(~5091u, global1.x), _wgslsmith_mod_u32(~20889u, 1u)), ~_wgslsmith_div_u32(~0u, 35837u), 1u, abs(~_wgslsmith_sub_u32(159u, 0u))));
}

