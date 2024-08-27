struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(0i, 2147483647i, -11760i), vec3<i32>(2147483647i, 41735i, 55491i), vec3<i32>(1i, 1i, -1i), vec3<i32>(42061i, 2147483647i, 1i), vec3<i32>(-20561i, -22754i, -14830i), vec3<i32>(-21983i, 2147483647i, 4494i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> u32 {
    global0 = array<vec3<i32>, 6>();
    var var_0 = firstLeadingBit(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 1u, 0u), ~vec4<u32>(1u, 4294967295u, 1u, arg_0)), min(~arg_0, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, 2939u, 0u, arg_1), vec4<u32>(arg_1, arg_0, arg_1, arg_1) >> (vec4<u32>(43506u, 4294967295u, arg_0, 1u) % vec4<u32>(32u))))));
    return arg_1 & _wgslsmith_sub_u32(select(arg_0, _wgslsmith_add_u32(~65691u, arg_1), true), arg_1);
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    var var_0 = abs(abs(-(~(~u_input.a.zz))));
    global0 = array<vec3<i32>, 6>();
    var var_1 = true;
    let var_2 = arg_0.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_div_vec3_f32(arg_0, arg_0))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(740f, 694f)), 1000f, -1119f)));
    return 35447u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1622f, 1571f))), _wgslsmith_f_op_f32(max(arg_1.a, -1000f)), arg_1.a);
    var var_1 = (0u <= ~max(func_2(23229u, 0u, Struct_1(841f, arg_0.b, arg_1.a, global0[_wgslsmith_index_u32(41458u, 6u)]), -2589f), 0u)) | !all(vec3<bool>(false, false, true));
    let var_2 = (~vec4<u32>(max(28554u, 0u), 36901u, ~4294967295u, func_3(vec3<f32>(var_0.x, 311f, arg_1.a))) >> ((~vec4<u32>(34u, 20719u, 32983u, 1u) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 4294967295u, 4294967295u, 61815u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 9428u, 1u, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (vec4<u32>(~reverseBits(abs(11906u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_div_u32(70652u, 54656u), 58311u), ~vec3<u32>(1u, 1u, 1u)), firstLeadingBit(1u), 9454u) % vec4<u32>(32u));
    let var_3 = arg_1.b;
    var var_4 = select(vec4<bool>(all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true))), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), all(vec2<bool>(true, true)))), !(_wgslsmith_sub_i32(u_input.a.x, 2147483647i) > arg_0.b), false), vec4<bool>(all(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), !any(vec4<bool>(true, true, true, true)) | true, any(vec3<bool>(false, select(false, false, true), false)), true), vec4<bool>(false, all(vec3<bool>(true, true, true)) | true, true, max(arg_1.d.x, var_3) >= u_input.a.x));
    return vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f - -1227f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-794f, -312f))))))), arg_1.a, _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(step(329f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_1(871f, 0i, 2029f, vec3<i32>(-15265i, u_input.b, u_input.a.x)), Struct_1(-910f, u_input.a.x, 339f, vec3<i32>(9735i, u_input.a.x, u_input.b))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1108f, -611f, -1371f, 366f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(192f, -1000f, -685f, -1000f)), vec4<bool>(true, true, false, false))), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false))))) - vec4<f32>(_wgslsmith_f_op_f32(742f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-692f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-813f + -120f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(f32(-1f) * -414f)))), 772f));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_1.xx)) - _wgslsmith_f_op_vec2_f32(exp2(var_1.yz)));
    var_0 = select(!select(countOneBits(28970i) < u_input.b, true && all(vec3<bool>(false, true, false)), true), all(vec3<bool>(all(vec2<bool>(true, false)), true, true)) | !(var_2.x != 1000f), true);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.x, var_1.x, _wgslsmith_f_op_f32(-var_1.x))) + vec4<f32>(_wgslsmith_f_op_f32(abs(1063f)), -560f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1246f, var_1.x)) * var_2.x), -740f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(var_1.x)), -219f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) * _wgslsmith_f_op_f32(var_1.x * 1307f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -834f))))));
    var var_4 = Struct_1(var_3.x, _wgslsmith_sub_i32(~_wgslsmith_mod_i32(-1i ^ u_input.b, u_input.b), _wgslsmith_clamp_i32(~2376i, u_input.a.x, -1i)), -1598f, ~select(vec3<i32>(-1i, u_input.b, u_input.b | u_input.a.x), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(53098u, 19173u), 4294967295u), 6u)], select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))));
    let var_5 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))))), -886f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(1107f, var_4.a), _wgslsmith_div_f32(var_1.x, 835f), _wgslsmith_f_op_f32(-var_2.x))))));
    var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_4.a, -1186f, _wgslsmith_f_op_f32(trunc(881f)), var_3.x)))));
    global0 = array<vec3<i32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_3.x, var_2.x), abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(abs(vec4<u32>(5243u, 34597u, 0u, 4294967295u))))), 1u, -abs(select(u_input.a, vec4<i32>(12907i, -2149i, u_input.b, u_input.a.x), vec4<bool>(true, false, true, false))));
}

