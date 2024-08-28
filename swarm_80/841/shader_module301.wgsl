struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8>;

var<private> global1: array<Struct_1, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global1 = array<Struct_1, 24>();
    var var_0 = arg_1;
    let var_1 = global1[_wgslsmith_index_u32(35621u, 24u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.d.x, var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(490f - -1029f))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1284f)))) + arg_0.d.x), _wgslsmith_f_op_f32(-arg_0.d.x)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-623f, _wgslsmith_f_op_f32(arg_0.d.x + -502f)))), -1000f, _wgslsmith_f_op_f32(max(584f, 1338f)), var_0.d.x));
    global0 = array<vec3<bool>, 8>();
    return true;
}

fn func_2() -> u32 {
    let var_0 = select(vec4<bool>(select(any(global0[_wgslsmith_index_u32(~4294967295u, 8u)]), true, false), func_3(global1[_wgslsmith_index_u32(firstLeadingBit(1u), 24u)], global1[_wgslsmith_index_u32(20552u, 24u)]), true, true), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(all(global0[_wgslsmith_index_u32(4294967295u, 8u)]), true, any(vec4<bool>(false, true, true, true)), true), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), false)))), select(vec4<bool>(true, true, func_3(global1[_wgslsmith_index_u32(~81310u, 24u)], global1[_wgslsmith_index_u32(~4294967295u, 24u)]), true && all(global0[_wgslsmith_index_u32(4294967295u, 8u)])), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true)), true));
    let var_1 = -vec3<i32>(-18250i, ~(-1i), _wgslsmith_add_i32(-2147483647i, 1i));
    global0 = array<vec3<bool>, 8>();
    let var_2 = countOneBits(var_1);
    let var_3 = abs(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-26341i, var_2.x, 1i, u_input.a), vec4<i32>(-4111i, 5531i, 0i, var_1.x)), vec4<i32>(u_input.a, 1i, -93432i, u_input.a)) & _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(27227i, 19417i, -1i, 1i), vec4<i32>(-56782i, 1i, u_input.a, u_input.a)), select(vec4<i32>(u_input.a, 2147483647i, u_input.a, 0i), vec4<i32>(var_1.x, -33947i, var_1.x, -3930i), false)), ~firstTrailingBit(-vec4<i32>(1i, var_1.x, var_1.x, var_1.x))));
    return ~0u;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>) -> u32 {
    global1 = array<Struct_1, 24>();
    global0 = array<vec3<bool>, 8>();
    var var_0 = u_input.a >> (~func_2() % 32u);
    global1 = array<Struct_1, 24>();
    let var_1 = !(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, u_input.a), abs(-1355i)) > countOneBits(-u_input.a));
    return 57349u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~abs(~64744u), 24u)];
    var var_1 = vec4<i32>(u_input.a >> (~_wgslsmith_div_u32(~27270u, func_1(vec4<bool>(true, false, var_0.e.x, true), vec4<bool>(false, var_0.e.x, true, var_0.a))) % 32u), ~var_0.b.x, var_0.b.x, -u_input.a);
    var var_2 = -1728f;
    var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(729f))));
    var var_3 = var_1.zy;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(0i, var_0.c.x, 14798i)), vec3<i32>(firstTrailingBit(u_input.a), -1i | var_0.b.x, ~(-56050i))), ~_wgslsmith_div_i32(-8265i, var_0.b.x), vec2<u32>(4294967295u, countOneBits(64392u)), _wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, ~(-2147483647i)), var_0.b.yz), vec4<i32>(var_3.x, 9958i, u_input.a, ~_wgslsmith_mod_i32(1i, var_1.x)));
}

