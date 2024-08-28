struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32) -> f32 {
    global0 = array<Struct_2, 32>();
    var var_0 = u_input.d;
    var var_1 = ~firstTrailingBit(-2147483647i);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1073f + -323f)))))), Struct_1(_wgslsmith_div_vec2_i32(-_wgslsmith_mod_vec2_i32(u_input.b.xx, vec2<i32>(-8174i, u_input.b.x)), _wgslsmith_div_vec2_i32(-u_input.b.yx, vec2<i32>(3266i, 2846i))), u_input.a.x, u_input.b.x, true && any(vec2<bool>(true, true)), 77974i), _wgslsmith_f_op_f32(398f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-2208f, -1000f)))) - 270f)), ~(~firstLeadingBit(_wgslsmith_div_u32(1u, u_input.c.x))));
    var var_3 = global0[_wgslsmith_index_u32(33639u, 32u)];
    return _wgslsmith_f_op_f32(-860f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + var_3.c));
}

fn func_2() -> vec2<u32> {
    let var_0 = vec3<bool>(!(u_input.a.x <= _wgslsmith_add_i32(-17328i, -47271i)), false, _wgslsmith_div_f32(-220f, -1734f) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.b.x))))));
    global0 = array<Struct_2, 32>();
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(69214u, u_input.d), firstTrailingBit(u_input.d) ^ reverseBits(u_input.c.x), 9330u), _wgslsmith_add_u32(u_input.c.x, 4294967295u), firstTrailingBit(_wgslsmith_add_u32(1u, 0u & (u_input.d >> (u_input.d % 32u)))));
    var var_2 = Struct_3(800f, select(vec3<bool>(true, var_0.x, var_0.x), var_0, var_0), !var_0, global0[_wgslsmith_index_u32(1u, 32u)]);
    let var_3 = any(vec4<bool>(true, !any(!vec4<bool>(var_0.x, var_0.x, var_2.b.x, true)), var_2.d.b.d, all(var_0.yx)));
    return u_input.c.ww;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = vec4<i32>(reverseBits(1i), ~(-1i << (arg_0.d.d % 32u)), -27235i, _wgslsmith_add_i32(u_input.a.x, ~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(arg_0.d.b.b, u_input.b.x, arg_0.d.b.e, 1i)))) >> (u_input.c % vec4<u32>(32u));
    let var_1 = ~(arg_0.d.d ^ 26621u);
    let var_2 = u_input.c.x << ((u_input.d ^ arg_0.d.d) % 32u);
    var var_3 = arg_0;
    let var_4 = var_3.d.d;
    return (vec2<u32>(0u, ~var_1) & func_2()) << (vec2<u32>(0u, _wgslsmith_mult_u32(arg_1.d.d, 50589u >> (arg_0.d.d % 32u))) % vec2<u32>(32u));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>) -> i32 {
    let var_0 = any(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), 4294967295u <= func_1(Struct_3(-980f, vec3<bool>(false, true, false), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(1u, 32u)]), Struct_3(350f, vec3<bool>(false, false, true), vec3<bool>(true, false, false), Struct_2(256f, Struct_1(u_input.a.zw, -2147483647i, 0i, true, arg_0), 137f, u_input.d))).x), false));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-967f, 1498f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(241f)) * 501f), select(true, true, all(vec3<bool>(var_1, var_1, var_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-263f, 1315f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(213f, _wgslsmith_f_op_f32(1143f * -758f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -243f))), -228f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1037f, -105f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 1625f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1818f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    return -max(arg_0, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    var var_0 = _wgslsmith_sub_u32(u_input.d, ~755u);
    var var_1 = _wgslsmith_dot_vec3_i32(u_input.a.wyy, firstTrailingBit(vec3<i32>(~u_input.b.x, u_input.a.x, func_4(abs(u_input.b.x), func_1(Struct_3(-695f, vec3<bool>(false, true, true), vec3<bool>(false, true, true), Struct_2(2647f, Struct_1(vec2<i32>(-2147483647i, u_input.b.x), 12370i, 1i, true, u_input.b.x), -2205f, u_input.c.x)), Struct_3(-1000f, vec3<bool>(false, false, true), vec3<bool>(true, false, true), Struct_2(938f, Struct_1(vec2<i32>(1i, u_input.b.x), u_input.b.x, 34282i, true, 1i), -336f, 103031u)))))));
    let var_2 = -1000f;
    let var_3 = Struct_1(abs(vec2<i32>(36483i ^ u_input.a.x, u_input.a.x)) & vec2<i32>(firstTrailingBit(-u_input.b.x), u_input.a.x), u_input.b.x, -u_input.b.x, !((1u ^ (67047u << (u_input.d % 32u))) > u_input.d), -23702i);
    let var_4 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~0u, ~u_input.c.x, ~1u), u_input.c.wyx), u_input.c.wyz), ~max(~u_input.a.wz | vec2<i32>(2147483647i, var_3.e), ~(-vec2<i32>(-1i, -58001i))), u_input.d);
}

