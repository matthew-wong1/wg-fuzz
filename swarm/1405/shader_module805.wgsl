struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10>;

var<private> global1: u32;

var<private> global2: array<Struct_1, 3>;

var<private> global3: array<vec3<bool>, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    global0 = array<vec4<i32>, 10>();
    let var_0 = any(select(vec2<bool>(!(u_input.a.x > u_input.a.x), true), vec2<bool>(any(vec3<bool>(arg_2, arg_2, false)), !(arg_0.a.x > arg_0.a.x)), (_wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x) < _wgslsmith_f_op_f32(floor(-493f))) | arg_2));
    global3 = array<vec3<bool>, 16>();
    var var_1 = -708f;
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(firstTrailingBit(~arg_0.b), 1i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(65486u, 35515u, abs(2456u), ~24688u), abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 19611u, 0u), vec4<u32>(51285u, 13007u, 14043u, u_input.a.x)))) % 32u), ~(-1i), arg_0.b);
    return firstTrailingBit(firstTrailingBit(~reverseBits(~0u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: f32) -> vec4<u32> {
    global2 = array<Struct_1, 3>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - 1908f), 1002f);
    global2 = array<Struct_1, 3>();
    let var_1 = -2147483647i;
    let var_2 = func_3(Struct_1(vec4<f32>(-891f, _wgslsmith_f_op_f32(-1291f * -237f), _wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_1), global2[_wgslsmith_index_u32(_wgslsmith_div_u32((u_input.a.x >> (4294967295u % 32u)) & (u_input.a.x | u_input.a.x), u_input.a.x), 3u)], arg_0.x) >= ~_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, u_input.a.x, 16782u), ~4294967295u), u_input.a.x);
    return ~firstLeadingBit(((vec4<u32>(0u, 12636u, 39264u, u_input.a.x) << (vec4<u32>(58341u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) ^ vec4<u32>(u_input.a.x, 4294967295u, 0u, 32480u)) | vec4<u32>(select(u_input.a.x, 27459u, true), firstLeadingBit(0u), firstLeadingBit(u_input.a.x), 0u));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    global0 = array<vec4<i32>, 10>();
    let var_0 = vec4<i32>(-2147483647i, firstTrailingBit(min(reverseBits(_wgslsmith_sub_i32(arg_1.x, arg_1.x)), select(0i, ~22947i, true))), _wgslsmith_mult_i32(arg_1.x, 1i), 1i);
    let var_1 = 0i;
    var var_2 = ~(-5815i);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2317f + _wgslsmith_f_op_f32(-948f - 1025f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, -163f)), _wgslsmith_f_op_f32(f32(-1f) * -246f)) - 1f)), 1000f);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(353f - var_3.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -133f))))), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(524f * _wgslsmith_f_op_f32(round(var_3.x))))), -firstLeadingBit(2147483647i));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3, 4294967295u, 0u, arg_3), ~vec4<u32>(9622u, arg_3, 2394u, u_input.a.x)) << ((_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(63557u, 4294967295u, arg_3, 61129u)) | abs(vec4<u32>(46878u, 708u, 8600u, u_input.a.x))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(~0u, arg_3 & 14242u, u_input.a.x, 1u), countOneBits(func_2(global3[_wgslsmith_index_u32(13519u, 16u)], arg_2.x, arg_1.a.x)))), vec2<i32>(arg_1.b << (arg_3 % 32u), ~_wgslsmith_mult_i32(arg_0 | arg_0, reverseBits(arg_1.b))));
    global0 = array<vec4<i32>, 10>();
    var var_1 = func_4(u_input.a.x, select(select(vec2<i32>(-1i) * -vec2<i32>(var_0.b, arg_0), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, arg_0), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, arg_0), vec2<i32>(23667i, 1i))), !arg_2.x), vec2<i32>(~1509i, reverseBits(var_0.b) & -1i), vec2<bool>(all(!arg_2), any(select(vec2<bool>(false, arg_2.x), vec2<bool>(false, arg_2.x), true)))));
    var var_2 = 29984u;
    var var_3 = 36385u;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 16>();
    global0 = array<vec4<i32>, 10>();
    let var_0 = func_1(_wgslsmith_mod_i32(~(-2147483647i) >> (1u % 32u), 1i) | _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-5717i, -2147483647i, -1i, -1i) ^ global0[_wgslsmith_index_u32(26419u, 10u)]), ~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, -2147483647i, 1i), vec4<i32>(2147483647i, 1i, -8082i, 0i))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(332f, _wgslsmith_f_op_f32(f32(-1f) * -342f), 1f, 441f)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 3882i), vec3<i32>(1i, -1i, -15822i)), abs(-42754i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 0i, 2147483647i), vec3<i32>(0i, 1i, -1i)))), !(!vec2<bool>(true, all(vec2<bool>(false, false)))), 9463u << (u_input.a.x % 32u));
    var var_1 = func_4(u_input.a.x, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, var_0.b), vec2<i32>(i32(-1i) * -24952i, var_0.b << (4294967295u % 32u)), ~min(vec2<i32>(var_0.b, var_0.b), vec2<i32>(var_0.b, 0i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) * _wgslsmith_f_op_vec4_f32(-var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.b, _wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.a.x, var_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 264f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(12774u, 1u, u_input.a.x)), vec3<u32>(u_input.a.x, 36686u, u_input.a.x)), firstLeadingBit(u_input.a.x)), (~12179u | abs(u_input.a.x)) << (~u_input.a.x % 32u)), vec2<i32>(_wgslsmith_mult_i32(-var_1.b, _wgslsmith_mod_i32(-2147483647i, var_1.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, 1i, -2147483647i, var_0.b), global0[_wgslsmith_index_u32(0u, 10u)]) >> (4294967295u % 32u)) ^ abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-24422i, 17610i), vec2<i32>(var_0.b, var_0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -1694f, _wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(var_0.a.x + 960f)))));
}

