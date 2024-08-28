struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * -575f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))));
    var_0 = arg_1;
    var_0 = _wgslsmith_f_op_f32(-arg_1);
    let var_1 = arg_0;
    let var_2 = Struct_2(abs(max(u_input.a.zx, vec2<i32>(u_input.a.x, 2147483647i)) ^ -u_input.a.xz));
    return 4294967295u;
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = !any(vec2<bool>(true, true));
    var var_1 = ~vec3<u32>(~func_3(min(vec2<u32>(102653u, 1u), vec2<u32>(7787u, 72149u)), _wgslsmith_f_op_f32(floor(483f)), ~22047u), 52402u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)));
    var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(countOneBits(vec3<u32>(var_1.x, 6147u, var_1.x))), vec3<u32>(var_1.x, _wgslsmith_mod_u32(0u, 34826u), _wgslsmith_mult_u32(var_1.x, var_1.x))), ~_wgslsmith_div_vec3_u32(select(vec3<u32>(1u, 62606u, 0u), vec3<u32>(1u, 63263u, var_1.x), vec3<bool>(var_0, false, var_0)), vec3<u32>(var_1.x, var_1.x, var_1.x) >> (vec3<u32>(1u, 1u, 43702u) % vec3<u32>(32u)))) >> (vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, var_1.x, var_1.x), firstTrailingBit(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x))), 0u, reverseBits(firstTrailingBit(~var_1.x))) % vec3<u32>(32u));
    let var_2 = Struct_4(_wgslsmith_mod_i32(arg_0, i32(-1i) * -1i), vec3<u32>(293u, ~(~29133u), var_1.x), Struct_2(abs(-reverseBits(vec2<i32>(u_input.a.x, 15378i)))));
    let var_3 = Struct_4(u_input.a.x, vec3<u32>(var_1.x, reverseBits(select(var_2.b.x, var_1.x, var_0)), var_1.x) | ~_wgslsmith_mod_vec3_u32(var_2.b, ~vec3<u32>(16023u, var_2.b.x, 26469u)), var_2.c);
    return Struct_4(var_3.a, _wgslsmith_add_vec3_u32(var_2.b, ~var_3.b) ^ vec3<u32>(_wgslsmith_mod_u32(abs(var_2.b.x), var_2.b.x), ~4294967295u, var_3.b.x), var_2.c);
}

fn func_1() -> vec2<bool> {
    var var_0 = -921f;
    let var_1 = func_2(0i);
    let var_2 = true;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-803f, _wgslsmith_f_op_f32(851f * 725f))) * -1291f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(608f, 254f) * 1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1573f * -2150f))))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -751f))));
    let var_4 = !any(select(select(vec3<bool>(true, true, true), !vec3<bool>(false, true, var_2), vec3<bool>(false, false, true)), !(!vec3<bool>(var_2, true, false)), true));
    return !vec2<bool>(false, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, -14752i, -1i), u_input.a) >= var_1.a);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_3(!vec3<bool>(true, !func_1().x, false), _wgslsmith_div_vec2_u32(vec2<u32>(42468u, ~18566u), ~vec2<u32>(func_2(12668i).b.x, ~53892u)));
    let var_1 = func_1().x;
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(-1i, 1i, -2147483647i, 4494i)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-242i, -17079i, arg_0.x, 13128i), vec4<i32>(u_input.a.x, arg_0.x, -1i, arg_0.x)), select(vec4<i32>(0i, -27190i, -2147483647i, u_input.a.x), vec4<i32>(arg_0.x, u_input.a.x, arg_0.x, 1i), false)), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), -19360i, arg_0.x)), vec4<i32>((u_input.a.x >> (var_0.b.x % 32u)) ^ _wgslsmith_sub_i32(22757i, 2147483647i), _wgslsmith_add_i32(~u_input.a.x, 2147483647i ^ arg_0.x), i32(-1i) * -39146i, arg_0.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(396f, 1111f) - _wgslsmith_div_vec2_f32(vec2<f32>(1504f, -819f), vec2<f32>(154f, 246f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-781f, 1247f), vec2<f32>(1591f, 1273f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-760f, -1391f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-939f, 355f) + vec2<f32>(-2250f, 1837f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-717f, -874f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(769f, -1618f))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(305f, -738f) - vec2<f32>(-1515f, -158f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-759f, -1089f)))))));
    let var_4 = Struct_3(!(!vec3<bool>(var_1, true, true)), ~(~var_0.b));
    return Struct_1(vec4<u32>(_wgslsmith_add_u32(26718u, abs(~var_4.b.x)), 0u, var_0.b.x, _wgslsmith_div_u32(select(18941u, var_0.b.x, true), var_0.b.x)), _wgslsmith_f_op_f32(-1181f + _wgslsmith_f_op_f32(-747f + _wgslsmith_f_op_f32(step(-814f, -401f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1180f, 345f, -203f, 735f), vec4<f32>(-1161f, 1886f, 460f, -253f))))), vec4<f32>(var_3.x, var_3.x, _wgslsmith_f_op_f32(select(1022f, -1000f, var_0.a.x)), _wgslsmith_div_f32(var_3.x, var_3.x)), vec4<bool>(var_1, var_4.a.x, select(arg_1.x, false, arg_1.x), all(vec4<bool>(arg_1.x, arg_1.x, true, false)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 267f;
    let var_1 = func_4(vec2<i32>(-1i) * -(~vec2<i32>(u_input.a.x, u_input.a.x)), func_1());
    var var_2 = func_2(~_wgslsmith_dot_vec2_i32(min(select(u_input.a.xx, vec2<i32>(u_input.a.x, u_input.a.x), true), vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(~u_input.a.x, i32(-1i) * -2147483647i)));
    let var_3 = var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec3_i32(u_input.a, select(vec3<i32>(u_input.a.x, var_2.a, u_input.a.x), -vec3<i32>(-1i, 1i, var_2.c.a.x), vec3<bool>(false, true, true)))), vec4<i32>(-1i) * -vec4<i32>(u_input.a.x & -7656i, ~var_2.c.a.x, 1i, -13274i), func_3(vec2<u32>(~4294967295u, 17648u) << (vec2<u32>(~var_1.a.x, var_2.b.x) % vec2<u32>(32u)), var_3, _wgslsmith_mod_u32(var_2.b.x, 1u >> (0u % 32u))), vec2<u32>(1u, 1u));
}

