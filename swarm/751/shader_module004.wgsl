struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 1u, 5932u);

var<private> global1: vec4<f32> = vec4<f32>(-213f, 1837f, -2021f, -288f);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> bool {
    global0 = select(_wgslsmith_div_vec3_u32(~vec3<u32>(firstLeadingBit(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(25954u, global0.x, 45774u, global0.x), vec4<u32>(u_input.a, global0.x, u_input.a, u_input.a)), select(u_input.a, 69997u, arg_0)), vec3<u32>(reverseBits(~37047u), u_input.a, 1u)), vec3<u32>(u_input.a, reverseBits(firstTrailingBit(6535u)), u_input.a) << ((firstLeadingBit(~vec3<u32>(u_input.a, u_input.a, global0.x)) >> (~(vec3<u32>(global0.x, 44006u, u_input.a) & vec3<u32>(u_input.a, 1u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u)), select(!vec3<bool>(false, arg_0, !arg_0), !(!vec3<bool>(arg_0, false, false)), firstTrailingBit(35180u) != _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(12599u, u_input.a, 42666u), vec3<u32>(global0.x, u_input.a, 40976u)), min(vec3<u32>(u_input.a, 53471u, u_input.a), vec3<u32>(u_input.a, global0.x, 59227u)))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(431f + global1.x)), 373f, _wgslsmith_f_op_f32(102f * _wgslsmith_f_op_f32(max(-1391f, global1.x)))))));
    var var_0 = Struct_4(_wgslsmith_add_vec3_u32(~(~vec3<u32>(0u, u_input.a, u_input.a)) & ~(~vec3<u32>(0u, 25586u, u_input.a)), vec3<u32>(1u, ~1u, 4294967295u)), !(all(select(vec4<bool>(false, true, true, false), vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, false, arg_0, false))) | false));
    var var_1 = -(~(-_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, u_input.b, u_input.c), vec3<i32>(arg_1.x, u_input.c, u_input.c))) << (~firstLeadingBit(vec3<u32>(var_0.a.x, 4294967295u, global0.x)) % vec3<u32>(32u)));
    var var_2 = var_0.a;
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> u32 {
    let var_0 = ~select(vec2<u32>(~(~4294967295u), 1u), ~global0.xy, all(vec3<bool>(true, true, true)));
    var var_1 = !func_3(all(vec4<bool>(true, any(vec2<bool>(true, true)), false, true)), abs(arg_2.yx));
    let var_2 = Struct_4(vec3<u32>(firstTrailingBit(~0u), ~arg_1, 4294967295u), !(false | (0u > _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(58046u, arg_1)))));
    var var_3 = Struct_2(!((~var_2.a.x >= ~45751u) || true), var_2.b, select(vec2<bool>(var_2.b, -arg_2.x >= arg_2.x), !vec2<bool>(var_2.b, all(vec3<bool>(true, true, true))), vec2<bool>(-1i == arg_0.b, !var_2.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global1.wz, global1.yy))));
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(141f, -661f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), -503f)), -413f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, -284f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d.x, 1000f, -469f, -1542f))))), _wgslsmith_f_op_f32(min(-1374f, _wgslsmith_f_op_f32(-var_3.d.x))) == _wgslsmith_f_op_f32(trunc(-1133f))))));
    return ~reverseBits(global0.x);
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = abs(_wgslsmith_sub_vec3_u32(~(vec3<u32>(0u, u_input.a, global0.x) ^ vec3<u32>(u_input.a, 81123u, 10368u)) | vec3<u32>(83579u, 7133u, 1u), firstTrailingBit((vec3<u32>(30112u, 0u, u_input.a) & vec3<u32>(u_input.a, 1u, 40173u)) << (~vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))));
    global0 = _wgslsmith_add_vec3_u32(select(vec3<u32>(func_2(Struct_1(-20403i, u_input.b), global0.x, vec4<i32>(u_input.c, 48342i, u_input.b, -2147483647i)), ~u_input.a, u_input.a), ~_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(29071u, 7895u, 0u)), !(-988f > global1.x)) >> (~(~countOneBits(vec3<u32>(u_input.a, 1u, u_input.a))) % vec3<u32>(32u)), ~firstLeadingBit(vec3<u32>(0u, u_input.a, 4294967295u) & (vec3<u32>(4294967295u, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, 1u, 4294967295u))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-global1.x)), 1132f, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(530f, global1.x)))) - -1263f));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -946f, global1.x, global1.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1058f, global1.x, arg_0)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, -758f, global1.x, -474f), vec4<f32>(526f, -1388f, 414f, -877f))))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 2071f, 1657f, 828f))))));
    let var_0 = Struct_3(select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), true), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), true)), true), Struct_1(abs(u_input.b) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(u_input.c, u_input.b)), i32(-1i) * -(u_input.c & -39870i)), arg_0, Struct_2(all(vec3<bool>(false, true, any(vec2<bool>(true, true)))), true & (true || (u_input.b >= u_input.b)), vec2<bool>(true, true), vec2<f32>(-249f, -259f)), global1.x);
    return Struct_1(15933i, u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> Struct_4 {
    var var_0 = ~(firstTrailingBit(vec4<u32>(global0.x, global0.x, 4294967295u, 72607u) ^ vec4<u32>(1u, global0.x, 1u, 1u)) & abs(vec4<u32>(1u, 35714u, 1u, u_input.a))) << (countOneBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.x, 4294967295u, arg_2, arg_2), vec4<u32>(abs(22737u), arg_2 | 4294967295u, arg_2, abs(arg_2)), vec4<u32>(1u, global0.x, global0.x, arg_2) | select(vec4<u32>(0u, u_input.a, 1u, arg_2), vec4<u32>(68219u, 0u, global0.x, global0.x), vec4<bool>(true, arg_1.b, true, true)))) % vec4<u32>(32u));
    let var_1 = !select(!select(select(vec3<bool>(true, arg_1.a, true), vec3<bool>(true, true, arg_1.b), vec3<bool>(false, arg_1.a, arg_1.a)), !vec3<bool>(true, arg_1.b, false), !vec3<bool>(arg_1.b, false, true)), select(!vec3<bool>(arg_1.a, arg_1.b, arg_1.b), vec3<bool>(arg_1.d.x < global1.x, true, any(vec3<bool>(arg_1.a, true, false))), arg_1.b), -660f != global1.x);
    let var_2 = var_1.x;
    var var_3 = Struct_2(var_1.x == arg_1.b, true, select(select(select(!var_1.yz, select(vec2<bool>(arg_1.c.x, true), vec2<bool>(arg_1.b, arg_1.c.x), var_2), var_1.xz), vec2<bool>(true, !var_2), true), var_1.zx, !arg_1.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, arg_1.d.x) + global1.xy)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, var_3.d.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.d.x, -1533f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1514f, var_3.d.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_1.d))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(260f, arg_1.d.x) + _wgslsmith_f_op_vec2_f32(global1.yx - arg_1.d)))));
    return Struct_4(_wgslsmith_sub_vec3_u32(~var_0.ywz, vec3<u32>(1u | arg_2, global0.x, var_0.x)), true);
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1, arg_3: Struct_4) -> Struct_1 {
    global0 = arg_3.a;
    let var_0 = arg_2;
    global0 = vec3<u32>(0u, ((26810u & ~global0.x) ^ reverseBits(~0u)) ^ ~abs(_wgslsmith_add_u32(arg_0.a.x, 9047u)), _wgslsmith_dot_vec2_u32(abs(arg_3.a.zz), arg_0.a.yy));
    var var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(~0i, u_input.b), abs(vec2<i32>(arg_2.a, var_0.a)) << ((vec2<u32>(55189u, global0.x) << (arg_0.a.xy % vec2<u32>(32u))) % vec2<u32>(32u)), !(!vec2<bool>(arg_0.b, false))), vec2<i32>(_wgslsmith_sub_i32(~arg_2.a, ~(-1i)), -49457i), ~(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(-7693i, var_0.a)) & firstLeadingBit(vec2<i32>(-2147483647i, u_input.c)))), _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(arg_2.b, u_input.b)), countOneBits(select(~vec2<i32>(-2147483647i, arg_2.b), vec2<i32>(arg_2.a, u_input.b) << (arg_3.a.xz % vec2<u32>(32u)), true))));
    var_1 = abs(~(-(~_wgslsmith_sub_vec2_i32(vec2<i32>(-37966i, u_input.b), vec2<i32>(arg_2.b, var_0.b)))));
    return Struct_1(min(var_1.x, _wgslsmith_add_i32(_wgslsmith_div_i32(var_1.x, var_0.b), firstLeadingBit(var_1.x)) & arg_2.a), _wgslsmith_mult_i32(1i, 27909i & _wgslsmith_sub_i32(~arg_2.b, -8360i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(global1.x + -1354f))), Struct_2(!all(vec3<bool>(false, false, true)), true, vec2<bool>(true, true), global1.zy), 0u), true, func_1(global1.x), func_4(func_1(_wgslsmith_f_op_f32(round(global1.x))), Struct_2(true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true))), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, global1.x)))), 1u));
    var var_1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-1654f + -117f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1464f - _wgslsmith_f_op_f32(-global1.x))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-var_1.x)), 938f)), -1891f, _wgslsmith_f_op_f32(min(-1050f, _wgslsmith_f_op_f32(step(var_1.x, -1065f)))), _wgslsmith_f_op_f32(max(global1.x, -889f))));
    global0 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(67443u, global0.x, u_input.a) >> (vec3<u32>(global0.x, 1u, 126662u) % vec3<u32>(32u)), reverseBits(vec3<u32>(12928u, 270u, 4294967295u)))) | _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(29967u, 1u, 2746u), min(vec3<u32>(1u, 19391u, 4294967295u), vec3<u32>(11903u, 5212u, u_input.a))), _wgslsmith_mult_vec3_u32(func_4(var_0, Struct_2(true, true, vec2<bool>(false, true), vec2<f32>(1660f, -1764f)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 21118u, 76828u, u_input.a), vec4<u32>(33471u, global0.x, global0.x, global0.x))).a, vec3<u32>(abs(1u), 4294967295u >> (u_input.a % 32u), abs(4294967295u))));
    let var_3 = _wgslsmith_f_op_f32(-global1.x);
    var var_4 = any(select(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, 1u != global0.x, true, global0.x == u_input.a)), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))) | true));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1694f)), global1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(597f, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x);
}

