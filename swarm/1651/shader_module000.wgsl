struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(8743i, 14424i)), Struct_1(vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<i32>(-15252i, i32(-2147483648))));

var<private> global1: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(840f, -849f, 431f), vec3<f32>(-195f, 2746f, -769f), vec3<f32>(-935f, -155f, 355f), vec3<f32>(-520f, 1013f, 429f), vec3<f32>(-147f, 688f, 109f), vec3<f32>(-394f, 901f, 1000f), vec3<f32>(-728f, -1062f, 991f), vec3<f32>(-622f, 160f, 2008f), vec3<f32>(-714f, 574f, -503f), vec3<f32>(-1271f, -1719f, -390f), vec3<f32>(1673f, 394f, -211f), vec3<f32>(1355f, -1870f, 367f), vec3<f32>(1000f, 161f, 501f), vec3<f32>(-541f, 1000f, 2174f), vec3<f32>(-904f, -203f, 663f), vec3<f32>(926f, -430f, 751f), vec3<f32>(1246f, 681f, 1000f), vec3<f32>(-788f, -489f, -829f), vec3<f32>(576f, 175f, 210f), vec3<f32>(2557f, -1615f, 1978f), vec3<f32>(-1000f, 634f, -1651f), vec3<f32>(133f, 101f, 1714f), vec3<f32>(279f, -587f, 4213f), vec3<f32>(-1391f, 865f, -1551f), vec3<f32>(1112f, 640f, 299f), vec3<f32>(-1099f, -544f, 323f), vec3<f32>(-1078f, -1065f, 797f), vec3<f32>(-1275f, 2832f, 1000f), vec3<f32>(167f, -582f, -1462f), vec3<f32>(-113f, 2112f, 1000f));

var<private> global2: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 9098u), vec2<u32>(4294967295u, 40569u), vec2<u32>(0u, 34059u), vec2<u32>(0u, 4367u), vec2<u32>(5205u, 45799u), vec2<u32>(8498u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(43881u, 75645u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 9211u), vec2<u32>(29164u, 40809u), vec2<u32>(0u, 4294967295u), vec2<u32>(25934u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(56664u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(51979u, 37587u));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> Struct_1 {
    global1 = array<vec3<f32>, 30>();
    let var_0 = max(~(vec2<u32>(~arg_0, ~arg_0) | _wgslsmith_div_vec2_u32(global2[_wgslsmith_index_u32(arg_0, 20u)] >> (vec2<u32>(8761u, 0u) % vec2<u32>(32u)), vec2<u32>(0u, arg_0))), firstLeadingBit(global2[_wgslsmith_index_u32(arg_0, 20u)]));
    global2 = array<vec2<u32>, 20>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1088f)), arg_1.x);
    let var_2 = global0.b.a;
    return Struct_1(vec2<i32>(0i ^ global0.c.a.x, u_input.a.x));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<i32>, arg_3: u32) -> u32 {
    var var_0 = Struct_1(countOneBits(_wgslsmith_add_vec2_i32(-global0.c.a ^ firstTrailingBit(vec2<i32>(45876i, 17742i)), -(u_input.a ^ u_input.a))));
    var var_1 = select(arg_3, arg_3, arg_0.x);
    let var_2 = vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-420f, 1000f, false)) * 831f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1)))), arg_1);
    var var_3 = 9440u;
    let var_4 = vec4<bool>(false, false, true, true);
    return ~(~_wgslsmith_sub_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 3802u, arg_3, arg_3), vec4<u32>(1u, arg_3, 50841u, 0u)), arg_3), ~arg_3 >> (arg_3 % 32u)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    let var_0 = 2147483647i;
    var var_1 = global1[_wgslsmith_index_u32(0u, 30u)];
    let var_2 = Struct_1(global0.b.a);
    var var_3 = _wgslsmith_f_op_f32(-var_1.x);
    let var_4 = Struct_1(arg_2.c.a);
    return (~(func_3(vec4<bool>(true, true, false, false), -448f, vec4<i32>(arg_0, arg_0, var_4.a.x, 74761i), 57832u) | ~26531u) & ~firstLeadingBit(0u)) | ~90198u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.a.x);
    global0 = Struct_2(func_1(1u, vec2<f32>(-178f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-789f + 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1997f)))), Struct_1(global0.c.a), Struct_1(-u_input.a));
    var var_1 = Struct_3(2147483647i, 1f);
    let var_2 = abs(_wgslsmith_sub_vec4_u32(vec4<u32>(abs(1u), ~(~4294967295u), _wgslsmith_mod_u32(func_2(u_input.a.x, var_1.b, Struct_2(Struct_1(vec2<i32>(-2147483647i, -47826i)), Struct_1(global0.c.a), global0.b), Struct_3(global0.b.a.x, -1783f)), 1u), 0u), ~vec4<u32>(firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(53733u, 4294967295u)), ~0u, ~48785u)));
    var var_3 = 1297f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(global0.b.a));
}

