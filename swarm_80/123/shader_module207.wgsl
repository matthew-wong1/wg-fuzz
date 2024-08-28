struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(-1i, -1i, -58082i), vec3<i32>(0i, 0i, i32(-2147483648)), vec3<i32>(50922i, -12528i, -1i), vec3<i32>(i32(-2147483648), 55782i, -10818i), vec3<i32>(i32(-2147483648), 2147483647i, 1i));

var<private> global2: array<f32, 30>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_4) -> f32 {
    global1 = array<vec3<i32>, 5>();
    var var_0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x >> (4294967295u % 32u), _wgslsmith_div_u32(arg_0.b.x, 41427u), u_input.b.x, 77458u) << (vec4<u32>(reverseBits(18747u), arg_1.b.x, abs(36142u), 0u ^ arg_2.a.b.b.x) % vec4<u32>(32u)), vec4<u32>(41941u, global0.x, 33210u >> (firstLeadingBit(43694u) % 32u), ~1u));
    var var_1 = Struct_2(-1i, u_input.b.wz);
    var var_2 = _wgslsmith_div_vec2_f32(arg_2.a.c.yz, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_2.a.c.xw))));
    global0 = countOneBits(~u_input.b.wxz);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(12581u, 30u)])))))) + _wgslsmith_f_op_f32(-var_2.x));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(u_input.a.x, vec2<u32>(4294967295u, 39625u)), Struct_2(~u_input.a.x, firstLeadingBit(vec2<u32>(6300u, 14760u))), Struct_4(Struct_3(false, Struct_2(-64880i, vec2<u32>(global0.x, 1u)), vec4<f32>(787f, -985f, global2[_wgslsmith_index_u32(u_input.b.x, 30u)], global2[_wgslsmith_index_u32(9883u, 30u)]), u_input.b.x))))));
    var var_1 = any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), true), true));
    global1 = array<vec3<i32>, 5>();
    let var_2 = vec3<bool>(!all(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), !(1u != global0.x), !((1i < _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)) | true));
    global2 = array<f32, 30>();
    return firstLeadingBit(~u_input.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>) -> u32 {
    let var_0 = Struct_3(true, Struct_2(func_2(), _wgslsmith_sub_vec2_u32(~abs(vec2<u32>(global0.x, 39520u)), select(global0.xx & vec2<u32>(1u, 4294967295u), _wgslsmith_mult_vec2_u32(u_input.b.zx, global0.yz), arg_0.a.x & arg_0.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-362f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 30u)] * global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), _wgslsmith_f_op_f32(arg_1 * 1000f), 581f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, global2[_wgslsmith_index_u32(37716u, 30u)], -495f, 1016f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-676f, global2[_wgslsmith_index_u32(global0.x, 30u)], global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(u_input.b.x, 30u)]))), !arg_0.a.x)))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.b.x, 87856u), 0u, _wgslsmith_add_u32(~u_input.b.x, global0.x)), vec3<u32>(firstLeadingBit(1u), ~1u, 4294967295u)));
    global1 = array<vec3<i32>, 5>();
    let var_1 = (_wgslsmith_sub_i32(arg_0.b.x, arg_0.b.x) ^ reverseBits(_wgslsmith_add_i32(1i, u_input.a.x) | _wgslsmith_sub_i32(arg_2.x, 11064i))) | max(-17161i, arg_2.x);
    let var_2 = firstLeadingBit(-(~u_input.a));
    let var_3 = Struct_4(Struct_3(var_0.a, Struct_2(-arg_2.x, select(var_0.b.b, vec2<u32>(global0.x, var_0.d), vec2<bool>(arg_0.a.x, true)) ^ global0.xz), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) + var_0.c))), 8120u << (~u_input.b.x % 32u)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(global0.x, ~func_1(Struct_1(vec2<bool>(true, true), vec2<i32>(u_input.a.x, u_input.a.x)), global2[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(global0.x, global0.x), u_input.b.x | 0u), 30u)], global1[_wgslsmith_index_u32(76265u, 5u)]), _wgslsmith_mod_u32(25874u, 18984u));
    let var_1 = -2147483647i;
    let var_2 = func_2();
    var var_3 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0.yz, _wgslsmith_div_vec2_u32(vec2<u32>(49559u, 19921u), global0.xz)), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(43393u, 7961u), vec2<u32>(4294967295u, 1u)), ~4294967295u));
    global1 = array<vec3<i32>, 5>();
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 30u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.x | global0.x, 30u)] + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.x, 30u)])), global2[_wgslsmith_index_u32(global0.x & (global0.x >> (u_input.b.x % 32u)), 30u)])));
    global1 = array<vec3<i32>, 5>();
    global0 = u_input.b.xyz;
    let var_5 = -_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(-1i, var_2, var_1, var_1) << (u_input.b % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(var_2, 1i, var_1, var_1))) << (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 56034u, 17615u, 20726u) << (vec4<u32>(u_input.b.x, 0u, 7711u, var_0.x) % vec4<u32>(32u)), u_input.b >> (u_input.b % vec4<u32>(32u)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~_wgslsmith_mod_u32(1u, 37213u)), 0u), _wgslsmith_sub_vec3_u32(var_0, ~var_0) | ~u_input.b.xxx, select(vec4<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(26264i, var_2)), vec2<i32>(u_input.a.x, -2147483647i)), -2147483647i, ~firstTrailingBit(var_5.x), var_1), max(max(var_5, vec4<i32>(var_1, var_2, var_2, var_5.x)), u_input.a), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_4.x)), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], var_4.x)), -273f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], -384f, var_4.x)), vec3<f32>(var_4.x, var_4.x, var_4.x)))))));
}

