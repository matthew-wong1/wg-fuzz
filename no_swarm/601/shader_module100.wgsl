struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: u32,
    d: vec3<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(1u, 0u), vec2<u32>(10634u, 29307u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(54196u, 4294967295u), vec2<u32>(34553u, 4294967295u), vec2<u32>(1u, 37781u), vec2<u32>(74656u, 0u), vec2<u32>(65469u, 30180u), vec2<u32>(47197u, 67546u), vec2<u32>(0u, 4294967295u), vec2<u32>(44612u, 0u), vec2<u32>(4294967295u, 29116u), vec2<u32>(1u, 54495u), vec2<u32>(4294967295u, 11250u), vec2<u32>(0u, 0u), vec2<u32>(30086u, 0u), vec2<u32>(33394u, 0u));

var<private> global1: array<u32, 23> = array<u32, 23>(72442u, 117873u, 78765u, 41794u, 64324u, 4294967295u, 1023u, 95728u, 31778u, 74740u, 1u, 49008u, 78475u, 12531u, 37690u, 46184u, 16124u, 34745u, 14540u, 4294967295u, 0u, 14369u, 4294967295u);

var<private> global2: bool = false;

var<private> global3: array<bool, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: Struct_3) -> f32 {
    var var_0 = Struct_4(vec2<bool>(any(!select(vec4<bool>(arg_3.a, false, arg_1.a.x, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 20u)]), vec4<bool>(global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(83099u, 20u)], false, true), arg_1.a.x)), !(_wgslsmith_f_op_f32(f32(-1f) * -810f) >= _wgslsmith_f_op_f32(step(-648f, arg_2.x)))), arg_3, 1u, vec3<i32>(u_input.c.x, ~(~13982i), 1i) << (max(~u_input.b.zyy, vec3<u32>(0u & u_input.b.x, global1[_wgslsmith_index_u32(reverseBits(0u), 23u)], 15545u)) % vec3<u32>(32u)), Struct_3(true));
    var var_1 = 1447f;
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.d.x, (select(1i, arg_1.d.x, true) & (u_input.d.x << (1u % 32u))) | _wgslsmith_div_i32(u_input.c.x ^ -2147483647i, var_0.d.x), -1i, firstLeadingBit(-_wgslsmith_mult_i32(arg_1.d.x, u_input.c.x))), abs(vec4<i32>(0i, 16469i, arg_1.d.x, 1i) << (vec4<u32>(0u, var_0.c, arg_0, arg_0) % vec4<u32>(32u))));
    let var_3 = arg_1;
    var var_4 = _wgslsmith_div_i32(var_3.d.x, -26823i);
    return _wgslsmith_f_op_f32(f32(-1f) * -124f);
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_2 {
    global1 = array<u32, 23>();
    var var_0 = vec3<bool>(!global3[_wgslsmith_index_u32(reverseBits(u_input.a.x), 20u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 350f) * -1509f) - _wgslsmith_f_op_f32(func_3(4294967295u, Struct_4(vec2<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], 20u)], false), Struct_3(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54956u, 23u)], 20u)]), global1[_wgslsmith_index_u32(6038u, 23u)], vec3<i32>(u_input.c.x, u_input.c.x, 21864i), Struct_3(global3[_wgslsmith_index_u32(1u, 20u)])), _wgslsmith_div_vec4_f32(vec4<f32>(1518f, -1018f, 2224f, 328f), vec4<f32>(212f, 379f, 641f, 687f)), Struct_3(false)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 873f)) - _wgslsmith_f_op_f32(abs(-814f))), true);
    var_0 = vec3<bool>(select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 22359u, u_input.b.x), vec3<u32>(9833u, 1u, u_input.a.x)), 20u)] == true, (i32(-1i) * -2238i) <= abs(arg_0), false) && var_0.x, global3[_wgslsmith_index_u32((4294967295u & (_wgslsmith_mod_u32(4294967295u, u_input.a.x) & global1[_wgslsmith_index_u32(30683u, 23u)])) | _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.a.xx)), _wgslsmith_div_vec2_u32(firstLeadingBit(u_input.a.yy), vec2<u32>(4294967295u, u_input.b.x))), 20u)], all(vec3<bool>(true, all(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x), vec3<bool>(false, var_0.x, true))), var_0.x)));
    global1 = array<u32, 23>();
    let var_1 = Struct_2(Struct_1(133f, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-301f, 251f), vec2<f32>(-1243f, -151f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1248f, 535f), vec2<f32>(-391f, -195f), vec2<bool>(var_0.x, global3[_wgslsmith_index_u32(4294967295u, 20u)])))))), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, -2147483647i) >> (~vec2<u32>(27909u, global1[_wgslsmith_index_u32(u_input.b.x, 23u)]) % vec2<u32>(32u)), vec2<i32>(arg_0, u_input.d.x) & vec2<i32>(arg_0, arg_0)), var_0.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1427f, -403f, 107f, _wgslsmith_f_op_f32(1608f * 1461f))))), Struct_1(1455f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-319f, 505f))), u_input.d, !global3[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(1u, 11471u)), 20u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-849f, -572f, 806f, 1354f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(680f, 233f, 1058f, -1000f)))), !(!vec4<bool>(false, false, true, var_0.x))))), (i32(-1i) * -1i) >= arg_1, Struct_1(-461f, vec2<f32>(-1000f, 678f), u_input.d, any(!select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, global3[_wgslsmith_index_u32(55338u, 20u)]), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 20u)], true, global3[_wgslsmith_index_u32(u_input.b.x, 20u)]))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1338f - -1664f) + _wgslsmith_f_op_f32(select(-669f, 889f, false))), -1000f, _wgslsmith_f_op_f32(abs(-1000f)), 698f)));
    return Struct_2(var_1.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.a) * 209f)), var_1.b.e.wz, var_1.a.c, false, var_1.a.e), false, var_1.a);
}

fn func_1() -> f32 {
    let var_0 = true;
    var var_1 = func_2(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.d.x, ~(-2147483647i)), ~(vec2<i32>(u_input.d.x, u_input.d.x) ^ u_input.d))), firstLeadingBit(1i));
    var var_2 = _wgslsmith_add_i32(-(max(abs(0i), var_1.d.c.x) ^ var_1.d.c.x), u_input.d.x | -abs(u_input.c.x));
    let var_3 = vec4<bool>(var_0, var_1.d.d, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, u_input.a.x, 1u), 20u)], true);
    let var_4 = func_2(abs(u_input.d.x), _wgslsmith_sub_i32(func_2(~reverseBits(28251i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.c.x, 0i), var_1.d.c.x)).a.c.x, var_1.d.c.x));
    return -1213f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~(~(0u << (u_input.b.x % 32u))), 20u)] & true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(func_1()), 930f, -924f, -211f), ~vec2<u32>(reverseBits(~u_input.b.x), u_input.a.x), ~select(19941u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 23u)], 23u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], 23u)]), 20u)]), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(max(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53078u, 23u)] | 9009u, 17u)]), global0[_wgslsmith_index_u32(select(_wgslsmith_div_u32(4294967295u, u_input.b.x), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)], true | global3[_wgslsmith_index_u32(17152u, 20u)]), 17u)]), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.xx, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], 23u)], 17u)]), ~global0[_wgslsmith_index_u32(21922u, 17u)]), 13025u, ~min(~72927u, reverseBits(4294967295u))));
}

