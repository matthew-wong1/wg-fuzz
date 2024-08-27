struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    var var_0 = -1327f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -986f)))))));
    var_0 = 558f;
    let var_1 = true;
    return arg_0.b;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: u32) -> vec2<u32> {
    let var_0 = Struct_4(vec2<bool>(false, true));
    let var_1 = Struct_1(vec2<bool>((arg_3 | _wgslsmith_div_u32(32779u, u_input.b)) <= select(17665u, _wgslsmith_div_u32(arg_2.a.b, 20269u), !arg_2.a.a.x), !arg_2.a.a.x), countOneBits(0u));
    let var_2 = ~arg_2.a.b;
    var var_3 = ~_wgslsmith_mult_i32(firstTrailingBit(arg_2.b.x), u_input.e);
    var var_4 = _wgslsmith_f_op_f32(arg_1.x - 414f);
    return ~(~max(~select(vec2<u32>(58245u, 25238u), vec2<u32>(4294967295u, var_1.b), true), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(39010u, arg_0), vec2<u32>(u_input.b, 840u)), vec2<u32>(arg_2.a.b, 42051u))));
}

fn func_2(arg_0: u32) -> vec2<bool> {
    let var_0 = u_input.e;
    let var_1 = false;
    let var_2 = Struct_3(abs(_wgslsmith_sub_i32(-21833i, u_input.d)), var_0);
    var var_3 = _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(~(~vec2<u32>(arg_0, u_input.b)), abs(vec2<u32>(arg_0, arg_0))), ~abs(func_4(func_3(Struct_1(vec2<bool>(true, false), arg_0), var_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-149f, -1000f)), Struct_2(Struct_1(vec2<bool>(var_1, false), 9544u), vec3<i32>(var_0, -56i, u_input.e), 1000f), ~4294967295u)));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(797f * 742f), 773f)), -1000f);
    return vec2<bool>(!(~_wgslsmith_mult_u32(var_3.x, u_input.a.x) >= abs(_wgslsmith_mult_u32(arg_0, arg_0))), !(!(16179u < arg_0) || any(!vec3<bool>(var_1, var_1, var_1))));
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: vec4<u32>) -> f32 {
    let var_0 = ~countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-2147483647i, 1i)), 2147483647i, abs(u_input.e), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(39127i, 40635i)))) << (reverseBits(vec4<u32>(~16969u, u_input.c.x, u_input.a.x, arg_3.x | 4294967295u) | ~select(arg_3, vec4<u32>(75038u, 45982u, u_input.b, 0u), vec4<bool>(arg_0, true, true, true))) % vec4<u32>(32u));
    let var_1 = vec2<bool>(arg_0, select(all(vec4<bool>(!arg_0, u_input.c.x >= 4294967295u, arg_1.x, true)), select(any(select(vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(arg_0, arg_1.x, arg_1.x, false))), all(arg_1), select(arg_0 || arg_0, arg_0 & false, true)), true));
    var var_2 = abs(u_input.b);
    var_2 = firstTrailingBit(0u);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1143f)))))), -550f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -657f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.x))))));
}

fn func_6(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: f32) -> bool {
    var var_0 = Struct_1(arg_0.wz, ~func_3(Struct_1(!vec2<bool>(arg_0.x, arg_0.x), 69221u), Struct_3(u_input.e, u_input.e | u_input.d)));
    let var_1 = ~u_input.c;
    var_0 = Struct_1(var_0.a, _wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.a.zy));
    var_0 = Struct_1(arg_0.yy, var_1.x);
    var var_2 = !all(vec2<bool>(any(var_0.a), arg_0.x || false)) || false;
    return select(all(select(!select(arg_0, arg_0, true), arg_0, any(select(arg_0.wz, vec2<bool>(true, true), true)))), arg_0.x, true);
}

fn func_1(arg_0: vec4<f32>) -> vec2<u32> {
    var var_0 = u_input.d & _wgslsmith_div_i32(u_input.e, _wgslsmith_dot_vec4_i32(~vec4<i32>(-40814i, 0i, u_input.d, u_input.e), vec4<i32>(-70910i, u_input.e, 2147483647i, u_input.d)) << (_wgslsmith_div_u32(4294967295u, select(u_input.c.x, 25686u, false)) % 32u));
    let var_1 = !(!vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), _wgslsmith_mod_i32(u_input.d, u_input.e) == u_input.e));
    let var_2 = func_6(!(!(!select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), false))), arg_0.ww, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(var_1.x, func_2(u_input.c.x), arg_0, u_input.a ^ vec4<u32>(u_input.b, 10279u, 65640u, u_input.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(1365f + arg_0.x))), arg_0.x)));
    let var_3 = var_2;
    var var_4 = Struct_2(Struct_1(func_2(u_input.a.x), ~1u), ~(~countOneBits(vec3<i32>(72368i, -1i, u_input.d)) >> (select(vec3<u32>(u_input.a.x, 55772u, u_input.a.x), ~u_input.c, vec3<bool>(var_1.x, false, var_3)) % vec3<u32>(32u))), -1387f);
    return vec2<u32>(_wgslsmith_clamp_u32(var_4.a.b, u_input.a.x, ~0u) | min(~var_4.a.b, 4294967295u), _wgslsmith_mult_u32(~(var_4.a.b | u_input.c.x), ~select(90533u, u_input.c.x, true))) << (_wgslsmith_mult_vec2_u32(~(u_input.c.xz << (u_input.a.yy % vec2<u32>(32u))), u_input.c.zx) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1350f;
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1f))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1082f)), any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))))));
    var_0 = _wgslsmith_f_op_f32(trunc(257f));
    let x = u_input.a;
    s_output = StorageBuffer(1f, -2281f, -_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, u_input.d, u_input.d, u_input.e), -vec4<i32>(-4349i, -25437i, -28847i, u_input.d)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 25515i, u_input.e), vec3<i32>(u_input.e, u_input.d, u_input.d)), ~(-37123i), max(0i, u_input.e), i32(-1i) * -24383i)), func_1(vec4<f32>(_wgslsmith_f_op_f32(floor(200f)), -786f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f) * _wgslsmith_f_op_f32(897f - 1685f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1775f)))), vec2<u32>(_wgslsmith_mult_u32(func_1(vec4<f32>(-381f, -941f, -944f, 1000f)).x, 2319u) >> (4294967295u % 32u), _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(30649u, 4294967295u))), u_input.c.x)));
}

