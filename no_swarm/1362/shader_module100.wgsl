struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec2<i32>(1i, 38215i)), Struct_1(vec2<i32>(33122i, 1i)), Struct_1(vec2<i32>(-55424i, -13230i)), Struct_1(vec2<i32>(0i, -1i)), Struct_1(vec2<i32>(0i, -1i)), Struct_1(vec2<i32>(0i, 1111i)), Struct_1(vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(-47568i, 17512i)), Struct_1(vec2<i32>(-1i, -1i)), Struct_1(vec2<i32>(1i, 51753i)), Struct_1(vec2<i32>(2147483647i, -26882i)), Struct_1(vec2<i32>(-60749i, 2147483647i)), Struct_1(vec2<i32>(1i, 26786i)), Struct_1(vec2<i32>(43099i, 40223i)), Struct_1(vec2<i32>(0i, -25674i)), Struct_1(vec2<i32>(-24163i, i32(-2147483648))), Struct_1(vec2<i32>(-29487i, 48728i)), Struct_1(vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<i32>(32510i, 1i)));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(47517i, -32087i));

var<private> global2: array<bool, 21>;

var<private> global3: array<vec2<bool>, 22>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(418f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-580f * -446f), 835f, false))), _wgslsmith_div_f32(1503f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1676f, -719f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(637f, -337f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(447f)) * -349f))), true));
    global1 = Struct_1(countOneBits(global1.a));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 20u)];
    let var_2 = vec4<u32>(~24953u, ~firstTrailingBit(~7324u), ~(~(~14626u)), u_input.b.x);
    var_1 = Struct_1(select(max(var_1.a, _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(global1.a, var_1.a, vec2<i32>(-16022i, 1i)), vec2<i32>(global1.a.x, 2147483647i), ~var_1.a)), ~vec2<i32>(var_1.a.x, ~var_1.a.x), select(vec2<bool>(false, true), vec2<bool>(true, all(vec3<bool>(global2[_wgslsmith_index_u32(var_2.x, 21u)], false, global2[_wgslsmith_index_u32(4294967295u, 21u)]))), vec2<bool>(u_input.a > 200u, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(6612i, global1.a.x)), ~(~global1.a) | global1.a));
    let var_1 = Struct_1(abs(vec2<i32>(-1i) * -vec2<i32>(-16200i, var_0.a.x)) >> (vec2<u32>(~1u, countOneBits(reverseBits(5137u))) % vec2<u32>(32u)));
    var var_2 = select(var_1.a.x, var_0.a.x, all(select(!vec4<bool>(true, global2[_wgslsmith_index_u32(6946u, 21u)], arg_1.x, false), vec4<bool>(arg_1.x, global2[_wgslsmith_index_u32(85081u, 21u)], arg_1.x, global2[_wgslsmith_index_u32(arg_0, 21u)]), true))) | 41983i;
    var var_3 = -511f;
    var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(-(~vec2<i32>(-23319i, var_1.a.x)), var_1.a, _wgslsmith_div_vec2_i32(var_0.a, vec2<i32>(31559i, 5732i)) << (u_input.b % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-683f + _wgslsmith_f_op_f32(-757f * _wgslsmith_f_op_f32(func_3())))) - _wgslsmith_f_op_f32(f32(-1f) * -1252f));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-2343f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -379f), _wgslsmith_f_op_f32(f32(-1f) * -771f), true)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_3)), -1171f)) + -1622f));
    var var_1 = vec4<f32>(arg_3, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-626f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(u_input.b.x, arg_2))))), _wgslsmith_f_op_f32(max(arg_3, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(591f + arg_3)))))), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1667f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-928f + var_0)))));
    let var_2 = arg_0;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 38578u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 40576u, u_input.a), vec3<u32>(4294967295u, 30326u, 26101u) << (vec3<u32>(u_input.a, 21152u, u_input.a) % vec3<u32>(32u)))), firstLeadingBit(abs(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 6714u))) >> (select(vec4<u32>(14460u, 23983u, u_input.b.x, 4294967295u), ~vec4<u32>(0u, u_input.a, u_input.a, u_input.a), arg_2.x) % vec4<u32>(32u))) >> (_wgslsmith_add_u32(abs(u_input.b.x), 0u) % 32u), 20u)];
    global2 = array<bool, 21>();
    return global0[_wgslsmith_index_u32(~u_input.b.x, 20u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> vec2<i32> {
    let var_0 = arg_0.a;
    var var_1 = func_1(arg_0, var_0.x, vec3<bool>(any(vec4<bool>(true, false, true, true)), true, all(select(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.x, arg_2.x), 22u)], vec2<bool>(global2[_wgslsmith_index_u32(arg_2.x, 21u)], false), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 21u)])))), 349f);
    var var_2 = vec3<f32>(-1343f, 1825f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(205f, 607f))))))));
    let var_3 = Struct_1(~arg_0.a);
    let var_4 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, ~var_0.x, abs(1i)), reverseBits(select(vec3<i32>(var_3.a.x, -41526i, var_0.x), vec3<i32>(2147483647i, -2147483647i, var_1.a.x), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 21u)], false)))), func_1(func_1(Struct_1(vec2<i32>(6705i, 2147483647i)), 2147483647i, vec3<bool>(global2[_wgslsmith_index_u32(3659u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], false), 2623f), max(28996i, 0i), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(arg_2.x, 21u)], false), _wgslsmith_f_op_f32(-var_2.x)).a.x ^ global1.a.x));
    return vec2<i32>(_wgslsmith_sub_i32((var_1.a.x & global1.a.x) >> (~arg_2.x % 32u), ~global1.a.x), _wgslsmith_add_i32(~_wgslsmith_mod_i32(-375i, global1.a.x), var_4.a.x)) << (~vec2<u32>(~arg_2.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(44746u, u_input.b.x, 0u), arg_2)) % vec2<u32>(32u));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = func_1(func_1(arg_2, _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, arg_1.a.x), arg_1.a.x, arg_2.a.x), _wgslsmith_sub_i32(max(-17349i, arg_1.a.x), ~global1.a.x)), select(select(vec3<bool>(global2[_wgslsmith_index_u32(arg_0, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(59681u, 21u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 21u)], global2[_wgslsmith_index_u32(0u, 21u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(11471u, 21u)], true, global2[_wgslsmith_index_u32(27333u, 21u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 21u)], global2[_wgslsmith_index_u32(31308u, 21u)], global2[_wgslsmith_index_u32(u_input.b.x, 21u)]), false)), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 21u)] != true, all(global3[_wgslsmith_index_u32(0u, 22u)])), vec3<bool>(any(vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b.x, 21u)])), true, false)), -870f), _wgslsmith_add_i32(arg_1.a.x, max(_wgslsmith_mult_i32(arg_1.a.x, 2147483647i), arg_2.a.x)) >> (0u % 32u), select(select(vec3<bool>(true, true, arg_2.a.x != arg_2.a.x), select(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 21u)], false, true), vec3<bool>(global2[_wgslsmith_index_u32(arg_0, 21u)], false, global2[_wgslsmith_index_u32(30341u, 21u)]), vec3<bool>(global2[_wgslsmith_index_u32(arg_0, 21u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 21u)])), false), !select(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(u_input.b.x, 21u)], false), vec3<bool>(global2[_wgslsmith_index_u32(arg_0, 21u)], global2[_wgslsmith_index_u32(u_input.b.x, 21u)], true), select(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], false, true)), (_wgslsmith_sub_i32(arg_2.a.x, -13815i) << (~arg_0 % 32u)) > -firstTrailingBit(arg_2.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1130f, -106f)))))))));
    global2 = array<bool, 21>();
    global2 = array<bool, 21>();
    var var_0 = -global1.a.x;
    global2 = array<bool, 21>();
    return global0[_wgslsmith_index_u32(u_input.a, 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(u_input.b.x, Struct_1(func_4(global0[_wgslsmith_index_u32(abs(80592u) >> (~u_input.a % 32u), 20u)], func_1(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global1.a.x), global1.a), vec3<bool>(true, true, global2[_wgslsmith_index_u32(46790u, 21u)]), 1048f), ~vec3<u32>(u_input.b.x, 54726u, u_input.a))), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, global1.a.x, global1.a.x), vec3<i32>(global1.a.x, -2147483647i, global1.a.x))), vec2<i32>(countOneBits(-7792i), 33928i))));
    global2 = array<bool, 21>();
    global1 = global0[_wgslsmith_index_u32(max(~(~_wgslsmith_add_u32(u_input.a & u_input.b.x, u_input.a)), u_input.a), 20u)];
    let var_0 = vec4<bool>(true, !(!global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.a)), 21u)]), true, true);
    global3 = array<vec2<bool>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer((~global1.a & global1.a) << (_wgslsmith_mod_vec2_u32(~countOneBits(vec2<u32>(0u, u_input.a)), u_input.b) % vec2<u32>(32u)), 99449u, ~_wgslsmith_add_u32(~(4294967295u | u_input.a), min(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.a), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1058f - 1f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
}

