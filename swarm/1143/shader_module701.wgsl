struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: u32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(i32(-2147483648), 4075i), vec2<i32>(-28101i, 22088i), vec2<i32>(-1i, 9269i), vec2<i32>(1i, 4077i));

var<private> global1: array<u32, 4>;

var<private> global2: array<vec3<bool>, 14>;

var<private> global3: vec4<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<bool> {
    global0 = array<vec2<i32>, 4>();
    global2 = array<vec3<bool>, 14>();
    global1 = array<u32, 4>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(346f))), _wgslsmith_f_op_f32(-1275f + _wgslsmith_f_op_f32(1788f + -2738f)))));
    var var_1 = all(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), select(global2[_wgslsmith_index_u32(18u, 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)], vec3<bool>(false, false, false)), true), true));
    return vec3<bool>(select(all(!(!global2[_wgslsmith_index_u32(39315u, 14u)])), false, any(vec2<bool>(true, true))), true, true);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3((0u & select(abs(0u), u_input.a.x, all(vec3<bool>(true, false, false)))) >> ((_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), ~40236u) << (u_input.a.x % 32u)) % 32u), -_wgslsmith_div_i32(0i, u_input.c) >> (_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(0u, 4u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 4u)], 4u)]) % 32u));
    var var_1 = var_0.b;
    global2 = array<vec3<bool>, 14>();
    var var_2 = select(!func_3(), vec3<bool>(select(false, !(global3.x >= -48032i), _wgslsmith_clamp_u32(4294967295u, 41236u, 0u) != 69868u), true, !(global3.x == var_0.b) || false), select(vec3<bool>(any(vec2<bool>(true, true)), any(select(vec3<bool>(true, true, false), global2[_wgslsmith_index_u32(40859u, 14u)], vec3<bool>(false, true, true))), true), select(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(33506u, 4u)], global1[_wgslsmith_index_u32(57476u, 4u)]), 4294967295u << (u_input.a.x % 32u)), 14u)], vec3<bool>(false, true, false), any(vec3<bool>(true, true, true))), global2[_wgslsmith_index_u32(u_input.a.x, 14u)]));
    var var_3 = _wgslsmith_div_i32(u_input.b, -20720i);
    return Struct_4(Struct_1(var_2.x, vec3<u32>(var_0.a, u_input.a.x >> (4003u % 32u), global1[_wgslsmith_index_u32(abs(0u), 4u)]) & u_input.a, u_input.a | u_input.a, vec4<bool>(true, true, !(var_2.x && false), true)), var_2.x, var_2.x, _wgslsmith_sub_u32(~var_0.a, min(_wgslsmith_dot_vec3_u32(vec3<u32>(5123u, 4294967295u, u_input.a.x), u_input.a), _wgslsmith_add_u32(70069u, var_0.a)) ^ ~abs(u_input.a.x)), global2[_wgslsmith_index_u32(4294967295u, 14u)]);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec2<bool>) -> Struct_2 {
    global0 = array<vec2<i32>, 4>();
    var var_0 = arg_0;
    var var_1 = min(-global3.wwy, abs(-global3.zzw));
    let var_2 = ~(~1u);
    var_0 = arg_0;
    return Struct_2(all(!(!(!vec2<bool>(arg_2.x, false)))));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 4u)] << ((~(~0u << (firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 4u)]) % 32u)) << (global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(30564u, 43972u), ~u_input.a.xx), _wgslsmith_add_u32(arg_0, 49402u)), 4u)] % 32u)) % 32u), 4u)];
    let var_1 = Struct_3(u_input.a.x >> (~global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x, 6259u), 4u)] % 32u), _wgslsmith_mod_i32(-13626i, 29067i));
    let var_2 = Struct_5(0u, var_1, _wgslsmith_f_op_f32(f32(-1f) * -1163f));
    let var_3 = var_2.c;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1057f, 339f), vec2<f32>(var_3, 373f))) - vec2<f32>(var_3, -384f))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, var_3) + vec2<f32>(var_3, -1214f)) + vec2<f32>(var_2.c, -222f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.c, 1601f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1288f, 466f) - vec2<f32>(var_3, 446f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(294f, var_3)))))), select(select(vec2<bool>(true, true), func_3().zy, true), !vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(arg_1.a, arg_0 <= 1u)))));
    return any(vec4<bool>(arg_1.a, func_2().b, func_2().a.d.x, any(func_2().a.d.yxw)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    let var_0 = arg_0.d.xw;
    var var_1 = func_5(4294967295u, func_4(func_2(), func_2(), vec4<bool>(any(select(arg_0.d, arg_0.d, true)), var_0.x, true, any(!arg_0.d)), !select(func_2().a.d.xz, arg_0.d.xy, !arg_0.d.x)));
    return 1487f;
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2177f * 734f), -1423f, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-519f, -1000f)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(floor(767f)), -220f)))))));
    global2 = array<vec3<bool>, 14>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 4>();
    global3 = vec4<i32>(_wgslsmith_mod_i32(global3.x, u_input.c), global3.x, 0i, ~_wgslsmith_div_i32(-_wgslsmith_add_i32(1i, 1i), -2147483647i | u_input.c));
    global1 = array<u32, 4>();
    var var_0 = 243f;
    var var_1 = 711f;
    var_0 = _wgslsmith_div_f32(-644f, -1000f);
    var var_2 = vec3<bool>(!(!all(vec4<bool>(false, true, true, true))), func_6(reverseBits(~select(vec4<i32>(1130i, u_input.b, u_input.b, -27328i), vec4<i32>(global3.x, -20454i, u_input.b, u_input.c), vec4<bool>(true, true, true, false))), Struct_1(_wgslsmith_f_op_f32(func_1(Struct_1(false, vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(44415u, 4u)], 4294967295u), u_input.a, vec4<bool>(true, true, true, true)), vec4<f32>(-746f, 183f, 617f, 294f))) >= 1186f, u_input.a, reverseBits(vec3<u32>(1u, u_input.a.x, u_input.a.x)) >> (u_input.a % vec3<u32>(32u)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), false)), vec2<bool>(false, func_3().x), func_2().a), ((select(true, true, true) | true) | true) || false);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec3<u32>(global1[_wgslsmith_index_u32(24576u, 4u)], 46233u, 2173u))) >> (vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, min(u_input.a.x, 40576u)), 4u)], 4294967295u, ~33592u | u_input.a.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-575f)) + -142f), -271f) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1001f, -1000f) + _wgslsmith_f_op_f32(1072f + -2099f)), _wgslsmith_f_op_f32(-662f + -1456f))));
}

