struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 44595u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_3) -> f32 {
    global0 = 58222u;
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1669f))), _wgslsmith_f_op_f32(round(-565f)))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-283f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(min(1727f, arg_0.a)), all(vec3<bool>(false, true, true))))))) + var_0);
    var var_2 = firstTrailingBit(42915u);
    global0 = abs(4294967295u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -504f) * var_1));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(countOneBits(firstLeadingBit(~(~u_input.a))));
    var var_1 = all(vec3<bool>(all(vec2<bool>(true, true)), true, (all(vec2<bool>(false, true)) & all(vec2<bool>(true, false))) || all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false))));
    global0 = _wgslsmith_mod_u32(abs(firstLeadingBit(firstTrailingBit(11666u))), 27711u) & 8754u;
    var_1 = _wgslsmith_add_u32(60122u, u_input.a.x) < (u_input.a.x ^ arg_2.c.a.x);
    var var_2 = Struct_2(arg_3, Struct_1(~(~vec2<u32>(arg_2.c.a.x, arg_0.x))), Struct_1(~vec2<u32>(reverseBits(u_input.a.x), 1u)), -firstTrailingBit(vec2<i32>(2147483647i, arg_2.b.d.x) ^ arg_2.b.d), ~(~(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, var_0.a.x), arg_2.b.e) ^ (arg_2.b.e << (arg_2.b.e % vec4<u32>(32u))))));
    return -1i;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = vec4<i32>(arg_0.x, arg_3.x, -arg_3.x, func_4(max(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.a.x, u_input.a.x), vec3<u32>(1u, 4294967295u, arg_1.a.x)), _wgslsmith_add_vec3_u32(vec3<u32>(42490u, arg_1.a.x, 46591u), vec3<u32>(4294967295u, 69527u, 0u)) >> (vec3<u32>(u_input.a.x, 4294967295u, 90717u) % vec3<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1346f + 284f)), _wgslsmith_f_op_f32(func_3(Struct_3(200f, Struct_2(arg_2, Struct_1(vec2<u32>(u_input.a.x, arg_2.a.x)), Struct_1(vec2<u32>(0u, arg_2.a.x)), vec2<i32>(-9335i, -2147483647i), vec4<u32>(0u, 43183u, 28490u, 4294967295u)), arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -518f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-968f))))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1621f, -934f)), Struct_2(Struct_1(vec2<u32>(arg_1.a.x, arg_1.a.x)), Struct_1(vec2<u32>(arg_1.a.x, 16062u)), Struct_1(vec2<u32>(1u, 37986u)), vec2<i32>(26225i, arg_0.x) | vec2<i32>(arg_0.x, 17086i), _wgslsmith_div_vec4_u32(vec4<u32>(24260u, u_input.a.x, 42612u, 82356u), vec4<u32>(arg_1.a.x, 43345u, arg_1.a.x, 4294967295u))), Struct_1(vec2<u32>(arg_2.a.x, 54322u) << (arg_1.a % vec2<u32>(32u)))), arg_2));
    return Struct_1(~vec2<u32>(arg_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(32898u, arg_2.a.x, arg_1.a.x, u_input.a.x), vec4<u32>(4294967295u, arg_1.a.x, 70988u, arg_2.a.x)) << (reverseBits(arg_1.a.x) % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<u32>) -> vec4<f32> {
    global0 = _wgslsmith_mult_u32(4294967295u, min(0u, arg_1.x)) ^ 4294967295u;
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(159f)) * 260f))), Struct_2(Struct_1(arg_1.xx), func_2(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -1i, -2147483647i), vec3<i32>(1i, 1i, 2147483647i))), arg_0, Struct_1(vec2<u32>(arg_2.x, 1u)), vec3<i32>(1i, 1i, 1i)), arg_0, select(vec2<i32>(1i, 1i), -_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(0i, -2147483647i)), vec2<bool>(true, true)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, _wgslsmith_mult_u32(arg_0.a.x, 20140u), 53392u, 25877u), max(vec4<u32>(4294967295u, 31012u, arg_1.x, arg_1.x) ^ vec4<u32>(0u, arg_1.x, 81959u, 4294967295u), countOneBits(vec4<u32>(u_input.a.x, 1u, 26235u, 1u))))), arg_0);
    global0 = 1u;
    global0 = arg_0.a.x;
    let var_1 = all(vec4<bool>(false, select(true, true, true), any(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))), (true && any(vec2<bool>(true, true))) | (true & any(vec4<bool>(true, true, false, true)))));
    return vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-986f + _wgslsmith_f_op_f32(-480f + 233f)) + -671f), var_0.a)), _wgslsmith_f_op_f32(exp2(var_0.a)), _wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.a, var_0.a)), _wgslsmith_f_op_f32(var_0.a + var_0.a), var_1)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0.a)))))));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> vec4<i32> {
    global0 = ~0u & _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, arg_1.a.x), u_input.a.x ^ 34599u), 0u), ~(~1u));
    global0 = _wgslsmith_mod_u32(arg_1.a.x, _wgslsmith_mod_u32(abs(u_input.a.x), arg_0));
    let var_0 = 9282u;
    global0 = firstLeadingBit(u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.x)));
    return firstLeadingBit(abs(_wgslsmith_sub_vec4_i32((vec4<i32>(0i, -1i, -542i, 1i) << (vec4<u32>(arg_0, arg_0, 13083u, 3304u) % vec4<u32>(32u))) | ~vec4<i32>(-2147483647i, -1i, 14689i, 17877i), abs(abs(vec4<i32>(5664i, -1i, -50691i, 11377i))))));
}

fn func_7(arg_0: vec4<i32>, arg_1: vec2<f32>) -> i32 {
    var var_0 = Struct_2(Struct_1(func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, 22841i), arg_0.yxz) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(24675i, arg_0.x, arg_0.x), arg_0.wyx), Struct_1(vec2<u32>(u_input.a.x, u_input.a.x)), Struct_1(_wgslsmith_div_vec2_u32(u_input.a, u_input.a)), firstTrailingBit(vec3<i32>(-1i, arg_0.x, arg_0.x))).a), Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a, u_input.a)), func_2(vec3<i32>(-1i, 1i, 48102i), func_2(arg_0.yww, Struct_1(u_input.a), Struct_1(u_input.a), vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), func_2(arg_0.zyw, Struct_1(u_input.a), Struct_1(vec2<u32>(u_input.a.x, u_input.a.x)), vec3<i32>(arg_0.x, 11894i, -2147483647i)), max(vec3<i32>(1i, arg_0.x, arg_0.x), arg_0.zzw)).a)), func_2(vec3<i32>(~(~arg_0.x), _wgslsmith_mod_i32(-arg_0.x, _wgslsmith_clamp_i32(2147483647i, -8466i, -30965i)), -18399i), Struct_1(vec2<u32>(~u_input.a.x, max(1u, u_input.a.x))), func_2(arg_0.xyx, Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a, u_input.a)), func_2(vec3<i32>(2147483647i, arg_0.x, arg_0.x), func_2(arg_0.yxy, Struct_1(u_input.a), Struct_1(vec2<u32>(35314u, 4294967295u)), arg_0.zyx), Struct_1(vec2<u32>(u_input.a.x, 0u)), arg_0.xxw), arg_0.yyx), -(vec3<i32>(1i, arg_0.x, arg_0.x) & select(arg_0.yww, arg_0.yzx, false))), _wgslsmith_add_vec2_i32(arg_0.xx, arg_0.xz), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 40868u) >> (vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), abs(vec4<u32>(1u, 1u, u_input.a.x, 0u)) | firstTrailingBit(vec4<u32>(79054u, u_input.a.x, u_input.a.x, 4294967295u))), vec4<u32>(u_input.a.x, ~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 0u), ~u_input.a.x) >> ((~vec4<u32>(u_input.a.x, 70159u, 12652u, u_input.a.x) | countOneBits(vec4<u32>(1u, u_input.a.x, u_input.a.x, 90295u))) % vec4<u32>(32u)), vec4<u32>(1u, firstLeadingBit(~u_input.a.x), ~func_2(arg_0.zxw, Struct_1(u_input.a), Struct_1(vec2<u32>(4294967295u, 69276u)), vec3<i32>(-3004i, arg_0.x, arg_0.x)).a.x, 71715u)));
    let var_1 = Struct_2(Struct_1(vec2<u32>(select(0u, select(0u, 4294967295u, true), true), var_0.c.a.x)), var_0.a, func_2(_wgslsmith_mod_vec3_i32(arg_0.xzy, countOneBits(-vec3<i32>(2147483647i, -1i, 35051i))), Struct_1(select(vec2<u32>(23875u, var_0.e.x), min(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)), vec2<bool>(true, true))), var_0.c, countOneBits(arg_0.wxy)), var_0.d, var_0.e);
    var var_2 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_3 = func_2(vec3<i32>(_wgslsmith_add_i32(var_1.d.x, var_1.d.x), var_1.d.x, firstLeadingBit(var_1.d.x)) >> (firstTrailingBit(abs(~vec3<u32>(43721u, u_input.a.x, u_input.a.x))) % vec3<u32>(32u)), Struct_1(abs(u_input.a)), func_2(~vec3<i32>(24698i, ~var_0.d.x, var_1.d.x), func_2(vec3<i32>(var_1.d.x, arg_0.x, -1i), var_1.a, func_2(reverseBits(arg_0.ywy), var_0.a, func_2(vec3<i32>(var_1.d.x, -1i, var_0.d.x), Struct_1(vec2<u32>(1u, 16770u)), Struct_1(var_0.a.a), vec3<i32>(30285i, var_1.d.x, var_1.d.x)), -vec3<i32>(arg_0.x, var_0.d.x, var_1.d.x)), vec3<i32>(2147483647i | var_1.d.x, abs(var_0.d.x), ~1i)), func_2(vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.d, vec2<i32>(1i, arg_0.x)), _wgslsmith_mod_i32(var_1.d.x, 1i), 2147483647i), Struct_1(var_1.c.a), Struct_1(vec2<u32>(0u, 14728u)), select(arg_0.zwy, select(vec3<i32>(var_0.d.x, 0i, -2147483647i), vec3<i32>(arg_0.x, -19894i, 2147483647i), vec3<bool>(true, true, false)), vec3<bool>(true, true, true))), vec3<i32>(var_1.d.x, arg_0.x, -18089i)), arg_0.wzy);
    global0 = u_input.a.x;
    return -1i;
}

fn func_1() -> Struct_3 {
    var var_0 = func_7(func_6(abs(61646u >> (min(u_input.a.x, u_input.a.x) % 32u)), Struct_1(~u_input.a ^ vec2<u32>(u_input.a.x, 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(720f, 1697f, 2588f, 804f))))) * _wgslsmith_f_op_vec4_f32(func_5(func_2(vec3<i32>(2147483647i, 9340i, 2147483647i), Struct_1(vec2<u32>(9993u, u_input.a.x)), Struct_1(vec2<u32>(0u, u_input.a.x)), vec3<i32>(-2147483647i, -2147483647i, -6526i)), vec3<u32>(41811u, 4294967295u, 42405u), func_2(vec3<i32>(6096i, 25675i, -58469i), Struct_1(vec2<u32>(1u, u_input.a.x)), Struct_1(u_input.a), vec3<i32>(2147483647i, 1i, 1i)).a))), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1723f, 510f), _wgslsmith_f_op_f32(max(-973f, 1140f)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f)), _wgslsmith_f_op_f32(func_3(Struct_3(-1000f, Struct_2(Struct_1(u_input.a), Struct_1(vec2<u32>(u_input.a.x, 1u)), Struct_1(u_input.a), vec2<i32>(-1i, 0i), vec4<u32>(u_input.a.x, 10585u, 4294967295u, 4294967295u)), Struct_1(vec2<u32>(0u, u_input.a.x))))))));
    var_0 = 34061i;
    let var_1 = vec2<i32>(select(~(~(~5040i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-61478i, 2147483647i >> (u_input.a.x % 32u)), -vec2<i32>(29104i, 2147483647i) << (vec2<u32>(u_input.a.x, 49317u) % vec2<u32>(32u))), all(vec3<bool>(true, true, true))), -(-1i << (_wgslsmith_sub_u32(func_2(vec3<i32>(2147483647i, 2147483647i, 0i), Struct_1(vec2<u32>(0u, 1u)), Struct_1(u_input.a), vec3<i32>(26361i, 1i, 2147483647i)).a.x, _wgslsmith_mult_u32(1u, 57093u)) % 32u)));
    global0 = u_input.a.x;
    let var_2 = func_2(-_wgslsmith_sub_vec3_i32(-countOneBits(vec3<i32>(17388i, 15990i, var_1.x)), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(22334i, var_1.x, 33450i)), vec3<i32>(32859i, -1i, -2147483647i) << (vec3<u32>(4294967295u, 78496u, u_input.a.x) % vec3<u32>(32u)), select(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(-2147483647i, var_1.x, var_1.x), false))), func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(countOneBits(var_1.x), -var_1.x, var_1.x ^ var_1.x), vec3<i32>(var_1.x, 2147483647i, -2147483647i), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, -2147483647i, var_1.x), vec3<i32>(-22473i, var_1.x, 34806i)), -vec3<i32>(-2147483647i, 47550i, -14949i))), func_2(~vec3<i32>(-1i, -1i, 46532i), func_2(~vec3<i32>(-2147483647i, 0i, 0i), func_2(vec3<i32>(-1i, 32694i, var_1.x), Struct_1(vec2<u32>(u_input.a.x, u_input.a.x)), Struct_1(vec2<u32>(11680u, u_input.a.x)), vec3<i32>(var_1.x, var_1.x, var_1.x)), func_2(vec3<i32>(var_1.x, var_1.x, var_1.x), Struct_1(u_input.a), Struct_1(vec2<u32>(0u, 0u)), vec3<i32>(1305i, var_1.x, var_1.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(var_1.x, -8115i, var_1.x))), Struct_1(~vec2<u32>(32792u, 51280u)), vec3<i32>(_wgslsmith_div_i32(1124i, var_1.x), ~2147483647i, func_6(u_input.a.x, Struct_1(u_input.a), vec4<f32>(-179f, -148f, 295f, 177f), true).x)), func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 0i, var_1.x) << (vec3<u32>(66885u, u_input.a.x, 26220u) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(var_1.x, var_1.x, var_1.x))), func_2(vec3<i32>(var_1.x, -1i, 17894i), Struct_1(u_input.a), func_2(vec3<i32>(-1i, var_1.x, var_1.x), Struct_1(vec2<u32>(25553u, u_input.a.x)), Struct_1(vec2<u32>(29744u, u_input.a.x)), vec3<i32>(-1i, 24044i, var_1.x)), ~vec3<i32>(var_1.x, -9361i, var_1.x)), Struct_1(~u_input.a), vec3<i32>(0i, 15110i, var_1.x) >> (~vec3<u32>(0u, 4294967295u, 12012u) % vec3<u32>(32u))), vec3<i32>(i32(-1i) * -var_1.x, -var_1.x, -1i)), Struct_1(_wgslsmith_add_vec2_u32(u_input.a, countOneBits(u_input.a) << (abs(vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)))), ~_wgslsmith_clamp_vec3_i32(func_6(u_input.a.x, Struct_1(u_input.a), vec4<f32>(-1673f, 849f, 997f, 309f), true).yyw ^ (vec3<i32>(0i, -1558i, var_1.x) ^ vec3<i32>(var_1.x, var_1.x, var_1.x)), vec3<i32>(-32993i, -var_1.x, 21665i & var_1.x), vec3<i32>(_wgslsmith_mod_i32(var_1.x, var_1.x), var_1.x, ~0i)));
    return Struct_3(_wgslsmith_f_op_vec4_f32(func_5(Struct_1(~firstTrailingBit(vec2<u32>(u_input.a.x, 1u))), vec3<u32>(min(var_2.a.x, 23690u), func_2(select(vec3<i32>(var_1.x, -2147483647i, var_1.x), vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, true, false)), var_2, var_2, _wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, 12042i, var_1.x), vec3<i32>(1i, 50262i, var_1.x))).a.x, 625u), var_2.a)).x, Struct_2(var_2, var_2, var_2, vec2<i32>(func_6(1u, var_2, vec4<f32>(-1288f, 362f, -869f, 1309f), true).x, 7939i) << (_wgslsmith_sub_vec2_u32(u_input.a | vec2<u32>(u_input.a.x, 10501u), vec2<u32>(u_input.a.x, var_2.a.x)) % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, var_2.a.x, 4294967295u, 14792u), ~vec4<u32>(var_2.a.x, u_input.a.x, 1u, u_input.a.x)))), func_2(~(~vec3<i32>(var_1.x, 14487i, var_1.x)), func_2(vec3<i32>(2147483647i, -var_1.x, var_1.x), func_2(vec3<i32>(var_1.x, 56588i, var_1.x), var_2, Struct_1(var_2.a), -vec3<i32>(0i, -2147483647i, var_1.x)), func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, -26683i, var_1.x), vec3<i32>(44628i, -2147483647i, -1i), vec3<i32>(var_1.x, -2147483647i, var_1.x)), var_2, func_2(vec3<i32>(var_1.x, -2147483647i, -6104i), var_2, var_2, vec3<i32>(2147483647i, 1i, var_1.x)), -vec3<i32>(1i, var_1.x, -32403i)), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 0i, 59093i), vec3<i32>(var_1.x, var_1.x, 2147483647i)), vec3<i32>(var_1.x, -1i, 29308i))), Struct_1(var_2.a), ~vec3<i32>(var_1.x, var_1.x, 0i)));
}

fn func_8(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    global0 = ~4294967295u;
    global0 = 33179u;
    var var_0 = arg_0.b.e.zxy;
    var_0 = ~vec3<u32>(min(17437u, var_0.x), arg_0.c.a.x, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(37687u, 4294967295u, 0u), vec3<u32>(1u, arg_0.c.a.x, u_input.a.x) & vec3<u32>(3241u, 0u, 1u)));
    let var_1 = arg_0.b.d.x;
    return Struct_1(~func_2(select(vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(7582i, var_1, arg_0.b.d.x), vec3<bool>(arg_1, arg_1, arg_1)) << (_wgslsmith_mod_vec3_u32(arg_0.b.e.zwy, arg_0.b.e.yyz) % vec3<u32>(32u)), func_2(vec3<i32>(3828i, -2147483647i, 1i) | vec3<i32>(var_1, 69179i, var_1), Struct_1(arg_0.b.c.a), func_2(vec3<i32>(1i, arg_0.b.d.x, arg_0.b.d.x), Struct_1(arg_0.b.b.a), Struct_1(vec2<u32>(4294967295u, var_0.x)), vec3<i32>(var_1, arg_0.b.d.x, arg_0.b.d.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b.d.x, arg_0.b.d.x, 21838i), vec3<i32>(-57817i, var_1, -1i))), arg_0.b.a, firstLeadingBit(~vec3<i32>(30356i, arg_0.b.d.x, -1i))).a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 21439u), vec2<u32>(~1u & u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(37455u, u_input.a.x, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(64483u, 59875u, 0u), ~vec3<u32>(u_input.a.x, u_input.a.x, 40676u)))));
    var var_0 = Struct_1(u_input.a);
    var_0 = func_8(func_1(), false | any(vec4<bool>(false, all(vec3<bool>(true, true, true)), false, false)));
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_1.a)), ~(-_wgslsmith_clamp_i32(var_1.b.d.x, -1i, 0i)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1608f, -245f, 1048f, 1489f) + vec4<f32>(var_1.a, -2613f, var_1.a, var_1.a)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1328f, 274f, var_1.a, 1387f), vec4<f32>(var_1.a, var_1.a, var_1.a, -394f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 381f, var_1.a, 1369f))))), -var_1.b.d, select(0i, -23952i, false));
}

