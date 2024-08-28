struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), -1i);

var<private> global2: array<i32, 30> = array<i32, 30>(-26549i, 2147483647i, 21025i, 0i, 7918i, 0i, 2147483647i, 3796i, 49366i, -1i, 15528i, 2147483647i, 26524i, -16517i, 13228i, -28620i, 28162i, -4183i, 0i, -7674i, -183i, i32(-2147483648), i32(-2147483648), -82083i, 51492i, i32(-2147483648), -1i, 2147483647i, 2147483647i, i32(-2147483648));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: vec3<u32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-601f, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(682f - arg_0))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1615f * -1141f)))), arg_0));
}

fn func_2(arg_0: i32) -> u32 {
    global0 = array<u32, 8>();
    let var_0 = _wgslsmith_div_i32(~3485i, -55733i);
    var var_1 = 44097u ^ ~_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(104615u, 8u)], 8u)], 4294967295u, global0[_wgslsmith_index_u32(12510u, 8u)])), ~vec3<u32>(u_input.e.x, 22782u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 8u)], 8u)]) >> (vec3<u32>(1u, 4294967295u, 37646u) % vec3<u32>(32u)));
    var var_2 = Struct_1(vec2<bool>(all(vec2<bool>(true, true)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-281f * 1734f)), u_input.b.x, !any(vec4<bool>(true, true, true, false)), min(~vec3<u32>(31928u, global0[_wgslsmith_index_u32(10129u, 8u)], u_input.e.x), ~vec3<u32>(63604u, 0u, 28940u))))));
    global0 = array<u32, 8>();
    return 14361u;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(func_2(u_input.a.x), 8u)] >> (0u % 32u), u_input.e.x >> (4294967295u % 32u), func_2(_wgslsmith_div_i32(39190i, select(0i, arg_0, arg_1.a.x)))) ^ abs(~(~(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], global0[_wgslsmith_index_u32(31507u, 8u)], 0u, 1u) >> (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1805u, 8u)], 8u)], 0u, 4294967295u, global0[_wgslsmith_index_u32(u_input.e.x, 8u)]) % vec4<u32>(32u)))));
    var_1 = ~(~(~(~vec4<u32>(u_input.e.x, 0u, u_input.e.x, 50162u))) & ((~vec4<u32>(19193u, 61775u, global0[_wgslsmith_index_u32(46189u, 8u)], global0[_wgslsmith_index_u32(57915u, 8u)]) >> ((vec4<u32>(0u, 4294967295u, 97602u, var_1.x) << (vec4<u32>(4294967295u, 54230u, 7278u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))) << (vec4<u32>(~var_1.x, u_input.e.x, 4294967295u, 1u) % vec4<u32>(32u))));
    var var_2 = Struct_1(select(vec2<bool>(any(arg_1.a) | var_0.a.x, select(true, false, !arg_1.a.x)), var_0.a, vec2<bool>(arg_1.a.x, true)), vec2<f32>(var_0.b.x, 1314f));
    let var_3 = var_1.wxw;
    return Struct_1(select(!select(select(arg_1.a, var_2.a, var_0.a), var_0.a, all(vec4<bool>(var_2.a.x, true, arg_1.a.x, true))), var_2.a, !var_0.a.x), arg_1.b);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: vec2<i32>) -> f32 {
    var var_0 = reverseBits(firstLeadingBit(u_input.d));
    global1 = vec2<i32>(22713i, global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~32757u, 8u)], 30u)]);
    let var_1 = func_2(_wgslsmith_mod_i32(0i, _wgslsmith_dot_vec4_i32(~vec4<i32>(29763i, var_0.x, -2147483647i, var_0.x), ~(~vec4<i32>(arg_1, arg_2, arg_3.x, var_0.x)))));
    var_0 = abs(reverseBits(vec2<i32>(u_input.a.x, ~_wgslsmith_add_i32(-7396i, global2[_wgslsmith_index_u32(u_input.e.x, 30u)]))));
    let var_2 = var_0.x;
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(u_input.d.x ^ global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 8u)], 30u)], Struct_1(vec2<bool>(true, true), vec2<f32>(-435f, -1088f))), _wgslsmith_mult_i32(0i, u_input.a.x), u_input.c, -_wgslsmith_mod_vec2_i32(u_input.d, vec2<i32>(global1.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40873u, 8u)], 30u)]))))), _wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(69326u, 8u)], 30u)], 57335i, -1i) >> (5287u % 32u), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(107f, 880f) - vec2<f32>(-1370f, -1128f)))), 1i, 1i, max(min(vec2<i32>(-26584i, -1i), select(vec2<i32>(global1.x, 2147483647i), u_input.d, false)), -firstLeadingBit(u_input.d)))));
    let var_1 = (u_input.e.x >> (1u % 32u)) << (global0[_wgslsmith_index_u32(select(min(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(76631u, 8u)], _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.e.x), u_input.e), 0u), ~0u), _wgslsmith_mod_u32(func_2(global1.x), 4294967295u), any(vec3<bool>(true, true, func_1(-12992i, Struct_1(vec2<bool>(true, true), vec2<f32>(-121f, -759f))).a.x))), 8u)] % 32u);
    var_0 = -861f;
    var var_2 = all(!vec2<bool>(true, _wgslsmith_f_op_f32(721f + 1217f) >= _wgslsmith_f_op_f32(round(-527f))));
    var var_3 = Struct_1(!select(func_1(43030i >> (var_1 % 32u), func_1(global2[_wgslsmith_index_u32(26805u, 30u)], Struct_1(vec2<bool>(true, true), vec2<f32>(-1375f, 152f)))).a, vec2<bool>(true, all(vec3<bool>(true, true, false))), vec2<bool>(true, true)), vec2<f32>(647f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(746f)))))));
    global0 = array<u32, 8>();
    global1 = ~min(-u_input.b.xy, vec2<i32>(global2[_wgslsmith_index_u32(~1231u, 30u)], global1.x));
    let var_4 = var_3.b.x;
    var_0 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1764f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(-1833f, -28227i, true, vec3<u32>(89445u, 46579u, 4294967295u))).x)), 1711f), select(~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(var_1, 30u)], -4925i, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27361u, 8u)], 30u)]), vec3<i32>(30177i, u_input.a.x, global1.x)), _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(65100i, -2147483647i, -41001i), vec3<i32>(2147483647i, 51066i, u_input.d.x))), ((global1.x ^ global1.x) ^ countOneBits(2147483647i)) ^ global2[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 8u)], 8u)]) << (4294967295u % 32u), 30u)], !var_3.a.x & (any(vec3<bool>(true, true, var_3.a.x)) && true)), true, ~firstLeadingBit(vec3<u32>(reverseBits(0u), ~5686u, _wgslsmith_sub_u32(u_input.e.x, 4294967295u))))).x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_3.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.b.x), 371f)), 2231f)), -577f, var_3.b.x), -1124f, ~var_1, -abs(countOneBits(u_input.b)));
}

