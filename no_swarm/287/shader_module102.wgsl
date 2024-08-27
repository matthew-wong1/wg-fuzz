struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(51341u, 49409u, 1u, 4294967295u, 1u, 21576u, 59549u, 53234u, 1u, 0u, 4294967295u, 39870u, 0u, 1u, 4294967295u, 15614u, 4294967295u, 1u, 34799u, 35699u, 1290u, 75919u, 4294967295u);

var<private> global1: array<Struct_3, 23>;

var<private> global2: f32 = -219f;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<u32> {
    let var_0 = global1[_wgslsmith_index_u32(65784u, 23u)];
    let var_1 = Struct_3(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_div_f32(var_0.a, var_0.b.x), true))), _wgslsmith_f_op_f32(-806f - var_0.b.x), -1419f), !var_0.c, var_0.d, max(select(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(2688i, var_0.d.b.x), var_0.e, vec2<i32>(2147483647i, var_0.e.x)), _wgslsmith_mult_vec2_i32(var_0.e, var_0.d.b.xz), vec2<bool>(true, false)), var_0.d.b.xz ^ -vec2<i32>(var_0.d.c, var_0.d.c), true), vec2<i32>(-22459i, var_0.e.x)));
    let var_2 = select(vec2<bool>(all(var_0.c), !(!var_1.c.x) || var_1.c.x), var_1.c.xy, var_1.c.x);
    let var_3 = Struct_2(var_1.d.a);
    var var_4 = vec4<i32>(firstTrailingBit(~2147483647i), ~1i, abs(select(639i, ~(-1i), var_0.c.x)) | abs(_wgslsmith_clamp_i32(select(var_1.d.c, 28835i, var_1.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2998i, -2147483647i, var_1.e.x), vec4<i32>(-46301i, 40571i, -27800i, -1i)), -var_1.e.x)), select(var_0.e.x, 33075i, !all(var_0.c.wzy)));
    return ~select(abs(abs(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], 26170u, global0[_wgslsmith_index_u32(31466u, 23u)]))), vec4<u32>(~u_input.c & var_0.d.a.x, 4294967295u << (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(8685u, 23u)], var_0.d.a.x) % 32u), ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(830u, 1u), 23u)], ~_wgslsmith_div_u32(19266u, global0[_wgslsmith_index_u32(91883u, 23u)])), vec4<bool>(!var_2.x, all(!var_0.c), var_2.x, true));
}

fn func_2() -> f32 {
    global1 = array<Struct_3, 23>();
    var var_0 = _wgslsmith_mult_vec4_u32(func_3() << ((min(~vec4<u32>(global0[_wgslsmith_index_u32(1u, 23u)], u_input.b, 1u, 48883u), ~vec4<u32>(1u, 0u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 23u)])) << (_wgslsmith_mod_vec4_u32(vec4<u32>(69481u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)], u_input.c, global0[_wgslsmith_index_u32(u_input.b, 23u)]), ~vec4<u32>(0u, 4294967295u, u_input.c, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)), reverseBits(vec4<u32>(~1u, ~reverseBits(0u), max(~u_input.c, ~global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), u_input.a.x)));
    var var_1 = vec2<bool>(false, true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-242f * -363f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(292f)), -381f, all(select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(true, true, true, var_1.x)))))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -516f) + _wgslsmith_f_op_f32(304f * 304f)), _wgslsmith_div_f32(-442f, _wgslsmith_f_op_f32(-520f - 1448f)))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(845f, 905f))))), -941f));
    global2 = var_0.x;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-638f))));
    let var_1 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.b.yx, vec2<i32>(0i, countOneBits(2147483647i)), -arg_0.b.yz), ~countOneBits(arg_0.b.zz) & vec2<i32>(arg_0.c, arg_0.b.x));
    let var_2 = ~select(select(vec4<u32>(arg_0.a.x, max(4294967295u, 27118u), min(u_input.b, u_input.a.x), 56161u), max(min(vec4<u32>(35139u, u_input.b, arg_0.a.x, global0[_wgslsmith_index_u32(u_input.b, 23u)]), vec4<u32>(32502u, global0[_wgslsmith_index_u32(12815u, 23u)], 4294967295u, u_input.c)), firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(arg_0.a.x, 23u)], u_input.a.x, 20919u, 18239u))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false), any(vec2<bool>(false, true)))), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(10960u, 23u)], 4294967295u), vec4<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.b, 23u)], 83893u), 1u, func_3().x, u_input.c)), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_div_f32(-485f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-200f - -702f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec3<i32>(0i, -9678i, 1i), 29716i))) * _wgslsmith_f_op_f32(-1369f * 1989f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1090f)), _wgslsmith_f_op_f32(1000f * -2004f), _wgslsmith_div_f32(-260f, -1272f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1422f, -1858f, -2259f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1398f, -1208f, 414f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -564f, -507f), vec3<f32>(-450f, 295f, -2049f))), true))), select(vec3<bool>(true, false, false), vec3<bool>(select(true, false, true), all(vec4<bool>(false, false, false, false)), all(vec4<bool>(false, false, true, true))), false))), vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_clamp_vec3_u32(abs(u_input.a), u_input.a | u_input.a, func_3().zyy) >> (vec3<u32>(abs(8867u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 98405u, u_input.c), vec4<u32>(48986u, 1u, global0[_wgslsmith_index_u32(0u, 23u)], 2890u)), 0u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(~12450i, -40004i, abs(18382i)), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -2147483647i, -12577i), vec3<i32>(-14511i, 17302i, -1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(10763i, -1i, 2147483647i), vec3<i32>(-6561i, 1i, 1i), vec3<i32>(1i, -2147483647i, 21342i)))), -4305i), _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(countOneBits(-17802i), _wgslsmith_dot_vec2_i32(vec2<i32>(20051i, 0i), vec2<i32>(8913i, 0i)))), _wgslsmith_mod_vec2_i32(-vec2<i32>(1i, 1i), ~abs(vec2<i32>(42671i, 0i))), -firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(47399i, -12025i)))));
    let var_1 = ~var_0.d.a.x;
    global0 = array<u32, 23>();
    global1 = array<Struct_3, 23>();
    let var_2 = _wgslsmith_mult_u32(~_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.d.a.x, 1u, u_input.c), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 23u)], 23u)], 57979u, u_input.b, 20800u)), ~_wgslsmith_div_u32(4294967295u, 43337u)), _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(select(var_0.d.a, u_input.a, false), func_3().yzz), _wgslsmith_div_vec3_u32(vec3<u32>(~global0[_wgslsmith_index_u32(36823u, 23u)], var_0.d.a.x, var_1), vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.a.x, var_1, var_1, 1952u), vec4<u32>(u_input.c, 0u, 1u, 4294967295u)), 23u)], abs(u_input.b), 0u ^ var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(478f, 911f, var_0.a, 598f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-455f, var_0.b.x, var_0.b.x, -632f)))) * vec4<f32>(-446f, _wgslsmith_f_op_f32(func_1(var_0.d)), var_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0.b.x, var_0.a, var_0.c.x)), var_0.b.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)) - var_0.b))), _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(sign(var_0.a)))))), _wgslsmith_f_op_f32(945f - -248f), 290f);
}

