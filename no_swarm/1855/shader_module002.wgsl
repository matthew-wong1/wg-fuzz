struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(-543f, 728f, -292f, 974f, 759f, 263f, 1522f, -1786f, 884f, 442f, 1789f, 119f, 515f, -268f, -1000f, 873f, -113f, 771f, -298f, 237f, 493f, -1205f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_5(_wgslsmith_sub_vec2_i32(max(~reverseBits(u_input.a), u_input.a), _wgslsmith_div_vec2_i32(select(~vec2<i32>(u_input.a.x, -15606i), _wgslsmith_mult_vec2_i32(vec2<i32>(-28294i, u_input.a.x), u_input.a), vec2<bool>(false, true)), ~u_input.a >> (countOneBits(vec2<u32>(arg_0.e.c, 4294967295u)) % vec2<u32>(32u)))), !(!(!any(vec3<bool>(false, false, true)))));
    let var_1 = var_0;
    global0 = array<f32, 22>();
    var var_2 = ~_wgslsmith_add_vec3_i32(~(~_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.x, var_1.a.x, u_input.a.x), vec3<i32>(var_1.a.x, var_0.a.x, var_0.a.x))), select(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 1i, -9957i), vec3<i32>(-33256i, var_1.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, -1i, 38134i)), -_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a.x, -1i, var_0.a.x), vec3<i32>(-2147483647i, -59976i, 53276i)), !(!vec3<bool>(var_1.b, var_0.b, true))));
    global0 = array<f32, 22>();
    return -467f;
}

fn func_2(arg_0: Struct_5, arg_1: vec2<bool>) -> vec4<i32> {
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(select(4294967295u, 1u, arg_1.x), 22u)])), _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 22u)], 280f, global0[_wgslsmith_index_u32(1852u, 22u)]) - vec3<f32>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], -352f)), Struct_1(global0[_wgslsmith_index_u32(25321u, 22u)], 1u, 1u), -679f, Struct_1(-1498f, 1u, 63783u), Struct_1(772f, 73760u, 89758u)))), -1258f), Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 22u)] + global0[_wgslsmith_index_u32(1u, 22u)]), 1u, max(_wgslsmith_clamp_u32(~1u, select(4294967295u, 23118u, arg_1.x), _wgslsmith_div_u32(64637u, 34217u)), _wgslsmith_div_u32(19982u, 88217u))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(29265u, 0u, 1u)), vec3<u32>(75442u, 4294967295u, 39599u)), 22u)]), _wgslsmith_f_op_f32(221f - 829f), all(!select(vec3<bool>(true, true, true), vec3<bool>(arg_1.x, arg_1.x, arg_0.b), vec3<bool>(arg_1.x, false, false))))), Struct_1(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~firstTrailingBit(38477u), 22u)])), ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(52044u, 11548u)), vec2<u32>(0u, 43425u)), 0u), Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(0u, _wgslsmith_div_u32(94400u, 35916u)), 22u)]), _wgslsmith_add_u32(1u, 1u), ~abs(_wgslsmith_add_u32(1u, 0u))));
    return ~(~(-vec4<i32>(2147483647i, arg_0.a.x, arg_0.a.x, u_input.a.x)) & abs(vec4<i32>(u_input.a.x, 0i, arg_0.a.x, 0i))) | firstTrailingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(-1959i, arg_0.a.x, -2147483647i, u_input.a.x) >> (vec4<u32>(var_0.b.c, var_0.e.b, 9442u, var_0.e.c) % vec4<u32>(32u)), vec4<i32>(-50228i, reverseBits(-2147483647i), 1i, u_input.a.x)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = !(!(!vec2<bool>(true || arg_0.x, arg_1.d.c > arg_1.b.b)));
    var var_1 = select(vec3<i32>(_wgslsmith_dot_vec4_i32(select(func_2(Struct_5(vec2<i32>(19212i, 2147483647i), false), vec2<bool>(var_0.x, arg_0.x)), vec4<i32>(-59314i, u_input.a.x, 1i, u_input.a.x) >> (vec4<u32>(4294967295u, arg_1.d.b, 1u, 45921u) % vec4<u32>(32u)), arg_0), vec4<i32>(1i, u_input.a.x, 45228i, u_input.a.x) | (vec4<i32>(u_input.a.x, u_input.a.x, -38965i, u_input.a.x) | vec4<i32>(1i, u_input.a.x, -33185i, u_input.a.x))), countOneBits(reverseBits(i32(-1i) * -2147483647i)), ~2147483647i), func_2(Struct_5(vec2<i32>(u_input.a.x, u_input.a.x) >> (select(vec2<u32>(4294967295u, arg_1.d.c), vec2<u32>(arg_1.b.b, 4294967295u), arg_0.x) % vec2<u32>(32u)), arg_0.x), arg_0.xx).yzw, true);
    var_1 = ~_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, -28024i) << (~vec3<u32>(0u, arg_1.b.b, arg_1.d.c) % vec3<u32>(32u)), -vec3<i32>(u_input.a.x, -1i, var_1.x) ^ (vec3<i32>(u_input.a.x, -1i, -31708i) & vec3<i32>(1i, -9945i, var_1.x))) << (vec3<u32>(43417u, 38147u, _wgslsmith_mult_u32(arg_1.b.b, ~(64787u << (1u % 32u)))) % vec3<u32>(32u));
    global0 = array<f32, 22>();
    let var_2 = true;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(-400f, 352f, -124f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(arg_1.b.c, 22u)], global0[_wgslsmith_index_u32(arg_1.d.b, 22u)])), 1f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2227f), arg_1.e.a, _wgslsmith_div_f32(209f, arg_1.e.a), _wgslsmith_f_op_f32(824f + global0[_wgslsmith_index_u32(20698u, 22u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, 511f, arg_1.c, 303f) - vec4<f32>(-1044f, arg_1.b.a, arg_1.d.a, 1032f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1170f, 211f, global0[_wgslsmith_index_u32(0u, 22u)], -1429f), vec4<f32>(-113f, global0[_wgslsmith_index_u32(1u, 22u)], -777f, global0[_wgslsmith_index_u32(0u, 22u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(false, false, true, true), Struct_2(vec3<f32>(-798f, global0[_wgslsmith_index_u32(43987u, 22u)], -2382f), Struct_1(-1000f, 1u, 52293u), 956f, Struct_1(330f, 22306u, 78060u), Struct_1(-1991f, 4294967295u, 0u)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(54695u, 22u)], -1120f, global0[_wgslsmith_index_u32(42763u, 22u)], 1698f), vec4<f32>(-794f, global0[_wgslsmith_index_u32(31217u, 22u)], -178f, 244f), false))))), true & (_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(47342u, 22u)]) >= -1187f), max(~((vec3<i32>(-1i, -63270i, u_input.a.x) & vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)) | vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, -abs(-2147483647i))));
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    var var_1 = Struct_1(1011f, 1u, abs(abs(_wgslsmith_add_u32(1u, 131258u))) & ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(52347u, 90215u), vec2<u32>(10301u, 1u))));
    var var_2 = Struct_5(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(2147483647i, _wgslsmith_add_i32(0i, var_0.c.x))), -u_input.a), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec4_f32(func_1(!vec4<bool>(var_0.b, var_2.b, var_2.b, true), Struct_2(var_0.a.yxx, Struct_1(174f, var_1.b, var_1.c), var_1.a, Struct_1(328f, var_1.c, var_1.b), Struct_1(-285f, var_1.b, var_1.b)))).xww, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(216f, 851f, -1382f))) - _wgslsmith_f_op_vec3_f32(max(var_0.a.zzw, var_0.a.zzw))), true || select(var_2.b, var_2.b, true)))));
}

