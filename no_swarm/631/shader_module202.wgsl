struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<f32, 21>;

var<private> global2: Struct_1;

var<private> global3: vec2<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> u32 {
    var var_0 = global2.e;
    global0 = array<Struct_2, 12>();
    global1 = array<f32, 21>();
    var var_1 = Struct_2(arg_1.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(206f, var_0.x, -803f) * vec3<f32>(global2.e.x, 1690f, global2.e.x)), vec3<f32>(var_0.x, 1490f, var_0.x), global2.d.yww)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, 1000f, -1906f), vec3<f32>(var_0.x, -192f, var_0.x), var_0.x > global2.c)))) * _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(30705u, 21u)], -618f, -680f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1695f, -253f, -152f) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2, -764f, global3.x)))))));
    return arg_0.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    global1 = array<f32, 21>();
    global1 = array<f32, 21>();
    global2 = arg_1;
    global2 = Struct_1(!(~func_3(arg_0.yx, Struct_2(arg_1.a), -249f, 0u) >= _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, arg_0.x), _wgslsmith_mult_u32(arg_0.x, arg_0.x), ~4294967295u)), !vec2<bool>(arg_1.b.x && arg_1.b.x, countOneBits(28180u) < (arg_0.x | 4294967295u)), -607f, vec4<bool>(arg_1.b.x, select(all(global2.b) == (arg_1.b.x || true), arg_1.d.x, global2.a), global2.b.x || select(false, !global2.a, all(vec3<bool>(false, arg_1.d.x, true))), true & arg_1.d.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(~31751u, 21u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var var_0 = Struct_1(arg_1.d.x, vec2<bool>(global2.d.x, false), _wgslsmith_f_op_f32(step(-1568f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), !select(!(!arg_1.d), arg_1.d, vec4<bool>(false, true == global2.a, !arg_1.a, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.e, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(global2.e, vec2<f32>(arg_1.e.x, global3.x))))), select(vec2<bool>(arg_1.b.x, arg_1.b.x), !vec2<bool>(global2.b.x, false), vec2<bool>(arg_1.a, true)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(arg_0.x, 21u)], global1[_wgslsmith_index_u32(0u, 21u)]), arg_1.e)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.e) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3.x, 753f), vec2<f32>(1726f, -687f)))))));
    return arg_0.x;
}

fn func_1() -> Struct_2 {
    var var_0 = select(global2.d.yww, vec3<bool>(808f > global1[_wgslsmith_index_u32(countOneBits(1u) << (func_2(vec4<u32>(0u, 4294967295u, 14993u, 13771u), Struct_1(global2.a, vec2<bool>(false, false), global1[_wgslsmith_index_u32(29263u, 21u)], vec4<bool>(global2.a, true, false, global2.a), global2.e)) % 32u), 21u)], true, !(!global2.b.x)), global2.d.ywz);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) * 1f), _wgslsmith_dot_vec4_u32(~vec4<u32>(41976u, 36080u, 1u, 1u), abs(vec4<u32>(4294967295u, 12257u, 81204u, 1u))) <= ~0u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + global2.e.x), _wgslsmith_f_op_f32(min(global3.x, global1[_wgslsmith_index_u32(0u, 21u)])))))), _wgslsmith_f_op_f32(global3.x - -1602f));
    global0 = array<Struct_2, 12>();
    var var_2 = Struct_2(any(select(select(select(vec2<bool>(global2.b.x, false), var_0.yx, false), select(var_0.xx, vec2<bool>(true, false), var_0.x), !var_0.xx), vec2<bool>(var_0.x, -592f <= global3.x), !select(var_0.zy, vec2<bool>(var_0.x, false), var_0.x))));
    var_2 = Struct_2(var_2.a);
    return global0[_wgslsmith_index_u32(~4294967295u, 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global1 = array<f32, 21>();
    let var_1 = vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(-2147483647i, 53636i, min(countOneBits(31989i), u_input.a.x)), -24184i | u_input.a.x);
    let var_2 = vec4<u32>(41601u, ~1u, 88766u, ~18933u);
    var var_3 = func_1();
    var var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(866f, global2.e.x)), _wgslsmith_f_op_f32(max(-1129f, -436f)), _wgslsmith_f_op_f32(f32(-1f) * -694f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 860f, global3.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1450f, 1167f, 992f) - vec3<f32>(global2.e.x, global2.c, 913f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_2.x, 21u)], -210f, 397f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xx ^ u_input.a.yx, select(vec4<u32>(~(~63330u), ~var_2.x >> (var_2.x % 32u), 0u, 1u), vec4<u32>(~1u, ~(var_2.x ^ 9533u), ~(~4294967295u), var_2.x), (_wgslsmith_div_f32(-1000f, 690f) != global3.x) & true));
}

