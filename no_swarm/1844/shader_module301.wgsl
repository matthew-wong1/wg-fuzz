struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 6>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> Struct_1 {
    global0 = -1181f;
    var var_0 = global3[_wgslsmith_index_u32(u_input.a, 6u)];
    var var_1 = u_input.d;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(global1.a.x + 1711f))))) + _wgslsmith_f_op_f32(-global1.a.x))));
    var var_2 = global3[_wgslsmith_index_u32(min(6905u, ~2944u), 6u)];
    return global3[_wgslsmith_index_u32(4294967295u, 6u)];
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.x))) - _wgslsmith_f_op_f32(min(670f, global1.a.x))), 181f, -630f));
    global2 = !all(vec3<bool>(!(u_input.e.x <= 0u), true, true));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 1f), global1.a.x, _wgslsmith_f_op_f32(round(arg_0.a.x)), global1.a.x)));
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(1028f, _wgslsmith_f_op_f32(f32(-1f) * -1326f), var_0.x), _wgslsmith_f_op_vec3_f32(-global1.a)), 1i);
    global2 = var_1.b == 7137i;
    return vec4<bool>(true, all(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), true)), !(var_1.a.x <= arg_0.a.x), true);
}

fn func_1() -> u32 {
    let var_0 = !(!func_3(func_2(vec4<bool>(false, false, true, true), true)));
    global0 = -1517f;
    let var_1 = func_2(vec4<bool>(var_0.x, !any(vec2<bool>(var_0.x, var_0.x)), all(vec2<bool>(var_0.x, true)), ~4294967295u != u_input.d.x), false);
    let var_2 = Struct_1(var_1.a, ~(-40143i) & -global1.b);
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f + 1391f), -301f, 490f)))), 2147483647i);
    return _wgslsmith_div_u32(u_input.d.x, _wgslsmith_dot_vec4_u32(countOneBits(~firstLeadingBit(vec4<u32>(u_input.d.x, u_input.a, u_input.a, u_input.d.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.a, 23892u, u_input.a), 88720u, abs(7035u), u_input.e.x), vec4<u32>(u_input.a, ~84921u, ~u_input.d.x, ~u_input.d.x))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global1.a))), 1i);
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(reverseBits(44184u), u_input.d.x), abs(~countOneBits(0u)), u_input.d.x);
    var var_2 = var_0.a.x;
    var var_3 = vec2<i32>(19027i, _wgslsmith_add_i32(0i, (max(-9654i, var_0.b) ^ ~u_input.b.x) & select(_wgslsmith_add_i32(41367i, global1.b), firstTrailingBit(39511i), true)));
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a.x * 432f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global1.a.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -514f)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), -148f) + -844f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3[_wgslsmith_index_u32(~countOneBits(max(u_input.e.x, 84255u) << (0u % 32u)), 6u)];
    global1 = global3[_wgslsmith_index_u32(u_input.a, 6u)];
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(global3[_wgslsmith_index_u32(func_1(), 6u)])) * global1.a.x)));
    var var_1 = global3[_wgslsmith_index_u32(u_input.a, 6u)];
    let var_2 = func_2(vec4<bool>(true, true || all(func_3(global3[_wgslsmith_index_u32(0u, 6u)]).yy), var_0 >= _wgslsmith_f_op_f32(-var_1.a.x), true), true);
    let var_3 = func_2(vec4<bool>((u_input.a <= u_input.a) && true, false, any(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true)), true), all(vec3<bool>(any(func_3(global3[_wgslsmith_index_u32(u_input.d.x, 6u)]).zz), true, ~u_input.b.x > max(u_input.b.x, var_1.b))));
    global3 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), u_input.d), vec2<u32>(3014u, ~0u), false) ^ ~u_input.d, select(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(u_input.a), u_input.e.x), u_input.d), true), _wgslsmith_mod_vec2_u32(u_input.d, ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(17965u, u_input.a), u_input.d))));
}

