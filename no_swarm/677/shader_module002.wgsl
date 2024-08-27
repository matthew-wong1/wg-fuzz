struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct Struct_5 {
    a: f32,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: bool = true;

var<private> global2: array<Struct_2, 10>;

var<private> global3: array<Struct_5, 6>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(vec3<u32>(0u, ~_wgslsmith_clamp_u32(4294967295u, 8252u, 2323u), ~6448u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), select(select(vec4<bool>(false, false, global0.x >= u_input.a, true), vec4<bool>(true, u_input.a == -61262i, true, true), firstTrailingBit(-1i) < _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -1i, global0.x, 1i), vec4<i32>(180i, global0.x, global0.x, 1i))), vec4<bool>(false, false, true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true))), true), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1175f, 1631f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -361f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-184f, 402f))), !any(vec4<bool>(true, false, false, false)))), -1169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2357f - 525f)), _wgslsmith_f_op_f32(-886f - -1190f)), countOneBits(countOneBits(-(~vec4<i32>(u_input.a, 2147483647i, 2147483647i, -11914i)))));
    global2 = array<Struct_2, 10>();
    var var_1 = var_0.b;
    let var_2 = var_0.c.yz;
    var var_3 = Struct_4(4294967295u, ~29200u);
    return _wgslsmith_clamp_u32(var_0.a.x, _wgslsmith_mod_u32(var_3.b, 4294967295u), _wgslsmith_sub_u32(firstTrailingBit(var_3.a | var_3.b), max(var_3.b, var_0.a.x))) << (~31109u % 32u);
}

fn func_2(arg_0: f32, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(291u, 15082u)), ~4294967295u, 1u, 4294967295u), vec4<u32>(89621u, 118730u, _wgslsmith_div_u32(func_3(), 15722u), max(~0u, abs(4294967295u))));
    var var_1 = firstTrailingBit(_wgslsmith_add_i32(-23677i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 13987i) | global0.xx, vec2<i32>(arg_1, u_input.a))));
    var var_2 = reverseBits(reverseBits(~(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, 0i, u_input.a), vec3<i32>(arg_1, 10139i, 1i)) | -vec3<i32>(0i, arg_1, arg_1))));
    var var_3 = countOneBits(0i);
    return abs(_wgslsmith_mult_u32(0u, ~var_0.x ^ var_0.x)) >> (_wgslsmith_sub_u32(4294967295u, var_0.x) % 32u);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3) -> u32 {
    global1 = !((global0.x & 2147483647i) != firstTrailingBit(-2147483647i));
    var var_0 = vec2<u32>(~((~1u << (firstTrailingBit(arg_0.x) % 32u)) >> (arg_0.x % 32u)), abs(func_2(_wgslsmith_div_f32(-833f, -716f), 2147483647i) & 1u));
    var var_1 = Struct_3(true);
    let var_2 = select(vec2<bool>(!all(vec4<bool>(false, true, arg_1.a, true)), any(vec4<bool>(true, false, arg_1.a, var_1.a)) & all(select(vec4<bool>(true, var_1.a, arg_1.a, false), vec4<bool>(true, arg_1.a, false, var_1.a), arg_1.a))), !(!vec2<bool>(var_1.a, all(vec2<bool>(var_1.a, var_1.a)))), select(vec2<bool>(false & any(vec3<bool>(var_1.a, var_1.a, false)), !arg_1.a), !vec2<bool>(false, 1u < arg_0.x), arg_1.a));
    global0 = _wgslsmith_sub_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a, -12680i, global0.x), vec4<i32>(0i, u_input.a, u_input.a, 30246i)), vec4<i32>(-22711i, -1i, u_input.a, -14962i) ^ vec4<i32>(-40987i, -34477i, global0.x, 0i)), min(u_input.a, global0.x), -_wgslsmith_add_i32(~35339i, u_input.a)), reverseBits(_wgslsmith_div_vec3_i32(~(vec3<i32>(u_input.a, 2147483647i, u_input.a) >> (vec3<u32>(0u, 4418u, 1u) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(select(vec3<i32>(35412i, u_input.a, u_input.a), vec3<i32>(u_input.a, global0.x, u_input.a), true), -vec3<i32>(0i, 0i, u_input.a)))));
    return _wgslsmith_mod_u32(arg_0.x >> (~1u % 32u), ~arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 10>();
    let var_0 = _wgslsmith_sub_i32(~9575i, global0.x);
    global2 = array<Struct_2, 10>();
    var var_1 = -239f;
    let var_2 = firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_0, 1i), vec3<i32>(var_0, -49135i, global0.x)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(7294u, 52408u, 50698u, 37u), vec4<u32>(0u, 29681u, 56108u, 26430u)) % 32u)) << (countOneBits(_wgslsmith_sub_u32(func_1(vec2<u32>(72666u, 28814u), Struct_3(false)), 1u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(((~1u >> (select(47133u, 4294967295u, true) % 32u)) & firstLeadingBit(countOneBits(4294967295u))) & _wgslsmith_add_u32(func_3(), _wgslsmith_mult_u32(4294967295u, 1u) | _wgslsmith_dot_vec4_u32(vec4<u32>(63262u, 32348u, 12417u, 4294967295u), vec4<u32>(20548u, 33197u, 4294967295u, 4294967295u))), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(128f, 637f, 334f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-647f, -235f, 140f) + vec3<f32>(1086f, -335f, -933f))))), _wgslsmith_f_op_f32(trunc(1390f)));
}

