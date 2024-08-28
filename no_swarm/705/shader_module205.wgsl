struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>, arg_3: vec4<f32>) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, 636f))))), 1258f);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - -679f) + _wgslsmith_f_op_f32(f32(-1f) * -770f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(1602f + -628f)))), arg_2.x);
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x + arg_3.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.x + 173f), arg_2.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(674f, var_0.x) * arg_2.zx) + _wgslsmith_div_vec2_f32(arg_2.zy, vec2<f32>(arg_2.x, -1070f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(204f, 513f))), vec2<f32>(-2469f, 2169f)) + _wgslsmith_f_op_vec2_f32(-arg_2.yy)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_2.zx);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1350f)), _wgslsmith_f_op_f32(var_1.x * -1670f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_3.xx)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_3.wy - vec2<f32>(arg_3.x, var_0.x))))))));
    return _wgslsmith_div_u32(~arg_0.c, 1u ^ u_input.a.x);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(1f));
    var var_1 = Struct_3(Struct_2(countOneBits(0i), -vec3<i32>(1i, 1i, 1i), 1u), firstLeadingBit(~abs(u_input.a.x)) | u_input.a.x, Struct_2(_wgslsmith_div_i32(~1i << ((u_input.a.x << (u_input.a.x % 32u)) % 32u), 0i), vec3<i32>(-_wgslsmith_mod_i32(2147483647i, -45070i), min(51734i, -21652i), _wgslsmith_div_i32(1i, 27434i >> (u_input.a.x % 32u))), ~reverseBits(_wgslsmith_mult_u32(u_input.a.x, 40257u))), Struct_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 0u, 29329u, u_input.a.x)) << (~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_div_i32(-26796i, 2147483647i << (_wgslsmith_mult_u32(~63303u, var_1.d.a.x) % 32u));
    var_1 = Struct_3(Struct_2(-2147483647i, vec3<i32>(_wgslsmith_add_i32(var_1.a.a, var_1.a.a), ~var_1.c.b.x, var_1.a.b.x) ^ ~var_1.a.b, min(func_1(var_1.a, var_1.a.b.x, vec4<f32>(var_0, 1149f, var_0, 160f), vec4<f32>(var_0, var_0, -1302f, var_0)), ~85578u) >> (var_1.d.a.x % 32u)), u_input.a.x, Struct_2(~14635i, abs(vec3<i32>(1i, -38857i, select(var_1.c.a, -6899i, false))), abs(u_input.a.x)), Struct_1(var_1.d.a));
    let var_3 = Struct_3(var_1.a, u_input.a.x, Struct_2(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(var_1.c.a, 2147483647i, -1i)), var_1.a.a), _wgslsmith_sub_vec3_i32(~vec3<i32>(var_1.c.b.x, var_1.c.a, var_1.c.a), vec3<i32>(abs(var_1.c.a), var_1.c.b.x, _wgslsmith_sub_i32(var_1.a.a, var_1.c.b.x))), u_input.a.x), Struct_1(reverseBits(vec4<u32>(~var_1.c.c, var_1.d.a.x, min(1u, 10750u), ~u_input.a.x))));
    return -28096i;
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = true;
    let var_1 = arg_0.a.x;
    var var_2 = Struct_2(func_3(), vec3<i32>(-1i, countOneBits(2147483647i), select(1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 34676i, 21546i, -36436i), _wgslsmith_mod_vec4_i32(vec4<i32>(-34034i, 13209i, 1i, -1i), vec4<i32>(48618i, 1148i, 2147483647i, -2147483647i))), var_0)), arg_0.a.x);
    let var_3 = all(!vec3<bool>(all(vec2<bool>(var_0, true)), true, var_0)) || true;
    return _wgslsmith_sub_u32(~(~(abs(var_1) | _wgslsmith_add_u32(u_input.a.x, var_1))), 13558u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_clamp_vec2_u32(~u_input.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(func_1(Struct_2(-20341i, vec3<i32>(-15807i, -822i, 21536i), 126833u), -24123i, vec4<f32>(-316f, -323f, -1330f, 587f), vec4<f32>(-1875f, 1127f, 1021f, 640f)), 1u) << (vec2<u32>(func_2(Struct_1(vec4<u32>(101618u, 25505u, var_0, var_0))), 1u) % vec2<u32>(32u)), ~(vec2<u32>(var_0, var_0) >> (u_input.a % vec2<u32>(32u))), u_input.a), u_input.a);
    let var_2 = vec3<bool>(all(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), false)) & true, var_1.x >= ~func_1(Struct_2(-30387i, vec3<i32>(1i, -1i, -2407i), 13501u), firstLeadingBit(20240i), vec4<f32>(-181f, -1370f, -522f, -455f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1420f, 278f, 116f, -996f), vec4<f32>(-998f, 2854f, 1514f, -599f)))), true);
    var_1 = u_input.a;
    var var_3 = -(~(1i | _wgslsmith_dot_vec4_i32(min(vec4<i32>(51460i, -2076i, 2147483647i, -11752i), vec4<i32>(62998i, 1i, -2147483647i, -1i)), vec4<i32>(1i, 1i, 1i, 1i))));
    let var_4 = vec3<i32>(-4812i, 27699i, abs(countOneBits(-(~2147483647i))));
    var var_5 = var_4;
    var var_6 = -1142f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-vec4<i32>(var_4.x, -25495i, ~1i, var_4.x)), ~firstTrailingBit(abs(reverseBits(vec3<u32>(var_1.x, var_0, 0u)))));
}

