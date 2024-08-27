struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-45437i, 2147483647i, -65476i, 1i);

var<private> global1: array<bool, 28> = array<bool, 28>(false, false, true, true, false, true, false, false, false, false, false, false, true, false, false, false, false, false, true, true, true, true, false, true, false, false, true, true);

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-182f, 896f), 1000f, false);

var<private> global3: array<f32, 29>;

var<private> global4: array<i32, 21>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1452f, _wgslsmith_f_op_f32(-761f - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 29u)] - -459f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(abs(u_input.a), 29u)], _wgslsmith_f_op_f32(global2.b + -2087f)) - arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1188f)), true);
    var var_1 = !vec4<bool>(var_0.c, any(select(!vec3<bool>(false, arg_1.c, true), select(vec3<bool>(true, false, var_0.c), vec3<bool>(false, true, global1[_wgslsmith_index_u32(55713u, 28u)]), global1[_wgslsmith_index_u32(37235u, 28u)]), any(vec2<bool>(arg_1.c, false)))), arg_1.c, !(global2.a.x < -1033f));
    var var_2 = Struct_2(any(vec3<bool>(all(select(vec4<bool>(var_1.x, var_0.c, global2.c, true), vec4<bool>(arg_1.c, true, arg_1.c, global1[_wgslsmith_index_u32(4294967295u, 28u)]), vec4<bool>(true, arg_1.c, false, global2.c))), any(vec3<bool>(var_0.c, var_1.x, false)) && any(vec3<bool>(true, true, false)), all(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 28u)], arg_1.c, false, var_0.c)))));
    global4 = array<i32, 21>();
    var var_3 = arg_1;
    return reverseBits(u_input.a);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec2<u32>) -> u32 {
    global1 = array<bool, 28>();
    let var_0 = vec4<u32>(arg_3.x, func_3(~(~vec3<u32>(74599u, 19262u, 26904u)), Struct_1(vec2<f32>(653f, -771f), _wgslsmith_f_op_f32(510f - -163f), arg_2.x), 1i) & 19001u, ~_wgslsmith_mult_u32(~abs(u_input.a), u_input.a), _wgslsmith_dot_vec4_u32(firstTrailingBit(reverseBits(vec4<u32>(u_input.a, 89216u, u_input.a, u_input.a))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, ~arg_3.x, ~u_input.a, ~arg_3.x), firstLeadingBit(~vec4<u32>(arg_3.x, 0u, 1u, 11348u)))));
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(arg_0.a, arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -174f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.a.x + 488f))))), true);
    var var_2 = var_1;
    global3 = array<f32, 29>();
    return var_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 29u)]), global3[_wgslsmith_index_u32(22401u | func_2(arg_0, Struct_2(false), vec2<bool>(false, global2.c), vec2<u32>(1u, 4294967295u)), 29u)], _wgslsmith_f_op_f32(max(-1874f, _wgslsmith_f_op_f32(f32(-1f) * -725f))), arg_0.a.x)));
    global1 = array<bool, 28>();
    var var_1 = select(vec4<bool>(global2.c & select(global1[_wgslsmith_index_u32(arg_1, 28u)] && false, any(vec4<bool>(global2.c, false, global1[_wgslsmith_index_u32(u_input.a, 28u)], global2.c)), arg_0.c), any(!(!vec3<bool>(false, true, arg_0.c))), arg_0.c, true), !select(!(!vec4<bool>(global2.c, false, false, true)), select(!vec4<bool>(true, true, true, global2.c), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 28u)], false, arg_0.c, false), select(vec4<bool>(arg_0.c, global2.c, global1[_wgslsmith_index_u32(arg_1, 28u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1, 28u)], global2.c, global1[_wgslsmith_index_u32(u_input.a, 28u)]), vec4<bool>(arg_0.c, global2.c, true, false))), false), false);
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(arg_1, 29u)], var_0.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.a.x, global3[_wgslsmith_index_u32(arg_1, 29u)]))) - _wgslsmith_f_op_vec2_f32(arg_0.a + var_0.xw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a))), global3[_wgslsmith_index_u32(85819u, 29u)], true);
    global1 = array<bool, 28>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 37627u;
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(30916u, 28u)]);
    let var_2 = !select(select(select(select(vec3<bool>(global2.c, global1[_wgslsmith_index_u32(23849u, 28u)], true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], true, var_1.a), all(vec2<bool>(var_1.a, global2.c))), !(!vec3<bool>(false, var_1.a, var_1.a)), select(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(68944u, 61064u, u_input.a), 28u)], true, false)), vec3<bool>(u_input.a == u_input.a, func_1(Struct_1(vec2<f32>(1911f, 801f), global3[_wgslsmith_index_u32(4294967295u, 29u)], var_1.a), ~0u), max(u_input.a, u_input.a) <= ~u_input.a), global2.c);
    var var_3 = select(select(vec4<bool>(!global1[_wgslsmith_index_u32(u_input.a, 28u)], select(global2.c | var_1.a, global4[_wgslsmith_index_u32(20719u, 21u)] != global0.x, !var_2.x), true, all(var_2.zz)), !vec4<bool>(global0.x < global4[_wgslsmith_index_u32(u_input.a, 21u)], false, !var_2.x, !global2.c), all(vec3<bool>(true, true, true))), select(!vec4<bool>(!var_2.x, true, true, global2.c), select(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 28u)], var_2.x, true, true)), !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 28u)], var_1.a, false, false)), select(vec4<bool>(var_1.a, false, false, true), !vec4<bool>(var_1.a, var_1.a, var_2.x, true), any(vec4<bool>(var_2.x, true, global1[_wgslsmith_index_u32(1u, 28u)], var_1.a)))), !(!vec4<bool>(true, global2.c, global2.c, false))), select(select(select(!vec4<bool>(var_1.a, false, var_1.a, false), !vec4<bool>(global2.c, false, true, true), !vec4<bool>(false, global1[_wgslsmith_index_u32(33216u, 28u)], global2.c, global2.c)), vec4<bool>(true, all(vec4<bool>(false, global2.c, false, var_2.x)), global2.a.x <= global2.a.x, true), select(!vec4<bool>(global2.c, var_1.a, var_1.a, true), vec4<bool>(var_2.x, true, true, var_2.x), select(vec4<bool>(global2.c, var_1.a, var_2.x, false), vec4<bool>(var_1.a, false, global1[_wgslsmith_index_u32(u_input.a, 28u)], true), vec4<bool>(true, true, global2.c, var_1.a)))), vec4<bool>(var_2.x, true, select(var_2.x, false, var_1.a) || global1[_wgslsmith_index_u32(~1u, 28u)], true), select(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(4120u, 28u)], false, global2.c), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(104780u, 28u)], false, true), var_1.a), select(vec4<bool>(var_2.x, true, true, var_1.a), vec4<bool>(global2.c, true, global2.c, global2.c), var_1.a), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 28u)], var_2.x, global1[_wgslsmith_index_u32(27653u, 28u)])), vec4<bool>(var_2.x, all(vec4<bool>(true, false, true, true)), any(vec4<bool>(false, var_1.a, var_2.x, var_1.a)), !global1[_wgslsmith_index_u32(0u, 28u)]), (global4[_wgslsmith_index_u32(u_input.a, 21u)] & global4[_wgslsmith_index_u32(u_input.a, 21u)]) != (u_input.b.x & 38114i))));
    global4 = array<i32, 21>();
    let var_4 = false;
    global1 = array<bool, 28>();
    let var_5 = -(~abs(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, global0.x), vec2<i32>(global4[_wgslsmith_index_u32(1u, 21u)], global0.x), global0.xz), global0.yw >> (vec2<u32>(u_input.a, 11235u) % vec2<u32>(32u)), global0.zx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(9056u, max(abs(~4294967295u), ~_wgslsmith_div_u32(79105u, u_input.a))));
}

