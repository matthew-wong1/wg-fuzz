struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(16059u, 53762u, 6794u, 4294967295u, 0u, 4294967295u, 4294967295u, 1u, 55243u);

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(0u, false, -511f, vec4<i32>(i32(-2147483648), i32(-2147483648), -40202i, 16749i)), Struct_1(1u, true, -196f, vec4<i32>(1i, 1i, 0i, 0i)), Struct_1(53570u, false, -1794f, vec4<i32>(1i, -11178i, -1603i, -9976i)), Struct_1(9410u, false, 1974f, vec4<i32>(i32(-2147483648), 1i, -26883i, 57443i)), Struct_1(0u, true, -1014f, vec4<i32>(11410i, 32395i, -26554i, 3678i)), Struct_1(9311u, false, -1814f, vec4<i32>(1i, 63966i, -3641i, 2147483647i)), Struct_1(12492u, false, -459f, vec4<i32>(i32(-2147483648), 8533i, 2147483647i, i32(-2147483648))), Struct_1(1u, true, 1546f, vec4<i32>(0i, 2147483647i, 0i, 1i)), Struct_1(0u, true, -799f, vec4<i32>(2147483647i, 1i, -10317i, 2147483647i)), Struct_1(17714u, false, 1063f, vec4<i32>(-22019i, -1760i, 1i, -17058i)), Struct_1(67995u, true, -794f, vec4<i32>(0i, 2147483647i, 0i, 17465i)), Struct_1(12014u, true, -594f, vec4<i32>(45062i, -42287i, 1i, -1i)), Struct_1(0u, true, -307f, vec4<i32>(2147483647i, 5385i, -65013i, -12757i)), Struct_1(1719u, false, 324f, vec4<i32>(-1i, i32(-2147483648), 52281i, 2147483647i)), Struct_1(45905u, false, -1578f, vec4<i32>(-84973i, -11201i, 0i, 41008i)), Struct_1(36254u, false, 622f, vec4<i32>(2147483647i, 2147483647i, 2147483647i, i32(-2147483648))), Struct_1(87295u, true, -1653f, vec4<i32>(-1i, 2147483647i, -1i, 0i)), Struct_1(0u, true, 751f, vec4<i32>(i32(-2147483648), -1i, 1i, 53138i)), Struct_1(64612u, true, -491f, vec4<i32>(0i, 1i, 4889i, 0i)));

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec2<u32>(1u, 22060u)), Struct_2(vec2<u32>(18199u, 0u)), Struct_2(vec2<u32>(1u, 17746u)), Struct_2(vec2<u32>(20107u, 0u)), Struct_2(vec2<u32>(4294967295u, 1u)), Struct_2(vec2<u32>(4294967295u, 1u)), Struct_2(vec2<u32>(1u, 283u)), Struct_2(vec2<u32>(39363u, 20246u)), Struct_2(vec2<u32>(4294967295u, 0u)), Struct_2(vec2<u32>(0u, 4294967295u)), Struct_2(vec2<u32>(54283u, 33257u)), Struct_2(vec2<u32>(4294967295u, 0u)), Struct_2(vec2<u32>(0u, 4294967295u)), Struct_2(vec2<u32>(28609u, 0u)), Struct_2(vec2<u32>(55803u, 0u)), Struct_2(vec2<u32>(23871u, 1u)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    global1 = array<Struct_1, 19>();
    let var_0 = arg_0;
    let var_1 = vec4<bool>(false, arg_2.x, false, arg_1.x);
    let var_2 = global1[_wgslsmith_index_u32(~77742u, 19u)];
    global0 = array<u32, 9>();
    return arg_3;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> vec4<i32> {
    global1 = array<Struct_1, 19>();
    var var_0 = abs(_wgslsmith_mult_i32(arg_1.x, arg_1.x) & 1i) >> (0u % 32u);
    var_0 = 2147483647i;
    var var_1 = Struct_2(vec2<u32>(u_input.c, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(54756u, u_input.a, u_input.a, arg_0.a.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(1u, 9u)], arg_0.a.x, u_input.d, 36123u), min(vec4<u32>(26484u, 17157u, 1u, 0u), vec4<u32>(u_input.c, 1u, u_input.c, 20090u))))));
    var_0 = _wgslsmith_mult_i32(0i, ~_wgslsmith_sub_i32(~(~arg_1.x), -arg_1.x));
    return _wgslsmith_mult_vec4_i32(min(firstTrailingBit(-(arg_1 << (vec4<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(var_1.a.x, 9u)], 1u) % vec4<u32>(32u)))), -max(-vec4<i32>(0i, 0i, arg_1.x, arg_1.x), arg_1)), _wgslsmith_mult_vec4_i32(vec4<i32>(~(i32(-1i) * -66168i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(arg_1.x, 19426i)), _wgslsmith_mod_i32(2147483647i, -34169i)), ~0i, 1i), arg_1));
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    global0 = array<u32, 9>();
    var var_0 = 104f;
    let var_1 = select(vec3<bool>((-arg_0.x != _wgslsmith_mod_i32(-1i, 1i)) | all(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), all(vec4<bool>(true, false, true, true)))), any(vec2<bool>(true, true))), vec3<bool>(true, select(true, true, true), any(vec2<bool>(any(vec3<bool>(true, false, false)), all(vec3<bool>(true, false, false))))), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)) || true, true, all(vec3<bool>(true, true, true))), any(vec3<bool>(true, true, select(false, true, false)))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(-1547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-851f - 1877f) * _wgslsmith_f_op_f32(f32(-1f) * -308f))), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-384f, -1000f)) + -817f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1413f)))) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1031f, 321f, var_1.x)), 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(904f + 1000f) - 2636f))));
    global0 = array<u32, 9>();
    return Struct_1(~u_input.a, !var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x * 1099f), -563f)), arg_0);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>) -> u32 {
    var var_0 = func_4(func_3(func_2(Struct_2(~vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], 0u)), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), select(false, false, false)), vec2<bool>(all(vec4<bool>(false, false, false, true)), select(true, true, false)), Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 16427u), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], 4294967295u)))), vec4<i32>(arg_0.x, arg_1.x, 1i, arg_0.x) << (vec4<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2912u, 9u)], 9u)], 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25371u, 9u)], 9u)]), ~12818u, ~u_input.a, 1u) % vec4<u32>(32u))));
    global2 = array<Struct_2, 16>();
    global2 = array<Struct_2, 16>();
    var var_1 = func_4(-countOneBits(var_0.d)).a;
    var var_2 = Struct_1(~(~global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(var_0.a, 9u)] << (global0[_wgslsmith_index_u32(5728u, 9u)] % 32u)), 9u)]), false, var_0.c, var_0.d);
    return ~global0[_wgslsmith_index_u32(49304u, 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(func_1(vec2<i32>(-2147483647i, 0i), vec2<i32>(~2147483647i, ~(-15927i))), _wgslsmith_sub_u32(countOneBits(~63030u), _wgslsmith_add_u32(~4294967295u, u_input.c))), 16u)];
    global0 = array<u32, 9>();
    var var_1 = _wgslsmith_dot_vec2_u32(var_0.a, select(_wgslsmith_add_vec2_u32(var_0.a >> (abs(vec2<u32>(global0[_wgslsmith_index_u32(21646u, 9u)], 4294967295u)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(func_2(global2[_wgslsmith_index_u32(u_input.a, 16u)], vec3<bool>(true, false, false), vec2<bool>(false, true), global2[_wgslsmith_index_u32(0u, 16u)]).a, ~var_0.a)), _wgslsmith_div_vec2_u32(vec2<u32>(~1u, ~4294967295u), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 800u), var_0.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(16260u, global0[_wgslsmith_index_u32(53190u, 9u)]), var_0.a, vec2<u32>(1u, var_0.a.x)))), ~3508i == ~select(-1i, 52412i, false)));
    let var_2 = vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 9u)], var_0.a.x, ~max(3376u, select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 9u)], ~1u, true)));
    let var_3 = func_2(Struct_2(_wgslsmith_mult_vec2_u32(~var_0.a, _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(1u, var_0.a.x)), vec2<u32>(var_0.a.x, var_0.a.x)))), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true))), !(!vec2<bool>(all(vec2<bool>(false, true)), true)), Struct_2(var_2.xw));
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~(~(0i)), var_2);
}

