struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: array<bool, 28>;

var<private> global2: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(14707i, 2147483647i, 27556i), vec3<i32>(52777i, 0i, 59763i), vec3<i32>(-15330i, 24465i, 28093i), vec3<i32>(21059i, 67117i, -18162i), vec3<i32>(-1i, i32(-2147483648), 28915i), vec3<i32>(-74931i, i32(-2147483648), -3764i), vec3<i32>(10901i, 0i, -53349i), vec3<i32>(-26985i, i32(-2147483648), 1i), vec3<i32>(29163i, 1i, -10204i), vec3<i32>(35736i, 2147483647i, 0i), vec3<i32>(i32(-2147483648), -45204i, i32(-2147483648)), vec3<i32>(28490i, 13178i, -1i), vec3<i32>(58880i, 0i, 0i), vec3<i32>(0i, -67335i, 0i), vec3<i32>(i32(-2147483648), 18823i, 3363i));

var<private> global3: array<bool, 1>;

var<private> global4: array<vec2<bool>, 7>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<i32> {
    global4 = array<vec2<bool>, 7>();
    global3 = array<bool, 1>();
    var var_0 = Struct_1(select(1i, -2147483647i, true), true, -1000f, -21728i);
    let var_1 = Struct_1(~1i, 348f >= var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.c, var_0.c)))))), max(32838i, var_0.d));
    var var_2 = Struct_3(_wgslsmith_div_i32(-2147483647i, var_0.a));
    return _wgslsmith_div_vec4_i32(u_input.a, countOneBits(u_input.b ^ u_input.b));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(-1i, ~arg_1.a, ~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -50391i, arg_1.a), global2[_wgslsmith_index_u32(arg_0.x, 15u)]))), func_3() >> (vec4<u32>(1u, 65572u ^ u_input.c.x, 1u, _wgslsmith_mult_u32(arg_0.x, global0[_wgslsmith_index_u32(4915u, 26u)])) % vec4<u32>(32u))), all(!vec4<bool>(true, all(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 28u)], true, true)), true, !global3[_wgslsmith_index_u32(arg_0.x, 1u)])), arg_1.c, _wgslsmith_mult_i32(-u_input.a.x, arg_2));
    let var_1 = arg_1;
    let var_2 = u_input.c;
    var var_3 = Struct_1(func_3().x, var_1.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1121f - var_0.c) + _wgslsmith_f_op_f32(-1096f + var_1.c))))), _wgslsmith_div_i32(i32(-1i) * -arg_1.a, select(~_wgslsmith_sub_i32(8797i, arg_1.d), abs(i32(-1i) * -2147483647i), var_1.b)));
    var var_4 = vec2<bool>((-9388i < max(max(-2147483647i, u_input.b.x), -5292i)) == any(vec4<bool>(true, true, var_0.b, global3[_wgslsmith_index_u32(var_2.x, 1u)])), !(1u <= u_input.e.x));
    return reverseBits(_wgslsmith_dot_vec4_i32(func_3() ^ ~(vec4<i32>(u_input.b.x, 1i, 2147483647i, -1i) | u_input.b), u_input.b));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_mult_vec4_i32(min(-vec4<i32>(countOneBits(1i), 2147483647i | arg_0.b.a, -2147483647i, func_3().x), u_input.a), vec4<i32>(arg_0.b.d, abs(-arg_0.b.a), -37422i, 0i));
    var var_1 = arg_2;
    var var_2 = Struct_3(11753i);
    var var_3 = arg_0.a.x;
    let var_4 = Struct_3(abs(var_0.x) >> (4294967295u % 32u));
    return true;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> Struct_2 {
    global3 = array<bool, 1>();
    let var_0 = func_4(Struct_2(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(73052u, 26u)]), u_input.e)), Struct_1(u_input.b.x ^ func_2(vec2<u32>(5620u, u_input.c.x), Struct_1(u_input.b.x, global1[_wgslsmith_index_u32(1u, 28u)], -882f, 2147483647i), -45423i), true, 1f, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, arg_1.x, 2147483647i, arg_1.x), vec4<i32>(-28506i, u_input.b.x, u_input.d, arg_1.x)), vec4<i32>(u_input.a.x, arg_1.x, 2383i, 0i))), u_input.c.yz), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1293f, 1699f) - _wgslsmith_f_op_f32(floor(2227f))))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -708f))), -1341f), 1f);
    let var_1 = Struct_3(_wgslsmith_dot_vec4_i32(~vec4<i32>(_wgslsmith_mod_i32(arg_1.x, 1i), func_2(vec2<u32>(4294967295u, 20192u), Struct_1(arg_1.x, var_0, 1084f, arg_1.x), arg_1.x), arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-61593i, u_input.d, arg_1.x, u_input.d), u_input.a)), vec4<i32>(~(-1i), _wgslsmith_mod_i32(-7608i | u_input.d, ~0i), ~u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, ~u_input.b))));
    let var_2 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(_wgslsmith_add_i32(arg_1.x, -arg_1.x), -var_1.a, -var_1.a, var_1.a), vec4<i32>(1i, arg_1.x, 2147483647i, ~27998i), vec4<i32>(~u_input.d, -1i, -u_input.a.x, var_1.a));
    var var_3 = !global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 26u)], 28u)];
    return Struct_2(vec2<u32>(min(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.e.x << (u_input.c.x % 32u), 26u)], ~0u), 1u), _wgslsmith_mod_u32(~4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0, global0[_wgslsmith_index_u32(0u, 26u)], 4294967295u), vec4<u32>(0u, 4294967295u, u_input.c.x, global0[_wgslsmith_index_u32(27684u, 26u)])), ~arg_0)), Struct_1(-2147483647i, select(global1[_wgslsmith_index_u32(~4294967295u, 28u)], any(vec3<bool>(global3[_wgslsmith_index_u32(0u, 1u)], true, var_0)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 56037u, u_input.c.x, arg_0), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], global0[_wgslsmith_index_u32(12360u, 26u)], 329u, global0[_wgslsmith_index_u32(4294967295u, 26u)])), 28u)]) | var_0, _wgslsmith_f_op_f32(-781f * -941f), 2147483647i), ~vec2<u32>(~4294967295u, 29530u));
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_3(func_3().x);
    global4 = array<vec2<bool>, 7>();
    global3 = array<bool, 1>();
    global1 = array<bool, 28>();
    var var_1 = vec2<i32>(-4625i, -(~var_0.a));
    return firstTrailingBit(var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 28>();
    let var_0 = Struct_3(u_input.a.x | (select(-u_input.d, 15654i ^ u_input.b.x, false) & 1i));
    var var_1 = Struct_1(func_5(func_1(~firstTrailingBit(u_input.e.x), min(-global2[_wgslsmith_index_u32(u_input.c.x, 15u)], vec3<i32>(u_input.d, -73732i, var_0.a)))), (-1173f >= _wgslsmith_f_op_f32(floor(-1461f))) && global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x) >> (vec4<u32>(global0[_wgslsmith_index_u32(74539u, 26u)], 15760u, 55470u, 38376u) % vec4<u32>(32u)), vec4<u32>(u_input.c.x, u_input.c.x, 1u, global0[_wgslsmith_index_u32(64106u, 26u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11787u, 26u)], 28u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(79024u, 26u)], 28u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 1u)], true, false, true), true)), vec4<u32>(global0[_wgslsmith_index_u32(15586u, 26u)] & global0[_wgslsmith_index_u32(0u, 26u)], u_input.e.x ^ global0[_wgslsmith_index_u32(35686u, 26u)], 4294967295u, 103659u)), 28u)], _wgslsmith_f_op_f32(abs(1000f)), 1i);
    let var_2 = Struct_2(u_input.e, func_1(5747u, u_input.b.xxy).b, ~u_input.c.yx);
    var var_3 = false || any(vec4<bool>(func_4(Struct_2(u_input.c.yz, var_2.b, vec2<u32>(1u, 29788u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(249f, var_1.c, var_2.b.c)), _wgslsmith_f_op_f32(exp2(var_2.b.c))), false, true, func_4(var_2, vec3<f32>(var_1.c, var_1.c, -211f), var_1.c) & false));
    let var_4 = func_3().x;
    global4 = array<vec2<bool>, 7>();
    let var_5 = vec2<bool>(!any(!vec4<bool>(true, global1[_wgslsmith_index_u32(5736u, 28u)], global1[_wgslsmith_index_u32(var_2.c.x, 28u)], global3[_wgslsmith_index_u32(46152u, 1u)])), false);
    var var_6 = _wgslsmith_dot_vec3_i32(~(-func_3().yxz), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(global2[_wgslsmith_index_u32(~(~5424u), 15u)], -_wgslsmith_mult_vec3_i32(vec3<i32>(-84000i, var_4, 43400i), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.a.x, 26u)], 15u)])), global2[_wgslsmith_index_u32(firstLeadingBit(1u), 15u)]));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(var_2.b.a, var_2.b.a, -(~var_1.d)), _wgslsmith_clamp_vec3_i32(global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(var_2.a.x, 15u)], global2[_wgslsmith_index_u32(var_2.c.x, 15u)]), !vec3<bool>(false, !var_5.x, u_input.c.x < 47515u)), ~_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, 42385i) & -vec2<i32>(0i, u_input.a.x), ~(~vec2<i32>(var_0.a, var_1.a))), vec4<u32>(1u, ~u_input.c.x, u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)] | _wgslsmith_sub_u32(42269u, global0[_wgslsmith_index_u32(var_2.c.x, 26u)]), 26u)] << (~reverseBits(var_2.a.x) % 32u)), u_input.c);
}

