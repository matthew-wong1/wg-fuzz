struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16>;

var<private> global1: array<vec4<f32>, 12>;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<f32>(-622f, 629f, 740f)), Struct_1(vec3<f32>(311f, 106f, 150f)), Struct_1(vec3<f32>(-623f, 1099f, 623f)), Struct_1(vec3<f32>(544f, -124f, -448f)), Struct_1(vec3<f32>(1086f, 1000f, 1240f)), Struct_1(vec3<f32>(146f, -1065f, 1501f)), Struct_1(vec3<f32>(1872f, -1391f, 436f)), Struct_1(vec3<f32>(950f, -1682f, -263f)), Struct_1(vec3<f32>(-666f, -308f, -516f)), Struct_1(vec3<f32>(755f, 1303f, -643f)), Struct_1(vec3<f32>(1000f, -1091f, -1108f)), Struct_1(vec3<f32>(711f, -679f, -1126f)));

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<f32>(942f, 1035f, 606f)), Struct_1(vec3<f32>(-1291f, 1000f, -1018f)), Struct_1(vec3<f32>(194f, -817f, 892f)), Struct_1(vec3<f32>(1419f, 1078f, -849f)), Struct_1(vec3<f32>(-1000f, -676f, -746f)), Struct_1(vec3<f32>(116f, 2336f, -849f)), Struct_1(vec3<f32>(-2609f, -1309f, 416f)), Struct_1(vec3<f32>(1000f, -1374f, 1138f)), Struct_1(vec3<f32>(-1440f, 1326f, -492f)), Struct_1(vec3<f32>(390f, 1000f, 1238f)), Struct_1(vec3<f32>(238f, 253f, 1120f)), Struct_1(vec3<f32>(126f, -2659f, 787f)), Struct_1(vec3<f32>(-620f, 1478f, -1005f)), Struct_1(vec3<f32>(1507f, -284f, -118f)), Struct_1(vec3<f32>(288f, 1000f, -2046f)), Struct_1(vec3<f32>(-668f, 1488f, -806f)));

var<private> global4: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = true;
    global0 = array<vec4<u32>, 16>();
    global0 = array<vec4<u32>, 16>();
    global2 = array<Struct_1, 12>();
    global2 = array<Struct_1, 12>();
    return 2147483647i;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = true;
    let var_1 = func_2(!vec2<bool>(all(!vec3<bool>(true, var_0, var_0)), true || (-56810i > arg_0.x)), global3[_wgslsmith_index_u32(u_input.a.x, 16u)]);
    var var_2 = arg_2;
    let var_3 = -1i;
    global4 = Struct_1(var_2.a);
    return var_0;
}

fn func_3(arg_0: u32) -> vec3<u32> {
    var var_0 = global3[_wgslsmith_index_u32(39271u, 16u)];
    let var_1 = ~countOneBits(_wgslsmith_add_u32(u_input.a.x, ~9318u));
    global2 = array<Struct_1, 12>();
    let var_2 = !(~(22387u << (var_1 % 32u)) >= min(var_1 | 73123u, select(arg_0, 4294967295u, true))) | false;
    var var_3 = select(var_2, true, any(!select(vec4<bool>(var_2, var_2, true, var_2), vec4<bool>(true, var_2, true, false), vec4<bool>(true, true, true, true)))) & true;
    return min(u_input.a, _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(~arg_0, 17511u << (1u % 32u), u_input.a.x)) | u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 12>();
    let var_0 = !(!(true == select(func_1(vec4<i32>(34129i, 0i, 2147483647i, -1i), vec2<f32>(global4.a.x, 1000f), Struct_1(vec3<f32>(global4.a.x, -1557f, global4.a.x)), global3[_wgslsmith_index_u32(u_input.a.x, 16u)]), true, true)));
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 12u)];
    var var_2 = abs(~func_3(4294967295u >> (u_input.a.x % 32u)));
    var var_3 = ~(~(-8184i));
    let x = u_input.a;
    s_output = StorageBuffer(~min(4294967295u, var_2.x & _wgslsmith_add_u32(0u, 1u)), _wgslsmith_f_op_f32(-global4.a.x), var_1.a.x, ~vec2<i32>(1i, 1i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.x, 51802u, 53371u) << (~vec3<u32>(u_input.a.x, var_2.x, 30235u) % vec3<u32>(32u)), ~vec3<u32>(92884u, 93868u, 36152u)), ~58764u, 0u));
}

