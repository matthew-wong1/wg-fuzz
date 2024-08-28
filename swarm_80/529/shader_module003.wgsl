struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, true);

var<private> global1: array<vec4<bool>, 20>;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(i32(-2147483648), vec4<bool>(true, true, true, false)), Struct_1(56611i, vec4<bool>(true, true, false, true)), Struct_1(0i, vec4<bool>(false, true, true, false)), Struct_1(-45543i, vec4<bool>(true, true, true, false)), Struct_1(35859i, vec4<bool>(true, false, false, true)), Struct_1(-1i, vec4<bool>(false, false, true, false)), Struct_1(i32(-2147483648), vec4<bool>(true, false, true, true)), Struct_1(i32(-2147483648), vec4<bool>(true, false, true, true)), Struct_1(-15412i, vec4<bool>(true, true, false, true)), Struct_1(i32(-2147483648), vec4<bool>(false, true, true, true)), Struct_1(i32(-2147483648), vec4<bool>(false, true, true, false)), Struct_1(-32051i, vec4<bool>(true, true, true, true)), Struct_1(0i, vec4<bool>(false, true, true, false)), Struct_1(-57170i, vec4<bool>(false, true, true, true)), Struct_1(0i, vec4<bool>(false, true, false, true)), Struct_1(8366i, vec4<bool>(true, false, false, true)), Struct_1(-1i, vec4<bool>(false, false, true, true)), Struct_1(2147483647i, vec4<bool>(false, false, true, true)), Struct_1(-16798i, vec4<bool>(true, true, true, true)), Struct_1(-35497i, vec4<bool>(true, true, false, true)), Struct_1(2147483647i, vec4<bool>(true, false, true, false)), Struct_1(-1i, vec4<bool>(false, true, false, false)), Struct_1(-18600i, vec4<bool>(true, true, false, false)), Struct_1(-11481i, vec4<bool>(true, true, false, true)), Struct_1(1i, vec4<bool>(false, false, true, false)), Struct_1(10898i, vec4<bool>(true, true, true, true)), Struct_1(55558i, vec4<bool>(false, false, true, true)), Struct_1(2147483647i, vec4<bool>(true, true, true, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))));
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>) -> u32 {
    let var_0 = u_input.a;
    global0 = array<bool, 2>();
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-460f * _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))));
    return 1u;
}

fn func_1() -> u32 {
    global1 = array<vec4<bool>, 20>();
    let var_0 = !any(select(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 2u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(54829u, 2u)], true), global0[_wgslsmith_index_u32(15118u, 2u)] | global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), !select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(27710u, 2u)], true), true), vec3<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(37611u, 2u)], false, true)), select(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(21354u, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), global0[_wgslsmith_index_u32(12144u, 2u)])));
    let var_1 = _wgslsmith_add_vec2_u32(u_input.c.yx, abs(~u_input.c.xx));
    let var_2 = global2[_wgslsmith_index_u32(var_1.x ^ ~(~var_1.x), 28u)];
    var var_3 = global2[_wgslsmith_index_u32(func_2(var_2.b.yy, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-993f, 492f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(382f, 188f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1612f, -185f), vec2<f32>(-716f, -546f), var_0)), vec2<f32>(235f, 1015f)))))), 28u)];
    return _wgslsmith_add_u32(0u, abs(var_1.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec3<i32> {
    global0 = array<bool, 2>();
    let var_0 = ~2147483647i;
    let var_1 = abs(-arg_3);
    global2 = array<Struct_1, 28>();
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-916f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -281f))))))));
    return _wgslsmith_div_vec3_i32(select(~vec3<i32>(29i, reverseBits(2147483647i), var_0), ~vec3<i32>(_wgslsmith_clamp_i32(arg_2.a, 1i, arg_2.a), var_0, _wgslsmith_div_i32(arg_3, var_1)), select(vec3<bool>(!arg_0.x, arg_1.b.x, !global0[_wgslsmith_index_u32(0u, 2u)]), !(!vec3<bool>(arg_2.b.x, true, arg_0.x)), true)), -vec3<i32>(~var_1, i32(-1i) * -7469i, -var_1 ^ -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 2>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 175f)) + _wgslsmith_f_op_f32(trunc(-300f)))))));
    global1 = array<vec4<bool>, 20>();
    let var_1 = select(func_4(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(~u_input.b, u_input.c.x)), 20u)], Struct_1(-2147483647i, vec4<bool>(true, true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 43387u, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.a.x, 16115u)), 2u)], global0[_wgslsmith_index_u32(firstTrailingBit(25552u), 2u)])), Struct_1(i32(-1i) * -2147483647i, global1[_wgslsmith_index_u32(~func_1(), 20u)]), 13304i), abs(min(vec3<i32>(1i, countOneBits(1i), countOneBits(7763i)), ~reverseBits(vec3<i32>(-38425i, 21411i, -20006i)))), !(!vec3<bool>(true, all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)], false)), false)));
    var var_2 = global2[_wgslsmith_index_u32(u_input.a.x, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, 4294967295u);
}

