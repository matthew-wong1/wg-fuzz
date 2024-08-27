struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9>;

var<private> global1: array<f32, 2> = array<f32, 2>(438f, -122f);

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(-393f), Struct_2(-228f), Struct_2(237f), Struct_2(1799f), Struct_2(-1531f), Struct_2(130f), Struct_2(1000f), Struct_2(-668f), Struct_2(1592f), Struct_2(-1508f), Struct_2(-438f), Struct_2(1153f), Struct_2(-756f), Struct_2(548f), Struct_2(-735f), Struct_2(716f), Struct_2(904f), Struct_2(-726f), Struct_2(774f), Struct_2(-1127f));

var<private> global4: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec3<u32>) -> vec2<u32> {
    var var_0 = ~(~0u);
    global0 = array<vec4<bool>, 9>();
    global3 = array<Struct_2, 20>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.a))), -792f)) + _wgslsmith_div_f32(216f, -595f)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-253f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a)))))));
    return vec2<u32>(abs(1u), arg_2.x);
}

fn func_4(arg_0: i32, arg_1: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1222f, global2.a, _wgslsmith_div_f32(1386f, _wgslsmith_f_op_f32(step(global2.a, -1035f))), global1[_wgslsmith_index_u32(~select(arg_1, 0u, true), 2u)]) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-755f, global1[_wgslsmith_index_u32(1u, 2u)], global2.a, -332f))))))), vec4<f32>(global2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1114f))), 967f, -1444f), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.d >> (~arg_1 % 32u), ~360u, u_input.d), 9u)]));
    var var_1 = global3[_wgslsmith_index_u32(0u, 20u)];
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 2u)] * var_0.x), _wgslsmith_div_f32(global2.a, 1677f))), -1190f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 2u)])))));
    let var_2 = Struct_1(1656f);
    var var_3 = all(vec2<bool>(!any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false))), (select(47165u, u_input.d, true) << (_wgslsmith_add_u32(114574u, arg_1) % 32u)) <= arg_1));
    return select(_wgslsmith_mod_vec2_u32(vec2<u32>(~4294967295u, max(~85620u, _wgslsmith_clamp_u32(0u, 3726u, 2389u))), min(abs(vec2<u32>(arg_1, arg_1)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 38302u), vec2<u32>(u_input.d, arg_1))) << (vec2<u32>(~4294967295u, u_input.d >> (1u % 32u)) % vec2<u32>(32u))), vec2<u32>(3803u, arg_1), vec2<bool>(true, true));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = (11277i < ((-u_input.b.x | ~u_input.a.x) >> (4294967295u % 32u))) | true;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~(u_input.d & u_input.d), 2u)])))));
    var_1 = arg_0.a;
    var var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, _wgslsmith_clamp_u32(1u, u_input.d, 45510u)), func_4(1i, _wgslsmith_dot_vec2_u32(func_3(vec3<i32>(u_input.a.x, -2147483647i, -1i), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 5132i, u_input.b.x), vec3<i32>(u_input.e, -24503i, u_input.e)), abs(vec3<u32>(u_input.d, 6779u, 10176u))), ~(~vec2<u32>(31859u, u_input.d)))));
    var_2 = ~_wgslsmith_div_u32(u_input.d, ~47854u);
    return !vec3<bool>(true, u_input.e < select(1i, i32(-1i) * -30714i, all(vec3<bool>(false, false, false))), all(vec2<bool>(true, true)) && (u_input.a.x == -1i));
}

fn func_1() -> vec3<bool> {
    return select(!(!vec3<bool>(false, all(vec2<bool>(true, false)), true)), func_2(global3[_wgslsmith_index_u32(u_input.d, 20u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.d, 2u)], global2.a, 246f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-118f, global1[_wgslsmith_index_u32(0u, 2u)], -890f), vec3<f32>(global2.a, global1[_wgslsmith_index_u32(u_input.d, 2u)], -1508f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, -912f, global2.a)))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 2u)])))), Struct_2(global1[_wgslsmith_index_u32(~u_input.d | select(u_input.d, u_input.d, true), 2u)])), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(select(func_1(), vec3<bool>(true, true, true), vec3<bool>(u_input.e == u_input.c, true, true)));
    var var_1 = false;
    let var_2 = select(4294967295u, 4294967295u, any(select(!vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, true, var_0), !vec3<bool>(false, var_0, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-4826i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(global2.a, 1297f)), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 2u)], 1000f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_2, 2u)], -465f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(2238f, 1516f), vec2<f32>(-754f, -792f)))))), ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_2, u_input.d, u_input.d)), ~vec3<u32>(u_input.d, var_2, var_2)) & var_2, 1655i, vec4<u32>(countOneBits(_wgslsmith_add_u32(~var_2, firstLeadingBit(4294967295u))), _wgslsmith_add_u32(var_2, ~(~var_2)), var_2, ~abs(min(31425u, u_input.d))));
}

