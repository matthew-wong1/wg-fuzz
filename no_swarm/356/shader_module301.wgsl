struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<i32> = vec2<i32>(0i, 0i);

var<private> global2: array<f32, 8>;

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -255f), vec4<bool>(true, all(select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, arg_0), arg_0), vec3<bool>(arg_0, arg_0, arg_0))), !(_wgslsmith_f_op_f32(min(arg_1.a, -390f)) >= _wgslsmith_f_op_f32(-global3.a)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-547f, -748f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(359f, -1939f))))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.a)), arg_1.a), 679f)), !vec4<bool>(-9866i >= firstTrailingBit(1i), all(vec2<bool>(true, false)), var_0.b.x, select(all(vec3<bool>(arg_0, var_0.b.x, var_0.b.x)), var_0.b.x, true)), var_0.c);
    var var_2 = var_0;
    var var_3 = Struct_2(arg_2.a);
    global2 = array<f32, 8>();
    return var_2.a;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1649f * _wgslsmith_f_op_f32(-global3.a))))) * _wgslsmith_f_op_f32(-1138f - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~u_input.b, 8u)] - -481f)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(306f * 783f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(abs(global3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1511f - 322f)), _wgslsmith_f_op_f32(func_3(true, Struct_1(-2060f), Struct_2(vec3<u32>(u_input.b, arg_0, arg_0)), Struct_2(vec3<u32>(0u, arg_0, 27867u)))), _wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(select(1000f, 350f, false))))), 17205u);
    var var_2 = Struct_1(global3.a);
    let var_3 = ~vec2<i32>(global1.x, -global1.x);
    global0 = _wgslsmith_clamp_u32(76701u, 86201u, var_1.c);
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(10031u, 8u)])), 125f)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(-1169f);
    global2 = array<f32, 8>();
    var_0 = func_2(u_input.a.x);
    let var_1 = arg_3.a.x;
    global0 = ~(countOneBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a.wyx, vec3<u32>(var_1, arg_3.a.x, 2648u)), arg_3.a.x, var_1)) << (1u % 32u));
    return func_2(max(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a.x, arg_3.a.x, 4294967295u, 0u), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a), u_input.a))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    global2 = array<f32, 8>();
    return Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(66548u, ~arg_3.a.x, u_input.b), arg_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(~countOneBits(-_wgslsmith_div_i32(global1.x, 1i)), _wgslsmith_add_i32(~16041i, min(global1.x, max(-1714i, 1i) | global1.x)));
    let var_0 = func_4(false, func_1(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(41550u, 8u)]), global3.a)), Struct_2(vec3<u32>(u_input.b, u_input.b, _wgslsmith_mod_u32(u_input.a.x, 0u))), global1.x, Struct_2(countOneBits(u_input.a.zyw))), all(vec3<bool>(_wgslsmith_mod_u32(u_input.a.x, 0u) > u_input.b, true, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))))), Struct_2(select(~vec3<u32>(4294967295u, 0u, u_input.a.x), u_input.a.wzz, vec3<bool>(true, true, 3209u <= u_input.a.x))));
    let var_1 = global3.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a * 1219f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, Struct_1(global2[_wgslsmith_index_u32(21239u, 8u)]), func_4(true, Struct_1(-914f), true, Struct_2(vec3<u32>(20647u, u_input.a.x, 68365u))), Struct_2(u_input.a.wwx))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(703f))))));
    let var_3 = ~(~abs(_wgslsmith_mult_i32(global1.x, _wgslsmith_mult_i32(global1.x, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(0u), ~var_0.a.zy & _wgslsmith_sub_vec2_u32(~select(vec2<u32>(86387u, u_input.a.x), vec2<u32>(2985u, u_input.b), vec2<bool>(true, true)), select(abs(vec2<u32>(37232u, var_0.a.x)), _wgslsmith_add_vec2_u32(u_input.a.xz, u_input.a.wy), true)));
}

