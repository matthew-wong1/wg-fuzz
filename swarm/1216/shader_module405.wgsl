struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6>;

var<private> global1: vec4<i32>;

var<private> global2: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(23860i, -11794i, i32(-2147483648)), vec3<i32>(-5115i, -61614i, 1i), vec3<i32>(i32(-2147483648), -11381i, 26627i), vec3<i32>(2147483647i, 14399i, -23021i), vec3<i32>(65574i, 7209i, -1849i), vec3<i32>(43330i, 2147483647i, 8252i), vec3<i32>(0i, 2147483647i, -10840i), vec3<i32>(-1i, 16964i, 0i), vec3<i32>(20035i, 2147483647i, -6283i), vec3<i32>(i32(-2147483648), 3660i, 0i), vec3<i32>(33589i, 18584i, -34292i), vec3<i32>(-23740i, -10004i, -1i), vec3<i32>(0i, 1i, 0i), vec3<i32>(23329i, -1i, 22830i), vec3<i32>(43836i, 60725i, -13479i), vec3<i32>(17691i, -19831i, i32(-2147483648)), vec3<i32>(0i, -1i, -1i), vec3<i32>(2147483647i, -56564i, -35099i), vec3<i32>(0i, 1064i, 36187i), vec3<i32>(1i, 19946i, -35628i), vec3<i32>(0i, -17608i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(0i, 2244i, 2147483647i), vec3<i32>(-1i, -1i, 0i), vec3<i32>(-42884i, 0i, 0i), vec3<i32>(-2191i, -10878i, 38315i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(1i, -25099i, -30291i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32) -> f32 {
    global0 = array<Struct_4, 6>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.b.x - arg_1.a.a.x)))))));
    var var_1 = countOneBits(min(_wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.a, abs(34760u)), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, reverseBits(66222u)) ^ vec2<u32>(countOneBits(u_input.a), 93695u)));
    var var_2 = global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32((vec2<u32>(1u, 6148u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 75597u), vec2<u32>(1u, u_input.a), vec2<u32>(var_1.x, var_1.x))) ^ u_input.a), 6u)];
    var var_3 = !any(vec4<bool>(!arg_1.a.c.a, arg_0.a, false, any(vec2<bool>(var_2.b.x, arg_0.a))));
    return _wgslsmith_f_op_f32(ceil(-911f));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec4<i32>) -> bool {
    var var_0 = 1552f;
    let var_1 = vec4<f32>(-296f, arg_1.a.a.x, arg_1.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.d) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-arg_1.a.d), !arg_1.a.c.a)))));
    let var_2 = -global1.xxx;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(~_wgslsmith_mult_u32(u_input.a, firstTrailingBit(arg_0)), 16741u, any(select(select(vec3<bool>(true, arg_1.a.c.a, arg_1.a.c.a), vec3<bool>(true, arg_1.a.c.a, arg_1.a.c.a), arg_1.a.c.a), !vec3<bool>(arg_1.a.c.a, false, arg_1.a.c.a), true))), arg_0), 6u)];
    var var_4 = Struct_4(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, var_3.a.x), u_input.b.zw), reverseBits(-19954i) & (u_input.b.x ^ arg_2.x), 45715i), vec3<i32>(_wgslsmith_div_i32(0i, -11712i), var_3.a.x, (var_3.a.x ^ u_input.b.x) << (~arg_0 % 32u))), vec3<bool>(false, (true && arg_1.a.c.a) & !(true && arg_1.a.c.a), !arg_1.a.c.a));
    return all(var_4.b.xx);
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    global0 = array<Struct_4, 6>();
    var var_0 = !vec2<bool>(false && (_wgslsmith_div_u32(27783u, 4294967295u) < (u_input.a & 78787u)), func_3(_wgslsmith_add_u32(u_input.a & u_input.a, u_input.a), Struct_3(Struct_2(vec2<f32>(arg_0.x, -1000f), vec3<f32>(222f, -1069f, 1075f), Struct_1(true, u_input.b.x, global1.xx, vec4<i32>(global1.x, u_input.b.x, -2147483647i, u_input.b.x), global1.xy), arg_0.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -8422i, u_input.b.x, 8114i) ^ u_input.b, _wgslsmith_mod_vec4_i32(u_input.b, u_input.b))));
    var var_1 = Struct_1(true, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), ~(~u_input.b.yx) ^ vec2<i32>(~global1.x, 0i), firstLeadingBit(vec4<i32>(2147483647i ^ (global1.x | global1.x), -reverseBits(u_input.b.x), ~_wgslsmith_sub_i32(global1.x, 1i), global1.x)), vec2<i32>(1i, _wgslsmith_sub_i32(~1i, global1.x)));
    global1 = _wgslsmith_div_vec4_i32(u_input.b, min(vec4<i32>(0i, u_input.b.x, 0i, select(u_input.b.x, var_1.e.x, true)), firstLeadingBit(~firstLeadingBit(u_input.b))));
    var var_2 = Struct_4(~countOneBits(vec3<i32>(-32890i, global1.x, -2147483647i)) << (vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u)), select(vec3<bool>(any(select(vec3<bool>(false, false, var_1.a), vec3<bool>(false, var_0.x, false), var_1.a)), _wgslsmith_add_u32(u_input.a, u_input.a) >= ~u_input.a, true), !(!(!vec3<bool>(false, var_1.a, var_1.a))), !(!vec3<bool>(false, var_0.x, var_0.x))));
    return ((firstTrailingBit(var_2.a.x & 9284i) << ((1u ^ countOneBits(u_input.a)) % 32u)) << (u_input.a % 32u)) ^ select(var_1.c.x, -min(~29310i, -1i), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-401f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(429f, 1623f)) - _wgslsmith_f_op_f32(f32(-1f) * -149f))))), 360f);
    global2 = array<vec3<i32>, 28>();
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(true, u_input.b.x, global1.xx, vec4<i32>(-2147483647i, -1i, -2147483647i, global1.x), u_input.b.xw), Struct_3(Struct_2(var_0.xz, vec3<f32>(239f, var_0.x, var_0.x), Struct_1(true, u_input.b.x, vec2<i32>(global1.x, global1.x), u_input.b, vec2<i32>(global1.x, global1.x)), var_0.x)), global1.x))), -1944f)));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(~var_1, ~abs(-1i), u_input.b.x, 1i), countOneBits(vec4<i32>(~(-2147483647i), 20781i, global1.x | 1i, -_wgslsmith_sub_i32(42879i, 9370i))));
    global2 = array<vec3<i32>, 28>();
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xx)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-194f, var_0.x, var_0.x)))))), vec3<f32>(var_0.x, -746f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, 170f)), var_0.x)))), Struct_1(true, abs(var_2), u_input.b.zw, vec4<i32>(~(~30441i), 1i, u_input.b.x, u_input.b.x), _wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, select(-1i, var_2, false)), global1.zz)), 514f);
    var var_4 = Struct_1(var_3.c.a, select(var_2, 1i, !var_3.c.a), vec2<i32>(reverseBits(_wgslsmith_sub_i32(8394i, var_3.c.d.x) >> (firstLeadingBit(u_input.a) % 32u)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-26478i & u_input.b.x, var_3.c.d.x, -20678i), var_1)), ~(~(~vec4<i32>(30300i, var_3.c.b, -1i, global1.x) << (vec4<u32>(44015u, 24503u, u_input.a, u_input.a) % vec4<u32>(32u)))), _wgslsmith_add_vec2_i32(u_input.b.wz, vec2<i32>(reverseBits(firstLeadingBit(-1i)), u_input.b.x ^ var_2)));
    var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.xx, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.a.x, -1452f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.yx), _wgslsmith_div_vec2_f32(vec2<f32>(var_3.d, var_3.d), vec2<f32>(809f, var_0.x)))))), _wgslsmith_f_op_vec3_f32(select(var_3.b, vec3<f32>(var_3.a.x, var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x))), all(vec4<bool>(true, true, var_3.b.x < var_0.x, true)))), Struct_1(true, _wgslsmith_dot_vec3_i32(reverseBits(global2[_wgslsmith_index_u32(1u, 28u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), 28u)]), countOneBits(vec2<i32>(6352i, global1.x)) | vec2<i32>(abs(0i), -9307i), vec4<i32>(select(var_2, _wgslsmith_mod_i32(2147483647i, u_input.b.x), var_4.a), global1.x, firstLeadingBit(-u_input.b.x), var_4.b), vec2<i32>(-1i) * -(var_3.c.e ^ var_3.c.c)), var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, u_input.a, select(~vec3<u32>(select(u_input.a, 4294967295u, var_4.a), reverseBits(0u), u_input.a), vec3<u32>(abs(u_input.a >> (u_input.a % 32u)), 1u << (u_input.a % 32u), 55790u << ((u_input.a | u_input.a) % 32u)), false), 4294967295u);
}

