struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec2<u32>(1u, 1u), vec3<u32>(34856u, 1692u, 4268u)), Struct_3(vec2<u32>(8819u, 4294967295u), vec3<u32>(25704u, 14315u, 21504u)), Struct_3(vec2<u32>(23592u, 42441u), vec3<u32>(44596u, 4294967295u, 65779u)), Struct_3(vec2<u32>(32406u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u)), Struct_3(vec2<u32>(13099u, 0u), vec3<u32>(30244u, 0u, 29734u)), Struct_3(vec2<u32>(0u, 1u), vec3<u32>(0u, 9415u, 49806u)), Struct_3(vec2<u32>(34344u, 0u), vec3<u32>(1u, 1u, 1u)), Struct_3(vec2<u32>(70907u, 1u), vec3<u32>(73039u, 0u, 1u)), Struct_3(vec2<u32>(0u, 94846u), vec3<u32>(0u, 13709u, 7072u)), Struct_3(vec2<u32>(77856u, 4294967295u), vec3<u32>(53807u, 4294967295u, 0u)), Struct_3(vec2<u32>(4294967295u, 37312u), vec3<u32>(1u, 4294967295u, 58002u)), Struct_3(vec2<u32>(0u, 37451u), vec3<u32>(4294967295u, 2182u, 0u)), Struct_3(vec2<u32>(52213u, 8213u), vec3<u32>(14763u, 4294967295u, 36395u)), Struct_3(vec2<u32>(1u, 0u), vec3<u32>(14842u, 24084u, 34384u)));

var<private> global2: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: i32) -> f32 {
    return arg_1;
}

fn func_3() -> i32 {
    var var_0 = -928f;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-534f)), _wgslsmith_div_f32(-1836f, 336f));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(42855u, 31u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 1696f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f) - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(10086u, 14147u, 37164u), vec3<u32>(u_input.d, 2991u, u_input.a)), 31u)]), -836f)))));
    var var_3 = 1332f;
    var var_4 = Struct_4(Struct_1(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 1u, u_input.a) & vec3<u32>(u_input.d, 33089u, u_input.a)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1481u, 22423u), vec3<u32>(1u, u_input.a, u_input.d))), vec4<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_div_f32(-869f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 31u)] + var_2)), var_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(93685u, 31u)], global0[_wgslsmith_index_u32(u_input.d, 31u)], -1000f)))), -88i));
    return -firstLeadingBit(~countOneBits(1i));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f)), vec2<bool>(all(select(arg_1, vec4<bool>(arg_2.x, arg_1.x, true, arg_2.x), vec4<bool>(arg_1.x, arg_2.x, arg_1.x, arg_2.x))), (_wgslsmith_f_op_f32(func_2(arg_1.x, 573f, 2147483647i)) > 667f) && ((global0[_wgslsmith_index_u32(u_input.d, 31u)] > global0[_wgslsmith_index_u32(arg_0.x, 31u)]) && arg_2.x)));
    global2 = array<vec3<bool>, 19>();
    var var_1 = Struct_1(arg_0.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, global0[_wgslsmith_index_u32(4294967295u, 31u)], 116f, -482f), vec4<f32>(1141f, -998f, var_0.a, global0[_wgslsmith_index_u32(0u, 31u)])))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-467f, global0[_wgslsmith_index_u32(arg_0.x, 31u)], 1000f, var_0.a)))))), -u_input.b);
    var var_2 = Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(var_1.a, 31u)], -1000f, 1235f, -1000f)))) + var_1.b)), _wgslsmith_f_op_vec4_f32(-var_1.c), u_input.c);
    let var_3 = Struct_1(countOneBits(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(var_2.a, var_2.a), firstTrailingBit(2530u), _wgslsmith_dot_vec4_u32(vec4<u32>(22695u, arg_0.x, 0u, 4294967295u), vec4<u32>(1u, var_2.a, var_1.a, 0u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~var_1.a, 31u)]), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -420f) * _wgslsmith_f_op_f32(exp2(var_0.a))), -1030f) - var_2.c), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, var_1.b.x, 1000f, var_0.a))))), _wgslsmith_dot_vec4_i32(~vec4<i32>(_wgslsmith_sub_i32(0i, u_input.b), func_3(), -51178i, -u_input.c), vec4<i32>(_wgslsmith_div_i32(~var_2.d, var_1.d), -41523i, var_1.d, -2147483647i)));
    return countOneBits(var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 31>();
    let var_0 = -(select(vec3<i32>(func_1(vec2<u32>(0u, 1u), vec4<bool>(false, false, false, true), vec3<bool>(true, false, true)), u_input.b, firstTrailingBit(u_input.c)), ~reverseBits(vec3<i32>(u_input.b, -2147483647i, u_input.c)), !select(global2[_wgslsmith_index_u32(30555u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(53942u, 19u)])) | vec3<i32>(min(-u_input.b, 1i & u_input.c), ~max(-1358i, u_input.b), -1471i));
    let var_1 = -(~_wgslsmith_sub_vec3_i32(-var_0, _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(var_0, var_0), max(vec3<i32>(2147483647i, u_input.c, var_0.x), var_0))));
    global2 = array<vec3<bool>, 19>();
    var var_2 = vec3<u32>(53799u, _wgslsmith_mod_u32(3917u, ~0u & _wgslsmith_mod_u32(u_input.d, u_input.d)), _wgslsmith_mod_u32(u_input.d, 4294967295u)) ^ ((reverseBits(vec3<u32>(u_input.a, 23817u, 16277u) ^ vec3<u32>(u_input.d, 30468u, u_input.a)) << (~abs(vec3<u32>(u_input.a, 54476u, u_input.d)) % vec3<u32>(32u))) | reverseBits(vec3<u32>(u_input.a, u_input.d, 58868u) << (~vec3<u32>(56161u, 1u, 1u) % vec3<u32>(32u))));
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2270f, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 35149u, u_input.d), 31u)], -276f, -444f), vec4<f32>(global0[_wgslsmith_index_u32(45042u >> (1u % 32u), 31u)], global0[_wgslsmith_index_u32(38880u, 31u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.d), 31u)], _wgslsmith_f_op_f32(select(925f, -714f, false))))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(51591u, 31u)] - 1000f), 344f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(19607u, 31u)])), _wgslsmith_f_op_f32(floor(161f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(769f, var_3.x)))))), var_1.yy, 59110u);
}

