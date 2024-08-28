struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24>;

var<private> global1: array<f32, 2> = array<f32, 2>(2101f, -780f);

var<private> global2: array<bool, 16>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    global0 = array<Struct_3, 24>();
    global2 = array<bool, 16>();
    var var_0 = Struct_3(Struct_1(_wgslsmith_mult_i32(~select(u_input.a.x, 0i, false), u_input.a.x), u_input.b.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(20276u, 2u)], global1[_wgslsmith_index_u32(14452u, 2u)], global1[_wgslsmith_index_u32(u_input.b.x, 2u)])), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-3453f, global1[_wgslsmith_index_u32(u_input.b.x, 2u)], -994f), vec3<f32>(-343f, global1[_wgslsmith_index_u32(18080u, 2u)], 459f))), select(vec3<bool>(true, false, false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(16623u, 16u)], global2[_wgslsmith_index_u32(u_input.b.x, 16u)]))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1902f)) * -1000f)) * 131f), Struct_1(u_input.a.x, u_input.b.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(462f, -1000f, 849f) + vec3<f32>(693f, global1[_wgslsmith_index_u32(u_input.b.x, 2u)], 266f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(0u, 2u)], -2703f, -518f)))))));
    var_0 = global0[_wgslsmith_index_u32(var_0.c.b, 24u)];
    var_0 = global0[_wgslsmith_index_u32(~(~select(~1u << (0u % 32u), 5609u, -var_0.c.a <= var_0.a.a)), 24u)];
    return u_input.a.x;
}

fn func_2() -> i32 {
    let var_0 = Struct_1(func_3(), _wgslsmith_clamp_u32(select(107324u, u_input.b.x, -u_input.a.x >= (32467i & u_input.a.x)), 1u, 4294967295u), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(10497u, 2u)]), _wgslsmith_f_op_f32(trunc(1137f))), _wgslsmith_f_op_f32(f32(-1f) * -1254f), true)), 975f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1448f))))));
    global1 = array<f32, 2>();
    global0 = array<Struct_3, 24>();
    global2 = array<bool, 16>();
    var var_1 = ~select(u_input.b, vec3<u32>(min(select(8525u, var_0.b, true), _wgslsmith_sub_u32(52346u, 28907u)), u_input.b.x, abs(abs(u_input.b.x))), true);
    return _wgslsmith_div_i32(-reverseBits(func_3()), 1i);
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_add_i32(4912i, abs(func_2())), ~select(firstTrailingBit(select(64181u, 0u, false)), 1u, true), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, 4294967295u), 2u)]) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-115f, global1[_wgslsmith_index_u32(36177u, 2u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0.c.x)))) - 1f), arg_0.c.x));
    var var_1 = reverseBits(-_wgslsmith_clamp_vec4_i32((vec4<i32>(-46041i, var_0.a, -1i, 2147483647i) << (vec4<u32>(43583u, 4294967295u, 1u, u_input.b.x) % vec4<u32>(32u))) & vec4<i32>(u_input.a.x, -30424i, arg_0.a, -2147483647i), countOneBits(select(vec4<i32>(0i, arg_0.a, 11775i, u_input.a.x), vec4<i32>(arg_0.a, 0i, -8506i, 2147483647i), vec4<bool>(global2[_wgslsmith_index_u32(var_0.b, 16u)], false, global2[_wgslsmith_index_u32(var_0.b, 16u)], global2[_wgslsmith_index_u32(u_input.b.x, 16u)]))), countOneBits(firstLeadingBit(vec4<i32>(14187i, -9826i, -24942i, 26081i)))));
    var_1 = vec4<i32>(var_0.a, 2147483647i, -(~reverseBits(_wgslsmith_clamp_i32(arg_0.a, arg_0.a, var_1.x))), countOneBits(abs(1i) ^ ~var_0.a) & 1i);
    let var_2 = Struct_2(vec3<bool>(!all(vec4<bool>(global2[_wgslsmith_index_u32(var_0.b, 16u)], global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(62646u, 16u)], global2[_wgslsmith_index_u32(u_input.b.x, 16u)])), true, false));
    let var_3 = arg_0;
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1204f, 719f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 2u)])), _wgslsmith_f_op_f32(func_1(Struct_1(-1071i, reverseBits(u_input.b.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-261f, global1[_wgslsmith_index_u32(u_input.b.x, 2u)], global1[_wgslsmith_index_u32(u_input.b.x, 2u)]) - vec3<f32>(895f, -785f, global1[_wgslsmith_index_u32(15621u, 2u)]))))))), _wgslsmith_f_op_f32(select(959f, global1[_wgslsmith_index_u32(~u_input.b.x, 2u)], false)));
    global1 = array<f32, 2>();
    var var_1 = all(vec2<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 1u), 16u)]));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.wxy))));
    var var_3 = global0[_wgslsmith_index_u32(abs(4294967295u), 24u)];
    let var_4 = Struct_3(Struct_1(9356i, ~(~_wgslsmith_clamp_u32(u_input.b.x, var_3.a.b, u_input.b.x)), vec3<f32>(-788f, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1916f + -2196f)))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(11596u, 2u)], -415f), Struct_1(var_3.c.a, u_input.b.x | ~(~22982u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.c.c) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1[_wgslsmith_index_u32(0u, 2u)], -1000f, 1091f)))) - var_0.wxw)));
    var var_5 = Struct_1(firstTrailingBit(-29117i), _wgslsmith_add_u32(firstTrailingBit(7560u), var_4.c.b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-3131f, 650f), global1[_wgslsmith_index_u32(~var_3.a.b, 2u)], -445f) - var_0.yzy))));
    let x = u_input.a;
    s_output = StorageBuffer(select(firstTrailingBit(firstLeadingBit(~u_input.a.xx)), vec2<i32>(var_5.a | 1i, _wgslsmith_add_i32(0i, ~var_3.c.a)), !(var_4.a.c.x != global1[_wgslsmith_index_u32(~0u, 2u)])), 0u, _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -50734i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_3.a.a, var_5.a), min(vec3<i32>(var_3.a.a, 0i, -7278i), vec3<i32>(-2147483647i, var_4.a.a, 2147483647i)))), select(u_input.a, _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_4.a.a, 1i, -12749i), u_input.a), vec3<i32>(var_4.a.a, u_input.a.x, u_input.a.x)), vec3<bool>(!global2[_wgslsmith_index_u32(0u, 16u)], !global2[_wgslsmith_index_u32(31825u, 16u)], true))));
}

