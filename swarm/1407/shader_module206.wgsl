struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13>;

var<private> global1: bool = false;

var<private> global2: array<bool, 12>;

var<private> global3: array<u32, 27> = array<u32, 27>(17378u, 87738u, 1u, 45792u, 65710u, 0u, 60325u, 4294967295u, 4294967295u, 4294967295u, 1823u, 4294967295u, 0u, 4294967295u, 0u, 3686u, 7600u, 4294967295u, 4294967295u, 4440u, 35109u, 27019u, 1147u, 1u, 0u, 4294967295u, 11617u);

var<private> global4: array<bool, 23> = array<bool, 23>(false, false, false, false, false, true, false, true, false, false, true, false, true, false, false, true, true, false, false, true, true, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = ~abs(_wgslsmith_mod_vec3_i32(u_input.e.zzx, ~select(vec3<i32>(arg_2.b, arg_2.c.x, 13501i), vec3<i32>(-1i, -1290i, 41455i), vec3<bool>(true, global4[_wgslsmith_index_u32(arg_0.x, 23u)], false))));
    let var_1 = ~(-(~(-(~u_input.e))));
    var var_2 = arg_1;
    global2 = array<bool, 12>();
    let var_3 = ~_wgslsmith_sub_u32(reverseBits(_wgslsmith_add_u32(24178u, 0u)), firstTrailingBit(4294967295u));
    return global2[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(~max(~0u, 26389u), 27u)]), 12u)];
}

fn func_1(arg_0: i32) -> vec3<bool> {
    global2 = array<bool, 12>();
    let var_0 = ~(~4294967295u);
    return !select(vec3<bool>(true, false, func_2(firstLeadingBit(u_input.a.wyx), Struct_1(-2052f, u_input.e.x, u_input.e.zzy, -2168f, 908f), Struct_1(515f, u_input.c, u_input.e.zzy, -1412f, -572f))), select(!select(vec3<bool>(global4[_wgslsmith_index_u32(var_0, 23u)], global2[_wgslsmith_index_u32(0u, 12u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(23013u, 12u)], false), global4[_wgslsmith_index_u32(30650u, 23u)]), vec3<bool>(true, any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], true)), global4[_wgslsmith_index_u32(var_0, 23u)] & true), vec3<bool>(global4[_wgslsmith_index_u32(var_0, 23u)], false, false)), global2[_wgslsmith_index_u32(~4294967295u, 12u)]);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    global2 = array<bool, 12>();
    global4 = array<bool, 23>();
    global4 = array<bool, 23>();
    let var_0 = any(vec2<bool>(!global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(min(firstLeadingBit(1u), ~39013u), 27u)], 23u)], true));
    let var_1 = ~u_input.e.x;
    return _wgslsmith_f_op_f32(exp2(arg_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 13>();
    var var_0 = func_1(u_input.d);
    global4 = array<bool, 23>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(652f)) * _wgslsmith_f_op_f32(trunc(-2441f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-146f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-415f)))), -1000f);
    global2 = array<bool, 12>();
    var var_2 = Struct_1(var_1, 10936i & _wgslsmith_div_i32(-u_input.d, min(u_input.c, u_input.e.x)), ~u_input.e.wyx, 375f, var_1);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-106f, _wgslsmith_f_op_f32(872f * var_1))), _wgslsmith_f_op_f32(func_3(true, Struct_1(var_2.a, 1i, -vec3<i32>(u_input.d, u_input.e.x, -2709i), _wgslsmith_f_op_f32(var_1 + var_2.e), _wgslsmith_f_op_f32(var_1 + 107f)))))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.d)) * 1026f))), u_input.d, u_input.e.yxz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_2.a, 165f))))) - _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e) + var_1), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.d, -113f, true)) - _wgslsmith_f_op_f32(var_2.e - var_2.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-364f, var_1), vec2<f32>(var_4.a, 1290f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1546f, -323f)), any(var_0.xz)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(round(var_4.e))) * vec2<f32>(var_1, 175f)))), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.wy, u_input.b.xx, global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec2<u32>(~u_input.a.x, ~(1u >> (u_input.a.x % 32u)))), _wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.zy, min(vec2<u32>(global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(36563u, 27u)]), global0[_wgslsmith_index_u32(33617u, 13u)])), 13u)], min(_wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(0u, 13u)], vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 1u)), vec2<u32>(4294967295u, u_input.a.x)), _wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(49890u, global3[_wgslsmith_index_u32(u_input.a.x, 27u)]), 13u)], firstTrailingBit(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 27u)], 13u)]))) ^ vec2<u32>(~1u, ~u_input.a.x), abs(~(u_input.a.xwz << (u_input.b % vec3<u32>(32u)))) | u_input.b);
}

