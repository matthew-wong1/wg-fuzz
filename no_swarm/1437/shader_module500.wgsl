struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: f32) -> vec3<i32> {
    var var_0 = -15860i;
    let var_1 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), max(arg_1, arg_1)), -_wgslsmith_add_i32(arg_1.x, u_input.a)), _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(u_input.a, 1i, 1i, u_input.a)), firstLeadingBit(~vec4<i32>(arg_1.x, u_input.a, arg_1.x, arg_1.x))), -u_input.a));
    var_0 = 0i;
    var var_2 = select(vec4<bool>(true, arg_2 >= arg_2, true, !(!arg_0 == arg_0)), !vec4<bool>(true, true, false || arg_0, false), vec4<bool>(arg_0, !arg_0, true, true));
    var var_3 = Struct_1(~_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.a, arg_1.x, 2147483647i), _wgslsmith_mod_i32(-35693i, -3731i), max(u_input.a, arg_1.x)), ~select(vec3<i32>(u_input.a, -65141i, 54246i), var_1.a, vec3<bool>(var_2.x, arg_0, var_2.x)), vec3<i32>(abs(-2147483647i), _wgslsmith_sub_i32(var_1.a.x, 40740i), u_input.a)));
    return vec3<i32>(_wgslsmith_add_i32(u_input.a >> (_wgslsmith_sub_u32(35168u ^ u_input.b, u_input.b) % 32u), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-18917i, -1i), var_3.a.xz), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, u_input.a, var_1.a.x), var_3.a), firstTrailingBit(u_input.a)) ^ select(arg_1.x, countOneBits(-22376i), !var_2.x)), i32(-1i) * -54491i, -31081i);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>) -> vec3<i32> {
    return (vec3<i32>(-1i) * -select(vec3<i32>(-74127i, u_input.a, u_input.a), func_3(true, vec3<i32>(-3543i, u_input.a, u_input.a), arg_1.x), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))) & (vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, -26837i), vec3<i32>(-2147483647i, 0i, u_input.a) | vec3<i32>(u_input.a, u_input.a, u_input.a)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = ~vec4<u32>((~arg_1 ^ ~u_input.b) & min(11339u, ~u_input.b), ~min(arg_1, 43631u) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(76168u, u_input.b, u_input.b, 1u), vec4<u32>(0u, arg_1, 73904u, arg_1)) % 32u), u_input.b, arg_1);
    let var_1 = arg_3;
    let var_2 = arg_3;
    let var_3 = select(select(vec4<bool>(true, _wgslsmith_mod_u32(17257u, u_input.b) > 1u, any(vec2<bool>(true, true)), false), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true == select(true, false, all(vec2<bool>(false, false)))), vec4<bool>(!any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), !(!any(vec2<bool>(true, true))), min(arg_2 & -47676i, -arg_2) == _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, 1007i), vec2<i32>(1i, var_1.b.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(809f * arg_3.a.x) - -1000f) >= _wgslsmith_f_op_f32(-var_1.a.x)), !(!select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false))));
    return select(vec3<bool>(!var_3.x, all(select(select(var_3, vec4<bool>(var_3.x, var_3.x, false, var_3.x), false), !vec4<bool>(var_3.x, var_3.x, true, false), vec4<bool>(var_3.x, false, var_3.x, var_3.x))), true), select(var_3.wzz, var_3.yxy, true), var_3.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = u_input.b;
    var var_1 = !select(func_4(Struct_1(func_2(vec4<f32>(1181f, 991f, 1000f, 1134f), vec2<f32>(-1061f, 1002f))), _wgslsmith_clamp_u32(1u, var_0, 1u), _wgslsmith_div_i32(-27221i, -2900i) ^ u_input.a, Struct_2(vec3<f32>(1000f, -194f, -992f), Struct_1(vec3<i32>(56746i, -1i, -50796i)))), select(vec3<bool>(true, all(vec2<bool>(false, true)), true), vec3<bool>(true, true, all(vec2<bool>(false, true))), select(any(vec4<bool>(true, true, true, false)), 17927u > u_input.b, true)), func_4(Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-3383i, 2752i, arg_0.a.x), arg_0.a, vec3<i32>(46232i, 1i, 6813i))), _wgslsmith_dot_vec2_u32(min(vec2<u32>(44398u, u_input.b), vec2<u32>(var_0, var_0)), vec2<u32>(var_0, 2746u)), arg_0.a.x, Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(596f, -548f, 199f) - vec3<f32>(2519f, 446f, 941f)), arg_0)));
    let var_2 = func_2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(2762f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-367f)), _wgslsmith_f_op_f32(-210f * 1135f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(273f + -886f), _wgslsmith_f_op_f32(589f + 491f))), _wgslsmith_div_f32(-1234f, _wgslsmith_div_f32(-451f, 717f))), 3374f, 1576f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-135f, -1008f))))).yx;
    var var_3 = _wgslsmith_div_i32(arg_0.a.x, -2147483647i);
    var_1 = !select(vec3<bool>(false, any(!vec4<bool>(var_1.x, false, false, true)), true), vec3<bool>(var_1.x, !var_1.x, !var_1.x), !vec3<bool>(false, var_1.x, false));
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(654f, -1688f, -388f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-405f, 621f, 1079f), vec3<f32>(-963f, -1000f, -1000f))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(-621f)), _wgslsmith_div_f32(854f, 111f), _wgslsmith_div_f32(-1105f, -1943f)))), Struct_1(arg_0.a));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    var var_0 = true;
    var_0 = true;
    var_0 = true;
    let var_1 = -1i;
    var var_2 = abs(-1i) & (-1i | _wgslsmith_dot_vec2_i32(~(~arg_1.b.a.zy), arg_1.b.a.zx));
    return Struct_1(reverseBits(arg_0.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(Struct_1(firstLeadingBit(min(vec3<i32>(-27448i, u_input.a, -1i), vec3<i32>(-21030i, -1i, 3902i)))), vec2<i32>(min(firstTrailingBit(2147483647i), i32(-1i) * -1i), 37377i)), func_1(func_1(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-23585i, 28283i, 0i), vec3<i32>(-2147483647i, u_input.a, u_input.a))), ~vec2<i32>(5837i, -2147483647i)).b, ~firstTrailingBit(abs(vec2<i32>(2147483647i, u_input.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -865f))))));
    let var_1 = ~(~(vec4<i32>(-1i) * -abs(vec4<i32>(-65446i, -1i, -1i, 2147483647i))));
    let var_2 = ~reverseBits(_wgslsmith_clamp_u32(63516u, countOneBits(u_input.b), 33208u) ^ (firstTrailingBit(u_input.b) & (u_input.b << (1u % 32u))));
    let var_3 = var_0;
    var var_4 = func_1(func_1(func_5(Struct_2(vec3<f32>(-1062f, 1621f, -977f), var_0), Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-982f, -2127f, -230f), vec3<f32>(-1179f, 413f, -1000f), true)), func_5(Struct_2(vec3<f32>(-832f, -553f, -1451f), Struct_1(vec3<i32>(var_3.a.x, 0i, var_3.a.x))), Struct_2(vec3<f32>(-1080f, -1251f, 1454f), var_3), -179f)), _wgslsmith_f_op_f32(-181f + _wgslsmith_f_op_f32(863f - 446f))), func_1(Struct_1(var_3.a), ~vec2<i32>(var_1.x, -47608i)).b.a.zy).b, vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i, var_3.a.x) & -29932i, var_0.a.x), i32(-1i) * -1i)).a.x;
    var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1615f)))))) * _wgslsmith_f_op_f32(min(-381f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-280f + 226f), _wgslsmith_f_op_f32(f32(-1f) * -302f), true)))))));
    var var_5 = 451f;
    let var_6 = Struct_2(vec3<f32>(1f, 1f, 1f), func_5(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-120f, -114f, 525f) + vec3<f32>(-985f, 274f, -1040f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(411f, -1000f, -1000f)))), var_0), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1836f, 412f, -1433f)), vec3<f32>(410f, -2558f, -1000f)), var_0), _wgslsmith_f_op_f32(-840f - _wgslsmith_f_op_f32(min(1873f, _wgslsmith_f_op_f32(ceil(-1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.b.a.x, var_0.a.zy);
}

