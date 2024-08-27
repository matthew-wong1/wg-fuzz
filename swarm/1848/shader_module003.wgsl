struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(1046f), Struct_1(-945f), Struct_1(-622f), Struct_1(-185f), Struct_1(-458f), Struct_1(286f), Struct_1(718f), Struct_1(459f), Struct_1(-536f), Struct_1(403f), Struct_1(914f), Struct_1(888f), Struct_1(-1043f), Struct_1(-690f), Struct_1(1092f), Struct_1(-1332f), Struct_1(-1541f), Struct_1(-154f), Struct_1(851f), Struct_1(356f), Struct_1(-354f), Struct_1(1319f), Struct_1(-1000f), Struct_1(289f), Struct_1(1683f), Struct_1(-265f), Struct_1(1000f), Struct_1(166f), Struct_1(-131f), Struct_1(2169f), Struct_1(-267f));

var<private> global1: i32;

var<private> global2: array<f32, 29>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = arg_2.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-982f, global2[_wgslsmith_index_u32(abs(u_input.b << (3404u % 32u)), 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))) - vec3<f32>(847f, arg_0, 1044f)));
    var var_2 = u_input.e.x;
    var var_3 = arg_2.zww;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(36080u << (1u % 32u), 29u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(step(arg_0, var_1.x))) * var_1.xy)));
    return vec2<bool>(all(vec4<bool>(true, true, any(!vec2<bool>(var_0, arg_2.x)), !all(vec3<bool>(arg_2.x, var_0, false)))), all(select(vec3<bool>(u_input.a.x == u_input.a.x, true, var_0), select(vec3<bool>(false, true, true), !vec3<bool>(false, var_3.x, var_0), select(arg_2.wyz, vec3<bool>(false, var_0, false), false)), true)));
}

fn func_2() -> vec3<f32> {
    let var_0 = -(u_input.a.x | (~(u_input.e.x | u_input.e.x) & u_input.e.x));
    global1 = var_0;
    var var_1 = vec3<bool>(true, true, true);
    global0 = array<Struct_1, 31>();
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, ~var_0), u_input.e.xw), firstLeadingBit(select(-u_input.a.yz, -u_input.e.xw, var_1.zy))), func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -965f))), ~(~(~vec3<u32>(u_input.c.x, u_input.b, 22446u))), vec4<bool>(false, true, false, var_1.x)), countOneBits(27963i));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 29u)], var_2.a.a, 645f)) - vec3<f32>(var_2.a.a, var_2.a.a, 734f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-132f, var_2.a.a, var_2.a.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.a, var_2.a.a, -251f) * vec3<f32>(var_2.a.a, -496f, -892f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 29u)], -301f, -851f), vec3<f32>(var_2.a.a, var_2.a.a, var_2.a.a)))))) * vec3<f32>(_wgslsmith_f_op_f32(round(var_2.a.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a.a))))), _wgslsmith_f_op_f32(floor(-848f))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> u32 {
    global1 = arg_3.b.x;
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_2, 29u)], arg_0.a.a, arg_3.a.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.a, -813f, -964f) - vec3<f32>(-147f, arg_0.a.a, -1360f))) * _wgslsmith_f_op_vec3_f32(func_2())))) + vec3<f32>(-299f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(765f + 2234f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1, arg_1)))));
    global0 = array<Struct_1, 31>();
    let var_1 = select(!vec3<bool>(arg_0.c.x, !any(vec3<bool>(true, arg_0.c.x, true)), true), vec3<bool>(arg_0.c.x, arg_0.c.x, !all(vec2<bool>(true, arg_0.c.x)) == false), !select(!vec3<bool>(false, true, arg_0.c.x), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, arg_3.c.x), vec3<bool>(true, arg_3.c.x, arg_0.c.x), vec3<bool>(false, arg_0.c.x, true)), arg_0.c.x), !select(vec3<bool>(arg_3.c.x, arg_3.c.x, arg_0.c.x), vec3<bool>(arg_3.c.x, arg_0.c.x, true), vec3<bool>(arg_3.c.x, true, true))));
    global0 = array<Struct_1, 31>();
    return ~(~0u);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec4<u32>) -> Struct_3 {
    global1 = max(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, u_input.e.x | _wgslsmith_div_i32(0i, u_input.e.x)), reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.e.x), u_input.e.wz) ^ u_input.e.wx)), _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec2_i32((u_input.e.xx | u_input.a.xz) ^ select(u_input.e.yx, u_input.e.xy, vec2<bool>(arg_1, arg_1)), -(~vec2<i32>(1i, u_input.e.x)))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2[_wgslsmith_index_u32(43895u, 29u)], -1880f, -1120f, -633f))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, global2[_wgslsmith_index_u32(u_input.b, 29u)], global2[_wgslsmith_index_u32(0u, 29u)], 985f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(318f, arg_0, 690f, global2[_wgslsmith_index_u32(0u, 29u)]))))));
    let var_1 = u_input.a.x;
    return Struct_3(Struct_1(-686f), var_1 ^ _wgslsmith_mult_i32(var_1, 1i));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_3 {
    global0 = array<Struct_1, 31>();
    let var_0 = Struct_3(Struct_1(arg_0.a.a), countOneBits(arg_0.b));
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_0.b & ((arg_1.b.x | 2147483647i) >> (_wgslsmith_mult_u32(1u, 20343u) % 32u)), -2491i), abs(max(_wgslsmith_sub_i32(var_0.b, 1i), -_wgslsmith_div_i32(u_input.e.x, 2147483647i))));
    let var_2 = -392f;
    var_1 = select(var_0.b, abs(min(~(-1639i), 0i)), false);
    return Struct_3(var_0.a, -arg_0.b << (min(4294967295u, firstLeadingBit(_wgslsmith_sub_u32(46149u, u_input.c.x))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -307f;
    let var_1 = _wgslsmith_sub_i32(abs(min(u_input.e.x, -_wgslsmith_mult_i32(u_input.a.x, -1i))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 6386i, ~(-1i), u_input.a.x) << (~(~vec4<u32>(4294967295u, 22793u, u_input.d, 27653u)) % vec4<u32>(32u)), -(vec4<i32>(-1i) * -vec4<i32>(2147483647i, u_input.e.x, u_input.e.x, u_input.a.x))));
    global1 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(-25815i, -26126i) | _wgslsmith_add_i32(-2147483647i, -_wgslsmith_clamp_i32(45712i, -8090i, u_input.e.x)), -1i);
    let var_2 = func_5(func_4(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 29u)] * global2[_wgslsmith_index_u32(u_input.c.x, 29u)]), (~u_input.d & func_1(Struct_2(global0[_wgslsmith_index_u32(430u, 31u)], vec2<i32>(var_1, 0i), vec2<bool>(false, true), u_input.a.x), 1593f, u_input.d, Struct_2(Struct_1(1000f), u_input.e.zy, vec2<bool>(false, true), 15187i))) < ~(~u_input.d), vec4<u32>(u_input.b, 4294967295u, 16724u, u_input.b) & ~(vec4<u32>(u_input.c.x, 40052u, 0u, u_input.d) | vec4<u32>(8520u, u_input.c.x, u_input.b, 4294967295u))), Struct_2(global0[_wgslsmith_index_u32(~u_input.d, 31u)], -u_input.a.zz, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(747f - 1637f) + -629f), ~_wgslsmith_add_vec3_u32(vec3<u32>(43258u, u_input.c.x, u_input.b), vec3<u32>(6677u, u_input.d, u_input.c.x)), vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 29u)] != global2[_wgslsmith_index_u32(19402u, 29u)], global2[_wgslsmith_index_u32(u_input.b, 29u)] == global2[_wgslsmith_index_u32(29964u, 29u)], true, any(vec3<bool>(true, false, false)))), u_input.a.x));
    var_0 = 181f;
    var var_3 = u_input.e;
    var_0 = global2[_wgslsmith_index_u32(50642u, 29u)];
    var var_4 = global0[_wgslsmith_index_u32(0u, 31u)];
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.e, ~abs(func_1(Struct_2(global0[_wgslsmith_index_u32(72314u, 31u)], u_input.e.zy, vec2<bool>(false, true), var_3.x), var_4.a, _wgslsmith_sub_u32(u_input.c.x, 1u), Struct_2(Struct_1(-380f), var_3.yw, vec2<bool>(false, false), 2147483647i))), -(_wgslsmith_sub_i32(26253i, 0i << (u_input.d % 32u)) & (max(u_input.a.x, u_input.e.x) | (var_1 >> (u_input.d % 32u)))));
}

