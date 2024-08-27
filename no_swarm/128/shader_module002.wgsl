struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(1u, 19575u, 25078u);

var<private> global1: array<vec2<u32>, 10>;

var<private> global2: array<i32, 14> = array<i32, 14>(18067i, 2147483647i, -96324i, -8944i, i32(-2147483648), 20636i, 10772i, 7958i, 44816i, 6397i, 26250i, i32(-2147483648), 39123i, 2147483647i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<f32> {
    var var_0 = 877f;
    let var_1 = ~1u;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-384f, _wgslsmith_f_op_f32(step(935f, -239f)))) * -292f) * _wgslsmith_f_op_f32(trunc(392f))), Struct_1(abs(1u << (0u % 32u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(true, false, true)), global2[_wgslsmith_index_u32(0u, 14u)] >= global2[_wgslsmith_index_u32(var_1, 14u)], any(vec2<bool>(false, false))), true)), Struct_1(~(~(global0[_wgslsmith_index_u32(57468u, 3u)] >> (0u % 32u))), select(vec4<bool>(all(vec2<bool>(false, false)), false, true, true), vec4<bool>(true, false, true, all(vec2<bool>(false, false))), vec4<bool>(true, true, true, any(vec2<bool>(true, false))))), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~global1[_wgslsmith_index_u32(4294967295u, 10u)], abs(global1[_wgslsmith_index_u32(0u, 10u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(var_1, var_1)), 3u)], 3u)], 4294967295u), reverseBits(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(var_1, global0[_wgslsmith_index_u32(1u, 3u)], 1u), vec3<u32>(var_1, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1, 3u)], 3u)])), select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(var_1, global0[_wgslsmith_index_u32(1u, 3u)], var_1), true), min(vec3<u32>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(5044u, 3u)], 0u), vec3<u32>(0u, u_input.a, 30848u))))));
    let var_3 = vec4<u32>(~38422u, ~(var_1 >> (min(u_input.a, ~52747u) % 32u)), 17130u, var_2.d.x & u_input.a);
    let var_4 = (((countOneBits(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1, 3u)], 14u)]) & abs(global2[_wgslsmith_index_u32(1387u, 14u)])) >> (var_2.b.a % 32u)) << ((_wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_1, 3u)] ^ 2600u, var_3.x >> (1u % 32u)) & _wgslsmith_clamp_u32(79212u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_3.x), vec2<u32>(var_3.x, 0u)), u_input.a)) % 32u)) ^ _wgslsmith_sub_i32(max(firstTrailingBit(-global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1, 3u)], 14u)]), 1i), global2[_wgslsmith_index_u32(25964u, 14u)]);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_div_f32(var_2.a, var_2.a)), _wgslsmith_div_f32(-808f, var_2.a))));
}

fn func_2() -> u32 {
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-372f, -1560f), vec2<f32>(210f, -741f)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-405f * 244f)), Struct_1(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.a, 3u)], u_input.a), vec4<bool>(true, true, true, true)), Struct_1(global0[_wgslsmith_index_u32(~1u, 3u)], select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true)), vec3<u32>(u_input.a << (u_input.a % 32u), abs(4294967295u), u_input.a | 4294967295u)), Struct_1(1u, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(select(-779f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3004f + -467f)), select(true, true, false))), _wgslsmith_f_op_vec3_f32(func_3())), Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-183f, -725f), vec2<f32>(-593f, 232f))))), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(1171f - 507f)), Struct_1(0u, vec4<bool>(false, false, true, false)), Struct_1(min(4294967295u, 1u), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false))), ~(vec3<u32>(u_input.a, 69152u, 4294967295u) | vec3<u32>(1u, 7908u, 4294967295u))), Struct_1(~firstTrailingBit(global0[_wgslsmith_index_u32(1u, 3u)]), vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 14u)] != global2[_wgslsmith_index_u32(u_input.a, 14u)], any(vec2<bool>(false, false)), any(vec3<bool>(false, true, true)), all(vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(max(1009f, _wgslsmith_f_op_f32(floor(-740f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(152f, 127f, 581f))))));
    var var_1 = Struct_4(var_0.b, Struct_3(var_0.b.a, var_0.a.b, var_0.a.b.b, var_0.a.d, vec3<f32>(1721f, var_0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.e.x) - _wgslsmith_div_f32(490f, var_0.a.a.x)))));
    var var_2 = true;
    var var_3 = !vec2<bool>(!(countOneBits(1i) <= (global2[_wgslsmith_index_u32(1u, 14u)] >> (global0[_wgslsmith_index_u32(9615u, 3u)] % 32u))), firstTrailingBit(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(0u, 14u)], 30043i)) != _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, -2147483647i, global2[_wgslsmith_index_u32(var_0.b.c.a, 14u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.b.c.a, 3u)], 14u)], 2147483647i, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], 14u)]), vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a, 14u)], 27039i))));
    var var_4 = countOneBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(-9779i, global2[_wgslsmith_index_u32(var_0.b.c.a, 14u)]), firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(var_1.b.c.a, 14u)], -1974i), vec2<i32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b.b.d.x, 3u)], 14u)], 8917i)))), vec2<i32>(-global2[_wgslsmith_index_u32(u_input.a >> (54624u % 32u), 14u)], max(global2[_wgslsmith_index_u32(~8633u, 14u)], 0i)), -select(-vec2<i32>(-37007i, 31457i), -vec2<i32>(7153i, 0i), !var_3.x)));
    return ~u_input.a;
}

fn func_1(arg_0: vec4<u32>) -> Struct_4 {
    var var_0 = select(func_2(), _wgslsmith_dot_vec2_u32(abs(arg_0.ww), vec2<u32>(~(arg_0.x << (global0[_wgslsmith_index_u32(arg_0.x, 3u)] % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, global0[_wgslsmith_index_u32(arg_0.x, 3u)]), vec3<u32>(u_input.a, arg_0.x, 61200u)) & (u_input.a >> (37634u % 32u)))), any(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true), true), !all(vec4<bool>(false, false, true, false)))));
    global2 = array<i32, 14>();
    var var_1 = Struct_4(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-1439f + _wgslsmith_f_op_f32(floor(-599f))), _wgslsmith_f_op_f32(abs(-2202f))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1912f), Struct_1(arg_0.x, vec4<bool>(false, false, false, false)), Struct_1(0u >> (0u % 32u), vec4<bool>(true, true, true, true)), select(_wgslsmith_mult_vec3_u32(arg_0.wzx, arg_0.zzy), max(vec3<u32>(u_input.a, arg_0.x, global0[_wgslsmith_index_u32(28488u, 3u)]), vec3<u32>(83771u, 67175u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 3u)], 3u)])), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true))), Struct_1(_wgslsmith_mod_u32(u_input.a, u_input.a), vec4<bool>(global2[_wgslsmith_index_u32(48634u, 14u)] == 46626i, global2[_wgslsmith_index_u32(u_input.a, 14u)] <= 14348i, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-432f, _wgslsmith_f_op_f32(sign(-220f)), all(vec4<bool>(true, true, false, false))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1266f)))), _wgslsmith_div_f32(-146f, _wgslsmith_f_op_f32(f32(-1f) * -810f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1430f, 941f), vec2<f32>(-389f, 1530f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(596f, -1000f))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1885f))), Struct_1(30896u << (global0[_wgslsmith_index_u32(0u, 3u)] % 32u), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true))), Struct_1(reverseBits(arg_0.x), vec4<bool>(true, true, false, true)), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(2900u, 3u)], 1074u, 19423u), arg_0.wyx), ~vec3<u32>(arg_0.x, 4294967295u, 100251u))), Struct_1(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], 0u, arg_0.x, arg_0.x), arg_0)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), select(true, false, false))), 470f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(801f, -992f, -1000f) * vec3<f32>(151f, 1568f, 1478f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-418f, 472f, 1478f))))));
    var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-var_1.b.e.zz), Struct_2(-2020f, Struct_1(~4294967295u, vec4<bool>(var_1.a.b.b.b.x, var_1.b.b.b.b.x, var_1.b.c.b.x, var_1.a.b.c.b.x)), Struct_1(~4294967295u, !vec4<bool>(var_1.b.c.b.x, var_1.a.c.b.x, true, var_1.b.b.c.b.x)), select(_wgslsmith_add_vec3_u32(vec3<u32>(40925u, global0[_wgslsmith_index_u32(u_input.a, 3u)], 89474u), vec3<u32>(57287u, arg_0.x, u_input.a)), ~vec3<u32>(arg_0.x, global0[_wgslsmith_index_u32(33466u, 3u)], 1u), vec3<bool>(var_1.a.b.b.b.x, true, var_1.b.c.b.x))), Struct_1(1u, vec4<bool>(true, true, true, true)), _wgslsmith_div_f32(272f, _wgslsmith_f_op_f32(trunc(-1268f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.d, 407f, 1045f) * _wgslsmith_f_op_vec3_f32(max(var_1.a.e, vec3<f32>(1227f, -1821f, -530f)))))), var_1.b);
    var_0 = 69466u;
    return Struct_4(Struct_3(var_1.b.e.zy, var_1.b.b, var_1.a.c, var_1.a.d, vec3<f32>(var_1.b.b.a, _wgslsmith_f_op_f32(-var_1.b.a.x), 530f)), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.d, 257f)), vec2<f32>(var_1.b.a.x, 311f)))), Struct_2(313f, var_1.a.b.c, Struct_1(~global0[_wgslsmith_index_u32(22630u, 3u)], !var_1.b.c.b), vec3<u32>(1u, min(1u, 1u), global0[_wgslsmith_index_u32(arg_0.x, 3u)] ^ global0[_wgslsmith_index_u32(4294967295u, 3u)])), Struct_1(1u, !vec4<bool>(false, var_1.a.c.b.x, var_1.b.b.b.b.x, var_1.b.c.b.x)), var_1.a.d, _wgslsmith_f_op_vec3_f32(-var_1.b.e)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(200f, -443f))), _wgslsmith_f_op_f32(arg_0.b.e.x + _wgslsmith_div_f32(arg_1.a.b.a, -1072f)))), arg_1.b.b, arg_1.b.b.c, _wgslsmith_f_op_f32(max(arg_1.b.d, arg_0.b.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1662f, arg_0.b.b.a, arg_0.b.b.a) * vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.d), arg_1.b.a.x, _wgslsmith_f_op_vec3_f32(func_3()).x)));
    global0 = array<u32, 3>();
    global2 = array<i32, 14>();
    var var_1 = var_0.b.c;
    global1 = array<vec2<u32>, 10>();
    return (58954u ^ func_1(vec4<u32>(~var_1.a, firstLeadingBit(arg_1.b.c.a), global0[_wgslsmith_index_u32(327u, 3u)], func_2())).b.c.a) | 56860u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(57454u, 17782u), 14u)], -1i)), global2[_wgslsmith_index_u32(func_4(func_1(max(abs(vec4<u32>(4294967295u, 6279u, 0u, 1u)), select(vec4<u32>(4294967295u, 14977u, 17250u, u_input.a), vec4<u32>(4294967295u, 1u, u_input.a, 51092u), vec4<bool>(true, true, true, true)))), Struct_4(func_1(vec4<u32>(1952u, u_input.a, 88822u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(116674u, 3u)], 3u)])).b, func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 39575u, global0[_wgslsmith_index_u32(1u, 3u)], u_input.a), vec4<u32>(u_input.a, 18672u, 0u, 1u))).b)), 14u)]);
    global0 = array<u32, 3>();
    let var_1 = true;
    global1 = array<vec2<u32>, 10>();
    global1 = array<vec2<u32>, 10>();
    var var_2 = func_1(vec4<u32>(global0[_wgslsmith_index_u32(func_1(vec4<u32>(u_input.a, 0u, 2055u, global0[_wgslsmith_index_u32(0u, 3u)]) >> (select(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], 0u, 0u, 1u), vec4<u32>(4294967295u, 4294967295u, 64115u, global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<bool>(false, var_1, false, var_1)) % vec4<u32>(32u))).a.b.b.a, 3u)], 0u << (firstLeadingBit(~u_input.a) % 32u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1834u, u_input.a, u_input.a), _wgslsmith_mod_u32(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 3u)], 3u)])), (global0[_wgslsmith_index_u32(1u, 3u)] & 92325u) & firstTrailingBit(4294967295u)), abs(~5789u))).a;
    var var_3 = _wgslsmith_div_f32(var_2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-911f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.x) - 1000f))));
    var var_4 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-var_2.e.yz), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-226f * var_2.b.a)), func_1(vec4<u32>(4294967295u, var_2.b.c.a, var_2.b.b.a, 100742u)).a.b.b, func_1(vec4<u32>(1u, global0[_wgslsmith_index_u32(var_2.c.a, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], 18690u)).a.c, max(~var_2.b.d, var_2.b.d)), Struct_1(u_input.a, vec4<bool>(!var_1, var_2.c.b.x, !var_1, var_2.a.x >= var_2.d)), _wgslsmith_f_op_f32(trunc(var_2.b.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.e * vec3<f32>(var_2.b.a, var_2.d, 1000f))))), func_1(~(~(vec4<u32>(9072u, 62975u, var_2.c.a, var_2.c.a) | vec4<u32>(18959u, var_2.c.a, 37367u, var_2.c.a)))).b);
    let var_5 = _wgslsmith_f_op_f32(var_2.b.a - var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(1u, 14u)], var_2.e, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(428f, var_5, 552f, -1746f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b.b.a, -1147f, var_4.b.e.x, -808f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.d))) * var_4.a.b.a) * _wgslsmith_f_op_f32(var_4.b.e.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2075f * var_2.d) + -634f))));
}

