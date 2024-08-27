struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    let var_0 = vec3<u32>(0u, reverseBits(abs(1u)), firstLeadingBit(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, u_input.b)), select(abs(vec2<u32>(0u, 45601u)), vec2<u32>(u_input.b, 4294967295u) & vec2<u32>(4294967295u, u_input.b), vec2<bool>(arg_1, arg_1)))));
    var var_1 = true;
    global0 = Struct_1(false);
    var_1 = !any(select(!select(vec4<bool>(false, global1.a, global0.a, global2.a), vec4<bool>(false, false, true, true), vec4<bool>(global1.a, global2.a, false, global0.a)), !vec4<bool>(true, global1.a, false, false), true));
    return u_input.b;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> u32 {
    global0 = Struct_1(any(select(vec2<bool>(u_input.a > -2147483647i, true), !vec2<bool>(arg_1.a, global1.a), arg_1.a)));
    var var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = 35806i;
    let var_3 = vec4<i32>(-48571i, _wgslsmith_dot_vec3_i32(countOneBits(~(-vec3<i32>(u_input.a, 1i, -1i))), -(~vec3<i32>(u_input.a, -62331i, 0i))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-33i, u_input.a), vec2<i32>(u_input.a, u_input.a)), -u_input.a) | vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(5277i, u_input.a)), u_input.a, -2147483647i), abs(vec3<i32>(55122i, _wgslsmith_mod_i32(u_input.a, u_input.a), i32(-1i) * -42871i))), -1i);
    return _wgslsmith_mod_u32(arg_0.x, func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, u_input.a, var_3.x, 72629i) >> (~vec4<u32>(u_input.b, 12547u, 21085u, u_input.b) % vec4<u32>(32u)), select(var_3, firstTrailingBit(var_3), var_1.a)), !var_1.a));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_0, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b, 4294967295u), firstLeadingBit(12694u)), ~(~min(arg_0, arg_0))), ~select(max(min(u_input.b, arg_0), ~arg_0), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 4294967295u, arg_0, arg_0), vec4<u32>(1u, 0u, arg_0, arg_0), vec4<u32>(arg_0, u_input.b, 4501u, 66431u)), ~vec4<u32>(arg_0, 0u, arg_0, u_input.b)), true));
    global0 = arg_1;
    let var_1 = vec4<u32>(~(~1u), 1u, 0u, ~(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(31249u, u_input.b), u_input.b)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1207f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-501f, -107f)))) + -2719f)), 1258f);
    global0 = arg_1;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(360f - _wgslsmith_f_op_f32(max(698f, 1174f))))), 1297f, 237f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f), _wgslsmith_f_op_f32(floor(-421f))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = ~arg_0.xy;
    var var_1 = false & ((true & any(select(vec4<bool>(false, false, true, global2.a), vec4<bool>(global0.a, global0.a, true, false), true))) & true);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(~_wgslsmith_clamp_vec2_u32(arg_0.wy, vec2<u32>(4294967295u, 1u), arg_0.wy), Struct_1(true)), Struct_1(false))) + vec4<f32>(1061f, 1072f, _wgslsmith_f_op_f32(trunc(805f)), arg_1.x));
    var var_3 = max(~(~32036u) & _wgslsmith_mod_u32(func_3(u_input.a, false), ~44780u), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), 48589u)) << (var_0.x % 32u);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(594f))))) < _wgslsmith_f_op_f32(select(var_2.x, -267f, global1.a));
    return Struct_1(any(!(!select(vec4<bool>(global0.a, global1.a, false, false), vec4<bool>(var_4, false, var_4, false), global0.a))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1525f - -184f), _wgslsmith_f_op_f32(554f + 949f))) - -2179f)) + -650f);
    var var_1 = Struct_1(all(select(arg_0.xx, !vec2<bool>(arg_0.x, false), true)));
    let var_2 = countOneBits(-_wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -7483i, u_input.a, _wgslsmith_mod_i32(-2147483647i, -9311i), 71061i), max(firstTrailingBit(vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), -vec4<i32>(0i, -14648i, 9491i, 2147483647i)), vec4<i32>(select(u_input.a, u_input.a, true), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -5162i, -17211i), vec3<i32>(u_input.a, 1i, u_input.a)), u_input.a, u_input.a)));
    let var_3 = ~abs(~vec2<u32>(u_input.b, u_input.b ^ 2639u));
    var var_4 = var_3;
    return select(select(vec3<bool>(1006f <= _wgslsmith_f_op_f32(sign(var_0)), any(arg_0.zy), global0.a), select(vec3<bool>(false, global2.a || false, !global1.a), !select(vec3<bool>(var_1.a, arg_0.x, false), arg_0.wyx, vec3<bool>(true, arg_0.x, var_1.a)), !vec3<bool>(false, global1.a, true)), false), vec3<bool>(true, !arg_0.x, true), arg_0.yzy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -832f;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0, all(vec3<bool>(false, global1.a, global1.a)))))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-559f, _wgslsmith_f_op_f32(var_0 * 398f))));
    global1 = Struct_1(!(!(!var_1.a)) && (true || ((i32(-1i) * -2147483647i) >= u_input.a)));
    var_1 = Struct_1(true);
    var var_2 = !select(!vec3<bool>(false, false, global1.a || true), select(func_5(vec4<bool>(true, true, true, true), func_1(vec4<u32>(60828u, 53176u, u_input.b, 33522u), vec2<f32>(var_0, var_0))), !select(vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(false, global0.a, global1.a), var_1.a), global1.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b)) != ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(11010u, 91730u)));
    let var_3 = func_5(!select(!vec4<bool>(global2.a, var_2.x, false, true), vec4<bool>(!global0.a, var_0 < var_0, global1.a, any(var_2.zz)), select(!vec4<bool>(false, false, false, var_1.a), !vec4<bool>(false, global0.a, var_1.a, var_2.x), vec4<bool>(false, global0.a, global2.a, false))), func_1(max(~firstTrailingBit(vec4<u32>(u_input.b, u_input.b, 23089u, u_input.b)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 25137u), vec4<u32>(0u, 1u, 105176u, 4294967295u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1389f, _wgslsmith_f_op_f32(var_0 - -1000f)) - _wgslsmith_f_op_vec4_f32(func_4(9736u, func_1(vec4<u32>(u_input.b, 65087u, u_input.b, 1u), vec2<f32>(var_0, -463f)))).yx))).yx;
    global0 = func_1(vec4<u32>(4294967295u, ~(~18584u), firstTrailingBit(abs(_wgslsmith_clamp_u32(u_input.b, 0u, u_input.b))), u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1468f, var_0) * vec2<f32>(-2035f, -591f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(449f, 616f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, -935f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-770f, var_0)))))));
    let var_4 = vec2<bool>(global1.a != true, true);
    global2 = func_1(vec4<u32>(73108u, u_input.b, ~(~(~u_input.b)), u_input.b), vec2<f32>(-263f, 540f));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, abs(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.a, u_input.a, 0i)), u_input.a, var_0);
}

