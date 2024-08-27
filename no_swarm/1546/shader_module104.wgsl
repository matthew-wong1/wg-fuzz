struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-990f, -2177f);

var<private> global1: Struct_2 = Struct_2(1u);

var<private> global2: array<f32, 10> = array<f32, 10>(691f, 305f, -1507f, 344f, 585f, -1000f, -408f, -2224f, 151f, 1136f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<u32>(abs(global1.a), global1.a, ~(~global1.a));
    let var_1 = -(~(-(vec2<i32>(-1i, u_input.a) << (var_0.zy % vec2<u32>(32u)))));
    let var_2 = Struct_2(var_0.x);
    let var_3 = 0u;
    var var_4 = max(reverseBits(~(~var_3)), abs(_wgslsmith_div_u32(61596u, 22256u)));
    return Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(~var_3, var_3, _wgslsmith_sub_u32(4294967295u, var_0.x)), abs(~vec3<u32>(var_0.x, 1u, 4294967295u))) | max(select(_wgslsmith_mod_u32(4294967295u, global1.a), 7860u, true), global1.a));
}

fn func_3(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~firstTrailingBit(global1.a);
    global1 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-318f, -196f, false)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.a, 10u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.a, 10u)]), global0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global1.a, 10u)], global2[_wgslsmith_index_u32(0u, 10u)]) - _wgslsmith_f_op_f32(sign(global0.x)))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1888f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(40217u, 10u)], global0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(97637u, 10u)])), 728f))))), vec3<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), any(vec2<bool>(true, false)))), any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, true))), 0u != ~(arg_0.a ^ 1u))));
    let var_2 = Struct_2(~abs(_wgslsmith_mult_u32(global1.a, ~arg_0.a)));
    let var_3 = u_input.a;
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = !(!select(vec4<bool>(true, true, arg_2.x, all(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true))), !vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(all(arg_2), true, arg_2.x, arg_3.a == arg_0.a)));
    let var_1 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(58047u, ~(~arg_0.a)), ~(~vec2<u32>(0u, arg_1.a)), ~(select(vec2<u32>(4294967295u, 10928u), vec2<u32>(global1.a, 36678u), var_0.x) >> (~vec2<u32>(397u, 1u) % vec2<u32>(32u))));
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(54951u, 1u), 10u)]), global2[_wgslsmith_index_u32(~15473u, 10u)]), var_0, global2[_wgslsmith_index_u32(~(~arg_3.a), 10u)], abs(vec4<i32>(-_wgslsmith_div_i32(0i, 19497i), u_input.a, u_input.b.x, abs(-u_input.a))), global2[_wgslsmith_index_u32(countOneBits(~(~firstTrailingBit(0u))), 10u)]);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(-2350f - -982f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-231f)), -1033f, -1028f, _wgslsmith_f_op_f32(f32(-1f) * -127f)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-887f, 331f, var_2.c, -1226f) * vec4<f32>(203f, 585f, global2[_wgslsmith_index_u32(var_1.x, 10u)], global2[_wgslsmith_index_u32(var_1.x, 10u)]))))))), select(var_0, vec4<bool>(false, _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(1u, 10u)])) > _wgslsmith_f_op_f32(abs(global0.x)), all(var_0), true), var_2.b.x)));
    var var_4 = var_2.d.x;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_3.zw)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1062f, var_2.c) - var_3.yw)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(141f, global0.x)))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1737f, global0.x))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-859f)), global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.xx) + _wgslsmith_f_op_vec2_f32(var_3.xw + var_3.yx)) * vec2<f32>(_wgslsmith_f_op_f32(round(501f)), global2[_wgslsmith_index_u32(~global1.a, 10u)]))), !(!any(select(vec3<bool>(true, var_2.b.x, true), vec3<bool>(false, true, true), vec3<bool>(arg_2.x, true, true))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_2 {
    global2 = array<f32, 10>();
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(~arg_2.x), func_3(func_2()), vec3<bool>(0u <= arg_2.x, !any(arg_3.b.wyw), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, 1i, 2147483647i)) != _wgslsmith_dot_vec4_i32(arg_3.d, arg_3.d)), func_2()))));
    var var_0 = func_3(func_3(func_2()));
    let var_1 = arg_3.b;
    let var_2 = -1675f;
    return Struct_2(~(4294967295u | (global1.a | arg_2.x)) & ~arg_2.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1175f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c, global0.x))), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(global1.a, 10u)])), _wgslsmith_f_op_f32(-global0.x), arg_1.b.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(arg_0.a, 10u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(572f - global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-669f, _wgslsmith_f_op_f32(ceil(arg_2)))) + global0.x) - _wgslsmith_div_f32(858f, 1636f)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_2(global1.a), arg_0, arg_1.b.zyz, func_1(vec2<bool>(true, any(arg_1.b)), u_input.b.zx, min(~vec3<u32>(global1.a, global1.a, arg_0.a), vec3<u32>(global1.a, 35253u, global1.a)), Struct_1(_wgslsmith_f_op_f32(-var_0.x), arg_1.b, _wgslsmith_f_op_f32(var_0.x * arg_2), arg_1.d << (vec4<u32>(3356u, arg_0.a, 41503u, 77963u) % vec4<u32>(32u)), _wgslsmith_div_f32(1502f, global0.x))))));
    let var_1 = Struct_1(_wgslsmith_div_f32(817f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_2(1u), Struct_2(global1.a), arg_1.b.yyz, arg_0)).x)), select(arg_1.b, select(arg_1.b, vec4<bool>(any(vec3<bool>(arg_1.b.x, true, arg_1.b.x)), arg_1.b.x, !arg_1.b.x, arg_1.b.x), !arg_1.b), select(global1.a == 105914u, _wgslsmith_f_op_f32(-global0.x) >= _wgslsmith_f_op_f32(-global0.x), any(select(vec3<bool>(true, true, arg_1.b.x), vec3<bool>(true, true, false), arg_1.b.x)))), arg_2, vec4<i32>(_wgslsmith_clamp_i32(1i, u_input.b.x, -2147483647i), ~_wgslsmith_dot_vec3_i32(-arg_1.d.xxy, arg_1.d.xzw), _wgslsmith_div_i32(-2147483647i, u_input.a) | countOneBits(_wgslsmith_mod_i32(arg_1.d.x, 4398i)), _wgslsmith_dot_vec2_i32(~(u_input.b.xy & u_input.b.zy), vec2<i32>(1i, i32(-1i) * -5724i))), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.a, 10u)]))))));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(866f, arg_2, -1317f, global0.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -968f, -632f, var_1.a), vec4<f32>(-638f, 516f, global2[_wgslsmith_index_u32(arg_0.a, 10u)], -1006f)))))))));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(64885u);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(func_5(func_1(vec2<bool>(false, false), vec2<i32>(u_input.b.x, u_input.a), vec3<u32>(global1.a, 0u, 37488u), Struct_1(-1010f, vec4<bool>(false, false, false, false), 1156f, vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, -50811i), global0.x)), Struct_1(global0.x, vec4<bool>(true, true, true, true), 366f, vec4<i32>(u_input.a, -1i, u_input.a, -4453i), -397f), global0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), 1102f))))));
    let var_0 = firstLeadingBit(~vec2<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(18591u, 72951u)), ~vec2<u32>(26246u, global1.a)), global1.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-758f, global2[_wgslsmith_index_u32(global1.a, 10u)], global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-587f + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(10083u, 10u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(58033u, 10u)], global2[_wgslsmith_index_u32(34348u, 10u)], global0.x, -1220f), vec4<f32>(global0.x, global0.x, -1920f, global0.x), false))))))));
    var var_2 = func_3(Struct_2(abs(_wgslsmith_div_u32(var_0.x, 1u))));
    let var_3 = Struct_2(3822u);
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(global1.a, 10u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_3.a, 10u)] - global0.x)), -2666f, _wgslsmith_f_op_f32(round(1184f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global0.x, -122f)), 871f, var_1.x < 641f))) + 1060f), firstLeadingBit(~(~vec4<i32>(-11930i, 1i, u_input.b.x, -1i))));
}

