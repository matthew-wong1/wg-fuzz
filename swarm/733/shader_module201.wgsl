struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(28222i, 1i);

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(900f, -1000f, -460f, -2062f), vec4<f32>(841f, 516f, 613f, 2142f), vec4<f32>(148f, -698f, 688f, -752f), vec4<f32>(-241f, -710f, 317f, 440f), vec4<f32>(-201f, 256f, 1000f, -220f));

var<private> global3: array<u32, 21>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> vec3<bool> {
    var var_0 = ~firstTrailingBit(978i) >> (_wgslsmith_add_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], arg_0.a.a.d) % 32u);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1096f * 1474f) - _wgslsmith_f_op_f32(max(-1187f, 1153f))) + arg_0.a.b.x)))));
    var_0 = reverseBits(-firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.wy, ~u_input.b.zz), 2u)]));
    let var_2 = vec4<u32>(arg_1, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~abs(arg_1), min(_wgslsmith_dot_vec2_u32(vec2<u32>(47051u, u_input.b.x) >> (u_input.b.wx % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global3[_wgslsmith_index_u32(arg_1, 21u)], u_input.b.x))), abs(_wgslsmith_mod_u32(u_input.b.x, 12121u)))), 21u)], arg_1, _wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(~max(global3[_wgslsmith_index_u32(0u, 21u)], 86540u), 225u)));
    let var_3 = 39059u;
    return select(select(!arg_0.b, !vec3<bool>(true, arg_0.b.x, global3[_wgslsmith_index_u32(arg_0.a.a.c, 21u)] != u_input.a), false), arg_0.b, true);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(-933f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-110f, -284f, -1773f))), _wgslsmith_div_vec3_f32(vec3<f32>(-504f, -213f, -404f), vec3<f32>(-1532f, 1738f, -1280f))), ~45614u, select(global3[_wgslsmith_index_u32(~u_input.a, 21u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(94043u, 21u)], 21u)]), 21u)], false), vec3<i32>(_wgslsmith_mod_i32(12244i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 21u)], 21u)], 2u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(11298u, 2u)], -28437i, -964i), vec3<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12458u, 21u)], 21u)], 2u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 2u)], 74091i)), -14011i)), vec3<f32>(1f, 1f, 1f)), Struct_2(Struct_1(-1000f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(168f, 1301f, -1955f), vec3<f32>(-1138f, 1380f, -490f))), ~57733u, max(u_input.b.x, ~u_input.b.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], -1i, global0[_wgslsmith_index_u32(127709u, 2u)]), vec3<i32>(11075i, -12061i, global0[_wgslsmith_index_u32(11623u, 2u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(17061u, 2u)])) & countOneBits(vec3<i32>(-1i, global0[_wgslsmith_index_u32(72771u, 2u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31829u, 21u)], 2u)]))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f)), _wgslsmith_f_op_f32(f32(-1f) * -519f), 1f)), select(select(!(!vec3<bool>(false, global1.x, false)), !func_3(Struct_4(Struct_2(Struct_1(-1156f, vec3<f32>(1377f, -794f, -1726f), global3[_wgslsmith_index_u32(1u, 21u)], 41744u, vec3<i32>(global0[_wgslsmith_index_u32(2612u, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)])), vec3<f32>(2324f, -211f, -1637f)), vec3<bool>(global1.x, global1.x, global1.x)), 0u), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(false, global1.x, false), global1.x)), select(vec3<bool>(select(global1.x, global1.x, false), global1.x, false), select(vec3<bool>(true, true, true), !vec3<bool>(false, true, global1.x), true), true), !(!select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, false), global1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1000f) + _wgslsmith_f_op_f32(min(228f, 1041f))))))), vec3<bool>(all(func_3(Struct_4(Struct_2(Struct_1(-1799f, vec3<f32>(-1393f, 143f, -678f), 0u, 45416u, vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(74798u, 2u)], -2147483647i)), vec3<f32>(-269f, 413f, 950f)), vec3<bool>(global1.x, true, global1.x)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 21u)], 21u)]).yz) & global1.x, select(true, global1.x, false), !all(vec3<bool>(false, global1.x, global1.x))));
    var var_1 = vec4<i32>(_wgslsmith_mult_i32(-50820i, 1i), _wgslsmith_mod_i32(firstLeadingBit(-4793i), abs(global0[_wgslsmith_index_u32(~u_input.a, 2u)])) << (((firstLeadingBit(var_0.a.a.d) ^ var_0.b.a.d) ^ _wgslsmith_dot_vec3_u32(u_input.b.wxz, ~vec3<u32>(u_input.b.x, var_0.b.a.c, global3[_wgslsmith_index_u32(30608u, 21u)]))) % 32u), abs(0i), _wgslsmith_div_i32(0i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(4294967295u, 21u)] & var_0.a.a.d, 2u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 2u)], -2147483647i, -8466i, -1i), vec4<i32>(var_0.b.a.e.x, var_0.b.a.e.x, -2099i, var_0.b.a.e.x)))));
    global2 = array<vec4<f32>, 5>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -374f);
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(304f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(344f, var_0.b.b.x))))))), _wgslsmith_f_op_f32(-var_0.a.b.x), all(select(vec4<bool>(true, true, false, !var_0.e.x), !vec4<bool>(false, var_0.e.x, global1.x, true), !(!vec4<bool>(true, false, false, var_0.e.x))))));
    return Struct_2(Struct_1(-330f, var_0.a.b, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(min(~global3[_wgslsmith_index_u32(50340u, 21u)], var_0.b.a.c), 21u)], reverseBits(global3[_wgslsmith_index_u32(0u, 21u)])), ~reverseBits(~1u), vec3<i32>(global0[_wgslsmith_index_u32(~(var_0.b.a.d >> (var_0.b.a.d % 32u)), 2u)], -var_0.a.a.e.x, var_0.b.a.e.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -824f, var_0.a.a.a) * var_0.b.a.b))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.a.b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1017f, var_0.b.b.x, -1537f))) - vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.d)), var_0.a.b.x, -3062f))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2) -> vec4<u32> {
    global0 = array<i32, 2>();
    global1 = vec2<bool>(arg_1.x, !((func_2().a.e.x != (-2147483647i ^ global0[_wgslsmith_index_u32(arg_0.c, 2u)])) & all(arg_1.xzw)));
    let var_0 = u_input.b.xzw;
    global3 = array<u32, 21>();
    let var_1 = func_2();
    return u_input.b;
}

fn func_1() -> bool {
    global2 = array<vec4<f32>, 5>();
    global2 = array<vec4<f32>, 5>();
    global0 = array<i32, 2>();
    var var_0 = Struct_1(-487f, vec3<f32>(499f, 231f, 708f), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(18083u, ~24399u, 4294967295u, 79044u)), func_4(Struct_1(_wgslsmith_div_f32(391f, 1245f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1110f, -508f, 859f)), 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)] | u_input.a, 21u)], -vec3<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47381u, 21u)], 2u)])), vec4<bool>(true, false, u_input.b.x != u_input.a, true), func_2())), ~max(1u, func_4(func_2().a, select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(true, true, false, true), false), Struct_2(Struct_1(663f, vec3<f32>(-1149f, 601f, 286f), global3[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(u_input.a, 21u)], vec3<i32>(0i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 2u)], -72161i)), vec3<f32>(-265f, 331f, -1049f))).x), select(abs(-vec3<i32>(-74539i, 2147483647i, -1i)), firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(66586u, 2u)], 1i) & vec3<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(88788u, 21u)], 2u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 2u)], global0[_wgslsmith_index_u32(1u, 2u)]), min(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 2u)], 10371i), vec3<i32>(-2147483647i, 0i, -2147483647i)))), false || global1.x));
    let var_1 = abs(-_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(43550i, global0[_wgslsmith_index_u32(0u, 2u)], 0i, -1i), vec4<i32>(var_0.e.x, var_0.e.x, var_0.e.x, global0[_wgslsmith_index_u32(37128u, 2u)]), vec4<i32>(var_0.e.x, var_0.e.x, 0i, global0[_wgslsmith_index_u32(0u, 2u)])), max(vec4<i32>(global0[_wgslsmith_index_u32(var_0.d, 2u)], -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 2u)], var_0.e.x), vec4<i32>(1i, 6575i, 9882i, -2147483647i))), ~_wgslsmith_div_vec4_i32(vec4<i32>(10786i, 37602i, 2147483647i, var_0.e.x), vec4<i32>(global0[_wgslsmith_index_u32(56675u, 2u)], 0i, -1i, var_0.e.x))));
    return all(!vec2<bool>(global1.x, all(vec3<bool>(false, global1.x, global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(func_1(), true, false, firstTrailingBit(15182i) != select(-min(1i, global0[_wgslsmith_index_u32(26586u, 2u)]), 0i, true));
    global1 = select(func_3(Struct_4(Struct_2(Struct_1(189f, vec3<f32>(322f, -512f, -1441f), 0u, 1u, vec3<i32>(global0[_wgslsmith_index_u32(32918u, 2u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 21u)], 21u)], 2u)], 18071i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(885f, 193f, 144f))), vec3<bool>(any(vec2<bool>(var_0.x, var_0.x)), true, false)), ~u_input.a).xx, var_0.xw, true & (_wgslsmith_sub_i32(-32460i, -1i ^ global0[_wgslsmith_index_u32(12247u, 2u)]) != global0[_wgslsmith_index_u32(u_input.a, 2u)]));
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    let var_1 = Struct_4(Struct_2(Struct_1(-2307f, _wgslsmith_div_vec3_f32(vec3<f32>(113f, -449f, -181f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(301f, 293f, 1000f))), ~u_input.a, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(1u, 21u)] ^ u_input.a, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(u_input.a, 21u)], 21u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(22402u, 21u)], 2u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], 2u)]) << (u_input.b.zwx % vec3<u32>(32u)), ~vec3<i32>(-14459i, -33496i, global0[_wgslsmith_index_u32(0u, 2u)]))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -227f), _wgslsmith_f_op_f32(-1133f - -1000f), _wgslsmith_f_op_f32(floor(165f))), vec3<f32>(_wgslsmith_div_f32(278f, -1652f), -1000f, _wgslsmith_f_op_f32(-1843f * 852f)))), select(func_3(Struct_4(func_2(), vec3<bool>(false, global1.x, global1.x)), ~(~77069u)), func_3(Struct_4(Struct_2(Struct_1(-1000f, vec3<f32>(1000f, 2318f, 1336f), 1u, 1486u, vec3<i32>(global0[_wgslsmith_index_u32(54104u, 2u)], 2147483647i, global0[_wgslsmith_index_u32(41181u, 2u)])), vec3<f32>(259f, 974f, -797f)), vec3<bool>(global1.x, global1.x, global1.x)), 21227u), !any(!var_0.yz)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~var_1.a.a.c, ~min(global3[_wgslsmith_index_u32(var_1.a.a.c, 21u)], 4294967295u) >> ((1u << (firstLeadingBit(4294967295u) % 32u)) % 32u), _wgslsmith_mod_u32(1u, ~0u), 1u));
}

