struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1482f, -2256f, 1000f, 862f);

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<u32>(5938u, 17878u, 9066u), 30667i, 70555u, vec3<f32>(128f, -654f, -616f), 4294967295u), Struct_1(vec3<u32>(19405u, 823u, 38914u), 56390i, 0u, vec3<f32>(-599f, -240f, 1687f), 24915u), Struct_1(vec3<u32>(27940u, 42966u, 56622u), -11303i, 0u, vec3<f32>(-102f, -102f, -1658f), 4294967295u), Struct_1(vec3<u32>(18526u, 4294967295u, 3722u), 0i, 32712u, vec3<f32>(1345f, -1000f, 1064f), 1u), Struct_1(vec3<u32>(17492u, 60012u, 4294967295u), -1i, 4294967295u, vec3<f32>(2091f, -149f, 131f), 4294967295u), Struct_1(vec3<u32>(37951u, 4294967295u, 4294967295u), 5554i, 4294967295u, vec3<f32>(886f, -1159f, -3013f), 46196u), Struct_1(vec3<u32>(30997u, 39094u, 4294967295u), 1i, 21192u, vec3<f32>(-1017f, 325f, -1486f), 0u), Struct_1(vec3<u32>(4294967295u, 3935u, 4294967295u), -3043i, 34665u, vec3<f32>(-143f, 1783f, 117f), 50214u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), 1i, 4294967295u, vec3<f32>(-650f, 416f, -254f), 12136u), Struct_1(vec3<u32>(0u, 1u, 83055u), -29808i, 0u, vec3<f32>(-1284f, 729f, -936f), 0u), Struct_1(vec3<u32>(0u, 20905u, 8618u), i32(-2147483648), 1u, vec3<f32>(812f, 1515f, -1000f), 0u), Struct_1(vec3<u32>(60252u, 0u, 32733u), 39384i, 8051u, vec3<f32>(306f, 1477f, -1820f), 1u), Struct_1(vec3<u32>(0u, 1u, 0u), 2147483647i, 1u, vec3<f32>(-319f, -264f, -1118f), 0u), Struct_1(vec3<u32>(0u, 0u, 34742u), 5420i, 14535u, vec3<f32>(-930f, 1641f, 1034f), 4294967295u), Struct_1(vec3<u32>(0u, 0u, 78737u), 1i, 4294967295u, vec3<f32>(-1834f, 1521f, 1000f), 1u), Struct_1(vec3<u32>(1u, 85272u, 18082u), 2147483647i, 0u, vec3<f32>(-1000f, 651f, 1223f), 21392u), Struct_1(vec3<u32>(1u, 22231u, 70264u), 0i, 4294967295u, vec3<f32>(-577f, -1306f, 465f), 4294967295u), Struct_1(vec3<u32>(4294967295u, 17027u, 23950u), -50120i, 21397u, vec3<f32>(-1000f, 1000f, 324f), 1u), Struct_1(vec3<u32>(40616u, 1u, 4294967295u), 40414i, 4294967295u, vec3<f32>(-1664f, -1047f, 1363f), 181u), Struct_1(vec3<u32>(24000u, 1u, 4294967295u), i32(-2147483648), 1u, vec3<f32>(-277f, -486f, 712f), 0u), Struct_1(vec3<u32>(71673u, 0u, 27102u), 9381i, 48127u, vec3<f32>(-1811f, -1000f, 1152f), 4294967295u), Struct_1(vec3<u32>(1u, 42614u, 64565u), 2147483647i, 29532u, vec3<f32>(-1609f, 1703f, 1516f), 119909u), Struct_1(vec3<u32>(1u, 4294967295u, 122897u), 69209i, 1u, vec3<f32>(198f, -1278f, 1181f), 28879u), Struct_1(vec3<u32>(85020u, 4294967295u, 1u), i32(-2147483648), 44964u, vec3<f32>(979f, 1000f, -1000f), 0u), Struct_1(vec3<u32>(1u, 0u, 1u), -3782i, 24661u, vec3<f32>(223f, 1385f, 1000f), 0u), Struct_1(vec3<u32>(60131u, 110678u, 4294967295u), -19711i, 4294967295u, vec3<f32>(-1165f, -559f, 977f), 12020u), Struct_1(vec3<u32>(0u, 44333u, 4294967295u), 2147483647i, 4294967295u, vec3<f32>(1000f, 892f, 1315f), 52870u));

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<u32>(30792u, 0u, 4294967295u), 2147483647i, 0u, vec3<f32>(-1400f, -1000f, -190f), 4294967295u), Struct_1(vec3<u32>(37920u, 44476u, 0u), -1i, 4294967295u, vec3<f32>(-705f, 882f, -1258f), 4294967295u));

var<private> global3: Struct_1 = Struct_1(vec3<u32>(1u, 3034u, 16932u), 38678i, 77660u, vec3<f32>(795f, -883f, 792f), 128635u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    global1 = array<Struct_1, 27>();
    global1 = array<Struct_1, 27>();
    global3 = Struct_1(global3.a ^ vec3<u32>(_wgslsmith_mod_u32(global3.a.x | 1u, _wgslsmith_div_u32(4294967295u, 64105u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 28083u, arg_1.c), min(vec3<u32>(4294967295u, 30477u, global3.c), vec3<u32>(1u, u_input.a.x, 9782u))), ~firstTrailingBit(0u)), arg_0.x ^ arg_0.x, 4294967295u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.d.x, global3.d.x, -1709f))), _wgslsmith_f_op_vec3_f32(-arg_1.d))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(global3.d, vec3<f32>(global3.d.x, arg_1.d.x, -1000f)))), true)))), 0u);
    var var_0 = Struct_1(arg_1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b, ~arg_0.x), -_wgslsmith_add_vec2_i32(vec2<i32>(global3.b, arg_0.x), arg_0.xw)), global3.a.x, arg_1.d, global3.a.x);
    var var_1 = vec3<i32>(-arg_1.b, _wgslsmith_div_i32(-31713i, _wgslsmith_mod_i32(_wgslsmith_add_i32(global3.b, -2147483647i) << (max(0u, 73320u) % 32u), _wgslsmith_dot_vec2_i32(~vec2<i32>(44349i, -23016i), min(vec2<i32>(global3.b, global3.b), arg_0.yy)))), abs(_wgslsmith_add_i32(19984i, 4050i) | arg_0.x));
    return abs(-48181i);
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~vec3<u32>(abs(0u), _wgslsmith_mult_u32(global3.a.x, ~global3.c), _wgslsmith_clamp_u32(_wgslsmith_add_u32(global3.a.x, global3.a.x), u_input.a.x, firstLeadingBit(23092u))));
    var var_1 = Struct_1(firstLeadingBit(vec3<u32>(~abs(u_input.a.x), 52320u | u_input.a.x, abs(~0u))), -global3.b, ~0u, global0.wzy, global3.c);
    global1 = array<Struct_1, 27>();
    var var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, _wgslsmith_mod_u32(global3.a.x, _wgslsmith_mod_u32(36370u, var_0.x)), 26158u), ~_wgslsmith_mod_vec3_u32(u_input.a >> (vec3<u32>(0u, var_0.x, 0u) % vec3<u32>(32u)), global3.a), global3.a), ~func_3(_wgslsmith_div_vec4_i32(vec4<i32>(global3.b, global3.b, 0i, 2147483647i) ^ vec4<i32>(-1i, -1838i, 0i, var_1.b), -vec4<i32>(2147483647i, -1i, -31469i, -51372i)), global1[_wgslsmith_index_u32(1u, 27u)]), var_1.e, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.wzx * vec3<f32>(-3217f, global3.d.x, 756f)) + _wgslsmith_f_op_vec3_f32(select(var_1.d, vec3<f32>(global3.d.x, -643f, global0.x), vec3<bool>(true, true, true)))))), _wgslsmith_div_vec3_f32(vec3<f32>(-347f, var_1.d.x, 780f), _wgslsmith_div_vec3_f32(global3.d, global0.wzy))), 4294967295u);
    let var_3 = var_0.yx;
    return global2[_wgslsmith_index_u32(reverseBits(var_3.x | 1u), 2u)];
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_1(~_wgslsmith_clamp_vec3_u32(~(vec3<u32>(1u, 4294967295u, 43235u) << (u_input.a % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(firstTrailingBit(u_input.a), ~vec3<u32>(80429u, 0u, 23964u)), firstLeadingBit(vec3<u32>(global3.c, 1u, global3.a.x))), -6395i, _wgslsmith_mod_u32(~(_wgslsmith_div_u32(8248u, u_input.a.x) ^ 23973u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(8744u, global3.a.x, 1u), vec3<u32>(80797u, u_input.a.x, 21442u)) ^ u_input.a.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(944f + -1043f)), _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(ceil(global0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1892f)))))), u_input.a.x);
    let var_1 = func_2();
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, -904f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x))), global0.x));
    let var_2 = -3250i;
    global1 = array<Struct_1, 27>();
    return vec2<i32>(abs(~var_0.b | global3.b), var_0.b);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<f32>, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_div_i32(global3.b, 1i);
    global1 = array<Struct_1, 27>();
    var var_1 = any(vec4<bool>(any(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), arg_2.x <= global3.d.x, false, !all(vec4<bool>(true, true, true, true))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true & (~(global3.c << (u_input.a.x % 32u)) >= ~0u), _wgslsmith_f_op_f32(-global0.x) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.d.x, global3.d.x)) - global3.d.x));
    var_0 = !vec2<bool>(!all(!vec2<bool>(var_0.x, var_0.x)), any(select(!vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_0.x, var_0.x))));
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x) | global3.a.xz, vec2<u32>(1u, u_input.a.x)), firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, 4294967295u))), 1336u, 4294967295u), firstLeadingBit(~global3.b), 42370u ^ (global3.c << (~global3.c % 32u)), global3.d, u_input.a.x);
    let var_2 = global1[_wgslsmith_index_u32(func_4((select(~vec2<i32>(0i, global3.b), abs(vec2<i32>(global3.b, var_1.b)), vec2<bool>(var_0.x, var_0.x)) | (func_1() >> (vec2<u32>(global3.e, global3.a.x) % vec2<u32>(32u)))) << (var_1.a.yy % vec2<u32>(32u)), var_1.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(902f, -1123f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, var_0.x))))), func_2().b), 27u)];
    var var_3 = var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(global3.c, _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(abs(abs(vec4<i32>(-13971i, 2147483647i, -1i, var_2.b))), select(~vec4<i32>(1i, -38015i, 22628i, -44558i), _wgslsmith_div_vec4_i32(vec4<i32>(44596i, 0i, global3.b, global3.b), vec4<i32>(var_2.b, -53490i, var_2.b, -1i)), vec4<bool>(var_0.x, var_0.x, var_0.x, false))), (vec4<i32>(-1i) * -vec4<i32>(global3.b, 18215i, 2147483647i, global3.b)) >> (vec4<u32>(var_1.e, ~var_1.e, 10971u, var_1.e << (var_2.c % 32u)) % vec4<u32>(32u))), var_1.c, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.wz + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, var_1.d.x)))) * vec2<f32>(_wgslsmith_f_op_f32(round(var_2.d.x)), _wgslsmith_f_op_f32(-var_2.d.x))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(floor(1079f)), var_2.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f)))))));
}

