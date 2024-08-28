struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: vec2<f32>;

var<private> global2: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x ^ _wgslsmith_add_i32(abs(u_input.a.x), -9527i), -_wgslsmith_add_i32(-u_input.a.x, -u_input.a.x), firstLeadingBit(~(-30011i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(u_input.a.x, 12536i, u_input.a.x, u_input.a.x)))), vec4<i32>(0i, u_input.a.x, reverseBits(select(u_input.a.x, 0i, u_input.a.x < -1i)), _wgslsmith_clamp_i32(~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -2147483647i, u_input.a.x)));
    let var_1 = vec2<f32>(-1649f, _wgslsmith_f_op_f32(trunc(-2458f)));
    var var_2 = _wgslsmith_div_u32(~_wgslsmith_clamp_u32(min(123052u, 94053u), _wgslsmith_dot_vec2_u32(vec2<u32>(34208u, 124766u), vec2<u32>(1u, 24552u)), 1u) & 1u, ~0u);
    global1 = var_1;
    var var_3 = vec2<u32>(1u, 1u);
    return vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(-1646f * -610f))))) - _wgslsmith_f_op_f32(abs(611f))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<i32>, arg_3: bool) -> vec2<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(arg_1, global1.x)), -1070f, global1.x);
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.x, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 418f) - _wgslsmith_f_op_f32(546f * global1.x))), vec4<f32>(_wgslsmith_f_op_f32(select(-2346f, global1.x, u_input.a.x < arg_2.x)), 1742f, _wgslsmith_f_op_f32(floor(238f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - global1.x)))));
    var var_2 = var_1;
    var_0 = var_2.a;
    return _wgslsmith_f_op_vec2_f32(var_2.a.yw * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_2.a.wx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3()), vec2<f32>(-1881f, 1639f)))))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(-585f, _wgslsmith_f_op_f32(2280f - global1.x)), _wgslsmith_f_op_f32(-global1.x))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-197f, 1375f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, 1000f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-455f, global1.x) - vec2<f32>(1682f, global1.x))), arg_2)) - vec2<f32>(835f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))) + _wgslsmith_f_op_vec2_f32(func_2(select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 12u)], arg_2 || global0[_wgslsmith_index_u32(0u, 12u)]), vec3<bool>(arg_2 || arg_2, true, arg_2), false), -887f, arg_0.a, any(!vec2<bool>(arg_2, arg_2)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-313f, -545f, -1605f, 256f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, 759f), vec4<f32>(global1.x, -859f, global1.x, global1.x)))))));
    global2 = global0[_wgslsmith_index_u32(102577u, 12u)];
    var_0 = -500f;
    return 65962u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !((1u < func_1(Struct_3(u_input.a), Struct_3(vec3<i32>(u_input.a.x, u_input.a.x, 54251i)), true, u_input.a.xy)) && (!global0[_wgslsmith_index_u32(81067u, 12u)] | !global0[_wgslsmith_index_u32(69691u, 12u)])) & false;
    global2 = false || !(!global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(33491u, 65555u), 12u)]);
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(~firstLeadingBit(52254u), _wgslsmith_dot_vec2_u32(vec2<u32>(65695u, select(0u, 27713u, global0[_wgslsmith_index_u32(6487u, 12u)])), ~vec2<u32>(4525u, 4294967295u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), ~_wgslsmith_clamp_u32(170913u, 4294967295u, 9122u) & 1u, _wgslsmith_mult_u32(1u, 1u) ^ (1u ^ func_1(Struct_3(u_input.a), Struct_3(u_input.a), false, u_input.a.zx))), ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<u32>(22601u, 23494u, 59594u, 78089u), false), select(vec4<u32>(0u, 1u, 23559u, 1u), vec4<u32>(0u, 98008u, 4294967295u, 95770u), vec4<bool>(global0[_wgslsmith_index_u32(31248u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(55713u, 12u)], global0[_wgslsmith_index_u32(3784u, 12u)]))), ~vec4<u32>(4294967295u, 1u, 1u, 4294967295u)));
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.x, global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(~45654u, 39913u, var_0.x, var_0.x >> (var_0.x % 32u)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(9006u, var_0.x, var_0.x, var_0.x) >> (vec4<u32>(17805u, var_0.x, var_0.x, 0u) % vec4<u32>(32u)), reverseBits(vec4<u32>(var_0.x, var_0.x, var_0.x, 1u))), vec4<u32>(0u, ~0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(62673u, var_0.x, var_0.x, var_0.x), vec4<u32>(1u, var_0.x, 4294967295u, 0u)), _wgslsmith_clamp_u32(29343u, var_0.x, 108239u)), (6279u << (var_0.x % 32u)) ^ var_0.x)));
}

