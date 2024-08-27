struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_2(max(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 1u), vec4<u32>(100554u, 4294967295u, u_input.b.x, 51961u), vec4<u32>(1u, u_input.b.x, u_input.b.x, 3862u))), vec4<u32>(65504u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(7203u, 1u, 1u, 18160u), vec4<u32>(50479u, 4294967295u, u_input.b.x, 7178u), vec4<bool>(false, true, false, false)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), ~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x)), 1u)), u_input.a.x);
    let var_1 = Struct_3(Struct_1(u_input.a, vec2<f32>(_wgslsmith_f_op_f32(ceil(137f)), _wgslsmith_div_f32(-1465f, _wgslsmith_div_f32(1015f, 1803f))), _wgslsmith_add_vec2_i32(vec2<i32>(abs(u_input.a.x), -36051i), ~vec2<i32>(-54296i, u_input.a.x) & u_input.a.xy), u_input.b.x << (countOneBits(u_input.b.x | var_0.a.x) % 32u), (8125u == u_input.b.x) & false), _wgslsmith_clamp_u32(u_input.b.x, ~_wgslsmith_mod_u32(var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 65081u, u_input.b.x), vec3<u32>(u_input.b.x, 49257u, var_0.a.x))), 4294967295u), var_0, var_0);
    var var_2 = min(var_0.a.zwz >> (var_1.c.a.xww % vec3<u32>(32u)), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 34306u), var_0.a.wx), var_1.c.a.wz ^ vec2<u32>(var_1.c.a.x, var_1.d.a.x)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(11753u, var_1.b, u_input.b.x)), vec3<u32>(u_input.b.x, 77664u, 35783u))) | ~vec3<u32>(7115u, _wgslsmith_mult_u32(var_1.c.a.x, var_1.a.d), select(0u, u_input.b.x, var_1.a.e)));
    var_2 = var_0.a.zyz;
    var var_3 = var_1.c;
    return ~vec2<i32>(-50148i, _wgslsmith_mult_i32(~1i, 47767i));
}

fn func_2() -> vec4<u32> {
    var var_0 = 5397u;
    var_0 = ~4294967295u;
    let var_1 = Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1241f * _wgslsmith_f_op_f32(ceil(854f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(step(-1298f, -125f))))), func_3(), u_input.b.x, any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let var_2 = Struct_3(Struct_1(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(-49635i, -9947i, var_1.c.x)), firstLeadingBit(u_input.a), firstLeadingBit(vec3<i32>(46159i, 54221i, var_1.c.x))) ^ firstLeadingBit(~vec3<i32>(var_1.a.x, -30463i, -67864i)), var_1.b, _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.a.x, u_input.a.x) >> (~vec2<u32>(21145u, 4294967295u) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mult_i32(1i, 0i), 58413i)), 0u, !(var_1.b.x <= var_1.b.x)), firstLeadingBit(min(var_1.d, var_1.d)), Struct_2(vec4<u32>(~(74783u & var_1.d), 31723u, firstLeadingBit(max(u_input.b.x, u_input.b.x)), ~_wgslsmith_mult_u32(u_input.b.x, 99115u)), ~(~u_input.a.x)), Struct_2(vec4<u32>(~select(var_1.d, u_input.b.x, var_1.e), select(u_input.b.x, 49772u, true) | var_1.d, 1u, _wgslsmith_sub_u32(var_1.d, _wgslsmith_add_u32(1u, 55658u))), abs(var_1.a.x)));
    var_0 = _wgslsmith_dot_vec2_u32(~var_2.d.a.zy, vec2<u32>(1u, 1u) ^ var_2.d.a.zz);
    return _wgslsmith_clamp_vec4_u32(select(~(~vec4<u32>(var_2.c.a.x, 0u, 50913u, var_1.d)) >> (vec4<u32>(~var_2.b, var_2.a.d, var_2.b, max(u_input.b.x, 4294967295u)) % vec4<u32>(32u)), ~vec4<u32>(1u, var_2.c.a.x << (var_2.b % 32u), 1u, 13510u >> (0u % 32u)), vec4<bool>(true, true, all(select(vec4<bool>(true, true, true, var_2.a.e), vec4<bool>(var_1.e, true, var_1.e, var_1.e), vec4<bool>(false, var_2.a.e, var_1.e, var_1.e))), false)), ~vec4<u32>(_wgslsmith_mod_u32(min(var_1.d, u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, var_1.d)), _wgslsmith_mod_u32(var_1.d, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d, var_1.d), vec2<u32>(var_1.d, 85015u))), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.d, u_input.b.x, u_input.b.x) >> (var_2.c.a % vec4<u32>(32u)), abs(var_2.c.a))), vec4<u32>(u_input.b.x, ~_wgslsmith_clamp_u32(var_2.d.a.x << (u_input.b.x % 32u), _wgslsmith_div_u32(u_input.b.x, 65288u), select(var_1.d, var_2.b, false)), var_1.d, var_2.a.d));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(func_2(), _wgslsmith_sub_i32(max(-_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), u_input.a.x), u_input.a.x));
    let var_1 = _wgslsmith_mult_vec4_u32(~var_0.a, max(var_0.a, select(~reverseBits(vec4<u32>(u_input.b.x, 0u, 29326u, 1u)), vec4<u32>(u_input.b.x, var_0.a.x ^ var_0.a.x, 76222u, var_0.a.x | u_input.b.x), true)));
    let var_2 = select(all(vec2<bool>(any(vec2<bool>(false, true)), true)), true, all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true)))));
    let var_3 = Struct_2(var_0.a, -16346i);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)));
    return Struct_2(_wgslsmith_add_vec4_u32(abs(firstLeadingBit(var_0.a)), min(var_1 & vec4<u32>(var_0.a.x, 1u, 55349u, 52907u), vec4<u32>(u_input.b.x, var_1.x, 30261u, u_input.b.x))) | ~abs(vec4<u32>(4294967295u, 19768u, var_3.a.x, 15693u) ^ vec4<u32>(75441u, var_0.a.x, var_1.x, var_1.x)), 18705i);
}

fn func_4(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = !vec4<bool>(all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), false, true, false);
    var var_1 = Struct_1(~vec3<i32>(abs(-3243i), 1i, max(-arg_0.b, _wgslsmith_mod_i32(arg_0.b, arg_0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1621f, _wgslsmith_f_op_f32(801f + -1057f)) * vec2<f32>(_wgslsmith_f_op_f32(select(-803f, 553f, var_0.x)), _wgslsmith_f_op_f32(1172f - -788f)))), -_wgslsmith_sub_vec2_i32(select(-u_input.a.yz, vec2<i32>(0i, -31777i), vec2<bool>(var_0.x, var_0.x)), select(_wgslsmith_sub_vec2_i32(u_input.a.zx, u_input.a.yx), u_input.a.zz | vec2<i32>(u_input.a.x, -41658i), all(var_0.zx))), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.b.x, 26399u), func_1().a.x, u_input.b.x ^ 0u, ~0u), ~_wgslsmith_mod_vec4_u32(arg_0.a, arg_0.a)), 34644u), false);
    let var_2 = Struct_2(arg_0.a, -13725i);
    var var_3 = Struct_2(vec4<u32>(0u, 13085u, arg_0.a.x, ~(~_wgslsmith_add_u32(0u, var_1.d))), countOneBits(var_1.a.x));
    let var_4 = func_1();
    return StorageBuffer(arg_0.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1066f, var_1.b.x), var_1.b.x, _wgslsmith_f_op_f32(-1000f * 1000f), -228f) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1816f, -1027f, var_1.b.x, var_1.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, -1420f) + vec4<f32>(1028f, 1683f, var_1.b.x, var_1.b.x))))) + vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -373f) - -662f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-706f - var_1.b.x))), _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(sign(var_1.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1());
}

