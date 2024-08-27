struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(Struct_1(17511u, 0u), false), Struct_4(Struct_1(4294967295u, 4294967295u), true), Struct_4(Struct_1(7495u, 1u), true), Struct_4(Struct_1(0u, 1u), false), Struct_4(Struct_1(4294967295u, 11086u), false), Struct_4(Struct_1(9068u, 0u), false), Struct_4(Struct_1(1u, 10968u), false), Struct_4(Struct_1(17128u, 1921u), false), Struct_4(Struct_1(0u, 58839u), true), Struct_4(Struct_1(0u, 1u), true), Struct_4(Struct_1(4294967295u, 4294967295u), true), Struct_4(Struct_1(47846u, 1u), true));

var<private> global2: array<vec3<u32>, 2>;

var<private> global3: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false));

var<private> global4: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> vec3<u32> {
    global0 = array<Struct_1, 6>();
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(countOneBits(4294967295u), 6u)], true);
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(25571u, 6u)], !(u_input.b.x < (-global4.x >> (1u % 32u))));
    var_0 = global1[_wgslsmith_index_u32(127896u, 12u)];
    global1 = array<Struct_4, 12>();
    return global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(arg_0), firstTrailingBit(~max(0u, _wgslsmith_clamp_u32(arg_0, 74388u, 1u)))), 2u)];
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool, arg_3: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_sub_u32(u_input.c, _wgslsmith_mod_u32(u_input.c, u_input.c)), ~_wgslsmith_dot_vec3_u32(func_3(u_input.c), vec3<u32>(abs(u_input.c), ~u_input.c, _wgslsmith_sub_u32(37876u, 26072u))));
    var var_1 = Struct_3(arg_0.a);
    var var_2 = Struct_3(-15629i << (~u_input.c % 32u));
    var var_3 = var_0.b >> (u_input.c % 32u);
    var var_4 = !select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, false, true), true);
    return 24286u;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    global1 = array<Struct_4, 12>();
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(func_2(arg_1, vec4<f32>(-1353f, 510f, -108f, -322f), true, _wgslsmith_f_op_f32(f32(-1f) * -818f)) >> (4294967295u % 32u)), ~1u), 7u)];
    let var_1 = -674f;
    let var_2 = vec4<f32>(var_1, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1))), _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-607f * -1000f) - _wgslsmith_f_op_f32(step(476f, var_1))))));
    global2 = array<vec3<u32>, 2>();
    return Struct_2(global2[_wgslsmith_index_u32(abs(min(34071u, ~countOneBits(u_input.c))), 2u)], arg_2, arg_2, Struct_1(func_3(arg_2.b).x >> (max(countOneBits(0u), 1u) % 32u), firstLeadingBit(4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 7>();
    var var_0 = Struct_1(~5439u, u_input.c);
    let var_1 = func_1(0i, Struct_3(-u_input.b.x & ~(2147483647i | u_input.d)), Struct_1(4294967295u, ~abs(var_0.b & 116118u)));
    var var_2 = firstTrailingBit(1i);
    var var_3 = Struct_4(global0[_wgslsmith_index_u32(19435u, 6u)], false);
    var_3 = global1[_wgslsmith_index_u32(3062u | (select(u_input.c, 0u, select(true, false, true)) & ~(~var_0.a)), 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-2691f, _wgslsmith_f_op_f32(select(323f, 775f, all(global3[_wgslsmith_index_u32(~u_input.c, 7u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1026f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1134f, -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -647f))));
}

