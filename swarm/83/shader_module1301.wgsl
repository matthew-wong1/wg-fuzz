struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: vec3<bool>,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(max(arg_0, arg_0)), false);
    var_0 = Struct_3(-645f, var_0.b);
    var var_1 = 124f;
    var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 * 348f))), !(~(~u_input.a.x) < abs(select(15804u, u_input.a.x, var_0.b))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-260f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1410f)) - _wgslsmith_f_op_f32(var_0.a + 379f)))) + var_0.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1059f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, false)))))));
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<bool>(true, !all(vec2<bool>(true, true)), true);
    let var_1 = firstLeadingBit(4294967295u);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), true);
    let var_3 = _wgslsmith_div_i32(u_input.b, countOneBits(min(u_input.b, _wgslsmith_div_i32(_wgslsmith_mult_i32(-61386i, u_input.b), -1i))));
    var var_4 = var_0.x;
    return Struct_2(Struct_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_mult_u32(var_1, 7201u)), 0u), i32(-1i) * -5121i, ~(-select(vec4<i32>(1i, var_3, 0i, 27069i), vec4<i32>(2147483647i, var_3, -1i, var_3), vec4<bool>(true, false, true, true))), u_input.a.zz), _wgslsmith_sub_vec3_u32(abs(~vec3<u32>(4294967295u, 48264u, 15368u)) << (_wgslsmith_sub_vec3_u32(~u_input.a, vec3<u32>(var_1, var_1, u_input.a.x)) % vec3<u32>(32u)), (firstLeadingBit(vec3<u32>(4294967295u, u_input.a.x, 129982u)) ^ _wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))) & ~vec3<u32>(var_1, var_1, 45429u)), countOneBits(countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -10129i, u_input.b), vec3<i32>(u_input.b, 50173i, var_3)), vec3<i32>(var_3, u_input.b, -18352i) & vec3<i32>(-40951i, u_input.b, u_input.b)))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, var_1, var_1) << (firstTrailingBit(u_input.a) % vec3<u32>(32u)), ~(vec3<u32>(var_1, var_1, u_input.a.x) ^ u_input.a)), ~var_3, -select(abs(vec4<i32>(-2147483647i, 15526i, var_3, 0i)), max(vec4<i32>(u_input.b, u_input.b, -50572i, 0i), vec4<i32>(58189i, -1i, var_3, u_input.b)), !vec4<bool>(var_2.b, false, false, true)), _wgslsmith_div_vec2_u32(firstTrailingBit(abs(u_input.a.xy)), u_input.a.xy)), _wgslsmith_sub_u32(~22416u, _wgslsmith_div_u32(_wgslsmith_div_u32(~0u, var_1), var_1)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = arg_0.a.b;
    var_0 = -_wgslsmith_clamp_i32(~((arg_0.a.b << (1u % 32u)) ^ _wgslsmith_clamp_i32(arg_1.c.x, 12123i, -19032i)), arg_1.c.x, countOneBits(u_input.b));
    let var_1 = arg_1.c.x;
    let var_2 = func_2();
    var var_3 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1104f, 1056f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1513f), _wgslsmith_f_op_f32(sign(1011f)), 1u <= arg_0.d.a)) + _wgslsmith_f_op_f32(-313f - _wgslsmith_f_op_f32(func_3(-495f))))), true);
    return !select(!vec2<bool>(!var_3.b, var_3.b), !select(!vec2<bool>(var_3.b, var_3.b), vec2<bool>(var_3.b, false), true), vec2<bool>(var_3.b, var_3.b == any(vec3<bool>(true, var_3.b, var_3.b))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_4(~arg_1.xx, max((_wgslsmith_dot_vec4_u32(vec4<u32>(9259u, u_input.a.x, 8838u, 7059u), vec4<u32>(112775u, 0u, 42216u, u_input.a.x)) & ~u_input.a.x) >> (4294967295u % 32u), ~_wgslsmith_div_u32(max(95293u, u_input.a.x), ~93856u)), !vec3<bool>(arg_0.x, all(select(vec3<bool>(false, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false))), true), u_input.a.yx, Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a), -select(arg_1.x, arg_1.x, arg_0.x), vec4<i32>(-u_input.b, 0i ^ arg_1.x, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_1.x), arg_1.zx)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(64993u, 1u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u)), ~u_input.a.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 35948u, u_input.a.x), u_input.a), u_input.a), ~_wgslsmith_add_vec3_u32(u_input.a, u_input.a)), arg_1.x, Struct_1(countOneBits(_wgslsmith_add_u32(68121u, u_input.a.x)), abs(arg_1.x), vec4<i32>(-1i & u_input.b, arg_1.x, u_input.b, 2147483647i), u_input.a.xz), u_input.a.x));
    var_0 = Struct_4(countOneBits(_wgslsmith_add_vec2_i32(-vec2<i32>(arg_1.x, -1i), _wgslsmith_clamp_vec2_i32(arg_1.yz, vec2<i32>(arg_1.x, var_0.a.x), vec2<i32>(-1i, -59964i))) << (u_input.a.yy % vec2<u32>(32u))), u_input.a.x, var_0.c, u_input.a.zx, func_2());
    var_0 = Struct_4(select(arg_1.xx & _wgslsmith_mod_vec2_i32(-vec2<i32>(9395i, 2147483647i), var_0.e.a.c.yw), _wgslsmith_mod_vec2_i32(~select(vec2<i32>(u_input.b, 22242i), arg_1.yy, true), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.a, var_0.a), -vec2<i32>(2147483647i, u_input.b))), true), select(130534u, var_0.d.x, any(select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, var_0.c.x, var_0.c.x), vec4<bool>(true, var_0.c.x, arg_0.x, false)))), select(var_0.c, var_0.c, vec3<bool>(true, arg_0.x, false)), _wgslsmith_sub_vec2_u32(max(u_input.a.xy, ~(~vec2<u32>(var_0.d.x, 37474u))), max(select(vec2<u32>(4294967295u, 0u), u_input.a.yy, any(var_0.c)), select(vec2<u32>(40974u, var_0.d.x), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, var_0.e.a.d.x), u_input.a.zx), true))), var_0.e);
    var var_1 = !vec3<bool>(~(i32(-1i) * -1011i) > func_2().d.c.x, true, !arg_0.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-337f + _wgslsmith_f_op_f32(max(-866f, -1000f))), -458f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(700f, -229f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(853f, 522f) + vec2<f32>(760f, -471f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(func_3(591f)))), _wgslsmith_f_op_f32(ceil(-503f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(249f, -1752f)), _wgslsmith_div_vec2_f32(vec2<f32>(1620f, 1704f), vec2<f32>(893f, 301f)), !var_0.c.yx))))));
    return func_2().d;
}

fn func_5(arg_0: vec4<f32>, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, 321f, false)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1703f)) + _wgslsmith_f_op_f32(f32(-1f) * -286f)) - _wgslsmith_f_op_f32(round(arg_0.x)))), arg_0.x, arg_2);
    var var_1 = ~(~_wgslsmith_dot_vec3_u32(~u_input.a, u_input.a));
    var_1 = countOneBits(_wgslsmith_sub_u32(arg_1, 79320u));
    var_1 = 1u;
    var var_2 = 30524i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_2) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-358f + arg_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 54740i;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(670f, 246f, -636f, -226f) + vec4<f32>(-1032f, -782f, 2521f, 106f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-422f, 810f, 294f, 1000f)))), ~max(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-564f * -1252f) * _wgslsmith_f_op_f32(round(-718f))), func_4(func_1(Struct_2(Struct_1(u_input.a.x, 0i, vec4<i32>(var_0, 2147483647i, 22066i, var_0), vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a, u_input.b, Struct_1(48998u, -22872i, vec4<i32>(-1i, var_0, var_0, u_input.b), vec2<u32>(1u, 14855u)), u_input.a.x), Struct_1(u_input.a.x, -43507i, vec4<i32>(var_0, var_0, 0i, 1i), vec2<u32>(74616u, 4294967295u))), ~vec3<i32>(var_0, 0i, 2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1679f + -1754f)))), all(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), false))));
    let var_2 = Struct_4(-(~(~_wgslsmith_mod_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(31222i, -2147483647i)))), 4294967295u, select(vec3<bool>(var_1.b, true, var_1.b), vec3<bool>(!var_1.b & (var_1.a != 813f), _wgslsmith_mod_u32(19869u, u_input.a.x) > 1u, true), var_1.b), firstLeadingBit((select(u_input.a.yz, u_input.a.zy, vec2<bool>(false, var_1.b)) ^ vec2<u32>(u_input.a.x, 48501u)) << (_wgslsmith_mult_vec2_u32(~u_input.a.xy, vec2<u32>(1u, 1u)) % vec2<u32>(32u))), func_2());
    let var_3 = func_2();
    var var_4 = u_input.a;
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(var_1.a, -1644f, !var_1.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, var_1.a)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a, -330f, 803f)))))), var_3.a.d, ~(u_input.b >> (_wgslsmith_div_u32(firstLeadingBit(var_2.d.x), _wgslsmith_mod_u32(0u, var_5.d.x)) % 32u)));
}

