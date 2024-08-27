struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: i32,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, false, false));

var<private> global1: array<bool, 6> = array<bool, 6>(false, true, false, false, true, false);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    global0 = array<vec3<bool>, 1>();
    global1 = array<bool, 6>();
    return (-16815i >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(12177u, 1u), vec2<u32>(9627u, 1u), vec2<u32>(60609u, 23060u)), vec2<u32>(1u, 1u)), ~abs(vec2<u32>(4294967295u, 14936u))) % 32u)) > 23447i;
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-386f, -187f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(370f, -693f))))))));
    let var_1 = 1i;
    let var_2 = abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, ~_wgslsmith_div_u32(19998u, 4294967295u)), ~firstTrailingBit(reverseBits(vec3<u32>(61148u, 1u, 1u)))));
    var var_3 = Struct_2(var_2.x, u_input.a.yxy >> (select(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 13542u), _wgslsmith_mult_u32(54360u, 15371u), 24597u), _wgslsmith_mult_vec3_u32(reverseBits(var_2), _wgslsmith_add_vec3_u32(var_2, vec3<u32>(var_2.x, 11168u, var_2.x))), func_3(!vec3<bool>(global1[_wgslsmith_index_u32(var_2.x, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(86120u, 6u)]))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-323f, -1528f, var_0.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-726f, 1156f, -1260f) * vec3<f32>(var_0.x, 1586f, var_0.x))))), select(global1[_wgslsmith_index_u32(var_2.x, 6u)], false, true))), Struct_1(var_0.x, min(vec2<i32>(0i, u_input.b) & vec2<i32>(-1i, var_1), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a.x), u_input.a.zw))));
    let var_4 = -28365i <= ~select(var_1, var_3.b.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_3.a, var_3.a), 6u)]);
    return var_2.zz;
}

fn func_1(arg_0: u32) -> vec2<u32> {
    let var_0 = 62551i;
    global1 = array<bool, 6>();
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(select(vec2<u32>(arg_0, 1u), vec2<u32>(arg_0, arg_0), global1[_wgslsmith_index_u32(14579u, 6u)])) & abs(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(0u, arg_0))), ~vec2<u32>(1u, 91996u)), func_2());
    let var_2 = 0i;
    var_1 = arg_0;
    return _wgslsmith_mult_vec2_u32(vec2<u32>(0u, ~arg_0), select(_wgslsmith_mod_vec2_u32(min(_wgslsmith_div_vec2_u32(vec2<u32>(34630u, arg_0), vec2<u32>(16995u, arg_0)), func_2()), _wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_0, 33158u), ~vec2<u32>(arg_0, arg_0), vec2<u32>(4294967295u, arg_0))), vec2<u32>(66418u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 23297u, arg_0), vec3<u32>(11911u, 26328u, 6273u)), arg_0 << (arg_0 % 32u))), !select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(2722u, 6u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 6u)], global1[_wgslsmith_index_u32(11005u, 6u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 6u)], global1[_wgslsmith_index_u32(arg_0, 6u)])), !vec2<bool>(global1[_wgslsmith_index_u32(107838u, 6u)], global1[_wgslsmith_index_u32(66315u, 6u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 6u)], false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(86632u, abs(~(~1u))), func_1(firstTrailingBit(firstLeadingBit(1u))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1758f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1902f))))))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(31379i | u_input.a.x, ~u_input.b), vec2<i32>(-abs(u_input.a.x), firstLeadingBit(_wgslsmith_add_i32(u_input.b, u_input.c.x))), ~vec2<i32>(u_input.b, -2147483647i)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(760f - -1496f), _wgslsmith_f_op_f32(abs(-633f)))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-758f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1299f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - 118f) * _wgslsmith_f_op_f32(sign(425f)))), all(!global0[_wgslsmith_index_u32(~var_0.x, 1u)]))));
    let var_3 = Struct_4(vec3<i32>(-21716i, var_1.b.x, firstTrailingBit(var_1.b.x)) & -_wgslsmith_add_vec3_i32(u_input.a.zyx, vec3<i32>(22032i, -22018i, u_input.a.x)), vec2<bool>(false, false));
    global1 = array<bool, 6>();
    var var_4 = Struct_5(Struct_3(select(u_input.a, vec4<i32>(-1i) * -u_input.a, !(!vec4<bool>(true, global1[_wgslsmith_index_u32(9125u, 6u)], var_3.b.x, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a, 396f, 1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2434f, -2005f, -952f)))), Struct_2(1u, firstTrailingBit(vec3<i32>(1i, var_1.b.x, -2147483647i) | vec3<i32>(4989i, -2147483647i, -2147483647i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 1000f, var_1.a)), Struct_1(_wgslsmith_f_op_f32(var_1.a + var_1.a), vec2<i32>(1i, var_3.a.x))), Struct_2(1u, var_3.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-623f, var_1.a, -808f)))), var_1)), false | var_3.b.x, 1i, select(!vec2<bool>(false, func_3(global0[_wgslsmith_index_u32(var_0.x, 1u)])), var_3.b, !select(var_3.b, vec2<bool>(true, true), var_3.b.x || false)), _wgslsmith_div_vec2_i32(~(-vec2<i32>(var_3.a.x, u_input.c.x)), vec2<i32>(~u_input.c.x, var_1.b.x >> (var_0.x % 32u)) << (~var_0 % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstLeadingBit(firstTrailingBit(~var_3.a.x)), _wgslsmith_sub_i32(-54314i, -(0i | var_3.a.x)), u_input.b, ~var_3.a.x), ~5373u, max(vec4<i32>(countOneBits(1i), _wgslsmith_sub_i32(var_1.b.x, var_1.b.x), min(0i, -50834i), var_4.e.x ^ 1i), ~vec4<i32>(-15497i, var_1.b.x, -2147483647i, -1i)) ^ -var_4.a.a, u_input.b);
}

