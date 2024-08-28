struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    let var_0 = ~u_input.c;
    var var_1 = Struct_1(arg_2.a, _wgslsmith_mult_i32(-(arg_0.a ^ arg_2.d.x), -u_input.b.x) ^ ~arg_0.a, vec3<f32>(1115f, _wgslsmith_f_op_f32(abs(-473f)), arg_2.c.x), ~vec2<i32>(~_wgslsmith_sub_i32(-2147483647i, -2147483647i), ~(-1i) >> (~4294967295u % 32u)), _wgslsmith_f_op_f32(-924f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * -501f)) - _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(628f + -371f)))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2.e), arg_3.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -996f)))), var_1.c.x);
    let var_3 = vec3<u32>(_wgslsmith_div_u32(4294967295u, ~arg_1), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, ~arg_2.a) | ~3882u, ~arg_1), ~min(~(~arg_2.a), ~(~u_input.a.x)));
    var var_4 = vec2<u32>(arg_1, 4294967295u);
    return 0u;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: vec4<u32>) -> i32 {
    let var_0 = arg_1;
    var var_1 = arg_0.b;
    var var_2 = vec2<bool>(true, !(arg_0.a.x >= _wgslsmith_div_u32(25481u, arg_0.a.x)));
    let var_3 = arg_0.b;
    return -66304i;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_3, arg_3: vec4<u32>) -> f32 {
    var var_0 = Struct_3(func_4(Struct_2(vec3<u32>(func_3(Struct_3(arg_2.a, true), arg_1, Struct_1(28159u, arg_2.a, vec3<f32>(274f, 2534f, -747f), vec2<i32>(2147483647i, arg_2.a), -790f), vec3<f32>(-947f, -443f, -1980f)), 1u, 1u), Struct_1(firstLeadingBit(u_input.a.x), _wgslsmith_mod_i32(34330i, -4579i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-335f, 1000f, 200f)), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, arg_2.a), u_input.c.yw), -1102f)), arg_2, countOneBits(13607i), _wgslsmith_mod_vec4_u32(arg_3, vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), abs(6847u), reverseBits(u_input.a.x), ~1u))), !arg_2.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(853f, -555f, true)))))));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: vec2<f32>) -> f32 {
    let var_0 = vec4<bool>(!(!(u_input.a.x > u_input.a.x)), false, arg_1.b, false);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-331f)), -879f, _wgslsmith_f_op_f32(trunc(arg_2)), _wgslsmith_f_op_f32(func_2(vec4<bool>(arg_1.b, var_0.x, var_0.x, false), u_input.a.x, Struct_3(0i, var_0.x), vec4<u32>(u_input.a.x, 0u, 4294967295u, 1u)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1588f, arg_3.x, arg_0, arg_0) * vec4<f32>(-204f, -1000f, arg_3.x, arg_2)) + vec4<f32>(1041f, -215f, -359f, arg_3.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(arg_3.x + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -2849f)))));
    var var_2 = 1i;
    var var_3 = Struct_1(_wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, 16485u, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)) >> (abs(max(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 13522u, u_input.a.x, u_input.a.x), select(vec4<u32>(4294967295u, 4294967295u, 0u, 19510u), vec4<u32>(8283u, u_input.a.x, 0u, 4294967295u), vec4<bool>(arg_1.b, true, false, false)))), _wgslsmith_sub_i32(-62980i, 33121i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-2341f - var_1.x)))), _wgslsmith_f_op_f32(-arg_3.x), arg_0), ~vec2<i32>(1i, -2147483647i) << (vec2<u32>(~u_input.a.x, abs(4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2))));
    var var_4 = Struct_2(select(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(26304u, u_input.a.x, var_3.a), vec3<u32>(u_input.a.x, var_3.a, 1u) >> (vec3<u32>(var_3.a, 26483u, 44659u) % vec3<u32>(32u)))), _wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(var_3.a), 1u, ~1u), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 28793u), vec3<u32>(var_3.a, 14739u, 0u))), any(vec3<bool>(all(vec2<bool>(true, arg_1.b)), true, var_0.x))), Struct_1(_wgslsmith_add_u32(var_3.a, max(countOneBits(52228u), u_input.a.x)), ~(-34387i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-110f, arg_3.x, var_3.e)))), ~vec2<i32>(min(-44401i, arg_1.a), u_input.c.x), arg_2));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1u, u_input.c.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-291f, 938f, -240f))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-489f + 1823f), _wgslsmith_f_op_f32(func_1(-664f, Struct_3(-1i, true), 509f, vec2<f32>(156f, -459f))), _wgslsmith_f_op_f32(2066f + 249f)))))), min(vec2<i32>(min(u_input.b.x, -15807i), 1i), u_input.b.xy), _wgslsmith_f_op_f32(func_1(1241f, Struct_3(-u_input.b.x, !all(vec2<bool>(true, false))), 487f, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(sign(-762f)), _wgslsmith_f_op_f32(f32(-1f) * -451f)), vec2<f32>(392f, _wgslsmith_f_op_f32(f32(-1f) * -1067f)))))));
    let var_1 = 1u & var_0.a;
    var_0 = Struct_1(~_wgslsmith_div_u32(var_1, 4294967295u), u_input.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c) - vec3<f32>(_wgslsmith_f_op_f32(-450f * _wgslsmith_f_op_f32(-var_0.e)), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-460f + 1111f), _wgslsmith_f_op_f32(floor(var_0.c.x))))), _wgslsmith_sub_vec2_i32(vec2<i32>(-22848i, var_0.b), select(~u_input.b.zy ^ select(u_input.b.zy, vec2<i32>(-20374i, u_input.b.x), vec2<bool>(false, false)), u_input.b.wx, (47762u & var_0.a) == 4294967295u)), 946f);
    var_0 = Struct_1(~_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(max(u_input.a.x, var_0.a), func_3(Struct_3(var_0.b, true), 71346u, Struct_1(43029u, 2147483647i, vec3<f32>(-824f, -523f, -114f), var_0.d, var_0.e), vec3<f32>(var_0.e, var_0.c.x, 496f)))), _wgslsmith_sub_i32(~((46866i << (var_1 % 32u)) & 0i), var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c))), firstTrailingBit(var_0.d), var_0.e);
    var_0 = Struct_1(abs(u_input.a.x), ~1i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.c)), var_0.c)))), var_0.d, 2976f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + _wgslsmith_f_op_f32(round(var_0.e))), _wgslsmith_f_op_f32(sign(var_0.c.x)), _wgslsmith_f_op_f32(abs(var_0.e)), _wgslsmith_f_op_f32(select(var_0.e, 662f, all(vec4<bool>(true, false, false, true)))))));
}

