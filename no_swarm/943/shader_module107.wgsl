struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: array<f32, 10> = array<f32, 10>(967f, -1000f, -140f, 593f, 165f, 1248f, -272f, -1445f, 139f, -392f);

var<private> global2: array<Struct_2, 10>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_4(vec2<bool>(all(vec2<bool>(true, true)), (true && any(vec3<bool>(false, false, false))) & false), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 10u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(80571u, 13u)], 13u)], 10u)])))));
    global1 = array<f32, 10>();
    let var_1 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)] << (1u % 32u), 10u)];
    var var_2 = Struct_2(_wgslsmith_f_op_f32(abs(var_0.c.x)), _wgslsmith_f_op_f32(step(-1026f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1826f), var_0.c.x))), 55756u);
    var var_3 = firstTrailingBit(_wgslsmith_mult_vec2_i32(max(-(~u_input.c.xx), ~vec2<i32>(arg_0.a, arg_0.a)), select(vec2<i32>(-arg_0.a, -21111i | u_input.a), u_input.c.zz, !(var_0.b.x & false))));
    return var_1.b;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> vec3<bool> {
    global0 = array<u32, 13>();
    let var_0 = Struct_3(u_input.b);
    let var_1 = Struct_4(vec2<bool>(select(true, true, any(vec2<bool>(true, true))), true), vec2<bool>(true, true), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1427f)) - _wgslsmith_f_op_f32(func_3(Struct_3(u_input.c.x)))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(72045u, 10u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-124f * global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 10u)]) - global1[_wgslsmith_index_u32(countOneBits(23026u), 10u)]))));
    global2 = array<Struct_2, 10>();
    var var_2 = ~(~u_input.e);
    return vec3<bool>(false, false, all(select(vec2<bool>(true, true), select(var_1.a, !var_1.a, select(true, false, var_1.b.x)), all(!vec4<bool>(var_1.b.x, var_1.a.x, var_1.a.x, false)))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<u32>) -> Struct_4 {
    var var_0 = Struct_4(vec2<bool>(false, !all(vec4<bool>(true, true, true, false)) || false), vec2<bool>(true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.x, 1u), 13u)], 13u)] != _wgslsmith_mult_u32(1u, u_input.d)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-976f, _wgslsmith_f_op_f32(f32(-1f) * -1418f)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(24204u, 10u)], 2007f), vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8079u, 13u)], 10u)], global1[_wgslsmith_index_u32(u_input.e, 10u)])))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 10u)], global1[_wgslsmith_index_u32(u_input.e, 10u)]), vec2<f32>(global1[_wgslsmith_index_u32(25733u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 10u)])), true)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.x, 13u)], 10u)], 390f) - vec2<f32>(global1[_wgslsmith_index_u32(1u, 10u)], 967f)))), -arg_0 <= (countOneBits(u_input.b) & ~arg_0))));
    var var_1 = var_0.b.x || false;
    var var_2 = vec3<f32>(373f, global1[_wgslsmith_index_u32(select(4294967295u, 0u, false), 10u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(108f, _wgslsmith_f_op_f32(func_3(Struct_3(1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1348f, var_0.c.x, true)) + -1616f)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f)) - _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(7920u, 10u)])))));
    var var_4 = all(vec3<bool>(all(func_2(-623f, select(vec3<u32>(global0[_wgslsmith_index_u32(arg_2.x, 13u)], 1u, arg_2.x), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<bool>(var_0.b.x, var_0.b.x, false))).zy), var_0.b.x, var_0.b.x));
    return Struct_4(vec2<bool>(true, true), select(var_0.b, select(var_0.a, func_2(126f, abs(vec3<u32>(arg_2.x, 4294967295u, 76939u))).xx, func_2(_wgslsmith_f_op_f32(abs(var_0.c.x)), vec3<u32>(34545u, 5934u, 13752u)).xx), false), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(8165u, 10u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3 * -911f), _wgslsmith_f_op_f32(f32(-1f) * -489f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(614f * -379f)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec4<bool>) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-469f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1149f) - _wgslsmith_div_f32(908f, global1[_wgslsmith_index_u32(1u, 10u)])), _wgslsmith_f_op_f32(f32(-1f) * -284f)))), global1[_wgslsmith_index_u32(25570u, 10u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1687f);
    global2 = array<Struct_2, 10>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-468f, 939f, var_0.x, 1823f) + var_0), _wgslsmith_f_op_vec4_f32(var_0 - var_0)))), all(select(!arg_2, !arg_1, !arg_1.x)) || false, ~43542u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 10u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), 708f))), firstLeadingBit(-2147483647i));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(299f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10775u, 13u)], 10u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_1.d.x) * -1700f))), _wgslsmith_f_op_f32(var_1.a.x * var_0.x)));
    var var_3 = func_4((-countOneBits(2147483647i) ^ firstTrailingBit(u_input.a)) & _wgslsmith_dot_vec2_i32(max(-u_input.c.ww, countOneBits(vec2<i32>(u_input.a, -29648i))), vec2<i32>(u_input.a, var_1.e << (u_input.d % 32u))), _wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(-15545i, -1i, 1i), select(vec3<i32>(u_input.b, 2147483647i, 0i), u_input.c.xxw, vec3<bool>(arg_2.x, arg_1.x, arg_1.x))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.c.x, u_input.a, 0i), vec3<i32>(u_input.b, 1i, -2147483647i), vec3<i32>(-76672i, -1i, -1i)), select(func_2(326f, arg_0), arg_2.xww, arg_1.x | arg_1.x)), vec3<i32>(var_1.e | u_input.c.x, 51047i << (global0[_wgslsmith_index_u32(38333u, 13u)] % 32u), ~4192i) | -vec3<i32>(7931i, u_input.b, u_input.c.x)), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(38917u, 4294967295u), vec2<u32>(arg_0.x, 20083u)) << (~vec2<u32>(global0[_wgslsmith_index_u32(68594u, 13u)], 73596u) % vec2<u32>(32u)), ~(~arg_0.xz)) >> ((arg_0.xz ^ arg_0.zy) % vec2<u32>(32u)));
    return ~abs(_wgslsmith_add_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 13u)], 0u), select(arg_0.x, 30686u, true))) << (~var_1.c % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec3<bool>(all(vec3<bool>(true, false, true)), ~u_input.c.x == ~9511i, false));
    global2 = array<Struct_2, 10>();
    let var_1 = !(!(!(u_input.d == 1980u) || true));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 10u)], 2129f, global1[_wgslsmith_index_u32(u_input.e, 10u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6791u, 13u)], 10u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-175f, 473f, global1[_wgslsmith_index_u32(u_input.e, 10u)], global1[_wgslsmith_index_u32(0u, 10u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1187f, global1[_wgslsmith_index_u32(67612u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6995u, 13u)], 13u)], 10u)]))))), !(func_1(vec3<u32>(u_input.e, 0u, 1u), vec4<bool>(var_1, var_1, var_1, var_1), !vec4<bool>(var_1, true, false, false)) >= ~_wgslsmith_add_u32(u_input.e, global0[_wgslsmith_index_u32(u_input.d, 13u)])), 1u, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(u_input.b, u_input.b, vec2<u32>(1u, u_input.e)).c + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(334f, 741f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(u_input.e, 10u)], 918f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 10u)], global1[_wgslsmith_index_u32(u_input.d, 10u)]) - vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 10u)], 691f)))))), ~u_input.a);
    var var_3 = select(func_2(-614f, ~(min(vec3<u32>(u_input.d, var_2.c, u_input.d), vec3<u32>(4294967295u, 1u, var_2.c)) << (reverseBits(vec3<u32>(12965u, 82496u, 67127u)) % vec3<u32>(32u)))).yz, vec2<bool>(all(vec4<bool>(all(vec2<bool>(true, var_2.b)), false, all(vec2<bool>(true, false)), true)), !var_2.b), select(!(!func_2(var_2.a.x, vec3<u32>(96152u, u_input.d, 34453u)).zy), vec2<bool>(true, true), false));
    var_0 = all(!vec2<bool>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.e, 10u)], -697f) != _wgslsmith_f_op_f32(var_2.d.x - 358f), var_1));
    let var_4 = Struct_4(!vec2<bool>(all(vec3<bool>(true, var_2.b, false)), all(!vec2<bool>(var_2.b, var_3.x))), vec2<bool>(false, false), _wgslsmith_f_op_vec2_f32(sign(var_2.a.xx)));
    var_0 = true;
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_4.c, vec2<f32>(-1083f, var_2.d.x))) - vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.c, 13u)], 13u)], 10u)] + var_5.c.x), 1258f)) - vec2<f32>(var_4.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.c.x * 438f) - 1236f))), ~global0[_wgslsmith_index_u32(abs(var_2.c), 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), vec4<u32>(~1u, global0[_wgslsmith_index_u32((~u_input.e >> (min(1u, var_2.c) % 32u)) & global0[_wgslsmith_index_u32(var_2.c, 13u)], 13u)], _wgslsmith_dot_vec3_u32(~select(vec3<u32>(103394u, var_2.c, global0[_wgslsmith_index_u32(var_2.c, 13u)]), vec3<u32>(u_input.d, var_2.c, u_input.e), true), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(var_2.c, var_2.c, var_2.c)), vec3<u32>(u_input.d, 9651u, var_2.c))), func_1(vec3<u32>(~u_input.d, ~0u, select(4294967295u, var_2.c, var_1)), !select(vec4<bool>(var_2.b, false, false, false), vec4<bool>(var_3.x, var_1, var_2.b, var_5.b.x), vec4<bool>(true, true, true, true)), !vec4<bool>(var_1, true, var_4.b.x, var_1))));
}

