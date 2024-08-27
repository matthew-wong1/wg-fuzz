struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<bool>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: i32;

var<private> global2: array<u32, 8> = array<u32, 8>(0u, 4294967295u, 12852u, 49690u, 8495u, 1u, 7120u, 0u);

var<private> global3: array<bool, 29> = array<bool, 29>(false, true, false, true, true, true, false, false, true, true, false, true, true, false, true, false, false, false, true, false, false, false, true, true, false, false, true, true, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(~(~u_input.a), 20u)];
    global0 = array<Struct_2, 20>();
    global1 = _wgslsmith_dot_vec4_i32(u_input.e, u_input.e);
    var var_1 = -u_input.d.x;
    global3 = array<bool, 29>();
    return select(select(!vec3<bool>(!arg_0.a.x, true, arg_0.b.x), vec3<bool>(!select(false, false, var_0.a.x), all(var_0.a), false), vec3<bool>(true, !arg_0.a.x, true)), !select(select(!vec3<bool>(false, arg_0.b.x, var_0.a.x), !vec3<bool>(false, arg_0.a.x, var_0.b.x), false), vec3<bool>(select(false, global3[_wgslsmith_index_u32(4294967295u, 29u)], var_0.b.x), !arg_0.b.x, var_0.b.x & global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 8u)], 29u)]), select(!vec3<bool>(false, var_0.a.x, global3[_wgslsmith_index_u32(4294967295u, 29u)]), !vec3<bool>(arg_0.b.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 8u)], 29u)], arg_0.a.x), var_0.a.x | global3[_wgslsmith_index_u32(0u, 29u)])), !select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.c, 29u)], global3[_wgslsmith_index_u32(u_input.c, 29u)]), arg_0.b.x), select(vec3<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], 29u)], true, false), vec3<bool>(arg_0.b.x, false, false), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44322u, 8u)], 29u)]), select(vec3<bool>(arg_0.b.x, arg_0.b.x, var_0.a.x), vec3<bool>(false, false, true), var_0.a.x)), vec3<bool>(global3[_wgslsmith_index_u32(36341u, 29u)], false, all(var_0.a)), vec3<bool>(global3[_wgslsmith_index_u32(~u_input.b, 29u)], !global3[_wgslsmith_index_u32(u_input.b, 29u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], 40068u)), 29u)])));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: vec3<bool>) -> bool {
    let var_0 = Struct_3(vec3<u32>(arg_0, ~global2[_wgslsmith_index_u32(~9657u, 8u)] >> (~(~1u) % 32u), arg_0), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], Struct_1(arg_3, _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(u_input.e.x, _wgslsmith_clamp_i32(25246i, -2147483647i, u_input.e.x), u_input.d.x, u_input.d.x | 36878i)), !(!select(vec4<bool>(false, true, arg_1, arg_2), vec4<bool>(arg_1, false, arg_1, arg_2), vec4<bool>(false, arg_3.x, arg_1, arg_2))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1466f * -733f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1429f, -473f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 8u)], 29u)])))), !arg_3.x));
    global2 = array<u32, 8>();
    global0 = array<Struct_2, 20>();
    var var_1 = _wgslsmith_dot_vec2_u32(var_0.a.zx, _wgslsmith_mod_vec2_u32(abs(vec2<u32>(var_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.a.x, var_0.a.x, arg_0), vec4<u32>(4294967295u, 50743u, u_input.c, var_0.a.x)))), firstLeadingBit(var_0.a.zz)));
    global1 = var_0.d.b;
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_mod_i32(-21145i, firstLeadingBit(10636i));
    return vec3<bool>(false, func_4(1u, u_input.e.x <= _wgslsmith_sub_i32(u_input.e.x, 1i), true, select(!func_3(global0[_wgslsmith_index_u32(4294967295u, 20u)]), vec3<bool>(select(arg_0.x, true, arg_0.x), false, 23996i >= u_input.e.x), vec3<bool>(any(vec2<bool>(false, arg_0.x)), all(arg_0), true))), arg_0.x);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.c, 20u)];
    global0 = array<Struct_2, 20>();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(arg_2 - _wgslsmith_div_f32(arg_2, 812f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_div_f32(arg_2, 724f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + -202f) + _wgslsmith_f_op_f32(f32(-1f) * -1209f))), 837f) * vec3<f32>(-791f, _wgslsmith_f_op_f32(floor(1f)), arg_2));
    global1 = 1i;
    let var_2 = -9081i;
    return Struct_1(!func_3(Struct_2(var_0.a, func_2(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 29u)], var_0.b.x), 827f, vec3<f32>(-317f, arg_2, var_1.x)).xx)), u_input.d.x, select(vec4<bool>(false != arg_1.x, false, _wgslsmith_f_op_f32(max(arg_2, -1000f)) != -308f, all(vec4<bool>(var_0.a.x, false, false, arg_0.a.x))), !vec4<bool>(arg_0.b.x, select(var_0.b.x, arg_1.x, false), true, func_3(global0[_wgslsmith_index_u32(u_input.a, 20u)]).x), arg_1.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_1.xz - var_1.yz))), func_4(select(global2[_wgslsmith_index_u32(46032u ^ global2[_wgslsmith_index_u32(~1u, 8u)], 8u)], global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(12267u, u_input.a)), 8u)], select(global3[_wgslsmith_index_u32(4294967295u, 29u)], !arg_1.x, all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 29u)], arg_1.x, true)))), arg_0.b.x, func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(u_input.b, u_input.a)), true, func_3(Struct_2(var_0.b, var_0.b)).x, select(arg_1.xxw, func_2(arg_1.ww, arg_2, var_1), !arg_1.zww)), !vec3<bool>(!var_0.b.x, 1143f >= var_1.x, false)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32, arg_3: vec2<bool>) -> vec2<f32> {
    global1 = _wgslsmith_mod_i32(~(~1i), -2147483647i);
    var var_0 = func_5(global0[_wgslsmith_index_u32(u_input.a, 20u)], vec4<bool>(true, any(!arg_1.b), select(!global3[_wgslsmith_index_u32(u_input.b, 29u)], all(func_2(vec2<bool>(true, arg_3.x), 1789f, vec3<f32>(-1165f, -749f, 137f))), func_2(!vec2<bool>(arg_1.a.x, arg_3.x), _wgslsmith_f_op_f32(abs(412f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-323f, 269f, -931f)))).x), false || any(vec2<bool>(true, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18437u, 8u)], 29u)]))), _wgslsmith_f_op_f32(824f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1615f)) * _wgslsmith_f_op_f32(floor(430f))))));
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    global2 = array<u32, 8>();
    return _wgslsmith_div_vec2_f32(var_0.d, vec2<f32>(func_5(global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(25729u, 8u)], 20u)], func_5(global0[_wgslsmith_index_u32(~u_input.a, 20u)], select(var_0.c, var_0.c, true), _wgslsmith_div_f32(1044f, var_0.d.x)).c, _wgslsmith_f_op_f32(step(-788f, var_0.d.x))).d.x, var_0.d.x));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: vec4<f32>) -> i32 {
    global3 = array<bool, 29>();
    let var_0 = false;
    var var_1 = global0[_wgslsmith_index_u32(78527u, 20u)];
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-909f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * 923f) * -780f)))), _wgslsmith_f_op_f32(step(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) + _wgslsmith_f_op_f32(-arg_2.x)))));
    let var_3 = Struct_3(vec3<u32>(~u_input.b, 1u, abs(8049u)) << (vec3<u32>(u_input.b, 18770u, ~_wgslsmith_mult_u32(0u, 61120u)) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(81600u, 20u)], global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 20u)], func_5(Struct_2(!arg_0.c.yy, func_3(Struct_2(vec2<bool>(global3[_wgslsmith_index_u32(11476u, 29u)], arg_0.a.x), arg_0.a.yy)).xy), select(arg_0.c, vec4<bool>(true, func_5(global0[_wgslsmith_index_u32(34372u, 20u)], vec4<bool>(true, false, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7800u, 8u)], 29u)], var_0), -837f).a.x, var_1.b.x, false), !vec4<bool>(true, true, var_1.b.x, global3[_wgslsmith_index_u32(58537u, 29u)])), -858f));
    return _wgslsmith_div_i32(_wgslsmith_clamp_i32(abs(arg_1.x), reverseBits(0i), -4342i) << (firstLeadingBit(~global2[_wgslsmith_index_u32(u_input.b, 8u)] >> (global2[_wgslsmith_index_u32(1u, 8u)] % 32u)) % 32u), -1i | arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    var var_1 = Struct_1(!vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], u_input.c), vec2<u32>(34975u, 0u)), countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(33678u, 8u)], 4294967295u))), 29u)], true, all(!vec4<bool>(global3[_wgslsmith_index_u32(22877u, 29u)], false, global3[_wgslsmith_index_u32(91384u, 29u)], false))), func_6(Struct_1(select(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 29u)], global3[_wgslsmith_index_u32(4294967295u, 29u)]), select(vec3<bool>(true, true, global3[_wgslsmith_index_u32(u_input.a, 29u)]), vec3<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 8u)], 29u)], true, false), vec3<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 8u)], 29u)], true, true)), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 29u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 29u)], false)), -(~var_0.x), select(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(33501u, 29u)], global3[_wgslsmith_index_u32(23934u, 29u)], true), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 29u)], global3[_wgslsmith_index_u32(u_input.c, 29u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 8u)], 29u)], global3[_wgslsmith_index_u32(0u, 29u)]), any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], 29u)], global3[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(u_input.c, 29u)]))), vec2<f32>(_wgslsmith_f_op_f32(-1088f + 309f), _wgslsmith_f_op_f32(1000f * 1557f)), true), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.d.x, 1i), _wgslsmith_mod_i32(u_input.d.x, u_input.e.x)), var_0.x, ~(~1i), select(_wgslsmith_sub_i32(-37840i, 5661i), abs(var_0.x), global3[_wgslsmith_index_u32(~u_input.b, 29u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1802f, -366f), vec2<f32>(-304f, -902f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(525f, -225f) - vec2<f32>(-706f, -424f)) - _wgslsmith_f_op_vec2_f32(func_1(var_0.zzx, Struct_2(vec2<bool>(global3[_wgslsmith_index_u32(39694u, 29u)], false), vec2<bool>(true, false)), var_0.x, vec2<bool>(true, global3[_wgslsmith_index_u32(32025u, 29u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(261f, -246f, -851f, 431f)))))), vec4<bool>(true, true, func_5(global0[_wgslsmith_index_u32(min(~40210u, ~global2[_wgslsmith_index_u32(u_input.b, 8u)]), 20u)], select(vec4<bool>(true, false, false, true), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 29u)], global3[_wgslsmith_index_u32(4294967295u, 29u)], global3[_wgslsmith_index_u32(11142u, 29u)], global3[_wgslsmith_index_u32(9728u, 29u)]), !vec4<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 8u)], 29u)], global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(52886u, 29u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12065u, 8u)], 29u)])), 1f).c.x, global3[_wgslsmith_index_u32(firstLeadingBit(~firstTrailingBit(4294967295u)), 29u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(235f, -997f)))) - vec2<f32>(_wgslsmith_f_op_f32(-774f - _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -935f)))), true);
    var var_2 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~1u, 8u)], 20u)];
    global0 = array<Struct_2, 20>();
    var var_3 = Struct_3(vec3<u32>(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], ~(u_input.c << (0u % 32u))), firstLeadingBit(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]) >> (~25459u % 32u)), ~(~global2[_wgslsmith_index_u32(~23524u, 8u)])), Struct_2(vec2<bool>(true, !(17876i == var_0.x)), select(func_3(Struct_2(vec2<bool>(true, var_2.b.x), vec2<bool>(false, var_2.a.x))).yz, func_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(36383u, global2[_wgslsmith_index_u32(4294967295u, 8u)]), 20u)]).yy, true)), Struct_2(func_3(global0[_wgslsmith_index_u32(75894u, 20u)]).xz, var_2.a), Struct_1(select(vec3<bool>(any(var_1.c.zzx), true, u_input.c > u_input.a), !select(var_1.a, vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 29u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 8u)], 29u)], var_2.b.x), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 29u)], var_1.e)), vec3<bool>(select(false, true, global3[_wgslsmith_index_u32(27296u, 29u)]), true, any(vec2<bool>(var_2.a.x, var_1.a.x)))), var_1.b, var_1.c, var_1.d, !var_1.c.x));
    let var_4 = func_5(Struct_2(select(func_2(func_5(global0[_wgslsmith_index_u32(35206u, 20u)], var_3.d.c, 905f).a.zy, -1346f, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(129f, 987f, -2094f), vec3<f32>(1369f, 143f, var_3.d.d.x)))).yy, vec2<bool>(global3[_wgslsmith_index_u32(countOneBits(20400u), 29u)], !global3[_wgslsmith_index_u32(72359u, 29u)]), func_3(var_3.b).zy), var_2.b), vec4<bool>(!(!var_2.a.x), var_1.e, !global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b, ~u_input.a), 29u)], var_1.c.x), var_1.d.x).d.x;
    global3 = array<bool, 29>();
    var_1 = Struct_1(var_3.d.a, var_0.x & ~2147483647i, select(!func_5(Struct_2(var_1.a.zx, vec2<bool>(false, var_2.a.x)), var_3.d.c, _wgslsmith_f_op_f32(ceil(368f))).c, func_5(var_3.b, vec4<bool>(var_1.e, func_3(Struct_2(vec2<bool>(var_2.b.x, var_2.b.x), var_3.b.a)).x, true, global3[_wgslsmith_index_u32(~38132u, 29u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_4)))).c, all(var_1.c)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -1201f)), true);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 0u);
}

