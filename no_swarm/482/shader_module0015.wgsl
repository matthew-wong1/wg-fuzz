struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<f32>,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_2) -> u32 {
    let var_0 = select(arg_2.d.a.xz, abs(arg_2.d.a.yx), vec2<bool>(true, arg_2.c));
    var var_1 = arg_2.d;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, 623f, var_1.c, _wgslsmith_f_op_f32(trunc(var_1.d.x))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, arg_2.b, var_2.x, -2198f)))) * arg_2.d.d));
    var var_3 = arg_2.d.d;
    return ~(~1u);
}

fn func_2(arg_0: Struct_3) -> i32 {
    let var_0 = arg_0.e;
    var var_1 = Struct_2(vec2<i32>(-(~arg_0.e.a.x), ~71891i), -104f, true, Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(func_3(vec3<i32>(var_0.a.x, -54650i, 24900i), var_0.a.x, var_0), arg_0.e.d.a.x, min(var_0.d.e, var_0.d.a.x)), vec3<u32>(18968u, var_0.d.a.x, _wgslsmith_mult_u32(var_0.d.a.x, arg_0.e.d.a.x))), arg_0.c.x, _wgslsmith_f_op_f32(var_0.b - -619f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-524f, 1000f, arg_0.b.b, -376f))))), ~var_0.d.a.x));
    var_1 = var_0;
    var var_2 = all(!select(arg_0.a.xy, select(select(vec2<bool>(var_0.c, true), vec2<bool>(true, true), false), !arg_0.a.yy, select(vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.a.yz, arg_0.a.yy)), vec2<bool>(select(var_0.c, true, true), var_1.c)));
    let var_3 = Struct_4(var_0.d, ~11221u, arg_0.b.a.x, Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, var_0.d.a.x, arg_0.d.x ^ 22629u), ~(~var_0.d.a)), 1694f, var_1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.e.b + arg_0.b.b), -1439f, -1027f, _wgslsmith_f_op_f32(-var_0.d.d.x))), var_1.d.e));
    return i32(-1i) * -2643i;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32, arg_3: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.c, -18722i, 5857i), vec4<i32>(-11111i, u_input.a, 1i, -4225i))), vec4<i32>(1i, _wgslsmith_div_i32(-21944i, _wgslsmith_dot_vec2_i32(arg_3.zx, arg_1.a)), 0i, arg_3.x)) ^ arg_1.a.x;
    let var_1 = Struct_3(!vec3<bool>(arg_0.x, false, all(!arg_0.zy)), arg_1, _wgslsmith_f_op_vec2_f32(-arg_1.d.d.xy), u_input.d.wy, arg_1);
    let var_2 = arg_1.d.a.x;
    let var_3 = Struct_3(var_1.a, Struct_2(~arg_1.a, arg_1.d.c, false, Struct_1(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b, -918f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1330f - 1346f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_1.b, var_1.e.d.d.x, -982f))), var_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_1.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-117f, -1631f) - vec2<f32>(arg_1.b, 144f)))))), arg_1.d.a.xz, arg_1);
    var var_4 = _wgslsmith_f_op_f32(-arg_1.d.d.x);
    return 4294967295u;
}

fn func_1() -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1319f, 320f))), -1549f, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false)))) + 625f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(580f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-460f)), -284f)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))))));
    let var_1 = 1i << (u_input.b.x % 32u);
    return func_4(vec3<bool>(any(vec3<bool>(true, true, all(vec2<bool>(true, true)))), false, !(func_2(Struct_3(vec3<bool>(false, false, true), Struct_2(vec2<i32>(2147483647i, u_input.e), var_0.x, false, Struct_1(vec3<u32>(1u, 24375u, u_input.d.x), 848f, var_0.x, vec4<f32>(583f, var_0.x, -1000f, var_0.x), 11144u)), var_0, u_input.b.xz, Struct_2(vec2<i32>(u_input.e, 12417i), var_0.x, true, Struct_1(u_input.d.yzw, -446f, 1000f, vec4<f32>(-386f, 154f, -1169f, 499f), 46421u)))) >= firstTrailingBit(u_input.a))), Struct_2(vec2<i32>(1i, u_input.e), -458f, true, Struct_1(u_input.d.zxw, var_0.x, var_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(1300f, var_0.x, 515f, 979f))) * vec4<f32>(-874f, var_0.x, 1184f, -194f)), 1u & ~u_input.d.x)), ~(-14803i), abs(vec4<i32>(1i, u_input.a, i32(-1i) * -var_1, firstLeadingBit(-1387i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(abs(u_input.d.x), 1u, ~u_input.d.x, ~43542u)), _wgslsmith_add_u32(u_input.b.x, _wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(u_input.b.x, 4294967295u), u_input.d.x & u_input.d.x)), 1u), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-293f, 312f, 474f, 1384f)))), ~20773u);
    let var_1 = reverseBits(_wgslsmith_dot_vec3_u32(var_0.a >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.x, 2808u, u_input.d.x), var_0.a, var_0.a) % vec3<u32>(32u)), ~vec3<u32>(1u, func_1(), u_input.b.x)));
    var_0 = Struct_1(~u_input.b, var_0.d.x, -1111f, var_0.d, _wgslsmith_mod_u32(~(_wgslsmith_clamp_u32(u_input.b.x, 29491u, 11762u) ^ func_4(vec3<bool>(false, true, true), Struct_2(vec2<i32>(u_input.e, u_input.e), var_0.c, false, Struct_1(vec3<u32>(4294967295u, u_input.d.x, var_0.a.x), 1269f, var_0.b, var_0.d, 16006u)), 1i, vec4<i32>(-1164i, 48093i, u_input.e, 2147483647i))), u_input.d.x));
    var var_2 = abs(_wgslsmith_mod_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.e) ^ vec2<i32>(u_input.a, u_input.e), vec2<i32>(u_input.e, 2147483647i)), abs(firstLeadingBit(vec2<i32>(u_input.e, 0i))) << (~vec2<u32>(var_0.a.x, 0u) % vec2<u32>(32u))));
    let var_3 = Struct_4(Struct_1(~vec3<u32>(0u, var_0.e, ~var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + 2309f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2247f, 2011f))) * 893f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.c, 1032f, -1340f) + vec4<f32>(var_0.b, 1516f, -265f, -206f)), vec4<bool>(true, true, true, true))) * vec4<f32>(var_0.b, 1482f, var_0.d.x, _wgslsmith_f_op_f32(select(608f, var_0.c, false)))), u_input.b.x), 20731u | (~u_input.d.x & _wgslsmith_clamp_u32(~var_0.a.x, ~0u, var_1)), select(abs(max(_wgslsmith_dot_vec2_i32(vec2<i32>(56496i, -11610i), vec2<i32>(37852i, 2147483647i)), abs(-9522i))), ~10273i, true), Struct_1(vec3<u32>(u_input.b.x, ~(~0u), _wgslsmith_add_u32(abs(u_input.b.x), var_1 | var_1)), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(162f, var_0.b, false)), _wgslsmith_f_op_f32(ceil(var_0.b)))), _wgslsmith_div_vec4_f32(vec4<f32>(1009f, _wgslsmith_f_op_f32(sign(-1635f)), -1194f, var_0.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) - var_0.d)), _wgslsmith_mod_u32(min(countOneBits(var_1), ~var_0.e), var_0.a.x)));
    var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(66490u, 0u, ~select(var_1, 27893u, false)), ~((vec3<u32>(u_input.d.x, var_0.a.x, u_input.b.x) >> (vec3<u32>(42420u, var_3.a.a.x, var_1) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1, u_input.b.x, u_input.b.x), var_0.a, vec3<u32>(0u, var_3.a.e, var_3.d.e))), abs(~_wgslsmith_clamp_vec3_u32(var_0.a, var_0.a, u_input.b))), _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(-var_3.d.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(964f)), _wgslsmith_f_op_f32(-1442f + 1394f)))), _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.b, var_0.b), _wgslsmith_f_op_f32(exp2(var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.d.x)), _wgslsmith_f_op_f32(sign(var_0.d.x)))), ~_wgslsmith_mod_u32(1u, ~(~var_1)));
    let var_4 = _wgslsmith_f_op_f32(max(var_0.d.x, var_3.a.b));
    var var_5 = var_3;
    var var_6 = var_0.d.yz;
    let x = u_input.a;
    s_output = StorageBuffer(1u, func_1(), select(~select(abs(vec2<i32>(var_5.c, -7310i)), vec2<i32>(1i, 1i), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), ~select(-vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, u_input.c), vec2<bool>(false, true)), all(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))));
}

