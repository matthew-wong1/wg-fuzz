struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 38660i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    let var_0 = any(select(vec3<bool>(any(vec3<bool>(true, false, false)), false, select(false, true, true) || false), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec4<bool>(false, false, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(608f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-683f, 318f, false)))))));
    var var_2 = Struct_1(var_1.x, ~select(vec3<u32>(21351u, _wgslsmith_clamp_u32(0u, 3824u, 28202u), ~30524u), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 0u, 294u), vec3<u32>(0u, 4294967295u, 24493u)), true), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) + vec4<f32>(var_1.x, var_1.x, -1000f, -1334f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, 1766f) + vec4<f32>(-751f, var_1.x, 793f, var_1.x))))) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(612f - 1865f)), _wgslsmith_f_op_f32(381f * _wgslsmith_f_op_f32(select(-209f, -906f, var_0))), _wgslsmith_f_op_f32(-var_1.x))), 4294967295u);
    var var_3 = var_2.b.xy;
    var_3 = firstLeadingBit(var_2.b.xx) | _wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(var_2.b.yx, var_2.b.yz), vec2<u32>(var_2.e, ~45438u));
    return ~_wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 22690i, -1i, u_input.a.x), vec4<i32>(-33400i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(28661i, 57219i, u_input.a.x, 19288i)), ~(-vec4<i32>(26559i, 1i, 2147483647i, u_input.b) ^ (vec4<i32>(u_input.a.x, u_input.a.x, 55248i, 0i) << (vec4<u32>(var_2.b.x, 4294967295u, 4294967295u, 15869u) % vec4<u32>(32u)))));
}

fn func_4(arg_0: vec4<i32>) -> f32 {
    global0 = arg_0.x;
    global0 = -3858i;
    global0 = arg_0.x;
    let var_0 = true;
    let var_1 = min(~(~1u), 1u);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-768f)))), _wgslsmith_f_op_f32(-771f - -1974f)) + -195f);
}

fn func_2() -> Struct_1 {
    let var_0 = 17560u;
    global0 = -u_input.a.x;
    global0 = -_wgslsmith_add_i32(u_input.a.x, ~_wgslsmith_div_i32(u_input.b, -17854i));
    global0 = u_input.b;
    var var_1 = u_input.b;
    return Struct_1(-298f, vec3<u32>(~var_0, 67251u, 0u), _wgslsmith_f_op_f32(func_4(func_3())), vec4<f32>(-1576f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2044f * _wgslsmith_f_op_f32(trunc(461f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-342f)) + _wgslsmith_f_op_f32(f32(-1f) * -888f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1356f * -216f) - _wgslsmith_f_op_f32(f32(-1f) * -755f)) + _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -578f))))), ~(~var_0));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    global0 = u_input.b;
    let var_0 = func_2();
    let var_1 = select(!all(vec2<bool>(true, true)), any(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), true, all(vec3<bool>(true, false, true)))), any(vec3<bool>(true, true, true)));
    global0 = firstLeadingBit(reverseBits(select(-37944i, _wgslsmith_sub_i32(u_input.b, -25386i), !(!var_1))));
    global0 = -9297i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x - arg_1.a), 1451f)) - -1761f)) + _wgslsmith_f_op_f32(arg_1.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.d.x)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c, arg_1.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x - _wgslsmith_f_op_f32(-arg_0.x))));
    global0 = 2147483647i;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1279f)) + -1059f);
    var_1 = arg_0.x;
    return u_input.b > -(~_wgslsmith_div_i32(u_input.b & -3023i, select(u_input.a.x, 9842i, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-345f, 419f, 500f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(197f, 1136f, -1240f) - vec3<f32>(543f, 1173f, -1083f)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -897f), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(50920u, 0u, 20726u)), vec3<u32>(4294967295u, 16808u, 7467u), vec3<u32>(1u, 29214u, 16447u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-349f + -676f) * -2070f), vec4<f32>(-1786f, _wgslsmith_f_op_f32(func_1(vec2<f32>(570f, 1069f), Struct_1(-1196f, vec3<u32>(1u, 0u, 0u), 959f, vec4<f32>(-161f, 731f, 1125f, 725f), 44738u))), -1462f, -851f), ~(~1u)), 33092u), !(true | any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true))), all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, true, true, any(vec3<bool>(true, true, true))), vec4<bool>(true, any(vec2<bool>(true, false)), false, true))));
    global0 = ~(-2147483647i);
    global0 = ~u_input.a.x;
    global0 = u_input.b;
    let var_1 = vec4<u32>(reverseBits(1u), 1u, ~(~firstTrailingBit(_wgslsmith_div_u32(39205u, 1u))), _wgslsmith_add_u32(_wgslsmith_div_u32(~4294967295u, ~max(0u, 11769u)), reverseBits(countOneBits(~4294967295u))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(-2155f, -1000f), Struct_1(2129f, vec3<u32>(var_1.x, 44415u, 0u), 614f, vec4<f32>(-2810f, -145f, -920f, 1551f), var_1.x)))))), ~_wgslsmith_mult_vec3_u32(~var_1.xyw, abs(var_1.yyy)), -408f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-243f * 1546f))), -1165f, _wgslsmith_f_op_f32(-684f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-860f, -531f)))), -285f), ~17598u);
    var var_3 = _wgslsmith_mult_vec3_u32(func_2().b, vec3<u32>(select(var_2.e, 11003u, (-13278i & u_input.b) > _wgslsmith_add_i32(u_input.a.x, -1i)), ~290u, ~reverseBits(_wgslsmith_dot_vec3_u32(var_2.b, vec3<u32>(4294967295u, 106396u, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_u32(~vec2<u32>(61466u, 4294967295u), ~(~var_1.zx)));
}

