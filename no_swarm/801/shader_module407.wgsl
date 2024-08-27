struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<u32>(0u, 17027u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(0u, 49548u)));

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<u32>(61238u, 27992u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(18139u, 69906u)), Struct_1(vec2<u32>(66011u, 4294967295u)), Struct_1(vec2<u32>(11715u, 24453u)), Struct_1(vec2<u32>(1u, 51997u)), Struct_1(vec2<u32>(73979u, 53653u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(12342u, 4294967295u)), Struct_1(vec2<u32>(1u, 0u)));

var<private> global3: array<vec3<bool>, 15>;

var<private> global4: i32 = -13619i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_1) -> u32 {
    global1 = _wgslsmith_div_i32(~u_input.a << (~firstTrailingBit(26913u) % 32u), -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_1.x, u_input.a, -19706i), vec4<i32>(u_input.a, -2147483647i, 7402i, u_input.a)), vec4<i32>(arg_1.x, arg_1.x, -1i, 6703i))) > -2147483647i;
    global0 = array<Struct_1, 3>();
    let var_0 = true;
    let var_1 = all(!(!select(vec2<bool>(var_0, var_0), !vec2<bool>(var_0, var_0), true)));
    global0 = array<Struct_1, 3>();
    return 0u;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = ~_wgslsmith_add_vec3_u32(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(u_input.b, 13678u, u_input.b))), ~vec3<u32>(18645u ^ u_input.b, func_3(Struct_1(vec2<u32>(u_input.b, 35550u)), vec2<i32>(-37158i, 34783i), 530f, Struct_1(vec2<u32>(u_input.b, u_input.b))), ~u_input.b));
    let var_1 = var_0.xz;
    return Struct_1(var_0.yx);
}

fn func_1() -> f32 {
    global4 = -50339i;
    global0 = array<Struct_1, 3>();
    global2 = array<Struct_1, 10>();
    let var_0 = func_2(false);
    global3 = array<vec3<bool>, 15>();
    return 449f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 10>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -586f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1())))) + 123f)));
    let var_1 = global3[_wgslsmith_index_u32(2740u, 15u)];
    global0 = array<Struct_1, 3>();
    global1 = var_1.x;
    var var_2 = ~_wgslsmith_div_vec3_u32(~vec3<u32>(~11309u, 7433u, reverseBits(u_input.b)), max(select(~vec3<u32>(1481u, u_input.b, 0u), ~vec3<u32>(0u, u_input.b, 6494u), select(global3[_wgslsmith_index_u32(9054u, 15u)], vec3<bool>(false, false, true), false)), ~vec3<u32>(u_input.b, u_input.b, 0u) >> (min(vec3<u32>(29381u, u_input.b, u_input.b), vec3<u32>(u_input.b, 1u, 4294967295u)) % vec3<u32>(32u))));
    global3 = array<vec3<bool>, 15>();
    let var_3 = _wgslsmith_f_op_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(func_2(var_1.x).a.x, _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-676f))))));
}

