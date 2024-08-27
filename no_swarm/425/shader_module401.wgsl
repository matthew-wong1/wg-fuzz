struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, true, false, false, true, true, true, true, false, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-182f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-880f, 442f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1608f)), _wgslsmith_f_op_f32(f32(-1f) * -1719f), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(29465u, u_input.b.x), 10u)]))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(133f + -1154f) + _wgslsmith_f_op_f32(max(-886f, 1157f)))))));
    return ~(-1i);
}

fn func_3() -> vec2<bool> {
    global0 = array<bool, 10>();
    var var_0 = !select(vec3<bool>(abs(u_input.a.x) <= _wgslsmith_clamp_i32(u_input.c, u_input.a.x, -67795i), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)])), u_input.c == u_input.a.x), select(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 10u)], false, false), false), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(17832u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)])), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], false, false)), true), any(vec2<bool>(true && global0[_wgslsmith_index_u32(60779u, 10u)], any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 10u)])))));
    var var_1 = vec3<u32>(u_input.b.x, u_input.b.x, reverseBits(_wgslsmith_add_u32(1u, ~(~0u))));
    var var_2 = Struct_1(max(u_input.b.x, 4294967295u) != (min(23599u, countOneBits(u_input.b.x)) << (var_1.x % 32u)), select(_wgslsmith_mult_vec2_u32(~var_1.xx << ((vec2<u32>(u_input.b.x, 1u) << (var_1.zy % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(var_1.xx, u_input.b) ^ vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b, all(vec3<bool>(var_0.x & global0[_wgslsmith_index_u32(u_input.b.x, 10u)], var_0.x && var_0.x, any(vec2<bool>(true, false))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(873f)));
    return vec2<bool>(true & global0[_wgslsmith_index_u32(~countOneBits(~2099u), 10u)], -2858i <= -u_input.c);
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1362f, 1174f) - vec2<f32>(-969f, 266f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, -791f)), _wgslsmith_f_op_f32(f32(-1f) * -104f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1851f))))));
    global0 = array<bool, 10>();
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1797f * 1221f)))), var_0.x, -1233f) + vec3<f32>(var_0.x, _wgslsmith_f_op_f32(1170f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1991f + var_0.x) - -106f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(ceil(var_0.x))))));
    var var_2 = vec4<bool>(true, global0[_wgslsmith_index_u32(21580u, 10u)], u_input.b.x <= 39997u, all(!(!func_3())));
    var var_3 = vec2<bool>(var_2.x, var_2.x);
    return Struct_2(u_input.b.x & 4294967295u, countOneBits(countOneBits(~vec3<u32>(u_input.b.x, 74447u, 4294967295u))) ^ firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(0u, 2833u), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.b.x)), 0u, !var_2.zwx, ~_wgslsmith_mult_vec2_u32(~vec2<u32>(68796u, u_input.b.x), abs(select(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b, var_2.yx))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-30900i, -2147483647i >> (u_input.b.x % 32u)), 0i), u_input.c, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, u_input.a.x, 25195i, -2147483647i), -vec4<i32>(5569i, u_input.a.x, u_input.a.x, -31112i)), u_input.c), 1i), vec4<i32>(u_input.a.x, -23444i, u_input.c, _wgslsmith_mult_i32(func_1(), u_input.a.x & u_input.a.x)));
    let var_1 = func_2();
    var var_2 = func_2();
    global0 = array<bool, 10>();
    let var_3 = Struct_3(Struct_2(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, _wgslsmith_div_u32(u_input.b.x, 4294967295u)), min(93895u, 0u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_2.e.x, 4294967295u), ~var_2.b), _wgslsmith_mod_u32(max(var_1.e.x, 56011u), func_2().b.x), var_2.d, _wgslsmith_mult_vec2_u32(var_1.b.xy, select(~vec2<u32>(u_input.b.x, 54397u), ~u_input.b, true))), vec4<i32>(_wgslsmith_sub_i32(var_0, u_input.a.x), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.a >> (vec4<u32>(var_2.a, u_input.b.x, var_1.b.x, 26881u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_0, u_input.c, var_0), vec4<i32>(var_0, -2147483647i, u_input.c, u_input.c), u_input.a)), u_input.c), firstLeadingBit(countOneBits(2147483647i)), _wgslsmith_sub_i32(min(_wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.wz), _wgslsmith_mod_i32(u_input.a.x, var_0)), select(u_input.a.x | 11912i, -6524i, func_2().d.x))), vec2<bool>(false, false), _wgslsmith_f_op_f32(-774f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2607f, -1890f)) - -137f), -1334f)));
    var var_4 = var_3.a;
    var_4 = Struct_2(39533u, select(var_4.b, var_1.b, !(!var_2.d)) ^ var_4.b, 5631u, !select(var_1.d, select(func_2().d, var_4.d, var_2.d.x || false), abs(var_3.b.x) > 35727i), max(vec2<u32>(11155u, _wgslsmith_add_u32(countOneBits(59959u), _wgslsmith_mult_u32(57509u, 9288u))), func_2().b.zy ^ vec2<u32>(23848u, firstLeadingBit(0u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, ~(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b.x, var_4.e.x, var_1.a), vec4<u32>(0u, var_4.b.x, 1u, 69871u)), ~vec4<u32>(5200u, var_3.a.c, 8932u, 4294967295u), vec4<bool>(false, var_2.d.x, var_4.d.x, true))), -307f, var_4.c);
}

