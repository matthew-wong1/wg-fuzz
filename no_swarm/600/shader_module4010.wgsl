struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(0u, 4294967295u, 0u, 21345u, 59363u, 1294u, 101863u, 4294967295u, 146644u, 43643u, 0u, 5510u, 2422u, 93992u, 1264u, 1u, 1335u, 0u, 4294967295u, 4294967295u, 12275u, 1u, 1u, 4294967295u, 22913u, 7812u, 48510u, 4294967295u, 0u, 68923u);

var<private> global1: vec3<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> bool {
    let var_0 = any(vec2<bool>(true, true));
    var var_1 = 197f;
    let var_2 = _wgslsmith_dot_vec3_i32(~min(vec3<i32>(_wgslsmith_mult_i32(55827i, global1.x), 22765i, abs(u_input.c)), countOneBits(min(vec3<i32>(u_input.c, global1.x, 0i), vec3<i32>(-13672i, u_input.a.x, global1.x)))), select(vec3<i32>(global1.x, 2147483647i, -20257i), ~u_input.a.wxy, true && !(var_0 || false)));
    return !any(!select(select(vec2<bool>(true, false), vec2<bool>(var_0, false), vec2<bool>(var_0, false)), select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), vec2<bool>(true, false)), var_0 || true));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_dot_vec2_i32(abs(max(vec2<i32>(0i, arg_0.c) >> (vec2<u32>(34779u, 0u) % vec2<u32>(32u)), countOneBits(vec2<i32>(global1.x, -1i)))), _wgslsmith_mod_vec2_i32(firstTrailingBit(-global1.yx), u_input.a.zy)) & -arg_0.a;
    var var_1 = !select(!vec3<bool>(any(vec3<bool>(true, false, false)), all(vec3<bool>(false, false, true)), true), select(vec3<bool>(true, true, all(vec4<bool>(false, true, false, true))), vec3<bool>(true, true, false), vec3<bool>(true, any(vec4<bool>(false, true, false, true)), true)), vec3<bool>(func_1(), false, false));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(275f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1162f)), -475f) + -1000f), -1461f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-480f, 915f, 325f), vec3<f32>(301f, -638f, 581f), true)) + vec3<f32>(-627f, -323f, 262f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1617f, -578f, -986f), vec3<f32>(594f, -998f, 1851f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1234f, -673f, 1000f))))))));
    let var_3 = Struct_1(-(var_0 | _wgslsmith_add_i32(0i, 1i)) >> (_wgslsmith_add_u32(0u, reverseBits(~4294967295u)) % 32u), vec2<u32>(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(arg_0.b.x, arg_0.b.x, 4294967295u, u_input.b)), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 30u)], 81862u, arg_0.b.x, 4294967295u) | ~vec4<u32>(arg_0.b.x, 26947u, arg_0.b.x, arg_0.b.x)), u_input.b), _wgslsmith_mod_i32(29125i, u_input.a.x));
    var var_4 = 1i;
    return arg_0.a;
}

fn func_2() -> bool {
    global0 = array<u32, 30>();
    var var_0 = vec2<bool>(all(vec2<bool>(_wgslsmith_mod_u32(4294967295u, 117103u) < global0[_wgslsmith_index_u32(4294967295u, 30u)], true)), true & (_wgslsmith_mod_i32(u_input.a.x, -35155i) <= -(~14663i)));
    var var_1 = var_0.x;
    var var_2 = (~(-min(36273i, 0i)) | func_3(Struct_1(-1i, ~vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 30u)], u_input.b), -2147483647i))) << (u_input.b % 32u);
    var_1 = !(!(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~u_input.b, 30u)], _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5547u, 30u)], 30u)], 30u)], 30u)])) != global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(u_input.b, 30u)]), 30u)]));
    return (68912u >> (u_input.b % 32u)) != _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 37893u) >> (firstLeadingBit(vec2<u32>(u_input.b, 0u)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.b, 30u)], 3361u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(20893u, 30u)], 61689u), vec2<u32>(u_input.b, 100201u)))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 30u)], 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.yww;
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), !vec2<bool>(any(vec2<bool>(false, false)), false));
    var var_2 = any(select(select(!vec4<bool>(true, var_1.x, var_1.x, true), !(!vec4<bool>(false, true, var_1.x, false)), _wgslsmith_dot_vec2_i32(u_input.a.ww, global1.xx) != _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.c, -15212i, global1.x), vec4<i32>(-46722i, 2916i, global1.x, -2147483647i))), vec4<bool>(_wgslsmith_f_op_f32(step(-119f, -185f)) < _wgslsmith_f_op_f32(-1090f * 615f), true, func_1(), false), select(vec4<bool>(true, var_1.x == true, var_1.x, all(vec3<bool>(true, true, true))), select(select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, false, false), true), select(vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(false, var_1.x, var_1.x, var_1.x), true), vec4<bool>(false, true, var_1.x, var_1.x)), false)));
    var var_3 = -1070f;
    global0 = array<u32, 30>();
    let var_4 = select(vec4<bool>(true, var_1.x, var_1.x, !(false | (u_input.b <= 6752u))), vec4<bool>(func_2(), select(var_1.x & true, var_1.x, !(!var_1.x)), all(vec3<bool>(false, !var_1.x, false)), true), !(!(!select(vec4<bool>(false, false, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(false, false, true, false)))));
    var var_5 = select(select(abs(vec3<u32>(25163u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(296u, 30u)], 30u)], 23312u)), firstTrailingBit(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 30u)], 30u)], 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)])), !(!vec3<bool>(var_1.x, var_4.x, var_1.x))), vec3<u32>(countOneBits(41795u), 1u, ~85318u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], 66217u), ~vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 30u)], 20072u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)])), !(var_1.x & false) && any(var_4)) << (_wgslsmith_mod_vec3_u32(countOneBits(~vec3<u32>(37933u, global0[_wgslsmith_index_u32(54330u, 30u)], 46694u)), ~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(13730u, 68320u, global0[_wgslsmith_index_u32(96273u, 30u)])), max(vec3<u32>(37602u, u_input.b, u_input.b), vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 30u)], 1u, 4294967295u)))) % vec3<u32>(32u));
    var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -740f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1868f))))) + _wgslsmith_f_op_f32(max(586f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-440f - 985f) - _wgslsmith_f_op_f32(select(1000f, -493f, true))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -725f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-537f, 509f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-168f, -914f)) - vec2<f32>(-1304f, 591f)))), ~firstTrailingBit(vec3<u32>(reverseBits(global0[_wgslsmith_index_u32(59507u, 30u)]), ~global0[_wgslsmith_index_u32(4294967295u, 30u)], u_input.b)), -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, u_input.c), ~u_input.a.zw), u_input.c), _wgslsmith_sub_i32(~global1.x, var_0.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-214f, 489f, 1404f)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1121f, 142f, -1071f) - vec3<f32>(819f, 739f, -843f))))))));
}

