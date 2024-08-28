struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(vec4<u32>(6253u, 61220u, max(_wgslsmith_dot_vec3_u32(u_input.b.yyx, ~vec3<u32>(u_input.b.x, 54847u, u_input.b.x)), 36598u), 42345u));
    var var_1 = 1758f;
    var var_2 = true;
    let var_3 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_0.c.zy, -arg_0.c.xx >> (~vec2<u32>(var_0.a.x, 105367u) % vec2<u32>(32u))), -16836i), -1000f, vec3<i32>(~(-869i) | ((u_input.a & arg_0.a) & -arg_0.a), ~u_input.a, firstLeadingBit(-179i)), true, 4294967295u);
    var_1 = _wgslsmith_div_f32(var_3.b, 1000f);
    return _wgslsmith_add_u32(u_input.b.x, countOneBits(max(firstTrailingBit(var_3.e) >> (~u_input.b.x % 32u), 71338u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = ~(func_3(arg_1) & countOneBits(u_input.b.x)) << (firstTrailingBit(~1u) % 32u);
    var var_1 = all(vec3<bool>(arg_2, !select(!arg_2, arg_1.d, arg_1.d), all(!(!vec4<bool>(true, arg_2, true, false)))));
    var var_2 = min((_wgslsmith_mod_u32(~arg_0.x, 4294967295u) & _wgslsmith_dot_vec2_u32(vec2<u32>(18172u, u_input.b.x) << (u_input.b.xz % vec2<u32>(32u)), u_input.b.wx)) | 1u, reverseBits(abs(_wgslsmith_mult_u32(arg_0.x << (arg_0.x % 32u), abs(var_0)))));
    let var_3 = 43870i;
    var var_4 = 15923i;
    return Struct_1(-(~11275i), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.c, false, arg_1.e >> (arg_1.e % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: vec4<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_mult_u32(arg_0.e, ~(~arg_1.x));
    var_0 = ~_wgslsmith_dot_vec2_u32(firstLeadingBit(~min(arg_1.zx, vec2<u32>(23996u, arg_0.e))), vec2<u32>((arg_0.e & 1u) >> (u_input.b.x % 32u), 0u));
    var var_1 = func_2(vec4<u32>(~abs(~arg_0.e), firstLeadingBit(~4294967295u << (arg_1.x % 32u)), 4535u, ~((u_input.b.x ^ arg_1.x) | ~arg_0.e)), Struct_1(-13400i, _wgslsmith_f_op_f32(round(arg_0.b)), vec3<i32>(-countOneBits(-17268i), -abs(arg_0.a), countOneBits(-52675i)), select(any(!arg_3), !any(vec2<bool>(true, false)), true), 58004u), !arg_2);
    var var_2 = _wgslsmith_clamp_vec3_u32(u_input.b.zwx, vec3<u32>(~(~u_input.b.x), 1u, var_1.e), ~(~u_input.b.xyy));
    var_0 = ~(~18936u);
    return arg_3.zw;
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<bool>, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_2(~select(vec4<u32>(u_input.b.x, u_input.b.x, max(37325u, u_input.b.x), 4294967295u), vec4<u32>(u_input.b.x, 21238u, ~1u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), !select(vec4<bool>(false, arg_3.x, arg_0.x, true), vec4<bool>(true, arg_3.x, arg_2.x, arg_0.x), vec4<bool>(arg_3.x, arg_3.x, arg_0.x, true))));
    var_0 = Struct_2(countOneBits(vec4<u32>(abs(var_0.a.x), 1u, u_input.b.x, 4294967295u)) << ((~_wgslsmith_div_vec4_u32(var_0.a, var_0.a) >> (vec4<u32>(79029u, _wgslsmith_add_u32(57092u, u_input.b.x), 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_0 = Struct_2(~(~(~(~var_0.a))));
    var var_1 = all(vec3<bool>(any(!(!vec2<bool>(arg_3.x, true))), true, false));
    var var_2 = func_2(vec4<u32>(u_input.b.x, var_0.a.x, reverseBits(_wgslsmith_add_u32(4294967295u, var_0.a.x | var_0.a.x)), var_0.a.x), Struct_1(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -345f)), vec3<i32>(-1i, u_input.a, u_input.a), true, _wgslsmith_sub_u32(~u_input.b.x, var_0.a.x)), true);
    return Struct_2(select(u_input.b, u_input.b, func_2(vec4<u32>(20086u, 1u, firstTrailingBit(0u), _wgslsmith_dot_vec3_u32(u_input.b.xyw, vec3<u32>(12142u, 1u, 57327u))), Struct_1(~u_input.a, 1f, abs(var_2.c), false, _wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(4294967295u, 21254u))), false).d));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    let var_0 = select(select(vec4<bool>(select(true, true, true), true, abs(-16032i) != u_input.a, !func_2(vec4<u32>(arg_2.a.x, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(-6770i, -610f, vec3<i32>(u_input.a, u_input.a, 1i), true, arg_2.a.x), false).d), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), all(vec3<bool>(false, true, true))), vec4<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), true)), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), any(vec3<bool>(true, false, true)))), abs(_wgslsmith_mod_u32(4294967295u, u_input.b.x)) < 1u, !any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true))), any(!select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), func_2(vec4<u32>(30730u, 4294967295u, arg_1.x, 45047u), Struct_1(u_input.a, -1713f, vec3<i32>(0i, u_input.a, -44192i), true, u_input.b.x), false).d)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_2(u_input.b, Struct_1(u_input.a, 313f, _wgslsmith_div_vec3_i32(vec3<i32>(42248i, u_input.a, u_input.a), vec3<i32>(0i, u_input.a, u_input.a)), var_0.x | var_0.x, _wgslsmith_div_u32(25758u, 8838u)), !(var_0.x || false)).b + 682f), _wgslsmith_f_op_f32(select(func_2(reverseBits(u_input.b), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(-1i, 39889i, 25968i)), _wgslsmith_f_op_f32(select(130f, -2019f, var_0.x)), vec3<i32>(0i, -33041i, u_input.a), true, arg_0.x), any(var_0.zx)).b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(671f * -2065f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-582f, -592f)) - _wgslsmith_f_op_f32(-360f + -467f))), false & (~u_input.b.x > ~4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 854f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -692f) * -878f)));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), var_1.x, -1675f);
    let var_2 = func_2(vec4<u32>(_wgslsmith_add_u32(min(arg_2.a.x, arg_2.a.x), ~1u) << ((~4294967295u ^ func_3(Struct_1(-2147483647i, var_1.x, vec3<i32>(u_input.a, u_input.a, -19487i), false, 4294967295u))) % 32u), abs(u_input.b.x >> (4294967295u % 32u)), 36733u, firstLeadingBit(abs(0u))), func_2(((vec4<u32>(arg_0.x, 1u, 0u, 1u) >> (u_input.b % vec4<u32>(32u))) << (vec4<u32>(1u, arg_1.x, arg_0.x, arg_0.x) % vec4<u32>(32u))) & vec4<u32>(select(u_input.b.x, u_input.b.x, var_0.x), arg_0.x, 1u, ~arg_2.a.x), func_2(vec4<u32>(_wgslsmith_add_u32(arg_2.a.x, u_input.b.x), u_input.b.x, arg_2.a.x, ~arg_2.a.x), Struct_1(u_input.a, _wgslsmith_f_op_f32(456f * -275f), max(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(1i, 2147483647i, u_input.a)), select(false, var_0.x, var_0.x), ~u_input.b.x), true), false), func_2(~(~arg_2.a), Struct_1(u_input.a, -1435f, -vec3<i32>(2147483647i, u_input.a, 2147483647i) ^ countOneBits(vec3<i32>(-2147483647i, u_input.a, 29539i)), all(select(var_0, var_0, vec4<bool>(false, true, false, true))), select(_wgslsmith_clamp_u32(17999u, 4294967295u, arg_2.a.x), arg_2.a.x, false)), var_0.x).d);
    var var_3 = vec3<bool>(!select((-1i & var_2.c.x) < firstTrailingBit(5323i), any(var_0), true), _wgslsmith_clamp_u32(max(u_input.b.x ^ 14188u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 0u, arg_0.x, 1u), arg_2.a)), ~arg_3, arg_0.x) > 31613u, false == all(vec3<bool>(var_2.d, !var_2.d, var_2.d & var_2.d)));
    return func_5(!(!select(func_4(Struct_1(0i, var_2.b, vec3<i32>(-2147483647i, var_2.a, var_2.a), false, 4680u), vec3<u32>(arg_3, 4294967295u, 17684u), true, var_0), vec2<bool>(true, true), vec2<bool>(var_0.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.b)) - var_2.b)), var_3.xx, select(!(!select(var_3.xy, var_3.zz, var_0.x)), var_3.yx, func_4(Struct_1(0i, _wgslsmith_f_op_f32(trunc(var_1.x)), -vec3<i32>(1624i, var_2.a, 1i), all(var_0.zyx), min(arg_2.a.x, arg_3)), arg_0, var_3.x, vec4<bool>(!var_0.x, arg_1.x <= arg_1.x, false, true))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = func_6(~(~(u_input.b.xyw ^ vec3<u32>(64980u, u_input.b.x, arg_1)) >> (u_input.b.yxz % vec3<u32>(32u))), reverseBits(u_input.b.zx), func_5(func_4(func_2(~u_input.b, arg_3, arg_3.d || arg_3.d), u_input.b.wwz, arg_3.d, select(select(vec4<bool>(true, arg_3.d, arg_3.d, arg_3.d), vec4<bool>(false, false, arg_3.d, false), true), vec4<bool>(arg_3.d, arg_3.d, true, arg_3.d), select(true, arg_3.d, false))), arg_3.b, select(vec2<bool>(!arg_3.d, arg_3.d), vec2<bool>(false, any(vec3<bool>(false, arg_3.d, arg_3.d))), true), vec2<bool>(arg_3.d, all(vec3<bool>(true, true, false)))), arg_3.e);
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_3.e, min(arg_1, 38358u), arg_3.e ^ arg_1), ~vec4<u32>(arg_1, _wgslsmith_add_u32(arg_1, var_0.a.x), var_0.a.x, ~arg_3.e)), 0u);
    var var_2 = u_input.b.x;
    var var_3 = 2147483647i;
    let var_4 = arg_3;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(abs(_wgslsmith_add_i32(-5298i, u_input.a) >> (1u % 32u)) << (max(max(~4294967295u, _wgslsmith_mult_u32(u_input.b.x, 4294967295u)), 4170u) % 32u), min(abs(u_input.b.x), u_input.b.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-963f, _wgslsmith_f_op_f32(max(1894f, -2140f)), -284f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-873f, 993f)) * _wgslsmith_f_op_f32(f32(-1f) * -229f)), _wgslsmith_f_op_f32(abs(-519f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(417f + 1233f))))), Struct_1(u_input.a, 1f, max(firstTrailingBit(abs(vec3<i32>(u_input.a, u_input.a, u_input.a))), vec3<i32>(abs(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 73954i, u_input.a, 9316i), vec4<i32>(u_input.a, -14980i, 1i, 0i)), u_input.a)), true, 4294967295u));
    let var_1 = var_0;
    var var_2 = 2147483647i | abs(u_input.a);
    var_2 = 2147483647i;
    var var_3 = func_5(!func_4(func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 36641u, var_1.a.x), var_0.a), func_2(var_0.a, Struct_1(u_input.a, 1216f, vec3<i32>(1i, u_input.a, 64061i), true, 1u), true), any(vec3<bool>(false, false, true))), ~(~u_input.b.wyz), _wgslsmith_mult_i32(60634i, u_input.a) >= -2147483647i, select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-628f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-815f)))))), vec2<bool>(true, true & (_wgslsmith_sub_u32(1u, var_1.a.x) > _wgslsmith_div_u32(8756u, var_0.a.x))), vec2<bool>(true, all(func_4(Struct_1(-17037i, -203f, vec3<i32>(u_input.a, u_input.a, u_input.a), true, 1u), ~u_input.b.wxz, all(vec4<bool>(true, false, true, false)), vec4<bool>(true, false, true, false)))));
    var var_4 = Struct_1(-11984i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1390f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1375f - 1342f)))), 314f), select(_wgslsmith_mod_vec3_i32(vec3<i32>(-17202i, u_input.a, firstTrailingBit(u_input.a)), -vec3<i32>(-2147483647i, u_input.a, -6956i)), vec3<i32>(-1i >> (~u_input.b.x % 32u), _wgslsmith_sub_i32(0i, u_input.a), u_input.a), vec3<bool>(false, false, func_2(~u_input.b, Struct_1(u_input.a, -1309f, vec3<i32>(u_input.a, -2147483647i, 14829i), false, var_0.a.x), false).d)), true, _wgslsmith_sub_u32(min(func_2(var_1.a, func_2(var_1.a, Struct_1(3471i, -580f, vec3<i32>(u_input.a, u_input.a, -23960i), false, 35899u), false), true).e, var_1.a.x), 1u));
    var var_5 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b + _wgslsmith_f_op_f32(var_4.b * var_4.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.b, -1433f))), -116f);
    var_4 = Struct_1(min(_wgslsmith_mult_i32(_wgslsmith_sub_i32(func_2(var_1.a, Struct_1(u_input.a, -1204f, var_4.c, true, var_0.a.x), false).c.x, 2147483647i), i32(-1i) * -u_input.a), _wgslsmith_clamp_i32(firstLeadingBit(var_4.c.x), 1i, 2147483647i)), _wgslsmith_f_op_f32(var_4.b * _wgslsmith_f_op_f32(round(-1503f))), ~(-_wgslsmith_add_vec3_i32(var_4.c, var_4.c)) & vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, u_input.a, -2147483647i, var_4.c.x), vec4<i32>(u_input.a, var_4.a, var_4.a, u_input.a), vec4<bool>(true, false, false, true)), ~vec4<i32>(u_input.a, -1i, u_input.a, var_4.c.x)), u_input.a, _wgslsmith_dot_vec3_i32(var_4.c, var_4.c)), any(!(!vec3<bool>(true, var_4.d, false))), ~var_3.a.x);
    var_3 = Struct_2(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(var_0.a, func_2(~(~vec4<u32>(1u, var_1.a.x, 32346u, var_4.e)), Struct_1(35968i, var_4.b, ~vec3<i32>(var_4.a, var_4.a, u_input.a), var_4.d, ~1u), var_4.d), true).b, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-295f - 1195f)), var_4.b)), _wgslsmith_f_op_f32(round(-1128f)), _wgslsmith_f_op_f32(f32(-1f) * -464f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-749f, var_4.b, var_4.d))))), -139f), _wgslsmith_f_op_f32(-var_4.b));
}

