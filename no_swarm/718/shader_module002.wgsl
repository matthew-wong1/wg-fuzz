struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: array<i32, 12> = array<i32, 12>(20503i, 0i, 0i, i32(-2147483648), 1i, -25679i, 1i, 0i, 37315i, -26008i, 6518i, i32(-2147483648));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -717f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(594f, -970f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(285f - -296f), _wgslsmith_f_op_f32(abs(-1000f))) - _wgslsmith_f_op_f32(f32(-1f) * -1384f))));
    let var_1 = Struct_3(var_0, u_input.a, i32(-1i) * -u_input.c, select(select(vec4<bool>(false, true, any(vec4<bool>(true, true, false, true)), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), var_0 != 3079f), true), vec4<bool>(false | any(vec2<bool>(true, true)), all(vec2<bool>(false, true)), true, any(vec2<bool>(true, true))), all(vec3<bool>(true, true, all(vec3<bool>(false, true, true))))), Struct_2(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b | u_input.b), _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -1i, 3250i, u_input.b.x), vec4<i32>(6827i, global1[_wgslsmith_index_u32(42121u, 12u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43795u, 5u)], 12u)], 22472i) | vec4<i32>(0i, 0i, 6374i, u_input.a))), select(~(vec3<i32>(global1[_wgslsmith_index_u32(u_input.e, 12u)], 31990i, 0i) & vec3<i32>(u_input.d.x, 1i, 1i)), u_input.b, !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), !vec2<bool>(all(vec4<bool>(true, true, true, true)), true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) - -108f), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, 484f, -1000f), vec3<f32>(190f, var_0, 297f)))));
    let var_2 = _wgslsmith_div_vec4_i32(((vec4<i32>(var_1.e.a, -5576i, 41437i, var_1.c) | (vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(142614u, 12u)], -47873i, u_input.c) | vec4<i32>(u_input.d.x, -2147483647i, u_input.a, 0i))) << (vec4<u32>(25954u, _wgslsmith_sub_u32(u_input.e, 68310u), min(global0[_wgslsmith_index_u32(5502u, 5u)], u_input.e), 42144u) % vec4<u32>(32u))) | (~(vec4<i32>(var_1.e.a, global1[_wgslsmith_index_u32(u_input.e, 12u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68480u, 5u)], 5u)], 12u)], u_input.a) | vec4<i32>(var_1.b, 0i, 0i, var_1.c)) >> (vec4<u32>(select(36179u, global0[_wgslsmith_index_u32(u_input.e, 5u)], false), firstTrailingBit(0u), u_input.e, 1u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.e, 12u)], -1i, -5458i), vec4<i32>(var_1.c, u_input.d.x, u_input.b.x, 30843i), var_1.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.c, -7333i, var_1.e.b.x, 35001i), vec4<i32>(u_input.d.x, var_1.c, 0i, -2147483647i))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(0i, var_1.b, 0i, -9153i), vec4<i32>(0i, -17625i, var_1.b, global1[_wgslsmith_index_u32(42982u, 12u)]), false), select(vec4<i32>(0i, u_input.a, u_input.b.x, global1[_wgslsmith_index_u32(u_input.e, 12u)]), vec4<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 5u)], 12u)], u_input.b.x, var_1.c, -39691i), true), abs(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -1i)))), vec4<i32>(var_1.e.b.x, u_input.b.x, -(i32(-1i) * -1452i), global1[_wgslsmith_index_u32(1u, 12u)])));
    var var_3 = var_1.e;
    global1 = array<i32, 12>();
    return ~(i32(-1i) * -28572i);
}

fn func_2(arg_0: u32, arg_1: i32) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(132f, -422f)), _wgslsmith_f_op_f32(step(-834f, 1872f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -374f), _wgslsmith_f_op_f32(f32(-1f) * -225f)), true))), func_3(), _wgslsmith_dot_vec3_i32(vec3<i32>(-8145i, -2147483647i, _wgslsmith_clamp_i32(-46049i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 12u)], -60563i)) ^ _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(49952i, -71786i, -1i), vec3<i32>(u_input.d.x, 8798i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21748u, 5u)], 12u)])), u_input.b), select(select(vec4<bool>(true, true, all(vec4<bool>(true, true, false, true)), -2147483647i != u_input.d.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, global0[_wgslsmith_index_u32(12295u, 5u)] < u_input.e, false, all(vec4<bool>(true, true, false, false)))), !vec4<bool>(true, true, all(vec2<bool>(false, true)), true), firstTrailingBit(~4023i) < _wgslsmith_clamp_i32(-33163i, ~arg_1, reverseBits(global1[_wgslsmith_index_u32(54697u, 12u)]))), Struct_2(u_input.b.x, -select(vec3<i32>(arg_1, arg_1, 7123i) ^ u_input.b, u_input.b, any(vec3<bool>(false, false, false))), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-109f)) * _wgslsmith_div_f32(-480f, 708f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-361f, 606f, 1724f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-479f, 807f, 3512f)))))));
    let var_1 = u_input.e;
    global1 = array<i32, 12>();
    var var_2 = var_0.e.d;
    let var_3 = -501f;
    return false;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec2<f32>, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = select(select(!(!select(vec3<bool>(false, true, arg_3.x), vec3<bool>(false, arg_3.x, arg_3.x), vec3<bool>(true, false, true))), vec3<bool>(true, 0i > ~u_input.d.x, false), select(!vec3<bool>(false, arg_3.x, true), vec3<bool>(!arg_3.x, true, arg_3.x), vec3<bool>(true, func_2(u_input.e, -1i), u_input.a >= 1i))), !select(!vec3<bool>(arg_3.x, arg_3.x, arg_3.x), vec3<bool>(true, false, any(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, true))), select(select(vec3<bool>(false, arg_3.x, true), vec3<bool>(arg_3.x, arg_3.x, false), true), select(vec3<bool>(false, false, true), vec3<bool>(arg_3.x, true, true), vec3<bool>(false, true, arg_3.x)), !arg_3.x)), !vec3<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 34454u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]), vec3<u32>(4294967295u, u_input.e, u_input.e)) == global0[_wgslsmith_index_u32(~u_input.e, 5u)], any(vec2<bool>(true, true)), func_2(u_input.e, u_input.c)));
    global0 = array<u32, 5>();
    var var_1 = vec4<f32>(arg_0, 217f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, 167f)) - _wgslsmith_f_op_f32(step(arg_0, -129f))) + _wgslsmith_f_op_f32(152f + 1729f)) + _wgslsmith_div_f32(arg_0, arg_0)));
    var var_2 = -184f;
    var_0 = !(!vec3<bool>(select(all(vec2<bool>(false, true)), var_0.x, true), arg_3.x, var_0.x));
    return Struct_2(_wgslsmith_div_i32(reverseBits(arg_1), arg_1) << (~(~(u_input.e << (u_input.e % 32u))) % 32u), vec3<i32>(arg_1, -1i, firstLeadingBit(_wgslsmith_add_i32(0i, -1i))) & min(reverseBits(vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.e, 12u)], 0i)), min(~u_input.b, u_input.b)), arg_3, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-230f + -1872f))), var_1.xwz));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -429f);
    var var_1 = func_4(_wgslsmith_f_op_f32(trunc(-1607f)), select(i32(-1i) * -87437i, _wgslsmith_mod_i32(select(~u_input.b.x, 0i, any(vec2<bool>(false, true))), global1[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(u_input.e, 5u)]), 12u)]), true != func_2(_wgslsmith_mult_u32(u_input.e, 54057u), arg_0)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -621f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, 769f), vec2<f32>(var_0, var_0)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -543f)))))), vec2<bool>(false, var_0 < var_0));
    global0 = array<u32, 5>();
    let var_2 = Struct_3(268f, func_3(), 1i, select(vec4<bool>(var_1.c.x, true, (u_input.e | 18696u) <= min(u_input.e, 3520u), var_1.c.x), select(select(!vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, true), !vec4<bool>(var_1.c.x, true, true, false), true), vec4<bool>(var_1.c.x, all(vec3<bool>(var_1.c.x, var_1.c.x, false)), var_1.c.x, var_1.c.x), var_1.c.x || (var_1.c.x || var_1.c.x)), false), Struct_2(var_1.b.x, _wgslsmith_mult_vec3_i32(~_wgslsmith_clamp_vec3_i32(var_1.b, vec3<i32>(global1[_wgslsmith_index_u32(40353u, 12u)], -19663i, 10842i), vec3<i32>(u_input.b.x, -2147483647i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 5u)], 12u)])), var_1.b), vec2<bool>(select(4294967295u >= u_input.e, var_1.c.x, true), any(select(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, true), vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, true), vec4<bool>(var_1.c.x, false, var_1.c.x, false)))), var_1.d));
    var var_3 = vec4<u32>(_wgslsmith_div_u32(countOneBits(_wgslsmith_clamp_u32(~16478u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 0u), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 5u)], 2506u))), countOneBits(~(~u_input.e))), ~u_input.e, ~1348u, _wgslsmith_mult_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 11162u, u_input.e, u_input.e), vec4<u32>(49394u, 18708u, u_input.e, u_input.e))), _wgslsmith_dot_vec2_u32(min(vec2<u32>(126631u, global0[_wgslsmith_index_u32(1u, 5u)]), vec2<u32>(global0[_wgslsmith_index_u32(0u, 5u)], 47164u)), firstLeadingBit(vec2<u32>(4294967295u, u_input.e)))) ^ ~4294967295u);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_2.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.b.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.b.x) + _wgslsmith_f_op_f32(-var_1.d.a))), var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-336f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 12>();
    let var_0 = Struct_2(-_wgslsmith_clamp_i32(~2147483647i << (u_input.e % 32u), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 60291u, u_input.e, 4294967295u), vec4<u32>(4294967295u, 53031u, 1u, 0u)), 12u)], select(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45646u, 5u)], 12u)], select(1i, -1i, true), true)), ~(-(~u_input.b)), vec2<bool>(true, true), func_1(-(-1i << (_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], u_input.e) % 32u))));
    global0 = array<u32, 5>();
    var var_1 = abs(vec2<u32>(_wgslsmith_mod_u32(u_input.e, ~_wgslsmith_dot_vec2_u32(vec2<u32>(41856u, 0u), vec2<u32>(u_input.e, 0u))), firstTrailingBit(u_input.e)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(var_0.d.b.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(770f, var_0.d.b.x)), var_1.x <= 0u)))) - var_0.d.b.yy));
    var var_3 = var_0;
    let var_4 = var_0.c.x;
    var var_5 = Struct_3(3118f, ~(-_wgslsmith_sub_i32(var_3.a, max(var_3.b.x, u_input.c))), ~(countOneBits(61457i) | (var_3.a | var_0.b.x)) & ~firstLeadingBit(0i), vec4<bool>(var_0.b.x < abs(32441i), all(!vec4<bool>(var_4, var_3.c.x, var_0.c.x, var_4)), all(vec3<bool>(var_4, all(vec3<bool>(var_4, true, false)), any(vec4<bool>(false, true, var_4, var_4)))), func_4(var_3.d.a, _wgslsmith_div_i32(-u_input.a, _wgslsmith_mod_i32(-2147483647i, -28537i)), _wgslsmith_div_vec2_f32(var_3.d.b.yy, var_0.d.b.zz), vec2<bool>(var_3.c.x, true)).c.x), func_4(func_1(-2595i).a, 0i, vec2<f32>(var_2.x, -140f), func_4(336f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 5u)] & global0[_wgslsmith_index_u32(var_1.x, 5u)], 5u)] & _wgslsmith_mod_u32(1u, u_input.e), 12u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_3.d.b.x))), !var_3.c).c));
    global1 = array<i32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, 143f, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(ceil(-1320f))), var_0.d.b.x))), -24381i, _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_3.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -995f)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(var_5.e.d.b.zx))))))), select(vec2<u32>(~(~global0[_wgslsmith_index_u32(71758u, 5u)]), var_1.x), ~(~countOneBits(vec2<u32>(11641u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)]))), select(vec2<bool>(!var_0.c.x, true), vec2<bool>(true, true), vec2<bool>(var_3.c.x == var_4, true))));
}

