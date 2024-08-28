struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<u32, 18>;

var<private> global2: u32 = 1u;

var<private> global3: array<bool, 30> = array<bool, 30>(false, false, true, true, false, false, true, false, false, false, true, false, true, false, true, false, true, false, false, true, true, false, true, false, true, false, true, false, true, false);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global1 = array<u32, 18>();
    global0 = _wgslsmith_f_op_f32(196f * 1000f);
    var var_0 = ~(~(~((vec3<u32>(global1[_wgslsmith_index_u32(1u, 18u)], u_input.c, 68555u) >> (vec3<u32>(1u, u_input.d, u_input.b) % vec3<u32>(32u))) | abs(vec3<u32>(global1[_wgslsmith_index_u32(u_input.c, 18u)], 80057u, 1u)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(663f, 1f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-238f, -298f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-247f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-803f - -1322f))))))), _wgslsmith_f_op_f32(abs(1000f)));
    let var_2 = var_1.xxx;
    return 4294967295u >> (_wgslsmith_dot_vec3_u32(max(~vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(18008u, 18u)], 68729u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 16606u, var_0.x), vec3<u32>(1u, 1u, u_input.c))) ^ ~vec3<u32>(0u, var_0.x, 4294967295u), _wgslsmith_add_vec3_u32(~vec3<u32>(2541u, 44050u, u_input.b), reverseBits(select(vec3<u32>(85490u, var_0.x, 4294967295u), vec3<u32>(21810u, 116753u, 1u), false)))) % 32u);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = arg_2.a;
    return vec4<u32>(~50093u, ~u_input.b, global1[_wgslsmith_index_u32(u_input.c, 18u)], global1[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(u_input.b | 26561u, 18u)] & _wgslsmith_mult_u32(abs(1u), func_3()), u_input.b), 18u)]);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<u32> {
    return ~firstLeadingBit(abs(~func_2(arg_1, global3[_wgslsmith_index_u32(1u, 30u)], arg_1, arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2455f, _wgslsmith_div_f32(-1390f, 262f), _wgslsmith_div_f32(-1081f, -730f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1463f, -1041f, 313f), vec3<f32>(-2537f, -751f, -1626f))))));
    global3 = array<bool, 30>();
    var var_1 = _wgslsmith_add_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(vec4<i32>(-197i, u_input.a.x & u_input.a.x, firstTrailingBit(72585i), 1i) << (_wgslsmith_mult_vec4_u32(func_1(u_input.a, Struct_2(Struct_1(vec3<f32>(-1616f, var_0.x, -557f), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 30u)], true, false)), Struct_1(var_0, vec3<bool>(true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 30u)], global3[_wgslsmith_index_u32(83776u, 30u)])), -2147483647i)), ~vec4<u32>(0u, global1[_wgslsmith_index_u32(15328u, 18u)], 12101u, global1[_wgslsmith_index_u32(4294967295u, 18u)])) % vec4<u32>(32u)), vec4<i32>(2147483647i, -countOneBits(u_input.a.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), i32(-1i) * -13873i), ~u_input.a.x)));
    global2 = _wgslsmith_mod_u32(u_input.b, 0u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, var_0.x)));
    var var_3 = vec4<u32>(1u, _wgslsmith_dot_vec4_u32(func_1(vec4<i32>(20797i, -21609i, var_1.x, var_1.x), Struct_2(Struct_1(var_0, vec3<bool>(false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 30u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 30u)])), Struct_1(vec3<f32>(1549f, var_0.x, var_2), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 30u)], global3[_wgslsmith_index_u32(15113u, 30u)], false)), var_1.x)), vec4<u32>(1u, _wgslsmith_add_u32(0u, u_input.c), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6066u | u_input.b, 18u)], 18u)], global1[_wgslsmith_index_u32(u_input.b, 18u)] | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 18u)], 18u)])), func_3(), 1u) >> (vec4<u32>(1u, ~(~func_3()), func_3(), ~_wgslsmith_div_u32(u_input.b, 24033u)) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_f32(-612f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0 * _wgslsmith_f_op_vec3_f32(exp2(var_0)))), !(!vec3<bool>(global3[_wgslsmith_index_u32(53269u, 30u)], global3[_wgslsmith_index_u32(4294967295u, 30u)], false))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_0.x, _wgslsmith_f_op_f32(-237f * var_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_2, -105f))), !select(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 30u)], false, false), vec3<bool>(global3[_wgslsmith_index_u32(24726u, 30u)], false, global3[_wgslsmith_index_u32(31669u, 30u)]), vec3<bool>(global3[_wgslsmith_index_u32(112978u, 30u)], global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(0u, 30u)])), vec3<bool>(false, true, global3[_wgslsmith_index_u32(u_input.d, 30u)]), select(vec3<bool>(false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_3.x, 18u)], 30u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 30u)]), vec3<bool>(true, false, false), vec3<bool>(true, global3[_wgslsmith_index_u32(var_3.x, 30u)], true)))), ~(-5283i));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_sub_u32(~var_3.x, u_input.d), ~0u, var_3.x, ~firstLeadingBit(1u)));
}

