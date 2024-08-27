struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = arg_2;
    let var_1 = ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(arg_2.a.x, var_0.a.x), max(69891u, u_input.a.x), 59250u, countOneBits(var_0.a.x)), ~(vec4<u32>(u_input.a.x, 0u, 39527u, 1u) | vec4<u32>(1u, u_input.a.x, arg_2.a.x, arg_0.c.a.x)), vec4<u32>(1u, ~4294967295u, u_input.a.x << (arg_2.a.x % 32u), var_0.a.x)));
    global0 = -767f;
    let var_2 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(395f, arg_0.a)) * -1097f) < _wgslsmith_f_op_f32(round(-251f)), any(vec4<bool>(true, true, true, true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(arg_1));
    return _wgslsmith_f_op_f32(-var_3.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_2(-950f, ~u_input.b, Struct_1(arg_1.a)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1401f, -847f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(878f, 233f)))), arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -209f) + _wgslsmith_f_op_f32(-144f - _wgslsmith_f_op_f32(-2237f - 172f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -573f))))));
    let var_0 = !all(vec2<bool>(false, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_1 = Struct_1(~(~select(vec2<u32>(59463u, u_input.a.x), vec2<u32>(arg_1.a.x, arg_1.a.x), var_0) | arg_0));
    var var_2 = vec3<bool>(!(all(vec2<bool>(var_0, var_0)) && true) | select(false, !var_0 != var_0, all(select(vec2<bool>(var_0, true), vec2<bool>(var_0, false), true))), true, var_0);
    var var_3 = u_input.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(121f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(431f - -180f))) * _wgslsmith_f_op_f32(select(-100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(105f + 768f)), any(!vec4<bool>(var_2.x, var_2.x, true, true))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: i32, arg_3: vec3<i32>) -> Struct_2 {
    global0 = -1000f;
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(-arg_1)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1184f, arg_1, -167f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1778f, arg_1) + vec3<f32>(arg_1, arg_1, 272f)), vec3<f32>(arg_1, arg_1, 338f))))) + vec3<f32>(arg_1, 1430f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1)))));
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - -226f), -562f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(706f, arg_1))))))));
    var var_1 = select(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, min(u_input.a.x | 0u, 4294967295u << (0u % 32u))), ~0u, 1u), arg_0.zzy, false);
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(vec2<u32>(60002u, 1u), Struct_1(var_1.xx))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-649f - var_0.x), arg_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1218f)), -1000f, 47139i <= arg_3.x)), 755f)), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -441f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -269f) + var_0.x) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-942f, arg_1) - -904f))));
    return Struct_2(arg_1, u_input.b, Struct_1(vec2<u32>(1u, 19984u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 225f;
    var var_1 = func_1(vec4<u32>(~(~u_input.a.x), 11938u, _wgslsmith_add_u32(~u_input.a.x, u_input.a.x), u_input.a.x), var_0, -2147483647i, -vec3<i32>(-1i, -abs(-1i), u_input.b));
    let var_2 = func_1(~vec4<u32>(var_1.c.a.x, 5633u, var_1.c.a.x, func_1(select(vec4<u32>(0u, 0u, 49690u, 82693u), vec4<u32>(var_1.c.a.x, u_input.a.x, 73u, var_1.c.a.x), vec4<bool>(false, false, true, false)), func_1(vec4<u32>(0u, var_1.c.a.x, u_input.a.x, 67446u), 338f, 22869i, vec3<i32>(81104i, u_input.b, -15957i)).a, -4312i, -vec3<i32>(-37487i, u_input.b, var_1.b)).c.a.x), _wgslsmith_f_op_f32(532f * _wgslsmith_f_op_f32(var_1.a * 550f)), func_1(select(~(vec4<u32>(1u, var_1.c.a.x, 0u, var_1.c.a.x) << (vec4<u32>(29144u, var_1.c.a.x, u_input.a.x, 0u) % vec4<u32>(32u))), firstTrailingBit(min(vec4<u32>(var_1.c.a.x, var_1.c.a.x, u_input.a.x, 24154u), vec4<u32>(23051u, 68804u, var_1.c.a.x, u_input.a.x))), true), _wgslsmith_f_op_f32(-699f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(643f)), _wgslsmith_f_op_f32(var_1.a + var_1.a))), firstTrailingBit(var_1.b), reverseBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(89814i, var_1.b)), 1i, _wgslsmith_mod_i32(var_1.b, 2492i)))).b, vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -var_1.b, 27078i), 2147483647i, ~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.b, var_1.b), vec2<i32>(2147483647i, var_1.b)), vec2<i32>(u_input.b, 5401i))));
    let var_3 = Struct_1(var_2.c.a);
    var_1 = Struct_2(_wgslsmith_f_op_f32(-var_1.a), ~68383i, var_2.c);
    var_1 = func_1(abs(~(~vec4<u32>(4294967295u, var_2.c.a.x, 1u, 77666u))), -1518f, 1i, reverseBits(vec3<i32>(_wgslsmith_sub_i32(-36667i, i32(-1i) * -57007i), var_2.b, 0i)));
    let var_4 = !vec4<bool>(true, !select(true, any(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, true, true))), false, true);
    var_1 = Struct_2(var_1.a, var_2.b, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(0i & abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, var_2.b, u_input.b), min(vec4<i32>(-1i, u_input.b, var_2.b, 19024i), vec4<i32>(var_2.b, var_2.b, -22588i, 0i)))), abs(countOneBits(max(vec2<i32>(-20896i, var_2.b) ^ vec2<i32>(-2147483647i, 20671i), vec2<i32>(1i, 1i)))));
}

