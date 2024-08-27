struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 5>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global0 = global1[_wgslsmith_index_u32(177279u, 5u)];
    var var_0 = u_input.b.x;
    global0 = -(countOneBits(abs(~u_input.a)) & ~_wgslsmith_sub_i32(~u_input.a, max(-32856i, 1111i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -191f)) * _wgslsmith_f_op_f32(-213f - -984f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(490f)) + _wgslsmith_f_op_f32(trunc(-914f)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1269f)))), 1u);
    return firstTrailingBit(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(var_2.b, u_input.b.x), vec2<u32>(var_2.b, u_input.b.x)), abs(u_input.b)) ^ 24306u, 5u)]) != _wgslsmith_dot_vec3_i32(-(~firstLeadingBit(vec3<i32>(-12885i, u_input.a, global1[_wgslsmith_index_u32(var_2.b, 5u)]))), max(vec3<i32>(firstTrailingBit(global1[_wgslsmith_index_u32(25133u, 5u)]), ~66943i, ~(-27160i)), vec3<i32>(-1i) * -vec3<i32>(global1[_wgslsmith_index_u32(64561u, 5u)], -5706i, u_input.a)));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    global1 = array<i32, 5>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(-285f)), _wgslsmith_mod_u32(_wgslsmith_add_u32(max(u_input.b.x, u_input.b.x | 13677u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 49398u, 0u), vec4<u32>(12848u, u_input.b.x, 4294967295u, 14138u)), ~vec4<u32>(28549u, 1u, 1014u, u_input.b.x))), 0u));
    let var_1 = arg_2;
    let var_2 = Struct_2(func_3(), all(vec3<bool>(true, arg_0.x, any(arg_2.d))), arg_1, arg_2.d);
    global1 = array<i32, 5>();
    return var_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = arg_2.a;
    var var_1 = min(-arg_0.x | (~25339i << (arg_2.b % 32u)), ~arg_0.x);
    global1 = array<i32, 5>();
    var var_2 = arg_2;
    let var_3 = select(vec4<bool>(arg_1.x, !arg_1.x, select(arg_1.x, false, any(arg_1.xz)), true), !vec4<bool>(true, true, true, arg_2.a <= -528f), true);
    return ~arg_0.x;
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f))))), 6573u);
    var var_1 = u_input.b;
    global1 = array<i32, 5>();
    let var_2 = 1u;
    global0 = (firstLeadingBit(func_4(-vec4<i32>(u_input.a, arg_0.c, 0i, global1[_wgslsmith_index_u32(31540u, 5u)]), !arg_0.d, func_2(arg_0.d.yx, u_input.a, Struct_2(true, arg_0.b, 2147483647i, arg_0.d), u_input.a), -17910i)) << (1u % 32u)) & 38006i;
    return select(51071u > _wgslsmith_clamp_u32(~1u, _wgslsmith_mod_u32(var_2, ~var_1.x), ~4294967295u), arg_0.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_add_i32(-29890i, _wgslsmith_mod_i32(u_input.a, global1[_wgslsmith_index_u32(~1u, 5u)])));
    var var_1 = select(select(select(vec2<bool>(func_1(Struct_2(false, true, -17867i, vec3<bool>(true, true, false))), true), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false)), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, true)), false), vec2<bool>(false, true)), func_1(Struct_2(true, true, func_4(vec4<i32>(u_input.a, 2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 5u)], u_input.a), vec3<bool>(false, false, true), Struct_1(1664f, 1221u), u_input.a), vec3<bool>(false, true, false)))), !vec2<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false))), firstTrailingBit(~1u) == countOneBits(0u));
    var_0 = -2147483647i;
    var_0 = _wgslsmith_div_i32(~(~global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 5u)]), _wgslsmith_add_i32(_wgslsmith_mod_i32(-_wgslsmith_clamp_i32(-32605i, -1i, global1[_wgslsmith_index_u32(u_input.b.x, 5u)]), 1i), -14054i));
    var_0 = 6209i;
    let var_2 = ~(1247u >> (1u % 32u));
    global1 = array<i32, 5>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(step(1495f, _wgslsmith_f_op_f32(select(func_2(select(vec2<bool>(var_1.x, true), vec2<bool>(false, var_1.x), false), ~global1[_wgslsmith_index_u32(var_2, 5u)], Struct_2(false, var_1.x, global1[_wgslsmith_index_u32(0u, 5u)], vec3<bool>(true, true, false)), reverseBits(2147483647i)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-486f - 580f)), (var_1.x | false) | true)))), reverseBits(24646u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(abs(global1[_wgslsmith_index_u32(var_2, 5u)] & u_input.a), ~(-1572i ^ global1[_wgslsmith_index_u32(u_input.b.x, 5u)]), u_input.a)), _wgslsmith_f_op_f32(step(-886f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.a, 1133f, var_1.x)) + _wgslsmith_f_op_f32(952f - var_3.a)))))), -1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_3.a - -606f), _wgslsmith_div_f32(1462f, var_3.a)), vec2<f32>(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(-537f * 927f)))));
}

