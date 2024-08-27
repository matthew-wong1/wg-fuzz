struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 25>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: u32) -> Struct_1 {
    global0 = array<vec2<bool>, 25>();
    global0 = array<vec2<bool>, 25>();
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~(~117646u), min(16229u, _wgslsmith_mult_u32(arg_2, 4294967295u))), _wgslsmith_add_u32(~(u_input.b.x << (61588u % 32u)), reverseBits(0u))), _wgslsmith_sub_u32(16374u, ~countOneBits(firstTrailingBit(arg_1.c.d.b))));
    var var_1 = ~arg_1.c.a.zyy;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -780f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1977f, 553f))))));
    return arg_1.c.b;
}

fn func_3() -> i32 {
    global0 = array<vec2<bool>, 25>();
    let var_0 = vec4<i32>(~_wgslsmith_add_i32(u_input.a.x & -u_input.c.x, u_input.a.x), u_input.e, u_input.d.x, -1i ^ ~_wgslsmith_sub_i32(~u_input.d.x, 1i));
    let var_1 = Struct_4(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 4294967295u) ^ vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(12257u, 28766u, 1u, 70186u), vec4<u32>(19308u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 59331u, u_input.b.x)))), Struct_1(u_input.c.x, (u_input.b.x | 46767u) & max(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 51997u), min(u_input.b.x, u_input.b.x) == u_input.b.x, true), Struct_2(firstLeadingBit(~vec4<i32>(-1i, 0i, 7081i, u_input.a.x)), Struct_1(select(2147483647i, var_0.x << (u_input.b.x % 32u), true), 55027u, !func_1(-829f, Struct_4(vec4<u32>(54719u, 21899u, u_input.b.x, 0u), Struct_1(var_0.x, 1u, true, false), Struct_2(u_input.c, Struct_1(var_0.x, u_input.b.x, true, false), u_input.c.zy, Struct_1(-1i, u_input.b.x, false, false), u_input.b.x)), 81080u).d, false), max(-select(vec2<i32>(u_input.c.x, 21417i), vec2<i32>(var_0.x, var_0.x), false), ~(-vec2<i32>(u_input.a.x, -18670i))), Struct_1(-(~u_input.e), 25768u, true, _wgslsmith_dot_vec2_i32(var_0.yy, u_input.c.wx) < (i32(-1i) * -1i)), abs(~max(u_input.b.x, u_input.b.x))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1246f - 1884f) * 1161f))));
    var_2 = 120f;
    return u_input.c.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec2<bool>, 25>();
    global0 = array<vec2<bool>, 25>();
    var var_0 = Struct_2(vec4<i32>(-4432i, -func_3(), _wgslsmith_div_i32(arg_1.a, 4665i), abs(firstTrailingBit(~(-2147483647i)))), Struct_1(_wgslsmith_sub_i32(-34402i, min(arg_2.a, ~(-45851i))), _wgslsmith_mult_u32(~(~4294967295u), arg_2.b), true == all(!vec4<bool>(true, false, arg_1.d, arg_1.c)), arg_2.b > _wgslsmith_mult_u32(_wgslsmith_mod_u32(30183u, 63787u), arg_2.b)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(arg_1.a, arg_1.a, -13288i, 31730i)), 1i), min(u_input.d, vec2<i32>(-29611i, u_input.e))), arg_2, countOneBits(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, 16959u, arg_1.b) & vec3<u32>(56784u, arg_1.b, 727u)), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, arg_1.b, 57921u), vec3<u32>(33512u, 1u, arg_2.b)), vec3<u32>(arg_2.b, arg_2.b, arg_2.b) << (vec3<u32>(arg_2.b, arg_1.b, arg_2.b) % vec3<u32>(32u))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(2944f, 1000f, 1144f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1904f, 345f, 1401f) * vec3<f32>(584f, 337f, 441f))), vec3<f32>(_wgslsmith_f_op_f32(step(-1909f, 1000f)), _wgslsmith_f_op_f32(abs(872f)), _wgslsmith_div_f32(258f, 955f)))) * vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1739f, -1953f, 1496f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-565f, 230f, 1269f)) + vec3<f32>(1f, 1f, 1f)), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1307f, 187f, 733f) + vec3<f32>(1579f, 1112f, -1686f))))))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-848f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -211f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(exp2(var_1.x)), true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(608f))))))));
    return func_1(_wgslsmith_f_op_f32(abs(-109f)), Struct_4(_wgslsmith_sub_vec4_u32(vec4<u32>(45665u, var_0.d.b, var_0.b.b ^ 86575u, arg_1.b), min(firstLeadingBit(vec4<u32>(132097u, 24957u, arg_1.b, 1u)), vec4<u32>(u_input.b.x, 0u, 6625u, arg_1.b))), func_1(_wgslsmith_f_op_f32(-var_1.x), Struct_4(abs(vec4<u32>(u_input.b.x, var_0.e, 1u, arg_1.b)), func_1(708f, Struct_4(vec4<u32>(arg_1.b, arg_1.b, 12607u, 4294967295u), Struct_1(25808i, arg_1.b, false, true), Struct_2(var_0.a, var_0.d, vec2<i32>(arg_1.a, arg_1.a), var_0.b, 4294967295u)), 1u), Struct_2(vec4<i32>(0i, 2147483647i, -1i, -1i), Struct_1(1i, 4294967295u, false, arg_2.c), var_0.a.wz, Struct_1(var_0.a.x, var_0.e, arg_1.d, false), 6655u)), ~54092u), Struct_2(var_0.a, var_0.b, _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-42851i, arg_2.a), vec2<i32>(arg_1.a, 14728i)), vec2<i32>(arg_2.a, arg_2.a)), arg_1, ~1u)), 1u);
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> vec3<u32> {
    global0 = array<vec2<bool>, 25>();
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) - arg_1);
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(max(~10849u, _wgslsmith_mod_u32(min(4294967295u, 111772u), min(arg_2.b, arg_2.b))), 105u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_2.b, 1u, u_input.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, arg_2.b), vec3<u32>(17330u, u_input.b.x, u_input.b.x)), select(vec3<bool>(arg_2.d, arg_2.c, arg_2.d), vec3<bool>(arg_2.c, arg_2.d, true), arg_2.d)) >> ((vec3<u32>(u_input.b.x, 1u, 1u) ^ vec3<u32>(arg_2.b, arg_2.b, u_input.b.x)) % vec3<u32>(32u)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 42425u, 1u), vec3<u32>(49369u, arg_2.b, arg_2.b)) | ~vec3<u32>(u_input.b.x, 1u, 0u), ~vec3<u32>(0u, arg_2.b, u_input.b.x) << (abs(vec3<u32>(12550u, 31436u, arg_2.b)) % vec3<u32>(32u)), vec3<bool>(false, all(vec4<bool>(true, true, arg_2.c, true)), arg_2.c))));
    var var_3 = arg_2.c;
    return max(~abs(vec3<u32>(u_input.b.x, ~51639u, arg_2.b)), vec3<u32>(arg_2.b, 10516u, ~_wgslsmith_div_u32(u_input.b.x, arg_2.b)) | max(min(vec3<u32>(u_input.b.x, arg_2.b, 21659u), ~vec3<u32>(60334u, 4294967295u, 52998u)), ~(~vec3<u32>(16501u, arg_2.b, arg_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(func_4(~vec4<i32>(u_input.d.x, 26359i, -19727i, u_input.a.x), _wgslsmith_f_op_f32(-584f - 1320f), func_2(u_input.c.yz & u_input.c.wx, Struct_1(-15428i, u_input.b.x, true, true), func_1(472f, Struct_4(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 33994u), Struct_1(u_input.e, 45218u, true, false), Struct_2(vec4<i32>(u_input.e, 0i, 0i, 63392i), Struct_1(0i, u_input.b.x, false, true), u_input.d, Struct_1(13995i, u_input.b.x, true, true), 0u)), u_input.b.x)), u_input.a.x)));
}

