struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(vec3<bool>(!(!all(vec4<bool>(false, false, false, false))), false, _wgslsmith_sub_u32(~u_input.c.x, ~4294967295u) > reverseBits(u_input.c.x >> (4294967295u % 32u))), u_input.c);
    var var_1 = var_0.a.x;
    var_1 = false;
    var_1 = -_wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(u_input.b, 0i, -17662i, -47565i)), u_input.a) == ~u_input.b;
    let var_2 = var_0;
    return _wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(u_input.b, u_input.a.x))), countOneBits(u_input.a.x))) & -u_input.a.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = u_input.c.x;
    var var_1 = true;
    var var_2 = _wgslsmith_clamp_i32(u_input.b, func_3(), u_input.b);
    let var_3 = !vec4<bool>(!all(select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, true, false))), arg_0, arg_0, false);
    let var_4 = _wgslsmith_f_op_f32(trunc(-324f));
    return Struct_1(var_3, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1090f, 190f, var_4) * vec3<f32>(var_4, 559f, var_4)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, var_4, 136f))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-675f, 1929f, 567f) * vec3<f32>(var_4, 1053f, var_4)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-132f, -1000f, var_4))))))), 1u);
}

fn func_1(arg_0: vec2<f32>) -> vec3<f32> {
    let var_0 = Struct_2(func_2(all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))) & true));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-611f, 225f, 454f) - _wgslsmith_f_op_vec3_f32(func_1(vec2<f32>(719f, 1000f)))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-608f, 2491f, -343f)))) * _wgslsmith_f_op_vec3_f32(-func_2(any(vec3<bool>(false, true, false))).b)), u_input.c.x);
    var var_2 = max(~vec4<i32>(u_input.a.x, -(u_input.b | 0i), var_0 | var_0, -2147483647i), u_input.a >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, ~21197u, 0u), ~(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 19368u) ^ vec4<u32>(4294967295u, 1u, var_1.c, var_1.c))) % vec4<u32>(32u)));
    var_2 = ~(~(-(vec4<i32>(var_2.x, u_input.a.x, var_2.x, 1i) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, u_input.a.x, -1i, var_2.x), u_input.a))));
    var_2 = max(_wgslsmith_add_vec4_i32(u_input.a, -(~u_input.a)), vec4<i32>(~(~var_2.x), ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b, var_2.x, var_2.x)), vec3<i32>(var_2.x, -25314i, var_0)), i32(-1i) * -21839i, -firstLeadingBit(firstLeadingBit(var_0))));
    let var_3 = -3090i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1527f * var_1.b.x) + -734f), _wgslsmith_f_op_f32(-var_1.b.x))));
}

