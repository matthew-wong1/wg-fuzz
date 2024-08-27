struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(2147483647i, 1i), vec2<i32>(1i, 1i), vec2<i32>(42788i, 1i), vec2<i32>(19505i, 23964i), vec2<i32>(0i, 0i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, 13885i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-1i, -9662i), vec2<i32>(1148i, -9156i), vec2<i32>(2147483647i, 14457i), vec2<i32>(-12052i, 0i), vec2<i32>(1i, -1i), vec2<i32>(6588i, i32(-2147483648)), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, 13899i), vec2<i32>(0i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(5854i, 2147483647i), vec2<i32>(0i, -13878i), vec2<i32>(-1i, -15670i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, -11294i), vec2<i32>(-32601i, -1i));

var<private> global2: array<bool, 14> = array<bool, 14>(true, true, true, true, false, false, true, true, true, false, true, true, false, false);

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(false, 0u), Struct_1(false, 4294967295u), Struct_1(false, 2725u), Struct_1(false, 1u), Struct_1(true, 4294967295u), Struct_1(false, 4294967295u), Struct_1(false, 9227u), Struct_1(true, 13180u), Struct_1(true, 0u), Struct_1(false, 24303u), Struct_1(true, 30593u), Struct_1(true, 33166u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: vec4<u32>) -> bool {
    return !global2[_wgslsmith_index_u32(arg_2.x, 14u)];
}

fn func_1() -> Struct_1 {
    global2 = array<bool, 14>();
    var var_0 = firstTrailingBit(_wgslsmith_div_u32(~u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a)) | _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a, u_input.a), ~(~vec3<u32>(1u, u_input.a, u_input.a))));
    var var_1 = all(vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 14u)] - 380f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 14u)])) <= _wgslsmith_f_op_f32(f32(-1f) * -678f), true, global2[_wgslsmith_index_u32(u_input.a, 14u)], true));
    global2 = array<bool, 14>();
    let var_2 = !select(select(vec3<bool>(true, false & global2[_wgslsmith_index_u32(u_input.a, 14u)], func_2(global0[_wgslsmith_index_u32(u_input.a, 14u)], vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 14u)], true, false, global2[_wgslsmith_index_u32(u_input.a, 14u)]), vec4<u32>(u_input.a, u_input.a, 770u, 1u))), vec3<bool>(select(global2[_wgslsmith_index_u32(10279u, 14u)], true, global2[_wgslsmith_index_u32(0u, 14u)]), global2[_wgslsmith_index_u32(u_input.a & 47137u, 14u)], false), select(!vec3<bool>(global2[_wgslsmith_index_u32(22525u, 14u)], global2[_wgslsmith_index_u32(u_input.a, 14u)], false), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 14u)], true, global2[_wgslsmith_index_u32(92616u, 14u)]), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 14u)], true, true))), select(select(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 14u)], global2[_wgslsmith_index_u32(1u, 14u)], false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 14u)], true, false), global2[_wgslsmith_index_u32(95589u, 14u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 14u)], global2[_wgslsmith_index_u32(u_input.a, 14u)], global2[_wgslsmith_index_u32(1u, 14u)]), 6711u < u_input.a), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 14u)], global2[_wgslsmith_index_u32(74559u, 14u)], true), select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(u_input.a, 14u)], global2[_wgslsmith_index_u32(0u, 14u)]), !vec3<bool>(true, false, global2[_wgslsmith_index_u32(48982u, 14u)]), select(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(u_input.a, 14u)]), vec3<bool>(global2[_wgslsmith_index_u32(8207u, 14u)], global2[_wgslsmith_index_u32(u_input.a, 14u)], global2[_wgslsmith_index_u32(u_input.a, 14u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 14u)], true)))), false);
    return global3[_wgslsmith_index_u32(u_input.a, 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(1u, 12u)];
    let var_1 = -19302i;
    var var_2 = 1u;
    global0 = array<f32, 14>();
    var var_3 = func_1();
    global2 = array<bool, 14>();
    let var_4 = global3[_wgslsmith_index_u32(19127u, 12u)];
    global1 = array<vec2<i32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<i32>(~var_1, _wgslsmith_div_i32(-7439i, i32(-1i) * -945i), var_1, 0i)));
}

