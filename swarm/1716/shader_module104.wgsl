struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: bool,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(2147483647i, 0i, 88318i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, 1i, 24171i), false, vec3<f32>(829f, -295f, -118f), 1530f);

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<bool, 26> = array<bool, 26>(true, false, false, false, true, true, true, true, true, false, false, false, true, true, true, false, true, true, false, true, true, true, true, false, true, true);

var<private> global3: array<i32, 9> = array<i32, 9>(-8597i, i32(-2147483648), 1i, 0i, -26611i, 30849i, 18337i, -10803i, 1i);

var<private> global4: array<f32, 16> = array<f32, 16>(-158f, -387f, -537f, 176f, 861f, 1770f, 276f, -441f, 197f, -1000f, 1107f, -185f, -1511f, 1065f, -451f, -1420f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>) -> u32 {
    global2 = array<bool, 26>();
    var var_0 = Struct_1(-(global0.a ^ vec4<i32>(global0.b.x, global0.a.x, u_input.b.x ^ -2147483647i, -arg_0.b.x)), max(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(0i, u_input.b.x, arg_0.b.x, 1i)), arg_0.a), -global0.a) & firstLeadingBit(arg_0.a), all(!vec4<bool>(arg_0.c, global2[_wgslsmith_index_u32(arg_2.x ^ arg_2.x, 26u)], global2[_wgslsmith_index_u32(~arg_2.x, 26u)], global2[_wgslsmith_index_u32(23693u, 26u)])), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(arg_0.d)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-655f)))));
    let var_1 = -_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(~u_input.e, _wgslsmith_add_i32(arg_0.a.x, var_0.b.x)), _wgslsmith_clamp_i32(0i, max(arg_0.b.x, 0i), var_0.b.x)), -arg_0.a.x);
    var var_2 = arg_0;
    var var_3 = u_input.b.zzz;
    return u_input.c.x;
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mult_u32(u_input.a, ~56261u) ^ _wgslsmith_sub_u32(3168u, ~4294967295u);
    var var_1 = arg_0;
    let var_2 = arg_0;
    var_0 = ~0u;
    var_1 = arg_0;
    return _wgslsmith_dot_vec3_u32(firstTrailingBit(~(vec3<u32>(u_input.a, u_input.c.x, u_input.a) | _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 15989u, 4294967295u), vec3<u32>(16989u, u_input.a, 1u)))), vec3<u32>(u_input.a, 4294967295u ^ u_input.c.x, func_3(global1[_wgslsmith_index_u32(0u | u_input.a, 29u)], 395f, _wgslsmith_div_vec3_u32(vec3<u32>(43958u, 4294967295u, u_input.c.x), vec3<u32>(u_input.c.x, 65393u, u_input.a))) << (43825u % 32u)));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    global0 = Struct_1(~_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-5281i, -39989i, -2147483647i, 2147483647i), global0.a) >> (min(vec4<u32>(u_input.c.x, u_input.c.x, 1u, 26390u), vec4<u32>(4294967295u, 0u, 5795u, 15154u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(global3[_wgslsmith_index_u32(83849u, 9u)], global0.a.x, global0.b.x, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -7384i, arg_0.x, 52810i), vec4<i32>(75452i, arg_0.x, 15823i, -3750i)))), vec4<i32>(-9096i, arg_0.x, countOneBits(~u_input.e), ~_wgslsmith_sub_i32(arg_0.x, -25063i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 16u)] + global4[_wgslsmith_index_u32(4294967295u, 16u)])))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.c.x, 16u)]) + _wgslsmith_f_op_f32(-global0.e))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global0.d)))))), 621f);
    var var_0 = countOneBits(u_input.a);
    global0 = global1[_wgslsmith_index_u32(func_4(global1[_wgslsmith_index_u32(firstLeadingBit(func_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 5125u, u_input.a, u_input.c.x), ~vec4<u32>(24072u, u_input.a, u_input.a, u_input.a)), 29u)], global4[_wgslsmith_index_u32(1u, 16u)], firstTrailingBit(~vec3<u32>(90328u, 13644u, 1u)))), 29u)]), 29u)];
    global1 = array<Struct_1, 29>();
    var var_1 = _wgslsmith_mod_vec4_i32(select(-_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(global0.a, vec4<i32>(arg_0.x, global0.a.x, u_input.b.x, arg_0.x)), reverseBits(vec4<i32>(global0.b.x, 2147483647i, global0.b.x, u_input.b.x))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.d, global0.a.x), global3[_wgslsmith_index_u32(countOneBits(u_input.c.x), 9u)], global3[_wgslsmith_index_u32(min(25983u, u_input.c.x), 9u)], global0.a.x), select(global0.a, vec4<i32>(global0.b.x, global3[_wgslsmith_index_u32(u_input.a, 9u)], global0.a.x, arg_0.x) ^ vec4<i32>(-1i, 19041i, -2147483647i, -69659i), true)), false), max(vec4<i32>(firstLeadingBit(~(-2147483647i)), _wgslsmith_clamp_i32(~u_input.d, 1i, 13306i | u_input.d), -(~(-2147483647i)), 1520i), select(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(66960u, 9u)], -10231i, 1i, u_input.b.x), vec4<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 9u)], 11608i, arg_0.x, -1i)), vec4<i32>(4215i, global3[_wgslsmith_index_u32(u_input.c.x, 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)], arg_0.x) ^ u_input.b), global0.b, global0.c != true)));
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_div_vec2_u32(u_input.c, ~vec2<u32>(u_input.a, u_input.c.x))), 4294967295u);
}

fn func_1() -> vec2<u32> {
    var var_0 = 82742u;
    var var_1 = u_input.b.xx;
    let var_2 = select(vec3<bool>(true, true, true), !(!vec3<bool>(global0.c != false, !global2[_wgslsmith_index_u32(u_input.c.x, 26u)], all(vec2<bool>(true, false)))), vec3<bool>(global0.c, select(global0.c, !(true | global2[_wgslsmith_index_u32(u_input.c.x, 26u)]), any(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global0.c, false, global0.c))), global2[_wgslsmith_index_u32(func_2(vec2<i32>(abs(u_input.b.x), global3[_wgslsmith_index_u32(u_input.c.x, 9u)])), 26u)]));
    let var_3 = !global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.a, ~u_input.c.x), 26u)];
    let var_4 = ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.c, select(u_input.c, vec2<u32>(u_input.c.x, u_input.a), false)), ~(~u_input.c)));
    return vec2<u32>(~abs(~4294967295u), func_2(global0.a.zy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.c, _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c)), ~func_1());
    var var_1 = _wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(var_0.x, 16u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e), -1024f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1352f) - global4[_wgslsmith_index_u32(~u_input.c.x, 16u)]))));
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(~(~select(1u, 95146u, global0.c)), ~4294967295u & _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(1u, var_0.x)), vec2<u32>(var_0.x, var_0.x))), u_input.c);
    var_2 = select(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, ~var_2.x), u_input.c) >> ((min(u_input.c, u_input.c) >> (countOneBits(vec2<u32>(var_2.x, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u)), ~u_input.c, global0.c);
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.wy, 0u, global0.d.xx);
}

