struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: vec4<f32>) -> vec2<f32> {
    var var_0 = Struct_3(false, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(arg_2.zwx)))), select(true, true, !(!arg_0.x) | false), Struct_1(arg_2, vec2<f32>(_wgslsmith_f_op_f32(arg_2.x * -709f), _wgslsmith_f_op_f32(f32(-1f) * -1787f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.yy, vec2<f32>(arg_2.x, arg_2.x)))));
    var_0 = Struct_3(var_0.d.c.x > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -345f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-503f, 730f, 220f) - vec3<f32>(var_0.d.b.x, -162f, 1000f)), _wgslsmith_f_op_vec3_f32(-arg_2.zyx))), _wgslsmith_f_op_vec3_f32(var_0.b + var_0.b))), ~u_input.a <= max(0u, ~(~u_input.a)), var_0.d);
    let var_1 = u_input.a;
    let var_2 = vec2<bool>(!(!(!(arg_0.x != true))), any(select(select(!vec4<bool>(true, true, false, var_0.c), select(vec4<bool>(false, var_0.a, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, var_0.a, var_0.a, var_0.c), arg_0.x), !vec4<bool>(var_0.a, true, var_0.a, var_0.c)), !select(vec4<bool>(var_0.a, false, true, true), vec4<bool>(false, var_0.c, arg_0.x, false), vec4<bool>(arg_0.x, false, true, var_0.c)), arg_0.x)));
    let var_3 = Struct_2(var_0.d);
    return arg_2.ww;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> f32 {
    let var_0 = arg_2.c;
    let var_1 = ~(~vec3<u32>(_wgslsmith_sub_u32(12973u, 0u) & min(u_input.a, 15836u), _wgslsmith_add_u32(43190u, 0u), _wgslsmith_mod_u32(u_input.a, u_input.a)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(floor(arg_2.b.x)), _wgslsmith_f_op_f32(146f - 1528f), 1f) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, arg_0.a.x, 1000f, arg_1) * vec4<f32>(arg_0.c.x, -420f, arg_2.b.x, 1000f))))) + arg_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.d.a.zx)))) + arg_0.a.xx), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.a.x - _wgslsmith_div_f32(arg_1, 454f))), _wgslsmith_f_op_f32(sign(arg_1))));
    var var_3 = Struct_4(arg_2);
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_0.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(2108f, 1324f) * _wgslsmith_f_op_vec2_f32(func_3(select(vec3<bool>(false, true, var_0), vec3<bool>(var_0, arg_2.c, false), arg_2.c), ~vec4<i32>(-16422i, 2147483647i, -2147483647i, 7314i), vec4<f32>(var_3.a.b.x, arg_1, -405f, arg_2.b.x)))), var_2.a.zy, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.b.yx) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 2005f))))));
    return arg_2.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(37127u, arg_2.x), arg_2.zw) << (~arg_2.x % 32u), u_input.a);
    var_0 = _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(~_wgslsmith_mod_u32(4294967295u, arg_2.x), 27527u & min(30482u, u_input.a))), ~(~firstLeadingBit(arg_2.zy)), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 4294967295u) << (arg_2.ww % vec2<u32>(32u)), ~(~vec2<u32>(5917u, 27253u))));
    let var_1 = true;
    let var_2 = -239f;
    let var_3 = vec2<i32>(-(7900i >> (0u % 32u)), firstTrailingBit(1i));
    return Struct_1(arg_0.a, arg_0.a.xw, arg_0.c);
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_2 {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 135f, 988f, -1143f)) - vec4<f32>(-225f, _wgslsmith_f_op_f32(min(arg_0, -946f)), -241f, _wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(218f, -783f, -1065f, arg_0), vec2<f32>(arg_0, 947f), vec2<f32>(arg_0, arg_0)), 149f, Struct_3(arg_1, vec3<f32>(139f, arg_0, arg_0), true, Struct_1(vec4<f32>(-925f, 1058f, -306f, arg_0), vec2<f32>(224f, arg_0), vec2<f32>(1000f, arg_0))))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1983f, arg_0)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2528f, arg_0)), select(select(vec2<bool>(true, false), vec2<bool>(true, arg_1), vec2<bool>(arg_1, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(394f - arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))))), select(vec3<bool>(!(arg_0 < 474f), !(arg_1 || arg_1), true), !(!select(vec3<bool>(true, arg_1, true), vec3<bool>(arg_1, true, false), vec3<bool>(arg_1, true, false))), vec3<bool>(true, all(vec2<bool>(arg_1, arg_1)), !arg_1 == all(vec3<bool>(arg_1, true, true)))), vec4<u32>(23779u, _wgslsmith_dot_vec4_u32(vec4<u32>(abs(54668u), 1u, 4294967295u, u_input.a), ~(vec4<u32>(1u, 22056u, u_input.a, u_input.a) | vec4<u32>(25522u, u_input.a, u_input.a, 25004u))), u_input.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 20887u), vec3<u32>(0u, u_input.a, 69519u))) % 32u), u_input.a));
    let var_1 = reverseBits(~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 0u), ~abs(vec2<u32>(91377u, u_input.a))));
    var var_2 = true;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_0.b.x) + 1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(select(var_0.a, var_0.a, false)), vec2<f32>(-584f, arg_0), var_0.c);
    return Struct_2(func_4(Struct_1(var_3.a, var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_3.b, vec2<f32>(arg_0, 1602f))) - var_3.c)), vec3<bool>(!select(arg_1, false, arg_1), true, any(select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, true, true), vec3<bool>(false, false, arg_1)))), vec4<u32>(var_1.x, ~1u, ~1u, abs(~var_1.x))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = vec3<i32>(~arg_0.x, -max(arg_0.x, -arg_0.x) | -15997i, -2147483647i);
    var var_1 = _wgslsmith_f_op_f32(ceil(arg_1.a.d.b.x));
    var_1 = arg_1.a.b.x;
    var var_2 = arg_1.a;
    var_1 = _wgslsmith_f_op_f32(var_2.b.x - 1211f);
    return Struct_3(true, _wgslsmith_f_op_vec3_f32(min(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(arg_2.a.a)), arg_1.a.d.b, _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a.a.x, 1252f), vec2<f32>(-632f, arg_1.a.b.x))), !select(vec3<bool>(var_2.c, true, arg_1.a.a), vec3<bool>(arg_1.a.a, true, var_2.c), arg_1.a.c), vec4<u32>(63642u, ~u_input.a, 87363u, u_input.a)).a.wxw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.b.x, arg_1.a.b.x, arg_1.a.b.x) * arg_2.a.a.xzz) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.a.x, arg_1.a.b.x, arg_1.a.b.x)))))), arg_3.x, func_4(Struct_1(_wgslsmith_div_vec4_f32(var_2.d.a, _wgslsmith_div_vec4_f32(vec4<f32>(320f, arg_2.a.c.x, arg_1.a.b.x, var_2.b.x), arg_1.a.d.a)), vec2<f32>(_wgslsmith_f_op_f32(func_2(arg_2.a, 210f, arg_1.a)), arg_2.a.c.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1397f, -1000f))))), vec3<bool>(any(!vec3<bool>(false, false, arg_3.x)), !var_2.a, false), countOneBits(vec4<u32>(21914u, 4294967295u, 31735u, u_input.a) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 95451u, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 0u), vec4<u32>(0u, 4294967295u, u_input.a, 0u)))));
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(func_1(543f, false).a);
    let var_1 = false;
    var var_2 = vec2<bool>(all(vec3<bool>(!(!arg_0.c), any(vec4<bool>(false, false, true, false)), true)), all(vec2<bool>(arg_1, false)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_3.d.a * var_0.a.a))) + vec4<f32>(arg_3.b.x, func_4(arg_0.d, vec3<bool>(arg_1, false, var_2.x), vec4<u32>(41985u, 0u, u_input.a, 22822u)).a.x, 930f, _wgslsmith_f_op_f32(f32(-1f) * -494f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, var_0.a.b.x)), vec2<f32>(607f, func_4(var_0.a, !vec3<bool>(false, arg_1, true), abs(vec4<u32>(u_input.a, u_input.a, 27216u, 6034u))).b.x)));
    var var_4 = Struct_4(Struct_3(arg_2.x, arg_0.d.a.xyz, var_2.x, func_1(-712f, arg_2.x).a));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_6(func_5(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-24097i, -2147483647i, -23499i)), Struct_4(Struct_3(false, vec3<f32>(-2546f, 244f, -854f), false, Struct_1(vec4<f32>(-351f, 1793f, -818f, 1000f), vec2<f32>(1853f, 647f), vec2<f32>(-2420f, 1614f)))), func_1(_wgslsmith_f_op_f32(ceil(1570f)), true), vec2<bool>(true, true)), all(vec4<bool>(select(false, false, true), false, true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, any(vec2<bool>(true, true))), true & select(true, true, false)), func_5(-select(vec3<i32>(-2147483647i, 1i, 1i), vec3<i32>(-1i, 65132i, 5774i), true), Struct_4(Struct_3(true, vec3<f32>(1856f, -1035f, 1085f), true, Struct_1(vec4<f32>(673f, 802f, -775f, 141f), vec2<f32>(1101f, -197f), vec2<f32>(-524f, 1558f)))), func_1(_wgslsmith_f_op_f32(abs(1806f)), true), vec2<bool>(true, true))));
    var_0 = func_1(-556f, true);
    var var_1 = _wgslsmith_f_op_f32(var_0.a.a.x * _wgslsmith_f_op_f32(-1515f - _wgslsmith_f_op_f32(ceil(func_4(func_5(vec3<i32>(10722i, -1i, 25202i), Struct_4(Struct_3(false, var_0.a.a.xwy, false, Struct_1(var_0.a.a, var_0.a.c, var_0.a.c))), Struct_2(Struct_1(vec4<f32>(553f, var_0.a.b.x, var_0.a.b.x, -1897f), var_0.a.a.xw, vec2<f32>(var_0.a.c.x, var_0.a.c.x))), vec2<bool>(true, true)).d, select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec4<u32>(u_input.a, u_input.a, 1u, 0u) | vec4<u32>(u_input.a, 65883u, u_input.a, 1u)).a.x))));
    var_0 = Struct_2(func_6(func_5(~abs(vec3<i32>(-2147483647i, 26351i, -2147483647i)), Struct_4(func_5(vec3<i32>(42570i, 1i, -1i), Struct_4(Struct_3(true, var_0.a.a.yxz, false, var_0.a)), Struct_2(Struct_1(var_0.a.a, vec2<f32>(975f, 1089f), vec2<f32>(1781f, 719f))), vec2<bool>(false, true))), func_1(_wgslsmith_f_op_f32(-var_0.a.b.x), var_0.a.b.x < 694f), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, false))), false, vec2<bool>(true, _wgslsmith_f_op_f32(-var_0.a.a.x) <= _wgslsmith_f_op_f32(f32(-1f) * -1383f)), Struct_3(-1000f < var_0.a.a.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.a.a.wwx))), true, Struct_1(vec4<f32>(1064f, var_0.a.b.x, var_0.a.a.x, -126f), vec2<f32>(-348f, var_0.a.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1106f, var_0.a.c.x))))));
    let var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.c.x))), ~max(~2147483647i, _wgslsmith_div_i32(3578i, -55049i)) > firstTrailingBit(_wgslsmith_clamp_i32(select(28383i, -16490i, false), 1i, select(-18837i, 1i, true))));
    var var_3 = vec4<u32>(~(~_wgslsmith_sub_u32(u_input.a, 19772u) << (abs(~u_input.a) % 32u)), 55005u, firstLeadingBit(_wgslsmith_mult_u32(u_input.a, ~(~u_input.a))), _wgslsmith_mult_u32(u_input.a, ~4294967295u));
    let var_4 = func_6(Struct_3(false, vec3<f32>(-248f, _wgslsmith_f_op_f32(-var_2.a.a.x), _wgslsmith_f_op_f32(select(-764f, var_2.a.a.x, any(vec2<bool>(true, true))))), !(_wgslsmith_div_f32(var_2.a.b.x, var_0.a.c.x) < 605f), var_0.a), true, vec2<bool>(true, false), Struct_3((_wgslsmith_add_i32(1i, 14821i) >> (~var_3.x % 32u)) == _wgslsmith_div_i32(countOneBits(51334i), _wgslsmith_sub_i32(5496i, 10001i)), var_2.a.a.www, !all(vec4<bool>(true, false, true, false)), Struct_1(func_1(_wgslsmith_f_op_f32(var_0.a.b.x + var_2.a.a.x), true).a.a, func_4(Struct_1(var_2.a.a, vec2<f32>(-1250f, var_2.a.a.x), var_0.a.c), vec3<bool>(true, true, true), _wgslsmith_mult_vec4_u32(vec4<u32>(3513u, u_input.a, u_input.a, 53732u), vec4<u32>(var_3.x, 4294967295u, u_input.a, var_3.x))).a.xw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a.c * var_0.a.c))))).b;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec3_i32(-(~vec3<i32>(32657i, 31356i, 2147483647i)), vec3<i32>(~0i, ~(-1i), countOneBits(-23670i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 2147483647i, 4637i) << (vec3<u32>(var_3.x, 57382u, 8853u) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i))), vec4<i32>(35337i, ~(-4372i), 2147483647i, 29392i), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(1i, -36049i), 4602i, 1i, _wgslsmith_clamp_i32(0i, 0i, 0i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(0i, -2147483647i, 18181i, 0i), vec4<i32>(1i, 1i, 1i, 1i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_2.a.a.wy, vec2<f32>(var_0.a.a.x, 433f))))) * vec2<f32>(917f, func_5(abs(vec3<i32>(25572i, 0i, -10010i)), Struct_4(Struct_3(false, vec3<f32>(112f, var_0.a.a.x, 884f), true, var_0.a)), var_2, vec2<bool>(true, true)).b.x)), _wgslsmith_mult_vec3_u32(var_3.zzw >> (var_3.zwz % vec3<u32>(32u)), var_3.zxx));
}

