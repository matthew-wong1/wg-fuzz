struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: bool,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global1: array<bool, 11> = array<bool, 11>(false, false, false, false, true, false, false, true, true, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> i32 {
    global0 = !vec4<bool>(any(global0.xz), !(_wgslsmith_mod_u32(31269u, u_input.b.x) > _wgslsmith_div_u32(u_input.b.x, 22866u)), global1[_wgslsmith_index_u32(~select(_wgslsmith_mult_u32(u_input.b.x, 64285u), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 94696i == u_input.a), 11u)], !(arg_0.x < 1i));
    return arg_0.x;
}

fn func_2() -> Struct_2 {
    let var_0 = (~(-(~(-2147483647i))) ^ func_3(vec2<i32>(~u_input.c.x, select(-43369i, u_input.c.x, global0.x)), Struct_2(_wgslsmith_f_op_f32(ceil(-1153f))))) << (u_input.b.x % 32u);
    var var_1 = -846f;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -887f))));
    let var_3 = any(select(select(vec4<bool>(false, true, true, !global1[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 11u)] || false, all(vec3<bool>(false, global0.x, false)), global1[_wgslsmith_index_u32(u_input.b.x, 11u)] || global1[_wgslsmith_index_u32(u_input.b.x, 11u)], any(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.b.x, 11u)]))), !all(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], true, global0.x))), !(!vec4<bool>(global0.x, false, false, true)), global1[_wgslsmith_index_u32(4294967295u, 11u)]));
    let var_4 = _wgslsmith_clamp_u32(~u_input.b.x, reverseBits(33653u), u_input.b.x ^ ((max(19992u, u_input.b.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x))) | u_input.b.x));
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), -1557f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -337f)));
    let var_1 = -u_input.a;
    var var_2 = arg_1;
    var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(306f, arg_0.a, arg_1.a, arg_2.x)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-919f, arg_0.a, arg_1.a, var_2.a), vec4<f32>(329f, -808f, arg_1.a, -256f))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1223f, 341f, arg_1.a, var_2.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1297f, arg_2.x, 1609f, 3197f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a, -412f, var_0, arg_0.a))))) * vec4<f32>(1047f, _wgslsmith_f_op_f32(abs(-860f)), _wgslsmith_f_op_f32(var_0 * var_2.a), _wgslsmith_f_op_f32(arg_1.a * var_2.a))), global1[_wgslsmith_index_u32(u_input.b.x, 11u)]))));
    return _wgslsmith_f_op_f32(sign(1346f));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>) -> u32 {
    global0 = vec4<bool>(all(select(vec4<bool>(global0.x, true, true, true), !vec4<bool>(global1[_wgslsmith_index_u32(69503u, 11u)], false, global0.x, global1[_wgslsmith_index_u32(0u, 11u)]), select(vec4<bool>(global0.x, false, global1[_wgslsmith_index_u32(arg_1.x, 11u)], global1[_wgslsmith_index_u32(u_input.b.x, 11u)]), select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1.x, 11u)], false, false)), !vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 11u)], true, global0.x)))), !select(!any(vec3<bool>(global1[_wgslsmith_index_u32(16204u, 11u)], false, global0.x)), _wgslsmith_div_f32(arg_0.x, arg_0.x) != _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true)), !global1[_wgslsmith_index_u32(1u, 11u)]), !all(select(global0.zy, !vec2<bool>(global0.x, true), vec2<bool>(true, false))), false);
    let var_0 = _wgslsmith_f_op_f32(func_4(func_2(), func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1166f, 578f, 1488f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, 1060f, arg_0.x))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1648f, 354f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.x, -1000f, arg_0.x))), _wgslsmith_div_vec3_f32(vec3<f32>(404f, -689f, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, arg_0.x))))))));
    var var_1 = func_2();
    let var_2 = global1[_wgslsmith_index_u32(~4294967295u, 11u)];
    let var_3 = Struct_1(global0.wz, arg_1.zz, true, all(!select(vec4<bool>(false, false, global0.x, global0.x), !vec4<bool>(true, global0.x, global1[_wgslsmith_index_u32(arg_1.x, 11u)], true), !vec4<bool>(false, global0.x, true, global0.x))), vec4<u32>(57718u, u_input.b.x, abs((u_input.b.x << (1u % 32u)) << ((u_input.b.x << (u_input.b.x % 32u)) % 32u)), _wgslsmith_mod_u32(arg_1.x ^ 17811u, 0u)));
    return firstTrailingBit(var_3.b.x << (~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, var_3.e.x, 49815u), arg_1) % 32u)) >> (4294967295u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(false, all(!(!select(vec4<bool>(false, global0.x, false, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global0.x, global1[_wgslsmith_index_u32(0u, 11u)], true), vec4<bool>(global0.x, true, false, false)))), !global0.x, min(select(4294967295u, 73578u, any(global0.zy)), ~(u_input.b.x ^ 18905u)) <= func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-345f, 624f))))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(19438u, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, 47659u, 4294967295u))));
    global1 = array<bool, 11>();
    global0 = select(!(!select(select(vec4<bool>(true, true, global0.x, global1[_wgslsmith_index_u32(0u, 11u)]), vec4<bool>(global0.x, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], false, global0.x), vec4<bool>(global0.x, true, true, global0.x)), !vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(1u, 11u)]), true)), select(!(!vec4<bool>(global1[_wgslsmith_index_u32(14326u, 11u)], global0.x, true, global0.x)), select(select(!vec4<bool>(global0.x, true, false, true), select(vec4<bool>(global0.x, false, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 11u)], false)), select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], false, false), vec4<bool>(global0.x, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global0.x, false), true)), vec4<bool>(true, true, global0.x, any(global0.zyw)), all(select(global0.yy, global0.wy, global1[_wgslsmith_index_u32(4294967295u, 11u)]))), vec4<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 11u)] || false, global1[_wgslsmith_index_u32(~(1u & u_input.b.x), 11u)], true | all(vec3<bool>(true, true, true)), all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], false)))), all(!(!global0.zyz)));
    let var_0 = firstTrailingBit(u_input.b.x);
    var var_1 = u_input.c.ywy;
    global1 = array<bool, 11>();
    var var_2 = vec2<i32>(var_1.x, -34646i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xy);
}

