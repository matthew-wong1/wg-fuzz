struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(74192u, 1464f, vec2<bool>(true, true)), Struct_1(4294967295u, -923f, vec2<bool>(false, true)), Struct_1(61063u, -492f, vec2<bool>(false, false)), Struct_1(608u, -443f, vec2<bool>(true, true)), Struct_1(48944u, 614f, vec2<bool>(false, false)), Struct_1(8474u, 148f, vec2<bool>(true, true)), Struct_1(4294967295u, -236f, vec2<bool>(true, false)), Struct_1(24267u, -184f, vec2<bool>(false, true)), Struct_1(1u, -1689f, vec2<bool>(false, false)), Struct_1(1u, -1414f, vec2<bool>(true, false)), Struct_1(1604u, 1000f, vec2<bool>(true, false)), Struct_1(30005u, 338f, vec2<bool>(true, true)), Struct_1(57625u, -545f, vec2<bool>(true, false)), Struct_1(4294967295u, -1066f, vec2<bool>(false, true)));

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(1u, 725f, vec2<bool>(false, true)), Struct_1(4294967295u, -1455f, vec2<bool>(true, false)), Struct_1(0u, -1000f, vec2<bool>(true, false)), Struct_1(41272u, 193f, vec2<bool>(true, false)), Struct_1(42413u, 967f, vec2<bool>(true, false)), Struct_1(17873u, -1000f, vec2<bool>(false, false)), Struct_1(4294967295u, -188f, vec2<bool>(true, true)), Struct_1(0u, 902f, vec2<bool>(false, true)), Struct_1(4294967295u, 273f, vec2<bool>(true, false)), Struct_1(21640u, 1855f, vec2<bool>(true, false)), Struct_1(4294967295u, 408f, vec2<bool>(true, false)), Struct_1(101212u, 1000f, vec2<bool>(true, true)), Struct_1(34432u, -436f, vec2<bool>(false, true)), Struct_1(22296u, 180f, vec2<bool>(false, false)));

var<private> global2: array<vec4<bool>, 18>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: Struct_2) -> vec4<f32> {
    global2 = array<vec4<bool>, 18>();
    let var_0 = _wgslsmith_sub_i32(min(-(1i << ((arg_3.a.x ^ arg_3.b.a) % 32u)), firstTrailingBit(_wgslsmith_mod_i32(abs(2147483647i), 1i))), min(2147483647i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, 2147483647i, 0i), select(vec3<i32>(13596i, -55921i, 2147483647i), vec3<i32>(-2939i, 0i, -38556i), true), vec3<bool>(false, arg_1.x, arg_3.b.c.x)), min(vec3<i32>(-1i, 5780i, 5849i) >> (vec3<u32>(arg_3.e, 1u, u_input.b.x) % vec3<u32>(32u)), ~vec3<i32>(13471i, 46554i, -2147483647i)))));
    global0 = array<Struct_1, 14>();
    global1 = array<Struct_1, 14>();
    global1 = array<Struct_1, 14>();
    return vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_3.d)))), _wgslsmith_f_op_f32(abs(arg_3.b.b)), _wgslsmith_f_op_f32(sign(arg_0.x)));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 516f))), 1006f, 269f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-242f, -1915f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-825f * 321f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(275f, -384f, -1000f, 980f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-458f, -1784f, 1835f, 552f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1589f, -1000f, 184f, -1169f), vec4<f32>(-1155f, -1168f, -2303f, -394f), global2[_wgslsmith_index_u32(1u, 18u)])))), _wgslsmith_div_vec4_f32(vec4<f32>(1f, _wgslsmith_div_f32(191f, 1172f), _wgslsmith_f_op_f32(-1112f - 876f), _wgslsmith_f_op_f32(-668f * 254f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(321f, 465f), vec2<bool>(true, false), global2[_wgslsmith_index_u32(arg_0, 18u)], Struct_2(u_input.c, Struct_1(arg_0, -1272f, vec2<bool>(true, true)), 748f, 1000f, 39650u))), vec4<f32>(1907f, -511f, 866f, -2383f))))));
    let var_1 = ~45675u;
    var var_2 = Struct_1(arg_0, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.x))))), vec2<bool>(!(false || all(vec4<bool>(false, true, true, false))), any(vec3<bool>(true, true, true))));
    global2 = array<vec4<bool>, 18>();
    global0 = array<Struct_1, 14>();
    return Struct_2(u_input.c, global0[_wgslsmith_index_u32(55798u, 14u)], var_2.b, var_0.x, u_input.c.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    var var_0 = func_2(_wgslsmith_add_u32(~select(arg_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.a.x), arg_2.yz), !arg_1.c.x), 4294967295u));
    let var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 14u)];
    let var_2 = ~4294967295u;
    global0 = array<Struct_1, 14>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_1.b)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1747f)), _wgslsmith_f_op_f32(max(var_3, 1806f)));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: i32, arg_3: f32) -> StorageBuffer {
    let var_0 = vec3<u32>(arg_1.x, firstTrailingBit(1u ^ ~arg_1.x), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(func_2(u_input.c.x).a, ~vec3<u32>(u_input.a.x, 0u, 4294967295u)), u_input.a.x));
    return StorageBuffer(var_0.x, ~(~vec3<u32>(_wgslsmith_mod_u32(0u, arg_1.x), 0u, _wgslsmith_sub_u32(arg_1.x, var_0.x))), ~_wgslsmith_add_u32(_wgslsmith_add_u32(0u, _wgslsmith_add_u32(0u, 0u)), _wgslsmith_sub_u32(~arg_1.x, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(-993f - -1320f), _wgslsmith_div_vec4_u32(~u_input.a, u_input.a), 0i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-410f, 684f, 438f), vec3<f32>(-1000f, -1000f, 314f))), Struct_1(7353u, 3280f, vec2<bool>(true, false)), vec4<u32>(u_input.c.x, 6508u, 4294967295u, u_input.c.x))) + _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -2216f)))))));
}

