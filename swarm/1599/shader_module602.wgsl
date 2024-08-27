struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-549f, 1129f), vec2<f32>(-1984f, 567f), vec2<f32>(-1208f, 146f), vec2<f32>(-1504f, -1000f), vec2<f32>(265f, 1000f), vec2<f32>(2040f, -1000f), vec2<f32>(-150f, -1063f), vec2<f32>(605f, -577f), vec2<f32>(1383f, 606f), vec2<f32>(830f, -568f), vec2<f32>(-183f, -1813f), vec2<f32>(1194f, -1000f), vec2<f32>(-1608f, -169f), vec2<f32>(1153f, -532f), vec2<f32>(1000f, -670f), vec2<f32>(442f, 193f), vec2<f32>(-362f, -1584f), vec2<f32>(-386f, -1236f), vec2<f32>(-1093f, 245f));

var<private> global1: array<Struct_1, 21>;

var<private> global2: Struct_3;

var<private> global3: array<i32, 13> = array<i32, 13>(-1i, -42060i, 1i, 1i, 22016i, i32(-2147483648), -64376i, 45998i, 43454i, 32362i, -1395i, 32808i, 1i);

var<private> global4: array<Struct_3, 5>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 21u)];
    var var_1 = -2055f;
    global1 = array<Struct_1, 21>();
    global3 = array<i32, 13>();
    let var_2 = var_0.c;
    return min(52228u, countOneBits(1u));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_sub_i32(2801i, ~_wgslsmith_mod_i32(2147483647i, global3[_wgslsmith_index_u32(1u, 13u)]));
    let var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x | _wgslsmith_mult_u32(85426u, u_input.a.x), _wgslsmith_sub_u32(1u, u_input.a.x)), firstTrailingBit(_wgslsmith_add_vec2_u32(abs(u_input.a), u_input.a)));
    let var_2 = global1[_wgslsmith_index_u32(func_3(), 21u)];
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_mult_vec3_i32(var_2.d, vec3<i32>(arg_0, ~(-global2.b.x), global2.b.x)));
    global2 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, firstLeadingBit(max(961u, u_input.a.x)), ~(~var_2.c)), ~var_2.a), u_input.a.x, _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(~var_1, 1u)) >> (1u % 32u)), 5u)];
    return reverseBits(9292u);
}

fn func_4(arg_0: i32, arg_1: i32) -> vec3<i32> {
    var var_0 = Struct_2(arg_1, u_input.a.x);
    let var_1 = select(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false)), vec4<bool>(all(vec2<bool>(true, true)), false, true, all(vec3<bool>(false, true, false))), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), vec4<bool>(true || (global2.b.x <= _wgslsmith_clamp_i32(1i, -17985i, arg_1)), firstTrailingBit(~1u) <= var_0.b, 16188i < _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.x, arg_1, global3[_wgslsmith_index_u32(u_input.a.x, 13u)], var_0.a), vec4<i32>(-2147483647i, -21714i, var_0.a, var_0.a)), _wgslsmith_div_i32(0i, -1i)), true || any(vec3<bool>(true, true, true))), select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(-global2.a) != _wgslsmith_f_op_f32(-global2.a), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), true), true));
    var var_2 = var_0.b;
    var var_3 = vec4<bool>(var_1.x, !((true || var_1.x) | true) | true, select(true, var_1.x, any(vec3<bool>(var_1.x, var_1.x, var_1.x)) && true) == any(var_1.zw), all(!(!select(var_1.yx, var_1.zx, false))));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a, -1228f, -145f, global2.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, global2.a, -556f)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1226f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1776f)) + _wgslsmith_f_op_f32(-global2.a)), 1951f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global2.a)), global2.a)))));
    return _wgslsmith_div_vec3_i32(~(-_wgslsmith_sub_vec3_i32(global2.b, ~global2.b)), ~global2.b);
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    global4 = array<Struct_3, 5>();
    var var_0 = _wgslsmith_add_vec3_i32(func_4(_wgslsmith_clamp_i32(-1i << (func_2(-2147483647i) % 32u), global2.b.x, -countOneBits(global2.b.x)), -1i), firstTrailingBit(func_4(global3[_wgslsmith_index_u32(firstLeadingBit(1u) << (~arg_0.x % 32u), 13u)], global3[_wgslsmith_index_u32(15084u, 13u)])));
    var var_1 = _wgslsmith_div_u32(u_input.a.x, _wgslsmith_add_u32(select(u_input.a.x, ~abs(u_input.a.x), true), ~(~1u)));
    var var_2 = Struct_1(~28412u, _wgslsmith_f_op_f32(max(global2.a, -317f)), 0u, vec3<i32>(-33389i, _wgslsmith_div_i32(select(~(-2909i), var_0.x, all(vec4<bool>(true, false, true, true))), -27824i), 15578i), !(!all(vec4<bool>(false, false, true, true))) & true);
    let var_3 = !(var_2.e || all(!vec4<bool>(true, var_2.e, true, true)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global2.a, _wgslsmith_f_op_f32(-global2.a), !var_3))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<u32>(13077u, u_input.a.x, u_input.a.x, 1u))), _wgslsmith_f_op_f32(-567f * global2.a), -215f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1010f * _wgslsmith_f_op_f32(global2.a - global2.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global2.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.a))))));
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x >> (u_input.a.x % 32u)), 5u)];
    let var_2 = Struct_3(_wgslsmith_f_op_f32(1182f - _wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-var_0.x)))), vec3<i32>(_wgslsmith_mult_i32(1i, i32(-1i) * -23458i), global3[_wgslsmith_index_u32(1u, 13u)], 0i));
    global3 = array<i32, 13>();
    var var_3 = _wgslsmith_f_op_f32(sign(547f));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(step(760f, _wgslsmith_f_op_f32(round(var_1.a))))))), ~_wgslsmith_mod_vec3_i32(global2.b, -vec3<i32>(var_1.b.x, 20110i, -25443i) & -var_2.b));
    let var_5 = global4[_wgslsmith_index_u32(~min(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(u_input.a.x, 15137u), _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), 22468u), 5u)];
    global3 = array<i32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~reverseBits(var_5.b.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(10898u, 1u, 0u), ~vec3<u32>(0u, u_input.a.x, u_input.a.x)) % 32u)), select(_wgslsmith_div_vec2_i32(-var_1.b.yz ^ vec2<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 13u)], global2.b.x), vec2<i32>(-13510i, -1i) >> (select(vec2<u32>(62068u, 7291u), vec2<u32>(u_input.a.x, u_input.a.x), true) % vec2<u32>(32u))), var_4.b.zy, !all(vec3<bool>(true, false, true)) & (global3[_wgslsmith_index_u32(~21586u, 13u)] >= _wgslsmith_div_i32(0i, global3[_wgslsmith_index_u32(22506u, 13u)]))), -1i, ~_wgslsmith_sub_vec2_i32(~(-var_5.b.xz), global2.b.yx), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(4243u, 13u)], var_2.b.x), var_1.b.x), ~(i32(-1i) * -1i)), countOneBits(vec4<i32>(firstLeadingBit(global3[_wgslsmith_index_u32(4294967295u, 13u)]), var_2.b.x << (u_input.a.x % 32u), ~47918i, global3[_wgslsmith_index_u32(15279u, 13u)] | global3[_wgslsmith_index_u32(u_input.a.x, 13u)]))));
}

