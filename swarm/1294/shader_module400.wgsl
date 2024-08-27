struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: array<bool, 8> = array<bool, 8>(true, true, false, true, true, true, true, true);

var<private> global2: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(34539i, -67448i), vec2<i32>(12995i, -57120i), vec2<i32>(-21867i, 1i));

var<private> global3: u32;

var<private> global4: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(-204f, 1011f), vec2<f32>(-1169f, -1148f), vec2<f32>(1000f, -1000f), vec2<f32>(-836f, -1000f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>) -> bool {
    return global0.x;
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u));
    global0 = !vec4<bool>(false, true, true, any(select(!vec4<bool>(arg_1, true, true, global1[_wgslsmith_index_u32(var_0.x, 8u)]), vec4<bool>(true, true, true, true), true)));
    global1 = array<bool, 8>();
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, 658f, 1000f), vec3<f32>(-499f, -627f, arg_2), global1[_wgslsmith_index_u32(1u, 8u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, -154f), vec3<f32>(-442f, arg_2, -2312f))), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(692f, arg_2, arg_2, arg_2)), countOneBits(global2[_wgslsmith_index_u32(var_0.x, 3u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 920f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(-1502f, arg_2)), _wgslsmith_f_op_f32(-arg_2), arg_2), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 701f, -1705f)) * vec3<f32>(-357f, -561f, 190f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -1617f, arg_2), vec3<f32>(-200f, 1236f, 955f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -813f, -786f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1189f, 442f, arg_2)))))), arg_0.zyy))));
    var var_2 = vec2<i32>(u_input.a.x << (var_0.x % 32u), _wgslsmith_div_i32(36389i, countOneBits(u_input.a.x)));
    return arg_0.x;
}

fn func_2() -> vec4<bool> {
    let var_0 = u_input.a.wy;
    global2 = array<vec2<i32>, 3>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(630f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-593f, -1158f), _wgslsmith_f_op_f32(-1913f * 155f), global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-105f, -253f), 979f, func_3(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 8u)], true, true), true, -286f))) + 637f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(640f, 794f, false)), _wgslsmith_f_op_f32(round(123f)), global1[_wgslsmith_index_u32(11824u, 8u)])))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-402f)), _wgslsmith_f_op_f32(f32(-1f) * -1639f), true))))));
    global2 = array<vec2<i32>, 3>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -670f, 393f, 617f) - vec4<f32>(-380f, 363f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 735f, 780f) + vec4<f32>(var_1.x, -915f, -286f, var_1.x)))))));
    return vec4<bool>((select(~31545u, 1u, any(vec3<bool>(true, false, true))) << (0u % 32u)) == 1u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(1u, 30535u), ~22935u, _wgslsmith_div_u32(76550u, 4294967295u)), vec3<u32>(10658u, 2354u, 4325u)), 8u)], true, !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(238u, 8450u, 4294967295u), reverseBits(vec3<u32>(24448u, 11341u, 4294967295u))) << (min(1u, ~93682u) % 32u), 8u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(856f, 1009f, -147f, -3098f) + vec4<f32>(542f, -1000f, 1471f, -104f)) * vec4<f32>(_wgslsmith_f_op_f32(-1321f - -817f), -1202f, -518f, 2329f)), vec2<i32>(_wgslsmith_mod_i32(~u_input.a.x, i32(-1i) * -2147483647i), abs(u_input.b))), global1[_wgslsmith_index_u32(7604u, 8u)], any(select(!select(vec4<bool>(true, global0.x, true, false), vec4<bool>(global0.x, global1[_wgslsmith_index_u32(12436u, 8u)], false, false), global0.x), !vec4<bool>(true, global0.x, global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(125362u, 8u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 8u)], global0.x, true, global0.x), vec4<bool>(true, global1[_wgslsmith_index_u32(30428u, 8u)], false, true), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)])))), true);
    global4 = array<vec2<f32>, 4>();
    let var_0 = abs(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(~u_input.b, u_input.b >> (36464u % 32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.a.x), vec2<i32>(17922i, -1i)), u_input.a.zw), u_input.a.wz));
    global4 = array<vec2<f32>, 4>();
    global0 = select(select(!(!(!vec4<bool>(false, global0.x, false, false))), !(!(!vec4<bool>(false, false, global0.x, false))), !vec4<bool>(false, global0.x, global1[_wgslsmith_index_u32(max(5021u, 4294967295u), 8u)], global0.x)), func_2(), var_0.x >= _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(u_input.a.yyx, u_input.a.zxw))));
    var var_1 = !select(vec4<bool>(true, select(false, true, 42907i == var_0.x), select(all(global0.xyy), true, true), global0.x), select(func_2(), !(!vec4<bool>(false, global0.x, true, true)), true), !any(global0.wx));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -546f) + _wgslsmith_f_op_f32(f32(-1f) * -1037f))))), _wgslsmith_f_op_f32(select(2278f, _wgslsmith_f_op_f32(403f + 1f), any(select(vec4<bool>(true, true, false, global0.x), select(vec4<bool>(true, true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(15162u, 8u)], false, false, global1[_wgslsmith_index_u32(76u, 8u)]), var_1.x), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], false, true, var_1.x), vec4<bool>(true, var_1.x, true, true), global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1693f, 1017f)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(684f, -683f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(1209f - var_2.x), -1141f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x * -304f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.x)) * _wgslsmith_f_op_f32(trunc(1106f)))))), vec4<i32>(var_0.x, -min(1i, countOneBits(var_0.x)), abs(-1i), 2147483647i), var_0);
}

