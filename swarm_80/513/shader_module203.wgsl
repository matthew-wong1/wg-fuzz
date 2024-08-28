struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<f32>(-571f, 877f, -406f), 83139u), Struct_1(vec3<f32>(1172f, -1148f, -1086f), 59915u), Struct_1(vec3<f32>(-1048f, 1335f, 241f), 4294967295u), Struct_1(vec3<f32>(-1000f, -1145f, -655f), 24434u), Struct_1(vec3<f32>(150f, -859f, -1404f), 55184u), Struct_1(vec3<f32>(-1000f, -727f, -1114f), 1u), Struct_1(vec3<f32>(690f, -976f, -332f), 0u), Struct_1(vec3<f32>(987f, 972f, -1699f), 1u), Struct_1(vec3<f32>(-433f, 476f, -385f), 4294967295u), Struct_1(vec3<f32>(1016f, -1295f, 543f), 0u), Struct_1(vec3<f32>(-132f, 119f, -620f), 31604u), Struct_1(vec3<f32>(-1616f, 655f, 123f), 18280u), Struct_1(vec3<f32>(-494f, -405f, -2528f), 28784u), Struct_1(vec3<f32>(-395f, -152f, -334f), 69597u), Struct_1(vec3<f32>(-2493f, -1469f, 141f), 0u), Struct_1(vec3<f32>(-1000f, -443f, 260f), 41709u), Struct_1(vec3<f32>(593f, -1386f, 1081f), 0u), Struct_1(vec3<f32>(1234f, 743f, -2047f), 14321u), Struct_1(vec3<f32>(-1198f, 700f, -1231f), 30326u), Struct_1(vec3<f32>(-1860f, 232f, 265f), 0u), Struct_1(vec3<f32>(484f, 817f, -372f), 77104u), Struct_1(vec3<f32>(-1000f, 818f, 132f), 11336u), Struct_1(vec3<f32>(1152f, 147f, -1050f), 86893u), Struct_1(vec3<f32>(447f, -1000f, 439f), 38305u), Struct_1(vec3<f32>(-508f, -777f, -633f), 24004u), Struct_1(vec3<f32>(-1745f, -739f, -1100f), 1u), Struct_1(vec3<f32>(-757f, -1999f, 471f), 0u), Struct_1(vec3<f32>(1145f, -1548f, 461f), 0u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> vec4<bool> {
    let var_0 = Struct_1(arg_0.a, _wgslsmith_clamp_u32(arg_0.b, ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(arg_2, 1u, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(89081u, arg_2, arg_2), vec3<u32>(arg_0.b, 38183u, 13850u))), 30062u));
    let var_1 = arg_0;
    let var_2 = var_1;
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    return select(vec4<bool>(any(select(vec2<bool>(arg_1.x, false), !arg_1, vec2<bool>(false, arg_1.x))), any(arg_1), all(vec4<bool>(all(vec3<bool>(true, arg_1.x, arg_1.x)), arg_1.x, arg_1.x, true)), u_input.a.x > firstTrailingBit(~2147483647i)), !vec4<bool>(false, arg_1.x, false, !arg_1.x), _wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, ~arg_0.b), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.b, 27658u), vec3<u32>(0u, 22000u, arg_0.b)), select(vec3<u32>(u_input.b, 10150u, arg_0.b), vec3<u32>(4294967295u, 4294967295u, 1u), true))) != ~1u);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !(!select(vec4<bool>(select(false, false, false), false, arg_0.a.x == 1951f, true), vec4<bool>(true, true, true, true), func_3(Struct_1(vec3<f32>(arg_0.a.x, 358f, -422f), u_input.b), vec2<bool>(true, true), ~arg_0.b)));
    global0 = array<Struct_1, 28>();
    let var_1 = arg_0;
    var var_2 = var_1;
    let var_3 = i32(-1i) * -1i;
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(vec3<f32>(-858f, -388f, _wgslsmith_f_op_f32(floor(1168f))), _wgslsmith_mult_u32(firstTrailingBit(30246u), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(17908u, 93949u), vec2<u32>(arg_3.b, arg_3.b)) ^ 1u)));
    var var_1 = u_input.a;
    let var_2 = select(!vec3<bool>(true, var_0.a.x > 1000f, (6738i == var_1.x) == func_3(Struct_1(vec3<f32>(1823f, arg_2.x, arg_2.x), var_0.b), vec2<bool>(true, false), 1u).x), vec3<bool>(!all(vec3<bool>(true, false, false)), all(vec4<bool>(true, true, true, true)) & (all(vec3<bool>(false, true, false)) | true), select(true, true, true) & (~u_input.c == (-21554i >> (arg_1.b % 32u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -711f) * -118f));
    var var_3 = all(var_2);
    let var_4 = !func_3(arg_0, vec2<bool>(false, var_2.x), ~var_0.b).wx;
    return var_2.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<bool> {
    var var_0 = select(!(!vec4<bool>(true, any(vec2<bool>(false, true)), any(vec3<bool>(false, true, false)), true)), vec4<bool>(func_4(func_2(arg_0), arg_2, arg_2.a.yx, func_2(func_2(global0[_wgslsmith_index_u32(u_input.b, 28u)]))), true, true, _wgslsmith_f_op_f32(-912f * arg_2.a.x) > _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(arg_0.a.x + arg_2.a.x))), vec4<bool>(true, true, !any(vec2<bool>(false, false)), true));
    var_0 = !vec4<bool>(!all(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)), true, select(-2147483647i, select(27745i, u_input.d.x, false), func_3(Struct_1(vec3<f32>(arg_1.a.x, 345f, 749f), 4294967295u), var_0.yy, arg_3.x).x) < 1i, 403f > _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(step(arg_2.a.x, arg_0.a.x))));
    global0 = array<Struct_1, 28>();
    let var_1 = _wgslsmith_mult_u32(arg_2.b, _wgslsmith_mod_u32(min(u_input.b >> (4294967295u % 32u), ~arg_2.b), ~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(65101u, arg_1.b, arg_3.x, 0u), vec4<u32>(14611u, 1027u, 26831u, 24538u)))));
    var var_2 = ~arg_3.yy;
    return func_3(func_2(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-709f, arg_2.a.x, arg_0.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 72739u, arg_3.x), vec4<u32>(var_1, var_1, 24296u, var_2.x))))), vec2<bool>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), -1325f) <= 650f), ~(~_wgslsmith_mult_u32(~27971u, firstLeadingBit(arg_3.x)))).xzy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.b & 95009u, _wgslsmith_sub_u32(14417u, ~1u & (63744u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 37743u, u_input.b), vec3<u32>(u_input.b, 2879u, u_input.b)))), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(select(u_input.b, 48407u, true), reverseBits(u_input.b), ~u_input.b), 1u), firstLeadingBit(_wgslsmith_mod_u32(abs(4294967295u), 1u)));
    global0 = array<Struct_1, 28>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(918f, -1091f, -1312f) + vec3<f32>(-232f, 1717f, -194f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-251f, -413f, -899f)))))), var_0.x);
    global0 = array<Struct_1, 28>();
    var var_2 = !select(!any(vec3<bool>(false, true, false)), all(func_1(Struct_1(vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x), 10555u), Struct_1(vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x), 0u), global0[_wgslsmith_index_u32(var_1.b, 28u)], var_0.www)) && true, all(vec4<bool>(true, true, true, true)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)))), 24161u);
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.d ^ vec3<i32>(u_input.d.x, 36104i, i32(-1i) * -2147483647i), vec3<i32>(u_input.c, u_input.c, _wgslsmith_clamp_i32(-31127i, abs(u_input.a.x), _wgslsmith_mod_i32(0i, u_input.c)))));
}

