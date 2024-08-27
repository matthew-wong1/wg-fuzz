struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = -40570i;

var<private> global2: u32;

var<private> global3: array<vec4<bool>, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>) -> vec4<f32> {
    global2 = 3139u;
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1474f, arg_2.x))));
    let var_1 = 4294967295u;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(-2515f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-452f - _wgslsmith_f_op_f32(-arg_0.a.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x))))), _wgslsmith_f_op_f32(-arg_0.a.x)) + _wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b) + _wgslsmith_f_op_vec4_f32(min(arg_2, vec4<f32>(1193f, arg_2.x, var_0, -541f)))))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = arg_1 | countOneBits(arg_2.b.c.x << (u_input.c % 32u));
    global0 = _wgslsmith_mult_u32(~firstLeadingBit(firstTrailingBit(arg_1)), u_input.d);
    var var_1 = _wgslsmith_sub_i32(~43048i, _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(firstLeadingBit(u_input.b.x), -1i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c, arg_0.c), vec2<i32>(u_input.b.x, arg_0.c)), u_input.b.x)), 10119i));
    var var_2 = vec4<u32>(1u, ~(~1u), ~((arg_1 ^ arg_2.a) >> (min(~arg_2.a, ~arg_2.b.c.x) % 32u)), _wgslsmith_mod_u32(countOneBits(arg_1), 22716u));
    let var_3 = arg_3.a;
    return vec3<bool>(arg_3.d.x, arg_0.d, true);
}

fn func_4(arg_0: bool, arg_1: vec4<f32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.yyx - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(980f, arg_1.x, -182f)))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), 1727f, _wgslsmith_f_op_f32(sign(arg_1.x))), _wgslsmith_f_op_vec3_f32(abs(arg_1.yzz))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-614f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) + _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - -813f), _wgslsmith_f_op_f32(arg_1.x - arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x * arg_1.x))) - arg_1), _wgslsmith_sub_i32(abs(~(-1i)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(firstTrailingBit(u_input.e), _wgslsmith_add_i32(u_input.e, 1i)), countOneBits(-955i))), !arg_0);
    let var_1 = Struct_1(var_0.b.wxy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 * arg_1)), -u_input.a | -var_0.c, true);
    let var_2 = _wgslsmith_f_op_f32(min(1414f, -1150f));
    global1 = abs(u_input.a);
    global3 = array<vec4<bool>, 21>();
    return u_input.c >> (_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 4294967295u, u_input.c), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 1u, 4294967295u), vec3<u32>(1u, u_input.c, u_input.c)))), _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(u_input.c, 12026u, u_input.c)), vec3<u32>(0u, 26364u, u_input.d)) | abs(max(vec3<u32>(22810u, u_input.d, u_input.d), vec3<u32>(12014u, u_input.c, 0u)))) % 32u);
}

fn func_1(arg_0: i32) -> vec2<u32> {
    let var_0 = Struct_1(vec3<f32>(-650f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(238f + 1301f), -323f) * 1441f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f - -1000f), -272f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-956f, 1394f, -557f, -1506f), vec4<f32>(246f, -281f, 606f, -269f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec3<f32>(985f, 374f, 204f), vec4<f32>(-1655f, 739f, -1251f, 147f), arg_0, true), 4294967295u, _wgslsmith_f_op_vec4_f32(vec4<f32>(423f, 1057f, -1537f, -335f) * vec4<f32>(1133f, -918f, -101f, -861f)))))), abs(_wgslsmith_mult_i32(u_input.a, _wgslsmith_div_i32(u_input.a, 2147483647i))) ^ -u_input.a, !(!any(vec4<bool>(false, false, true, false))));
    global3 = array<vec4<bool>, 21>();
    let var_1 = u_input.c >> (1u % 32u);
    global0 = abs(func_4(any(select(!vec3<bool>(var_0.d, true, true), func_3(Struct_1(var_0.b.yxw, var_0.b, 0i, true), 1u, Struct_3(u_input.c, Struct_2(Struct_1(var_0.a, var_0.b, arg_0, var_0.d), var_0, vec4<u32>(var_1, u_input.c, var_1, 1u), vec3<bool>(true, false, true), Struct_1(var_0.b.yyx, vec4<f32>(1060f, var_0.a.x, 544f, var_0.b.x), u_input.b.x, var_0.d)), var_0.a), Struct_2(Struct_1(vec3<f32>(var_0.a.x, -570f, var_0.a.x), vec4<f32>(-762f, -614f, var_0.a.x, var_0.b.x), 0i, true), Struct_1(var_0.a, var_0.b, -17260i, false), vec4<u32>(37156u, var_1, 3904u, 55645u), vec3<bool>(false, var_0.d, var_0.d), var_0)), func_3(var_0, 16294u, Struct_3(17321u, Struct_2(Struct_1(vec3<f32>(var_0.b.x, var_0.a.x, var_0.a.x), var_0.b, 30587i, true), var_0, vec4<u32>(var_1, var_1, u_input.c, 1u), vec3<bool>(false, true, var_0.d), var_0), vec3<f32>(var_0.b.x, var_0.a.x, -692f)), Struct_2(var_0, var_0, vec4<u32>(u_input.c, 4294967295u, var_1, var_1), vec3<bool>(var_0.d, var_0.d, true), Struct_1(vec3<f32>(-845f, 702f, -736f), var_0.b, 1i, var_0.d))))), var_0.b));
    global2 = var_1;
    return ~min(max(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, u_input.c), ~vec2<u32>(5880u, u_input.d)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_1), vec2<u32>(0u, var_1))), vec2<u32>(u_input.c, 44961u & ~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 54875u;
    global2 = abs(select(1u, 0u, all(vec2<bool>(true, any(vec3<bool>(false, true, true))))));
    let var_1 = _wgslsmith_div_vec2_u32(reverseBits(firstTrailingBit(vec2<u32>(~69778u, _wgslsmith_clamp_u32(u_input.c, 34201u, 4294967295u)))), ~(~func_1(-1i)));
    global1 = reverseBits(_wgslsmith_mod_i32(~u_input.b.x, -_wgslsmith_dot_vec2_i32(u_input.b, -u_input.b)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(863f, 504f, 1244f) - vec3<f32>(-284f, -135f, -135f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-144f, 406f, -312f, 1000f)) - vec4<f32>(-671f, -850f, -1442f, 268f))), u_input.e, true), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-904f, -1000f, 1902f) - vec3<f32>(1000f, 2074f, -290f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(145f, 1276f, 3099f))))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 127f, -1000f, _wgslsmith_f_op_f32(-203f * 1054f)), vec4<f32>(-1530f, -1413f, _wgslsmith_f_op_f32(ceil(425f)), _wgslsmith_f_op_f32(abs(-431f))))), -16784i, all(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))), select(vec4<u32>(var_1.x, _wgslsmith_mod_u32(~u_input.c, 9498u), u_input.d, 1u), firstTrailingBit(abs(~vec4<u32>(u_input.d, u_input.d, var_1.x, 70445u))), var_1.x >= max(var_1.x, u_input.c)), !select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), Struct_1(vec3<f32>(142f, -1365f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1000f, 323f, false))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + 338f))), 561f, _wgslsmith_f_op_f32(f32(-1f) * -2008f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-345f, -1103f, false)) + _wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec3<f32>(1956f, -216f, -508f), vec4<f32>(492f, 1055f, 330f, -975f), -2147483647i, true), u_input.d, vec4<f32>(-653f, -1486f, -591f, -548f))).x)), -2147483647i, select(select(true, any(vec3<bool>(true, true, false)), true), all(vec2<bool>(false, true)), all(vec4<bool>(true, true, false, false)) | true)));
    global2 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(-var_2.a.c, 0i, 1i));
}

