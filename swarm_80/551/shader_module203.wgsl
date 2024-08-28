struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<u32> {
    global0 = array<Struct_1, 10>();
    var var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(max(-628f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_0) + -156f))))));
    let var_1 = vec2<u32>(22221u, ~126764u);
    global0 = array<Struct_1, 10>();
    let var_2 = Struct_1(!select(!var_0.a, select(select(var_0.a, vec3<bool>(arg_1.a.x, true, true), vec3<bool>(arg_1.a.x, true, arg_1.a.x)), arg_1.a, var_0.a.x), any(!arg_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))) + -849f));
    return var_1;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_3(368f, global0[_wgslsmith_index_u32(u_input.d << (select(~u_input.d, 4294967295u, true) % 32u), 10u)]), ~(~vec2<u32>(60094u, 35305u))), 10u)];
    let var_1 = vec3<u32>(~u_input.d, ~_wgslsmith_mod_u32(u_input.d, reverseBits(69369u)), _wgslsmith_dot_vec3_u32(vec3<u32>(25861u, 4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, 0u, 52409u), reverseBits(vec3<u32>(0u, 15739u, u_input.d)))), ~(~vec3<u32>(u_input.d, 4294967295u, 33849u)) >> (firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(41278u, 1u, u_input.d), vec3<u32>(u_input.d, u_input.d, 73873u))) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -203f), _wgslsmith_f_op_f32(761f + -720f))) * _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1229f - -1000f), _wgslsmith_f_op_f32(arg_1.x - -1598f)), arg_0 & true)), -1367f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -480f))))));
    global0 = array<Struct_1, 10>();
    let var_3 = Struct_1(!select(select(!var_0.a, select(vec3<bool>(true, arg_0, var_0.a.x), vec3<bool>(arg_0, var_0.a.x, true), true), select(vec3<bool>(var_0.a.x, true, false), var_0.a, var_0.a)), !(!var_0.a), vec3<bool>(true, select(true, false, false), var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), -1000f))))));
    return true;
}

fn func_1(arg_0: vec4<f32>) -> bool {
    var var_0 = arg_0.x;
    var var_1 = true;
    var var_2 = -2147483647i;
    let var_3 = !(!func_2(false, vec2<f32>(1599f, 202f)) && !(_wgslsmith_f_op_f32(select(-1762f, -1000f, true)) >= _wgslsmith_f_op_f32(ceil(arg_0.x))));
    let var_4 = u_input.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(u_input.b.x > -43410i, true, func_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1850f, 543f, 666f, 312f))))) && func_1(vec4<f32>(_wgslsmith_f_op_f32(floor(-796f)), _wgslsmith_f_op_f32(f32(-1f) * -1068f), -185f, 205f)), (_wgslsmith_mult_i32(1i, 1i) ^ (abs(u_input.b.x) | -2147483647i)) == ~_wgslsmith_mod_i32(-u_input.c.x, 2147483647i));
    let var_1 = -u_input.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2461f, -646f, 1143f), vec3<f32>(412f, 202f, -189f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2242f), _wgslsmith_f_op_f32(round(-1160f)), _wgslsmith_f_op_f32(sign(937f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(1102f + -534f), 1f, 1222f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(vec3<f32>(-1673f, -696f, -442f), vec3<f32>(-1000f, -708f, 471f)), true))))));
    var var_3 = abs(abs(vec4<u32>(4958u, (u_input.d >> (0u % 32u)) >> (17561u % 32u), 36159u, u_input.d)));
    var var_4 = 212f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a | firstTrailingBit(0i), 1u, _wgslsmith_div_f32(329f, _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))), 1000f);
}

