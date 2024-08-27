struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: bool;

var<private> global2: vec3<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(reverseBits(u_input.b), vec2<i32>(select(max(global0[_wgslsmith_index_u32(14102u, 1u)], u_input.c), u_input.d, true), u_input.a)), firstTrailingBit(~1i));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-383f + 1f));
    let var_2 = Struct_1(-975f);
    var var_3 = var_2;
    let var_4 = var_2;
    return select(vec2<bool>(true, true), !vec2<bool>(global2.x, global2.x), !(!any(!vec2<bool>(global2.x, global2.x))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>) -> bool {
    global1 = false;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1478f)) * -664f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(647f * -1477f)), 391f, global2.x || global2.x)), _wgslsmith_div_u32(arg_0.x, ~arg_0.x) < ((arg_0.x >> (arg_0.x % 32u)) & 13643u))));
    let var_1 = _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-var_0.a)));
    global2 = vec3<bool>(false, false, true || all(!(!vec4<bool>(true, false, global2.x, false))));
    global2 = vec3<bool>(any(!func_3()), true & all(vec3<bool>(false, all(vec2<bool>(false, global2.x)), global2.x)), !global2.x);
    return firstTrailingBit(abs(arg_0.x)) < (~1u | arg_0.x);
}

fn func_1(arg_0: vec2<bool>) -> vec3<bool> {
    return select(select(select(vec3<bool>(global2.x, func_2(vec3<u32>(0u, 27841u, 1u), vec4<i32>(22467i, global0[_wgslsmith_index_u32(1u, 1u)], u_input.d, global0[_wgslsmith_index_u32(1u, 1u)])), false), vec3<bool>(all(arg_0), arg_0.x, !arg_0.x), arg_0.x), !vec3<bool>(!global2.x, true, arg_0.x), !(_wgslsmith_dot_vec3_i32(vec3<i32>(74546i, u_input.a, u_input.d), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(37596u, 1u)], -53346i)) > _wgslsmith_dot_vec2_i32(u_input.b, u_input.b))), vec3<bool>(global2.x, false, func_3().x), select(vec3<bool>(!any(global2.zx), true & func_2(vec3<u32>(33818u, 40376u, 4294967295u), vec4<i32>(global0[_wgslsmith_index_u32(10198u, 1u)], u_input.d, u_input.b.x, 2147483647i)), !arg_0.x), select(select(!vec3<bool>(arg_0.x, false, true), !vec3<bool>(global2.x, false, true), arg_0.x), select(!vec3<bool>(arg_0.x, true, false), select(vec3<bool>(true, global2.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, global2.x, false)), global2.x & true), !select(vec3<bool>(arg_0.x, true, global2.x), vec3<bool>(true, false, false), vec3<bool>(global2.x, arg_0.x, arg_0.x))), all(!select(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(global2.x, arg_0.x, true, arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(1132f)), 834f, _wgslsmith_f_op_f32(max(-689f, -1202f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1568f, 713f, 741f)))), all(global2.xy))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1863f, 127f, -656f)))))))), vec3<f32>(-1088f, -488f, 259f), vec3<bool>(any(select(vec3<bool>(false, false, global2.x), func_1(vec2<bool>(global2.x, global2.x)), !global2.x)), all(vec3<bool>(true, true, true)), false)));
    global0 = array<i32, 1>();
    var var_1 = func_1(!(!(!vec2<bool>(global2.x, false)))).yz;
    global1 = any(vec4<bool>(!(!select(global2.x, true, false)), true, true, true));
    var var_2 = u_input.d;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1740f * _wgslsmith_f_op_f32(-167f + _wgslsmith_f_op_f32(var_0.x * var_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))))));
    let var_4 = var_3;
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_clamp_u32(4294967295u, 25510u, 4294967295u))), _wgslsmith_sub_vec4_u32(vec4<u32>(~abs(1u), ~(~31269u), 86827u, _wgslsmith_mod_u32(1u, 1060u)), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(min(-1999f, -831f)), ~_wgslsmith_add_u32(77835u >> (_wgslsmith_div_u32(16617u, 19739u) % 32u), reverseBits(_wgslsmith_sub_u32(83412u, 1u))), vec3<u32>(~12593u, max(~1u, 4294967295u), 23989u));
}

