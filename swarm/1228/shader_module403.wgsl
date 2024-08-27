struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = any(!vec3<bool>(arg_2.b, any(!vec4<bool>(arg_2.b, arg_2.b, false, arg_2.b)), arg_2.b));
    var var_1 = arg_2.a.x ^ 41183u;
    var_1 = min(arg_2.d, ~(abs(0u) << (arg_2.a.x % 32u)));
    var_1 = _wgslsmith_dot_vec2_u32(abs(firstLeadingBit(arg_0.xy)), reverseBits(~vec2<u32>(1u, 1u)));
    var_1 = 4294967295u;
    return firstTrailingBit(arg_2.a.x) | _wgslsmith_dot_vec4_u32((~vec4<u32>(arg_0.x, arg_0.x, 0u, arg_0.x) >> (~arg_0 % vec4<u32>(32u))) & _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0, vec4<u32>(arg_0.x, 50023u, 1u, 1u)), vec4<u32>(18500u, 3774u, arg_2.a.x, arg_2.d) ^ arg_0), arg_0);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32) -> vec4<bool> {
    let var_0 = ~vec2<u32>(~_wgslsmith_mult_u32(arg_0.c, 4294967295u) << (1u % 32u), arg_0.a);
    var var_1 = arg_2;
    let var_2 = ~_wgslsmith_div_vec2_u32(~(~var_0), vec2<u32>(var_0.x, ~arg_0.a));
    var var_3 = ~vec3<u32>(_wgslsmith_add_u32(var_2.x, (var_0.x & 47210u) & 83731u), ~arg_0.c, var_0.x);
    return !(!vec4<bool>(!select(true, true, true), !any(vec4<bool>(true, true, true, true)), ~32408u == ~arg_0.a, true));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec2<f32>) -> f32 {
    let var_0 = arg_2.x;
    var var_1 = func_3(Struct_2(~(_wgslsmith_clamp_u32(arg_0, arg_0, 1u) | 0u), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(var_0 + -880f), arg_2.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(443f, var_0, arg_2.x, var_0), _wgslsmith_div_vec4_f32(vec4<f32>(313f, arg_2.x, var_0, -793f), vec4<f32>(2295f, 1266f, -193f, 1280f)), true))), 1u), vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, -2147483647i, u_input.a, -59996i) | (vec4<i32>(u_input.a, 1i, 17184i, u_input.a) ^ vec4<i32>(3749i, 1i, -29397i, u_input.a))), 5610i, u_input.a, -8143i), var_0).zw;
    var var_2 = ~vec4<u32>(~reverseBits(firstTrailingBit(arg_0)), arg_0, arg_0, reverseBits(_wgslsmith_mod_u32(~arg_0, 8427u)));
    let var_3 = Struct_5(Struct_2(1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1012f, 976f, -1591f, -409f) - vec4<f32>(830f, var_0, -111f, var_0)))), arg_0), 4294967295u, arg_2.x, -11748i, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -483f) + -303f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(979f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1884f))))));
    var_2 = vec4<u32>(var_2.x, ~(min(select(0u, 1u, true), ~0u) ^ ~arg_0), max(~0u, 1u >> (~reverseBits(arg_0) % 32u)), ~(~_wgslsmith_mod_u32(arg_0 << (var_3.b % 32u), _wgslsmith_add_u32(arg_0, 19381u))));
    return arg_2.x;
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_5 {
    let var_0 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(func_4(_wgslsmith_div_u32(arg_1, 92346u), Struct_4(func_3(Struct_2(arg_1, vec4<f32>(-1297f, arg_0, arg_0, arg_0), 0u), vec4<i32>(-20873i, -43495i, u_input.a, -1i), -311f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 2026f)))))));
    let var_1 = _wgslsmith_sub_u32(4294967295u, 8245u);
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_1, var_1, 1u, ~30670u), ~(vec4<u32>(abs(var_1), ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 0u, 16346u, 75813u), vec4<u32>(17624u, arg_1, arg_1, 47493u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, arg_1, var_1, var_1), vec4<u32>(arg_1, arg_1, 4294967295u, arg_1))) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(var_1, 81064u, var_1, 8623u), vec4<u32>(0u, 24273u, 4294967295u, 0u) | vec4<u32>(14088u, var_1, 1u, arg_1))));
    let var_3 = Struct_2(var_2.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), var_0.x, _wgslsmith_f_op_f32(func_4(4294967295u, Struct_4(vec4<bool>(false, false, false, false)), vec2<f32>(-154f, arg_0))), -1056f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(646f, -1366f, arg_0, -1000f))))))), _wgslsmith_sub_u32(~(~reverseBits(16425u)), abs(1u)));
    var var_4 = _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~reverseBits(var_2.zzz >> (vec3<u32>(arg_1, 21991u, var_2.x) % vec3<u32>(32u))), vec3<u32>(8100u, 0u, 12163u)), var_2.wzw);
    return Struct_5(var_3, ~(abs(var_1) & 4294967295u), -283f, u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(var_3.b.x, var_3.b.x), _wgslsmith_f_op_f32(1083f + arg_0), _wgslsmith_f_op_f32(1048f + 325f)), _wgslsmith_f_op_vec3_f32(-var_3.b.zxx))) + var_3.b.xyz));
}

fn func_5(arg_0: Struct_5) -> vec4<f32> {
    let var_0 = (abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(59637u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_0.b), vec2<u32>(13347u, arg_0.b)), abs(vec2<u32>(arg_0.a.c, 1u)))) | select(vec2<u32>(arg_0.b, 1u), (vec2<u32>(109089u, 2897u) ^ vec2<u32>(arg_0.a.a, arg_0.b)) << (~vec2<u32>(arg_0.b, arg_0.a.a) % vec2<u32>(32u)), true)) << (_wgslsmith_mod_vec2_u32(min(max(~vec2<u32>(4294967295u, 25649u), firstLeadingBit(vec2<u32>(arg_0.a.c, arg_0.b))), vec2<u32>(~1u, ~arg_0.a.c)), vec2<u32>(~(4294967295u ^ arg_0.b), arg_0.a.a)) % vec2<u32>(32u));
    let var_1 = func_1(select(~min(vec4<u32>(0u, 10812u, var_0.x, arg_0.b), ~vec4<u32>(arg_0.b, 12068u, arg_0.a.a, arg_0.a.c)), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(29939u, var_0.x), _wgslsmith_sub_u32(9048u, var_0.x), arg_0.b, ~12521u), ~(vec4<u32>(4294967295u, arg_0.b, 0u, var_0.x) << (vec4<u32>(0u, arg_0.a.a, 4294967295u, 4294967295u) % vec4<u32>(32u)))), !(false && all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0.e.x)))), Struct_1(vec3<u32>(~_wgslsmith_div_u32(1u, var_0.x), select(var_0.x, 1u, u_input.a < arg_0.d), _wgslsmith_add_u32(4500u, 122821u | var_0.x)), func_2(459f, var_0.x).c != _wgslsmith_f_op_f32(-574f + func_2(-386f, arg_0.a.a).a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.e.x)))), ~(~max(var_0.x, 31551u)), _wgslsmith_f_op_f32(func_4(var_0.x, Struct_4(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.a.b.xz)) + _wgslsmith_f_op_vec2_f32(arg_0.a.b.wx - vec2<f32>(-313f, arg_0.c)))))));
    let var_2 = Struct_3(func_2(arg_0.a.b.x, _wgslsmith_mult_u32(var_0.x, select(~1u, var_1, false))).a, -(vec2<i32>(arg_0.d, 23476i ^ arg_0.d) | _wgslsmith_mod_vec2_i32(-vec2<i32>(arg_0.d, -49115i), select(vec2<i32>(-28062i, 1i), vec2<i32>(u_input.a, -30686i), vec2<bool>(false, true)))), -vec3<i32>(1i << (_wgslsmith_clamp_u32(arg_0.a.a, 1u, 43012u) % 32u), ~(u_input.a | -19700i), ~(-29470i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(arg_0.e.yz, vec2<f32>(-1003f, arg_0.c))))))));
    var var_3 = arg_0.e.x;
    let var_4 = Struct_4(func_3(Struct_2(~4294967295u, vec4<f32>(var_2.d.x, -1914f, -222f, _wgslsmith_f_op_f32(-1643f - var_2.a.b.x)), 8637u), abs(max(vec4<i32>(0i, u_input.a, arg_0.d, 0i) << (vec4<u32>(1854u, 10597u, arg_0.b, arg_0.b) % vec4<u32>(32u)), -vec4<i32>(u_input.a, var_2.c.x, -1i, -1308i))), -230f));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.e.x, arg_0.c, arg_0.a.b.x, func_2(_wgslsmith_f_op_f32(-var_2.a.b.x), select(var_1, 0u, var_4.a.x)).c))) + arg_0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_5(func_2(_wgslsmith_f_op_f32(ceil(-1468f)), func_1(vec4<u32>(7684u, 0u, 0u, 4294967295u), 1000f, Struct_1(vec3<u32>(45821u, 4294967295u, 0u), true, -194f, 1u, 1225f)) << (_wgslsmith_add_u32(1u, 4756u) % 32u)))), _wgslsmith_mod_vec3_u32(vec3<u32>(~(~15348u), ~(~0u), _wgslsmith_clamp_u32(~5988u, _wgslsmith_mult_u32(39376u, 91078u), ~73287u)), reverseBits(vec3<u32>(1u, 1u, 1u))));
}

