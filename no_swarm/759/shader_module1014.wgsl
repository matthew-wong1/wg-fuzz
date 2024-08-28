struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(465f, 758f, -1000f, -1907f, 1332f, -685f, -1243f, 932f, -1809f, 459f, -3134f, 234f, 528f, 901f, -169f, 1528f, 1000f, -2065f, -179f, 535f, -1000f, -944f, -722f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = ~arg_1.a.yy;
    let var_1 = vec3<bool>(true, true, true);
    let var_2 = arg_1;
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    return arg_0;
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = u_input.b;
    var var_1 = select(!vec3<bool>(-310f > _wgslsmith_f_op_f32(sign(arg_0.b.x)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))), 1263f != global0[_wgslsmith_index_u32(37756u, 23u)]), vec3<bool>(true, true, true), true || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(2911u, 23u)])) < _wgslsmith_f_op_f32(step(-251f, global0[_wgslsmith_index_u32(arg_0.a.x, 23u)]))));
    var var_2 = arg_0;
    var_0 = 4294967295u;
    var var_3 = var_1.x;
    return var_1.x;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    let var_0 = !(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)));
    return !var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!vec2<bool>(any(vec4<bool>(true, true, false, true)), true), vec2<bool>(func_2(func_1(Struct_1(vec4<u32>(1u, u_input.b, 0u, 0u), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(17245u, 23u)], 719f), -120f, vec4<f32>(global0[_wgslsmith_index_u32(1u, 23u)], -450f, 871f, 130f), vec3<f32>(1764f, 576f, global0[_wgslsmith_index_u32(u_input.b, 23u)])), Struct_1(vec4<u32>(24086u, 0u, u_input.b, 7395u), vec3<f32>(global0[_wgslsmith_index_u32(0u, 23u)], 888f, global0[_wgslsmith_index_u32(29465u, 23u)]), 1000f, vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], 515f, 1164f, -1780f), vec3<f32>(655f, global0[_wgslsmith_index_u32(u_input.b, 23u)], -151f)), u_input.b)), false), select(!(4294967295u != u_input.b), func_3(u_input.d, func_1(Struct_1(vec4<u32>(2250u, u_input.b, u_input.b, 47968u), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], 298f, global0[_wgslsmith_index_u32(14330u, 23u)]), -676f, vec4<f32>(858f, -991f, 767f, -991f), vec3<f32>(570f, -1003f, global0[_wgslsmith_index_u32(u_input.b, 23u)])), Struct_1(vec4<u32>(u_input.b, 0u, u_input.b, 1u), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)]), global0[_wgslsmith_index_u32(1u, 23u)], vec4<f32>(640f, global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], -1529f), vec3<f32>(-304f, global0[_wgslsmith_index_u32(46120u, 23u)], 1225f)), u_input.b), Struct_1(vec4<u32>(u_input.b, 4294967295u, u_input.b, 1u), vec3<f32>(999f, global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(49146u, 23u)]), 650f, vec4<f32>(-1000f, 392f, global0[_wgslsmith_index_u32(u_input.b, 23u)], -2053f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], 739f, global0[_wgslsmith_index_u32(1905u, 23u)]))), select(true, true, true) || true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 23u)] - -775f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.b), 23u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)], -1427f))), vec4<f32>(var_1, -460f, -892f, var_1), vec4<bool>(var_0.x, var_0.x, true, var_0.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(45447u, 23u)], 311f, global0[_wgslsmith_index_u32(u_input.b, 23u)], var_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(969f, global0[_wgslsmith_index_u32(1u, 23u)], var_1, 602f) * vec4<f32>(var_1, 1100f, 1413f, 741f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-831f, var_1, var_1, global0[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -482f, -1183f, 1238f) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], -997f, 1291f, -715f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 387f, global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]) + vec4<f32>(var_1, 490f, -2112f, var_1))))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(392f, -792f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(127f, global0[_wgslsmith_index_u32(u_input.b, 23u)]) - vec2<f32>(global0[_wgslsmith_index_u32(36113u, 23u)], var_1)))), var_0)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, -774f)), _wgslsmith_f_op_f32(step(2535f, _wgslsmith_f_op_f32(var_1 + -1649f)))))), ~firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, u_input.a, u_input.d) << (vec4<u32>(35660u, u_input.b, 1u, 19033u) % vec4<u32>(32u)), vec4<i32>(-1742i, 1i, -10810i, 2147483647i))), -253f);
}

