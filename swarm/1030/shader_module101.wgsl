struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, true, true, false, true, false, true, true, false, false, false, true, true, true, true, false, true, true, true, true, false, false, true, true, true, false, false, true, false);

var<private> global1: Struct_1 = Struct_1(2147483647i);

var<private> global2: u32;

var<private> global3: array<bool, 29> = array<bool, 29>(false, true, false, false, true, false, false, true, true, true, false, true, false, true, false, false, true, false, true, true, false, true, false, true, true, false, false, false, false);

var<private> global4: array<vec4<f32>, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = true;
    let var_1 = Struct_1((firstTrailingBit(_wgslsmith_mult_i32(arg_3.a, arg_3.a)) ^ 1200i) ^ 44416i);
    global3 = array<bool, 29>();
    var var_2 = vec3<bool>(any(vec2<bool>(all(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)])), true)), ~_wgslsmith_div_i32(-1i ^ arg_2, ~(-2147483647i)) < -(~u_input.b.x), global3[_wgslsmith_index_u32(0u, 29u)]);
    let var_3 = 20192i >> ((36615u ^ u_input.a) % 32u);
    return firstLeadingBit(abs(1u));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = -(~31623i);
    let var_1 = vec2<bool>(!(!arg_2.x), ~func_3(_wgslsmith_f_op_f32(-arg_0.x), arg_3, max(9453i, 0i), Struct_1(global1.a)) >= u_input.a);
    var var_2 = arg_3;
    var var_3 = u_input.a;
    let var_4 = -((~(vec2<i32>(37532i, 31147i) << (vec2<u32>(63683u, u_input.a) % vec2<u32>(32u))) << (vec2<u32>(4294967295u, ~0u) % vec2<u32>(32u))) & ~u_input.b.xz);
    return _wgslsmith_sub_u32(u_input.a, ~(~(~u_input.a | 41646u)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(func_2(vec4<f32>(_wgslsmith_f_op_f32(-434f * -764f), _wgslsmith_f_op_f32(-109f - 1022f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -309f)), -849f, !vec3<bool>(global3[_wgslsmith_index_u32(0u, 29u)], false, global3[_wgslsmith_index_u32(19654u, 29u)]), Struct_1(8333i)), ~15959u, ~u_input.a, u_input.a), abs(vec4<u32>(~(~u_input.a), _wgslsmith_sub_u32(u_input.a, u_input.a) | u_input.a, select(abs(76871u), u_input.a, false), u_input.a)));
    global1 = Struct_1(min(-15158i, ~min(~321i, global1.a)));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-579f, 113f))), 1f), any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(u_input.a, 29u)]))))));
    let var_2 = var_0;
    let var_3 = abs(u_input.b.x << (11552u % 32u));
    return Struct_1(_wgslsmith_div_i32(i32(-1i) * -(~var_3), firstLeadingBit(~u_input.b.x) & 22814i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 20380u;
    let var_1 = vec2<i32>(max(2147483647i, ~select(i32(-1i) * -2147483647i, u_input.b.x, any(vec4<bool>(global3[_wgslsmith_index_u32(0u, 29u)], false, global0[_wgslsmith_index_u32(u_input.a, 29u)], false)))), 0i);
    global4 = array<vec4<f32>, 19>();
    let var_2 = Struct_1(1i);
    let var_3 = func_1();
    var var_4 = select(!select(!(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], true, false)), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(87474u, 29u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], true, global0[_wgslsmith_index_u32(u_input.a, 29u)], true)), true), !select(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 29u)], false, false), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(u_input.a, 29u)], false, global0[_wgslsmith_index_u32(1u, 29u)]), vec4<bool>(false, true, global3[_wgslsmith_index_u32(31906u, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)]), global3[_wgslsmith_index_u32(u_input.a, 29u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], true, global3[_wgslsmith_index_u32(u_input.a, 29u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)], true), false)), !select(vec4<bool>(global0[_wgslsmith_index_u32(76664u, 29u)], global3[_wgslsmith_index_u32(0u, 29u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 29u)], false, global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], false, true, false)), !select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(67624u, 29u)], false, global3[_wgslsmith_index_u32(u_input.a, 29u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(7903u, 29u)]), vec4<bool>(true, true, global3[_wgslsmith_index_u32(4161u, 29u)], true))), !any(select(select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(18045u, 29u)], true), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(34778u, 29u)], global3[_wgslsmith_index_u32(4294967295u, 29u)]), vec4<bool>(global3[_wgslsmith_index_u32(70259u, 29u)], true, true, false)), select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 29u)], global3[_wgslsmith_index_u32(u_input.a, 29u)], true, global0[_wgslsmith_index_u32(u_input.a, 29u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 29u)], true), true), all(vec3<bool>(false, false, true)))));
    var var_5 = func_1();
    let var_6 = _wgslsmith_mod_u32(u_input.a, ~30409u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(1u, 1u)) | select(firstTrailingBit(vec2<u32>(13135u, u_input.a)), ~max(vec2<u32>(u_input.a, var_6), vec2<u32>(1u, 4294967295u)), false));
}

