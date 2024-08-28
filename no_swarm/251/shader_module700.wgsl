struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12>;

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(true, -919f, 1752f, vec2<f32>(-742f, -1044f), 940f), vec4<u32>(1u, 4294967295u, 47944u, 45521u), Struct_1(true, -136f, -1044f, vec2<f32>(-131f, 478f), 1867f), -1000f, Struct_1(false, -1919f, -158f, vec2<f32>(-1077f, -316f), -2145f)), Struct_2(Struct_1(false, -616f, -600f, vec2<f32>(-886f, -251f), -226f), vec4<u32>(1u, 1u, 21153u, 1u), Struct_1(true, 431f, -235f, vec2<f32>(-587f, 1257f), -156f), 485f, Struct_1(false, -1000f, 188f, vec2<f32>(-1234f, -1173f), -1639f)), Struct_2(Struct_1(true, -413f, 276f, vec2<f32>(1029f, 1258f), 1955f), vec4<u32>(0u, 1u, 44500u, 9786u), Struct_1(true, -527f, 610f, vec2<f32>(404f, 917f), 532f), -823f, Struct_1(false, -598f, 932f, vec2<f32>(-224f, 1000f), 1488f)), Struct_2(Struct_1(true, -213f, -2233f, vec2<f32>(806f, 1037f), 583f), vec4<u32>(55421u, 59310u, 0u, 4294967295u), Struct_1(false, 1339f, -1479f, vec2<f32>(1766f, -269f), -2226f), 735f, Struct_1(false, 248f, -110f, vec2<f32>(1658f, 2006f), 215f)), Struct_2(Struct_1(false, 2690f, -2511f, vec2<f32>(-402f, -1581f), 288f), vec4<u32>(24737u, 1325u, 47393u, 44179u), Struct_1(false, 1536f, 1097f, vec2<f32>(-2870f, -1329f), -938f), -316f, Struct_1(true, 2829f, 1037f, vec2<f32>(-614f, -598f), -235f)), Struct_2(Struct_1(false, -497f, -1492f, vec2<f32>(-1000f, -381f), 366f), vec4<u32>(103541u, 1u, 4294967295u, 29512u), Struct_1(false, -1879f, 724f, vec2<f32>(928f, -1379f), -614f), 336f, Struct_1(false, 944f, -541f, vec2<f32>(481f, 409f), -1000f)), Struct_2(Struct_1(true, 1947f, -179f, vec2<f32>(362f, -796f), -1203f), vec4<u32>(17610u, 4294967295u, 52340u, 0u), Struct_1(true, -1000f, 557f, vec2<f32>(377f, -936f), -495f), 2646f, Struct_1(true, 659f, -442f, vec2<f32>(1005f, -1090f), -732f)), Struct_2(Struct_1(true, -991f, 1057f, vec2<f32>(-1000f, 2333f), 798f), vec4<u32>(4294967295u, 40062u, 1u, 17834u), Struct_1(false, -576f, 548f, vec2<f32>(-686f, -2049f), -234f), -326f, Struct_1(false, -1292f, 286f, vec2<f32>(420f, -410f), 567f)), Struct_2(Struct_1(false, -1039f, -1138f, vec2<f32>(1208f, -173f), 268f), vec4<u32>(4303u, 6019u, 0u, 74707u), Struct_1(false, -1953f, -719f, vec2<f32>(-561f, 346f), 658f), -732f, Struct_1(false, -175f, 1000f, vec2<f32>(-298f, 389f), -206f)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<bool>) -> f32 {
    global0 = array<vec4<bool>, 12>();
    global1 = array<Struct_2, 9>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -691f), _wgslsmith_f_op_f32(max(288f, arg_0.b))))))));
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_2, 9>();
    global1 = array<Struct_2, 9>();
    let var_0 = Struct_2(Struct_1(~select(1u, 28765u, true) == u_input.b, _wgslsmith_f_op_f32(step(254f, -999f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(true, -1000f, 476f, vec2<f32>(519f, -1000f), 2490f), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1083f, -745f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1201f)), _wgslsmith_f_op_f32(f32(-1f) * -538f)))), ~vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), Struct_1(!(true & all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -520f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -328f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(-1908f, 625f), -1340f))), _wgslsmith_f_op_f32(104f - 1046f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1053f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_1(true, -1000f, 662f, vec2<f32>(1120f, 1000f), -2313f), vec3<bool>(true, true, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -963f) - _wgslsmith_f_op_f32(f32(-1f) * -834f)))))), Struct_1(select(any(vec2<bool>(false, false)) | true, select(select(false, true, false), any(vec3<bool>(false, true, false)), 1i < u_input.a.x), false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1091f)))), 1741f, vec2<f32>(_wgslsmith_f_op_f32(1238f * _wgslsmith_f_op_f32(970f + -1688f)), _wgslsmith_f_op_f32(func_3(Struct_1(true, 878f, -1393f, vec2<f32>(333f, -1099f), 1202f), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-136f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1823f))))));
    global1 = array<Struct_2, 9>();
    global0 = array<vec4<bool>, 12>();
    return var_0.c;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(0u, 6439u), countOneBits(_wgslsmith_add_u32(u_input.b, 80915u))) | u_input.b;
    let var_1 = func_2();
    var_0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(select(~1u, abs(u_input.b << (39462u % 32u)), true), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(27283u, 28975u)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(10805u, 1u), vec2<u32>(u_input.b, 7901u)) % vec2<u32>(32u)), vec2<u32>(u_input.b, 1670u) >> (vec2<u32>(9117u, 1u) % vec2<u32>(32u)))), 33061u);
    var_0 = ~u_input.b;
    let var_2 = var_1;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(!vec4<bool>(true, any(global0[_wgslsmith_index_u32(8455u, 12u)]), true, false), global0[_wgslsmith_index_u32(~(~43593u) >> ((44619u ^ u_input.b) % 32u), 12u)], all(global0[_wgslsmith_index_u32(u_input.b & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, u_input.b)), 12u)])));
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    global1 = array<Struct_2, 9>();
    global1 = array<Struct_2, 9>();
    var var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -2416f, u_input.b);
}

