struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<vec3<i32>, 3>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    var var_0 = ~abs(4294967295u);
    var var_1 = Struct_1(!any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, true), true)), any(select(vec3<bool>(all(vec2<bool>(false, false)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), all(vec4<bool>(false, true, false, false)) == true)), !select(vec3<bool>(286f > global0[_wgslsmith_index_u32(4294967295u, 28u)], all(vec4<bool>(false, false, false, false)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_2 = Struct_1(true, !var_1.b, select(var_1.c, select(vec3<bool>(true, true, true), var_1.c, false), !(!(!vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x)))));
    let var_3 = global0[_wgslsmith_index_u32(1u, 28u)];
    let var_4 = select(select(select(var_1.c.xy, vec2<bool>(any(vec2<bool>(true, true)), false), false), !(!(!vec2<bool>(var_2.b, true))), !select(vec2<bool>(var_2.b, var_1.a), vec2<bool>(false, false), var_2.c.x)), select(vec2<bool>(true | (-1025f >= global0[_wgslsmith_index_u32(u_input.a, 28u)]), true), vec2<bool>(var_2.a, !var_2.a & var_1.c.x), var_2.c.xz), var_2.c.x);
    return _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.a, 4294967295u, u_input.a)) & _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 16985u, u_input.a), ~vec3<u32>(1u, 0u, 17574u)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 975u, 1u), vec3<u32>(u_input.a, 33550u, 39909u)), vec3<u32>(1u, 0u, 1u) >> (vec3<u32>(u_input.a, u_input.a, 1u) % vec3<u32>(32u)))), vec3<u32>(_wgslsmith_add_u32(abs(u_input.a), firstTrailingBit(~u_input.a)), _wgslsmith_div_u32(~u_input.a, u_input.a), ~_wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(u_input.a, 0u))));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1) -> vec3<bool> {
    global0 = array<f32, 28>();
    var var_0 = func_3();
    var var_1 = firstTrailingBit(_wgslsmith_mod_u32(arg_1.x, ~(~94591u)));
    let var_2 = Struct_1(arg_2.a, true, arg_2.c);
    var_0 = ~(~min(firstTrailingBit(func_3()), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, 0u, 60078u), vec3<u32>(0u, 1u, 0u))));
    return arg_2.c;
}

fn func_1(arg_0: bool, arg_1: u32) -> bool {
    let var_0 = Struct_1(arg_0, true, select(func_2(min(1u, arg_1), vec2<u32>(~61832u, 1u), Struct_1(!arg_0, any(vec2<bool>(false, false)), vec3<bool>(true, true, true))), func_2(~(~4294967295u), vec2<u32>(u_input.a, u_input.a), Struct_1(false, func_2(u_input.a, vec2<u32>(47389u, 1u), Struct_1(false, arg_0, vec3<bool>(false, false, true))).x, select(vec3<bool>(true, false, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, true)))), true));
    global1 = array<vec3<i32>, 3>();
    var var_1 = Struct_1(true, var_0.b, var_0.c);
    let var_2 = select(1i, -(57254i << (u_input.a % 32u)), any(var_0.c.yy)) >> (_wgslsmith_dot_vec3_u32(reverseBits(reverseBits(vec3<u32>(1u, 4294967295u, u_input.a))), _wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.a, u_input.a, 86337u), vec3<u32>(arg_1, arg_1, arg_1)) ^ vec3<u32>(arg_1, arg_1, u_input.a), vec3<u32>(u_input.a, 5892u, 4294967295u))) % 32u);
    var var_3 = Struct_1(arg_0, var_0.a, var_1.c);
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 3>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_f_op_f32(f32(-1f) * -390f))), -726f, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 31819u)), u_input.a), 28u)]));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(59923u, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)], var_0.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1365f, -1055f, 607f), vec3<f32>(1141f, var_0.x, global0[_wgslsmith_index_u32(61390u, 28u)]), vec3<bool>(false, true, false))))))))));
    var var_1 = Struct_1(all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), func_1(true, ~(1u ^ u_input.a)), func_2(u_input.a, select(func_3().xx, _wgslsmith_add_vec2_u32(vec2<u32>(2484u, 4294967295u), min(vec2<u32>(66854u, u_input.a), vec2<u32>(u_input.a, 40070u))), !any(vec2<bool>(true, true))), Struct_1(true, any(vec2<bool>(false, false)), !func_2(u_input.a, vec2<u32>(4294967295u, 1u), Struct_1(false, false, vec3<bool>(true, true, true))))));
    let var_2 = Struct_1(var_1.b, var_1.b, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, firstTrailingBit(vec4<u32>(~23411u, ~33724u, u_input.a ^ u_input.a, ~1u) | reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(38065u, u_input.a, 23533u, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 3633u)))));
}

