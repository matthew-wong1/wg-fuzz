struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: array<bool, 22> = array<bool, 22>(true, false, false, true, false, false, false, false, false, true, false, true, false, true, true, true, true, true, false, false, true, true);

var<private> global2: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    let var_0 = Struct_1(arg_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(175f, -1280f, -1000f, -252f), vec4<f32>(arg_0.x, 2815f, arg_0.x, 175f))))))), _wgslsmith_f_op_f32(select(-1000f, -366f, global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 21u)] << (7999u % 32u), 22u)])), ~(~vec2<u32>(0u, u_input.a) ^ reverseBits(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 21u)], 21u)], 21u)]))) & vec2<u32>(abs(1u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(min(1u, u_input.a) ^ ~1u, 21u)], 21u)]), false);
    let var_1 = var_0;
    global1 = array<bool, 22>();
    let var_2 = !vec3<bool>(all(vec2<bool>(true, u_input.b < u_input.c)), true, -271f <= _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(-1381f - 1656f))));
    let var_3 = any(!select(!(!vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 21u)], 22u)])), !vec4<bool>(false, true, var_1.e, true), select(!vec4<bool>(var_1.e, var_2.x, var_1.e, true), !vec4<bool>(false, true, var_2.x, false), 47349u == u_input.d)));
    return reverseBits(57389u) != _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32((vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(4294967295u, 21u)], 70685u, u_input.a) ^ vec4<u32>(var_1.d.x, 34428u, u_input.a, u_input.a)) | select(vec4<u32>(var_1.d.x, var_1.d.x, 0u, 0u), vec4<u32>(var_1.d.x, global0[_wgslsmith_index_u32(4294967295u, 21u)], 42961u, 4294967295u), var_0.e), ~vec4<u32>(11202u, var_1.d.x, u_input.a, var_1.d.x)), ~(~vec4<u32>(global0[_wgslsmith_index_u32(var_1.d.x, 21u)], global0[_wgslsmith_index_u32(48507u, 21u)], u_input.a, var_1.d.x)) >> (select(firstLeadingBit(vec4<u32>(var_0.d.x, 1u, u_input.d, 2505u)), ~vec4<u32>(var_1.d.x, var_0.d.x, u_input.a, 16148u), !vec4<bool>(var_3, false, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 22u)])) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 1i;
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(u_input.d), reverseBits(min(4294967295u, ~arg_0.d.x))) | arg_0.d.x, 22u)];
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(672f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(178f))), vec2<u32>(global0[_wgslsmith_index_u32(arg_0.d.x, 21u)], ~arg_0.d.x) | (arg_0.d ^ (_wgslsmith_add_vec2_u32(arg_0.d, arg_0.d) ^ _wgslsmith_add_vec2_u32(arg_0.d, arg_0.d))), true);
    var var_2 = arg_0;
    var var_3 = ~(-(~vec4<i32>(1i, 1i, -1i, -8784i)));
    return Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-432f)) - -1000f), var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -795f)), _wgslsmith_f_op_vec4_f32(var_2.b * _wgslsmith_f_op_vec4_f32(var_2.b - arg_0.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-515f + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1074f))))), vec2<u32>(var_2.d.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.d, u_input.a), ~global0[_wgslsmith_index_u32(72914u ^ u_input.a, 21u)])), all(vec4<bool>(!var_2.e, false, select(var_1.e, func_3(var_1.b.xx), u_input.c >= u_input.b), global1[_wgslsmith_index_u32(60776u, 22u)])));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global2 = all(vec2<bool>(all(select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 22u)]), vec2<bool>(false, true), true)), true)) | ((firstTrailingBit(_wgslsmith_div_i32(54227i, -22114i)) <= 11670i) | global1[_wgslsmith_index_u32(countOneBits(arg_2.d.x), 22u)]);
    let var_0 = 1u;
    var var_1 = vec3<f32>(-258f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -2476f), true))), arg_1);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1900f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f)))) * var_1.x);
    let var_3 = !(false && func_2(func_2(arg_2)).e);
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_2(func_2(Struct_1(419f, vec4<f32>(598f, -1061f, var_1.x, -347f), -1727f, arg_2.d, arg_2.e))).b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_1)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_0))))), -103f, ~_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 0u), max(arg_2.d, vec2<u32>(4294967295u, 32160u))), any(vec3<bool>(all(vec2<bool>(true, true)), func_2(func_2(arg_2)).e, true)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = 1i;
    global2 = true;
    var_0 = ~(u_input.c & (i32(-1i) * -2147483647i));
    let var_1 = false;
    var var_2 = func_4(arg_2.b, -716f, func_2(arg_2));
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = arg_0;
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(-func_1(-vec3<i32>(arg_2, 47900i, 34475i) >> (~vec3<u32>(u_input.a, arg_1.d.x, global0[_wgslsmith_index_u32(55853u, 21u)]) % vec3<u32>(32u)), vec2<i32>(1i, ~1i), Struct_1(_wgslsmith_f_op_f32(var_0.a - 1487f), vec4<f32>(-924f, arg_0.b.x, arg_1.b.x, -700f), -587f, firstTrailingBit(vec2<u32>(0u, 7781u)), any(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 22u)]))), var_0.b.xwx).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1220f)))), arg_1);
    var var_2 = Struct_1(1532f, _wgslsmith_f_op_vec4_f32(min(func_1(~vec3<i32>(-3787i, u_input.c, 37461i) & vec3<i32>(-30412i, u_input.b, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2, arg_2), vec2<i32>(1i, arg_2)), func_1(vec3<i32>(arg_2, -2147483647i, 12124i), vec2<i32>(20618i, -2147483647i), Struct_1(448f, arg_0.b, 1554f, vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], var_0.d.x), global1[_wgslsmith_index_u32(0u, 22u)]), _wgslsmith_div_vec3_f32(var_1.b.zzw, vec3<f32>(arg_0.c, var_0.a, -900f))), _wgslsmith_div_vec3_f32(arg_0.b.zzy, _wgslsmith_f_op_vec3_f32(arg_0.b.xwy - arg_0.b.wxy))).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, 552f, 1927f, var_1.a), _wgslsmith_f_op_vec4_f32(max(arg_0.b, vec4<f32>(arg_1.c, 490f, arg_0.c, -689f))))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1711f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(259f * -853f), var_1.b.x))))), arg_1.d, true);
    var var_3 = 38220u;
    var var_4 = ~(vec3<u32>(~4466u, ~(~var_0.d.x), _wgslsmith_mod_u32(u_input.a, ~var_1.d.x)) & vec3<u32>(var_1.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(32757u, 583u), arg_1.d | vec2<u32>(57542u, 0u)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(firstLeadingBit(231u), 21u)], u_input.d), 21u)]));
    return ~(0u >> (arg_1.d.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(select(vec3<u32>(10444u, global0[_wgslsmith_index_u32(~51734u, 21u)], 4294967295u), vec3<u32>(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33117u, 21u)], 21u)]), ~4294967295u, ~53465u), !(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 22u)]))) | vec3<u32>(func_5(func_1(vec3<i32>(u_input.c, -1i, u_input.b), vec2<i32>(u_input.c, u_input.c), Struct_1(-232f, vec4<f32>(214f, -1868f, -1000f, -249f), -2936f, vec2<u32>(0u, 1u), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 21u)], 22u)]), vec3<f32>(703f, -189f, 1000f)), func_2(Struct_1(-857f, vec4<f32>(-231f, -985f, 2781f, 340f), -1469f, vec2<u32>(global0[_wgslsmith_index_u32(1u, 21u)], 0u), global1[_wgslsmith_index_u32(u_input.a, 22u)])), reverseBits(0i)), ~(~u_input.d), _wgslsmith_add_u32(1u, u_input.a & 1u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(967f, 1029f), _wgslsmith_div_f32(491f, 444f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1218f)) + -937f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(474f - -1008f)), _wgslsmith_f_op_f32(-783f - _wgslsmith_f_op_f32(step(-910f, 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1246f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -176f)))), 1000f, reverseBits(vec2<u32>(min(0u >> (u_input.a % 32u), 1u), 1u)), !(!any(!vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(0u, 22u)]))));
    global1 = array<bool, 22>();
    global1 = array<bool, 22>();
    var_0 = firstTrailingBit(vec3<u32>(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_2(var_1).d.x, ~3420u), 21u)], var_0.x, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c, u_input.b, -13495i, u_input.b) >> (vec4<u32>(var_1.d.x, 15297u, var_0.x, u_input.a) % vec4<u32>(32u))), select(min(vec4<i32>(u_input.c, u_input.b, u_input.b, 1i), vec4<i32>(-2147483647i, u_input.b, -52980i, u_input.c)), select(vec4<i32>(-7858i, u_input.b, 443i, 1125i), vec4<i32>(u_input.b, -13010i, u_input.b, u_input.b), vec4<bool>(var_1.e, true, var_1.e, var_1.e)), var_1.e != global1[_wgslsmith_index_u32(15215u, 22u)])), ~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 25075i, 0i), vec3<i32>(24374i, -2598i, u_input.c)), min(vec3<i32>(0i, u_input.b, u_input.c), vec3<i32>(0i, -1i, u_input.c)))), _wgslsmith_f_op_vec3_f32(var_1.b.yxy - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_1.b.xxw)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-102f, var_1.a, var_1.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x))))), ~(~abs(firstTrailingBit(vec4<u32>(13392u, var_1.d.x, 0u, u_input.a)))));
}

