struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true));

var<private> global1: array<bool, 23> = array<bool, 23>(false, false, false, true, false, true, true, false, false, true, true, true, false, true, true, true, false, true, false, false, true, true, false);

var<private> global2: f32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> vec4<bool> {
    global0 = array<vec4<bool>, 23>();
    global2 = -1064f;
    var var_0 = 8053u;
    return vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1840f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.c + _wgslsmith_f_op_f32(trunc(arg_2.a.c)))), ~((arg_3 ^ u_input.c.x) >> (~arg_3 % 32u)) != 30783u, true);
}

fn func_2() -> vec2<u32> {
    var var_0 = -(~(~abs(u_input.a))) == u_input.a;
    let var_1 = !(!select(func_3(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], true), -u_input.a, Struct_3(Struct_1(726f, global1[_wgslsmith_index_u32(0u, 23u)], -695f, global1[_wgslsmith_index_u32(u_input.b.x, 23u)]), -2147483647i), 1u), vec4<bool>(true, !global1[_wgslsmith_index_u32(u_input.b.x, 23u)], all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(u_input.c.x, 23u)], false)), all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 23u)]))), all(select(vec2<bool>(false, false), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 23u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], true)))));
    global0 = array<vec4<bool>, 23>();
    let var_2 = -(~abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -1i, -38050i, u_input.a), vec4<i32>(u_input.a, u_input.d.x, -2147483647i, 9427i))) ^ (~(-vec4<i32>(41965i, u_input.a, 4586i, 2147483647i)) << (countOneBits(~vec4<u32>(23815u, u_input.c.x, u_input.c.x, u_input.b.x)) % vec4<u32>(32u))));
    var var_3 = Struct_2(vec3<u32>(u_input.c.x, _wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 27265u, 9320u, u_input.b.x), vec4<u32>(u_input.b.x, 9780u, u_input.b.x, u_input.b.x)) ^ vec4<u32>(1u, 4294967295u, u_input.b.x, 30492u), vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), u_input.b.x, ~1u, abs(27528u))), u_input.b.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(650f + 447f) + _wgslsmith_f_op_f32(floor(-1000f))) * -687f), var_1.x, -591f, global1[_wgslsmith_index_u32(u_input.b.x, 23u)] != true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(357f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1583f, 799f)) + _wgslsmith_div_f32(-1512f, 433f)))), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.b.x, 4294967295u, u_input.c.x)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(17805u, u_input.c.x, u_input.b.x), vec3<u32>(u_input.c.x, u_input.c.x, 23141u)) ^ ~vec3<u32>(u_input.b.x, 0u, u_input.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(529f, -1000f))))));
    return vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(u_input.b.x ^ var_3.a.x), _wgslsmith_dot_vec3_u32(min(vec3<u32>(35593u, 4294967295u, var_3.a.x), var_3.a), ~var_3.d), var_3.a.x >> (~1u % 32u), u_input.b.x), vec4<u32>(max(23376u, 4294967295u), reverseBits(var_3.a.x), 0u, var_3.a.x) << (vec4<u32>(_wgslsmith_mult_u32(0u, 0u), firstLeadingBit(u_input.c.x), 140658u << (var_3.a.x % 32u), var_3.a.x) % vec4<u32>(32u))), reverseBits(~(~u_input.b.x)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.b, func_2()) >> (func_2().x % 32u), ~reverseBits(u_input.c.x)), Struct_2(vec3<u32>(~select(u_input.c.x, 20808u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(58633u, 57702u, u_input.c.x, u_input.b.x), vec4<u32>(u_input.b.x, 51391u, u_input.b.x, u_input.c.x) >> (vec4<u32>(u_input.c.x, u_input.c.x, 1u, 10988u) % vec4<u32>(32u))), ~u_input.c.x), Struct_1(_wgslsmith_f_op_f32(546f - 1051f), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), !select(true, global1[_wgslsmith_index_u32(u_input.c.x, 23u)], global1[_wgslsmith_index_u32(45082u, 23u)])), _wgslsmith_f_op_f32(step(-1327f, arg_0.x)), ~(select(vec3<u32>(u_input.b.x, u_input.c.x, 0u), vec3<u32>(u_input.b.x, u_input.b.x, 1u), false) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, u_input.b.x), vec3<u32>(1u, 1u, 0u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.x, -480f)), arg_0.x))));
    let var_1 = vec2<u32>(u_input.b.x, var_0.b.a.x) | ~var_0.b.a.xz;
    global1 = array<bool, 23>();
    let var_2 = max(~0u, var_1.x);
    global0 = array<vec4<bool>, 23>();
    return Struct_3(var_0.b.b, _wgslsmith_add_i32(~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a, 739i, 1i), _wgslsmith_mod_i32(-2147483647i, u_input.d.x)), _wgslsmith_mult_i32(u_input.a, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * vec2<f32>(325f, 1f)));
    let var_1 = vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, ~4294967295u, u_input.b.x), 23u)], false & ((true & !var_0.a.d) & true), false | (select(!global1[_wgslsmith_index_u32(u_input.c.x, 23u)], true, any(vec2<bool>(false, false))) & !func_1(vec2<f32>(1723f, var_0.a.c)).a.d));
    var var_2 = var_0.a.b;
    global0 = array<vec4<bool>, 23>();
    var var_3 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(-880f)), -1511f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(209f, var_0.a.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, 242f))), global1[_wgslsmith_index_u32(min(_wgslsmith_add_u32(28508u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, u_input.c.x), vec3<u32>(141361u, u_input.b.x, u_input.c.x))), 23u)])) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c, var_0.a.c)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, -1397f)))));
    var_3 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.c)))));
    var var_4 = ~vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c.x, u_input.c.x) | ~u_input.c.x, abs(max(43709u, u_input.b.x))), ~firstLeadingBit(~u_input.c.x), ~max(func_2().x, 1u), select(~_wgslsmith_clamp_u32(4294967295u, u_input.b.x, 0u), ~4294967295u, true));
    var_4 = firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b.x, var_4.x, u_input.b.x) & vec4<u32>(u_input.c.x, var_4.x, 4406u, 4294967295u), reverseBits(vec4<u32>(77276u, 1u, var_4.x, var_4.x))) << (select(~vec4<u32>(var_4.x, 29460u, 40602u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(43445u, var_4.x, 25632u, u_input.c.x), vec4<u32>(var_4.x, 37676u, 0u, var_4.x)), global0[_wgslsmith_index_u32(u_input.b.x, 23u)]) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~reverseBits(vec4<u32>(4294967295u, u_input.c.x, u_input.b.x, 1u)), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(16250u, 2094u, 123549u, 45996u)), vec4<u32>(4294967295u, u_input.c.x, var_4.x, 1u), ~vec4<u32>(1u, u_input.c.x, var_4.x, u_input.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(45907u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(597f + var_3.a.a) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.c), _wgslsmith_f_op_f32(-1478f * var_0.a.a))))));
}

