struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1225f + arg_0.a)), !all(vec4<bool>(false, true, true, false)))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-1015f - -2590f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-174f)))), 1657f)));
    var var_1 = Struct_3(Struct_1(arg_0.e.a), arg_0.e, arg_0.a, arg_0, arg_0.e);
    var_1 = Struct_3(Struct_1(arg_0.e.a), Struct_1(arg_0.e.a & ~(~vec2<i32>(7819i, arg_0.b))), -1638f, var_1.d, Struct_1(-vec2<i32>(-var_1.b.a.x, 1i)));
    var_1 = Struct_3(Struct_1(abs(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-37972i, var_1.d.d), var_1.a.a), -var_1.a.a))), var_1.b, arg_0.a, var_1.d, var_1.e);
    var_0 = any(!vec4<bool>(true, true, arg_0.c, (u_input.a & u_input.a) > u_input.a));
    return ~_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(20481u, 44677u), vec2<bool>(true, false)), abs(vec2<u32>(11404u, u_input.a))), _wgslsmith_clamp_vec2_u32(select(~vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 18536u), true), vec2<u32>(4294967295u, u_input.a) ^ countOneBits(vec2<u32>(4294967295u, 5676u)), vec2<u32>(u_input.a, 101075u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: i32) -> u32 {
    var var_0 = func_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(max(417f, -985f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), -39762i, !arg_1.x && all(select(vec4<bool>(arg_1.x, true, true, true), vec4<bool>(true, arg_1.x, true, true), vec4<bool>(false, arg_1.x, arg_1.x, true))), arg_2, Struct_1(-vec2<i32>(arg_2, arg_2))));
    let var_1 = ~(~(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(13778u, u_input.a, u_input.a, 39668u), vec4<u32>(10518u, 4294967295u, u_input.a, u_input.a)), firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 28437u))) ^ vec4<u32>(4294967295u, ~1u, _wgslsmith_div_u32(u_input.a, u_input.a), ~u_input.a)));
    var var_2 = arg_1;
    global0 = true;
    let var_3 = !(!select(select(vec4<bool>(false, arg_1.x, arg_1.x, var_2.x), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_1.x, false, false, true), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), var_2.x)), select(!vec4<bool>(false, var_2.x, true, arg_1.x), vec4<bool>(false, var_2.x, var_2.x, true), !vec4<bool>(var_2.x, var_2.x, false, true)), !(arg_1.x | arg_1.x)));
    return _wgslsmith_dot_vec4_u32(~(~max(~var_1, ~vec4<u32>(0u, 0u, 41257u, 47451u))), min(_wgslsmith_mod_vec4_u32(var_1, _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.a, var_1.x, 0u), ~vec4<u32>(1u, 1u, 42439u, 82536u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 26676u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 30031u, 0u), var_1))));
}

fn func_4(arg_0: vec4<u32>) -> bool {
    let var_0 = Struct_1(~vec2<i32>(~firstLeadingBit(-67603i), _wgslsmith_div_i32(~35533i, _wgslsmith_mult_i32(19014i, 1i))));
    var var_1 = var_0.a.x;
    var_1 = 35108i;
    var_1 = 34810i;
    var var_2 = Struct_3(Struct_1(vec2<i32>(0i, -28254i)), Struct_1((-vec2<i32>(var_0.a.x, var_0.a.x) >> (_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), arg_0.ww) % vec2<u32>(32u))) << (vec2<u32>(0u, _wgslsmith_add_u32(u_input.a, 4294967295u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1487f)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1918f), reverseBits(-1134i), all(vec3<bool>(true, true, true)), 2147483647i, Struct_1(var_0.a)), var_0);
    return !any(select(!vec2<bool>(false, var_2.d.c), select(select(vec2<bool>(var_2.d.c, true), vec2<bool>(true, var_2.d.c), vec2<bool>(false, true)), select(vec2<bool>(true, var_2.d.c), vec2<bool>(true, false), true), vec2<bool>(var_2.d.c, var_2.d.c)), vec2<bool>(true, var_2.d.c)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    global0 = func_4(abs(vec4<u32>(u_input.a ^ ~45653u, 18303u, ~_wgslsmith_mod_u32(51878u, u_input.a), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)), !vec2<bool>(arg_0.c, false), ~2147483647i))));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a))))), -_wgslsmith_sub_i32(arg_0.e.a.x, _wgslsmith_div_i32(arg_0.d, -1i)), all(vec2<bool>(arg_0.c, arg_0.c)), ~arg_1.x >> (4143u % 32u), arg_0.e);
    global0 = false;
    var var_1 = Struct_3(var_0.e, arg_0.e, arg_0.a, Struct_2(arg_0.a, 12784i, select(any(select(vec3<bool>(false, arg_0.c, arg_0.c), vec3<bool>(var_0.c, var_0.c, var_0.c), var_0.c)), any(vec2<bool>(var_0.c, true)), !any(vec4<bool>(arg_0.c, arg_0.c, false, false))), ~(firstTrailingBit(1i) | arg_1.x), var_0.e), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(0i, arg_0.b) & vec2<i32>(arg_0.e.a.x, 17321i), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.d, -43130i), arg_1), countOneBits(vec2<i32>(var_0.b, var_0.d))))));
    global0 = all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, var_1.d.c), vec3<bool>(true, var_1.d.c, false)));
    return _wgslsmith_f_op_f32(f32(-1f) * -947f);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_3) -> f32 {
    let var_0 = arg_2.d;
    global0 = true;
    global0 = false;
    let var_1 = u_input.a;
    global0 = all(!vec2<bool>(arg_2.d.c, _wgslsmith_dot_vec2_u32(vec2<u32>(2831u, var_1), vec2<u32>(56382u, u_input.a)) != 9927u));
    return _wgslsmith_f_op_f32(-var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(vec2<i32>(-2147483647i, 16685i)), Struct_1(~(~_wgslsmith_mod_vec2_i32(vec2<i32>(3942i, -2147483647i), vec2<i32>(-2147483647i, 1i)))), _wgslsmith_f_op_f32(func_5(vec2<f32>(_wgslsmith_f_op_f32(trunc(535f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-763f - -109f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -620f), _wgslsmith_f_op_f32(func_1(Struct_2(-268f, 44488i, true, -62045i, Struct_1(vec2<i32>(-9126i, -2147483647i))), ~vec2<i32>(-2147483647i, -2147483647i))), 1f), Struct_3(Struct_1(~vec2<i32>(44440i, -1375i)), Struct_1(vec2<i32>(-2669i, -14332i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), -1312f, Struct_2(-1874f, select(1i, -1i, false), true, 1i, Struct_1(vec2<i32>(1i, -2147483647i))), Struct_1(max(vec2<i32>(-1i, 10013i), vec2<i32>(-1i, -6205i)))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1057f, 624f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(718f, 126f, 393f)), Struct_3(Struct_1(vec2<i32>(-4050i, 0i)), Struct_1(vec2<i32>(-64471i, -2147483647i)), -792f, Struct_2(726f, 2147483647i, false, -2147483647i, Struct_1(vec2<i32>(-42705i, -2147483647i))), Struct_1(vec2<i32>(1i, 51792i)))))), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(7068i, -1i), vec2<i32>(-2774i, 0i))) ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, 9888i), vec4<i32>(0i, -2147483647i, 48855i, -82105i)), false, 1i, Struct_1(_wgslsmith_add_vec2_i32(min(vec2<i32>(61471i, 6107i), vec2<i32>(1i, -1i)), _wgslsmith_div_vec2_i32(vec2<i32>(-44905i, 21841i), vec2<i32>(-66982i, -2147483647i))))), Struct_1(vec2<i32>(1i, 1i)));
    global0 = any(vec3<bool>(true, true, false));
    let var_1 = Struct_3(Struct_1(~(-var_0.e.a)), Struct_1(var_0.d.e.a), 540f, var_0.d, Struct_1(_wgslsmith_mod_vec2_i32(var_0.a.a, -var_0.b.a)));
    var var_2 = u_input.a | _wgslsmith_div_u32(10396u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(15381u, u_input.a, u_input.a) | vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, u_input.a, 71634u))));
    global0 = var_1.d.c;
    var var_3 = var_1;
    let var_4 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, ~1u, u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a)), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 15594u, 1u, 0u), vec4<u32>(4294967295u, 56392u, 0u, 1u))))), var_0.d.a, 1i, _wgslsmith_f_op_f32(trunc(var_0.c)));
}

