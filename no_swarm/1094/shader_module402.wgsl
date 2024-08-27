struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(33373i, 26502i, -20739i, -38947i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -337f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-125f)))))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-766f - 145f)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1976f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false))), all(vec2<bool>(true, false))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-778f, 1000f)) + -1262f)));
    return _wgslsmith_mod_i32(u_input.c, u_input.a.x);
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -943f))));
}

fn func_2() -> Struct_1 {
    global0 = ~(~(~vec4<i32>(global0.x, global0.x, -2147483647i, u_input.c))) | -vec4<i32>(-u_input.a.x, 1i, -2147483647i, max(-global0.x, u_input.c));
    global0 = select(~abs(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, global0.x, -1i, u_input.c), vec4<i32>(u_input.a.x, global0.x, 20422i, u_input.c)), vec4<i32>(u_input.a.x, 16996i, global0.x, 0i))), abs(_wgslsmith_clamp_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, global0.x, global0.x), vec4<i32>(58178i, global0.x, u_input.c, -20591i))), vec4<i32>(max(-35977i, global0.x), global0.x, abs(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(17914i, 2147483647i, 54089i), vec3<i32>(-8966i, u_input.c, 33283i))), vec4<i32>(-global0.x, global0.x, reverseBits(u_input.c), -global0.x))), -251f < _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1204f + 1777f), _wgslsmith_f_op_f32(func_3(1u, u_input.a))) * -375f));
    let var_0 = Struct_5(-695f);
    let var_1 = Struct_2(Struct_1(-1269f, all(vec2<bool>(true, true)), vec2<bool>(!select(false, false, true), true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2035f, 602f, var_0.a, -516f)), vec4<f32>(599f, var_0.a, 827f, -1000f), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 969f, 1166f, 894f) + vec4<f32>(1109f, var_0.a, var_0.a, var_0.a))))), true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1060f - 2605f), _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), -642f)), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))))), u_input.a.x);
    global0 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 1i), u_input.a), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global0.x, u_input.c), vec3<i32>(-1i, u_input.a.x, u_input.a.x)), 2147483647i)), 25063i, global0.x), _wgslsmith_add_vec4_i32(abs(-vec4<i32>(-36719i, 39828i, 1i, -14692i)), vec4<i32>(reverseBits(u_input.c), abs(10650i), _wgslsmith_mult_i32(global0.x, var_1.c & -2147483647i), -u_input.c)));
    return var_1.a;
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> vec4<i32> {
    var var_0 = vec3<u32>(88800u, u_input.d.x, ~_wgslsmith_add_u32(arg_0.e.x, arg_0.e.x));
    global0 = select(~vec4<i32>(_wgslsmith_mult_i32(select(0i, -1i, true), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -21723i), vec2<i32>(arg_0.c, arg_0.a.x))), func_1(), global0.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, global0.x), vec2<i32>(arg_0.c, u_input.c), vec2<i32>(global0.x, arg_0.c)), u_input.a)), arg_0.a, true);
    var var_1 = -8005i;
    var var_2 = func_2();
    var var_3 = false;
    return vec4<i32>(-1i) * -countOneBits(-arg_0.a >> (firstLeadingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, 18909u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_3(vec4<i32>(global0.x, func_1(), ~6774i, i32(-1i) * -13788i), func_2(), ~global0.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(227f + 349f) - _wgslsmith_f_op_f32(-559f + -948f)), firstTrailingBit(u_input.a.x) < -u_input.a.x, vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, 2242f, 500f, 943f))), true), select(vec2<u32>(~u_input.b.x, u_input.d.x), u_input.d.yx, all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)))), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x & u_input.b.x), 1u));
    var var_0 = select(countOneBits(u_input.a), firstTrailingBit(func_4(Struct_3(firstTrailingBit(vec4<i32>(-58867i, 56829i, global0.x, -55675i)), Struct_1(805f, false, vec2<bool>(false, true), vec4<f32>(300f, 221f, 1000f, -929f), true), ~19889i, func_2(), vec2<u32>(u_input.d.x, 1u)), ~(u_input.d.x | 1u)).xw), true);
    global0 = _wgslsmith_mod_vec4_i32(abs(~vec4<i32>(_wgslsmith_add_i32(u_input.a.x, 2147483647i), -2147483647i >> (u_input.d.x % 32u), var_0.x ^ -33943i, var_0.x >> (63256u % 32u))), vec4<i32>(var_0.x, var_0.x, func_4(Struct_3(firstTrailingBit(vec4<i32>(62267i, -2147483647i, 24794i, -3067i)), Struct_1(184f, true, vec2<bool>(true, true), vec4<f32>(-1997f, -1843f, -1071f, -1326f), true), -1i, Struct_1(2036f, false, vec2<bool>(false, false), vec4<f32>(-595f, -942f, -291f, 1171f), false), _wgslsmith_div_vec2_u32(vec2<u32>(89289u, 1u), vec2<u32>(u_input.d.x, 54318u))), ~u_input.d.x).x, 2147483647i));
    global0 = reverseBits(reverseBits(-((vec4<i32>(var_0.x, 1i, -1i, var_0.x) << (vec4<u32>(u_input.d.x, 34564u, 0u, 0u) % vec4<u32>(32u))) & ~vec4<i32>(25098i, -28637i, 115391i, u_input.c))));
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1314f + -1000f), -265f, true)), false | any(vec4<bool>(true, false, true, true)), vec2<bool>(true, false), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-110f, 117f, -158f, 1272f) * vec4<f32>(430f, -292f, 1125f, -775f)))), true), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(sign(130f)), 876f))), _wgslsmith_clamp_i32(var_0.x, 1i, _wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(u_input.c, -44786i)))), vec3<bool>(!((var_0.x >> (u_input.d.x % 32u)) != -6147i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-142f - -1000f)) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(562f - -577f))), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(-_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(global0.x, u_input.c, global0.x, -2147483647i)), ~vec4<i32>(1i, 7683i, 30846i, var_1.a.c), vec4<i32>(var_0.x, 0i, 2147483647i, 1i)), select(vec4<i32>(global0.x | u_input.c, u_input.a.x, 30010i, _wgslsmith_mult_i32(-14291i, var_0.x)), select(firstTrailingBit(vec4<i32>(56620i, global0.x, 0i, var_1.a.c)), -vec4<i32>(1i, -1i, 8318i, 49171i), true), !vec4<bool>(var_1.a.a.c.x, false, false, var_1.a.a.b)), vec4<i32>(_wgslsmith_add_i32(global0.x, var_0.x), 2147483647i, u_input.c, -11041i) & -(~vec4<i32>(var_1.a.c, 2147483647i, 27338i, u_input.a.x))), var_1.a.a.a);
}

