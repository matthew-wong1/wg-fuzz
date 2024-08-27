struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -902f;

var<private> global1: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(1000f, 618f, 626f, -824f), vec4<f32>(-896f, -1000f, -1000f, -308f), vec4<f32>(-607f, -425f, 123f, 1304f), vec4<f32>(445f, 1191f, 1499f, -797f), vec4<f32>(362f, 1066f, 214f, 1000f), vec4<f32>(-492f, 1438f, 440f, 1516f), vec4<f32>(117f, -522f, 1086f, -272f), vec4<f32>(-1527f, -1095f, -177f, 1104f), vec4<f32>(731f, -648f, 193f, -1715f), vec4<f32>(2086f, -331f, 678f, 515f), vec4<f32>(1885f, -539f, -588f, -2030f), vec4<f32>(-233f, 735f, -570f, 696f), vec4<f32>(-419f, -919f, -288f, 174f), vec4<f32>(-811f, -903f, 799f, 565f), vec4<f32>(-1140f, -1000f, 833f, 1078f), vec4<f32>(824f, 1142f, -1542f, -174f), vec4<f32>(-2111f, 195f, -430f, 944f), vec4<f32>(933f, 1347f, 427f, -1000f), vec4<f32>(1000f, 455f, 234f, 630f), vec4<f32>(487f, -767f, 1417f, 1500f), vec4<f32>(325f, 828f, -938f, -354f), vec4<f32>(-577f, -1346f, 1240f, 2471f), vec4<f32>(513f, -1884f, -768f, 1568f), vec4<f32>(-280f, -240f, -469f, 540f), vec4<f32>(1159f, 1449f, -410f, -1000f));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> bool {
    let var_0 = -268f;
    let var_1 = !vec3<bool>(arg_1.e.c, false, true);
    global0 = arg_3.d.x;
    return !all(!select(vec2<bool>(arg_2, false), vec2<bool>(false, var_1.x), arg_2));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> u32 {
    let var_0 = arg_1.e.d;
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.b.x)) - _wgslsmith_f_op_f32(-107f * arg_1.b.x)), arg_1.d.x));
    let var_1 = all(vec2<bool>(any(!vec3<bool>(arg_1.e.c, true, arg_1.e.c)), !all(!vec4<bool>(false, false, true, arg_1.e.c))));
    global0 = arg_1.d.x;
    var var_2 = reverseBits(~(-(~(-24417i))));
    return ~_wgslsmith_div_u32(1u, max(~(~7791u), 1u));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> i32 {
    let var_0 = Struct_2(select(0i, _wgslsmith_mult_i32(countOneBits(u_input.b), 45831i) >> ((func_3(-2147483647i, Struct_2(arg_2.b, vec2<f32>(-1000f, arg_1), vec2<u32>(37741u, arg_2.d), global1[_wgslsmith_index_u32(41236u, 25u)], arg_2)) | u_input.a) % 32u), arg_3), vec2<f32>(-1787f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 416f)) * -1090f)), vec2<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(45135u, arg_2.d, arg_2.d, 1u), vec4<u32>(u_input.a, 36842u, u_input.a, 4294967295u)), vec4<u32>(1u, u_input.a, 1u, 0u))), 1u), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, arg_1))), -331f), 923f, arg_1, _wgslsmith_f_op_f32(ceil(-270f))), Struct_1(vec3<i32>(u_input.b, arg_0.x & 1i, arg_0.x) | vec3<i32>(30877i, -2147483647i, 1i & u_input.b), _wgslsmith_mult_i32(u_input.b, -62514i), false, 60457u));
    global1 = array<vec4<f32>, 25>();
    var var_1 = _wgslsmith_dot_vec3_i32(min(var_0.e.a, vec3<i32>(1i, -2147483647i, 2147483647i >> (~u_input.a % 32u))), vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_2.b, arg_2.b), -_wgslsmith_div_vec2_i32(arg_2.a.yz, vec2<i32>(2147483647i, 11812i))), u_input.b, 28610i));
    global1 = array<vec4<f32>, 25>();
    let var_2 = -20604i;
    return _wgslsmith_mult_i32(u_input.b, max(var_0.e.a.x, arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(func_1(false, Struct_2(u_input.b, vec2<f32>(344f, 1346f), vec2<u32>(1u, u_input.a), vec4<f32>(1000f, 1885f, 1178f, 439f), Struct_1(vec3<i32>(u_input.b, -2147483647i, u_input.b), -2147483647i, true, u_input.a)), false, Struct_2(u_input.b, vec2<f32>(1000f, 341f), vec2<u32>(u_input.a, u_input.a), vec4<f32>(-256f, -708f, 813f, -445f), Struct_1(vec3<i32>(1i, -1i, u_input.b), 12297i, false, u_input.a))), true, all(vec2<bool>(true, false))), vec3<bool>(true, true, true))) || ((u_input.b <= u_input.b) & select(false, any(vec2<bool>(true, true)), true));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-326f))), _wgslsmith_f_op_f32(f32(-1f) * -2417f)))));
    let var_1 = Struct_1(vec3<i32>(-16730i, _wgslsmith_sub_i32(_wgslsmith_add_i32(~u_input.b, func_2(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i), 439f, Struct_1(vec3<i32>(37934i, u_input.b, 0i), u_input.b, true, 57752u), false)), ~_wgslsmith_mult_i32(-1i, -1i)), ~_wgslsmith_sub_i32(u_input.b, 42i >> (u_input.a % 32u))), _wgslsmith_clamp_i32(u_input.b, 0i, u_input.b), ((u_input.b >> (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u)) != ~1i) | all(select(vec4<bool>(true, var_0, false, var_0), !vec4<bool>(var_0, var_0, true, var_0), any(vec2<bool>(var_0, false)))), ~(~(~u_input.a)) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(39861u, 71149u, 8096u, 8037u), vec4<u32>(u_input.a, 4294967295u, 421u, u_input.a), vec4<bool>(var_0, false, true, false)), ~vec4<u32>(u_input.a, u_input.a, 51587u, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(12959u, 0u, 63595u, u_input.a), vec4<u32>(u_input.a, 68174u, 0u, u_input.a) << (vec4<u32>(56021u, u_input.a, 44967u, u_input.a) % vec4<u32>(32u)))));
    let var_2 = ~(min(firstLeadingBit(vec3<u32>(4294967295u, 46783u, 0u) << (vec3<u32>(u_input.a, 66786u, 4294967295u) % vec3<u32>(32u))), ~(vec3<u32>(u_input.a, 1u, 4294967295u) & vec3<u32>(23159u, u_input.a, u_input.a))) | _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, var_1.d, var_1.d), vec3<u32>(0u, 1u, var_1.d), vec3<u32>(u_input.a, ~u_input.a, u_input.a)));
    global0 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(162f)), -299f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -181f)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-896f + _wgslsmith_f_op_f32(step(-1000f, 632f))), _wgslsmith_f_op_f32(f32(-1f) * -691f), select(true, true, false)))));
    let var_3 = select(vec2<bool>(false, var_1.c), vec2<bool>(true, false & !(!var_1.c)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(~var_2, select(vec3<u32>(var_2.x, var_2.x, 75055u), var_2, false)), ~var_2.x), u_input.a);
}

