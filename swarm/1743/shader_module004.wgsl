struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(false, vec4<bool>(true, true, true, false), 10718u, false), Struct_1(false, vec4<bool>(true, false, false, true), 0u, true), Struct_1(true, vec4<bool>(true, false, true, true), 27794u, true), Struct_1(true, vec4<bool>(false, true, false, true), 0u, false), Struct_1(false, vec4<bool>(true, false, false, false), 80592u, false));

var<private> global1: array<u32, 15>;

var<private> global2: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-307f, 453f), vec2<f32>(-1000f, 1715f), vec2<f32>(439f, 1323f), vec2<f32>(157f, 303f), vec2<f32>(-150f, -291f), vec2<f32>(-539f, -1000f), vec2<f32>(945f, -345f), vec2<f32>(-255f, 932f), vec2<f32>(-289f, 510f), vec2<f32>(-1000f, 394f), vec2<f32>(-1000f, 261f), vec2<f32>(-212f, -704f), vec2<f32>(-672f, -891f), vec2<f32>(454f, 1361f), vec2<f32>(-1256f, 848f), vec2<f32>(1427f, 1000f), vec2<f32>(-563f, -1289f), vec2<f32>(-332f, 638f), vec2<f32>(-2232f, 1657f), vec2<f32>(-933f, 2186f), vec2<f32>(-373f, -805f), vec2<f32>(342f, -1581f), vec2<f32>(440f, -1077f), vec2<f32>(-1191f, -2454f), vec2<f32>(554f, -569f), vec2<f32>(1146f, 832f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true))));
    return -779f;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = arg_1;
    global1 = array<u32, 15>();
    let var_1 = global0[_wgslsmith_index_u32(~arg_0.x, 5u)];
    var var_2 = Struct_1(true, var_1.b, ~max(_wgslsmith_mod_u32(74474u, ~global1[_wgslsmith_index_u32(u_input.d.x, 15u)]), 55517u), var_0.d);
    var var_3 = var_0;
    return Struct_1(arg_3.x, var_1.b, ~48549u, !(arg_3.x || true));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    global2 = array<vec2<f32>, 26>();
    let var_0 = ~_wgslsmith_dot_vec3_u32(u_input.d, ~select(vec3<u32>(arg_1.c, 1u, 99067u), min(u_input.d, vec3<u32>(9146u, 1u, 4294967295u)), !arg_1.b.zxx));
    global2 = array<vec2<f32>, 26>();
    let var_1 = 6727i;
    var var_2 = ~4294967295u;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 26>();
    global1 = array<u32, 15>();
    let var_0 = Struct_1((~_wgslsmith_add_i32(u_input.a, -2147483647i) >= (1i << (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 15u)], 15u)] % 32u))) && (_wgslsmith_f_op_f32(f32(-1f) * -831f) != _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1898f, -1304f, 218f, 713f)))))), vec4<bool>(!all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), (true | (u_input.a < -2746i)) || all(vec2<bool>(false, true)), select(_wgslsmith_f_op_f32(-1509f - 152f) == _wgslsmith_f_op_f32(select(838f, -2919f, false)), func_3(_wgslsmith_f_op_f32(select(-534f, -1447f, true)), func_2(vec4<u32>(u_input.c, 40671u, 1u, 1370u), Struct_1(false, vec4<bool>(false, true, false, true), 54327u, false), true, vec4<bool>(true, true, false, true)), min(vec4<i32>(-2147483647i, u_input.a, u_input.a, 29897i), vec4<i32>(u_input.a, u_input.a, -22018i, u_input.a))), func_2(~vec4<u32>(global1[_wgslsmith_index_u32(u_input.c, 15u)], 1u, global1[_wgslsmith_index_u32(1u, 15u)], 53412u), func_2(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(4857u, 15u)], 20141u, global1[_wgslsmith_index_u32(0u, 15u)]), Struct_1(true, vec4<bool>(true, false, false, true), global1[_wgslsmith_index_u32(1u, 15u)], true), true, vec4<bool>(true, false, false, false)), true, vec4<bool>(true, false, true, false)).b.x), all(vec3<bool>(true, true, true))), _wgslsmith_add_u32(abs(u_input.d.x), ~global1[_wgslsmith_index_u32(1u, 15u)]) ^ min(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 15u)], 15u)]) | 1u, global1[_wgslsmith_index_u32(~0u, 15u)]), any(select(vec3<bool>(true, func_2(vec4<u32>(1u, 0u, u_input.c, u_input.c), global0[_wgslsmith_index_u32(5321u, 5u)], false, vec4<bool>(true, false, false, false)).d, true), vec3<bool>(false, true, true), false)));
    var var_1 = var_0;
    var_1 = func_2(_wgslsmith_div_vec4_u32(~reverseBits(~vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(var_0.c, 15u)], 0u, 4294967295u)), countOneBits(~vec4<u32>(25726u, var_1.c, 32280u, 4294967295u)) ^ reverseBits(max(vec4<u32>(4294967295u, 0u, var_1.c, 57561u), vec4<u32>(7085u, global1[_wgslsmith_index_u32(var_1.c, 15u)], var_0.c, 1u)))), var_0, all(select(select(var_1.b.ww, !vec2<bool>(true, var_1.d), select(var_0.b.xx, vec2<bool>(var_0.d, false), vec2<bool>(var_0.b.x, var_0.d))), var_1.b.wy, all(vec4<bool>(var_1.b.x, var_1.a, false, var_0.a)))), vec4<bool>(var_0.b.x, var_0.d, !var_0.b.x, true));
    global2 = array<vec2<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(max(u_input.a, -39194i), u_input.a, _wgslsmith_add_i32(u_input.a, -24043i), u_input.a), abs(vec4<i32>(u_input.a, 10783i, -1i, u_input.a) & vec4<i32>(u_input.a, -40993i, u_input.a, u_input.a))), -27490i), func_2(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c, 91035u, global1[_wgslsmith_index_u32(u_input.d.x, 15u)], 69257u), ~vec4<u32>(var_0.c, global1[_wgslsmith_index_u32(var_0.c, 15u)], 1u, var_0.c)) | ~(~vec4<u32>(var_0.c, global1[_wgslsmith_index_u32(var_1.c, 15u)], global1[_wgslsmith_index_u32(u_input.c, 15u)], var_1.c)), Struct_1(reverseBits(-21893i) <= (u_input.a ^ u_input.a), vec4<bool>(!var_1.d, true, true, all(var_0.b)), select(var_1.c, var_1.c, true), !(25713i >= u_input.a)), var_1.a, var_0.b).c, min(var_0.c, _wgslsmith_dot_vec3_u32(~u_input.d, ~u_input.d)), -31663i, global2[_wgslsmith_index_u32(45212u, 26u)]);
}

