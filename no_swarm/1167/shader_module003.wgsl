struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<i32> {
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b.xx, select(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, -1i), vec2<bool>(false, false))), u_input.b.x | ~76864i), (u_input.b.x ^ min(u_input.b.x, u_input.b.x)) << (u_input.a % 32u)), -1i, 0i, ~u_input.b.x);
    var_0 = vec4<i32>(-2147483647i, var_0.x, -14029i, min(~(-var_0.x) | 47409i, _wgslsmith_mod_i32(~(u_input.b.x | -20266i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, var_0.x), var_0.wyy >> (u_input.c % vec3<u32>(32u))))));
    let var_1 = Struct_2(abs(~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.a, 1u, u_input.d, 35283u)), ~vec4<u32>(u_input.c.x, 62151u, 4023u, u_input.a))), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(false, true), 1u != u_input.d), vec2<bool>(true, true), true), _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, u_input.b.x), var_0.xz), reverseBits(u_input.b.zx)), vec2<bool>(true, true)), Struct_1(vec2<bool>(all(vec2<bool>(true, true)), true), 11775i, vec2<bool>(true, any(vec2<bool>(true, true)))), firstLeadingBit(13653u));
    var_0 = vec4<i32>(1i, -48634i, -2147483647i, -abs(1i));
    var_0 = select(firstTrailingBit(-_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(-31401i, 1i, 2147483647i, 2847i) & vec4<i32>(var_1.c.b, -4501i, var_0.x, 64160i))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~max(vec4<i32>(var_0.x, 824i, var_0.x, var_0.x), vec4<i32>(0i, u_input.b.x, var_1.b.b, var_1.b.b)), select(-vec4<i32>(var_0.x, -2147483647i, var_1.c.b, u_input.b.x), ~vec4<i32>(var_0.x, -12615i, -12771i, -21538i), select(vec4<bool>(var_1.b.a.x, true, false, true), vec4<bool>(var_1.b.c.x, true, var_1.c.c.x, true), vec4<bool>(true, var_1.b.c.x, true, false)))), abs(abs(vec4<i32>(-25941i, var_1.c.b, var_1.c.b, var_0.x))) | u_input.b), vec4<bool>(any(select(!vec2<bool>(var_1.b.c.x, false), select(var_1.c.c, var_1.c.c, var_1.b.a.x), var_1.c.c.x)), var_1.b.c.x | var_1.b.a.x, all(select(var_1.b.a, select(vec2<bool>(var_1.c.c.x, true), var_1.c.c, vec2<bool>(var_1.b.c.x, var_1.c.c.x)), select(vec2<bool>(var_1.c.a.x, var_1.c.c.x), var_1.c.c, var_1.b.c))), false && var_1.c.c.x));
    return var_0.wy;
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_i32(-24699i, _wgslsmith_dot_vec2_i32(u_input.b.zz, _wgslsmith_sub_vec2_i32(u_input.b.xy, func_3())));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(209f, -1297f) + vec2<f32>(-390f, 1738f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1223f, -394f))) - vec2<f32>(-627f, -1274f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1571f, -894f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-992f, -1170f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(521f, -727f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-573f - -612f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(538f, 369f)))));
    var_0 = -(~(-1i));
    var var_2 = Struct_2(vec4<u32>(_wgslsmith_mod_u32(42267u, u_input.c.x), 31426u, ~88726u, 1u), Struct_1(arg_0.c, arg_0.b, arg_0.a), Struct_1(select(vec2<bool>(u_input.c.x >= 19867u, arg_0.a.x | arg_0.a.x), select(vec2<bool>(true, arg_0.a.x), select(vec2<bool>(arg_0.a.x, arg_0.c.x), arg_0.a, arg_0.c), arg_0.c), false), func_3().x, !(!vec2<bool>(false, arg_0.c.x))), u_input.d);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) + var_1.x)))));
    return !vec4<bool>(var_2.c.c.x, _wgslsmith_f_op_f32(518f + _wgslsmith_f_op_f32(trunc(var_1.x))) == -278f, u_input.c.x < 4294967295u, any(!vec4<bool>(arg_0.c.x, false, false, arg_0.c.x)));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    var var_0 = !all(select(func_2(Struct_1(vec2<bool>(false, true), -2147483647i, vec2<bool>(false, false))), vec4<bool>(true, true, true, true), false)) && true;
    var var_1 = ~0u >= ~_wgslsmith_add_u32(4294967295u, ~(~u_input.c.x));
    var_0 = all(select(vec4<bool>(true, true, false, !select(true, false, false)), vec4<bool>(true, true, true, true), func_2(Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), ~(-1i), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))))));
    let var_2 = Struct_1(!vec2<bool>(true, _wgslsmith_mult_u32(1430u, 0u) < (29493u ^ arg_0)), reverseBits(u_input.b.x), vec2<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true))) || any(vec2<bool>(true, true)), true));
    var_1 = true;
    return ~abs(u_input.c.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(105830u, ~4294967295u), func_1(109577u)));
    let var_1 = u_input.b.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -427f), 958f, -980f, _wgslsmith_f_op_f32(-1058f + -306f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -459f, 1509f, -1000f) - vec4<f32>(-442f, 1137f, 765f, -1209f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-426f, _wgslsmith_div_f32(-919f, 197f), _wgslsmith_f_op_f32(abs(-846f)), _wgslsmith_f_op_f32(floor(429f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1163f, -409f, 574f, 2096f) - vec4<f32>(108f, 445f, -1463f, 659f)), func_2(Struct_1(vec2<bool>(true, false), 48151i, vec2<bool>(false, true)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1090f, -1000f, 118f) * vec4<f32>(-1201f, -299f, -865f, 1415f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-540f, 268f, 1000f, -857f), vec4<f32>(-1662f, -1000f, -384f, -697f)))), vec4<f32>(_wgslsmith_f_op_f32(-489f - -878f), _wgslsmith_div_f32(-1525f, 2198f), -1158f, -1295f))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1087f + 917f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-533f, -1628f)), _wgslsmith_f_op_f32(ceil(-384f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-320f, -277f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(511f)) - -374f))));
    let var_3 = ~u_input.b;
    var var_4 = Struct_1(vec2<bool>(any(select(func_2(Struct_1(vec2<bool>(false, false), 2147483647i, vec2<bool>(true, true))).wz, vec2<bool>(true, true), select(false, true, false))), !all(vec2<bool>(true, true))), _wgslsmith_mult_i32(u_input.b.x, -u_input.b.x), vec2<bool>(all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), !func_2(Struct_1(vec2<bool>(false, false), -60342i, vec2<bool>(false, true))).x));
    var_4 = Struct_1(!var_4.c, abs(-var_3.x ^ (i32(-1i) * -var_3.x)), var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x | _wgslsmith_add_u32(4294967295u, reverseBits(1u) << (~var_0.x % 32u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, max(u_input.c, vec3<u32>(var_0.x, 1u, var_0.x))), ~min(vec3<u32>(var_0.x, u_input.a, 56577u), u_input.c)), ~20629u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2135f)) * var_2.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_f_op_f32(-var_2.x))), var_2, vec2<i32>(_wgslsmith_mult_i32(2147483647i, -1i), 20858i));
}

