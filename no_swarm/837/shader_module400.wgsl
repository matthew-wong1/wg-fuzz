struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> i32 {
    return u_input.b.x >> (((~abs(u_input.a) | (u_input.a & ~4294967295u)) | ~firstTrailingBit(u_input.a ^ u_input.a)) % 32u);
}

fn func_3(arg_0: i32, arg_1: i32) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -587f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1873f), -156f)))), !(!vec3<bool>(true, true, any(vec2<bool>(false, false)))), 34402u);
    var_0 = Struct_1(var_0.a, var_0.b, 48892u);
    var_0 = Struct_1(var_0.a, var_0.b, firstTrailingBit(~0u));
    let var_1 = Struct_1(-619f, select(!(!vec3<bool>(false, var_0.b.x, var_0.b.x)), select(var_0.b, !vec3<bool>(false, var_0.b.x, false), true), false), firstTrailingBit(~(~_wgslsmith_div_u32(var_0.c, u_input.a))));
    let var_2 = u_input.a >= 16660u;
    return vec3<u32>(1u, _wgslsmith_mult_u32(u_input.a, 7072u) ^ _wgslsmith_mod_u32(~46474u, ~(4294967295u << (var_0.c % 32u))), u_input.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> f32 {
    let var_0 = select(u_input.b.xwz, vec3<i32>(-u_input.b.x, -_wgslsmith_dot_vec4_i32(max(vec4<i32>(25414i, 2147483647i, u_input.b.x, 68680i), u_input.b), -arg_0), ~(-8200i)), all(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(725f))), 1228f);
    let var_2 = reverseBits(~abs(func_2()));
    var var_3 = var_2;
    var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec2_i32(arg_0.wy, u_input.b.yy), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b, arg_0), u_input.b), func_2() | 2147483647i) >> (func_3(-var_0.x, 6309i | var_0.x) % vec3<u32>(32u)), vec3<i32>(min(_wgslsmith_sub_i32(0i, var_2), -1i), ~_wgslsmith_sub_i32(-2147483647i, i32(-1i) * -1i), _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, firstTrailingBit(1i)), _wgslsmith_div_i32(min(arg_0.x, var_2), _wgslsmith_sub_i32(arg_0.x, -29227i)))));
    return _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(450f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-647f))))) - var_1));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool) -> Struct_1 {
    var var_0 = u_input.b.x;
    var var_1 = true;
    var_1 = arg_1;
    var_1 = u_input.a != (~u_input.a << (1u % 32u));
    var var_2 = arg_0.zy;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(ceil(var_2.x)))), vec3<bool>(false, true, arg_1), 52693u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~20364u;
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2199f, 551f, 1019f))) * vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.b.x, -1i, u_input.b.x, 2147483647i), u_input.a)), -367f, _wgslsmith_f_op_f32(select(598f, 755f, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1767f, 312f, -1530f), _wgslsmith_f_op_vec3_f32(vec3<f32>(732f, 139f, 492f) - vec3<f32>(2007f, -1082f, 1873f)))))), true);
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(702f))), var_1.a)))));
    var var_3 = true & (any(var_1.b.yy) && (true != any(vec2<bool>(var_1.b.x, var_1.b.x))));
    var var_4 = firstTrailingBit(countOneBits(~_wgslsmith_mod_i32(1i, firstTrailingBit(u_input.b.x))));
    var_4 = -8777i;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_div_f32(var_1.a, 136f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1249f, _wgslsmith_f_op_f32(var_1.a * 199f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(-var_1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(-61259i, var_1.a, ~u_input.b.x, ~(~var_1.c));
}

