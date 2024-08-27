struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, true, true, true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global0 = array<bool, 22>();
    let var_0 = arg_1.b.wy;
    var var_1 = 1585f;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1198f), arg_2.c.x)) + -1647f), arg_1.b, arg_2);
    var var_3 = select(!(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)] | arg_2.b.x, true)), vec3<bool>(any(vec4<bool>(true, true, true, true)), !any(vec2<bool>(var_2.c.b.x, arg_2.b.x)), all(select(!vec4<bool>(false, true, var_2.c.b.x, true), vec4<bool>(true, arg_2.b.x, false, global0[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<bool>(var_2.c.b.x, false, false, false)))), global0[_wgslsmith_index_u32(u_input.d.x, 22u)]);
    return -392f;
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1104f * 442f) + _wgslsmith_f_op_f32(-1f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(-177f, Struct_2(-1000f, vec4<u32>(4294967295u, 4294967295u, 34162u, u_input.d.x), Struct_1(-10140i, vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 22u)], true), vec2<f32>(1907f, -242f))), Struct_1(-41372i, vec2<bool>(true, true), vec2<f32>(-880f, 589f)))), 1f), _wgslsmith_f_op_f32(trunc(-364f))))));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> vec4<f32> {
    let var_0 = !arg_0.c.b.x == all(!(!vec4<bool>(false, false, arg_0.c.b.x, global0[_wgslsmith_index_u32(u_input.d.x, 22u)])));
    global0 = array<bool, 22>();
    var var_1 = arg_0.c.c.x;
    let var_2 = vec4<bool>(all(!vec3<bool>(all(arg_0.c.b), all(vec3<bool>(true, true, true)), arg_1)), (any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 22u)], arg_0.c.b.x, arg_0.c.b.x)) | global0[_wgslsmith_index_u32(countOneBits(arg_0.b.x) << (u_input.d.x % 32u), 22u)]) != !(_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a)) > _wgslsmith_f_op_f32(func_2())), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(-638f, Struct_2(-1926f, arg_0.b, arg_0.c), Struct_1(-78229i, arg_0.c.b, arg_0.c.c)))))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a))), arg_0.a));
    let var_3 = Struct_1(select(min(-1i, ~0i) ^ -(0i << (arg_0.b.x % 32u)), _wgslsmith_add_i32(u_input.c, arg_0.c.a & -35987i), arg_0.c.b.x), var_2.xw, _wgslsmith_f_op_vec2_f32(arg_0.c.c * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(arg_0.c.c)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c.c.x, -1537f), arg_0.c.c)))))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.x) - _wgslsmith_f_op_f32(var_3.c.x - _wgslsmith_f_op_f32(min(var_3.c.x, var_3.c.x)))), var_3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1572f), arg_0, Struct_1(0i, var_3.b, var_3.c))) * arg_0.c.c.x), _wgslsmith_f_op_f32(-arg_0.c.c.x)));
}

fn func_4(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-398f, 1382f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) * -1000f)), _wgslsmith_mult_vec4_u32(vec4<u32>(~(~4294967295u), u_input.d.x, ~4294967295u, ~(68682u ^ u_input.d.x)), reverseBits(~countOneBits(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)))), Struct_1(u_input.b.x, vec2<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, 53150u), 22u)], select(-26585i, u_input.b.x, false) <= min(u_input.b.x, u_input.b.x)), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(361f))))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(sign(-511f)))));
    var var_2 = var_0.c;
    let var_3 = vec2<u32>(0u, _wgslsmith_mod_u32(var_0.b.x, 27663u));
    var_0 = Struct_2(_wgslsmith_div_f32(304f, -1000f), firstLeadingBit(var_0.b), Struct_1(-37177i, select(!select(var_0.c.b, var_0.c.b, global0[_wgslsmith_index_u32(1u, 22u)]), vec2<bool>(any(vec2<bool>(false, var_2.b.x)), false), vec2<bool>(false, var_0.c.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2426f - var_0.c.c.x), var_2.c.x))));
    return Struct_2(var_2.c.x, vec4<u32>(var_3.x, 4294967295u, ~(~var_0.b.x) | 48900u, _wgslsmith_add_u32(var_0.b.x, ~var_3.x)), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(890i >> (1u % 32u), var_0.c.a, ~1i), u_input.b), vec2<bool>(any(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 22u)], false)), false), vec2<f32>(_wgslsmith_f_op_f32(var_0.a + arg_0.x), -222f)));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> vec4<u32> {
    return vec4<u32>(_wgslsmith_sub_u32(~min(arg_0, 13497u) ^ abs(_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(arg_0, arg_0))), 4294967295u), ~(~(~(u_input.d.x ^ u_input.d.x))), firstLeadingBit(~arg_0), 19529u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_5(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.d.x, u_input.d.x, 23707u), vec3<u32>(u_input.d.x, u_input.d.x, 33990u)) << (reverseBits(vec3<u32>(4294967295u, 0u, 1u)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~vec3<u32>(22817u, 32698u, u_input.d.x), select(vec3<u32>(u_input.d.x, 0u, u_input.d.x), vec3<u32>(0u, 13586u, 4294967295u), true))), func_4(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(-1402f, vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), Struct_1(u_input.a, vec2<bool>(false, false), vec2<f32>(580f, -446f))), global0[_wgslsmith_index_u32(~4294967295u, 22u)]))), true);
    var_0 = ~vec4<u32>(~min(u_input.d.x, u_input.d.x), _wgslsmith_mod_u32(abs(107171u), u_input.d.x), _wgslsmith_div_u32(u_input.d.x, u_input.d.x), var_0.x) | ~(~(vec4<u32>(31979u, 63281u, var_0.x, u_input.d.x) | abs(vec4<u32>(u_input.d.x, 113279u, u_input.d.x, u_input.d.x))));
    let var_1 = vec3<i32>(u_input.a, -1i, reverseBits(min(_wgslsmith_dot_vec2_i32(u_input.b.yx, u_input.b.zz), u_input.a)));
    var var_2 = !vec3<bool>(true, all(select(func_4(vec4<f32>(1036f, -259f, 1120f, -230f)).c.b, !vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 22u)]), false)), global0[_wgslsmith_index_u32(~countOneBits(u_input.d.x ^ 0u), 22u)]);
    let var_3 = vec4<i32>(u_input.b.x << (~1u % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(var_1.x | -1i, var_1.x, _wgslsmith_div_i32(var_1.x, 6866i))), u_input.b), ~(1i & u_input.a) | ~var_1.x, -max(_wgslsmith_add_i32(_wgslsmith_sub_i32(-11184i, var_1.x), var_1.x), firstLeadingBit(_wgslsmith_div_i32(-51606i, 20159i))));
    let var_4 = !select(var_2.xy, select(select(vec2<bool>(var_2.x, true), !vec2<bool>(var_2.x, true), true), var_2.xy, all(!vec4<bool>(global0[_wgslsmith_index_u32(35804u, 22u)], false, var_2.x, global0[_wgslsmith_index_u32(50432u, 22u)]))), global0[_wgslsmith_index_u32(var_0.x, 22u)]);
    var_0 = select(firstTrailingBit(reverseBits(vec4<u32>(var_0.x >> (u_input.d.x % 32u), 1u, ~u_input.d.x, var_0.x))), vec4<u32>(firstTrailingBit(1u), _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.x, 26301u) ^ u_input.d.x, ~_wgslsmith_mod_u32(64093u, 17180u)), max(abs(u_input.d.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.d.x, 1u), var_0.yww)), u_input.d.x), select(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(56604u, 1u), vec2<u32>(4294967295u, 72055u))), var_0.x, true) != u_input.d.x);
    let var_5 = func_4(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(_wgslsmith_div_f32(319f, -1019f), ~vec4<u32>(1u, 72759u, u_input.d.x, 22461u), Struct_1(var_1.x, var_4, vec2<f32>(-1909f, -893f))), global0[_wgslsmith_index_u32(u_input.d.x, 22u)])).x, -176f, func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(369f, -3182f, 450f, -1944f)), vec4<f32>(1f, 1f, 1f, 1f))).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(968f - _wgslsmith_f_op_f32(round(1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1, _wgslsmith_mod_vec2_i32(select(vec2<i32>(abs(0i), -1i), ~u_input.b.xy | vec2<i32>(-2147483647i, -1i), !any(vec3<bool>(true, true, var_2.x))), firstTrailingBit(vec2<i32>(-5337i, _wgslsmith_dot_vec4_i32(vec4<i32>(9838i, -41790i, 1i, var_3.x), var_3)))));
}

