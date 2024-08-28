struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(1000f), Struct_1(-302f), Struct_1(-877f), Struct_1(1000f), Struct_1(2439f), Struct_1(-1959f), Struct_1(1000f), Struct_1(-1000f), Struct_1(-953f), Struct_1(763f), Struct_1(-934f), Struct_1(3333f), Struct_1(-158f), Struct_1(410f), Struct_1(-526f), Struct_1(-1111f), Struct_1(-1638f), Struct_1(-663f), Struct_1(633f), Struct_1(636f), Struct_1(1071f), Struct_1(-812f), Struct_1(1078f), Struct_1(-961f), Struct_1(-636f), Struct_1(1000f), Struct_1(1226f), Struct_1(-529f), Struct_1(-561f), Struct_1(1347f));

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<bool, 16>;

var<private> global3: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_0 = 1384f;
    var var_1 = abs(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 0u, 1u), abs(vec4<u32>(u_input.a, 56644u, u_input.a, u_input.a))), ~firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))));
    var var_2 = vec4<bool>(27517u <= _wgslsmith_div_u32(var_1.x, min(u_input.a, 29237u) & 4294967295u), false, global3.x, global2[_wgslsmith_index_u32(~((countOneBits(var_1.x) & u_input.a) | ~(~var_1.x)), 16u)]);
    return global0[_wgslsmith_index_u32(73451u, 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(129f);
    global3 = !vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(11075u, 16u)]), true)) && true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(68221u, 119444u, u_input.c.x, 1u), vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, 0u)), vec4<u32>(u_input.a, u_input.a, u_input.c.x, 74732u)), vec4<u32>(1u, u_input.a, u_input.a, 90729u) >> (countOneBits(vec4<u32>(4294967295u, 0u, u_input.a, 54677u)) % vec4<u32>(32u))), 16u)]);
    let var_1 = true;
    global0 = array<Struct_1, 30>();
    let var_2 = func_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-433f, 1244f, -1240f, var_0.a) + vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a))))))), true, global1[_wgslsmith_index_u32(1368u, 10u)]);
    var var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(1090f)), -1i, ~(~0u), _wgslsmith_f_op_f32(-var_0.a));
}

