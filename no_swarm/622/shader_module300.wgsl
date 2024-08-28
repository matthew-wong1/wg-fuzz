struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(false, 3400i), Struct_1(true, 13660i), Struct_1(true, 16091i), Struct_1(true, 18484i), Struct_1(true, 0i), Struct_1(false, -1i), Struct_1(true, -32205i));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    global0 = 33490u;
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    global0 = ~54469u;
    return select(select(!vec3<bool>(u_input.c.x != -27668i, !arg_0.x, false), !select(select(vec3<bool>(false, arg_0.x, true), vec3<bool>(arg_0.x, true, arg_0.x), arg_0.x), !vec3<bool>(true, true, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x)), vec3<bool>(true, arg_0.x, true)), select(select(select(select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, true)), select(vec3<bool>(false, false, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), true)), select(!vec3<bool>(false, arg_0.x, true), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x)), true), vec3<bool>(arg_0.x, arg_0.x || all(arg_0), false), !select(vec3<bool>(arg_0.x, arg_0.x, true), select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, true)), true)), !vec3<bool>(arg_0.x, any(arg_0), true & !arg_0.x));
}

fn func_2() -> u32 {
    var var_0 = !select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), any(vec3<bool>(true, true, true))), vec3<bool>(any(func_3(vec2<bool>(false, false))), select(false, true, false) | true, all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true));
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~min(~vec2<u32>(1u, u_input.a), firstTrailingBit(vec2<u32>(u_input.a, u_input.a))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(23828u, u_input.a), max(vec2<u32>(u_input.a, u_input.b), vec2<u32>(1u, u_input.b)))), 7u)];
    var var_2 = u_input.a;
    var var_3 = Struct_1(any(var_0.xx), -3599i);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1234f, 1206f) - _wgslsmith_f_op_f32(abs(125f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1000f, 1f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(468f)), -1873f)))))), -3051f);
    return min(~34039u, ~u_input.b);
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = _wgslsmith_add_u32(func_2(), select(~u_input.a, 1u, arg_0.a));
    let var_0 = vec2<f32>(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(490f * _wgslsmith_f_op_f32(ceil(2886f))), 1893f)));
    return _wgslsmith_mult_i32(arg_0.b, i32(-1i) * -25633i) >> (53874u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), any(vec2<bool>(false, true)))), u_input.e);
    let var_1 = ~(u_input.b | u_input.a);
    let var_2 = func_1(global1[_wgslsmith_index_u32(var_1, 7u)]);
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~0u);
}

