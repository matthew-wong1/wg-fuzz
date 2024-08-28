struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<i32>,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = Struct_4(arg_0.c.b.x, !arg_0.b, Struct_2(_wgslsmith_sub_i32(u_input.e, _wgslsmith_add_i32(_wgslsmith_div_i32(0i, u_input.a.x), max(arg_0.c.a, 15296i))), vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1048f, -124f, arg_0.b))), arg_0.c.b.x, -2258f)));
    global0 = array<vec4<bool>, 25>();
    global0 = array<vec4<bool>, 25>();
    var var_1 = vec2<u32>(select(42212u, u_input.c, !arg_0.b), 1u);
    let var_2 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(~(~(-2147483647i)), 79732i, -firstLeadingBit(-12109i)), _wgslsmith_add_vec3_i32(~(-vec3<i32>(var_0.c.a, var_0.c.a, 1852i)), -(~vec3<i32>(arg_0.c.a, u_input.b, -32748i))), ~select(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.c.a, u_input.b, 75479i), vec3<i32>(u_input.e, 2147483647i, var_0.c.a)), reverseBits(vec3<i32>(-39605i, -1i, arg_0.c.a)), arg_0.b)));
    return -158f;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 1488f)) - -570f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(398f + -270f), any(vec4<bool>(false, true, true, false))))), true, Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, u_input.e), vec3<i32>(-1i, 1i, 0i)), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -17298i, 26947i), vec3<i32>(0i, u_input.b, u_input.b))), vec4<f32>(_wgslsmith_f_op_f32(395f * 174f), -252f, _wgslsmith_f_op_f32(160f - -636f), 225f)))));
    var var_1 = !any(select(vec4<bool>(true, select(false, true, false), true, false), select(vec4<bool>(true, false, false, true), global0[_wgslsmith_index_u32(arg_0, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]), select(vec4<bool>(true, true, true, false), global0[_wgslsmith_index_u32(abs(0u), 25u)], vec4<bool>(true, true, true, true))));
    let var_2 = vec3<i32>(max(_wgslsmith_div_i32(~(-22491i >> (arg_0 % 32u)), _wgslsmith_sub_i32(u_input.b >> (u_input.c % 32u), u_input.b)), u_input.e), -_wgslsmith_clamp_i32(4760i, -(-2147483647i ^ u_input.e), _wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, 67127i), min(-1i, u_input.e))), u_input.e);
    var_0 = _wgslsmith_f_op_f32(952f - 1071f);
    var_0 = _wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_f_op_f32(-563f - 575f), true, Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_2, vec3<i32>(9499i, u_input.b, -21497i)), var_2 >> (vec3<u32>(0u, 70133u, arg_0) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-632f, 1276f, -1294f, -596f) + vec4<f32>(-1058f, 278f, 1159f, -397f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-202f, -1547f, 1991f, -1241f)))))))));
    return _wgslsmith_div_u32(max(firstLeadingBit(~arg_0) >> (0u % 32u), _wgslsmith_sub_u32(countOneBits(arg_0), _wgslsmith_mod_u32(~0u, arg_0))), arg_0);
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> vec3<i32> {
    global0 = array<vec4<bool>, 25>();
    global0 = array<vec4<bool>, 25>();
    var var_0 = func_2(~4294967295u);
    global0 = array<vec4<bool>, 25>();
    var var_1 = 1131f;
    return _wgslsmith_add_vec3_i32(min(vec3<i32>(-_wgslsmith_div_i32(u_input.e, u_input.e), u_input.e, -60677i), ~min(_wgslsmith_clamp_vec3_i32(vec3<i32>(9895i, 20822i, 1i), vec3<i32>(-1i, u_input.b, -16364i), vec3<i32>(17360i, u_input.a.x, u_input.a.x)), select(vec3<i32>(u_input.e, -2147483647i, 11218i), vec3<i32>(0i, 1i, u_input.e), arg_0))), vec3<i32>(min(-_wgslsmith_add_i32(u_input.a.x, u_input.b), u_input.b), -max(abs(u_input.b), -u_input.b), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 25>();
    let var_0 = vec3<bool>(false && all(vec3<bool>(false, any(global0[_wgslsmith_index_u32(u_input.d.x, 25u)]), select(true, true, false))), true, true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2087f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(824f + -2005f))))));
    global0 = array<vec4<bool>, 25>();
    var var_2 = !var_0.x;
    let var_3 = Struct_3(Struct_1(_wgslsmith_add_vec3_i32(func_1(vec3<bool>(false, var_0.x, var_0.x), true), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(-2147483647i, u_input.a.x, 0i), var_0.x), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), -vec3<i32>(u_input.a.x, u_input.e, 36366i)))), u_input.b, Struct_1(vec3<i32>(~2147483647i | _wgslsmith_sub_i32(u_input.e, u_input.a.x), u_input.a.x ^ 2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.b, 2147483647i), vec3<i32>(0i, u_input.e, 1i)), ~vec3<i32>(u_input.b, -46489i, 1i)))), vec4<i32>(min(i32(-1i) * -16249i, -77495i), u_input.b << (~func_2(u_input.d.x) % 32u), abs(1i), ~(-(u_input.e >> (u_input.c % 32u)))), true);
    global0 = array<vec4<bool>, 25>();
    var var_4 = Struct_2(u_input.e, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(367f + -279f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(908f * 1000f) + -1000f), _wgslsmith_div_f32(-847f, _wgslsmith_f_op_f32(f32(-1f) * -1106f)), _wgslsmith_f_op_f32(trunc(177f))) + _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(ceil(361f)), _wgslsmith_f_op_f32(step(-354f, -402f)), _wgslsmith_f_op_f32(ceil(1502f)), _wgslsmith_f_op_f32(step(-525f, 1014f))))));
    var_4 = Struct_2(countOneBits(2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(var_4.b.x, true, Struct_2(0i, var_4.b)))), var_4.b.x, _wgslsmith_f_op_f32(f32(-1f) * -778f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1575f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(var_3.d.x, -2147483647i), _wgslsmith_f_op_f32(var_4.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(var_4.b.x, false, Struct_2(u_input.e, vec4<f32>(var_4.b.x, var_4.b.x, 828f, var_4.b.x))))))), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(var_3.d.xx, vec2<i32>(~(-1i), var_3.b >> (u_input.d.x % 32u))), var_3.c.a.yx));
}

