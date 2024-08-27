struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), vec2<f32>(139f, -1000f));

var<private> global1: array<i32, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.b.x, global0.b.x), global0.b)) * global0.b) * global0.b))));
    let var_1 = 0i;
    var var_2 = var_0;
    var var_3 = var_0;
    var var_4 = max(countOneBits(u_input.b.x), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.x, _wgslsmith_div_u32(u_input.a, u_input.a), arg_0.x), 7u)], u_input.b.x));
    return _wgslsmith_f_op_f32(-var_3.b.x);
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: f32) -> u32 {
    global1 = array<i32, 7>();
    let var_0 = _wgslsmith_mult_i32(reverseBits(abs(countOneBits(global1[_wgslsmith_index_u32(u_input.a, 7u)]))), u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(1u, 1u, 14845u, u_input.a), !vec4<bool>(false, arg_1.x, false, global0.a.x))), 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-769f))) + global0.b.x)));
    return 46691u;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec4<u32>(u_input.a, 0u, ~_wgslsmith_div_u32(~_wgslsmith_add_u32(4108u, 67870u), u_input.a), ~(u_input.a >> (func_2(-2147483647i, arg_0.a, _wgslsmith_f_op_f32(step(1274f, global0.b.x))) % 32u)));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_2 = arg_0;
    var_2 = Struct_1(!(!(!var_2.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(abs(var_2.b.x))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -109f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b.x)) * _wgslsmith_f_op_f32(-1287f + -1000f)))));
    var var_3 = Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -508f))));
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> f32 {
    global0 = arg_0;
    let var_0 = func_1(func_1(Struct_1(vec2<bool>(all(vec4<bool>(arg_0.a.x, true, global0.a.x, global0.a.x)), any(vec2<bool>(true, arg_0.a.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1582f, -190f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, -850f) - vec2<f32>(global0.b.x, arg_0.b.x))))));
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, u_input.a & 33055u, u_input.a), ~(~vec3<u32>(11895u, 4294967295u, u_input.a))) & max(~4294967295u, 26569u), 7u)];
    var var_2 = func_1(func_1(var_0));
    var_1 = ~(i32(-1i) * -7944i);
    return global0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-628f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2524f, 1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0.b.x)))), global0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(Struct_1(global0.a, vec2<f32>(global0.b.x, global0.b.x)))))) * _wgslsmith_f_op_f32(step(484f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b.x)) - _wgslsmith_f_op_f32(round(837f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1315f, -739f)), global0.b.x);
    let var_1 = Struct_1(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * -1000f)) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(523f - 733f))), true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f)), 843f) * vec2<f32>(797f, _wgslsmith_f_op_f32(global0.b.x + 621f))));
    var var_2 = false;
    var var_3 = vec4<bool>(var_1.a.x, true, _wgslsmith_f_op_f32(f32(-1f) * -151f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - _wgslsmith_f_op_f32(-1184f - 1447f))), true);
    var var_4 = func_1(func_1(var_1));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, -2147483647i);
}

