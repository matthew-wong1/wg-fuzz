struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25>;

var<private> global1: array<i32, 22> = array<i32, 22>(-35503i, 36711i, 2147483647i, -1i, 19379i, 0i, i32(-2147483648), -22278i, -3824i, i32(-2147483648), -1i, 0i, 1i, -15226i, -1i, 1i, 0i, 6685i, -9706i, -3866i, 74989i, 2147483647i);

var<private> global2: vec3<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    let var_0 = Struct_1(u_input.a.wx);
    var var_1 = Struct_2(~u_input.b, u_input.a.xxw);
    global2 = select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, global2.x, global2.x), !vec3<bool>(global2.x, global2.x, global2.x))), !vec3<bool>(global2.x, any(vec3<bool>(global2.x, true, true)), false), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, global2.x, false), global2.x), select(!vec3<bool>(false, global2.x, false), vec3<bool>(global2.x, true, global2.x), !global2.x), any(select(vec3<bool>(false, false, false), vec3<bool>(global2.x, global2.x, global2.x), global2.x))), vec3<bool>(all(!vec4<bool>(global2.x, false, global2.x, global2.x)), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], 39206i) == ~global1[_wgslsmith_index_u32(21691u, 22u)], _wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.b, 22u)], -84560i) < _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_1.b.x, 22u)], -16017i), vec2<i32>(-41736i, global1[_wgslsmith_index_u32(u_input.b, 22u)]))), select(vec3<bool>(true, true, global2.x), !select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, true, false), vec3<bool>(true, global2.x, global2.x)), global2.x)));
    let var_2 = ~(1846u | abs(max(~var_0.a.x, var_1.a)));
    global1 = array<i32, 22>();
    return global2.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = vec4<bool>(global2.x, global2.x, !global2.x, true);
    global0 = array<vec3<i32>, 25>();
    global2 = !var_0.wyy;
    global2 = !select(vec3<bool>(var_0.x, any(vec2<bool>(var_0.x, false)), any(vec3<bool>(true, true, true))), vec3<bool>(true, var_0.x, !func_3()), vec3<bool>(!(!global2.x), !(!var_0.x), global2.x));
    let var_1 = -_wgslsmith_sub_i32(-10598i, _wgslsmith_dot_vec3_i32(vec3<i32>(-32799i, global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]) | (vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)]) & vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 22u)], 0i, 3441i)), ~vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], 0i) >> (~u_input.a.wzz % vec3<u32>(32u))));
    return Struct_1(vec2<u32>(9429u, u_input.b));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(~u_input.a.x, 22u)];
    global2 = select(!vec3<bool>(global2.x, abs(arg_0.a.x) > _wgslsmith_dot_vec2_u32(arg_0.a, vec2<u32>(216u, arg_0.a.x)), true), !select(select(vec3<bool>(global2.x, false, false), !vec3<bool>(global2.x, true, global2.x), vec3<bool>(true, true, true)), !select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, global2.x, false), global2.x), vec3<bool>(true, true, true)), !vec3<bool>(_wgslsmith_f_op_f32(min(-1000f, 1010f)) >= _wgslsmith_f_op_f32(select(-1485f, 703f, global2.x)), true, !select(global2.x, true, false)));
    let var_1 = -161f;
    var var_2 = _wgslsmith_mod_u32(firstLeadingBit(36171u), arg_0.a.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1765f, _wgslsmith_f_op_f32(f32(-1f) * -2652f), _wgslsmith_f_op_f32(f32(-1f) * -1140f), 143f) * vec4<f32>(_wgslsmith_f_op_f32(-var_1), var_1, _wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_f32(round(-1622f)))))));
    return any(select(select(vec3<bool>(true, true, global2.x), vec3<bool>(global2.x | true, true, false), !vec3<bool>(true, true, global2.x)), vec3<bool>(all(vec3<bool>(true, true, false)) & func_3(), select(true, all(vec3<bool>(global2.x, global2.x, false)), global2.x), global2.x), true));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: f32) -> vec3<f32> {
    global1 = array<i32, 22>();
    global1 = array<i32, 22>();
    let var_0 = select(select(!vec3<bool>(false & arg_0.x, true, true), select(!select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(arg_0.x, arg_0.x, true), false), !select(vec3<bool>(true, true, arg_0.x), vec3<bool>(false, true, false), arg_0.x), func_4(func_2(1914f), -vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], arg_1.x, 1i, -45872i), 4294967295u)), !vec3<bool>(true, !arg_0.x, arg_1.x > -2147483647i)), select(select(vec3<bool>(false, global2.x == global2.x, !global2.x), select(vec3<bool>(arg_0.x, true, true), !vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, global2.x)), !vec3<bool>(global2.x, global2.x, global2.x)), vec3<bool>(arg_0.x, true, arg_0.x), any(select(vec2<bool>(arg_0.x, arg_0.x), global2.zy, vec2<bool>(arg_0.x, global2.x))) & any(select(vec2<bool>(arg_0.x, false), arg_0, global2.x))), arg_0.x);
    var var_1 = 0u;
    var var_2 = true;
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 678f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1540f)) - -239f), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-570f, 1f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(global2.yz, _wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(8811u, 22u)], 45851i, -2147483647i, 2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 22u)], -69051i, global1[_wgslsmith_index_u32(u_input.a.x, 22u)], -43329i)), var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(var_0.x, var_0.x, var_0.x))), vec3<bool>(true, true, true))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_div_f32(-1000f, var_1.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1468f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_0.x) + -738f))), _wgslsmith_f_op_f32(f32(-1f) * -569f));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1(!global2.xz, vec4<i32>(-16112i, -7190i, global1[_wgslsmith_index_u32(31240u, 22u)], 22685i), _wgslsmith_f_op_f32(var_0.x * -155f))).x * _wgslsmith_f_op_vec3_f32(func_1(global2.xx, -(~vec4<i32>(68248i, global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)], -1i)), var_1.x)).x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1692f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -167f))))), _wgslsmith_f_op_f32(-var_1.x));
    var var_2 = Struct_1(~(~(max(vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(4294967295u, 8872u)) ^ vec2<u32>(0u, 15444u))));
    var var_3 = var_2.a.x;
    let var_4 = Struct_3(any(!vec4<bool>(global2.x, global2.x && true, any(vec4<bool>(global2.x, global2.x, global2.x, global2.x)), all(vec4<bool>(global2.x, false, false, global2.x)))), _wgslsmith_mod_vec2_i32(firstLeadingBit(_wgslsmith_add_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(0u, 22u)], 0i), _wgslsmith_sub_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(64239u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec2<i32>(global1[_wgslsmith_index_u32(1u, 22u)], -49698i)))), vec2<i32>(1i, abs(-6707i))), Struct_2(112348u, vec3<u32>(firstLeadingBit(33181u) ^ u_input.b, var_2.a.x, select(select(var_2.a.x, var_2.a.x, false), func_2(var_0.x).a.x, global2.x && false))), vec4<bool>(false, select(true, 1937f != var_1.x, true) & false, select(false, true, global2.x), any(!global2.yy)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(select(global2.zx, vec2<bool>(true, global2.x), global2.x), vec4<i32>(global1[_wgslsmith_index_u32(89506u, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(var_4.c.b.x, 22u)]), 926f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -402f, -1495f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(854f, -892f, var_0.x)))))));
    var var_5 = var_4.c;
    let x = u_input.a;
    s_output = StorageBuffer(~3423u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2054f + -1257f))), countOneBits(vec2<i32>(~31725i, -33385i) >> (_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(1u, 6268u)), u_input.a.yx) % vec2<u32>(32u))));
}

