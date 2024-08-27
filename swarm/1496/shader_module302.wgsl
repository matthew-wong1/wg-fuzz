struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-1765f, false, vec2<bool>(true, false), 15041i), Struct_1(144f, false, vec2<bool>(true, false), -1i), Struct_1(217f, true, vec2<bool>(true, true), 44110i), Struct_1(1774f, false, vec2<bool>(false, true), i32(-2147483648)), Struct_1(1418f, false, vec2<bool>(false, true), 2147483647i), Struct_1(163f, false, vec2<bool>(false, true), -1i), Struct_1(-311f, true, vec2<bool>(true, false), 3452i), Struct_1(100f, false, vec2<bool>(false, false), -29861i), Struct_1(-255f, false, vec2<bool>(false, true), 38613i), Struct_1(217f, false, vec2<bool>(true, true), 1i), Struct_1(-108f, true, vec2<bool>(false, true), 1i), Struct_1(-321f, true, vec2<bool>(false, true), -1i), Struct_1(-837f, true, vec2<bool>(false, true), 30544i), Struct_1(-825f, false, vec2<bool>(true, true), 35933i), Struct_1(956f, true, vec2<bool>(true, false), 1i), Struct_1(186f, false, vec2<bool>(true, false), 0i), Struct_1(-360f, true, vec2<bool>(false, true), 30466i), Struct_1(-1000f, true, vec2<bool>(true, false), 0i), Struct_1(234f, true, vec2<bool>(true, true), 668i), Struct_1(481f, true, vec2<bool>(false, false), 30564i), Struct_1(1281f, false, vec2<bool>(true, true), -12039i), Struct_1(722f, false, vec2<bool>(true, false), 2147483647i), Struct_1(-1000f, false, vec2<bool>(true, false), -1i), Struct_1(-1080f, false, vec2<bool>(true, false), 15481i), Struct_1(-892f, true, vec2<bool>(true, true), -32257i), Struct_1(293f, false, vec2<bool>(false, true), -44081i), Struct_1(-1377f, true, vec2<bool>(false, true), 1i), Struct_1(445f, false, vec2<bool>(true, false), 21788i), Struct_1(447f, false, vec2<bool>(false, true), 49783i));

var<private> global1: array<i32, 22> = array<i32, 22>(22419i, -19804i, 0i, -332i, 0i, i32(-2147483648), 13715i, 0i, 2147483647i, -1i, 2147483647i, 32929i, 1841i, 59799i, -18528i, 70963i, 2147483647i, 23664i, -1i, i32(-2147483648), 0i, -26733i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(arg_1.a, arg_1.a)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1590f, arg_1.a)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, -1062f) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1736f, arg_1.a)))) - vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1.a)), arg_1.a))));
    var var_1 = ~34096i;
    var var_2 = !(!(!arg_0));
    global1 = array<i32, 22>();
    var_2 = arg_1.c;
    return !var_2.x;
}

fn func_2() -> i32 {
    return -512i;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_2) -> bool {
    let var_0 = vec2<i32>(~(_wgslsmith_sub_i32(arg_3.a, 19222i) & (arg_1.d ^ arg_3.a)) >> ((arg_0 >> (u_input.a % 32u)) % 32u), ~1i);
    var var_1 = ~(~(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(4294967295u, arg_0)), ~vec2<u32>(arg_0, u_input.a)) & vec2<u32>(reverseBits(4294967295u), 1u)));
    var var_2 = ~(firstTrailingBit(~min(0u, arg_0)) | _wgslsmith_dot_vec4_u32(vec4<u32>(149907u, 38669u, 3816u, ~var_1.x), reverseBits(vec4<u32>(var_1.x, 86590u, 0u, arg_0)) << (abs(vec4<u32>(1u, 42077u, 22713u, 7249u)) % vec4<u32>(32u))));
    var var_3 = Struct_1(arg_1.a, arg_1.c.x, arg_1.c, -abs(_wgslsmith_mod_i32(arg_1.d, _wgslsmith_div_i32(39886i, 18724i))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-612f + var_3.a)))), !(false & (all(arg_2) || arg_2.x)), vec2<bool>(true, all(vec2<bool>(true, arg_2.x))), 0i);
    return var_4.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    var var_1 = ~max(-2147483647i, global1[_wgslsmith_index_u32(4294967295u, 22u)]);
    global1 = array<i32, 22>();
    var var_2 = vec4<bool>(!var_0.x, false, true, func_3(~(_wgslsmith_mod_u32(3562u, u_input.a) & (13897u | u_input.a)), global0[_wgslsmith_index_u32(1u, 29u)], select(vec3<bool>(var_0.x, !var_0.x, func_1(vec2<bool>(true, var_0.x), global0[_wgslsmith_index_u32(u_input.a, 29u)])), vec3<bool>(var_0.x, true, true), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.a, 22u)], -8208i, -63275i) < func_2()), Struct_2(firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a, 22u)]))));
    let var_3 = global0[_wgslsmith_index_u32(1u, 29u)];
    global0 = array<Struct_1, 29>();
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1447f, _wgslsmith_f_op_f32(select(793f, -1225f, true)), _wgslsmith_f_op_f32(-var_3.a), 1060f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(563f, 206f, 2311f, -516f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.a, var_3.a, -1412f, -502f), vec4<f32>(var_3.a, var_3.a, var_3.a, 2080f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, 1000f, var_3.a, var_3.a) - vec4<f32>(1040f, 679f, var_3.a, -211f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, var_3.a, var_3.a, 1625f)))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) + _wgslsmith_f_op_f32(var_3.a * -2019f)) - 1000f), -1205f, -1485f, _wgslsmith_f_op_f32(f32(-1f) * -1629f)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(vec4<u32>(1u, u_input.a, 80700u, 58422u) << (vec4<u32>(u_input.a, 0u, 22978u, 1u) % vec4<u32>(32u))) >> ((vec4<u32>(1u, u_input.a, u_input.a, u_input.a) & abs(vec4<u32>(6491u, 22185u, u_input.a, 17600u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -386f));
}

