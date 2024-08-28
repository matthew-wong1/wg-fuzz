struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true));

var<private> global1: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false));

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, false));

var<private> global3: Struct_1;

var<private> global4: array<bool, 18>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<u32>) -> u32 {
    return _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~1u, min(~arg_2.x, arg_2.x), abs(32765u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(29326u ^ arg_2.x, 43398u), arg_2), arg_2.x, max(10742u, ~_wgslsmith_mod_u32(23523u, arg_2.x)), firstTrailingBit(arg_2.x)));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: f32) -> Struct_1 {
    let var_0 = select(arg_0, select(!select(global1[_wgslsmith_index_u32(func_3(global4[_wgslsmith_index_u32(66093u, 18u)], u_input.b, vec2<u32>(0u, 4294967295u)), 11u)], select(vec4<bool>(global0.a.x, global2.a.x, arg_0.x, global3.a.x), vec4<bool>(global2.a.x, global2.a.x, global3.a.x, global4[_wgslsmith_index_u32(9578u, 18u)]), global0.a.x), select(vec4<bool>(true, global2.a.x, global0.a.x, arg_0.x), vec4<bool>(false, true, global3.a.x, arg_0.x), arg_0)), global1[_wgslsmith_index_u32(34977u, 11u)], -1659f <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2 + -1017f), _wgslsmith_div_f32(-654f, 1810f), true))), !select(select(!vec4<bool>(arg_0.x, true, global0.a.x, global4[_wgslsmith_index_u32(4294967295u, 18u)]), arg_0, !vec4<bool>(global3.a.x, true, true, global0.a.x)), !arg_0, (arg_1 >= -527i) || (-1141f <= arg_2)));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 284f, arg_2, arg_2)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, arg_2, arg_2, arg_2))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1174f, 835f, arg_2, 909f), vec4<f32>(220f, arg_2, arg_2, 617f)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_2), -2036f, -855f, arg_2))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-166f * -818f), -670f, _wgslsmith_f_op_f32(777f - -2296f), _wgslsmith_div_f32(-1000f, 1006f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -535f, arg_2, arg_2) * vec4<f32>(arg_2, -2401f, -856f, 674f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(364f, arg_2, arg_2, -322f))))));
    global1 = array<vec4<bool>, 11>();
    let var_2 = Struct_1(!(!global0.a));
    global2 = Struct_1(arg_0.xx);
    return var_2;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = func_2(!select(select(vec4<bool>(global0.a.x, arg_0, true, global2.a.x), vec4<bool>(false, true, arg_0, false), any(global0.a)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~330u, reverseBits(arg_1.x)), 11u)], select(!global1[_wgslsmith_index_u32(22681u, 11u)], !vec4<bool>(true, arg_0, true, arg_0), global1[_wgslsmith_index_u32(arg_1.x, 11u)])), _wgslsmith_sub_i32(u_input.a.x ^ (~u_input.a.x | ~u_input.a.x), abs(-(-6324i | u_input.a.x))), 926f);
    global2 = Struct_1(var_0.a);
    let var_1 = 42572u;
    var var_2 = var_1 | abs(49116u << ((_wgslsmith_sub_u32(var_1, 4294967295u) | min(arg_1.x, 11465u)) % 32u));
    var var_3 = firstTrailingBit(u_input.b.x) | _wgslsmith_dot_vec4_i32(u_input.b, -u_input.b);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false && any(!vec3<bool>(global3.a.x, false, global2.a.x)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~1u, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 18726u) ^ select(vec2<u32>(37346u, 0u), vec2<u32>(48870u, 0u), false))));
    var var_1 = 0i;
    var_1 = _wgslsmith_clamp_i32(2147483647i, abs(max(-1i, -1i)), 1i) ^ (i32(-1i) * -183i);
    let var_2 = func_1(!(_wgslsmith_f_op_f32(523f + _wgslsmith_f_op_f32(278f - 1837f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1777f)) - _wgslsmith_f_op_f32(-552f + 393f))), vec2<u32>(select(56444u, ~1u, global2.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(5258u, 39200u, 34695u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 22630u, 80429u), select(vec3<u32>(0u, 0u, 64488u), vec3<u32>(59035u, 4294967295u, 0u), vec3<bool>(false, true, true))))));
    global4 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(firstTrailingBit(vec3<u32>(38545u, 72102u, 4294967295u)))), 1u, min(u_input.a.x, u_input.a.x), vec2<u32>(1u, 1u), vec3<u32>(1u, 1u, 1u));
}

