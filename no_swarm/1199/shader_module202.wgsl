struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(-4916i, 1i, Struct_2(vec3<u32>(1u, 1u, 1u), Struct_1(23134i, vec2<u32>(0u, 20813u)), Struct_1(0i, vec2<u32>(58209u, 1u)), vec3<f32>(934f, 2123f, 1511f))), Struct_4(2147483647i, -40330i, Struct_2(vec3<u32>(70980u, 1u, 87826u), Struct_1(-61190i, vec2<u32>(21961u, 4294967295u)), Struct_1(2697i, vec2<u32>(4294967295u, 43002u)), vec3<f32>(-221f, -1000f, -1458f))), Struct_4(1i, 1i, Struct_2(vec3<u32>(1u, 0u, 0u), Struct_1(0i, vec2<u32>(89589u, 4294967295u)), Struct_1(i32(-2147483648), vec2<u32>(4294967295u, 79451u)), vec3<f32>(741f, -1885f, -152f))), Struct_4(12831i, 6997i, Struct_2(vec3<u32>(0u, 4294967295u, 1u), Struct_1(-49787i, vec2<u32>(10070u, 1u)), Struct_1(-10275i, vec2<u32>(1u, 4294967295u)), vec3<f32>(-405f, 669f, 1044f))), Struct_4(-291i, 1i, Struct_2(vec3<u32>(5820u, 47448u, 0u), Struct_1(i32(-2147483648), vec2<u32>(0u, 2912u)), Struct_1(0i, vec2<u32>(4294967295u, 27017u)), vec3<f32>(1248f, 260f, 959f))), Struct_4(i32(-2147483648), i32(-2147483648), Struct_2(vec3<u32>(23049u, 2514u, 5380u), Struct_1(-54250i, vec2<u32>(15859u, 69131u)), Struct_1(0i, vec2<u32>(17484u, 134137u)), vec3<f32>(824f, -1055f, -1086f))), Struct_4(1i, -1i, Struct_2(vec3<u32>(1u, 84843u, 26409u), Struct_1(23142i, vec2<u32>(0u, 1u)), Struct_1(0i, vec2<u32>(40677u, 4294967295u)), vec3<f32>(-827f, 140f, 178f))), Struct_4(-12212i, 33098i, Struct_2(vec3<u32>(1u, 13976u, 77014u), Struct_1(i32(-2147483648), vec2<u32>(1u, 4294967295u)), Struct_1(i32(-2147483648), vec2<u32>(0u, 1u)), vec3<f32>(-1771f, -2774f, -689f))), Struct_4(2752i, 17169i, Struct_2(vec3<u32>(11925u, 23179u, 4294967295u), Struct_1(1i, vec2<u32>(2046u, 1u)), Struct_1(-2949i, vec2<u32>(1u, 1u)), vec3<f32>(-1000f, 632f, 931f))), Struct_4(-20892i, -37483i, Struct_2(vec3<u32>(0u, 0u, 50234u), Struct_1(-42559i, vec2<u32>(0u, 1u)), Struct_1(11835i, vec2<u32>(47u, 1138u)), vec3<f32>(-656f, -1293f, 1000f))), Struct_4(-7391i, 0i, Struct_2(vec3<u32>(0u, 4294967295u, 1u), Struct_1(1i, vec2<u32>(38669u, 67641u)), Struct_1(29535i, vec2<u32>(80074u, 79764u)), vec3<f32>(895f, -1769f, 143f))), Struct_4(-11372i, 14820i, Struct_2(vec3<u32>(62139u, 40606u, 1u), Struct_1(i32(-2147483648), vec2<u32>(24681u, 51800u)), Struct_1(1i, vec2<u32>(8014u, 19160u)), vec3<f32>(398f, 886f, 870f))), Struct_4(-1i, 0i, Struct_2(vec3<u32>(4294967295u, 53568u, 0u), Struct_1(1i, vec2<u32>(86985u, 28750u)), Struct_1(-47394i, vec2<u32>(8023u, 36349u)), vec3<f32>(-1139f, -812f, 967f))), Struct_4(3904i, 38039i, Struct_2(vec3<u32>(34329u, 1u, 29651u), Struct_1(2147483647i, vec2<u32>(58007u, 7933u)), Struct_1(-46974i, vec2<u32>(1u, 64144u)), vec3<f32>(-514f, -1370f, -2500f))), Struct_4(26638i, 1i, Struct_2(vec3<u32>(4294967295u, 1u, 24048u), Struct_1(0i, vec2<u32>(20814u, 83266u)), Struct_1(841i, vec2<u32>(109431u, 6941u)), vec3<f32>(165f, 129f, -109f))), Struct_4(0i, i32(-2147483648), Struct_2(vec3<u32>(4294967295u, 0u, 30210u), Struct_1(1i, vec2<u32>(4294967295u, 1698u)), Struct_1(37349i, vec2<u32>(4294967295u, 4294967295u)), vec3<f32>(1000f, -1000f, 1000f))), Struct_4(2147483647i, 0i, Struct_2(vec3<u32>(33602u, 4854u, 120859u), Struct_1(51854i, vec2<u32>(23891u, 40917u)), Struct_1(i32(-2147483648), vec2<u32>(1757u, 1u)), vec3<f32>(1545f, 1183f, 228f))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec2<bool> {
    var var_0 = true;
    global0 = (-1i <= -max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1420i, 2147483647i, u_input.a.x), vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, u_input.a.x)), u_input.a.x & 2147483647i)) | any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), true)));
    var var_1 = Struct_1(-select(u_input.a.x >> (~0u % 32u), _wgslsmith_mod_i32(min(u_input.a.x, 18699i), u_input.a.x), true || (-999f <= arg_0)), vec2<u32>(abs(4294967295u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(84945u, 4294967295u, 0u, 21395u)), ~vec4<u32>(1u, 1u, 1u, 1u))));
    global1 = array<Struct_4, 17>();
    let var_2 = Struct_2(abs(~vec3<u32>(_wgslsmith_clamp_u32(61991u, var_1.b.x, 1u), 29564u, var_1.b.x)), Struct_1(_wgslsmith_dot_vec4_i32(-u_input.a, reverseBits(u_input.a)), ~(~vec2<u32>(4294967295u, var_1.b.x))), Struct_1(-59831i, ~vec2<u32>(firstTrailingBit(var_1.b.x), _wgslsmith_div_u32(var_1.b.x, 0u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(180f, 976f, arg_0), vec3<f32>(arg_0, -1607f, arg_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(822f, -1052f, 541f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, 1004f, arg_0), vec3<f32>(arg_0, arg_0, arg_0)))) - vec3<f32>(arg_0, -1000f, _wgslsmith_f_op_f32(arg_0 * arg_0)))));
    return vec2<bool>(734f <= arg_0, true);
}

fn func_2() -> f32 {
    var var_0 = u_input.a.wzw;
    var var_1 = Struct_3(Struct_1(u_input.a.x, vec2<u32>(1u, ~(13498u << (0u % 32u)))), Struct_2(vec3<u32>(~0u, 1u, 4294967295u) >> (vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 482u), vec2<u32>(1826u, 5253u)), _wgslsmith_mult_u32(1u, 15412u)) % vec3<u32>(32u)), Struct_1(_wgslsmith_dot_vec2_i32(var_0.yz, vec2<i32>(u_input.a.x, -37598i)), countOneBits(reverseBits(vec2<u32>(4294967295u, 4294967295u)))), Struct_1(var_0.x, ~(~vec2<u32>(35214u, 6872u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-879f, -1175f, -141f))))));
    var var_2 = vec4<bool>(any(vec2<bool>(any(vec3<bool>(false, true, false)), true)) || true, all(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, false)), !func_3(var_1.b.d.x), vec2<bool>(func_3(var_1.b.d.x).x, any(vec2<bool>(false, false))))), all(!select(func_3(434f), vec2<bool>(true, false), -227f <= var_1.b.d.x)), !(max(1u, ~46945u) < var_1.a.b.x));
    var var_3 = Struct_3(Struct_1(_wgslsmith_add_i32(u_input.a.x, -firstTrailingBit(var_0.x)), var_1.a.b), Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(~var_1.b.b.b.x, 4294967295u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u)), vec3<u32>(_wgslsmith_sub_u32(24899u, var_1.a.b.x), ~0u, countOneBits(var_1.b.a.x))), var_1.b.b, Struct_1(_wgslsmith_sub_i32(u_input.a.x, 1i), abs(var_1.a.b) >> ((var_1.a.b & var_1.a.b) % vec2<u32>(32u))), var_1.b.d));
    let var_4 = global1[_wgslsmith_index_u32(~firstTrailingBit(67379u), 17u)];
    return var_4.c.d.x;
}

fn func_1(arg_0: Struct_4) -> bool {
    let var_0 = select(countOneBits(_wgslsmith_clamp_i32(max(1i, -65759i | u_input.a.x), _wgslsmith_add_i32(-2147483647i, i32(-1i) * -52703i), i32(-1i) * -17153i)), u_input.a.x, true);
    global1 = array<Struct_4, 17>();
    let var_1 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), -649f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))) * arg_0.c.d.x) <= -137f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 17>();
    let var_0 = true;
    global0 = (!var_0 & !func_1(Struct_4(u_input.a.x, u_input.a.x, Struct_2(vec3<u32>(8323u, 0u, 0u), Struct_1(27020i, vec2<u32>(16477u, 58573u)), Struct_1(-21547i, vec2<u32>(1u, 4294967295u)), vec3<f32>(-957f, 143f, 1421f))))) | all(vec3<bool>(true, all(vec2<bool>(var_0, var_0)) || false, true | (-6699i != u_input.a.x)));
    var var_1 = vec3<i32>(-38643i, firstLeadingBit(1i), select(~_wgslsmith_dot_vec4_i32(-u_input.a, abs(u_input.a)), _wgslsmith_sub_i32(1i, u_input.a.x), false));
    global1 = array<Struct_4, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, 17464u);
}

