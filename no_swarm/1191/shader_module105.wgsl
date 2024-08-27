struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = !vec3<bool>(all(vec4<bool>(true, select(false, true, true), true, all(vec3<bool>(false, true, true)))), !(0u < u_input.a), true);
    let var_2 = 1011f;
    let var_3 = -377f;
    var var_4 = var_1.x && all(select(!select(var_1, var_1, var_1.x), select(vec3<bool>(true, var_1.x, false), select(vec3<bool>(false, var_1.x, true), var_1, vec3<bool>(var_1.x, var_1.x, false)), !var_1.x), vec3<bool>(var_1.x, true, var_1.x)));
    return var_0;
}

fn func_3(arg_0: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -468f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2859f * _wgslsmith_f_op_f32(floor(-696f)))))), _wgslsmith_f_op_f32(abs(-514f)), !(1u == (0u | _wgslsmith_mult_u32(26588u, u_input.a)))));
    return arg_0.x;
}

fn func_1() -> vec4<i32> {
    let var_0 = func_2(Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 49670i, u_input.b, 21402i), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), vec4<i32>(52562i, 1i, u_input.b, u_input.b)) | (vec4<i32>(u_input.b, -1i, 34581i, -1i) | vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b)), vec4<i32>(u_input.b | 4536i, min(u_input.b, 1i), -2147483647i, -1i))), 0i & u_input.b, firstTrailingBit(23762u));
    global0 = !any(!vec2<bool>(func_3(vec2<bool>(true, false)), false));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1511f, -2602f, -2107f, -581f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -942f), -510f, -1318f, -170f)))));
    let var_2 = ~reverseBits(firstLeadingBit(var_0.a.x));
    var var_3 = select(vec2<i32>(i32(-1i) * -29222i, var_2), max(~min(-vec2<i32>(var_2, var_2), _wgslsmith_add_vec2_i32(var_0.a.xw, var_0.a.yx)), vec2<i32>(var_0.a.x, 0i) & vec2<i32>(_wgslsmith_clamp_i32(0i, var_2, 0i), 1i)), vec2<bool>(true, true));
    return vec4<i32>(_wgslsmith_clamp_i32(var_2, _wgslsmith_sub_i32(~2147483647i, abs(firstLeadingBit(var_3.x))), -_wgslsmith_clamp_i32(~40043i, var_0.a.x, -u_input.b)), var_3.x, _wgslsmith_mult_i32(-(~func_2(Struct_1(vec4<i32>(var_0.a.x, -1i, var_0.a.x, var_0.a.x)), 14839i, 4294967295u).a.x), 1i), abs(-38205i | -u_input.b) << (_wgslsmith_mod_u32(u_input.a, countOneBits(_wgslsmith_add_u32(u_input.a, u_input.a))) % 32u));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(23944i, ~select(~u_input.b, u_input.b, all(vec4<bool>(true, true, true, true)))), 2147483647i | ~min(u_input.b, u_input.b));
    let var_1 = func_4(firstTrailingBit(abs(~(u_input.a >> (u_input.a % 32u)))), Struct_1(max(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, u_input.b, 0i, var_0.x), func_1()), vec4<i32>(u_input.b, var_0.x, abs(-41686i), _wgslsmith_mod_i32(16067i, u_input.b)))));
    var var_2 = Struct_1(~var_1.a >> (_wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 36745u, 10062u, u_input.a), vec4<u32>(u_input.a, 1u, 33593u, u_input.a)), vec4<u32>(firstLeadingBit(u_input.a), 4294967295u, u_input.a, 33819u)) % vec4<u32>(32u)));
    let var_3 = vec3<bool>(func_3(vec2<bool>(true, true)), !(2147483647i == var_0.x), true);
    var_2 = var_1;
    var_2 = Struct_1(vec4<i32>(u_input.b ^ ~var_1.a.x, abs(-var_0.x), var_2.a.x, 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits((vec3<u32>(u_input.a, 1u, 1u) | vec3<u32>(4294967295u, 18864u, 26038u)) >> (~vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1034f * 375f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(918f)) + -1718f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -208f, var_3.x)) * _wgslsmith_div_f32(314f, 114f))))), -1059f, -(~vec2<i32>(_wgslsmith_mod_i32(10554i, -29159i), 1i)), u_input.a);
}

