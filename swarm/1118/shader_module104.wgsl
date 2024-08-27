struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
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

var<private> global0: i32;

var<private> global1: array<f32, 14> = array<f32, 14>(890f, -1086f, -588f, 1936f, 1208f, -586f, -470f, 291f, -499f, 101f, -117f, -1904f, 296f, -322f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    let var_0 = vec4<i32>(-1i) * -(~(abs(vec4<i32>(-4453i, 30771i, 46434i, 1i)) ^ (vec4<i32>(arg_0.x, 1i, -1i, arg_0.x) >> (vec4<u32>(28868u, 4294967295u, arg_1.a.x, u_input.c.x) % vec4<u32>(32u)))));
    return true;
}

fn func_3() -> i32 {
    let var_0 = select(!vec3<bool>(true, select(true, true, true), true), select(!vec3<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(false, true, false, false)), select(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(all(vec2<bool>(true, true)), u_input.b.x >= 44944i, true) & all(vec3<bool>(true, true, func_1(u_input.b.xy, Struct_1(vec4<u32>(u_input.d, 56795u, 4294967295u, 4294967295u), vec4<i32>(u_input.b.x, u_input.b.x, 20574i, u_input.a), 2136f, vec4<bool>(true, false, false, true), vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], global1[_wgslsmith_index_u32(34304u, 14u)])), vec4<bool>(false, false, true, true)))));
    var var_1 = Struct_1(max(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_add_u32(84547u, u_input.d), ~0u, 0u), countOneBits(reverseBits(vec4<u32>(u_input.d, u_input.d, 4294967295u, 0u)))), ~(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 29520u) >> (vec4<u32>(0u, 2099u, u_input.d, u_input.d) % vec4<u32>(32u)))), min(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, 0i, u_input.a) | vec4<i32>(33457i, 34352i, u_input.b.x, -54165i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 2147483647i, u_input.b.x), vec4<i32>(-1i, u_input.a, -2147483647i, u_input.b.x), vec4<i32>(u_input.a, 14716i, -6413i, u_input.b.x))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(1i, u_input.a, u_input.a, 8019i)), vec4<i32>(-1i, u_input.a, u_input.b.x, 41515i) << (vec4<u32>(32122u, u_input.c.x, u_input.c.x, 4294967295u) % vec4<u32>(32u)))), vec4<i32>(reverseBits(~u_input.b.x), -2634i, u_input.a >> (112126u % 32u), abs(u_input.b.x))), -1646f, !select(vec4<bool>(any(vec4<bool>(true, var_0.x, var_0.x, true)), var_0.x, var_0.x | true, var_0.x), !(!vec4<bool>(var_0.x, false, true, var_0.x)), select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true), true), vec4<bool>(var_0.x, true, false, true), var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-407f + -799f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(1u, 14u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d, 14u)] + global1[_wgslsmith_index_u32(62659u, 14u)]), false))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1[_wgslsmith_index_u32(u_input.d, 14u)], global1[_wgslsmith_index_u32(u_input.c.x, 14u)]))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], 567f)), _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.d, 14u)], -1348f), vec2<f32>(-279f, -229f))))));
    var var_2 = Struct_1(countOneBits(vec4<u32>(4294967295u, firstTrailingBit(25746u), 82098u, ~max(var_1.a.x, var_1.a.x))), var_1.b, global1[_wgslsmith_index_u32(countOneBits(var_1.a.x), 14u)], vec4<bool>(var_1.d.x, all(var_1.d), any(vec3<bool>(true | var_1.d.x, true, var_1.d.x)), any(select(vec3<bool>(true, var_0.x, true), var_1.d.zyy, var_0.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_1.e + vec2<f32>(global1[_wgslsmith_index_u32(32613u, 14u)], var_1.e.x)), _wgslsmith_f_op_vec2_f32(select(var_1.e, vec2<f32>(1000f, -1739f), false))))), _wgslsmith_f_op_vec2_f32(round(var_1.e)))));
    var_2 = Struct_1(~vec4<u32>(u_input.d, select(var_2.a.x, 4294967295u, var_0.x), ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 38799u, var_1.a.x, var_1.a.x), vec4<u32>(var_1.a.x, var_2.a.x, var_2.a.x, var_2.a.x))) ^ vec4<u32>(var_2.a.x, 0u, firstTrailingBit(u_input.c.x), firstTrailingBit(1u)), var_2.b, _wgslsmith_f_op_f32(trunc(var_2.e.x)), var_1.d, var_1.e);
    let var_3 = Struct_1(var_2.a | select(~_wgslsmith_mod_vec4_u32(var_1.a, var_2.a), vec4<u32>(u_input.c.x, var_1.a.x & 61768u, u_input.d, ~u_input.c.x), false), -abs(_wgslsmith_sub_vec4_i32(vec4<i32>(48143i, 1i, -32848i, -2147483647i), var_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.a.x, var_2.a.x), 14u)]) * _wgslsmith_div_f32(1519f, _wgslsmith_f_op_f32(-var_1.c)))), select(!select(var_2.d, select(vec4<bool>(var_1.d.x, var_0.x, var_2.d.x, true), vec4<bool>(false, false, false, var_0.x), var_2.d), false && var_0.x), vec4<bool>(any(var_0.yx), _wgslsmith_f_op_f32(round(-1642f)) >= var_2.e.x, false, true), var_0.x), var_1.e);
    return ~countOneBits(1i);
}

fn func_2() -> Struct_1 {
    global0 = -_wgslsmith_div_i32(~(_wgslsmith_div_i32(u_input.a, -14780i) | (i32(-1i) * -2147483647i)), -func_3());
    global0 = u_input.b.x;
    var var_0 = Struct_1(abs(vec4<u32>(~u_input.c.x, ~firstLeadingBit(17851u), ~u_input.c.x, u_input.d)), vec4<i32>(2147483647i, -2147483647i, _wgslsmith_div_i32(u_input.b.x, 2147483647i), _wgslsmith_mod_i32(u_input.b.x, ~(-5674i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.c.x, 4294967295u, 55237u), vec4<u32>(u_input.d, 0u, u_input.d, u_input.d)) % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 14u)] - -265f), 1818f)), -420f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(118711u, 14u)] - global1[_wgslsmith_index_u32(1u, 14u)])) * global1[_wgslsmith_index_u32(u_input.c.x, 14u)])), vec4<bool>(select(all(vec2<bool>(false, true)), false, true), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -559f)) < _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6020u, u_input.d, 37843u, u_input.d), vec4<u32>(u_input.d, 49617u, 1u, 0u)), 14u)], -1432f)), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 14u)] + global1[_wgslsmith_index_u32(u_input.d, 14u)]), 421f)))));
    global0 = -61827i;
    global0 = ~u_input.b.x;
    return Struct_1(var_0.a, vec4<i32>(_wgslsmith_sub_i32(min(1i, var_0.b.x), ~u_input.a), -var_0.b.x & -1i, min(u_input.b.x << (var_0.a.x % 32u), 2147483647i), ~(-17971i & u_input.a)) & (firstLeadingBit(abs(vec4<i32>(var_0.b.x, var_0.b.x, u_input.b.x, u_input.b.x))) & -max(var_0.b, vec4<i32>(var_0.b.x, 2147483647i, u_input.a, var_0.b.x))), -2352f, select(select(var_0.d, select(!vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x), var_0.d, false), !vec4<bool>(var_0.d.x, true, var_0.d.x, var_0.d.x)), vec4<bool>(global1[_wgslsmith_index_u32(0u, 14u)] != global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, u_input.d), 14u)], var_0.d.x, !any(var_0.d.xxz), any(var_0.d.yz)), var_0.d.x), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.d, 14u)], _wgslsmith_f_op_f32(-var_0.e.x)), global1[_wgslsmith_index_u32(u_input.c.x, 14u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-543f, _wgslsmith_f_op_f32(f32(-1f) * -509f))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_clamp_i32(43848i, arg_1, firstTrailingBit(-1i << (1u % 32u)));
    let var_0 = arg_3.a;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d, 17763u, 22965u, u_input.c.x) | select(vec4<u32>(u_input.c.x, 13360u, 4457u, 1u), vec4<u32>(u_input.c.x, u_input.d, 56525u, 4294967295u), true), ~(vec4<u32>(u_input.d, 56968u, u_input.c.x, u_input.c.x) << (vec4<u32>(u_input.d, u_input.d, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), abs(vec4<u32>(u_input.d, u_input.c.x, u_input.d, u_input.d))), vec4<i32>(-(u_input.a << (~u_input.d % 32u)), -2147483647i, -u_input.a, 0i), _wgslsmith_f_op_f32(f32(-1f) * -605f), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, all(vec2<bool>(false, false)), func_1(u_input.b.zy, Struct_1(vec4<u32>(u_input.c.x, 0u, u_input.d, u_input.d), vec4<i32>(u_input.b.x, u_input.a, 58469i, u_input.b.x), global1[_wgslsmith_index_u32(u_input.c.x, 14u)], vec4<bool>(false, true, true, false), vec2<f32>(-1138f, global1[_wgslsmith_index_u32(4294967295u, 14u)])), vec4<bool>(false, false, true, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, u_input.a != _wgslsmith_add_i32(u_input.b.x, -1i), true, any(vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1184f, global1[_wgslsmith_index_u32(min(26241u, u_input.c.x), 14u)]))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.d, 14u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(38797u, 14u)] - global1[_wgslsmith_index_u32(0u, 14u)])), vec2<f32>(-1098f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 14u)])), vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    var var_1 = func_4(var_0.d.zzz, var_0.b.x << ((var_0.a.x >> (10950u % 32u)) % 32u), firstTrailingBit(_wgslsmith_mod_u32(var_0.a.x | _wgslsmith_dot_vec4_u32(var_0.a, var_0.a), max(0u, _wgslsmith_mult_u32(4294967295u, 0u)))), func_2());
    let var_2 = vec4<bool>(false, var_1.d.x, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-389f - -970f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-508f, var_1.e.x, false))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.c))))));
    global0 = var_0.b.x | -74456i;
    let var_3 = var_1.e.x;
    global0 = var_0.b.x;
    let var_4 = _wgslsmith_f_op_vec2_f32(var_1.e * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c * global1[_wgslsmith_index_u32(var_0.a.x, 14u)]), _wgslsmith_f_op_f32(-415f - 781f)))), _wgslsmith_div_f32(1199f, global1[_wgslsmith_index_u32(~4294967295u, 14u)])));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

