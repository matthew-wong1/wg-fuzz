struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2.a;
    let var_1 = _wgslsmith_f_op_f32(trunc(471f));
    var var_2 = true;
    var var_3 = Struct_2(Struct_1(!(~4294967295u == _wgslsmith_clamp_u32(8737u, 4294967295u, 4294967295u)), _wgslsmith_div_f32(1674f, _wgslsmith_f_op_f32(-arg_2.b))), _wgslsmith_f_op_f32(max(arg_2.b, _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-var_1)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1649f)), _wgslsmith_f_op_f32(min(185f, _wgslsmith_f_op_f32(-arg_0.x)))), arg_2, arg_2);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.d.b - 246f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))) * -1000f);
    return select(69766u, 1u, false);
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    return Struct_2(Struct_1(any(vec2<bool>(true, all(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1396f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_div_f32(-883f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(715f + _wgslsmith_f_op_f32(-arg_0.x)), 260f))), Struct_1(select(true, ~13516i < _wgslsmith_sub_i32(-9050i, u_input.b), (u_input.b <= 0i) || true), _wgslsmith_f_op_f32(-arg_0.x)), Struct_1(any(vec3<bool>(select(true, true, true), all(vec3<bool>(false, true, true)), select(true, false, false))), arg_0.x));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = 1u | abs(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1378u << (1u % 32u)));
    var_0 = 8483u;
    var var_1 = arg_1.e.a;
    var var_2 = arg_1;
    var var_3 = Struct_1(arg_2.e.a, -746f);
    return !select(arg_1.a.a, !(!var_3.a), true);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, 651f, -1890f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.x, -909f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1569f, arg_1.x, arg_1.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, arg_1.x, true)) * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-arg_1.x)), 1474f))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -790f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-203f + 877f)) * _wgslsmith_f_op_f32(-542f * _wgslsmith_f_op_f32(max(var_0.x, -1684f)))), _wgslsmith_div_f32(1503f, 1f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(969f, var_0.x, 889f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(599f, 553f, arg_1.x)))))));
    var_0 = vec3<f32>(func_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -603f), arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -623f), 254f)).a.b, -784f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x, true)));
    let var_1 = select(vec4<bool>(false, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), all(vec4<bool>(false, false, false, false)))), true, !all(vec4<bool>(true, true, true, true))), select(vec4<bool>(any(vec2<bool>(true, true)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), all(vec4<bool>(true, false, false, true)), true), select(vec4<bool>(true, true, false, false), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false)), false), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_f_op_f32(-var_0.x)) * vec3<f32>(-1782f, 802f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 556f)))));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(1f * arg_1.x))), _wgslsmith_f_op_f32(min(arg_1.x, -502f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(2816f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1484f)))));
    let x = u_input.a;
    s_output = func_4(select(~vec4<u32>(min(63138u, 7414u), ~25049u, ~4294967295u, func_1(vec3<f32>(-773f, 372f, -848f), vec4<i32>(u_input.b, 15385i, u_input.a, u_input.a), Struct_1(true, var_0))), ~(~vec4<u32>(81310u, 4294967295u, 38015u, 4294967295u)), func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(830f, var_0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(2058f, -1982f) - vec2<f32>(1000f, 1230f))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 208f, var_0))), func_2(vec4<f32>(var_0, var_0, -288f, var_0)))), vec2<f32>(267f, -1117f), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u) & (select(vec2<u32>(0u, 19897u), vec2<u32>(24694u, 30780u), true) & ~vec2<u32>(1u, 4294967295u)), ~(~(~vec2<u32>(0u, 1u)))));
}

