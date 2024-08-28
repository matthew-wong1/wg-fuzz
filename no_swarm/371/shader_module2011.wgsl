struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(731f, 658f), vec2<f32>(148f, -363f), vec2<f32>(1000f, 366f), vec2<f32>(1000f, -120f), vec2<f32>(127f, 239f), vec2<f32>(-1000f, -218f), vec2<f32>(230f, 945f), vec2<f32>(375f, 918f), vec2<f32>(-281f, 729f), vec2<f32>(749f, 1126f), vec2<f32>(125f, -690f), vec2<f32>(-1041f, -1012f), vec2<f32>(1045f, -1141f), vec2<f32>(-412f, 240f), vec2<f32>(-504f, 1000f), vec2<f32>(-1129f, 296f), vec2<f32>(1442f, 1000f), vec2<f32>(1284f, 891f), vec2<f32>(1231f, -357f), vec2<f32>(-767f, 1390f), vec2<f32>(1384f, -271f), vec2<f32>(497f, 1424f), vec2<f32>(895f, 266f), vec2<f32>(1359f, 436f), vec2<f32>(765f, -3330f), vec2<f32>(1183f, -439f), vec2<f32>(109f, 1557f), vec2<f32>(689f, 1478f), vec2<f32>(1745f, 1174f));

var<private> global1: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec2<bool>(true, false), vec2<u32>(42367u, 59207u), -1000f), Struct_3(vec2<bool>(true, false), vec2<u32>(1u, 4294967295u), -211f), Struct_3(vec2<bool>(true, true), vec2<u32>(0u, 138132u), -802f), Struct_3(vec2<bool>(true, false), vec2<u32>(4294967295u, 4490u), -1234f), Struct_3(vec2<bool>(true, false), vec2<u32>(0u, 4294967295u), 2139f), Struct_3(vec2<bool>(true, true), vec2<u32>(79764u, 1u), 1000f), Struct_3(vec2<bool>(true, true), vec2<u32>(4294967295u, 4294967295u), 388f), Struct_3(vec2<bool>(true, false), vec2<u32>(53212u, 17933u), -1017f), Struct_3(vec2<bool>(true, true), vec2<u32>(21944u, 0u), 1278f), Struct_3(vec2<bool>(true, true), vec2<u32>(1u, 1u), -472f), Struct_3(vec2<bool>(false, false), vec2<u32>(4294967295u, 1u), -405f), Struct_3(vec2<bool>(true, false), vec2<u32>(0u, 1u), -2778f), Struct_3(vec2<bool>(false, true), vec2<u32>(1203u, 0u), -287f), Struct_3(vec2<bool>(false, true), vec2<u32>(1u, 0u), -414f), Struct_3(vec2<bool>(true, false), vec2<u32>(5139u, 4294967295u), 1312f), Struct_3(vec2<bool>(true, true), vec2<u32>(28037u, 1u), 2254f), Struct_3(vec2<bool>(true, false), vec2<u32>(52656u, 85790u), -1455f), Struct_3(vec2<bool>(true, false), vec2<u32>(25135u, 4667u), -534f), Struct_3(vec2<bool>(true, false), vec2<u32>(1u, 0u), 593f), Struct_3(vec2<bool>(false, false), vec2<u32>(4294967295u, 99557u), -457f), Struct_3(vec2<bool>(false, true), vec2<u32>(20681u, 38309u), -819f), Struct_3(vec2<bool>(true, false), vec2<u32>(0u, 4294967295u), 1461f), Struct_3(vec2<bool>(false, true), vec2<u32>(44169u, 4294967295u), 379f), Struct_3(vec2<bool>(true, true), vec2<u32>(1u, 44146u), 1291f), Struct_3(vec2<bool>(true, false), vec2<u32>(1u, 14276u), 239f));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_3 {
    var var_0 = !(!(!vec3<bool>(true, true, select(false, false, true))));
    global0 = array<vec2<f32>, 29>();
    var var_1 = !(u_input.a == u_input.a) | var_0.x;
    var var_2 = abs(u_input.b.x);
    var var_3 = -30640i;
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(17126u, u_input.b.x, 4294967295u, 1043u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 38760u, 0u)), vec4<u32>(1u, u_input.b.x, 1u, 74688u))), abs(vec4<u32>(u_input.b.x, ~(~4294967295u), u_input.b.x, _wgslsmith_mult_u32(4294967295u, u_input.b.x & u_input.b.x)))), 25u)];
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_2(select(vec3<bool>(!(!arg_0.a.x), arg_1 && true, !(arg_1 || arg_1)), !vec3<bool>(true, true, arg_0.b.x > u_input.b.x), false), _wgslsmith_div_vec3_u32(select(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(arg_0.b.x, arg_0.b.x, u_input.b.x)), vec3<u32>(108749u, 95033u, 3536u)), reverseBits(vec3<u32>(29702u, u_input.b.x, 15147u)) ^ ~u_input.b, !vec3<bool>(arg_1, true, arg_1)), u_input.b << (_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, arg_0.b.x, 1u), vec3<u32>(u_input.b.x, 84211u, u_input.b.x)), abs(u_input.b)) % vec3<u32>(32u))));
    let var_1 = !any(vec4<bool>(!(arg_1 || false), 2147483647i == arg_3, false, false));
    let var_2 = var_0.a.x;
    global1 = array<Struct_3, 25>();
    let var_3 = var_1;
    return Struct_1(arg_1);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    global0 = array<vec2<f32>, 29>();
    global0 = array<vec2<f32>, 29>();
    var var_0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(abs(arg_1.b.x), ~arg_1.b.x), ~(0u << (0u % 32u)), 22017u), countOneBits(~vec3<u32>(51973u, 0u, arg_1.b.x)));
    global0 = array<vec2<f32>, 29>();
    var var_1 = ~1u;
    return func_3(func_2(), true, _wgslsmith_div_i32(u_input.a, u_input.a), u_input.a);
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_2(vec3<bool>(arg_0.a, true, true), reverseBits(_wgslsmith_div_vec3_u32(~vec3<u32>(421u, u_input.b.x, 0u) | ~vec3<u32>(17117u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, min(55991u, u_input.b.x), ~u_input.b.x))));
    var var_1 = Struct_1((firstTrailingBit(u_input.a) & -firstTrailingBit(u_input.a)) == u_input.a);
    var var_2 = arg_0;
    var_1 = Struct_1(!all(select(vec4<bool>(true, false, arg_0.a, false), !vec4<bool>(arg_0.a, var_2.a, arg_0.a, false), true)));
    var_2 = Struct_1(true);
    return 1470f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(vec4<u32>(~(32573u >> (_wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(u_input.b.x, 0u)) % 32u)), ~_wgslsmith_mod_u32(min(u_input.b.x, u_input.b.x), 85159u), ~(~_wgslsmith_div_u32(0u, 17985u)), u_input.b.x), vec4<u32>(u_input.b.x, _wgslsmith_sub_u32(firstLeadingBit(~u_input.b.x), ~1u), 0u, u_input.b.x));
    global0 = array<vec2<f32>, 29>();
    global1 = array<Struct_3, 25>();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-207f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1000f, -1226f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -465f), -874f, true))), _wgslsmith_f_op_f32(func_4(func_1(Struct_1(false), Struct_3(vec2<bool>(false, false), var_0.zw, -825f))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(308f, 1679f, -345f), vec3<f32>(-906f, 345f, 295f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1543f, 1905f, 1718f), vec3<f32>(306f, -326f, 853f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(167f, -716f, 1866f)), vec3<f32>(-960f, 247f, 260f)))))));
    global0 = array<vec2<f32>, 29>();
    global0 = array<vec2<f32>, 29>();
    global0 = array<vec2<f32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global0[_wgslsmith_index_u32(var_0.x, 29u)], var_1.yz))))));
}

