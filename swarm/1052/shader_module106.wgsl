struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: vec2<f32>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    var var_0 = true;
    var var_1 = any(vec3<bool>(true | (45892u < _wgslsmith_mult_u32(41054u, u_input.b.x)), !(_wgslsmith_f_op_f32(sign(957f)) >= 1f), true));
    let var_2 = -_wgslsmith_sub_vec3_i32(u_input.a.yxz, _wgslsmith_add_vec3_i32(~u_input.a.zwx, vec3<i32>(0i, u_input.d.x, u_input.c)) | (~u_input.d.zyw & -vec3<i32>(u_input.d.x, u_input.a.x, 32918i)));
    return 249f;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_2) -> f32 {
    let var_0 = vec2<i32>(u_input.a.x, abs(~(~arg_0.x))) << (vec2<u32>(1u, 0u) % vec2<u32>(32u));
    let var_1 = _wgslsmith_clamp_u32(~(~countOneBits(_wgslsmith_mult_u32(1u, 1u))), ~arg_3.c.x, 1u);
    let var_2 = arg_1.c.x & 0u;
    var var_3 = Struct_2(false, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_1.b - arg_3.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, 694f) * arg_3.b)), arg_1.d.x)))), firstLeadingBit(arg_1.c) ^ vec4<u32>(~(6816u << (var_2 % 32u)), ~1u, u_input.b.x, arg_3.c.x), !arg_1.d);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-639f - var_3.b.x)))))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1343f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1491f - 351f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) - 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_i32(u_input.d.wz, u_input.d.xw), Struct_2(false, vec2<f32>(1035f, 314f), vec4<u32>(26436u, 1u, u_input.b.x, u_input.b.x), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1402f, 1267f, -146f, 300f)), Struct_2(false, vec2<f32>(-1205f, 1000f), vec4<u32>(4294967295u, 13945u, 1u, 11990u), vec4<bool>(true, false, false, true)))) + 941f)));
    var var_1 = !(!select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), vec2<bool>(true, true), vec2<bool>(false, any(vec2<bool>(false, true)))));
    var var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -461f)))))));
    var_2 = abs(abs(u_input.a.x));
    return _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(min(-378f, -1180f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(748f + -206f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(518f)) * _wgslsmith_f_op_f32(f32(-1f) * -2143f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-563f + -974f), _wgslsmith_f_op_f32(-1000f - 1473f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1012f, 1405f)))), -875f) + vec4<f32>(-264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -466f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1641f, -946f) * _wgslsmith_f_op_f32(round(2479f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(643f, 655f, false)))), _wgslsmith_f_op_f32(-1478f * _wgslsmith_f_op_f32(func_1()))));
    var var_2 = 48427u;
    let var_3 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, abs(u_input.b.x), ~82838u), _wgslsmith_sub_vec3_u32(u_input.b, (vec3<u32>(u_input.b.x, 35667u, 3808u) >> (vec3<u32>(u_input.b.x, 34879u, u_input.b.x) % vec3<u32>(32u))) << (~vec3<u32>(u_input.b.x, 4294967295u, 1u) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_u32(countOneBits(countOneBits(u_input.b)), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(97498u, u_input.b.x, 0u), u_input.b), u_input.b));
    var var_4 = abs(vec2<i32>(_wgslsmith_clamp_i32(~(-5906i), 0i & u_input.c, 1i), ~_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, 9378i, u_input.c, var_0)))) >> (select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, var_3.x) ^ select(var_3.xz, vec2<u32>(1u, var_3.x), vec2<bool>(true, true)), vec2<u32>(4294967295u, 72443u)), ~vec2<u32>(39049u, 0u) & ~_wgslsmith_add_vec2_u32(u_input.b.xy, var_3.xx), all(vec3<bool>(true, all(vec2<bool>(true, false)), var_0 <= 40432i))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(firstLeadingBit(~var_3.x), max(u_input.b.x >> (var_3.x % 32u), u_input.b.x), countOneBits(min(var_3.x, var_3.x)), _wgslsmith_clamp_u32(73361u, abs(0u), _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 62222u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-1136f - var_1.x))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-360f)) - _wgslsmith_f_op_f32(var_1.x + 369f)), var_1.x)));
}

