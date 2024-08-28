struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(64014u, 84910u, 0u, 1u));

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(-249f), Struct_2(-2342f), Struct_2(-2033f), Struct_2(1701f), Struct_2(-1605f), Struct_2(-1481f), Struct_2(-597f), Struct_2(-758f), Struct_2(-1292f), Struct_2(-549f), Struct_2(-1000f), Struct_2(-158f), Struct_2(-1113f), Struct_2(-841f), Struct_2(1000f), Struct_2(-949f), Struct_2(262f), Struct_2(549f), Struct_2(-1000f), Struct_2(-853f), Struct_2(-138f), Struct_2(-1066f), Struct_2(-377f), Struct_2(-1542f), Struct_2(-1248f), Struct_2(1000f), Struct_2(1230f), Struct_2(556f), Struct_2(1669f));

var<private> global2: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(31043i, -11551i), vec2<i32>(-31876i, -16454i), vec2<i32>(53550i, -25382i), vec2<i32>(-1i, 0i), vec2<i32>(-42187i, 11500i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(26635i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(-30927i, 0i), vec2<i32>(27292i, 15971i), vec2<i32>(1i, 0i), vec2<i32>(0i, -1i), vec2<i32>(-7507i, -37066i), vec2<i32>(1i, 44910i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(7561i, 1i), vec2<i32>(27979i, 1i), vec2<i32>(1i, -1i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    let var_0 = select(any(vec4<bool>(true, true, true, true)), any(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true))), false);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(190f + arg_0) + _wgslsmith_div_f32(arg_1.a, arg_0)), _wgslsmith_f_op_f32(abs(arg_0)), -356f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2398f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 471f, 1000f, arg_1.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 526f, arg_0, -244f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(879f, 803f, 248f, arg_0) + vec4<f32>(arg_0, arg_0, arg_0, arg_0)))))), !(!vec4<bool>(false, false, var_0, any(vec2<bool>(var_0, var_0))))));
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-555f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_1.a))))), -591f));
    var var_3 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1f)), -1376f));
    let var_4 = u_input.c;
    return ~(~11551u);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: i32) -> u32 {
    global0 = Struct_1(_wgslsmith_mod_vec4_u32(global0.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, ~0u, ~28575u, 45258u), vec4<u32>(arg_1, abs(global0.a.x), arg_1, abs(arg_0.x)), vec4<u32>(~u_input.a, u_input.a, func_3(1592f, global1[_wgslsmith_index_u32(38626u, 29u)]), 105519u))));
    var var_0 = global0.a;
    global2 = array<vec2<i32>, 18>();
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, firstLeadingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 33642u, 19660u), vec3<u32>(u_input.a, arg_1, var_0.x)) >> (_wgslsmith_mod_u32(arg_1, 39539u) % 32u), var_0.x), vec4<u32>(_wgslsmith_add_u32(1u, u_input.a), arg_1 ^ firstLeadingBit(0u), 10087u, 4294967295u ^ _wgslsmith_div_u32(arg_0.x, 1u))) ^ _wgslsmith_mod_u32(_wgslsmith_add_u32(global0.a.x, ~arg_0.x | 4294967295u), ~arg_1);
    var var_2 = !(!all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))));
    return u_input.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_2.a.x, _wgslsmith_sub_u32(u_input.a, reverseBits(~arg_1.a.x))), 29u)];
    global0 = arg_2;
    global1 = array<Struct_2, 29>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-503f, 1473f, -643f) + vec3<f32>(1691f, 2391f, var_0.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a) + vec3<f32>(444f, 1014f, var_0.a))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, -1000f, _wgslsmith_f_op_f32(trunc(var_0.a))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a), vec3<f32>(839f, 477f, var_0.a)))), abs(arg_1.a.x) <= arg_2.a.x)))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a))));
    return Struct_1(arg_2.a);
}

fn func_1() -> i32 {
    global0 = func_4(vec3<u32>(~_wgslsmith_dot_vec2_u32(~global0.a.xw, global0.a.yw), ~global0.a.x, 10918u), Struct_1(vec4<u32>(_wgslsmith_sub_u32(10637u, u_input.a) >> ((u_input.a & global0.a.x) % 32u), 4294967295u | _wgslsmith_dot_vec4_u32(global0.a, vec4<u32>(global0.a.x, 4294967295u, 8512u, u_input.a)), ~global0.a.x & 4662u, func_2(~vec2<u32>(82135u, 4294967295u), u_input.a, 41032i))), Struct_1(abs(vec4<u32>(global0.a.x, _wgslsmith_div_u32(u_input.a, 1u), 0u & global0.a.x, ~global0.a.x))));
    global1 = array<Struct_2, 29>();
    let var_0 = !(!vec3<bool>(any(vec2<bool>(true, true)), _wgslsmith_clamp_i32(2147483647i, -21738i, -41297i) != _wgslsmith_add_i32(u_input.d.x, -2147483647i), true));
    var var_1 = 1u;
    var var_2 = select(vec2<bool>(var_0.x, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), var_0.x), true))), vec2<bool>(!(true & var_0.x), any(select(vec4<bool>(false, true, var_0.x, true), select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), var_0.x)))), true);
    return -(~abs(0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1457f)), 1f));
    var var_1 = global1[_wgslsmith_index_u32(0u, 29u)];
    var var_2 = func_1();
    var_1 = global1[_wgslsmith_index_u32(~(~min(4294967295u, 35694u)), 29u)];
    global2 = array<vec2<i32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -455f), var_1.a)));
}

