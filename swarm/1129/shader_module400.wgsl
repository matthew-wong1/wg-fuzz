struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(-647f, -848f, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1616f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1805f)), -991f)) * _wgslsmith_f_op_f32(f32(-1f) * -259f))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1998f))), _wgslsmith_f_op_f32(step(-733f, -1127f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1198f * 1561f)) - -161f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(508f, 706f)), _wgslsmith_f_op_f32(trunc(181f)))) != -1160f));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1000f))))))))));
    let var_1 = Struct_2(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(42373i, u_input.b) ^ (vec2<i32>(u_input.b, -1i) >> (vec2<u32>(3108u, 35341u) % vec2<u32>(32u))), reverseBits(~vec2<i32>(1i, u_input.a))), vec2<i32>(u_input.a & 2602i, i32(-1i) * -43500i) << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<u32>(1u, 10722u)) % vec2<u32>(32u))), 0u, var_0.x, !(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-846f, var_0.x) - _wgslsmith_f_op_f32(var_0.x - var_0.x))))));
    var_0 = vec3<f32>(var_0.x, _wgslsmith_div_f32(1603f, var_1.e), var_0.x);
    let var_2 = var_0.x;
    return 4294967295u;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<bool>) -> vec2<f32> {
    let var_0 = vec2<u32>(~firstLeadingBit(arg_1.b), 4294967295u);
    var var_1 = arg_1;
    var var_2 = Struct_1(abs(vec3<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.x, 36569u, arg_1.b, 4294967295u), vec4<u32>(var_0.x, arg_1.b, 0u, 4294967295u)), vec4<u32>(6144u, 1u, var_0.x, var_0.x)), ~0u, ~arg_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.b >> (func_3() % 32u), -vec4<i32>(abs(u_input.b) << (var_1.b % 32u), u_input.a, 1i, var_1.a.x), vec2<f32>(_wgslsmith_f_op_f32(min(arg_1.c, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-arg_1.e)))), arg_1.c));
    var var_3 = arg_0.x;
    var var_4 = -(-var_2.d.wx >> (var_2.a.yx % vec2<u32>(32u)));
    return _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(var_2.e.x + -557f), arg_1.c)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -909f)))), _wgslsmith_f_op_f32(sign(486f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(647f, -430f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-403f, var_0))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(947f, 357f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 745f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1719f, 402f), vec2<f32>(var_0, var_0))))))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, -410f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -1441f) - vec2<f32>(var_0, -1960f)), vec2<f32>(1000f, 835f)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0, -418f), _wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(var_0, -2086f)))), vec2<bool>(true, true))));
    var var_2 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(any(vec2<bool>(false, true)), select(2147483647i, u_input.b, false) <= ~48016i, (56005i | arg_2.x) != -5633i), vec3<bool>(true && any(vec3<bool>(true, true, false)), true | (var_1.x >= -156f), arg_0.x < 0u));
    let var_3 = 1u;
    let var_4 = Struct_1(abs(firstTrailingBit(~vec3<u32>(1u, var_3, var_3))), -238f, -(~(~(u_input.b ^ u_input.b))), reverseBits(reverseBits(vec4<i32>(u_input.b, 2147483647i, arg_2.x, 2147483647i)) & vec4<i32>(arg_1.x, -1i, arg_1.x, ~82532i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(var_0, -1225f), Struct_2(arg_1, arg_0.x, 739f, vec2<bool>(var_2.x, true), var_1.x), vec4<bool>(false, true, true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-708f, -1064f)))))));
    return any(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))) != -1477f, !(~86218u <= min(var_4.a.x, 1u)), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true);
    var_0 = !select(!vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, func_1(vec3<u32>(1u, 1u, 1u), -vec2<i32>(u_input.b, -41498i), -vec2<i32>(-47325i, u_input.a)), -754f > _wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(460f, 382f), Struct_2(vec2<i32>(-18166i, u_input.a), 29967u, 502f, vec2<bool>(var_0.x, false), 1107f), vec4<bool>(false, true, var_0.x, false))).x, !var_0.x), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-638f, 2293f, -1000f, -555f))), var_0.x))))));
    var var_2 = true;
    var var_3 = !var_0.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -783f, -1000f, 1511f)), vec4<f32>(var_1.x, 1000f, -241f, var_1.x), true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-631f, 411f, -347f, var_1.x), vec4<f32>(-1000f, 1236f, var_1.x, -1404f), false))))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-294f - var_1.x), var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-636f, var_1.x, 1133f, var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 802f);
}

