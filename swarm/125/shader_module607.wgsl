struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(134157u, 4891u), vec2<u32>(0u, 25336u), vec2<u32>(0u, 4294967295u), vec2<u32>(110339u, 1u), vec2<u32>(52459u, 10680u), vec2<u32>(4294967295u, 1u), vec2<u32>(25811u, 22734u), vec2<u32>(1u, 31915u), vec2<u32>(110384u, 1u), vec2<u32>(0u, 59382u), vec2<u32>(47552u, 0u), vec2<u32>(13453u, 136243u), vec2<u32>(4294967295u, 51187u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4981u), vec2<u32>(51804u, 31799u), vec2<u32>(26196u, 1u), vec2<u32>(0u, 1u), vec2<u32>(5927u, 29754u), vec2<u32>(37467u, 116458u), vec2<u32>(1u, 1u));

var<private> global1: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(-21266i, -14399i), vec2<i32>(0i, 2147483647i), vec2<i32>(10046i, 7355i), vec2<i32>(-42612i, 18960i), vec2<i32>(49225i, 1i), vec2<i32>(3045i, 1i), vec2<i32>(27514i, -10168i), vec2<i32>(-41750i, 29681i), vec2<i32>(-22251i, 1782i), vec2<i32>(-14132i, 0i), vec2<i32>(-31515i, -14928i), vec2<i32>(34971i, -1i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1876i, -16332i));

var<private> global2: array<f32, 31> = array<f32, 31>(-599f, 1247f, -1068f, -1141f, -1091f, 533f, -863f, -913f, 1000f, 1102f, 1731f, 1000f, -1189f, -1500f, 1041f, -1139f, -1362f, -921f, 519f, -596f, 1217f, -1089f, -461f, 2036f, -1357f, 266f, -386f, 1265f, 1077f, -937f, 289f);

var<private> global3: array<vec3<i32>, 9>;

var<private> global4: array<vec2<i32>, 23>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_1(true, -29374i, any(vec2<bool>(true, true)), select(all(vec2<bool>(true, true)), true, -max(u_input.d, u_input.d) == 49942i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1612f, global2[_wgslsmith_index_u32(87325u, 31u)])) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2023f, global2[_wgslsmith_index_u32(1u, 31u)]), vec2<f32>(global2[_wgslsmith_index_u32(u_input.c, 31u)], 1475f)))), vec2<f32>(_wgslsmith_f_op_f32(-1000f * global2[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_f_op_f32(-540f * global2[_wgslsmith_index_u32(u_input.c, 31u)])), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b, 31u)], 635f) * vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global2[_wgslsmith_index_u32(1u, 31u)])), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-298f, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]))), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))))))));
    var var_1 = Struct_2(var_0);
    let var_2 = vec4<bool>(false, var_1.a.c, false, 44822u != ~(~(u_input.c & 0u)));
    let var_3 = var_2.ww;
    var var_4 = Struct_2(Struct_1(!var_2.x && false, var_0.b | (select(2147483647i, 1i, true) >> (firstLeadingBit(u_input.b) % 32u)), true, true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1003f + 622f) - _wgslsmith_f_op_f32(-657f - var_1.a.e.x)), var_1.a.e.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(var_4.a.e.x, 882f), var_4.a.e))), var_1.a.e))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(arg_1.x, _wgslsmith_mod_i32(min(-3028i, -68370i), u_input.d), arg_1.x, all(arg_1), _wgslsmith_f_op_vec2_f32(func_3())));
    var var_1 = var_0;
    global2 = array<f32, 31>();
    var_1 = var_0;
    global4 = array<vec2<i32>, 23>();
    return var_0;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 31u)], global2[_wgslsmith_index_u32(~51621u, 31u)], _wgslsmith_f_op_f32(f32(-1f) * -748f), 876f)));
    var var_1 = Struct_3(vec3<u32>(~abs(_wgslsmith_mod_u32(u_input.a.x, 1u)), 0u, 12088u));
    global4 = array<vec2<i32>, 23>();
    let var_2 = func_2(var_1.a, !select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-168f))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -760f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(32483u, 31u)]), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-var_0.x)));
    var var_3 = func_2(var_1.a, select(!(!(!vec2<bool>(var_2.a.c, false))), vec2<bool>(!var_2.a.c, false), vec2<bool>(true, true || all(vec3<bool>(var_2.a.c, var_2.a.d, var_2.a.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-602f, global2[_wgslsmith_index_u32(4294967295u, 31u)], 611f, global2[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(0u, 31u)], 851f, 1012f, -1589f), vec4<f32>(-224f, 2429f, global2[_wgslsmith_index_u32(4294967295u, 31u)], 734f))))))).a;
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec3<u32>(_wgslsmith_add_u32(u_input.b, ~(~u_input.c)), u_input.b, func_1()));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(~(vec4<i32>(-21511i, u_input.d, 51058i, -2147483647i) & vec4<i32>(2147483647i, u_input.d, 2147483647i, u_input.d))), firstLeadingBit(countOneBits(vec4<i32>(0i, u_input.d, 31178i, u_input.d))) >> (countOneBits(vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x)) % vec4<u32>(32u))), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(select(-2147483647i, u_input.d, false), 10759i, _wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(7051u, 9u)], global3[_wgslsmith_index_u32(1u, 9u)]), -5466i)), max(vec4<i32>(u_input.d, u_input.d << (var_0.a.x % 32u), -2147483647i, u_input.d), select(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d) << (vec4<u32>(u_input.c, u_input.a.x, 1u, 40405u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, 7664i, u_input.d, u_input.d) & vec4<i32>(5997i, 43983i, u_input.d, -33421i), u_input.d < u_input.d))));
    var var_2 = _wgslsmith_div_i32(u_input.d, var_1);
    var var_3 = ~u_input.c;
    var var_4 = Struct_2(Struct_1(select(true, !all(vec3<bool>(true, true, true)), !(-270f < global2[_wgslsmith_index_u32(var_0.a.x, 31u)])), ~min(u_input.d | var_1, var_1), (i32(-1i) * -var_1) <= _wgslsmith_clamp_i32(54631i, _wgslsmith_clamp_i32(-1i, var_1, u_input.d), -2147483647i), all(vec2<bool>(true, true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.a.x, 31u)])), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.a.x, 1u), 31u)])));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1327f) + _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3()).x, global2[_wgslsmith_index_u32(0u, 31u)]))));
    var_4 = Struct_2(func_2(var_0.a, vec2<bool>(all(vec4<bool>(var_4.a.d, var_4.a.a, false, true)), false), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(654f, -560f, 409f, -198f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(456f, global2[_wgslsmith_index_u32(1u, 31u)], 127f, var_4.a.e.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(3483f, global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(u_input.c, 31u)], var_4.a.e.x)))))).a);
    var_0 = Struct_3(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1, vec4<i32>(-9737i, ~abs(u_input.d), ~_wgslsmith_add_i32(max(var_4.a.b, u_input.d), max(u_input.d, -1i)), var_1));
}

