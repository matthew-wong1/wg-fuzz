struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> u32 {
    global0 = true;
    var var_0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0.a.a), -vec2<i32>(arg_2, arg_2) >> (vec2<u32>(34209u, u_input.b.x) % vec2<u32>(32u))), 24217i));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_0.b.zz - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_0.b.zx), arg_0.b.zx))))), _wgslsmith_f_op_vec2_f32(arg_0.b.zx * vec2<f32>(-223f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_0.b.x)))))), select(_wgslsmith_clamp_i32(0i, 1i, arg_0.a.a) <= _wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_add_i32(var_0.a, arg_0.a.a)), arg_1, true)));
    var var_2 = reverseBits(18450u);
    var var_3 = arg_0;
    return firstTrailingBit(u_input.b.x);
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = !(!select(false, true, true) | true);
    var var_1 = func_3(Struct_2(Struct_1(max(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -4837i), vec2<i32>(u_input.c, u_input.c)), _wgslsmith_mult_i32(-22399i, arg_0.c.a))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, -1838f, arg_0.b.x) - vec3<f32>(-410f, -943f, arg_0.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, 546f) + vec3<f32>(arg_0.b.x, 1316f, 386f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_0.b.x, -265f))))), arg_0.b.x), any(vec3<bool>(var_0 & false, !all(vec4<bool>(false, true, var_0, false)), var_0)), _wgslsmith_sub_i32(arg_0.c.a, arg_0.c.a));
    global0 = var_0;
    global0 = all(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -285f), _wgslsmith_f_op_f32(-arg_0.b.x))), ~arg_0.a >= (u_input.b.x & 9253u), all(select(select(vec3<bool>(var_0, true, true), vec3<bool>(false, var_0, var_0), var_0), select(vec3<bool>(var_0, true, false), vec3<bool>(var_0, false, var_0), true), var_0))));
    var var_2 = true;
    return _wgslsmith_mult_u32(arg_0.a, u_input.b.x);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: i32) -> f32 {
    let var_0 = Struct_2(Struct_1(arg_1.c.a), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-123f, arg_1.b.x, arg_1.b.x) - vec3<f32>(arg_1.b.x, arg_1.b.x, 1382f)) + vec3<f32>(653f, arg_1.b.x, arg_1.b.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.b.x, arg_1.b.x, -187f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1282f, -644f, arg_1.b.x), vec3<f32>(arg_1.b.x, arg_1.b.x, -1522f), vec3<bool>(true, true, arg_0))))))), -1000f);
    let var_1 = arg_0;
    var var_2 = var_1;
    var var_3 = vec4<bool>(any(vec4<bool>(false, (4294967295u <= arg_1.a) != true, var_1, true)), arg_0, !var_1, false);
    global0 = !any(select(vec2<bool>(arg_0, !var_3.x), var_3.xy, var_3.xz));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-349f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.b.x, var_0.c)) + _wgslsmith_f_op_f32(var_0.c + arg_1.b.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.b.x))))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_1(1i);
    var var_1 = Struct_1(1i);
    return Struct_1(_wgslsmith_sub_i32(~_wgslsmith_clamp_i32(i32(-1i) * -47828i, 13830i | arg_1.a, -42975i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.a, arg_1.a, var_1.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 38210i, -1i, u_input.c), vec4<i32>(-20020i, 28720i, 19190i, 41282i), vec4<i32>(21390i, -28927i, 39024i, 26493i)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> i32 {
    var var_0 = ~51024i;
    var var_1 = Struct_2(func_5(_wgslsmith_f_op_f32(func_4(all(vec4<bool>(true, true, true, true)), Struct_3(func_2(Struct_3(47174u, vec2<f32>(-707f, 405f), arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(770f, 266f)), Struct_1(u_input.c)), 1i)), arg_1, false), _wgslsmith_div_vec3_f32(vec3<f32>(-704f, _wgslsmith_f_op_f32(478f + _wgslsmith_f_op_f32(trunc(-1490f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1690f * 817f))), vec3<f32>(-1390f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -138f))), -886f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-827f))))));
    var_1 = Struct_2(Struct_1(~(-reverseBits(arg_1.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1.b))))) + vec3<f32>(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - -1225f), 494f)), 363f);
    var_0 = -23839i;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-985f * var_1.b.x), var_1.b.x);
    return func_5(var_2, func_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1175f, _wgslsmith_f_op_f32(select(var_2, -271f, false)))))), func_5(_wgslsmith_f_op_f32(-var_2), func_5(var_2, Struct_1(var_1.a.a), true), any(vec2<bool>(false, true))), !(!all(vec3<bool>(false, false, false)))), !(!((6122u >= arg_2) || true))).a;
}

fn func_6(arg_0: vec3<i32>, arg_1: f32, arg_2: i32) -> i32 {
    var var_0 = Struct_2(func_5(_wgslsmith_f_op_f32(arg_1 * arg_1), func_5(102f, func_5(arg_1, Struct_1(1i), u_input.b.x > u_input.a), true), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1231f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(770f))), arg_1)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(abs(arg_1))));
    let var_1 = u_input.a;
    var_0 = Struct_2(func_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1313f), _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x))), func_5(_wgslsmith_f_op_f32(min(-365f, _wgslsmith_f_op_f32(418f - var_0.b.x))), Struct_1(-8474i), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))) && (_wgslsmith_f_op_f32(-1000f + -771f) != _wgslsmith_f_op_f32(arg_1 + 127f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.b))), -1033f);
    return min(48418i, _wgslsmith_add_i32(_wgslsmith_add_i32(0i, u_input.c), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var_0 = _wgslsmith_add_i32(u_input.c, _wgslsmith_sub_i32(2147483647i, func_6(vec3<i32>(func_1(vec3<i32>(-2147483647i, -9651i, 41767i), Struct_1(u_input.c), u_input.a, u_input.b.x), -1i, _wgslsmith_add_i32(2147483647i, -2242i)), _wgslsmith_f_op_f32(min(-294f, 510f)), 3837i)));
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 12922i, abs(~(u_input.c << (12738u % 32u)))), vec3<i32>(u_input.c, -u_input.c, u_input.c));
    var var_2 = func_5(1106f, Struct_1(-_wgslsmith_sub_i32(func_5(394f, Struct_1(var_1.x), true).a, u_input.c)), true);
    var var_3 = Struct_2(Struct_1(u_input.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-652f, -353f))), 675f, 730f) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-176f, -587f, -715f))))))), 1248f);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(23738u, 1u), select(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(var_1.x, var_1.x), _wgslsmith_add_i32(-31336i, -1i), u_input.c >> (50090u % 32u)), vec3<i32>(1i, 2147483647i, -var_3.a.a)), vec3<i32>(-1i, countOneBits(func_6(vec3<i32>(-1i, u_input.c, var_2.a), var_3.b.x, var_1.x)), _wgslsmith_sub_i32(-2147483647i, var_2.a)), select(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), any(vec4<bool>(true, true, true, true)), true)), var_1.zy, min(min(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-9718i, var_2.a, var_1.x, var_3.a.a), vec4<i32>(46200i, u_input.c, -1i, -2147483647i))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.a, 0i, var_1.x, 0i), vec4<i32>(-15651i, -68445i, -25829i, 6970i)), ~vec4<i32>(var_3.a.a, var_3.a.a, -1i, 2200i))), -select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-85918i, 18760i, var_2.a, u_input.c), vec4<i32>(2147483647i, var_1.x, var_3.a.a, var_3.a.a), vec4<i32>(var_2.a, -25605i, 887i, u_input.c)), ~vec4<i32>(u_input.c, u_input.c, var_3.a.a, var_1.x), true)));
}

