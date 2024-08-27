struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<i32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    var var_0 = true;
    var var_1 = 495f;
    var var_2 = reverseBits(~(~max(~4294967295u, ~16710u)));
    let var_3 = true && ((!all(vec2<bool>(true, false)) || select(true, false, true)) & all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var_2 = 4294967295u;
    return -1000f;
}

fn func_2(arg_0: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(586f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))))));
    var var_1 = arg_0;
    var var_2 = u_input.b;
    var_1 = arg_0;
    let var_3 = Struct_1(vec3<bool>(true, true, true), u_input.a.x);
    return !select(!select(var_3.a, var_3.a, any(var_3.a.yz)), select(select(var_3.a, vec3<bool>(var_3.a.x, false, false), any(vec3<bool>(true, false, true))), var_3.a, vec3<bool>(var_3.a.x || arg_0, var_3.a.x | var_3.a.x, true)), arg_0);
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: i32) -> vec3<f32> {
    let var_0 = select(arg_0, arg_0, arg_2.x);
    var var_1 = Struct_1(!arg_2, firstLeadingBit(arg_1.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1394f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-206f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1143f)), _wgslsmith_f_op_f32(f32(-1f) * -1793f), all(vec3<bool>(true, arg_0, var_0))))), _wgslsmith_f_op_f32(trunc(836f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2084f), _wgslsmith_f_op_f32(f32(-1f) * -460f))) + vec4<f32>(732f, _wgslsmith_f_op_f32(f32(-1f) * -1853f), 1042f, 1568f));
    let var_3 = var_1.a;
    let var_4 = ~19666u;
    return _wgslsmith_f_op_vec3_f32(-var_2.wyw);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>) -> StorageBuffer {
    var var_0 = vec2<f32>(-1060f, _wgslsmith_f_op_f32(-619f + 1000f));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(select(true, firstTrailingBit(37705i & arg_0.x) < u_input.a.x, arg_1.x >= ~1u), ~(~vec2<i32>(max(-2147483647i, arg_0.x), _wgslsmith_mult_i32(arg_0.x, u_input.c))), select(!func_2(all(vec4<bool>(true, true, true, true))), select(vec3<bool>(any(vec3<bool>(false, true, false)), true, true), vec3<bool>(true, true, select(true, false, true)), false), vec3<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false)), true, true)), countOneBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(11121i, 2147483647i, u_input.b), vec3<i32>(33928i, -2147483647i, 1i)) | _wgslsmith_add_i32(1i, u_input.b))));
    let var_2 = !(!vec4<bool>(true & select(true, false, true), any(vec4<bool>(true, true, true, true)), !(arg_1.x >= 31215u), true));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(func_3()), -872f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x - 333f), var_0.x, -1000f, -636f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.x, -827f, -560f) - vec4<f32>(617f, var_0.x, 688f, 545f)) + vec4<f32>(var_0.x, 3202f, -966f, 1000f)), vec4<f32>(_wgslsmith_f_op_f32(-226f + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -817f), var_1.x, 1155f), false))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * -1100f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -1854f)))), var_3.yx, any(vec4<bool>(all(select(vec4<bool>(var_2.x, true, var_2.x, true), var_2, vec4<bool>(true, var_2.x, var_2.x, var_2.x))), select(any(vec3<bool>(var_2.x, var_2.x, var_2.x)), false, true), true, true))));
    return StorageBuffer(var_3.x, ~(i32(-1i) * -9389i), -1000f, min(vec3<i32>(~(-u_input.a.x), _wgslsmith_add_i32(arg_0.x, u_input.a.x << (68478u % 32u)), -1i), vec3<i32>(min(~arg_0.x, _wgslsmith_add_i32(u_input.b, -1i)), 56125i, -u_input.a.x ^ ~arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.c, u_input.b) ^ vec4<i32>(1i, u_input.b, -18505i, -20997i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 13573i, u_input.c, -1299i), vec4<i32>(-13522i, -19070i, 9767i, -28452i))), ~(vec4<i32>(u_input.c, u_input.c, 5999i, u_input.c) >> (vec4<u32>(0u, 1u, 0u, 22742u) % vec4<u32>(32u))))) << (firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, ~0u), vec2<u32>(abs(24997u), 15780u))) % 32u);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1154f, _wgslsmith_f_op_f32(-732f * -517f), _wgslsmith_f_op_f32(floor(596f)), -398f), _wgslsmith_div_vec4_f32(vec4<f32>(1056f, -823f, 302f, 2012f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-303f, 1598f, -1000f, -812f)))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-757f, -1305f, -604f, -681f), vec4<f32>(-1128f, 1152f, 2513f, 260f)) - vec4<f32>(300f, 706f, -2307f, 1854f)), vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(648f, 518f, 573f, -1781f), vec4<f32>(-327f, -716f, 720f, 471f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1023f, -586f, -224f, -1000f)))))));
    let x = u_input.a;
    s_output = func_1(u_input.a, ~firstTrailingBit(vec3<u32>(abs(1u), 1u, _wgslsmith_mod_u32(1u, 1u))));
}

