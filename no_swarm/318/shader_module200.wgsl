struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: Struct_2 = Struct_2(24608u, Struct_1(vec3<f32>(-149f, 1590f, 1216f), -19971i));

var<private> global1: i32;

var<private> global2: array<bool, 26>;

var<private> global3: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(i32(-2147483648), 3842i, -1i, -1i), vec4<i32>(-34080i, 0i, -29783i, 55667i), vec4<i32>(22099i, 2147483647i, -39847i, -32265i), vec4<i32>(2147483647i, 2147483647i, -20179i, 35108i), vec4<i32>(64455i, i32(-2147483648), i32(-2147483648), -28813i), vec4<i32>(2147483647i, -12000i, -55337i, -30728i), vec4<i32>(-34066i, i32(-2147483648), 1i, 1i), vec4<i32>(4531i, 0i, 2147483647i, 44864i), vec4<i32>(30497i, 28473i, i32(-2147483648), -14272i), vec4<i32>(-18080i, -1971i, -49986i, 3338i), vec4<i32>(-30763i, i32(-2147483648), -73525i, 30064i));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 11u)];
    global1 = global0.b.b >> (arg_0.a % 32u);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.b.a.x)), _wgslsmith_div_f32(arg_0.b.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-176f, -721f, false))))), arg_0.b.a.x, global0.b.a.x);
    global3 = array<vec4<i32>, 11>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_1.xzy))));
    return u_input.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>) -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(func_3(Struct_2(u_input.a.x, Struct_1(vec3<f32>(global0.b.a.x, 1000f, 1112f), global0.b.b))), u_input.a | vec4<u32>(24085u, 0u, 7509u, 86025u)), vec4<u32>(countOneBits(arg_0.x), 10614u ^ u_input.a.x, func_3(Struct_2(u_input.a.x, Struct_1(global0.b.a, global0.b.b))).x, arg_0.x)), max(u_input.a, u_input.a)), Struct_1(_wgslsmith_f_op_vec3_f32(-global0.b.a), -select(0i, global0.b.b, false)));
    global3 = array<vec4<i32>, 11>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(var_0.b.a)), ~0i);
    let var_2 = ~1u;
    global2 = array<bool, 26>();
    return vec4<bool>(false, !(!global2[_wgslsmith_index_u32((global0.a | arg_0.x) ^ global0.a, 26u)]), false, any(select(select(select(vec2<bool>(arg_1.x, true), vec2<bool>(false, arg_1.x), global2[_wgslsmith_index_u32(0u, 26u)]), vec2<bool>(false, false), arg_1.xy), arg_1.yx, select(vec2<bool>(global2[_wgslsmith_index_u32(19624u, 26u)], global2[_wgslsmith_index_u32(1u, 26u)]), arg_1.xy, vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 26u)], arg_1.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.a;
    var var_1 = all(!func_2(var_0.xzz, select(vec3<bool>(true, true, true), vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 26u)], false, false), select(vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 26u)], false), vec3<bool>(global2[_wgslsmith_index_u32(global0.a, 26u)], global2[_wgslsmith_index_u32(94454u, 26u)], true), vec3<bool>(false, global2[_wgslsmith_index_u32(6318u, 26u)], false)))));
    var var_2 = Struct_2(0u, global0.b);
    var var_3 = Struct_2(4294967295u, global0.b);
    global1 = 1i;
    return Struct_1(_wgslsmith_f_op_vec3_f32(var_3.b.a + global0.b.a), reverseBits(global0.b.b));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = ~func_3(Struct_2(global0.a, arg_1)).x;
    global3 = array<vec4<i32>, 11>();
    global2 = array<bool, 26>();
    global0 = Struct_2(firstTrailingBit(global0.a), global0.b);
    var var_1 = ~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x);
    return StorageBuffer(firstLeadingBit(u_input.a.xy) & _wgslsmith_sub_vec2_u32(~vec2<u32>(38299u, 4294967295u), u_input.a.xy ^ vec2<u32>(var_0, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(32286u, 26u)];
    global2 = array<bool, 26>();
    var var_1 = u_input.a;
    global0 = Struct_2(u_input.a.x, global0.b);
    let var_2 = global0.b;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_sub_u32(1u, _wgslsmith_div_u32(var_1.x, global0.a)), func_1());
}

