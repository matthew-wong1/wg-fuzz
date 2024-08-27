struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<bool>, 30>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: u32) -> u32 {
    global1 = array<vec4<bool>, 30>();
    let var_0 = !select(global1[_wgslsmith_index_u32(arg_2, 30u)], select(vec4<bool>(all(global1[_wgslsmith_index_u32(0u, 30u)]), select(false, arg_0.x, true), 4294967295u >= u_input.a.x, true), vec4<bool>(true, true, any(global1[_wgslsmith_index_u32(arg_2, 30u)]), arg_0.x || true), any(vec2<bool>(arg_0.x, true))), arg_0.x);
    let var_1 = Struct_3(vec4<u32>(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(u_input.a | u_input.a, max(u_input.a, vec4<u32>(arg_2, 0u, arg_2, u_input.a.x)))), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(34122u, u_input.a.x, 4294967295u, 4294967295u), vec4<u32>(42125u, 1u, u_input.a.x, arg_2)), u_input.a.x), ~_wgslsmith_mult_u32(arg_2 ^ 45167u, arg_2), 0u), vec4<bool>(true, true, !all(var_0.yzy), arg_0.x), Struct_2(1754f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1)))), Struct_1(arg_1));
    global1 = array<vec4<bool>, 30>();
    let var_2 = Struct_4(var_1, var_1.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.d.a, _wgslsmith_f_op_f32(round(arg_1))), _wgslsmith_f_op_f32(-1745f * _wgslsmith_f_op_f32(-var_1.d.a)), false)) + _wgslsmith_div_f32(var_1.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) + _wgslsmith_f_op_f32(var_1.d.a - arg_1)))));
    return 1u;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec2<u32>) -> u32 {
    var var_0 = 35742u | func_3(vec3<bool>(all(global1[_wgslsmith_index_u32(~arg_3.x, 30u)]), false, 1i >= arg_0.x), _wgslsmith_f_op_f32(trunc(arg_1.x)), ~(~_wgslsmith_div_u32(arg_2.a.a.x, 0u)));
    let var_1 = ~(vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_mod_u32(6791u, arg_2.a.a.x))) & countOneBits(arg_2.a.a.ww));
    let var_2 = arg_0.x != 0i;
    var_0 = 0u;
    let var_3 = !(~countOneBits(1u) <= _wgslsmith_mult_u32(arg_3.x >> (var_1.x % 32u), ~_wgslsmith_sub_u32(u_input.a.x, 1u)));
    return ~1u;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: i32) -> bool {
    var var_0 = ~vec4<u32>(~(~(~35371u)), max(u_input.a.x, func_2(vec3<i32>(2147483647i, u_input.b.x, arg_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_1, 1481f) + vec3<f32>(arg_1, 1152f, 809f)), Struct_4(Struct_3(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<bool>(true, false, true, false), Struct_2(-1000f, Struct_1(-1410f)), Struct_1(arg_1)), arg_1, arg_1), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1567u), vec2<u32>(u_input.a.x, 2197u)))), ~func_3(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(arg_1 * arg_0), u_input.a.x), func_2(~(~vec3<i32>(42546i, arg_2, arg_2)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(790f, -1109f, -545f)))), Struct_4(Struct_3(vec4<u32>(0u, 1u, 31491u, 12511u), global1[_wgslsmith_index_u32(u_input.a.x, 30u)], Struct_2(arg_1, Struct_1(-1126f)), Struct_1(-1000f)), _wgslsmith_f_op_f32(max(-1000f, -634f)), _wgslsmith_f_op_f32(-arg_0)), vec2<u32>(u_input.a.x, u_input.a.x)));
    var var_1 = var_0.x;
    var_0 = vec4<u32>(_wgslsmith_add_u32(~u_input.a.x, 12984u), 1u, ~_wgslsmith_clamp_u32(~(~u_input.a.x), 0u, ~var_0.x), ~(~select(u_input.a.x << (52312u % 32u), var_0.x, arg_0 == arg_0)));
    var var_2 = Struct_5(reverseBits(vec3<i32>(_wgslsmith_sub_i32(-35572i, 6474i), countOneBits(-28636i), -arg_2)), vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_f32(round(arg_1))));
    global0 = !var_2.b.x | var_2.b.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(2349f)), _wgslsmith_f_op_f32(f32(-1f) * -629f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -668f), u_input.b.x);
    global1 = array<vec4<bool>, 30>();
    let var_1 = Struct_5(vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 9283i), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.b.x, -1i), vec3<i32>(u_input.b.x, 9928i, u_input.b.x))), u_input.b.x, ~u_input.b.x), !select(!vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, false, !var_0), !all(vec3<bool>(false, var_0, var_0))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -712f)))));
    let var_2 = countOneBits(firstTrailingBit(_wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.xy)));
    global1 = array<vec4<bool>, 30>();
    let var_3 = 29474u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u << (~var_2.x % 32u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(39561u, u_input.a.x, var_2.x), _wgslsmith_mult_u32(85019u, var_3)), 24341u), 221f);
}

