struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: i32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<i32>;

var<private> global2: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false));

var<private> global3: array<vec2<bool>, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool, arg_1: f32) -> i32 {
    let var_0 = true;
    global3 = array<vec2<bool>, 18>();
    let var_1 = arg_0;
    global2 = array<vec3<bool>, 4>();
    var var_2 = Struct_3(2147483647i);
    return -max(-12578i, -_wgslsmith_add_i32(u_input.a.x, _wgslsmith_mod_i32(25703i, global1.x)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(arg_2.b.x + arg_2.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1493f, _wgslsmith_f_op_f32(f32(-1f) * -218f))))), -2676f);
    global3 = array<vec2<bool>, 18>();
    global0 = min(~global1.x, ~_wgslsmith_mod_i32(i32(-1i) * -arg_1.a, min(firstLeadingBit(0i), 1i)));
    global1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(i32(-1i) * -2147483647i), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-34815i, arg_0.a, arg_1.a, arg_1.a), -vec4<i32>(1i, 1i, -2147483647i, arg_1.a))), global1.x, -2147483647i), vec4<i32>(arg_0.a, -24754i, -1i, arg_1.a), ~max(firstTrailingBit(vec4<i32>(global1.x, -1i, -37588i, -7501i)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(arg_0.a, arg_1.a, 0i, global1.x), vec4<i32>(arg_1.a, 1i, -30353i, arg_1.a), vec4<bool>(false, true, false, arg_2.a.d)), ~vec4<i32>(-1i, arg_2.c, -2147483647i, arg_0.a))));
    global2 = array<vec3<bool>, 4>();
    return !(!select(vec4<bool>(arg_2.a.d, true, arg_2.a.d, true), select(!vec4<bool>(arg_2.a.d, false, arg_2.a.d, arg_2.a.d), select(vec4<bool>(false, true, false, true), vec4<bool>(arg_2.a.d, arg_2.a.d, false, false), vec4<bool>(true, arg_2.a.d, false, false)), select(arg_2.a.d, false, true)), true));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<bool>) -> u32 {
    var var_0 = -vec4<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-57313i, 65938i, 47865i)), _wgslsmith_add_vec3_i32(vec3<i32>(69549i, arg_2.a, arg_1.c), global1.wzy)), arg_2.a, -1227i, firstLeadingBit(-40348i));
    return arg_0.a.b.x;
}

fn func_1() -> vec4<u32> {
    var var_0 = ~vec2<u32>(4294967295u, firstTrailingBit(select(_wgslsmith_mod_u32(0u, 102670u), min(u_input.b, u_input.b), false)));
    let var_1 = vec3<i32>(-1i) * -reverseBits(_wgslsmith_mod_vec3_i32(global1.zyy, vec3<i32>(u_input.a.x, u_input.a.x, 0i)) << (firstLeadingBit(vec3<u32>(4294967295u, u_input.b, var_0.x)) % vec3<u32>(32u)));
    global2 = array<vec3<bool>, 4>();
    global1 = vec4<i32>(_wgslsmith_div_i32(0i, func_2(any(global3[_wgslsmith_index_u32(10502u, 18u)]), _wgslsmith_f_op_f32(ceil(-492f))) << (4294967295u % 32u)), ~u_input.a.x, 2147483647i, func_2(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1152f + _wgslsmith_f_op_f32(f32(-1f) * -695f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1993f * -269f))))));
    let var_2 = vec4<bool>(func_4(Struct_2(Struct_1(vec3<u32>(50287u, 131147u, var_0.x), vec2<u32>(var_0.x, u_input.b), vec3<i32>(var_1.x, 33348i, u_input.a.x), false, vec2<u32>(u_input.b, 4294967295u)), vec4<f32>(247f, 262f, -490f, 223f), abs(global1.x)), Struct_2(Struct_1(vec3<u32>(0u, var_0.x, u_input.b), vec2<u32>(u_input.b, 7438u), vec3<i32>(var_1.x, -2147483647i, var_1.x), true, vec2<u32>(9061u, u_input.b)), vec4<f32>(126f, -162f, 1196f, -2011f), var_1.x), Struct_3(firstLeadingBit(u_input.a.x)), func_3(Struct_3(0i), Struct_3(-2147483647i), Struct_2(Struct_1(vec3<u32>(var_0.x, var_0.x, var_0.x), vec2<u32>(4294967295u, 1u), vec3<i32>(-30480i, global1.x, 11805i), false, vec2<u32>(10721u, 26286u)), vec4<f32>(106f, -318f, -792f, -145f), var_1.x))) == select(1u, var_0.x, select(all(vec4<bool>(true, true, false, false)), true, true)), (_wgslsmith_f_op_f32(1367f * -112f) == _wgslsmith_f_op_f32(round(-2340f))) & false, any(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(select(min(1u, var_0.x), firstLeadingBit(51595u), true), min(~u_input.b, firstTrailingBit(var_0.x))), 18u)]), true);
    return reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(~1u, _wgslsmith_clamp_u32(491u, max(19690u, u_input.b), _wgslsmith_add_u32(4294967295u, u_input.b)), countOneBits(1u) >> (var_0.x % 32u), _wgslsmith_sub_u32(firstLeadingBit(1u), 1u)), vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 58509u, 4294967295u)), ~vec3<u32>(4294967295u, 33643u, u_input.b)), _wgslsmith_div_u32(u_input.b, 1u) >> (_wgslsmith_sub_u32(23933u, var_0.x) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, 4294967295u, var_0.x), ~vec4<u32>(1u, u_input.b, var_0.x, 55578u)), _wgslsmith_div_u32(firstLeadingBit(u_input.b), max(75926u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1190f) - -666f)) - 175f);
    let var_1 = -(i32(-1i) * -2147483647i);
    var var_2 = 4771u;
    global3 = array<vec2<bool>, 18>();
    let var_3 = func_1();
    let var_4 = !select(all(vec4<bool>(true, any(vec3<bool>(false, false, true)), true, var_0 == var_0)), true, any(func_3(Struct_3(u_input.a.x), Struct_3(var_1), Struct_2(Struct_1(var_3.yyy, vec2<u32>(44217u, var_3.x), vec3<i32>(-60576i, global1.x, -4153i), false, var_3.xz), vec4<f32>(281f, 1000f, var_0, var_0), global1.x)).xww));
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

