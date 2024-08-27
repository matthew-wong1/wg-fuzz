struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

var<private> global1: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(13885i, i32(-2147483648), 2147483647i, 9494i), vec4<i32>(i32(-2147483648), 1i, 0i, -37329i), vec4<i32>(-5183i, 1i, 2147483647i, 1i), vec4<i32>(43527i, -53228i, -3101i, -1i), vec4<i32>(1i, -1i, -6874i, 0i), vec4<i32>(-21342i, i32(-2147483648), -15957i, -1i), vec4<i32>(-11339i, -19796i, -1i, 35301i), vec4<i32>(-4902i, 46363i, 67749i, 1i), vec4<i32>(-214i, 1i, 2147483647i, -1i), vec4<i32>(4624i, -13067i, -1910i, 15015i), vec4<i32>(71362i, -1i, 18603i, -42148i), vec4<i32>(-17241i, -7505i, 1i, -4933i), vec4<i32>(i32(-2147483648), -18817i, i32(-2147483648), -10326i), vec4<i32>(6916i, 50905i, 60078i, 50777i), vec4<i32>(2147483647i, -1i, 11961i, 0i));

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = -1098f;
    global0 = array<Struct_3, 13>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.e.x, 13u)];
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    return var_1.a.x << (~var_1.a.x % 32u);
}

fn func_2(arg_0: u32) -> vec4<u32> {
    let var_0 = -358f;
    let var_1 = ~func_3() <= ~arg_0;
    global1 = array<vec4<i32>, 15>();
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, firstLeadingBit(89124u)), ~(~((25367u >> (arg_0 % 32u)) << (min(arg_0, 14098u) % 32u))));
    global2 = array<Struct_1, 3>();
    return u_input.e;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_dot_vec4_u32((vec4<u32>(~4294967295u, _wgslsmith_div_u32(u_input.e.x, 21109u), arg_0.a.x, 1u) ^ func_2(1u)) >> (vec4<u32>(func_2(u_input.c.x).x, ~_wgslsmith_sub_u32(u_input.e.x, u_input.e.x), ~(~arg_0.a.x), 8844u) % vec4<u32>(32u)), ~vec4<u32>(~arg_0.a.x >> (select(4294967295u, arg_0.a.x, true) % 32u), ~u_input.c.x, max(~arg_0.a.x, max(u_input.e.x, 37778u)), 498u));
    var var_1 = _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.e.x, ~(~5700u), arg_0.a.x), arg_0.a);
    var var_2 = Struct_3(max(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.a, arg_0.a), arg_0.a), arg_0.a), arg_0.a), arg_1, arg_1, -112f);
    var var_3 = !(!select(vec4<bool>(var_2.c.a, var_2.b.b.b.x, true, !arg_2), !(!arg_0.c.b.b), var_2.b.a));
    var var_4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(764f)) * _wgslsmith_f_op_f32(min(arg_1.c.x, 506f))))), 983f, -1889f, -105f), select(!(!(!arg_1.b.b)), !vec4<bool>(all(var_2.c.b.b.yy), var_3.x, true, all(vec2<bool>(arg_0.c.b.b.x, true))), var_3.x));
    return arg_1.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -215f), _wgslsmith_div_f32(179f, -262f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -279f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(214f, -2554f, -1000f, _wgslsmith_f_op_f32(-603f * -1108f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(878f, 2023f, -137f, -1562f))) * _wgslsmith_f_op_vec4_f32(func_1(Struct_3(vec3<u32>(19276u, 1u, 11463u), Struct_2(true, Struct_1(vec4<f32>(1163f, -297f, 688f, 172f), vec4<bool>(false, false, true, false)), vec3<f32>(-1417f, -1000f, 517f), 666f), Struct_2(false, Struct_1(vec4<f32>(-648f, 1296f, 1578f, 734f), vec4<bool>(true, true, true, true)), vec3<f32>(574f, -1000f, 653f), -1250f), -1501f), Struct_2(true, global2[_wgslsmith_index_u32(0u, 3u)], vec3<f32>(1000f, -1197f, 481f), 954f), false))))));
}

