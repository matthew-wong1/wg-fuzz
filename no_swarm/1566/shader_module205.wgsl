struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<bool>) -> vec2<bool> {
    var var_0 = Struct_1(vec2<u32>((_wgslsmith_clamp_u32(1u, 13480u, u_input.d) & u_input.d) << (u_input.b % 32u), abs(u_input.d)), 621f, true, 2147483647i);
    var var_1 = u_input.a.x;
    var var_2 = ~min(vec4<i32>(u_input.a.x, var_0.d, firstLeadingBit(-69776i), min(u_input.a.x, ~var_0.d)), -reverseBits(vec4<i32>(32964i, u_input.a.x, 13404i, u_input.a.x) >> (vec4<u32>(4294967295u, var_0.a.x, var_0.a.x, 34310u) % vec4<u32>(32u))));
    var var_3 = reverseBits(((var_2.x & select(var_0.d, -36043i, false)) ^ ~(var_0.d << (var_0.a.x % 32u))) ^ 57236i);
    let var_4 = 41995i;
    return vec2<bool>(true, true);
}

fn func_3(arg_0: bool) -> vec2<u32> {
    return _wgslsmith_div_vec2_u32(~(~abs(vec2<u32>(57889u, u_input.c))), firstTrailingBit(~(~firstTrailingBit(vec2<u32>(u_input.d, u_input.c)))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-231f * -922f)))) < 1360f);
    var var_1 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(arg_0, true, arg_0), true)));
    var_1 = select(select(select(vec3<bool>(select(false, false, var_1.x), var_1.x, false), select(vec3<bool>(true, false, var_1.x), vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, true, arg_0)), select(vec3<bool>(var_1.x, arg_0, true), vec3<bool>(false, true, arg_0), !vec3<bool>(true, true, arg_0))), !vec3<bool>(true, true, any(vec3<bool>(false, var_1.x, false))), vec3<bool>(var_1.x, all(select(var_1.xz, vec2<bool>(arg_0, arg_0), var_1.x)), true)), vec3<bool>(select((var_0.x < 41711u) || var_1.x, var_1.x, true), true, !(!arg_0)), var_1.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1205f) + -431f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1213f)) - 979f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-230f - 249f))) - _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(190f)))));
    var var_3 = _wgslsmith_f_op_f32(floor(-363f));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1929f)), _wgslsmith_f_op_f32(691f - 214f))), _wgslsmith_f_op_f32(abs(-969f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_f_op_f32(-1470f * -135f))))))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    var var_0 = !arg_1.c;
    let var_1 = true;
    let var_2 = arg_1.d;
    let var_3 = reverseBits(~(~(~u_input.a)));
    var_0 = var_1;
    return 5469u >> (_wgslsmith_sub_u32(4294967295u, u_input.c) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(_wgslsmith_f_op_f32(floor(732f)) != _wgslsmith_f_op_f32(round(1080f)));
    var var_1 = vec2<bool>(var_0 && true, any(func_1(!select(vec4<bool>(false, true, false, var_0), vec4<bool>(true, var_0, var_0, false), vec4<bool>(true, false, var_0, var_0)))));
    var_1 = select(vec2<bool>(false, select(!var_0 & !var_1.x, all(!vec2<bool>(var_0, true)), true)), vec2<bool>(false, all(!(!vec4<bool>(var_0, var_1.x, false, false)))), select(!select(vec2<bool>(var_0, true), vec2<bool>(true, var_1.x), select(var_1.x, false, true)), vec2<bool>(!var_1.x, !all(vec2<bool>(false, var_1.x))), select(var_0, true, false)));
    var var_2 = func_4(vec4<bool>(!var_1.x, -416f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_0)) + 1f), !var_0, !(!all(vec3<bool>(false, true, var_1.x)))), Struct_1(firstLeadingBit(abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, u_input.b), vec2<u32>(u_input.b, u_input.c)))), 773f, var_1.x, i32(-1i) * -2147483647i), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(665f * _wgslsmith_f_op_f32(max(-1222f, -920f))), _wgslsmith_f_op_f32(-1222f * -1960f), 1371f), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(sign(275f)), -1202f), vec3<f32>(_wgslsmith_f_op_f32(ceil(-966f)), -1000f, _wgslsmith_f_op_f32(1000f - 961f))))));
    let var_3 = 22019u;
    let var_4 = Struct_1(vec2<u32>(var_3, 14708u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(758f - 941f) * _wgslsmith_f_op_f32(f32(-1f) * -742f)))), true, -33589i | _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, abs(u_input.a.x)), u_input.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_3, var_3, var_3), vec3<u32>(var_3, 54504u, u_input.c)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_4.b, 922f, -1334f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b)), _wgslsmith_f_op_f32(var_4.b - _wgslsmith_f_op_f32(-var_4.b))))));
}

