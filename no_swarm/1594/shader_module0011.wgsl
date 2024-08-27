struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = Struct_1(select(true, select(all(vec3<bool>(arg_0, true, arg_1.c.a)), true, arg_0), any(vec2<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(true, arg_0, false))))), arg_1.c.b);
    let var_1 = vec4<u32>(6741u, reverseBits(~firstTrailingBit(max(arg_1.b.x, u_input.b.x))), _wgslsmith_div_u32(~u_input.b.x, 4294967295u), abs(1u));
    let var_2 = !arg_1.c.a;
    var var_3 = arg_1.a.x;
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(869f - var_0.b));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = select(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), ~(~vec3<u32>(1u, u_input.b.x, ~u_input.b.x)), vec3<bool>(arg_2.b.a, false, true));
    var var_1 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(func_3(false, Struct_2((vec4<u32>(u_input.b.x, var_0.x, var_0.x, var_0.x) & vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)) | select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(1u, 42645u, 0u, u_input.b.x), false), vec4<u32>(reverseBits(24342u), 1610u, _wgslsmith_mod_u32(u_input.b.x, 14965u), var_0.x ^ u_input.b.x), arg_2.b), arg_1, vec3<i32>(-u_input.c.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(arg_1.x, u_input.c.x)), vec2<i32>(arg_1.x, arg_1.x)), firstTrailingBit(_wgslsmith_div_i32(2147483647i, arg_1.x))))));
    var var_2 = Struct_2(~(~min(firstTrailingBit(vec4<u32>(55228u, 70898u, 1u, u_input.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 49262u), vec4<u32>(1u, 9506u, 1u, u_input.b.x)))), vec4<u32>(~u_input.b.x, 1u, 1u, (u_input.b.x | 0u) | u_input.b.x), Struct_1(arg_0.a, _wgslsmith_f_op_f32(trunc(var_1.b))));
    let var_3 = _wgslsmith_add_u32(max(var_0.x, ~(~0u) ^ select(~4294967295u, u_input.b.x, u_input.b.x != 4294967295u)), ~max(_wgslsmith_mult_u32(4294967295u, u_input.b.x), ~var_2.b.x) >> (~(~21156u) % 32u));
    let var_4 = Struct_2(var_2.b, _wgslsmith_mod_vec4_u32(~vec4<u32>(17790u, 0u, 113966u, 0u) | ~min(var_2.a, var_2.b), ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(var_2.a, vec4<u32>(9725u, var_0.x, 0u, 0u)), var_2.a)), arg_2.a);
    return Struct_2(_wgslsmith_div_vec4_u32(~vec4<u32>(~var_0.x, _wgslsmith_mult_u32(var_0.x, var_3), countOneBits(var_3), 23343u << (var_0.x % 32u)), var_4.b ^ var_4.b), ~vec4<u32>(55541u, u_input.b.x, 1328u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3, 0u, var_2.a.x), vec3<u32>(1u, var_3, var_4.b.x)) << (var_4.b.x % 32u)), Struct_1(true, var_1.b));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<f32>) -> vec3<i32> {
    var var_0 = func_2(arg_0.b, -(vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(u_input.c.x, u_input.c.x))), arg_0);
    var var_1 = true;
    let var_2 = 240i;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-550f, _wgslsmith_f_op_f32(max(arg_1.b, _wgslsmith_f_op_f32(-791f * arg_0.a.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1643f) + _wgslsmith_f_op_f32(select(var_0.c.b, 651f, false)))) * vec4<f32>(-187f, -337f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -471f), arg_0.b.b)), 244f)));
    var_1 = any(select(!select(!vec4<bool>(var_0.c.a, false, arg_1.a, arg_0.a.a), select(vec4<bool>(arg_1.a, arg_1.a, false, arg_0.a.a), vec4<bool>(false, arg_1.a, false, var_0.c.a), vec4<bool>(false, false, true, arg_1.a)), !vec4<bool>(arg_1.a, false, arg_1.a, true)), select(vec4<bool>(u_input.b.x != u_input.b.x, false, true, false & arg_1.a), vec4<bool>(true, !var_0.c.a, true, !arg_0.b.a), var_0.c.a), !arg_1.a));
    return u_input.c.wxz;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    var var_0 = select(_wgslsmith_div_vec4_i32(u_input.c, ~min(u_input.c, u_input.c)), vec4<i32>(~select(34772i, 18260i, arg_2.a), u_input.a, ~2147483647i << (_wgslsmith_mod_u32(u_input.b.x, 4294967295u) % 32u), _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_3.x, 2147483647i), _wgslsmith_mod_i32(u_input.c.x, -2147483647i))) << (~(~_wgslsmith_mod_vec4_u32(vec4<u32>(83361u, u_input.b.x, arg_0, 1u), vec4<u32>(24434u, 96864u, 18908u, 6882u))) % vec4<u32>(32u)), true);
    var_0 = u_input.c;
    var var_1 = arg_1;
    var_1 = Struct_3(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1608f, _wgslsmith_div_f32(1625f, -122f), true)))), var_1.a);
    var_0 = _wgslsmith_sub_vec4_i32(firstLeadingBit(select(vec4<i32>(-5528i, -2147483647i, 7710i, arg_3.x), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.x, 0i, -11237i, 1i), u_input.c), select(vec4<bool>(arg_1.a.a, var_1.a.a, arg_1.b.a, true), vec4<bool>(arg_1.a.a, var_1.a.a, false, false), vec4<bool>(true, arg_1.b.a, var_1.a.a, false)))) & vec4<i32>(reverseBits(select(1i, arg_3.x, arg_2.a)), _wgslsmith_sub_i32(1i, max(4678i, -35932i)), -24283i, var_0.x), u_input.c);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(1u >> (0u % 32u));
    let var_1 = Struct_1(true, -627f);
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(~(-23364i), -u_input.a, ~1i), max(-(~vec3<i32>(2147483647i, u_input.a, 26890i)), u_input.c.wxz) | u_input.c.zyz);
    let var_3 = ~vec4<i32>(_wgslsmith_clamp_i32(-u_input.a, u_input.a, -12484i), -59070i, _wgslsmith_dot_vec2_i32(u_input.c.xy << (~u_input.b % vec2<u32>(32u)), ~(u_input.c.xx << (u_input.b % vec2<u32>(32u)))), max(2147483647i, countOneBits(_wgslsmith_mod_i32(-34090i, u_input.a))));
    let var_4 = vec3<f32>(-1387f, _wgslsmith_f_op_f32(f32(-1f) * -331f), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_5 = _wgslsmith_mult_vec3_u32(select(vec3<u32>(49946u, var_0, ~u_input.b.x << (1u % 32u)), max(vec3<u32>(0u, _wgslsmith_mult_u32(var_0, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(81210u, u_input.b.x, 68078u, var_0), vec4<u32>(u_input.b.x, var_0, 1u, u_input.b.x))), min(vec3<u32>(u_input.b.x, 25079u, 33645u), vec3<u32>(var_0, var_0, 0u)) >> (vec3<u32>(4294967295u, 42251u, 35405u) % vec3<u32>(32u))), vec3<bool>(reverseBits(u_input.b.x) != 0u, func_4(_wgslsmith_add_u32(1u, 1574u), Struct_3(var_1, Struct_1(var_1.a, 1885f)), var_1, func_1(Struct_3(var_1, var_1), Struct_1(false, 121f), var_4)), !all(vec4<bool>(false, var_1.a, false, false)))), _wgslsmith_clamp_vec3_u32(select(countOneBits(firstLeadingBit(vec3<u32>(var_0, u_input.b.x, 4294967295u))), ~(~vec3<u32>(var_0, 0u, 0u)), vec3<bool>(var_1.a & true, true, true)), vec3<u32>(~0u, u_input.b.x, ~(~var_0)), vec3<u32>(_wgslsmith_div_u32(~0u, countOneBits(4294967295u)), ~22982u, 16234u)));
    var var_6 = countOneBits(~vec3<u32>(u_input.b.x, var_0, 14636u)) | (vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, var_0, u_input.b.x), vec4<u32>(var_5.x, var_0, u_input.b.x, var_0)), ~vec4<u32>(u_input.b.x, u_input.b.x, 63135u, 1u)), var_0, _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 35880u), var_0)) & ~reverseBits(reverseBits(vec3<u32>(4294967295u, u_input.b.x, 4294967295u))));
    let var_7 = func_2(var_1, ~u_input.c.xx, Struct_3(var_1, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2005f) == _wgslsmith_f_op_f32(func_3(var_1.a, Struct_2(vec4<u32>(var_6.x, var_0, 66882u, var_5.x), vec4<u32>(6536u, 1u, 0u, 4294967295u), var_1), var_3.zx, vec3<i32>(var_3.x, 1i, var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_4.x, -2354f)))))).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_4.x, 486f, false)), _wgslsmith_f_op_f32(var_4.x * var_1.b), _wgslsmith_f_op_f32(-var_1.b), var_1.b) - vec4<f32>(_wgslsmith_f_op_f32(round(var_7.b)), -1000f, 1f, var_4.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_7.b, var_7.b, var_4.x, var_7.b), vec4<f32>(561f, -550f, var_7.b, var_1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(900f, var_7.b, var_4.x, var_4.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4) * var_4), var_4))));
}

