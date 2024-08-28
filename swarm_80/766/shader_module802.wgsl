struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: array<vec2<f32>, 18>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(round(388f)), _wgslsmith_f_op_f32(min(arg_1.x, 387f)), arg_0.x, _wgslsmith_div_f32(arg_1.x, -1426f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 - arg_0) - vec4<f32>(arg_1.x, -1019f, arg_0.x, arg_1.x)) + _wgslsmith_f_op_vec4_f32(-arg_0)))));
    var var_1 = 101004u;
    var var_2 = Struct_1(~vec2<i32>(-2147483647i, -2147483647i) & _wgslsmith_mult_vec2_i32(vec2<i32>(select(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(10737u, 13u)], true), -60900i), -u_input.a), vec2<i32>(572i, ~(~global0[_wgslsmith_index_u32(u_input.b.x, 13u)])) & abs(select(u_input.a, _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(0i, u_input.a.x)), all(vec2<bool>(true, false)))));
    let var_3 = Struct_2(true);
    global1 = array<vec2<f32>, 18>();
    return select(!select(!vec2<bool>(false, var_3.a), vec2<bool>(var_3.a, true), select(false, var_3.a, all(vec2<bool>(false, var_3.a)))), vec2<bool>(false, false), vec2<bool>(true, true || ((var_3.a || var_3.a) | !var_3.a)));
}

fn func_2() -> vec4<bool> {
    let var_0 = 2192f;
    global0 = array<i32, 13>();
    let var_1 = select(select(vec2<bool>(true, true), vec2<bool>(true, u_input.a.x == 1i), select(select(false, false, false), true, all(vec3<bool>(false, true, true))) & (u_input.b.x > ~u_input.b.x)), vec2<bool>(false, select(true || any(vec3<bool>(true, true, false)), true == all(vec4<bool>(false, false, true, true)), false)), !(!func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1303f, 1539f, -758f, var_0) - vec4<f32>(263f, var_0, var_0, 914f)), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(32564u, 18u)]))));
    global1 = array<vec2<f32>, 18>();
    var var_2 = select(!(!vec2<bool>(all(vec4<bool>(true, true, false, var_1.x)), true | var_1.x)), !var_1, var_1.x);
    return select(!(!vec4<bool>(true, any(var_1), var_2.x && var_2.x, true)), vec4<bool>(true, var_2.x, any(!vec3<bool>(var_2.x, var_1.x, var_2.x)), true), true);
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = Struct_2(!any(vec3<bool>(false, false, false)) || true);
    var var_1 = abs(select(abs(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 17930i) ^ vec4<i32>(global0[_wgslsmith_index_u32(6165u, 13u)], -33789i, u_input.a.x, u_input.a.x))), -(vec4<i32>(2147483647i, -1i, 28376i, -41150i) & vec4<i32>(0i, u_input.a.x, 1i, 2147483647i)) | (countOneBits(vec4<i32>(2147483647i, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], -35775i)) << (min(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(51428u, u_input.b.x, 43754u, u_input.b.x)) % vec4<u32>(32u))), func_2()));
    let var_2 = arg_0;
    return _wgslsmith_div_f32(398f, _wgslsmith_f_op_f32(arg_0 * arg_0));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = select(firstLeadingBit(arg_2), ~u_input.b.x, true);
    let var_1 = Struct_1(_wgslsmith_div_vec2_i32(abs(~(-u_input.a)), select(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, 8471i), ~vec2<i32>(-2147483647i, arg_1)), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, u_input.a), -u_input.a), any(func_2().zyx))), vec2<i32>(_wgslsmith_dot_vec2_i32((vec2<i32>(global0[_wgslsmith_index_u32(var_0, 13u)], 2147483647i) ^ vec2<i32>(-2147483647i, u_input.a.x)) & u_input.a, firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 16193i), vec2<i32>(arg_1, 0i)))), u_input.a.x));
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, arg_2, _wgslsmith_add_u32(~arg_2, reverseBits(arg_2)) & 1u), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(22569u, 41267u, u_input.b.x), vec3<u32>(arg_2, 0u, u_input.b.x), vec3<bool>(arg_3.a, false, true)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b.x, 1u), vec3<u32>(59346u, 29853u, 13651u))), ~(~vec3<u32>(arg_2, u_input.b.x, 1u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, var_0, u_input.b.x), vec3<u32>(arg_2, 4294967295u, 0u))) << (vec3<u32>(u_input.b.x, _wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(u_input.b.x, var_0), 116886u), countOneBits(arg_2) ^ 7368u) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_add_vec2_u32(abs(vec2<u32>(_wgslsmith_div_u32(countOneBits(arg_2), _wgslsmith_div_u32(arg_2, var_0)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, arg_2), ~var_2.yz))), max((vec2<u32>(var_0, 1u) & ~u_input.b) >> (var_2.yy % vec2<u32>(32u)), vec2<u32>(arg_2, firstTrailingBit(firstLeadingBit(4626u)))));
    global0 = array<i32, 13>();
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(3097f, -1522f, 268f)))))))));
    let var_2 = Struct_2(false);
    var_0 = 1u;
    let var_3 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(-1225f)))))), _wgslsmith_sub_i32(-2203i, _wgslsmith_add_i32(-1i, 51840i)), u_input.b.x ^ ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(87383u, u_input.b.x, u_input.b.x, 4294967295u)), vec4<u32>(u_input.b.x, 42032u, u_input.b.x, 84889u)), Struct_2(all(select(!vec4<bool>(false, var_2.a, false, var_2.a), !vec4<bool>(false, false, var_2.a, var_2.a), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.b.x >> (u_input.b.x % 32u), 18u)]))))), var_1.x, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -604f)));
}

