struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(68093u, vec4<bool>(true, false, true, false), false, 48175i), Struct_1(4294967295u, vec4<bool>(true, false, false, false), true, 7050i), Struct_1(49844u, vec4<bool>(true, false, false, true), false, -1i), Struct_1(9189u, vec4<bool>(true, false, false, true), true, 0i), Struct_1(52923u, vec4<bool>(false, false, true, true), true, i32(-2147483648)), Struct_1(25170u, vec4<bool>(false, false, false, false), false, 0i), Struct_1(1u, vec4<bool>(false, true, false, true), false, 18627i), Struct_1(66643u, vec4<bool>(false, true, true, false), false, i32(-2147483648)), Struct_1(34275u, vec4<bool>(false, true, false, true), false, 2147483647i), Struct_1(34736u, vec4<bool>(true, true, true, true), false, -17391i), Struct_1(4294967295u, vec4<bool>(false, true, false, true), false, 15738i), Struct_1(1u, vec4<bool>(true, false, true, false), true, 7064i), Struct_1(27216u, vec4<bool>(false, true, false, false), true, 1i), Struct_1(12844u, vec4<bool>(false, false, true, false), false, 0i), Struct_1(53119u, vec4<bool>(true, false, true, true), false, -46185i), Struct_1(4294967295u, vec4<bool>(false, true, true, false), false, 2147483647i), Struct_1(7139u, vec4<bool>(false, false, false, true), false, -1i), Struct_1(0u, vec4<bool>(false, true, false, true), true, 2147483647i), Struct_1(36796u, vec4<bool>(true, true, false, false), true, 0i), Struct_1(0u, vec4<bool>(false, false, false, true), true, 1i), Struct_1(4294967295u, vec4<bool>(false, false, false, false), false, -1i), Struct_1(1u, vec4<bool>(false, true, false, false), false, 18948i), Struct_1(4294967295u, vec4<bool>(false, true, true, false), true, 41563i), Struct_1(0u, vec4<bool>(true, false, false, true), false, 2147483647i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> vec2<i32> {
    let var_0 = 1i;
    var var_1 = any(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true))));
    let var_2 = _wgslsmith_clamp_u32(~16374u, u_input.c.x, ~(~(~u_input.a.x)));
    global0 = array<Struct_1, 24>();
    return vec2<i32>(0i, i32(-1i) * -1i);
}

fn func_3() -> vec4<i32> {
    global0 = array<Struct_1, 24>();
    let var_0 = vec2<i32>(-_wgslsmith_add_i32(~_wgslsmith_mod_i32(1i, 2147483647i), firstTrailingBit(_wgslsmith_div_i32(0i, 73564i))), ~31599i);
    global0 = array<Struct_1, 24>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1030f)) * _wgslsmith_f_op_f32(ceil(-1927f))));
    var var_2 = Struct_1(~4294967295u, !vec4<bool>(true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), true, all(vec2<bool>(true, false))), _wgslsmith_add_i32(-_wgslsmith_add_i32(51858i, -4437i), -var_0.x) > var_0.x, _wgslsmith_div_i32(-44460i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, -33439i, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, 0i, 0i), true), reverseBits(vec4<i32>(2147483647i, 0i, -16502i, 0i)))) << (8241u % 32u));
    return ~(vec4<i32>(reverseBits(0i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(-6213i, 10930i, var_2.d, var_0.x)), -2147483647i), var_0.x, var_0.x) << (u_input.c % vec4<u32>(32u)));
}

fn func_2(arg_0: vec2<f32>) -> vec2<i32> {
    global0 = array<Struct_1, 24>();
    var var_0 = (_wgslsmith_div_vec4_i32(~func_3(), select(vec4<i32>(1i, -12662i, 0i, -14616i), ~vec4<i32>(-1i, 0i, 2147483647i, 1i), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), false))) ^ vec4<i32>(1i, 1i, 1i, 1i)) & -abs(vec4<i32>(1i, 1i, 1i, 1i));
    var var_1 = 1000f;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-623f)) * 1071f)));
    var var_3 = -var_0.x;
    return var_0.zw;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: i32, arg_3: bool) -> StorageBuffer {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(904f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) * -1093f))));
    global0 = array<Struct_1, 24>();
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_0.x))));
    global0 = array<Struct_1, 24>();
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-281f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-209f)))), -1060f), _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(select(-598f, arg_0.x, arg_3)), true)) * _wgslsmith_f_op_f32(-160f - _wgslsmith_f_op_f32(-412f - arg_0.x))))), true));
    return StorageBuffer(_wgslsmith_f_op_f32(-414f + _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x * var_0.a), 1f)))), 291f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = Struct_2(-146f);
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    let var_2 = Struct_2(-1744f);
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a))), var_2.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a)))) * vec3<f32>(var_1.a, _wgslsmith_div_f32(-1297f, var_1.a), var_2.a)), _wgslsmith_mult_vec2_i32(func_1(), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_1.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_1.a))))), max(min(func_2(vec2<f32>(-184f, var_2.a)).x, 1i), firstLeadingBit(max(-2147483647i, 0i))) & _wgslsmith_sub_i32(~(~8887i), (0i >> (u_input.c.x % 32u)) & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 15830i, -13508i, -19168i), vec4<i32>(-34893i, 0i, -2147483647i, -2147483647i))), var_0.x);
}

