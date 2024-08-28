struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

var<private> global1: array<u32, 22> = array<u32, 22>(19176u, 72972u, 35990u, 26807u, 4294967295u, 4294967295u, 14550u, 0u, 0u, 0u, 10328u, 5678u, 1u, 2080u, 4294967295u, 23869u, 1u, 4294967295u, 33839u, 0u, 0u, 1u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32) -> vec3<u32> {
    global1 = array<u32, 22>();
    global0 = array<vec2<u32>, 21>();
    global1 = array<u32, 22>();
    var var_0 = abs(~_wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(u_input.b, abs(0u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(301f, 495f) * vec2<f32>(-1522f, arg_0)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(789f, arg_0) * vec2<f32>(arg_0, -1088f)))))));
    return vec3<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 22u)], 4294967295u) ^ vec3<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)]), vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 22u)], 5500u, 0u) << (vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], 4294967295u, u_input.b) % vec3<u32>(32u))), ~(~vec3<u32>(u_input.b, 36576u, global1[_wgslsmith_index_u32(u_input.b, 22u)]))), _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 22u)], 22u)], 22u)], u_input.b, 6520u)), abs(vec3<u32>(1u, 34967u, u_input.b))), ~81148u), 0u);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global1 = array<u32, 22>();
    let var_0 = !(!(!(!select(vec3<bool>(arg_0.c, arg_0.c, false), vec3<bool>(true, true, false), vec3<bool>(arg_0.c, false, arg_0.c)))));
    global0 = array<vec2<u32>, 21>();
    let var_1 = Struct_1(arg_0.a, -6634i, false, arg_0.d);
    var var_2 = all(var_0.yx);
    return select(vec4<bool>(-1592f == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.d.x))), var_0.x, (_wgslsmith_add_u32(1u, var_1.a.x) >> (~0u % 32u)) != abs(24564u), any(select(vec4<bool>(var_1.c, false, true, var_1.c), !vec4<bool>(var_1.c, var_0.x, var_0.x, arg_0.c), var_0.x))), !vec4<bool>(!(!var_0.x), false, true, all(select(vec4<bool>(var_0.x, false, var_1.c, true), vec4<bool>(var_1.c, var_1.c, var_1.c, var_0.x), false))), select(vec4<bool>(true, arg_0.c, true, !any(vec4<bool>(var_0.x, false, var_1.c, true))), select(!vec4<bool>(var_1.c, arg_0.c, true, var_0.x), vec4<bool>(true, var_1.c, any(vec4<bool>(var_1.c, var_0.x, true, false)), false), true), select(select(vec4<bool>(true, var_1.c, false, false), !vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(var_1.c, false, true, var_1.c), !vec4<bool>(var_1.c, true, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, false, arg_0.c)), vec4<bool>(false, false, !var_1.c, !var_1.c))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = vec4<bool>(arg_0.x, all(select(vec3<bool>(1i < u_input.a.x, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, false, true), any(vec2<bool>(arg_0.x, false)) || !arg_0.x)), reverseBits(global1[_wgslsmith_index_u32(countOneBits(~9077u), 22u)]) > 104218u, true);
    global1 = array<u32, 22>();
    var var_1 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(max(613u, 1006u), _wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(u_input.b, 22u)]), abs(26816u)) | vec3<u32>(reverseBits(34037u), ~u_input.b, min(global1[_wgslsmith_index_u32(10736u, 22u)], 1u)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1031f, -179f)) - -767f))), firstTrailingBit(20333i), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(925f, -310f)), _wgslsmith_f_op_f32(f32(-1f) * -466f)))));
    var_0 = func_3(Struct_1(var_1.a, var_1.b, true, _wgslsmith_f_op_vec2_f32(-var_1.d)));
    var var_2 = -(~(~select(vec4<i32>(var_1.b, 1i, 5856i, -31719i), vec4<i32>(var_1.b, u_input.a.x, u_input.a.x, -1i) << (vec4<u32>(53144u, 0u, u_input.b, 18813u) % vec4<u32>(32u)), func_3(Struct_1(vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(55041u, 22u)], 1u), u_input.a.x, false, var_1.d)))));
    return Struct_1(var_1.a, ~u_input.a.x, ~var_2.x >= _wgslsmith_mod_i32(var_2.x, -6646i), var_1.d);
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = abs(~u_input.a);
    global0 = array<vec2<u32>, 21>();
    var var_1 = func_1(!select(!select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, false), vec2<bool>(arg_0.c, false)), !select(vec2<bool>(true, true), vec2<bool>(false, true), arg_0.c), arg_0.c));
    var var_2 = func_1(select(vec2<bool>(arg_0.c, arg_0.c && var_1.c), vec2<bool>(any(vec4<bool>(var_1.c, false, true, true)), var_1.c), vec2<bool>(arg_0.d.x < var_1.d.x, true != arg_0.c))).a.x << (min(134992u, global1[_wgslsmith_index_u32(0u, 22u)]) % 32u);
    global0 = array<vec2<u32>, 21>();
    return vec4<bool>(arg_0.d.x > arg_0.d.x, select(u_input.b, 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -486f) == _wgslsmith_f_op_f32(arg_0.d.x * 359f)) > u_input.b, func_3(arg_0).x, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(true, true, true, true), !func_4(func_1(vec2<bool>(false, true))), vec4<bool>(!all(func_4(Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(27713u, 22u)], 0u, 35349u), -15102i, true, vec2<f32>(103f, -699f))).zzy), true, true & !any(vec4<bool>(false, true, true, false)), false));
    let var_1 = vec2<bool>(var_0.x, true);
    let var_2 = func_1(var_1).c | any(vec4<bool>(true, any(vec4<bool>(false, true, false, var_0.x)), true, true));
    var_0 = select(vec4<bool>(false, true, true, var_2), func_3(func_1(select(vec2<bool>(var_1.x, false), vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, false)))), false);
    let var_3 = func_1(!(!(!vec2<bool>(false, var_2))));
    global0 = array<vec2<u32>, 21>();
    var var_4 = vec3<u32>((func_2(469f).x | _wgslsmith_clamp_u32(max(37119u, global1[_wgslsmith_index_u32(21657u, 22u)]), ~var_3.a.x, 1u)) & u_input.b, ~abs(0u) ^ min(4294967295u, global1[_wgslsmith_index_u32(~0u, 22u)] | ~var_3.a.x), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(u_input.b, 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -611f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d.x + var_3.d.x) * _wgslsmith_div_f32(1116f, var_3.d.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.d.x))))));
}

