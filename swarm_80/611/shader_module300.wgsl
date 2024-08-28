struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(false, true, false);

var<private> global1: Struct_1 = Struct_1(-15803i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    let var_0 = !select(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], true), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], false, true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c, 3u)]), true), any(vec3<bool>(false, false, true))), !vec3<bool>(true, u_input.a.x <= 1u, true), !vec3<bool>(!global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], u_input.a.x < u_input.a.x));
    global1 = Struct_1(_wgslsmith_add_i32(-_wgslsmith_add_i32(global1.a >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, 1i, 2147483647i), vec3<i32>(global1.a, 0i, -2147483647i))), _wgslsmith_mod_i32(2900i, min(global1.a, -2147483647i))));
    return 1i;
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_1(select(~_wgslsmith_mult_i32(2147483647i, func_3()), global1.a, !all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(13072u, 3u)])) || true));
    let var_1 = !(!(!global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(0u), abs(u_input.c)), 3u)]));
    var var_2 = Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.a.x, 4294967295u, abs(u_input.c), ~0u), ~(~vec4<u32>(1u, 1389u, u_input.a.x, 4294967295u))) | _wgslsmith_sub_vec4_u32(abs(vec4<u32>(27652u, 0u, u_input.c, 35958u)), _wgslsmith_sub_vec4_u32(vec4<u32>(15908u, u_input.a.x, 1u, 9463u), vec4<u32>(42545u, u_input.a.x, 9111u, u_input.c)) & ~vec4<u32>(u_input.a.x, 4294967295u, u_input.c, 66353u)), Struct_1(-2147483647i), firstTrailingBit(-15938i), Struct_1(_wgslsmith_mod_i32(34731i, _wgslsmith_add_i32(-global1.a, var_0.a))));
    var_0 = var_2.d;
    let var_3 = Struct_1(-(~34520i));
    return vec4<f32>(-1360f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(507f * 1450f), 1259f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-740f)))), _wgslsmith_f_op_f32(max(-120f, _wgslsmith_f_op_f32(-789f - _wgslsmith_f_op_f32(sign(430f))))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1242f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(873f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(415f * 136f))))));
}

fn func_4(arg_0: vec4<f32>) -> vec3<bool> {
    let var_0 = vec4<i32>((u_input.b ^ max(2147483647i << (0u % 32u), u_input.b)) | global1.a, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -15202i, u_input.b, 1i), vec4<i32>(43016i, -47723i, 0i, u_input.b))), vec4<i32>(-global1.a, _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b), ~u_input.b, 4360i)), abs(~_wgslsmith_mult_i32(2147483647i, global1.a))), global1.a, min(u_input.b, 1i));
    global1 = Struct_1(0i);
    var var_1 = Struct_1(var_0.x << (60968u % 32u));
    let var_2 = 1u;
    let var_3 = Struct_2(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 0u, var_2, var_2), vec4<u32>(var_2, u_input.a.x, u_input.a.x, u_input.a.x)) & vec4<u32>(25912u, 4294967295u, 1u, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_2, 0u, 73699u, 13087u) >> (vec4<u32>(u_input.a.x, 0u, var_2, 24106u) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 0u, u_input.c, u_input.c))), min(vec4<u32>(var_2 & u_input.a.x, u_input.c, min(u_input.a.x, 31541u), var_2 | var_2), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.a.x, 1u, 32018u), countOneBits(vec4<u32>(18166u, var_2, var_2, 1u))))), Struct_1(select(var_1.a << (14861u % 32u), 1i, true)), 1i, Struct_1(_wgslsmith_clamp_i32(~35065i, abs(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -2147483647i), var_0.zy)) >> (3686u % 32u)));
    return select(select(!vec3<bool>(true, !global0[_wgslsmith_index_u32(var_3.a.x, 3u)], global0[_wgslsmith_index_u32(reverseBits(var_2), 3u)]), vec3<bool>(!any(vec3<bool>(global0[_wgslsmith_index_u32(var_2, 3u)], global0[_wgslsmith_index_u32(var_3.a.x, 3u)], true)), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(var_3.a, var_3.a)), 3u)], all(vec2<bool>(false, false))), !(50780i < (-1i ^ global1.a))), select(vec3<bool>(global1.a <= func_3(), global0[_wgslsmith_index_u32(var_2, 3u)], -280f != _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), !(!(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(26519u, 3u)], true))), select(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)])), select(!vec3<bool>(global0[_wgslsmith_index_u32(var_2, 3u)], true, global0[_wgslsmith_index_u32(var_2, 3u)]), vec3<bool>(true, false, false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 3u)], true)), false)), select(select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(27394u, 3u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], false, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, false), !vec3<bool>(global0[_wgslsmith_index_u32(8121u, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(48531u, 3u)])), vec3<bool>(var_0.x >= var_0.x, all(vec4<bool>(true, global0[_wgslsmith_index_u32(var_2, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)])), -424f < arg_0.x), vec3<bool>(global0[_wgslsmith_index_u32(386u, 3u)], !global0[_wgslsmith_index_u32(u_input.c, 3u)], select(true, global0[_wgslsmith_index_u32(44000u, 3u)], false))), vec3<bool>(true, true, any(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 3u)], true, true))), true & global0[_wgslsmith_index_u32(1u, 3u)]));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(~countOneBits(vec4<u32>(37995u, arg_2.x, 49022u, 3226u) & vec4<u32>(arg_2.x, u_input.a.x, u_input.c, arg_2.x)) & _wgslsmith_div_vec4_u32(countOneBits(~vec4<u32>(1u, arg_2.x, u_input.c, arg_2.x)), firstLeadingBit(~vec4<u32>(arg_2.x, u_input.a.x, 58283u, arg_2.x))), Struct_1(-1445i), arg_0.a, Struct_1(-7252i));
    global1 = Struct_1(0i);
    var var_1 = Struct_1(var_0.d.a);
    var_1 = arg_0;
    var var_2 = arg_0;
    return Struct_1(_wgslsmith_mod_i32(global1.a & _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, global1.a, -22822i, 8766i), vec4<i32>(global1.a, u_input.b, -2147483647i, 26516i) << (vec4<u32>(79672u, 1u, arg_2.x, arg_2.x) % vec4<u32>(32u))), _wgslsmith_mod_i32(abs(39747i), -2147483647i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: f32) -> Struct_1 {
    var var_0 = func_5(Struct_1(~(-arg_1) >> (~u_input.c % 32u)), !func_4(_wgslsmith_f_op_vec4_f32(func_2())), ~vec3<u32>(u_input.c, 1u, _wgslsmith_mod_u32(49624u, abs(u_input.c))));
    global0 = array<bool, 3>();
    var var_1 = func_5(Struct_1(~_wgslsmith_clamp_i32(global1.a, global1.a, u_input.b) ^ firstLeadingBit(arg_1)), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-344f, -532f, arg_2, -263f), vec4<f32>(837f, arg_2, arg_2, arg_2)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, 663f, arg_2, arg_2), vec4<f32>(-352f, 937f, 784f, arg_2), global0[_wgslsmith_index_u32(4294967295u, 3u)])), vec4<f32>(arg_2, -837f, 1143f, arg_2)))), ~u_input.a);
    var var_2 = any(vec4<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(select(4294967295u, 42022u, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)] & false, global0[_wgslsmith_index_u32(u_input.c, 3u)], !global0[_wgslsmith_index_u32(u_input.a.x, 3u)])), !(!any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], true))), select(global0[_wgslsmith_index_u32(1u, 3u)], arg_2 == _wgslsmith_f_op_f32(-arg_2), true), true));
    let var_3 = _wgslsmith_clamp_u32(4294967295u << (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.a, u_input.a), (u_input.a ^ u_input.a) ^ firstTrailingBit(u_input.a)) % 32u), u_input.c, ~(~1u));
    return Struct_1(_wgslsmith_dot_vec4_i32(~select(firstTrailingBit(arg_0), ~vec4<i32>(14455i, 0i, 108063i, u_input.b), !vec4<bool>(global0[_wgslsmith_index_u32(44473u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)])), _wgslsmith_mod_vec4_i32(select(vec4<i32>(-7654i, u_input.b, -9941i, arg_0.x), arg_0 | arg_0, global0[_wgslsmith_index_u32(0u, 3u)] & true), arg_0)));
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    global0 = array<bool, 3>();
    let var_0 = func_5(func_1(_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, 2147483647i, u_input.b, -1i), abs(-vec4<i32>(u_input.b, global1.a, -25210i, -35437i))), -20111i, -203f), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-340f, -1888f, -195f, arg_1)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2343f, 106f, -1317f, 817f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, 1452f, arg_1, arg_1), vec4<f32>(1385f, arg_1, arg_1, -354f), vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(4294967295u, 3u)]))), _wgslsmith_div_vec4_f32(vec4<f32>(1636f, arg_1, arg_1, arg_1), vec4<f32>(arg_1, 146f, -1705f, arg_1))))), vec3<u32>(arg_0, 4294967295u, ~_wgslsmith_mult_u32(arg_0, u_input.a.x) >> (arg_0 % 32u)));
    var var_1 = var_0;
    let var_2 = vec2<bool>(global0[_wgslsmith_index_u32(min(firstLeadingBit(u_input.c) >> (min(_wgslsmith_sub_u32(u_input.c, 4294967295u), _wgslsmith_add_u32(63487u, arg_2.a.x)) % 32u), u_input.a.x ^ arg_2.a.x), 3u)], !global0[_wgslsmith_index_u32(abs(arg_0), 3u)]);
    let var_3 = ~vec3<i32>(global1.a, _wgslsmith_mod_i32(~var_1.a, var_0.a & var_1.a) ^ 20312i, select(var_1.a, u_input.b >> (0u % 32u), true) >> (arg_2.a.x % 32u));
    return Struct_1(-var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(78775u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(436f, 880f, false)))) + 1f)), Struct_2(~(~vec4<u32>(28684u, u_input.a.x, 0u, 41599u)), func_1(vec4<i32>(1i, global1.a, global1.a, global1.a), _wgslsmith_sub_i32(global1.a | -2147483647i, _wgslsmith_mod_i32(9363i, 8938i)), 319f), global1.a | _wgslsmith_sub_i32(abs(global1.a), -2147483647i >> (u_input.c % 32u)), func_1((vec4<i32>(u_input.b, 2147483647i, 61526i, global1.a) & vec4<i32>(global1.a, 20985i, global1.a, u_input.b)) | vec4<i32>(global1.a, u_input.b, 1i, 2147483647i), u_input.b, _wgslsmith_f_op_f32(round(1f)))));
    global1 = func_6(_wgslsmith_div_u32(u_input.a.x ^ ~abs(u_input.a.x), ~_wgslsmith_mult_u32(4110u, u_input.c)), 143f, Struct_2(vec4<u32>(_wgslsmith_mod_u32(0u, 4294967295u), countOneBits(~u_input.c), u_input.a.x, ~u_input.a.x), Struct_1(_wgslsmith_mod_i32(2147483647i, 16938i)), 20139i, func_6(reverseBits(70749u), _wgslsmith_f_op_f32(floor(2067f)), Struct_2(~vec4<u32>(72688u, 16762u, 1u, 4294967295u), func_6(4294967295u, 674f, Struct_2(vec4<u32>(77966u, u_input.a.x, u_input.c, 4294967295u), Struct_1(87641i), u_input.b, var_0)), ~u_input.b, func_5(Struct_1(-2147483647i), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)]), u_input.a)))));
    let var_1 = ~_wgslsmith_dot_vec3_u32(select(~countOneBits(vec3<u32>(u_input.a.x, 1u, u_input.c)), vec3<u32>(u_input.c, ~30491u, _wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.yx)), !select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), global0[_wgslsmith_index_u32(u_input.c, 3u)])), firstLeadingBit(firstTrailingBit(~vec3<u32>(1u, 47470u, u_input.a.x))));
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(170f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1108f)), _wgslsmith_div_f32(-631f, 369f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-966f - 1229f))), 584f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, vec4<u32>(var_1, ~_wgslsmith_dot_vec2_u32(u_input.a.yy, countOneBits(vec2<u32>(var_1, 60742u))), var_1, 38338u), var_2.x, global1.a);
}

