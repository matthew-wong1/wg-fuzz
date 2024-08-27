struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2>;

var<private> global1: array<vec4<bool>, 13>;

var<private> global2: Struct_1 = Struct_1(-1770f);

var<private> global3: i32 = -13989i;

var<private> global4: array<Struct_1, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1() -> u32 {
    var var_0 = u_input.a;
    return abs(_wgslsmith_sub_u32(1u ^ ~u_input.c, firstTrailingBit(4294967295u)));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    return ~(~_wgslsmith_sub_u32(64512u, _wgslsmith_mult_u32(4294967295u, u_input.a.x) >> (0u % 32u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> Struct_1 {
    var var_0 = !(0u <= _wgslsmith_dot_vec2_u32(vec2<u32>(110958u, 88549u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_2.x), vec2<u32>(arg_2.x, 19560u)))) == true;
    let var_1 = abs(-31846i);
    global0 = array<vec3<bool>, 2>();
    let var_2 = _wgslsmith_sub_vec2_u32(abs(select(~vec2<u32>(1u, 54445u) >> (~arg_2 % vec2<u32>(32u)), u_input.a, true)), arg_2);
    var var_3 = arg_1;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<bool> {
    global3 = _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, -select(u_input.d.x, u_input.e.x, false), -_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(u_input.d.x, 2147483647i, -17723i))), vec3<i32>(-1i) * -vec3<i32>(1i, u_input.e.x, u_input.e.x));
    var var_0 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(~u_input.c, 58260u, u_input.b, 29318u)), vec4<u32>(firstTrailingBit(u_input.c), ~(~0u | u_input.b), u_input.c ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 74712u, u_input.b) ^ vec3<u32>(u_input.a.x, u_input.c, u_input.a.x), vec3<u32>(0u, u_input.b, u_input.c)), _wgslsmith_sub_u32(u_input.b, ~42650u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(arg_2.a)));
    global1 = array<vec4<bool>, 13>();
    global1 = array<vec4<bool>, 13>();
    return select(vec2<bool>(all(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, firstLeadingBit(u_input.c)), 13u)]), all(global0[_wgslsmith_index_u32(u_input.b, 2u)])), !vec2<bool>(select(true, true, any(vec2<bool>(false, false))), any(global0[_wgslsmith_index_u32(abs(0u), 2u)])), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(~u_input.b, 7u)];
    var var_1 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec2<bool>(true, true))), vec2<bool>((u_input.e.x >= -10693i) | true, any(vec4<bool>(true, true, true, true))), !vec2<bool>(3178u < u_input.a.x, select(false, true, false))), vec2<bool>(false, any(vec2<bool>(true, true))), select(true, true, true));
    let var_2 = max(-_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(select(1i, u_input.d.x, var_1.x), select(u_input.e.x, -2147483647i, var_1.x))), _wgslsmith_add_i32(-8346i, -u_input.e.x >> (_wgslsmith_mult_u32(~u_input.c, max(u_input.a.x, 0u)) % 32u)));
    var var_3 = global4[_wgslsmith_index_u32(max(~(~u_input.a.x >> (~u_input.a.x % 32u)), u_input.b), 7u)];
    global0 = array<vec3<bool>, 2>();
    let var_4 = u_input.d;
    var var_5 = var_1.x;
    let var_6 = func_4(func_3(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(min(u_input.c << (u_input.c % 32u), func_1()), ~func_2(vec3<f32>(161f, -736f, 2627f))), 7u)], global4[_wgslsmith_index_u32(4294967295u, 7u)], ~u_input.a, _wgslsmith_sub_i32(~_wgslsmith_sub_i32(var_2, 10110i), max(-2147483647i ^ u_input.e.x, 1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, _wgslsmith_f_op_f32(floor(155f)), _wgslsmith_div_f32(-1292f, -1791f), _wgslsmith_f_op_f32(round(-324f))))), func_3(func_3(Struct_1(_wgslsmith_f_op_f32(358f - 829f)), func_3(func_3(global4[_wgslsmith_index_u32(u_input.b, 7u)], Struct_1(var_0.a), vec2<u32>(0u, u_input.c), -32273i), func_3(Struct_1(var_3.a), global4[_wgslsmith_index_u32(116068u, 7u)], vec2<u32>(1u, u_input.c), var_2), u_input.a, -2147483647i), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(23054u, 0u)), -2206i << (u_input.c % 32u)), Struct_1(global2.a), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 0u) & u_input.a, firstTrailingBit(vec2<u32>(u_input.a.x, 52430u)), u_input.a), u_input.a), ~var_2));
    var var_7 = (~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 63917u, 2084u, u_input.b), vec4<u32>(u_input.c, u_input.b, 0u, 65871u), vec4<u32>(u_input.b, 24815u, u_input.c, u_input.c))) & ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(2483u, u_input.b, u_input.b, 2694u), vec4<u32>(u_input.a.x, 2171u, u_input.b, 0u)), vec4<u32>(4294967295u, u_input.c, 4294967295u, 10919u))) & min(vec4<u32>(~36941u, select(u_input.c, u_input.a.x, !var_6.x), 85187u >> (u_input.a.x % 32u), 4294967295u), ~(~abs(vec4<u32>(71971u, 4218u, u_input.b, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(961f, -1618f, global2.a), _wgslsmith_div_vec3_f32(vec3<f32>(var_3.a, 1904f, var_3.a), vec3<f32>(var_0.a, var_0.a, 410f)), !vec3<bool>(true, true, var_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(1105f - _wgslsmith_f_op_f32(ceil(-530f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.a, 276f))), -708f))));
}

