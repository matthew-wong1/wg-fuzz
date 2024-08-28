struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(1284f, -1000f), vec2<f32>(-370f, -318f), vec2<f32>(476f, -689f), vec2<f32>(1201f, 1000f), vec2<f32>(222f, -1000f), vec2<f32>(215f, 779f), vec2<f32>(-1588f, -771f), vec2<f32>(-1022f, 1604f), vec2<f32>(-115f, -214f), vec2<f32>(1000f, 1574f), vec2<f32>(372f, 1000f), vec2<f32>(402f, -1575f), vec2<f32>(-422f, -720f), vec2<f32>(-929f, 313f), vec2<f32>(-280f, 533f), vec2<f32>(-1000f, 1616f), vec2<f32>(-2548f, -837f), vec2<f32>(-1333f, -306f), vec2<f32>(-754f, -1359f), vec2<f32>(1000f, -1063f), vec2<f32>(-711f, -449f), vec2<f32>(-1909f, -207f), vec2<f32>(297f, 234f));

var<private> global1: array<f32, 2>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_2) -> vec4<f32> {
    global1 = array<f32, 2>();
    var var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(~0u, _wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.e.x, firstLeadingBit(4404u)), _wgslsmith_dot_vec3_u32(vec3<u32>(13050u, u_input.c, 28504u), vec3<u32>(u_input.e.x, u_input.b.x, u_input.d)) ^ ~u_input.d)), 4294967295u);
    let var_1 = ~u_input.e.x;
    var var_2 = Struct_2(arg_3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2.b, vec4<f32>(-1703f, _wgslsmith_f_op_f32(-arg_2.b.x), -1043f, _wgslsmith_f_op_f32(floor(-1000f))))));
    global0 = array<vec2<f32>, 23>();
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(781f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(603f * -411f))), -471f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(990f * -1259f)))))));
}

fn func_3() -> f32 {
    global0 = array<vec2<f32>, 23>();
    return _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 2u)] - _wgslsmith_f_op_f32(442f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2192f, 627f)) - _wgslsmith_div_f32(-1511f, 431f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -735f)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = false;
    let var_2 = Struct_2(vec3<i32>(~u_input.a, ~(_wgslsmith_div_i32(-24688i, -5242i) | (u_input.a >> (u_input.d % 32u))), u_input.a), _wgslsmith_f_op_vec4_f32(-var_0.d));
    var var_3 = Struct_2(firstLeadingBit(var_2.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec4<bool>(arg_1.x, any(vec3<bool>(true, true, false)), arg_1.x, var_2.a.x == var_2.a.x), select(var_0.b, select(vec2<bool>(true, true), vec2<bool>(true, false), arg_1.x), !var_0.c), var_2, var_2)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(14189u, 2u)] + var_0.d.x), -161f, _wgslsmith_f_op_f32(f32(-1f) * -1031f), _wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, global1[_wgslsmith_index_u32(u_input.e.x, 2u)], global1[_wgslsmith_index_u32(u_input.b.x, 2u)], 337f), vec4<f32>(-1292f, var_2.b.x, var_2.b.x, arg_0.d.x)) + var_2.b))));
    var var_4 = -64519i;
    return vec2<bool>(true, var_1);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    let var_0 = Struct_2(vec3<i32>(_wgslsmith_add_i32(min(_wgslsmith_sub_i32(-1i, u_input.a), u_input.a), _wgslsmith_add_i32(~arg_1.x, select(u_input.a, u_input.a, true))), 16114i, -2147483647i), arg_3);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.d.x)) - 1218f));
    global1 = array<f32, 2>();
    var var_2 = _wgslsmith_clamp_vec3_i32(-arg_1, _wgslsmith_mod_vec3_i32(select(abs(arg_1), min(vec3<i32>(23857i, 1i, u_input.a), _wgslsmith_mod_vec3_i32(var_0.a, vec3<i32>(var_0.a.x, var_0.a.x, arg_1.x))), _wgslsmith_f_op_f32(2391f - arg_3.x) > global1[_wgslsmith_index_u32(u_input.e.x, 2u)]), min(select(vec3<i32>(-2147483647i, 0i, -1i), vec3<i32>(-2147483647i, 12482i, u_input.a), true), _wgslsmith_mult_vec3_i32(select(arg_1, arg_1, true), arg_1))), firstLeadingBit(-max(vec3<i32>(var_0.a.x, var_0.a.x, 2147483647i) | arg_1, abs(vec3<i32>(var_0.a.x, arg_1.x, u_input.a)))));
    global1 = array<f32, 2>();
    return countOneBits(_wgslsmith_mult_u32(1u, ~(~_wgslsmith_div_u32(arg_0.x, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(func_4(vec4<u32>(~u_input.e.x, _wgslsmith_sub_u32(u_input.d, u_input.b.x), 40181u, 9895u), vec3<i32>(~(-29476i), select(u_input.a, u_input.a, false), u_input.a), Struct_1(false, vec2<bool>(false, false), func_1(Struct_1(true, vec2<bool>(false, true), vec2<bool>(false, false), vec4<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 2u)], -140f, -1375f, global1[_wgslsmith_index_u32(34298u, 2u)])), vec3<bool>(false, true, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(9583u, 2u)], 648f, 593f, -1544f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2336f, global1[_wgslsmith_index_u32(4294967295u, 2u)], -720f, global1[_wgslsmith_index_u32(0u, 2u)]) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(26655u, 2u)], -2774f, global1[_wgslsmith_index_u32(u_input.b.x, 2u)], -487f)))), firstTrailingBit(u_input.b.x), u_input.c, select(countOneBits(u_input.e.x), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), ~vec3<u32>(u_input.b.x, u_input.e.x, u_input.e.x)), true)), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, ~firstLeadingBit(~4294967295u)));
    var var_1 = vec4<i32>(abs(-u_input.a) >> (~(34770u << (var_0.x % 32u)) % 32u), u_input.a, u_input.a, 5013i) >> (vec4<u32>(u_input.c, 7514u, ~67330u, var_0.x) % vec4<u32>(32u));
    let var_2 = Struct_2(-(~reverseBits(abs(var_1.wxy))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 2u)] + 1536f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.e.x, 2u)] + global1[_wgslsmith_index_u32(0u, 2u)]), _wgslsmith_f_op_f32(1707f * global1[_wgslsmith_index_u32(0u, 2u)])))))));
    let var_3 = var_2.b.zzy;
    var var_4 = var_3;
    global1 = array<f32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(~min(~firstLeadingBit(var_0.yyy), ~var_0.yyz), _wgslsmith_add_u32(var_0.x, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, (13749u & var_0.x) & u_input.c, 1u, 1u), var_0), var_1.x, global1[_wgslsmith_index_u32(reverseBits(var_0.x), 2u)]);
}

