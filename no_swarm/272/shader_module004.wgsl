struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(10805i, 4294967295u), Struct_1(-77139i, 5867u), Struct_1(1i, 89320u), Struct_1(-22714i, 0u));

var<private> global2: vec2<bool>;

var<private> global3: array<i32, 21>;

var<private> global4: array<bool, 20>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> u32 {
    let var_0 = true;
    global2 = vec2<bool>(false, true);
    let var_1 = select(!vec3<bool>(all(!vec2<bool>(var_0, global2.x)), global2.x, true), vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x | any(vec2<bool>(global4[_wgslsmith_index_u32(1u, 20u)], global4[_wgslsmith_index_u32(u_input.a, 20u)])), true, true));
    global0 = array<Struct_1, 24>();
    var var_2 = 1784f;
    return u_input.a;
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: f32) -> vec2<bool> {
    let var_0 = ~_wgslsmith_div_u32(~4294967295u, 79026u);
    var var_1 = !vec4<bool>(all(select(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, false, global4[_wgslsmith_index_u32(4294967295u, 20u)]), true)), 16237u > arg_1, true, !(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 73466u), vec3<u32>(0u, arg_1, var_0)) > arg_1));
    let var_2 = global1[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(arg_1, max(_wgslsmith_div_u32(var_0, 60431u), arg_1)) & _wgslsmith_dot_vec2_u32(min(select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(33064u, 4294967295u), var_1.x), vec2<u32>(5329u, 57613u)), vec2<u32>(4294967295u | arg_1, var_0 & 4294967295u))), 4u)];
    var_1 = select(vec4<bool>(global2.x && all(vec4<bool>(false, var_1.x, global4[_wgslsmith_index_u32(arg_1, 20u)], true)), select(all(vec4<bool>(false, global2.x, var_1.x, global2.x)), true & var_1.x, true), true, global4[_wgslsmith_index_u32(var_2.b, 20u)]), !(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, global2.x), vec4<bool>(global2.x, false, true, global4[_wgslsmith_index_u32(8353u, 20u)])), select(vec4<bool>(global2.x, true, false, global2.x), vec4<bool>(global2.x, var_1.x, true, true), global2.x), !vec4<bool>(var_1.x, false, global4[_wgslsmith_index_u32(u_input.a, 20u)], var_1.x))), vec4<bool>(any(var_1.yw), select(any(!var_1.xz), var_1.x, !all(var_1.zxx)), !any(!vec3<bool>(false, false, var_1.x)), select(var_2.b, ~0u, global2.x) < (23081u & _wgslsmith_mult_u32(var_2.b, 21737u))));
    global0 = array<Struct_1, 24>();
    return !vec2<bool>(global2.x, false);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    global4 = array<bool, 20>();
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1133f, 247f, -550f, -508f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(570f, -1000f, -838f, 968f))))) - vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(floor(-1408f)), -1096f, _wgslsmith_f_op_f32(floor(-1021f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1013f + 579f))))))));
    var var_1 = 31971i ^ arg_2.a;
    global1 = array<Struct_1, 4>();
    global2 = arg_1;
    return _wgslsmith_dot_vec2_u32(firstLeadingBit(abs(~max(vec2<u32>(5406u, arg_2.b), vec2<u32>(arg_0.b, 0u)))), ~(~(~(vec2<u32>(1u, u_input.a) ^ vec2<u32>(4294967295u, 4294967295u)))));
}

fn func_2() -> StorageBuffer {
    var var_0 = global1[_wgslsmith_index_u32(select(firstTrailingBit(u_input.a), ~firstLeadingBit(countOneBits(41848u)) ^ ((u_input.a >> (u_input.a % 32u)) ^ u_input.a), !(select(u_input.a >> (23201u % 32u), u_input.a, false) >= u_input.a)), 4u)];
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(max(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(7049u, u_input.a, u_input.a)), vec3<u32>(var_0.b, 66298u, u_input.a)), abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b, var_0.b, 4294967295u), vec3<u32>(u_input.a, u_input.a, 1u)))) >> (func_4(Struct_1(var_0.a & firstTrailingBit(var_0.a), var_0.b), func_3(~abs(vec3<i32>(global3[_wgslsmith_index_u32(var_0.b, 21u)], global3[_wgslsmith_index_u32(u_input.a, 21u)], var_0.a)), 4294967295u, _wgslsmith_f_op_f32(1171f + _wgslsmith_f_op_f32(sign(123f)))), Struct_1(global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_0.b, u_input.a), 21u)], countOneBits(~var_0.b))) % 32u), 24u)];
    var var_2 = global1[_wgslsmith_index_u32(1u, 4u)];
    global2 = !(!select(!(!vec2<bool>(global4[_wgslsmith_index_u32(6479u, 20u)], global2.x)), !(!vec2<bool>(global4[_wgslsmith_index_u32(var_0.b, 20u)], false)), vec2<bool>(func_3(vec3<i32>(-2381i, 1i, 0i), var_2.b, 924f).x, true)));
    global4 = array<bool, 20>();
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-630f)))) + -435f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1063f, -1123f, -674f, 278f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1270f, 1781f, 1000f, 723f), vec4<f32>(-2193f, -1674f, 1243f, -1458f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1187f, 566f, 1983f))))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(~(-abs(~global3[_wgslsmith_index_u32(85413u, 21u)])), 84682i, global3[_wgslsmith_index_u32(~(~(~46376u)), 21u)], global3[_wgslsmith_index_u32(~(~func_1()), 21u)]);
    let var_1 = !(!select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 21u)] == var_0.x, true, true, global2.x), select(vec4<bool>(global2.x, true, true, global4[_wgslsmith_index_u32(u_input.a, 20u)]), !vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 20u)], global2.x, false), !vec4<bool>(false, false, false, global2.x)), vec4<bool>(6546i < global3[_wgslsmith_index_u32(50472u, 21u)], global4[_wgslsmith_index_u32(~13285u, 20u)], global2.x, !global4[_wgslsmith_index_u32(4294967295u, 20u)])));
    let x = u_input.a;
    s_output = func_2();
}

