struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<bool, 7> = array<bool, 7>(false, true, true, true, false, false, true);

var<private> global3: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

var<private> global4: array<f32, 1>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = ~vec4<u32>((45160u | ~u_input.e) | select(u_input.d >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(25865u, u_input.a.x, 0u), vec3<u32>(u_input.d, 15047u, u_input.d)), global4[_wgslsmith_index_u32(1u, 1u)] < global4[_wgslsmith_index_u32(12572u, 1u)]), u_input.b.x, ~1u, 13746u);
    var var_1 = -173f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(319f))));
    var var_2 = ~(~0u);
    var var_3 = 40100i;
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(926f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 746f, global4[_wgslsmith_index_u32(1u, 1u)]))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-692f)), _wgslsmith_f_op_f32(1326f + _wgslsmith_div_f32(global4[_wgslsmith_index_u32(max(u_input.e, 5744u), 1u)], _wgslsmith_f_op_f32(1000f + global4[_wgslsmith_index_u32(1u, 1u)])))), -u_input.c.x, 0u);
    return abs(_wgslsmith_div_i32(-select(2147483647i, -1i, true), -30789i)) ^ 0i;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> Struct_2 {
    global0 = 1u >> (_wgslsmith_div_u32(~1u, _wgslsmith_add_u32(firstTrailingBit(93448u) >> (firstTrailingBit(u_input.b.x) % 32u), 4294967295u)) % 32u);
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~4294967295u, 1u)] - global4[_wgslsmith_index_u32(~0u, 1u)])), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.x, u_input.d), _wgslsmith_mod_vec2_u32(vec2<u32>(49534u, arg_1.x), vec2<u32>(arg_1.x, u_input.a.x)), vec2<u32>(9697u, u_input.a.x)), u_input.b.yx), 1u)], _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(~1u, 1u)])), -300f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-369f, global4[_wgslsmith_index_u32(arg_0, 1u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1143f, global4[_wgslsmith_index_u32(u_input.e, 1u)]))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-722f, -755f) - vec2<f32>(global4[_wgslsmith_index_u32(arg_0, 1u)], -612f)) * vec2<f32>(-529f, global4[_wgslsmith_index_u32(arg_0, 1u)]))))), max(u_input.c.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~u_input.c.wyw, -u_input.c.zxw), vec3<i32>(u_input.c.x, i32(-1i) * -1i, func_3(true)))), _wgslsmith_div_u32(1u >> (_wgslsmith_sub_u32(~arg_0, arg_0) % 32u), 1u));
    global3 = array<vec3<bool>, 13>();
    global4 = array<f32, 1>();
    global3 = array<vec3<bool>, 13>();
    return Struct_2(vec3<u32>(4294967295u, arg_0, arg_0), _wgslsmith_mod_vec2_u32(vec2<u32>(42793u, 4294967295u), ~(~vec2<u32>(0u, arg_1.x))));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = arg_0.a;
    let var_1 = func_2(~(~u_input.a.x), vec3<u32>(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(941u, 4294967295u), u_input.d), ~1u, u_input.b.x));
    var var_2 = 2147483647i;
    let var_3 = Struct_1(select(!vec2<bool>(!global2[_wgslsmith_index_u32(0u, 7u)], all(vec2<bool>(arg_0.a.x, false))), select(arg_0.a, vec2<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(0u, 7u)], true)), var_0.x), !global1.x), vec2<bool>(any(select(vec4<bool>(false, global1.x, arg_0.a.x, true), vec4<bool>(true, true, true, false), false)), all(vec3<bool>(global1.x, false, true)))));
    let var_4 = arg_0.a;
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: vec2<u32>) -> vec2<bool> {
    return !(!(!vec2<bool>(!global2[_wgslsmith_index_u32(u_input.e, 7u)], true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1335f, 558f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -127f)), _wgslsmith_f_op_f32(round(278f))))));
    global1 = select(func_4(func_1(Struct_1(select(vec2<bool>(global1.x, true), vec2<bool>(true, false), global1.x))), Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, u_input.e), ~vec3<u32>(u_input.a.x, u_input.e, u_input.d)), ~_wgslsmith_add_vec2_u32(u_input.a.zy, u_input.a.xz)), 1i, ~vec2<u32>(~0u, 54416u >> (u_input.b.x % 32u))), vec2<bool>(any(select(!vec4<bool>(global1.x, global1.x, true, true), !vec4<bool>(global2[_wgslsmith_index_u32(92259u, 7u)], global2[_wgslsmith_index_u32(10274u, 7u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 7u)]), all(vec2<bool>(global1.x, false)))), all(func_4(Struct_2(vec3<u32>(52357u, u_input.a.x, u_input.b.x), vec2<u32>(36325u, 0u)), func_2(u_input.d, vec3<u32>(4294967295u, 85396u, u_input.a.x)), -17261i, select(vec2<u32>(u_input.d, 26302u), vec2<u32>(0u, u_input.e), vec2<bool>(true, false))))), vec2<bool>(true, true));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 144f) + vec2<f32>(global4[_wgslsmith_index_u32(1u, 1u)], global4[_wgslsmith_index_u32(4294967295u, 1u)])) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, global4[_wgslsmith_index_u32(u_input.b.x, 1u)]) - vec2<f32>(global4[_wgslsmith_index_u32(3733u, 1u)], 1000f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 1920f), vec2<f32>(var_0.x, global4[_wgslsmith_index_u32(u_input.a.x, 1u)]), global1.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4[_wgslsmith_index_u32(u_input.d, 1u)], global4[_wgslsmith_index_u32(u_input.b.x, 1u)]), vec2<f32>(249f, -1000f), global2[_wgslsmith_index_u32(17874u, 7u)]))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4[_wgslsmith_index_u32(5399u, 1u)], global4[_wgslsmith_index_u32(71864u, 1u)]), vec2<f32>(764f, var_0.x), global1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(1u, 1u)], 350f))))))), any(vec3<bool>(true, global2[_wgslsmith_index_u32(~abs(u_input.d), 7u)], func_4(Struct_2(u_input.b.wxy, u_input.a.zz), Struct_2(vec3<u32>(u_input.e, u_input.d, u_input.b.x), u_input.a.xz), -13659i, u_input.b.zw).x | all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global2[_wgslsmith_index_u32(u_input.d, 7u)], global1.x))))));
    let var_1 = ~u_input.c.x;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1364f, 1000f), vec2<f32>(var_0.x, -1372f))))), vec2<f32>(_wgslsmith_f_op_f32(floor(-707f)), _wgslsmith_f_op_f32(868f - global4[_wgslsmith_index_u32(u_input.b.x, 1u)])))));
    var var_2 = Struct_1(vec2<bool>(!(u_input.b.x >= u_input.d), !any(select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 7u)], true), vec2<bool>(true, true), false))));
    global1 = var_2.a;
    global1 = !vec2<bool>(global2[_wgslsmith_index_u32(firstTrailingBit(10343u), 7u)], !func_4(func_2(u_input.a.x, u_input.a), Struct_2(u_input.a, u_input.b.wy), 0i, u_input.a.zz).x);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(62888u, 1u)] + -680f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(sign(-1622f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.d, 1u)]), global4[_wgslsmith_index_u32(countOneBits(1u), 1u)], var_1 <= 71049i)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1472f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), -519f, -813f));
}

