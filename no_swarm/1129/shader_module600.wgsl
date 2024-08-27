struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(-1i, 0i, i32(-2147483648), 1i), vec4<i32>(-26589i, 2147483647i, 57370i, -1i), vec4<i32>(2147483647i, -5403i, 2147483647i, -53787i), vec4<i32>(0i, 45867i, 17540i, 0i), vec4<i32>(-1i, -1i, -15018i, 1i), vec4<i32>(-124i, -30043i, 73398i, 40294i), vec4<i32>(2147483647i, 2976i, -1i, 1i), vec4<i32>(-29927i, -21711i, 35055i, 12487i), vec4<i32>(i32(-2147483648), 0i, 22288i, 6307i), vec4<i32>(-28937i, -1i, 2147483647i, 1i), vec4<i32>(-1i, -10016i, -1i, 0i), vec4<i32>(-9288i, i32(-2147483648), -34287i, i32(-2147483648)), vec4<i32>(61369i, 2147483647i, 1i, 0i), vec4<i32>(16556i, -12010i, -1i, 0i), vec4<i32>(-34193i, -32175i, 25408i, 50822i), vec4<i32>(-1i, -50184i, 3679i, 17206i), vec4<i32>(i32(-2147483648), 1i, 0i, 0i), vec4<i32>(0i, i32(-2147483648), -1i, 29362i), vec4<i32>(-23073i, i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(-59130i, 1i, 2147483647i, -4315i), vec4<i32>(2147483647i, -4703i, -18980i, 0i), vec4<i32>(2147483647i, 9179i, -31398i, 2147483647i), vec4<i32>(12700i, 1i, 1i, i32(-2147483648)), vec4<i32>(0i, 3577i, -44757i, 2147483647i), vec4<i32>(1i, 1i, 1i, 0i), vec4<i32>(0i, 1i, 52266i, 42360i), vec4<i32>(1i, 0i, 0i, i32(-2147483648)));

var<private> global1: array<bool, 12>;

var<private> global2: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(75688u, 4704u, 4294967295u), vec3<u32>(57918u, 1u, 67340u), vec3<u32>(75512u, 17734u, 0u), vec3<u32>(5464u, 55747u, 4294967295u), vec3<u32>(56257u, 88097u, 4294967295u), vec3<u32>(4294967295u, 44413u, 4294967295u), vec3<u32>(10171u, 4294967295u, 43281u), vec3<u32>(0u, 1u, 1u), vec3<u32>(26810u, 11631u, 1715u), vec3<u32>(4294967295u, 23690u, 87931u), vec3<u32>(4294967295u, 1u, 9830u), vec3<u32>(1u, 32163u, 140124u), vec3<u32>(16560u, 65003u, 0u), vec3<u32>(0u, 1u, 0u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2() -> i32 {
    return -_wgslsmith_mult_i32(firstTrailingBit(7381i) << (4294967295u % 32u), 2147483647i);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1450f), _wgslsmith_f_op_f32(630f - _wgslsmith_f_op_f32(-146f + -1000f))))));
    global0 = array<vec4<i32>, 27>();
    let var_1 = select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 12u)], all(vec4<bool>(any(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], true)), any(vec3<bool>(false, true, global1[_wgslsmith_index_u32(57126u, 12u)])), 400f > var_0.x, select(global1[_wgslsmith_index_u32(u_input.b, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)], false))), !any(!vec2<bool>(false, global1[_wgslsmith_index_u32(13172u, 12u)]))), vec3<bool>(true, true, all(!(!vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 12u)], true)))), all(vec2<bool>(all(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(1u, 12u)])), !(!global1[_wgslsmith_index_u32(4294967295u, 12u)]))));
    var var_2 = Struct_2(reverseBits(_wgslsmith_clamp_i32(-1i, firstLeadingBit(29232i), _wgslsmith_add_i32(-1i, u_input.c)) ^ 6009i));
    let var_3 = Struct_2(_wgslsmith_add_i32(u_input.c, var_2.a));
    return 57002u;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: u32) -> vec2<bool> {
    var var_0 = Struct_2(-func_2());
    let var_1 = _wgslsmith_sub_u32(arg_2 >> (arg_2 % 32u), 1u);
    var var_2 = firstLeadingBit(~(~vec2<i32>(var_0.a, -2147483647i) | _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a, 20394i), vec2<i32>(2147483647i, u_input.c))) & vec2<i32>(_wgslsmith_mult_i32(u_input.c, -4315i), 0i));
    let var_3 = Struct_1(~(~66128u), arg_0, false || global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(_wgslsmith_add_u32(0u, arg_2)), var_1), 12u)], _wgslsmith_mod_u32(abs(var_1), var_1), 1u);
    global2 = array<vec3<u32>, 14>();
    return select(!(!select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(var_3.d, 12u)]), vec2<bool>(var_3.c, false), vec2<bool>(false, false)), vec2<bool>(global1[_wgslsmith_index_u32(0u, 12u)], false), all(vec2<bool>(true, arg_1)))), select(vec2<bool>(global1[_wgslsmith_index_u32(func_3(), 12u)], true), vec2<bool>(!all(vec3<bool>(false, true, arg_1)), true), !select(vec2<bool>(false, true), !vec2<bool>(false, var_3.c), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(var_1, 14u)], vec3<u32>(1u, 0u, u_input.a.x)), 12u)])), select(select(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_3.a, var_3.d, 26115u), 12u)], true), !(!vec2<bool>(arg_1, global1[_wgslsmith_index_u32(var_1, 12u)])), true), vec2<bool>(false, true), !(!(!vec2<bool>(global1[_wgslsmith_index_u32(0u, 12u)], false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_mod_vec2_i32((select(vec2<i32>(2147483647i, u_input.c), vec2<i32>(u_input.c, 1i), global1[_wgslsmith_index_u32(u_input.b, 12u)]) ^ -vec2<i32>(u_input.c, u_input.c)) ^ select(-vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-1i, u_input.c), func_1(177f, true, u_input.a.x)), vec2<i32>(7721i, -1i));
    global1 = array<bool, 12>();
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-(~1264i), -78272i), max(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_0.x, u_input.c) & vec3<i32>(u_input.c, 24570i, -13318i), _wgslsmith_mod_vec3_i32(vec3<i32>(17351i, -17926i, u_input.c), vec3<i32>(-2147483647i, u_input.c, 18237i))))), min(var_0, var_0));
    var_1 = countOneBits(countOneBits(var_0) | reverseBits(max(~vec2<i32>(2147483647i, 1i), var_0)));
    let var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(-9896i, 29683i)), var_0) << (_wgslsmith_dot_vec4_u32(u_input.a, ~(~u_input.a)) % 32u), (i32(-1i) * -select(var_1.x, -15155i, global1[_wgslsmith_index_u32(u_input.a.x, 12u)])) ^ firstLeadingBit(~_wgslsmith_add_i32(49010i, var_1.x)), -1i);
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, ~(0u ^ u_input.a.x)), select(min(reverseBits(66448u), 9264u), 0u, _wgslsmith_add_u32(u_input.a.x, 3426u) < 1u)), reverseBits(u_input.a.x));
    var_1 = var_0;
    var var_4 = select(vec4<bool>(false, true, any(!select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(10743u, 12u)], global1[_wgslsmith_index_u32(var_3, 12u)]), global1[_wgslsmith_index_u32(var_3, 12u)])), false), select(select(vec4<bool>(!global1[_wgslsmith_index_u32(var_3, 12u)], global1[_wgslsmith_index_u32(var_3, 12u)] && false, true, all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, global1[_wgslsmith_index_u32(var_3, 12u)], global1[_wgslsmith_index_u32(22270u, 12u)], global1[_wgslsmith_index_u32(var_3, 12u)]), global1[_wgslsmith_index_u32(46427u, 12u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 12u)], global1[_wgslsmith_index_u32(var_3, 12u)], true, global1[_wgslsmith_index_u32(u_input.b, 12u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(13902u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], false)), false), select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], false, true, global1[_wgslsmith_index_u32(var_3, 12u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(2988u, 12u)], global1[_wgslsmith_index_u32(var_3, 12u)], global1[_wgslsmith_index_u32(u_input.b, 12u)]), global1[_wgslsmith_index_u32(107836u, 12u)]), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(var_3, 12u)], false), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_3, 12u)], false)), vec4<bool>(false, global1[_wgslsmith_index_u32(100456u, 12u)], global1[_wgslsmith_index_u32(var_3, 12u)], false)), select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], true, global1[_wgslsmith_index_u32(var_3, 12u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(15365u, 12u)], global1[_wgslsmith_index_u32(u_input.b, 12u)], global1[_wgslsmith_index_u32(var_3, 12u)], global1[_wgslsmith_index_u32(58334u, 12u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(12426u, 12u)], false, global1[_wgslsmith_index_u32(var_3, 12u)]), global1[_wgslsmith_index_u32(u_input.b, 12u)]), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(var_3, 12u)], true, true)), global1[_wgslsmith_index_u32(4294967295u, 12u)]), !select(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(12287u, 12u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(var_3, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(var_3, 12u)], global1[_wgslsmith_index_u32(125u, 12u)], false)), vec4<bool>(false, global1[_wgslsmith_index_u32(var_3, 12u)], global1[_wgslsmith_index_u32(44752u, 12u)], global1[_wgslsmith_index_u32(11619u, 12u)]), vec4<bool>(global1[_wgslsmith_index_u32(50784u, 12u)], false, true, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]))), vec4<bool>(all(select(!vec3<bool>(true, global1[_wgslsmith_index_u32(8568u, 12u)], global1[_wgslsmith_index_u32(var_3, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(12016u, 12u)], global1[_wgslsmith_index_u32(var_3, 12u)], true), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(35241u, 9309u), 12u)])), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(47847u, func_3(), 4294967295u), 12u)] | true, true, false));
    var var_5 = vec3<f32>(158f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-957f, -1557f, global1[_wgslsmith_index_u32(4294967295u, 12u)])))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(813f)) - _wgslsmith_f_op_f32(floor(542f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.c, -(1i ^ var_0.x)), ~4294967295u, var_5.x, -var_0);
}

