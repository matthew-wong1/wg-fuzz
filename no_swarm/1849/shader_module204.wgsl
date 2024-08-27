struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = vec2<f32>(-1070f, -2099f);
    let var_1 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), all(vec3<bool>(true, true, true)))));
    return firstLeadingBit(max(abs(firstTrailingBit(arg_0)), _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a.x, -1i, arg_0, 883i), vec4<i32>(u_input.a.x, arg_0, -21729i, arg_0)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, -1i, u_input.a.x), vec4<i32>(-38114i, u_input.a.x, u_input.a.x, u_input.a.x)))) & _wgslsmith_clamp_i32(firstLeadingBit(~18653i), _wgslsmith_mult_i32(-33810i & arg_0, -2147483647i), select(abs(arg_0), arg_0 << (0u % 32u), !var_1.x)));
}

fn func_2() -> vec3<i32> {
    var var_0 = ~firstTrailingBit(u_input.c.yxw ^ (~u_input.c.wwx >> (~u_input.c.yzy % vec3<u32>(32u))));
    var_0 = _wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(u_input.c.wxz, ~vec3<u32>(23854u, 25424u, u_input.b.x), ~u_input.c.zzw), ~select(~u_input.c.yzz, ~vec3<u32>(35472u, 35767u, 85029u), vec3<bool>(true, false, true))) | (~select(_wgslsmith_div_vec3_u32(u_input.c.wyz, u_input.c.xzw), ~u_input.c.yzx, true) ^ vec3<u32>(1u, u_input.b.x ^ _wgslsmith_mult_u32(var_0.x, var_0.x), ~u_input.b.x));
    var var_1 = Struct_2(u_input.c.xz, _wgslsmith_div_f32(718f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -636f), _wgslsmith_f_op_f32(-241f + _wgslsmith_f_op_f32(select(486f, -1490f, true))))), ~(-abs(u_input.a.x)), vec4<i32>(u_input.a.x, 1i, select(-2147483647i | func_3(0i), -1i, !all(vec4<bool>(true, true, true, false))), u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1873f) * _wgslsmith_f_op_f32(f32(-1f) * -289f)));
    var var_2 = select(vec2<bool>(true, true), vec2<bool>(false, false), !vec2<bool>(true, var_0.x <= 25731u));
    var_2 = vec2<bool>(var_2.x, true);
    return abs(u_input.a);
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> Struct_5 {
    let var_0 = Struct_2(max(u_input.b << (vec2<u32>(max(1u, 4294967295u), u_input.c.x) % vec2<u32>(32u)), vec2<u32>(reverseBits(0u), ~18539u) ^ _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.ww, vec2<u32>(4294967295u, 4294967295u)), reverseBits(vec2<u32>(u_input.c.x, 4294967295u)), ~vec2<u32>(8621u, u_input.b.x))), -1365f, u_input.a.x, vec4<i32>(-1i & ~_wgslsmith_mod_i32(-7210i, u_input.a.x), ~u_input.a.x, abs(-u_input.a.x), select(1i, select(18084i, i32(-1i) * -1i, arg_0.x), arg_0.x)), _wgslsmith_f_op_f32(abs(1138f)));
    let var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.c.wwz, _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, var_0.a.x, var_0.a.x), vec3<u32>(u_input.c.x, 4294967295u, 0u)), u_input.c.yyy), abs(u_input.c.zwz) & abs(vec3<u32>(125u, u_input.c.x, 0u))), vec3<u32>(select(~u_input.b.x, 77697u, !arg_0.x), var_0.a.x, 1u)), vec3<u32>(1109u, 20056u ^ reverseBits(u_input.b.x | 322u), _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.c.yxw), countOneBits(vec3<u32>(var_0.a.x, u_input.c.x, 0u))) >> (~(~u_input.b.x) % 32u)));
    var var_2 = select(firstTrailingBit(_wgslsmith_add_vec3_i32(var_0.d.ywy, vec3<i32>(u_input.a.x, var_0.c, -40701i)) ^ ~vec3<i32>(var_0.c, -2147483647i, -11396i)), ~func_2(), !vec3<bool>(any(arg_0.xxy), true, arg_0.x)) ^ (vec3<i32>(u_input.a.x, countOneBits(var_0.d.x), _wgslsmith_clamp_i32(abs(u_input.a.x), -21635i, -55538i)) ^ var_0.d.zxx);
    var var_3 = _wgslsmith_sub_i32(func_2().x, ~(var_0.d.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, u_input.c.x, var_0.a.x), u_input.c.wwy) % 32u)));
    var_2 = vec3<i32>(firstLeadingBit(u_input.a.x), ~u_input.a.x, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, ~(~u_input.a.x), ~(-2147483647i)));
    return Struct_5(all(!select(!vec3<bool>(arg_0.x, false, false), vec3<bool>(arg_0.x, false, true), !arg_0.zwx)));
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    var var_0 = ~(~(-1i));
    var var_1 = Struct_1(func_3(u_input.a.x), vec2<bool>(arg_0.a, true), u_input.a.x, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(168f, _wgslsmith_f_op_f32(1f * 1f), _wgslsmith_f_op_f32(-419f - -307f), _wgslsmith_f_op_f32(-1000f * 438f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(418f)))));
    return Struct_3(~reverseBits(u_input.c.yxw), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(200f * -1857f))), -909f, var_1.e), vec3<f32>(-1099f, 1000f, _wgslsmith_f_op_f32(select(var_1.e, _wgslsmith_f_op_f32(trunc(1247f)), select(arg_0.a, true, true)))))), Struct_1(-_wgslsmith_dot_vec3_i32(u_input.a, reverseBits(vec3<i32>(u_input.a.x, 22194i, var_1.a))), !vec2<bool>(arg_0.a, true), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), vec4<i32>(u_input.a.x, -14556i, var_1.a, u_input.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 940f, 1320f, -1360f) + vec4<f32>(1204f, var_1.d.x, -532f, -989f)), vec4<f32>(var_1.d.x, -465f, var_1.e, 1185f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.d.x, -1000f, 1096f, -737f)))), !vec4<bool>(arg_0.a, arg_0.a, arg_0.a, var_1.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.e)))), 861f);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> f32 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.yy, -_wgslsmith_div_vec2_i32(firstLeadingBit(u_input.a.yz), -arg_3.d.ww)), u_input.a.xy);
    let var_2 = arg_1.b;
    let var_3 = vec4<bool>(true, arg_1.c.b.x, arg_1.c.b.x, false);
    let var_4 = _wgslsmith_clamp_i32(-2147483647i, 22522i, arg_3.c);
    return 339f;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_5(!((true & any(vec4<bool>(false, true, true, false))) && true));
    var_0 = func_1(vec4<bool>(!(false != any(vec4<bool>(var_0.a, var_0.a, true, true))), !any(vec3<bool>(var_0.a, var_0.a, false)) || (any(vec4<bool>(var_0.a, true, var_0.a, true)) && any(vec4<bool>(var_0.a, true, var_0.a, var_0.a))), var_0.a, false), 1124f);
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1169f, 571f) + vec2<f32>(2505f, -889f)), vec2<f32>(arg_2.b, arg_2.b))))), func_4(func_1(!vec4<bool>(var_0.a, false, var_0.a, false), _wgslsmith_f_op_f32(trunc(-2276f)))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-924f * _wgslsmith_f_op_f32(max(224f, -306f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(var_1.b.d, var_1.b.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1369f, -983f, arg_0.b, -935f), var_1.b.d)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_1.b.d))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1199f, 179f, arg_0.e, -715f) * vec4<f32>(arg_1.e, -745f, 1289f, 1000f)) - _wgslsmith_f_op_vec4_f32(-var_1.b.d))) * var_1.b.d));
    return Struct_2(arg_0.a, var_1.c, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_0.d.x, -(arg_0.c >> (arg_0.a.x % 32u))), arg_0.d.x, -60265i), vec4<i32>(arg_2.c, -40889i, -27912i, func_2().x), _wgslsmith_f_op_f32(-arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(~max(u_input.b, vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(func_5(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), func_4(func_1(vec4<bool>(false, true, false, true), -779f)), _wgslsmith_mod_u32(firstTrailingBit(0u), u_input.b.x), Struct_2(~u_input.c.zx, _wgslsmith_f_op_f32(floor(-1673f)), _wgslsmith_mod_i32(u_input.a.x, 2147483647i), vec4<i32>(-10045i, 7482i, 46386i, -2147483647i), -819f))), _wgslsmith_dot_vec3_i32(-(vec3<i32>(2147483647i, 39042i, u_input.a.x) << (vec3<u32>(33505u, 1u, u_input.b.x) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(17673i, 17841i, -30412i)), u_input.a, select(vec3<i32>(-3907i, 0i, -2147483647i), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), true))), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, _wgslsmith_clamp_i32(u_input.a.x, 2147483647i, 2147483647i), reverseBits(u_input.a.x), _wgslsmith_add_i32(u_input.a.x, -36275i)), ~max(vec4<i32>(5099i, -36387i, -18177i, u_input.a.x), vec4<i32>(-1i, -60529i, -19566i, u_input.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -963f) * 1110f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1540f, -107f) - _wgslsmith_f_op_f32(-1553f * 286f)))), Struct_2(min(select(min(vec2<u32>(1u, u_input.c.x), vec2<u32>(24487u, 4294967295u)), u_input.c.wx, vec2<bool>(true, false)), vec2<u32>(~21038u, 1u)), 159f, abs(countOneBits(~0i)), vec4<i32>(_wgslsmith_div_i32(u_input.a.x, ~u_input.a.x), u_input.a.x, -select(u_input.a.x, -34677i, true), 1i), _wgslsmith_f_op_f32(func_4(Struct_5(true)).b.x - -262f)), Struct_2(vec2<u32>(4294967295u << (u_input.b.x % 32u), u_input.c.x) >> (~abs(vec2<u32>(0u, u_input.b.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-1f), min(_wgslsmith_mult_i32(u_input.a.x, min(1i, u_input.a.x)), 9915i), -vec4<i32>(1i, -2855i, i32(-1i) * -3403i, -1i), -665f));
    var_0 = Struct_2(vec2<u32>(var_0.a.x, reverseBits(_wgslsmith_dot_vec4_u32(~u_input.c, u_input.c))), var_0.e, _wgslsmith_sub_i32(1i, 20246i), var_0.d, _wgslsmith_f_op_f32(step(-733f, func_6(func_6(func_6(Struct_2(var_0.a, -271f, 2147483647i, var_0.d, -2630f), Struct_2(vec2<u32>(var_0.a.x, u_input.c.x), var_0.b, 0i, vec4<i32>(1i, var_0.c, 1i, var_0.d.x), 522f), Struct_2(var_0.a, var_0.e, 1i, var_0.d, 2093f)), Struct_2(var_0.a, var_0.e, 44138i, var_0.d, -2197f), Struct_2(vec2<u32>(70247u, var_0.a.x), var_0.e, u_input.a.x, var_0.d, -2241f)), func_6(func_6(Struct_2(u_input.b, var_0.b, 16496i, vec4<i32>(var_0.d.x, 1i, 2147483647i, u_input.a.x), 105f), Struct_2(vec2<u32>(var_0.a.x, u_input.b.x), 141f, 1i, var_0.d, var_0.e), Struct_2(vec2<u32>(19831u, 58584u), var_0.b, 23985i, vec4<i32>(-8005i, u_input.a.x, u_input.a.x, 39063i), -1498f)), func_6(Struct_2(u_input.c.xx, 337f, u_input.a.x, vec4<i32>(u_input.a.x, 44515i, var_0.d.x, -10886i), 305f), Struct_2(vec2<u32>(22999u, 79756u), -884f, 31629i, var_0.d, -679f), Struct_2(vec2<u32>(var_0.a.x, 1u), var_0.e, u_input.a.x, vec4<i32>(var_0.c, -17618i, var_0.d.x, 2147483647i), var_0.b)), func_6(Struct_2(vec2<u32>(71461u, 0u), 547f, -2147483647i, vec4<i32>(16867i, 28899i, var_0.d.x, var_0.c), 499f), Struct_2(vec2<u32>(var_0.a.x, 33637u), 188f, u_input.a.x, var_0.d, 791f), Struct_2(vec2<u32>(41631u, 4294967295u), -1803f, u_input.a.x, var_0.d, var_0.b))), Struct_2(var_0.a, var_0.e, ~u_input.a.x, firstTrailingBit(vec4<i32>(50657i, u_input.a.x, -2147483647i, var_0.c)), -721f)).b)));
    let var_1 = _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(func_5(vec4<bool>(true, true, true, true), Struct_3(_wgslsmith_mod_vec3_u32(vec3<u32>(100355u, 1u, 1u), max(u_input.c.zwy, vec3<u32>(u_input.c.x, u_input.c.x, 51752u))), vec3<f32>(-1183f, _wgslsmith_div_f32(-502f, var_0.e), func_4(Struct_5(false)).b.x), Struct_1(var_0.d.x, vec2<bool>(true, true), func_3(69982i), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, 1218f, var_0.e, -1000f), vec4<f32>(var_0.b, var_0.e, -405f, -864f)), var_0.b), _wgslsmith_f_op_f32(207f - _wgslsmith_div_f32(var_0.b, var_0.b))), firstTrailingBit(4294967295u), func_6(func_6(Struct_2(vec2<u32>(u_input.c.x, var_0.a.x), var_0.b, 30278i, vec4<i32>(u_input.a.x, 6657i, -2147483647i, u_input.a.x), -322f), func_6(Struct_2(var_0.a, var_0.b, -61985i, vec4<i32>(u_input.a.x, var_0.d.x, 1i, 1i), var_0.b), Struct_2(u_input.c.xz, 554f, -1i, var_0.d, var_0.b), Struct_2(vec2<u32>(u_input.c.x, 4294967295u), -1523f, u_input.a.x, var_0.d, 785f)), func_6(Struct_2(var_0.a, -167f, u_input.a.x, vec4<i32>(var_0.c, -1i, -1i, 58070i), var_0.b), Struct_2(u_input.b, var_0.b, -45604i, var_0.d, 812f), Struct_2(u_input.b, 678f, var_0.d.x, var_0.d, var_0.b))), func_6(func_6(Struct_2(vec2<u32>(4294967295u, 0u), 1290f, -17576i, var_0.d, -100f), Struct_2(vec2<u32>(var_0.a.x, u_input.c.x), 1415f, var_0.c, vec4<i32>(-2099i, 1684i, -38154i, 0i), -739f), Struct_2(vec2<u32>(0u, var_0.a.x), var_0.b, var_0.c, var_0.d, var_0.b)), func_6(Struct_2(var_0.a, var_0.e, 2147483647i, vec4<i32>(-2147483647i, var_0.d.x, u_input.a.x, -2147483647i), 1000f), Struct_2(vec2<u32>(10619u, u_input.b.x), 567f, 2147483647i, var_0.d, var_0.e), Struct_2(vec2<u32>(1u, u_input.c.x), 836f, -26423i, var_0.d, 1867f)), Struct_2(u_input.c.xz, -886f, 2147483647i, vec4<i32>(-2147483647i, 0i, u_input.a.x, 0i), var_0.e)), Struct_2(firstLeadingBit(var_0.a), func_6(Struct_2(var_0.a, var_0.b, 14735i, vec4<i32>(10973i, 2147483647i, 2147483647i, u_input.a.x), var_0.b), Struct_2(vec2<u32>(4575u, 39215u), var_0.b, var_0.c, var_0.d, -1186f), Struct_2(vec2<u32>(var_0.a.x, 7398u), var_0.e, u_input.a.x, var_0.d, var_0.b)).e, _wgslsmith_dot_vec4_i32(var_0.d, var_0.d), vec4<i32>(2147483647i, 34076i, var_0.d.x, var_0.d.x), 1076f)))));
    var_0 = func_6(Struct_2(~func_4(func_1(vec4<bool>(false, false, false, true), 491f)).a.xz, -1205f, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, -var_0.d.x), 0i), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, abs(vec3<i32>(var_0.c, 2147483647i, var_0.c))), reverseBits(_wgslsmith_add_i32(u_input.a.x, 2147483647i)), _wgslsmith_mod_i32(var_0.d.x >> (u_input.c.x % 32u), 49608i), -2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1)), 283f)), func_6(func_6(func_6(func_6(Struct_2(var_0.a, -271f, -13852i, vec4<i32>(var_0.c, u_input.a.x, var_0.c, -2147483647i), -638f), Struct_2(vec2<u32>(u_input.b.x, 1u), var_0.e, 2147483647i, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 1i), var_1), Struct_2(vec2<u32>(var_0.a.x, 29443u), -812f, var_0.c, vec4<i32>(-2147483647i, 37842i, -2147483647i, var_0.d.x), var_1)), func_6(Struct_2(vec2<u32>(var_0.a.x, u_input.c.x), var_0.b, var_0.d.x, vec4<i32>(59715i, -25201i, var_0.c, var_0.d.x), var_1), Struct_2(u_input.b, var_0.b, -1i, vec4<i32>(u_input.a.x, -32385i, 3245i, u_input.a.x), -531f), Struct_2(vec2<u32>(var_0.a.x, var_0.a.x), 807f, 47586i, var_0.d, var_0.b)), func_6(Struct_2(vec2<u32>(u_input.c.x, var_0.a.x), -1000f, var_0.c, var_0.d, 2196f), Struct_2(var_0.a, var_0.e, 0i, var_0.d, -1058f), Struct_2(u_input.b, var_0.b, u_input.a.x, var_0.d, 1693f))), func_6(Struct_2(u_input.b, -1000f, u_input.a.x, var_0.d, var_1), Struct_2(u_input.b, var_0.b, 2147483647i, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2048i), -1000f), func_6(Struct_2(var_0.a, var_0.b, -1i, vec4<i32>(u_input.a.x, -11238i, 2147483647i, -1i), -1368f), Struct_2(vec2<u32>(0u, u_input.c.x), -441f, u_input.a.x, var_0.d, var_0.e), Struct_2(vec2<u32>(4294967295u, u_input.c.x), 1373f, -2147483647i, var_0.d, var_0.b))), Struct_2(vec2<u32>(u_input.b.x, 4294967295u), _wgslsmith_f_op_f32(1168f * var_1), _wgslsmith_add_i32(-47732i, 23808i), -var_0.d, _wgslsmith_f_op_f32(-var_0.b))), func_6(func_6(Struct_2(u_input.b, 515f, 35590i, vec4<i32>(0i, u_input.a.x, var_0.d.x, u_input.a.x), 594f), Struct_2(vec2<u32>(1u, 19574u), -306f, u_input.a.x, var_0.d, -764f), Struct_2(vec2<u32>(u_input.b.x, 12092u), 1000f, 1i, vec4<i32>(var_0.d.x, -39373i, u_input.a.x, 1527i), -467f)), Struct_2(var_0.a, _wgslsmith_f_op_f32(var_0.e * 819f), var_0.c, vec4<i32>(var_0.c, var_0.d.x, var_0.c, var_0.c) << (u_input.c % vec4<u32>(32u)), _wgslsmith_f_op_f32(round(var_0.e))), func_6(Struct_2(vec2<u32>(64184u, 67635u), var_0.e, 34380i, var_0.d, 1766f), func_6(Struct_2(vec2<u32>(17431u, u_input.b.x), var_1, -12916i, var_0.d, var_1), Struct_2(vec2<u32>(u_input.b.x, 17092u), -244f, var_0.d.x, vec4<i32>(-28131i, u_input.a.x, u_input.a.x, 2147483647i), var_1), Struct_2(vec2<u32>(93598u, 10108u), -793f, 21706i, var_0.d, 1051f)), func_6(Struct_2(var_0.a, -437f, -1i, var_0.d, -459f), Struct_2(var_0.a, var_0.e, var_0.c, var_0.d, var_1), Struct_2(u_input.b, var_0.b, u_input.a.x, vec4<i32>(var_0.d.x, -2147483647i, -22920i, -2147483647i), 2113f)))), Struct_2(~var_0.a, _wgslsmith_f_op_f32(func_5(vec4<bool>(true, false, true, true), func_4(Struct_5(false)), 1u, func_6(Struct_2(vec2<u32>(u_input.c.x, var_0.a.x), 1000f, 1i, var_0.d, -1203f), Struct_2(vec2<u32>(4294967295u, 61739u), 462f, u_input.a.x, var_0.d, -202f), Struct_2(vec2<u32>(14078u, var_0.a.x), -1264f, var_0.d.x, var_0.d, 1692f)))), _wgslsmith_div_i32(~var_0.c, _wgslsmith_sub_i32(u_input.a.x, 20622i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 25523i, u_input.a.x, 1i), vec4<i32>(64968i, u_input.a.x, 23724i, 8259i)), 318f)), Struct_2(vec2<u32>(var_0.a.x, u_input.b.x), 1000f, var_0.c, _wgslsmith_mult_vec4_i32(-var_0.d, var_0.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-143f)), _wgslsmith_f_op_f32(-var_0.b), true)), var_0.b)));
    let var_2 = Struct_1(abs(~(~_wgslsmith_sub_i32(-25935i, u_input.a.x))), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), var_0.e >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1685f, -1345f)), -674f)), var_0.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1119f + 970f), _wgslsmith_div_f32(1493f, 646f), 1f, var_0.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.b)), func_6(Struct_2(u_input.b, -3490f, var_0.d.x, var_0.d, 374f), Struct_2(u_input.b, -498f, u_input.a.x, var_0.d, var_1), Struct_2(vec2<u32>(var_0.a.x, 7136u), var_1, var_0.c, vec4<i32>(23094i, -21288i, -12999i, -2147483647i), var_0.e)).b, var_1, _wgslsmith_f_op_f32(730f * var_1)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_0.b, var_1)) * vec4<f32>(-1259f, var_1, var_0.e, var_0.e)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -758f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.e)) * 1062f)));
    let var_3 = ~0u;
    var var_4 = u_input.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(~select(~u_input.c, ~select(u_input.c, u_input.c, vec4<bool>(var_2.b.x, true, var_2.b.x, true)), true || func_4(Struct_5(true)).c.b.x));
}

