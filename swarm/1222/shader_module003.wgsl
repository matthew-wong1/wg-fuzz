struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(vec3<i32>(54837i, -10595i, 44148i), vec4<u32>(22310u, 30226u, 52848u, 13123u), -628f);

var<private> global2: array<f32, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> bool {
    global0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 15529i, -25010i), vec3<i32>(-1i, 0i, 0i)), u_input.a.x), min(_wgslsmith_div_i32(u_input.a.x, arg_0.a.x), 58753i)), -u_input.a.x));
    global2 = array<f32, 29>();
    return global1.b.x != 1621u;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    global0 = arg_1;
    var var_0 = !(!any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, false, true))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32((abs(arg_2) >> ((32299u & u_input.b) % 32u)) ^ 36651u, 29u)]));
    var var_2 = arg_1;
    var_2 = arg_1;
    return select(vec4<bool>(select(true, all(vec3<bool>(true, true, true)), true), all(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false))), global1.b.x == max(_wgslsmith_add_u32(1u, 1u), ~16381u), false), vec4<bool>(true, true, false, true), select(!vec4<bool>(global0.a >= global1.a.x, true, true, true), vec4<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), !all(vec3<bool>(false, true, true)), true, true), !vec4<bool>(true, true, false, func_2(Struct_2(global1.a, global1.b, global2[_wgslsmith_index_u32(31616u, 29u)]), vec3<bool>(true, true, true)))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(vec4<bool>(all(vec3<bool>(true, true, true)), false, true, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f * global2[_wgslsmith_index_u32(0u, 29u)]))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.c - global1.c)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(6093u, 29u)], global1.c) - vec2<f32>(global1.c, -227f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global2[_wgslsmith_index_u32(5585u, 29u)])))))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, !func_2(Struct_2(global1.a, global1.b, 1066f), vec3<bool>(false, false, false))), func_3(global1.c, Struct_1(1i), ~4594u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1352f, global1.c, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 29u)] - global1.c) * _wgslsmith_f_op_f32(-global1.c))) * -1292f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c, global2[_wgslsmith_index_u32(~u_input.b, 29u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, global1.c)))));
    let var_1 = 672f;
    var var_2 = Struct_3(!(!select(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.c.x), select(vec4<bool>(var_0.c.x, false, true, var_0.a.x), var_0.a, vec4<bool>(true, true, var_0.c.x, var_0.a.x)), vec4<bool>(true, true, true, true))), vec2<f32>(-151f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec4<bool>(all(func_3(-174f, Struct_1(global1.a.x), abs(global1.b.x)).xw), true, var_0.c.x, any(!var_0.c)), -708f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.c)), 675f));
    var_2 = Struct_3(select(vec4<bool>(true, true, _wgslsmith_mult_i32(u_input.a.x, 1i) >= ~27744i, var_0.c.x), vec4<bool>(var_0.c.x, true, false, !var_2.a.x), any(!var_2.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b, vec2<f32>(var_2.d, global1.c)) - vec2<f32>(997f, -204f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, -2232f) * var_2.b) - vec2<f32>(-113f, 1108f))) + var_0.b), select(var_2.c, select(!(!vec4<bool>(true, var_0.c.x, true, var_0.c.x)), func_3(_wgslsmith_f_op_f32(-1207f * global2[_wgslsmith_index_u32(global1.b.x, 29u)]), Struct_1(13326i), u_input.b), true), select(var_0.c, vec4<bool>(all(vec4<bool>(true, var_2.a.x, false, false)), !var_2.a.x, !var_0.a.x, true && var_2.c.x), true)), var_1, var_0.d);
    var var_3 = Struct_2(vec3<i32>(select(global0.a ^ global0.a, _wgslsmith_dot_vec3_i32(global1.a, global1.a), any(var_2.a.zz)), -_wgslsmith_dot_vec3_i32(global1.a, global1.a), 0i), vec4<u32>(u_input.b, select(_wgslsmith_div_u32(abs(0u), global1.b.x), global1.b.x, true), u_input.b, _wgslsmith_add_u32(max(4294967295u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 19200u), global1.b.yz)) << (~_wgslsmith_div_u32(4883u, 4294967295u) % 32u)), -653f);
    return Struct_1(~global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = Struct_2(u_input.a, ~(~global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -723f), -827f))));
    var var_1 = true;
    global2 = array<f32, 29>();
    let var_2 = func_2(Struct_2(u_input.a, ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, 16837u), min(global1.b, vec4<u32>(92667u, 0u, u_input.b, 70848u))), _wgslsmith_f_op_f32(ceil(-111f))), vec3<bool>(false, false || !(global1.c <= -1233f), true));
    var_0 = func_1();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1107f))) < global1.c;
    var var_4 = Struct_2(firstLeadingBit(-abs(global1.a) >> (select(vec3<u32>(global1.b.x, 34709u, global1.b.x), abs(global1.b.xyw), var_2) % vec3<u32>(32u))), global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1072f)), -1000f));
    var var_5 = Struct_3(vec4<bool>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global1.b.x, 27733u), vec3<u32>(global1.b.x, 32101u, 1u)) <= min(29521u, _wgslsmith_sub_u32(79182u, global1.b.x)), min(min(u_input.b, 4294967295u), _wgslsmith_clamp_u32(135917u, 18496u, u_input.b)) < global1.b.x, false, var_2), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)), -129f), _wgslsmith_div_f32(1682f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-929f, -1000f)))), vec4<bool>(_wgslsmith_f_op_f32(ceil(var_4.c)) >= 1316f, !(var_2 | any(vec2<bool>(var_2, var_2))), true, all(vec3<bool>(!var_2, true, false))), global1.c, 1394f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-949f, -657f)), global1.c))), global1.a);
}

