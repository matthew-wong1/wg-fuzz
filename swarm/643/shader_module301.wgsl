struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>) -> vec4<u32> {
    return ~(~firstLeadingBit(vec4<u32>(u_input.e, u_input.a.x, ~u_input.a.x, _wgslsmith_div_u32(u_input.b.x, 4294967295u))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = u_input.d;
    let var_1 = ~max(u_input.b, ~u_input.b & u_input.b);
    let var_2 = _wgslsmith_mult_vec2_u32(~vec2<u32>(var_1.x, 11903u), max(u_input.a, (vec2<u32>(16413u, u_input.c) & vec2<u32>(4294967295u, 11803u)) | vec2<u32>(var_1.x, u_input.c))) | abs(abs(func_1(vec2<bool>(true, true), vec4<i32>(1i, arg_0.a, var_0, arg_0.a)).yw << (vec2<u32>(u_input.c, u_input.b.x) % vec2<u32>(32u))));
    var var_3 = Struct_3(_wgslsmith_mult_vec2_u32(u_input.b.yy, var_1.xx), arg_0.b, arg_0, all(vec3<bool>(!(var_2.x < var_2.x), true, u_input.d == _wgslsmith_dot_vec2_i32(arg_0.b.d.yx, vec2<i32>(0i, 0i)))));
    let var_4 = vec2<i32>(_wgslsmith_div_i32(~abs(0i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.d.x, 54381i, var_0), vec3<i32>(var_0, u_input.d, -23165i)), _wgslsmith_sub_i32(u_input.d, 41379i))) & -arg_0.a, _wgslsmith_sub_i32(-21666i, u_input.d));
    return var_3.b.a.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>) -> StorageBuffer {
    let var_0 = !vec4<bool>(true, true, false, u_input.d == ~(u_input.d ^ -30457i));
    let var_1 = vec4<f32>(1044f, _wgslsmith_f_op_f32(func_3(Struct_2(u_input.d | _wgslsmith_mod_i32(-1i, u_input.d), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -144f, -323f) * arg_0), -u_input.d, ~(-1i), -vec3<i32>(2147483647i, 12282i, 1031i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1665f)))), -1528f);
    var var_2 = _wgslsmith_div_f32(var_1.x, var_1.x);
    var var_3 = ~(min(abs(vec4<i32>(-1i, -2951i, -58772i, u_input.d)) | (vec4<i32>(-1i, u_input.d, u_input.d, u_input.d) | vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)), ~abs(vec4<i32>(-11182i, u_input.d, u_input.d, u_input.d))) << (countOneBits(func_1(vec2<bool>(true, var_0.x), max(vec4<i32>(u_input.d, 0i, u_input.d, 1i), vec4<i32>(1i, u_input.d, 1i, u_input.d)))) % vec4<u32>(32u)));
    let var_4 = Struct_3(vec2<u32>(42428u | _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_1, vec4<u32>(u_input.c, 1u, arg_1.x, 1u), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, u_input.b.x)), vec4<u32>(arg_1.x, 58870u, 6746u, 35457u)), _wgslsmith_clamp_u32(55414u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.e, arg_1.x, 1u), vec4<u32>(arg_1.x, arg_1.x, 1u, arg_1.x)), reverseBits(abs(u_input.a.x)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(2626f)), var_1.x, _wgslsmith_f_op_f32(max(1458f, 1346f))), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.d, select(u_input.d, var_3.x, true)), ~u_input.d), reverseBits(-1i) & var_3.x, var_3.wxw), Struct_2(firstLeadingBit(_wgslsmith_mult_i32(~var_3.x, min(var_3.x, -16403i))), Struct_1(vec3<f32>(-455f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_0.x + var_1.x)), u_input.d, u_input.d, -vec3<i32>(u_input.d, var_3.x, 1i))), all(!var_0.wxw) | (u_input.a.x >= ~(~arg_1.x)));
    return StorageBuffer(_wgslsmith_f_op_f32(sign(-260f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = 1u;
    let var_1 = vec2<bool>(true, true);
    let var_2 = ~vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 36663u, u_input.a.x), vec4<u32>(u_input.c, u_input.b.x, 4294967295u, u_input.b.x)) << (reverseBits(0u) % 32u), u_input.e);
    let x = u_input.a;
    s_output = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-311f, 120f, -310f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(239f, -1130f, 1164f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1193f, 172f), -149f, _wgslsmith_f_op_f32(f32(-1f) * -599f)))), func_1(var_1, select(-(vec4<i32>(u_input.d, u_input.d, -1i, u_input.d) & vec4<i32>(-8701i, u_input.d, -2147483647i, 0i)), reverseBits(-vec4<i32>(u_input.d, u_input.d, -1i, u_input.d)), select(vec4<bool>(var_1.x, false, var_1.x, false), !vec4<bool>(var_1.x, false, false, var_1.x), select(vec4<bool>(false, var_1.x, true, true), vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false))))));
}

