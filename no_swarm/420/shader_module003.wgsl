struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-685f, -2281f, 689f, -2196f), vec4<u32>(4294967295u, 27857u, 44523u, 66390u));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>) -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(global1.a, global1.a))))), vec4<u32>(1u, u_input.a, global1.b.x, 0u));
    let var_0 = reverseBits(select(global1.b, firstTrailingBit(_wgslsmith_mod_vec4_u32(max(global1.b, vec4<u32>(1u, 0u, 1094u, u_input.a)), global1.b << (global1.b % vec4<u32>(32u)))), vec4<bool>(true == any(vec2<bool>(false, true)), !(-1i >= arg_0.x), true, !all(vec2<bool>(true, true)))));
    global0 = global1.a.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 525f, global1.a.x, -871f) - vec4<f32>(global1.a.x, global1.a.x, 832f, -933f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(global1.a)))))), var_0);
    return 10372u;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1460f - global1.a.x) + 1515f), -676f, _wgslsmith_f_op_f32(-global1.a.x), global1.a.x), vec4<u32>(_wgslsmith_sub_u32(37648u, u_input.a ^ global1.b.x) | reverseBits(1u), global1.b.x, ~func_3(vec2<i32>(-20481i, 43777i) << (global1.b.xz % vec2<u32>(32u)), vec2<i32>(2147483647i, 43849i)), _wgslsmith_dot_vec3_u32(countOneBits(global1.b.yyz), vec3<u32>(~0u, global1.b.x, global1.b.x))));
    let var_1 = Struct_1(global1.a, global1.b);
    var_0 = var_1;
    let var_2 = var_1;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(666f, var_0.a.x, global1.a.x, 135f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(255f + 644f) - _wgslsmith_f_op_f32(sign(-140f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1190f, var_0.a.x)))), _wgslsmith_f_op_f32(exp2(var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, var_2.a.x) + 604f)))), min(~(~min(vec4<u32>(4294967295u, 1u, var_0.b.x, var_0.b.x), vec4<u32>(var_2.b.x, 43220u, 9357u, 67118u))), global1.b));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))))))));
}

fn func_1() -> f32 {
    global0 = global1.a.x;
    var var_0 = any(select(vec4<bool>(_wgslsmith_f_op_f32(763f + 1000f) >= _wgslsmith_f_op_f32(func_2()), !all(vec3<bool>(false, true, false)), abs(u_input.a) == (303u << (1u % 32u)), !(global1.a.x < global1.a.x)), vec4<bool>(true, true, true, true), true));
    var var_1 = vec4<bool>(true, true, true, false);
    let var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i) << (global1.b.yzw % vec3<u32>(32u))) & -1i, abs(-1i), reverseBits(39675i));
    global0 = -315f;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(597f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.x;
    let var_1 = _wgslsmith_div_vec3_f32(global1.a.zww, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1355f)), 1596f, _wgslsmith_f_op_f32(func_1())));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-482f)));
    let var_2 = _wgslsmith_mod_u32(min(_wgslsmith_sub_u32(u_input.a, u_input.a ^ 4294967295u), _wgslsmith_mult_u32(4294967295u, u_input.a)), u_input.a);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(115f + _wgslsmith_f_op_f32(-1062f - 648f))), 1473f, true)) - _wgslsmith_f_op_f32(min(var_1.x, var_1.x)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-1074f + 1603f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1014f))), _wgslsmith_f_op_f32(f32(-1f) * -1951f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a.x, global1.a.x)) - 182f)))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, global1.b.x, 4294967295u), vec4<u32>(90841u, 44832u, var_2, global1.b.x)) ^ global1.b, vec4<u32>(countOneBits(_wgslsmith_sub_u32(u_input.a, var_2)), reverseBits(~u_input.a), global1.b.x, var_2)));
    var var_4 = vec4<bool>(u_input.a >= var_2, !all(vec4<bool>(all(vec2<bool>(true, true)), true, true, true)), any(vec4<bool>(!(18486u != var_3.b.x), true, false, true)), !any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.a.x - 1043f))), global1.a.x, -119f)), var_3.b);
    var var_5 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec2<i32>(-1i, firstTrailingBit(max(-2147483647i, countOneBits(-2147483647i)))), 377f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.a.x * 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x * global1.a.x), 614f))), vec2<i32>(1i, ~25219i));
}

