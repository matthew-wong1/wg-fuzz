struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -648f;

var<private> global1: array<bool, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: vec3<i32>) -> bool {
    var var_0 = Struct_1(select(1i, 1i, all(vec2<bool>(true, true))), ~_wgslsmith_mod_u32(~(~118576u), 25914u), 1u);
    let var_1 = Struct_2(vec4<bool>(arg_0, any(select(!arg_1.b, arg_1.b, arg_1.a)), all(select(vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.c, 25u)], global1[_wgslsmith_index_u32(15286u, 25u)]), arg_1.b.xww, vec3<bool>(global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], true))), arg_2 < arg_2), arg_1.a);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_2)))))));
    var var_3 = !(!(18410u >= ~(~var_0.c)));
    return true;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> u32 {
    global0 = _wgslsmith_f_op_f32(trunc(1f));
    let var_0 = Struct_2(!(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 25u)], arg_1, true, global1[_wgslsmith_index_u32(19431u, 25u)]), vec4<bool>(arg_1, true, arg_1, arg_1), false))), !select(!(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(arg_0.x, 25u)], arg_1, true)), vec4<bool>(global1[_wgslsmith_index_u32(1u, 25u)], arg_1, all(vec3<bool>(true, false, arg_1)), false), vec4<bool>(arg_1, func_3(false, Struct_2(vec4<bool>(arg_1, true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 25u)], global1[_wgslsmith_index_u32(arg_0.x, 25u)], arg_1, true)), -1363f, vec3<i32>(u_input.a, -2147483647i, 1i)), true, arg_1)));
    let var_1 = abs(u_input.a);
    var var_2 = arg_0.x;
    var var_3 = var_0;
    return _wgslsmith_div_u32(select(~arg_0.x, ~arg_0.x, false), _wgslsmith_dot_vec3_u32(arg_0, (~vec3<u32>(96498u, arg_0.x, 1u) ^ arg_0) & ~_wgslsmith_div_vec3_u32(arg_0, arg_0)));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_div_i32(u_input.a, arg_2.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1145f, 1252f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))))));
    var var_2 = vec4<i32>(53308i, 1i, -35315i << (~func_2(~vec3<u32>(20989u, 1u, 0u), any(vec3<bool>(false, false, true))) % 32u), u_input.a);
    var var_3 = vec4<bool>(true, 1i == ~var_2.x, !(_wgslsmith_dot_vec4_i32(min(vec4<i32>(48843i, -24886i, -359i, u_input.a), vec4<i32>(1i, 2147483647i, 1i, u_input.a)), vec4<i32>(arg_2.a, u_input.a, var_2.x, -1168i) | vec4<i32>(arg_2.a, -30262i, 49507i, var_2.x)) > arg_2.a), any(vec2<bool>(global1[_wgslsmith_index_u32(775u, 25u)], all(vec4<bool>(global1[_wgslsmith_index_u32(arg_2.b, 25u)], false, global1[_wgslsmith_index_u32(arg_2.b, 25u)], global1[_wgslsmith_index_u32(arg_3.x, 25u)])))));
    var_2 = vec4<i32>(-28522i, -(~arg_2.a) << (4294967295u % 32u), 49358i | _wgslsmith_dot_vec2_i32(-vec2<i32>(2521i, 31588i), vec2<i32>(u_input.a | -8087i, 1i)), _wgslsmith_mod_i32(-1i, abs(~55948i)));
    return -462f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 287f;
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-676f, 1853f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-970f, -759f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(826f, 704f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-752f, -335f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(1348f, vec4<u32>(8716u, 0u, 33279u, 14910u), Struct_1(u_input.a, 120696u, 64072u), vec4<u32>(25283u, 0u, 9892u, 0u))) - _wgslsmith_div_f32(-962f, -1277f))), _wgslsmith_f_op_f32(-1050f - -272f)));
    let var_1 = all(!select(!(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(45498u, 25u)])), select(select(vec3<bool>(true, true, false), vec3<bool>(global1[_wgslsmith_index_u32(31431u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], true), vec3<bool>(true, global1[_wgslsmith_index_u32(103260u, 25u)], global1[_wgslsmith_index_u32(23117u, 25u)])), vec3<bool>(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)], false), true | global1[_wgslsmith_index_u32(4294967295u, 25u)]), select(select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], true), vec3<bool>(global1[_wgslsmith_index_u32(45736u, 25u)], false, false), true), vec3<bool>(true, global1[_wgslsmith_index_u32(13189u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]), all(vec3<bool>(global1[_wgslsmith_index_u32(15676u, 25u)], false, true)))));
    global0 = _wgslsmith_f_op_f32(abs(1f));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, 180f)))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(677f * _wgslsmith_f_op_f32(1561f - _wgslsmith_f_op_f32(f32(-1f) * -952f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(739f, var_0.x) * var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(max(func_2(vec3<u32>(31798u, 26094u, 58709u), var_1 && var_1) << (max(17231u, abs(1u)) % 32u), ~_wgslsmith_add_u32(func_2(vec3<u32>(46529u, 18159u, 0u), global1[_wgslsmith_index_u32(0u, 25u)]), ~0u)), ~(~(~26187u)));
}

