struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-1618f, 2006f, 728f, 618f), vec4<f32>(1600f, -601f, -426f, 316f), vec4<f32>(280f, 1000f, -112f, -270f), vec4<f32>(-1504f, 1207f, -287f, -190f), vec4<f32>(-671f, -1109f, 452f, -1000f), vec4<f32>(-184f, -237f, 1193f, 281f), vec4<f32>(-295f, -1283f, 444f, 2088f), vec4<f32>(-2678f, 993f, 1748f, -218f), vec4<f32>(463f, -1097f, -1032f, -1765f), vec4<f32>(845f, -673f, 169f, 1457f), vec4<f32>(608f, 197f, -2149f, 303f), vec4<f32>(-520f, 805f, 378f, -359f), vec4<f32>(-475f, 296f, 248f, 325f), vec4<f32>(291f, 628f, 354f, 219f), vec4<f32>(627f, 1000f, -1308f, -477f), vec4<f32>(-172f, 1000f, 737f, -327f), vec4<f32>(1209f, -540f, -528f, -318f), vec4<f32>(-1827f, 685f, -1869f, -494f), vec4<f32>(-160f, 1022f, -195f, 955f), vec4<f32>(291f, -1103f, 701f, -162f), vec4<f32>(-1000f, -1925f, -308f, 389f), vec4<f32>(-725f, 417f, -263f, 717f), vec4<f32>(-401f, 583f, -867f, -1395f), vec4<f32>(-123f, -1000f, 821f, 302f), vec4<f32>(-421f, -1004f, 945f, -1009f), vec4<f32>(-258f, 2597f, -1110f, -1316f), vec4<f32>(-1095f, -410f, -286f, 1386f), vec4<f32>(1000f, -146f, 505f, -300f), vec4<f32>(1205f, 152f, -1000f, -1000f), vec4<f32>(183f, -817f, 687f, 1000f));

var<private> global1: array<Struct_2, 29>;

var<private> global2: vec2<i32> = vec2<i32>(-25385i, i32(-2147483648));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = Struct_1(!vec4<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(false, false, true, false)), all(vec3<bool>(true, true, true)), true), !vec2<bool>(~(-61996i) <= global2.x, true), -397f);
    var var_1 = var_0;
    let var_2 = Struct_1(var_0.a, select(vec2<bool>(true && var_1.b.x, var_1.a.x & !var_0.a.x), !select(select(vec2<bool>(var_0.b.x, var_0.b.x), vec2<bool>(false, true), var_1.b), select(var_0.a.xz, var_0.b, var_1.a.x), true), var_1.b), _wgslsmith_f_op_f32(-807f - _wgslsmith_f_op_f32(850f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2556f * var_1.c), 1390f))));
    global0 = array<vec4<f32>, 30>();
    let var_3 = global1[_wgslsmith_index_u32(58186u, 29u)];
    return 1000f;
}

fn func_3(arg_0: bool) -> f32 {
    global0 = array<vec4<f32>, 30>();
    let var_0 = i32(-1i) * -76227i;
    let var_1 = Struct_1(!(!(!select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(true, arg_0, false, false)))), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -207f))));
    let var_2 = firstTrailingBit(~vec2<u32>(u_input.a.x, abs(~u_input.a.x)));
    let var_3 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, reverseBits(58422u), u_input.a.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 48752u, 29873u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<bool>(false, true, true)), vec3<u32>(38549u, u_input.a.x, u_input.a.x) >> (vec3<u32>(var_2.x, 19218u, 0u) % vec3<u32>(32u)))), countOneBits(~vec4<u32>(var_2.x, u_input.a.x, var_2.x, var_2.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c * 1116f)) - 1330f)));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: bool, arg_3: f32) -> bool {
    var var_0 = !(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, 57599u ^ u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x & u_input.a.x)) <= 0u);
    var var_1 = Struct_1(!vec4<bool>(arg_2, arg_2 && arg_2, true, arg_2), vec2<bool>(true, true), -1431f);
    var_1 = Struct_1(vec4<bool>(!all(vec2<bool>(false, true)) && true, arg_2, true, var_1.a.x), var_1.a.yx, -568f);
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-1593f)) - _wgslsmith_f_op_f32(func_3(all(vec3<bool>(arg_2, var_1.a.x, false))))), _wgslsmith_f_op_f32(trunc(184f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3), var_1.c, false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-567f * arg_3))))), global0[_wgslsmith_index_u32(u_input.a.x, 30u)]);
    let var_3 = ~u_input.a.x;
    return all(vec4<bool>(var_1.b.x, any(select(vec2<bool>(arg_2, arg_2), !vec2<bool>(true, arg_2), true && arg_2)), true & any(select(vec4<bool>(arg_2, var_1.b.x, var_1.a.x, var_1.a.x), vec4<bool>(arg_2, var_1.a.x, true, false), var_1.a)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 29>();
    let var_0 = Struct_2(!vec2<bool>(all(vec4<bool>(false, false, true, true)) || true, !func_1(-2147483647i, vec4<i32>(57224i, u_input.b.x, 1i, -1i), false, 876f)), vec4<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, false), true)), all(vec3<bool>(true, true, true)), true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false)))), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), select(vec2<bool>(true, false), vec2<bool>(true, true), u_input.b.x < global2.x), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), false))), true);
    var var_1 = var_0;
    var var_2 = Struct_1(var_1.b, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -683f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(true, false, var_1.c.x))))));
    let var_3 = vec2<u32>(max(60527u, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~u_input.a.x) ^ _wgslsmith_add_u32(u_input.a.x, ~u_input.a.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(81293u, 29140u) | u_input.a.yx, vec2<u32>(39148u, u_input.a.x)), vec2<u32>(46671u >> (u_input.a.x % 32u), ~u_input.a.x)) << (1u % 32u));
    var var_4 = var_0;
    global1 = array<Struct_2, 29>();
    let var_5 = ~var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, -178f);
}

