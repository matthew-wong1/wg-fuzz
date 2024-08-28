struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<bool>) -> i32 {
    global0 = array<f32, 7>();
    var var_0 = select(_wgslsmith_sub_vec2_i32(firstTrailingBit(-vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(_wgslsmith_div_i32(-2147483647i, -4728i), -13902i)), u_input.b.yy, arg_3) ^ ~vec2<i32>(~(-1i), -(u_input.b.x | 11908i));
    let var_1 = arg_1;
    let var_2 = Struct_3(arg_2.a, !arg_3.x, Struct_1(arg_1.a), _wgslsmith_f_op_vec2_f32(-arg_2.b.yw), var_1);
    var var_3 = -118f;
    return -1i;
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.b;
    var var_1 = func_3(!select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(false, true, true), any(vec2<bool>(false, true))), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-668f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))))), Struct_2(-(~reverseBits(vec4<i32>(55299i, var_0.x, u_input.b.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(313f, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 472f, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])))), -31230i, ~(~u_input.a.x)), !vec2<bool>(_wgslsmith_mod_i32(var_0.x, var_0.x) == _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 1i, -1i), u_input.b), !all(vec3<bool>(false, true, false))));
    let var_2 = Struct_2(vec4<i32>(_wgslsmith_add_i32(-1i, 32247i), 2147483647i, var_0.x, var_0.x ^ ~_wgslsmith_mult_i32(-3662i, u_input.b.x)), vec4<f32>(-292f, global0[_wgslsmith_index_u32(countOneBits(5293u), 7u)], 1299f, 318f), var_0.x, _wgslsmith_div_u32(31415u, 1u));
    var_1 = _wgslsmith_div_i32(-2147483647i, _wgslsmith_div_i32(var_0.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(2147483647i, var_0.x, var_2.c)), -var_2.c, var_0.x))) >> (_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_2.d & 0u, ~4294967295u & ~u_input.a.x), u_input.a.x) % 32u);
    var_0 = abs(vec3<i32>(1i, var_2.a.x, _wgslsmith_mult_i32(var_2.a.x & var_2.a.x, 0i)) & u_input.b);
    return Struct_3(var_2.a, !all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false))), Struct_1(var_2.b.zxx), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.b.x, var_2.b.x), var_2.b.yw))), vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)] * var_2.b.x), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, false), true))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, global0[_wgslsmith_index_u32(var_2.d, 7u)])), _wgslsmith_f_op_vec2_f32(sign(var_2.b.yy)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.b.x, var_2.b.x))) - _wgslsmith_f_op_vec2_f32(-var_2.b.ww)))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), true))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(49887u, 0u), 7u)]), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-444f)), -117f)), -1355f)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2((vec4<i32>(-1i) * -min(vec4<i32>(-1i, 0i, -62975i, 37446i), vec4<i32>(u_input.b.x, u_input.b.x, -1i, 47922i))) >> (vec4<u32>(~(~16228u), ~1u, u_input.a.x, _wgslsmith_add_u32(5115u, _wgslsmith_div_u32(0u, u_input.a.x))) % vec4<u32>(32u)), vec4<f32>(1101f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), 1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1433f, global0[_wgslsmith_index_u32(11409u, 7u)])) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)] - global0[_wgslsmith_index_u32(4294967295u, 7u)]))))), _wgslsmith_sub_i32(-1i, u_input.b.x & u_input.b.x), 58944u);
    global0 = array<f32, 7>();
    var var_1 = func_2();
    var_0 = Struct_2(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 0i, -2147483647i, var_0.a.x), var_1.a), vec4<i32>(1i, var_1.a.x, var_1.a.x, u_input.b.x), _wgslsmith_clamp_vec4_i32(var_0.a, var_0.a, var_1.a)), ~abs(var_0.a)), -abs(vec4<i32>(var_1.a.x, var_0.c, -1i, 0i) ^ vec4<i32>(u_input.b.x, 35875i, var_1.a.x, u_input.b.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 7u)]), var_1.d.x, _wgslsmith_f_op_f32(206f * 1967f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.d, 7u)])))))), -1i, ~(~87054u));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1125f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-130f + global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 75344u), vec2<u32>(66049u, 1u)), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), all(vec4<bool>(var_1.b, var_1.b, var_1.b, true))), 7u)]))));
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 7>();
    var var_0 = true;
    global0 = array<f32, 7>();
    var var_1 = (u_input.b.x & (u_input.b.x & u_input.b.x)) & _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.b.x, ~(-21727i), -u_input.b.x), vec3<i32>(-1i, u_input.b.x, 1i)), 0i);
    let var_2 = ~(~1i);
    var var_3 = Struct_4(Struct_3(-_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 19265i, -10115i, var_2), vec4<i32>(var_2, -27719i, -1i, 1i)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(11703u), 7u)]) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.a.x, 7u)])) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(888f, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(96690u, 7u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-678f, 1514f, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], -1000f)) * vec2<f32>(-240f, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(47523u, 7u)], 1388f, -1168f)))))), func_1(), firstLeadingBit(~max(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -36708i, u_input.b.x, 2147483647i), vec4<i32>(17100i, var_2, var_2, -7609i)), abs(vec4<i32>(var_2, u_input.b.x, u_input.b.x, var_2)))), func_2(), all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(8670u, 7u)], -233f, 1120f, var_3.d.c.a.x)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(3185u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(61040u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(4767u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], var_3.d.d.x)), _wgslsmith_f_op_f32(-var_3.a.d.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 860f, 1006f, -699f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(50162u, 7u)], var_3.b.a.x, -971f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(221f, var_3.d.d.x, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], -408f), vec4<f32>(-165f, global0[_wgslsmith_index_u32(4294967295u, 7u)], 1000f, global0[_wgslsmith_index_u32(28650u, 7u)]), false)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.a.d.x, var_3.b.a.x, 1634f, var_3.b.a.x))))))))));
    var var_5 = vec2<bool>(all(vec4<bool>(43390u >= u_input.a.x, true, all(vec4<bool>(var_3.a.b, var_3.e, false, var_3.d.b)), true)) && all(vec2<bool>(true, 1826i >= var_2)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-292f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-308f * global0[_wgslsmith_index_u32(0u, 7u)]))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -162f)))));
}

