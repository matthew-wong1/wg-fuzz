struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = false;
    var var_1 = arg_1;
    global0 = false;
    global0 = true || var_0;
    let var_2 = -1000f;
    return ~var_1.c.x << (arg_1.c.x % 32u);
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-212f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-392f - arg_2.e.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2889f) + arg_1)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.d), _wgslsmith_f_op_f32(floor(-936f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x + arg_2.d) - _wgslsmith_f_op_f32(var_0.e.x + arg_1))), _wgslsmith_f_op_vec3_f32(sign(arg_2.e.wzx))), !(!(!select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, false))))));
    global0 = ~(~(~(arg_2.c.x | 1u))) != ~(~(~(~var_0.c.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.a))), ~vec2<u32>(var_0.c.x, var_0.c.x), var_0.d, _wgslsmith_f_op_vec4_f32(-arg_2.e));
    var_2 = Struct_1(vec3<f32>(arg_2.d, _wgslsmith_f_op_f32(abs(var_2.e.x)), arg_2.b.x), vec3<f32>(arg_1, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(-508f))), vec2<u32>(_wgslsmith_mult_u32(var_0.c.x, max(var_0.c.x, _wgslsmith_add_u32(u_input.b.x, var_0.c.x))), ~(~(var_2.c.x & arg_2.c.x))), var_2.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(261f, _wgslsmith_f_op_f32(-var_1.x), -257f, _wgslsmith_f_op_f32(step(-351f, var_1.x))) * vec4<f32>(-821f, var_0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1532f), arg_1))));
    return any(arg_0);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<i32>) -> u32 {
    global0 = true | (arg_0.x < 110139u);
    var var_0 = !select(vec2<bool>(false, func_3(vec2<bool>(false, true), _wgslsmith_div_f32(-563f, -888f), Struct_1(vec3<f32>(2353f, 149f, 1000f), vec3<f32>(339f, 586f, 1055f), u_input.b, 1000f, vec4<f32>(501f, 124f, 702f, 1000f)), -42833i)), vec2<bool>(all(vec4<bool>(false, true, false, true)), select(true, true, true)), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(select(false, false, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false))));
    let var_1 = vec4<bool>(true, var_0.x, countOneBits(u_input.b.x) < 5458u, any(vec4<bool>(var_0.x, select(any(vec2<bool>(var_0.x, var_0.x)), true, var_0.x | var_0.x), any(vec2<bool>(var_0.x, var_0.x)), var_0.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1223f, 580f, -1115f), vec3<f32>(233f, -1923f, -1390f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-913f, -613f, -1913f), vec3<f32>(1124f, 797f, 348f))) + vec3<f32>(-816f, -1395f, 303f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(434f, 534f, _wgslsmith_f_op_f32(f32(-1f) * -1073f)))), arg_0 << (vec2<u32>(u_input.b.x, 4294967295u | ~u_input.b.x) % vec2<u32>(32u)), 866f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-727f, 714f, -1000f, -1152f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(134f, -1360f, 178f, -1695f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-866f, -394f, 359f, -2028f) - vec4<f32>(260f, -1015f, -562f, -521f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(195f, -949f, 803f, 452f))))));
    let var_3 = var_2;
    return 56671u | arg_1;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_mult_i32(u_input.a.x, arg_1.x) >> (~1u % 32u);
    let var_1 = arg_0;
    global0 = !(_wgslsmith_mod_i32(-1i, -5475i) <= arg_1.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(365f, -197f, -1635f) * vec3<f32>(-959f, 954f, -915f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1758f, -395f) * vec3<f32>(360f, 1000f, 815f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1797f, 367f, 755f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1422f, -1844f, -246f)))), arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(824f, 319f, 2105f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1886f, 112f) - vec3<f32>(1258f, 824f, -146f)), any(vec2<bool>(true, var_1)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -2919f, -1290f)))) + vec3<f32>(1839f, 799f, -354f)), reverseBits(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(4294967295u, 46294u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -159f))), -1369f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1345f, -666f, -731f, 845f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-449f, 664f, -485f, 1131f) * vec4<f32>(484f, 151f, 1536f, 652f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -833f), _wgslsmith_f_op_f32(round(-1091f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1001f, 1153f, true))), -858f))));
    var var_3 = false;
    return ~max(select(_wgslsmith_sub_u32(var_2.c.x, ~1u), func_1(_wgslsmith_f_op_f32(-var_2.b.x), Struct_1(vec3<f32>(var_2.e.x, 114f, var_2.e.x), vec3<f32>(var_2.a.x, var_2.a.x, var_2.b.x), vec2<u32>(var_2.c.x, var_2.c.x), 1195f, var_2.e)), any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(var_1, false), vec2<bool>(arg_0, false)))), 1682u);
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1166f))), _wgslsmith_f_op_f32(sign(-167f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-310f, -1435f, -1000f), vec3<f32>(-220f, 101f, 1000f), vec3<bool>(true, false, true))) - vec3<f32>(-598f, -133f, -512f))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-440f * 1596f), 1249f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1274f - 300f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -278f))))), ~vec2<u32>(arg_2, ~arg_2 >> (arg_2 % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -1665f), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -686f))), 1470f, true)), -368f, _wgslsmith_f_op_f32(f32(-1f) * -222f), -1067f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(i32(-1i) * -(~reverseBits(6742i)), -(reverseBits(~vec3<i32>(1i, -1i, -1i)) & -(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), func_4((u_input.b.x >> ((u_input.b.x << (2867u % 32u)) % 32u)) == func_2(~vec2<u32>(22364u, u_input.b.x), func_1(-1817f, Struct_1(vec3<f32>(511f, -2138f, 598f), vec3<f32>(812f, -947f, -1244f), u_input.b, 985f, vec4<f32>(1120f, -1255f, 996f, 224f))), vec4<i32>(39802i, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 48290i)), u_input.a));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-122f, var_0.e.x));
    global0 = (false | !func_3(vec2<bool>(false, true), var_0.b.x, var_0, -23916i)) & any(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), any(vec4<bool>(false, false, true, true))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e.xwx));
    global0 = !(!all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true), true)));
    var var_3 = vec3<bool>(true, any(vec4<bool>(true, true, true, true || all(vec4<bool>(true, false, true, false)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.x, 18759u, 1u, 0u), vec4<u32>(u_input.b.x, u_input.b.x, var_0.c.x, u_input.b.x)), ~vec4<u32>(u_input.b.x, var_0.c.x, u_input.b.x, 4294967295u)) | 4294967295u), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-countOneBits(u_input.a.x), u_input.a.x, u_input.a.x), u_input.a.x), vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), 0i, 1849i & _wgslsmith_div_i32(u_input.a.x, 0i)), abs(~(abs(var_0.c.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(6835u, 36480u), var_0.c) % 32u))));
}

