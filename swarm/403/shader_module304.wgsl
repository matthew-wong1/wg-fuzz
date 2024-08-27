struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10>;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_1, 11>;

var<private> global3: array<Struct_1, 31>;

var<private> global4: array<u32, 5>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_div_vec4_u32(min(~_wgslsmith_add_vec4_u32(arg_0.b.a, u_input.b), abs(abs(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(38850u, 5u)], 5u)], 56090u, 1u, 4294967295u)))), arg_0.b.a), global2[_wgslsmith_index_u32(~((_wgslsmith_sub_u32(global1.x, arg_0.b.a.x) & select(4294967295u, u_input.c.x, arg_0.c.a.x)) << (_wgslsmith_clamp_u32(1u << (arg_0.a % 32u), global1.x, min(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(27327u, 5u)], 5u)], 5u)], u_input.a.x)) % 32u)), 11u)]);
    global1 = select(_wgslsmith_mult_vec4_u32(vec4<u32>(~(~0u), 0u & (global4[_wgslsmith_index_u32(global1.x, 5u)] & 54076u), ~1u, ~arg_0.b.a.x), u_input.c), vec4<u32>(arg_0.b.a.x, ~_wgslsmith_sub_u32(var_0.a.x ^ global1.x, var_0.a.x), _wgslsmith_mod_u32(~(var_0.a.x << (u_input.c.x % 32u)), global4[_wgslsmith_index_u32(115372u << ((var_0.a.x >> (global4[_wgslsmith_index_u32(arg_0.a, 5u)] % 32u)) % 32u), 5u)]), u_input.a.x), select(any(arg_0.b.b.a.ww), _wgslsmith_dot_vec3_i32(vec3<i32>(8036i, var_0.b.c, var_0.b.c), -vec3<i32>(arg_0.c.c, arg_0.c.c, 51815i)) >= firstLeadingBit(select(arg_0.b.b.c, -2147483647i, false)), any(vec4<bool>(!var_0.b.a.x, any(arg_0.b.b.a.yx), !var_0.b.a.x, arg_0.b.b.a.x))));
    global0 = array<vec4<i32>, 10>();
    global2 = array<Struct_1, 11>();
    global4 = array<u32, 5>();
    return select(vec4<bool>(var_0.b.a.x, !any(vec4<bool>(var_0.b.a.x, true, true, true)) != arg_0.c.a.x, var_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1859f))) != _wgslsmith_f_op_f32(f32(-1f) * -116f)), !arg_0.c.a, vec4<bool>(true, countOneBits(79125u) <= select(max(4294967295u, 20793u), _wgslsmith_mult_u32(arg_0.b.a.x, var_0.a.x), true), any(vec3<bool>(all(arg_0.c.a.wz), any(vec4<bool>(false, true, false, arg_0.c.a.x)), var_0.b.a.x)), false));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    var var_0 = Struct_3(1u, Struct_2(firstLeadingBit(u_input.c), global2[_wgslsmith_index_u32(global1.x, 11u)]), global2[_wgslsmith_index_u32(u_input.a.x, 11u)]);
    var var_1 = _wgslsmith_sub_i32(countOneBits(firstTrailingBit(countOneBits(var_0.c.c))), _wgslsmith_mod_i32(~_wgslsmith_div_i32(var_0.b.b.c, ~var_0.b.b.c), i32(-1i) * -(i32(-1i) * -2147483647i)));
    global4 = array<u32, 5>();
    let var_2 = Struct_3(79086u, Struct_2(var_0.b.a, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.b), firstLeadingBit(vec4<u32>(global1.x, global1.x, global1.x, global4[_wgslsmith_index_u32(global1.x, 5u)]))), 31u)]), global2[_wgslsmith_index_u32(var_0.b.a.x, 11u)]);
    let var_3 = global3[_wgslsmith_index_u32(min(~(~_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_dot_vec4_u32(var_0.b.a, vec4<u32>(var_0.a, var_2.b.a.x, global4[_wgslsmith_index_u32(7773u, 5u)], 1103u)), 23134u)), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~17083u), ~max(global4[_wgslsmith_index_u32(0u, 5u)], var_0.a), 51909u), 5u)]), 31u)];
    return true;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: u32) -> i32 {
    global4 = array<u32, 5>();
    global3 = array<Struct_1, 31>();
    global2 = array<Struct_1, 11>();
    let var_0 = Struct_1(vec4<bool>(arg_2.x, true, func_4(false, Struct_1(func_3(Struct_3(54306u, Struct_2(vec4<u32>(global1.x, arg_3, arg_3, 0u), Struct_1(vec4<bool>(arg_2.x, arg_2.x, true, true), vec2<f32>(-785f, 420f), 1i, 236f)), Struct_1(vec4<bool>(false, false, false, arg_2.x), vec2<f32>(760f, 473f), 41825i, 1105f))), _wgslsmith_div_vec2_f32(vec2<f32>(-667f, -357f), vec2<f32>(-933f, 1000f)), 2147483647i, 1000f), !arg_2), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(870f, 556f) * vec2<f32>(1f, 1f)))), i32(-1i) * -5300i, _wgslsmith_f_op_f32(sign(496f)));
    global1 = countOneBits(firstTrailingBit(~u_input.b | abs(vec4<u32>(arg_3, 1u, 0u, 0u))));
    return var_0.c;
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: bool, arg_3: vec3<f32>) -> f32 {
    global0 = array<vec4<i32>, 10>();
    global4 = array<u32, 5>();
    var var_0 = vec4<i32>(reverseBits(1i), abs(~func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, u_input.c.x, 0u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x)), vec3<u32>(1u, 35316u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(23993u, 5u)], 5u)]), !vec2<bool>(true, arg_2), firstTrailingBit(arg_0))), _wgslsmith_add_i32(24800i, _wgslsmith_mod_i32(reverseBits(25103i), _wgslsmith_mult_i32(select(87281i, -13229i, arg_2), max(11853i, 1i)))), 0i);
    var var_1 = vec4<u32>(0u, reverseBits(~firstLeadingBit(max(0u, global1.x))), ~_wgslsmith_div_u32(1u, ~76584u), global1.x);
    global3 = array<Struct_1, 31>();
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 31>();
    var var_0 = select(_wgslsmith_mod_i32(0i, -15608i), 2147483647i, false);
    let var_1 = global4[_wgslsmith_index_u32(reverseBits(~_wgslsmith_add_u32(countOneBits(abs(global1.x)), ~firstTrailingBit(global4[_wgslsmith_index_u32(55330u, 5u)]))), 5u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(55949u, vec3<f32>(-1000f, -897f, -1000f), true, vec3<f32>(1323f, 113f, 127f))))), -703f));
    global4 = array<u32, 5>();
    var_0 = _wgslsmith_add_i32(~abs(51389i), _wgslsmith_dot_vec2_i32(min(vec2<i32>(1i, 1i), vec2<i32>(-1i, -2147483647i)), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(1i, -2612i)), vec2<i32>(1i, 1i))) << (abs(~(global4[_wgslsmith_index_u32(u_input.c.x, 5u)] >> (0u % 32u))) % 32u));
    global0 = array<vec4<i32>, 10>();
    global2 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(global0[_wgslsmith_index_u32(~reverseBits(1u), 10u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(0u, vec3<f32>(var_2, -131f, 1339f), true, vec3<f32>(-435f, -445f, var_2))))) * var_2)));
}

