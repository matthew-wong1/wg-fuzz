struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(746f, -1093f, -1074f, 1213f, -1588f, 1000f, -642f, 1000f, -2092f, 1405f, 579f, 611f, 100f, -517f, 247f, -774f, 1382f, -437f, 867f, -264f, 1350f, -1000f, -335f, 823f, 589f, -1000f, -1348f, -752f, -813f, 545f);

var<private> global1: array<vec4<u32>, 28>;

var<private> global2: vec3<f32>;

var<private> global3: f32 = -746f;

var<private> global4: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>) -> i32 {
    let var_0 = -1520f;
    let var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~4294967295u, ~1u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u)) << (firstTrailingBit(~_wgslsmith_div_u32(1u, 90483u)) % 32u), ~(~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 45647u, 334u), vec3<u32>(0u, 0u, 1u)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-798f, -1588f, var_0, -2353f), vec4<f32>(global0[_wgslsmith_index_u32(var_1, 30u)], 876f, 610f, -350f)), vec4<f32>(global2.x, -1035f, 936f, -934f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1000f, global0[_wgslsmith_index_u32(48276u, 30u)])), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_1, 30u)], 191f)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f + global2.x)), -904f, _wgslsmith_f_op_f32(floor(-1000f))), select(all(select(vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(true, true, arg_1.x, arg_1.x), vec4<bool>(false, false, true, arg_1.x))), any(vec4<bool>(true, arg_1.x, false, false)), true) || ((-2147483647i <= arg_0.x) & arg_1.x)));
    var var_3 = _wgslsmith_div_i32(arg_0.x, _wgslsmith_mod_i32(1i ^ u_input.c.x, _wgslsmith_add_i32(-5542i, 11436i)) | arg_0.x) ^ 1i;
    global3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x)));
    return ~u_input.d;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> vec4<f32> {
    let var_0 = -(~select(-(vec2<i32>(u_input.a, u_input.c.x) | arg_0.yy), arg_0.zy, global2.x <= _wgslsmith_f_op_f32(abs(global2.x))));
    let var_1 = arg_1;
    let var_2 = vec3<u32>(~4294967295u, arg_2.x, 1u);
    var var_3 = func_3(vec3<i32>(arg_0.x, -_wgslsmith_dot_vec3_i32(min(arg_0, vec3<i32>(var_1.a, 1i, -2147483647i)), arg_0 | arg_0), _wgslsmith_div_i32(_wgslsmith_sub_i32(var_1.a, arg_1.a), 1i) << (0u % 32u)), !vec3<bool>(true, true, var_1.d));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 30u)])) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 30u)])))));
    return _wgslsmith_div_vec4_f32(vec4<f32>(-867f, -487f, -756f, var_4.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], -1630f, var_4.x, -457f))), vec4<f32>(var_4.x, global0[_wgslsmith_index_u32(select(arg_2.x, 45183u, false), 30u)], _wgslsmith_f_op_f32(abs(1166f)), -416f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(arg_2.x, 30u)], -1296f, -1084f, global2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(39254u, 30u)], 169f, -1125f, -348f) + vec4<f32>(182f, global0[_wgslsmith_index_u32(6069u, 30u)], 1161f, global2.x))) - vec4<f32>(global0[_wgslsmith_index_u32(abs(arg_2.x), 30u)], _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 30u)] * -1012f), _wgslsmith_f_op_f32(select(global2.x, global0[_wgslsmith_index_u32(var_2.x, 30u)], var_1.e))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: u32, arg_3: i32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(-19953i, u_input.d, u_input.d), Struct_1(0i, vec2<bool>(false, true), vec2<bool>(false, true), false, true), vec3<u32>(arg_2, 4294967295u, 23768u))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, 2563f, 1040f, global0[_wgslsmith_index_u32(arg_2, 30u)]), vec4<f32>(arg_0.x, 781f, -1172f, -381f), false))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1845f, _wgslsmith_f_op_f32(340f + -753f)), _wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))), -2144f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1453f, 669f, -368f, -666f))))));
    let var_1 = ~(~select(~abs(vec2<u32>(66063u, arg_2)), firstLeadingBit(vec2<u32>(arg_2, arg_2)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))));
    let var_2 = Struct_1(~arg_3, vec2<bool>(any(vec2<bool>(true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), vec2<bool>((_wgslsmith_clamp_i32(arg_1, -2147483647i, arg_3) > 1i) | true, !(!any(vec4<bool>(false, false, true, false)))), all(vec3<bool>(true, true, true)), false);
    var var_3 = select(select(!var_2.c, vec2<bool>(any(!vec4<bool>(false, false, false, var_2.c.x)), true), var_2.c), vec2<bool>(true, !(!var_2.d)), select(select(var_2.b, vec2<bool>(global2.x > global2.x, !var_2.b.x), !vec2<bool>(var_2.b.x, false)), !select(!var_2.b, select(var_2.b, vec2<bool>(var_2.e, var_2.e), false), var_2.c), min(1u, arg_2 >> (arg_2 % 32u)) > ~select(0u, arg_2, true)));
    var var_4 = -23922i;
    return max(~(global1[_wgslsmith_index_u32(38309u, 28u)] & _wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(~var_1.x, 28u)], abs(vec4<u32>(4294967295u, 1u, arg_2, var_1.x)))), global1[_wgslsmith_index_u32(1u, 28u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global2.x);
    let var_1 = ~firstTrailingBit(global1[_wgslsmith_index_u32(84992u << (~4294967295u % 32u), 28u)]) << (~(~_wgslsmith_mod_vec4_u32(func_1(vec3<f32>(-300f, global0[_wgslsmith_index_u32(35433u, 30u)], 1507f), u_input.a, 1u, u_input.c.x), vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -205f);
    var var_2 = Struct_1(-2147483647i, !vec2<bool>(any(vec4<bool>(true, true, true, true)), (var_1.x >= 15952u) | false), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), any(vec4<bool>(var_1.x >= 29057u, false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), true)), false);
    var var_3 = Struct_1(~(-16342i), var_2.b, vec2<bool>(var_2.a < _wgslsmith_div_i32(-67372i, 1i), !any(vec3<bool>(var_2.e, false, false))), true, false && var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(61698u, reverseBits(34325u), ~(-vec3<i32>(-1i, -2147483647i, var_3.a)) >> (~vec3<u32>(min(73692u, var_1.x), ~var_1.x, ~var_1.x) % vec3<u32>(32u)));
}

