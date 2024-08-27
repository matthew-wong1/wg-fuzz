struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_4, arg_3: bool) -> vec4<f32> {
    let var_0 = Struct_5(~(~vec2<i32>(1i, -2147483647i)));
    var var_1 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.a, -745f, -644f, -1394f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1161f, 978f, -644f, arg_2.a), vec4<f32>(arg_2.a, 529f, arg_2.a, 1000f)))) - vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(arg_1.a - -859f), -881f, arg_2.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1652f, arg_1.a) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, 1261f, arg_1.a, 1000f) * vec4<f32>(arg_1.a, arg_1.a, 350f, arg_1.a)), vec4<f32>(1466f, 953f, arg_2.a, -1000f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, arg_2.a, arg_1.a, arg_2.a) + vec4<f32>(arg_1.a, arg_1.a, arg_1.a, 1023f)), vec4<f32>(497f, -920f, arg_2.a, -122f))))), u_input.a.x);
    var var_2 = var_1.c.x;
    var var_3 = arg_0;
    var_2 = _wgslsmith_f_op_f32(-arg_2.a);
    return var_1.c;
}

fn func_2() -> u32 {
    var var_0 = Struct_2(_wgslsmith_sub_i32(39997i, _wgslsmith_sub_i32(~_wgslsmith_sub_i32(1i, 14359i), 3318i)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, u_input.a.x, u_input.a.x)) & min(u_input.a ^ vec3<u32>(28984u, u_input.a.x, 0u), abs(u_input.a)), max(select(reverseBits(u_input.a), _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(25049u, 1u, u_input.a.x)), true), _wgslsmith_sub_vec3_u32(vec3<u32>(32908u, 11076u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) >> (u_input.a % vec3<u32>(32u))))), Struct_1(~0u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -1000f, -754f, 946f), vec4<f32>(-1169f, 152f, 388f, -511f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1778f, 1874f, 383f, -1237f))))), _wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, true), Struct_4(-1881f, true), Struct_4(-168f, true), select(true, true, true))), _wgslsmith_sub_u32(firstLeadingBit(countOneBits(15776u)), _wgslsmith_mod_u32(countOneBits(0u), 69475u))), Struct_1(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.a.yx, u_input.a.yx), firstLeadingBit(abs(vec2<u32>(2937u, 34957u)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1009f)), _wgslsmith_f_op_f32(910f * 1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(552f, -730f), _wgslsmith_f_op_f32(f32(-1f) * -1140f))), _wgslsmith_f_op_f32(round(1286f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(501f, -1258f, -1000f, 366f), vec4<f32>(2031f, -349f, -1000f, -465f), vec4<bool>(true, false, true, false))))))), u_input.a.x & (u_input.a.x >> (u_input.a.x % 32u))));
    var var_1 = -862f;
    let var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.a.x, u_input.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(~(~75148u), ~u_input.a.x), firstLeadingBit(u_input.a.zy >> (u_input.a.zx % vec2<u32>(32u)))), vec2<u32>(48285u, max(~var_0.b.x ^ abs(var_0.b.x), ~u_input.a.x)));
    var var_3 = var_0.c.c.x;
    var var_4 = Struct_3(Struct_2(u_input.b.x >> (_wgslsmith_div_u32(var_0.b.x, var_0.c.d) % 32u), vec3<u32>(_wgslsmith_clamp_u32(~u_input.a.x, ~u_input.a.x, 1u), 1u, 4294967295u), Struct_1(_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_2.x, var_2.x, var_2.x), vec3<u32>(40084u, 6563u, u_input.a.x), vec3<bool>(false, false, true)), ~var_0.b), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.c.x, -1380f, var_0.d.b.x, -794f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.c.x, -114f, 2401f, var_0.d.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(var_0.c.b.x - var_0.d.b.x), -2107f, _wgslsmith_f_op_f32(exp2(var_0.c.c.x)), 1188f), 25343u), var_0.c), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(28487i, 2147483647i, var_0.a, 55712i) | ~u_input.b, _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a, -2159i, u_input.b.x, 1i), u_input.b)), abs(select(_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, 0i, -1i, -38592i)), -u_input.b, vec4<bool>(true, false, true, true)))));
    return 4294967295u;
}

fn func_1() -> i32 {
    let var_0 = u_input.a.zy;
    let var_1 = Struct_1(func_2() << (~(~var_0.x) % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, true), Struct_4(318f, false), Struct_4(132f, false), false)).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(656f + 1049f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-677f)))), _wgslsmith_f_op_f32(1516f + _wgslsmith_f_op_f32(1019f + 1046f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(690f + 1094f), 100f, _wgslsmith_f_op_f32(2266f - -975f), _wgslsmith_f_op_f32(-216f + 232f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1226f, 496f, 312f, -237f) - vec4<f32>(-1000f, 1402f, -305f, -647f))), vec4<bool>(all(vec2<bool>(true, true)), true, true, any(vec3<bool>(true, false, true)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, all(vec4<bool>(false, true, false, false))), Struct_4(373f, true), Struct_4(-1000f, all(vec2<bool>(true, true))), all(vec2<bool>(true, true)))))), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.a, abs(vec3<u32>(0u, u_input.a.x, 4294967295u)), _wgslsmith_add_vec3_u32(u_input.a, u_input.a)) | ~(~vec3<u32>(1u, 22580u, u_input.a.x)), vec3<u32>(u_input.a.x, ~1u, _wgslsmith_div_u32(54647u, var_0.x)) ^ (vec3<u32>(var_0.x, 53249u, 9864u) ^ select(u_input.a, vec3<u32>(var_0.x, 1u, u_input.a.x), vec3<bool>(true, true, true)))));
    let var_2 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, countOneBits(0u), abs(u_input.a.x)), 58580u);
    var var_3 = vec2<i32>(_wgslsmith_clamp_i32(u_input.b.x, -23885i, -1i), 2147483647i) >> (_wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.a.zy), ~u_input.a.yx, u_input.a.xz) % vec2<u32>(32u));
    var_3 = -vec2<i32>(~var_3.x & ~var_3.x, ~var_3.x);
    return -countOneBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.b.zw, u_input.b.yw), ~_wgslsmith_mod_i32(u_input.b.x, -18303i), u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x ^ u_input.a.x;
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(~(abs(u_input.b.x) & countOneBits(-2147483647i)), u_input.b.x, func_1(), ~(~(64240i ^ u_input.b.x))), u_input.b);
    let var_2 = -2147483647i;
    var var_3 = all(vec2<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)), !any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))));
    var_3 = false | all(vec3<bool>(false, all(vec3<bool>(true, true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-398f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -191f)))) * -2068f), min(_wgslsmith_clamp_vec4_u32(countOneBits(~vec4<u32>(u_input.a.x, 41055u, u_input.a.x, u_input.a.x)), ~select(vec4<u32>(0u, 85248u, var_0, 11013u), vec4<u32>(u_input.a.x, var_0, var_0, var_0), false), _wgslsmith_sub_vec4_u32(~vec4<u32>(41203u, 25250u, u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, 19831u, u_input.a.x))), _wgslsmith_add_vec4_u32(select(~vec4<u32>(var_0, 52326u, 32998u, 0u), ~vec4<u32>(u_input.a.x, 90701u, 8885u, 1u), vec4<bool>(true, true, true, true)), countOneBits(vec4<u32>(1u, var_0, u_input.a.x, var_0)))), abs(var_2 & var_1.x));
}

