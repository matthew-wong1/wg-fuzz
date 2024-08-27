struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(u_input.d.x);
    var var_1 = Struct_1(abs(~(~var_0.a) & -1i));
    var_1 = Struct_1(2147483647i);
    var var_2 = abs(_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(2305u, u_input.b.x)), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.b.wz))) & ((vec2<u32>(0u, u_input.e) ^ (vec2<u32>(6001u, 24471u) >> (u_input.c.yz % vec2<u32>(32u)))) << (~(~vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u))));
    var_1 = Struct_1(select(-(~(~var_1.a)), _wgslsmith_add_i32(var_0.a, var_0.a), (_wgslsmith_div_i32(u_input.d.x, 37625i) << (0u % 32u)) != -2147483647i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1466f * 1224f) * _wgslsmith_f_op_f32(step(382f, -156f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> u32 {
    var var_0 = Struct_1(-u_input.d.x | ~u_input.d.x);
    var var_1 = !any(!arg_0.yyy);
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-984f, 471f), vec2<f32>(249f, -285f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-375f, 1064f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-628f, 1136f))))));
    let var_4 = _wgslsmith_f_op_f32(func_3());
    return ~reverseBits(u_input.e);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.d.x, u_input.d.x), i32(-1i) * -2147483647i, i32(-1i) * -(u_input.d.x >> (u_input.a % 32u)), 5623i), vec4<i32>(firstTrailingBit(~u_input.d.x), u_input.d.x << (func_2(vec4<bool>(false, true, false, true), false) % 32u), _wgslsmith_sub_i32(-11095i, min(-2147483647i, -33886i)), 10358i) ^ -firstLeadingBit(-vec4<i32>(0i, 17900i, 13997i, u_input.d.x)));
    var var_1 = Struct_1(49519i);
    let var_2 = Struct_1(var_1.a);
    var var_3 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d.xy, _wgslsmith_sub_vec2_i32(u_input.d.xy, min(vec2<i32>(-1i, -2147483647i), u_input.d.yz))), _wgslsmith_mod_vec2_i32(u_input.d.xx, firstTrailingBit(vec2<i32>(u_input.d.x, var_1.a)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(-27003i, var_2.a) & u_input.d.zy, vec2<i32>(u_input.d.x, var_2.a))));
    let var_4 = !(!(all(vec4<bool>(false, false, false, false)) | any(vec3<bool>(true, false, false))) && false);
    return Struct_1(u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = 1u;
    var_0 = func_1();
    let var_2 = !(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_3 = ~(~firstTrailingBit(~u_input.d.zy)) | vec2<i32>(0i, ~(~firstTrailingBit(36982i)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, abs(min(min(var_1, var_1), 8039u)) ^ ~1u, ~abs(max(u_input.d.zy ^ vec2<i32>(2147483647i, -47750i), vec2<i32>(-1i, var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1028f)), _wgslsmith_f_op_f32(-1413f + 102f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-466f, -2702f) + _wgslsmith_div_f32(318f, 1772f))))));
}

