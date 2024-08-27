struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), vec4<bool>(true, true, true, false), vec2<f32>(1024f, -101f), vec2<f32>(-874f, -1119f));

var<private> global1: Struct_1;

var<private> global2: array<f32, 20>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<f32> {
    global1 = Struct_1(_wgslsmith_clamp_i32(-13657i, u_input.b.x, _wgslsmith_clamp_i32(1i, u_input.b.x, 27362i) & 1i) & 6589i, select(global1.b, vec4<bool>(!(!global1.b.x), true, global0.b.x, all(select(vec3<bool>(true, global1.b.x, global1.b.x), global0.b.yxx, false))), select(true, true, global1.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(491f)), global1.d.x))) * _wgslsmith_f_op_vec2_f32(-global0.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.c.x + -184f))), _wgslsmith_f_op_f32(max(-1280f, -1000f)))));
    var var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 20u)];
    var var_1 = global0.a;
    var var_2 = select(abs(global0.a), firstTrailingBit(_wgslsmith_clamp_i32(~firstTrailingBit(-1i), min(-global1.a, 14888i), -(~global0.a))), !(!global1.b.x) & global1.b.x);
    var_1 = 2490i;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0.d, _wgslsmith_f_op_vec2_f32(abs(global1.d)))) * global0.c) + _wgslsmith_f_op_vec2_f32(max(global1.d, vec2<f32>(_wgslsmith_f_op_f32(-global0.d.x), global2[_wgslsmith_index_u32(u_input.a.x, 20u)])))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec4<f32>) -> Struct_1 {
    global0 = Struct_1(u_input.c, select(vec4<bool>(all(global0.b.zyz), !(global2[_wgslsmith_index_u32(u_input.a.x, 20u)] != -624f), any(vec4<bool>(true, false, global1.b.x, global1.b.x)), all(select(global0.b.yyx, vec3<bool>(arg_1.x, false, true), true))), vec4<bool>(true, !(!global1.b.x), !(0u == u_input.a.x), arg_1.x), true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.x, -668f))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(266f)), 1463f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2019f, global1.c.x), arg_0)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_2.yx)), vec2<f32>(arg_2.x, 1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d)));
    var var_0 = 9478u >> ((u_input.a.x >> (u_input.a.x % 32u)) % 32u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2));
    var var_2 = vec4<u32>(~17983u ^ (abs(~0u) << (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u)), 64443u, firstLeadingBit(u_input.a.x | u_input.a.x), ((~u_input.a.x ^ ~562u) ^ ~u_input.a.x) << (select(16071u, ~_wgslsmith_mod_u32(4294967295u, u_input.a.x), true) % 32u));
    let var_3 = u_input.a;
    return Struct_1(-1i | countOneBits(-abs(global1.a)), global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())) * _wgslsmith_f_op_vec2_f32(-arg_2.xz))), arg_2.xw);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = reverseBits(abs(abs(-_wgslsmith_div_i32(global0.a, 0i))));
    let var_1 = 2124i;
    let var_2 = u_input.a.x | _wgslsmith_dot_vec4_u32(~((vec4<u32>(91838u, 71310u, u_input.a.x, u_input.a.x) | vec4<u32>(0u, 4294967295u, 0u, u_input.a.x)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 61937u, 100033u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 1890u, 38341u, 1u))), vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a.x) | ~u_input.a.x, ~u_input.a.x, ~u_input.a.x, 1u));
    let var_3 = ~vec2<u32>(var_2, var_2);
    global2 = array<f32, 20>();
    return true;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = Struct_1(u_input.c, vec4<bool>(global0.b.x, countOneBits(_wgslsmith_mod_i32(21016i, -2147483647i)) > ~(-global1.a), func_4(func_2(global1.d, select(global0.b, global1.b, global0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1647f, global2[_wgslsmith_index_u32(0u, 20u)], global0.d.x, global2[_wgslsmith_index_u32(arg_0, 20u)]))), _wgslsmith_div_f32(global1.c.x, global0.d.x), global2[_wgslsmith_index_u32(~42628u, 20u)]), any(vec3<bool>(!global1.b.x, global1.b.x | true, false))), vec2<f32>(global1.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(f32(-1f) * -669f)), global2[_wgslsmith_index_u32(arg_0, 20u)]))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c * _wgslsmith_f_op_vec2_f32(ceil(global1.c))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x - global0.c.x) * _wgslsmith_f_op_f32(-global1.d.x)), 427f)));
    global2 = array<f32, 20>();
    global0 = func_2(vec2<f32>(func_2(_wgslsmith_f_op_vec2_f32(global0.d * vec2<f32>(-405f, -701f)), !(!global1.b), vec4<f32>(global0.d.x, -1177f, _wgslsmith_f_op_f32(617f - global1.d.x), -1262f)).c.x, _wgslsmith_f_op_vec2_f32(func_3()).x), select(global0.b, select(global0.b, global0.b, !select(true, false, global0.b.x)), global0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.d.x), 216f, _wgslsmith_f_op_f32(global0.c.x + global1.c.x), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, 0u), 20u)]) + vec4<f32>(_wgslsmith_f_op_f32(min(1335f, global2[_wgslsmith_index_u32(arg_0, 20u)])), 469f, global1.d.x, 449f))));
    global0 = Struct_1(0i, global1.b, vec2<f32>(_wgslsmith_f_op_f32(max(1028f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(43815u, 20u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x - _wgslsmith_f_op_f32(-global1.c.x)) - _wgslsmith_f_op_f32(-1000f * global2[_wgslsmith_index_u32(~1u, 20u)]))), global1.c);
    let var_0 = select(vec4<bool>(((global0.a < global1.a) & (true | global1.b.x)) != true, global0.b.x, select(true, false, true), true), vec4<bool>(global1.b.x, true, !all(global0.b), global0.b.x), true || all(vec4<bool>(global1.b.x | global1.b.x, true, false, any(vec2<bool>(global1.b.x, global1.b.x)))));
    return func_2(vec2<f32>(global1.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-151f - global1.d.x)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 20u)] * _wgslsmith_f_op_f32(select(-1287f, global0.c.x, true)))))), global0.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1202f, -206f, 886f, global0.d.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global2[_wgslsmith_index_u32(arg_0, 20u)], global0.c.x, global1.d.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(select(~_wgslsmith_div_u32(u_input.a.x, 39156u) >> (max(max(u_input.a.x, 20424u), u_input.a.x) % 32u), (countOneBits(u_input.a.x) & u_input.a.x) ^ u_input.a.x, !(u_input.c >= 0i) & false), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~reverseBits(0u)), u_input.a.xz));
    var var_1 = func_1(0u);
    let var_2 = ~4294967295u;
    global1 = Struct_1(max(u_input.c, _wgslsmith_sub_i32(~(-10384i) ^ global1.a, _wgslsmith_div_i32(-var_1.a, u_input.b.x))), global1.b, _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec2_f32(round(global1.c)), select(vec4<bool>(global0.b.x, false, global0.b.x, false), !global1.b, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1257f, -652f, -3231f, var_1.d.x))))).d + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c - global1.c) + vec2<f32>(462f, 580f)))), global0.c);
    let var_3 = vec4<i32>(4226i, global1.a, global1.a, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

