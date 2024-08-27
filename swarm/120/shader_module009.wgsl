struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: bool = true;

var<private> global2: Struct_1;

var<private> global3: array<i32, 4> = array<i32, 4>(-21603i, 2147483647i, -14941i, 21072i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    global0 = array<f32, 32>();
    var var_0 = 875f;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -343f), global0[_wgslsmith_index_u32(~arg_0.c, 32u)]));
    global2 = Struct_1(vec3<bool>(!any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), true)), all(select(vec2<bool>(false, false), vec2<bool>(false, arg_1), arg_0.a.zy)) || arg_0.b, 1u != min(~0u, max(arg_0.c, u_input.c))), true, ~global2.c);
    let var_2 = arg_0;
    return -1483f;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-511f - -817f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(159f * arg_0)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(arg_1, arg_1.b)))))));
    global3 = array<i32, 4>();
    global0 = array<f32, 32>();
    global2 = Struct_1(select(global2.a, !select(vec3<bool>(false, true, global2.a.x), !global2.a, global2.a.x | arg_1.b), select(vec3<bool>(arg_1.a.x, global3[_wgslsmith_index_u32(4294967295u, 4u)] > -2147483647i, !global2.b), vec3<bool>(global2.b, all(vec4<bool>(false, arg_1.a.x, global2.a.x, arg_1.a.x)), !global2.a.x), !vec3<bool>(global2.a.x, global2.b, false))), true, ~(~7129u));
    var var_1 = !vec3<bool>(true, firstLeadingBit(u_input.a) > -(-35993i << (0u % 32u)), all(vec4<bool>(global2.a.x, true, false, arg_1.a.x)) != select(false, all(vec3<bool>(false, true, false)), true & arg_1.b));
    return min(~(~global2.c) & abs(abs(0u)), _wgslsmith_clamp_u32(38006u, arg_2.x, max(~4294967295u, ~91426u)));
}

fn func_1(arg_0: i32, arg_1: u32) -> vec3<bool> {
    global1 = false;
    var var_0 = Struct_1(!select(!global2.a, !vec3<bool>(false, global2.b, global2.b), select(global2.a.x, true, global0[_wgslsmith_index_u32(4294967295u, 32u)] == -252f)), _wgslsmith_f_op_f32(step(-1065f, _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(arg_1 >> (0u % 32u), 32u)])))) <= global0[_wgslsmith_index_u32(~(~func_2(-209f, Struct_1(global2.a, global2.b, 4294967295u), vec3<u32>(0u, 13758u, global2.c))), 32u)], _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.c, arg_1, 0u, 52474u), vec4<u32>(arg_1, 29839u, 26818u, global2.c)), vec4<u32>(u_input.c, 15270u, global2.c, 77037u) & max(vec4<u32>(44460u, 50734u, global2.c, u_input.c), vec4<u32>(arg_1, arg_1, 0u, 4294967295u)), max(~vec4<u32>(global2.c, u_input.c, arg_1, 50215u), vec4<u32>(arg_1, 4294967295u, arg_1, 58574u))), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 1u, ~1u, max(1u, u_input.c)), ~(~vec4<u32>(global2.c, 37542u, 46046u, 26376u)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-564f, global0[_wgslsmith_index_u32(var_0.c, 32u)], -352f, -930f), vec4<f32>(global0[_wgslsmith_index_u32(arg_1, 32u)], 952f, 1666f, global0[_wgslsmith_index_u32(u_input.c, 32u)]), vec4<bool>(global2.a.x, var_0.a.x, global2.b, global2.b))))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 32u)] + -807f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_1(global2.a, global2.b, u_input.c), true)), global0[_wgslsmith_index_u32(~40067u, 32u)])), global0[_wgslsmith_index_u32(global2.c, 32u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.c, 32u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-414f)) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 32u)])), global2.c >= var_0.c))));
    global2 = Struct_1(vec3<bool>(!var_0.b, global2.a.x, all(vec3<bool>(false, true, var_1.x >= var_1.x))), global2.b, 12933u);
    let var_2 = vec4<bool>(false || var_0.a.x, true, true, var_0.b);
    return select(vec3<bool>(var_0.a.x, true, any(!select(vec3<bool>(global2.b, var_0.a.x, true), var_0.a, global2.a))), var_2.yxz, select(vec3<bool>(var_0.a.x, var_0.a.x, any(vec4<bool>(var_2.x, true, true, true))), !vec3<bool>(false, any(vec3<bool>(global2.b, true, var_0.b)), all(vec2<bool>(true, var_2.x))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 32>();
    let var_0 = Struct_1(select(func_1(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(global2.c, 4u)], -85605i, 24320i), 48397u), func_1(abs(-u_input.a), u_input.c), !vec3<bool>(global2.b, true, true)), true, ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 18216u, global2.c), vec3<u32>(global2.c, u_input.c, 1u)), abs(vec3<u32>(0u, 2683u, 4294967295u)))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(var_1.c, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], 614f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1010f, global0[_wgslsmith_index_u32(var_0.c, 32u)], -673f, 226f)))))))));
    global0 = array<f32, 32>();
    var var_3 = _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(abs(-572f))));
    let var_4 = Struct_1(select(select(var_0.a, global2.a, !(u_input.c != 15338u)), global2.a, vec3<bool>(select(global2.a.x || var_0.a.x, var_0.c < var_0.c, var_1.b), true, !any(vec4<bool>(var_1.b, true, false, var_1.b)))), false, ~1u);
    let var_5 = Struct_1(select(var_0.a, !(!vec3<bool>(false, var_1.b, var_1.b)), select(select(select(var_1.a, vec3<bool>(true, var_1.a.x, true), vec3<bool>(var_1.a.x, true, var_1.b)), !vec3<bool>(false, false, var_0.a.x), vec3<bool>(var_4.b, var_1.a.x, true)), var_1.a, var_0.b)), var_1.a.x, max(abs(33643u), var_1.c));
    var_3 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_5.c, 32u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(var_2 - _wgslsmith_f_op_vec4_f32(var_2 * var_2)));
}

