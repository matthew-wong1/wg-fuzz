struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = -583f;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(1u, 0u, vec4<u32>(0u, 8997u, 1u, 1u), 1i, vec4<u32>(0u, 1u, 27644u, 1u)), Struct_1(59549u, 28932u, vec4<u32>(4294967295u, 0u, 1u, 520u), 4879i, vec4<u32>(25592u, 10571u, 18985u, 1u)), Struct_1(50515u, 1u, vec4<u32>(5227u, 0u, 1u, 4294967295u), 1i, vec4<u32>(15783u, 19644u, 19265u, 28399u)), Struct_1(36450u, 1u, vec4<u32>(21832u, 0u, 4294967295u, 0u), -1i, vec4<u32>(0u, 1u, 46442u, 88145u)), Struct_1(1u, 42932u, vec4<u32>(4294967295u, 4294967295u, 52724u, 7001u), 64809i, vec4<u32>(47593u, 0u, 62372u, 1u)), Struct_1(29012u, 4294967295u, vec4<u32>(50357u, 26624u, 4294967295u, 4294967295u), -1i, vec4<u32>(8345u, 11700u, 0u, 90841u)), Struct_1(64023u, 18091u, vec4<u32>(13990u, 1u, 4294967295u, 4294967295u), 2147483647i, vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), Struct_1(14963u, 0u, vec4<u32>(4294967295u, 73979u, 9596u, 0u), i32(-2147483648), vec4<u32>(11198u, 23986u, 2187u, 1u)), Struct_1(4294967295u, 3731u, vec4<u32>(77285u, 15528u, 4294967295u, 0u), 2147483647i, vec4<u32>(85923u, 11516u, 4294967295u, 16074u)), Struct_1(5613u, 1u, vec4<u32>(1u, 4294967295u, 4294967295u, 0u), 48485i, vec4<u32>(3100u, 0u, 10839u, 4294967295u)), Struct_1(57584u, 0u, vec4<u32>(16263u, 44911u, 4294967295u, 131u), 38178i, vec4<u32>(11327u, 1u, 9384u, 0u)), Struct_1(56013u, 4294967295u, vec4<u32>(16380u, 41355u, 38402u, 0u), -15287i, vec4<u32>(29216u, 5518u, 32011u, 0u)), Struct_1(97612u, 4080u, vec4<u32>(1u, 4294967295u, 4294967295u, 1u), -6015i, vec4<u32>(16243u, 11451u, 1981u, 0u)), Struct_1(77494u, 81286u, vec4<u32>(1u, 1u, 4294967295u, 4294967295u), 0i, vec4<u32>(0u, 58643u, 42020u, 0u)), Struct_1(0u, 37603u, vec4<u32>(0u, 1u, 4743u, 4294967295u), 16323i, vec4<u32>(4294967295u, 51609u, 4294967295u, 4294967295u)), Struct_1(24618u, 4294967295u, vec4<u32>(4294967295u, 115704u, 4294967295u, 16847u), -9182i, vec4<u32>(61528u, 4294967295u, 16253u, 57764u)), Struct_1(3790u, 132513u, vec4<u32>(44012u, 4294967295u, 4294967295u, 101507u), 46158i, vec4<u32>(0u, 1u, 26768u, 44174u)), Struct_1(1u, 13031u, vec4<u32>(11504u, 51597u, 7527u, 4294967295u), 2147483647i, vec4<u32>(43340u, 64524u, 4294967295u, 94017u)), Struct_1(4294967295u, 0u, vec4<u32>(94u, 4294967295u, 156347u, 75851u), -38888i, vec4<u32>(44919u, 4294967295u, 48873u, 0u)), Struct_1(4695u, 4294967295u, vec4<u32>(0u, 1u, 36340u, 4294967295u), -64245i, vec4<u32>(67191u, 1u, 4294967295u, 21915u)), Struct_1(51846u, 21229u, vec4<u32>(7416u, 30377u, 0u, 4294967295u), 48454i, vec4<u32>(4294967295u, 34995u, 4294967295u, 37942u)), Struct_1(52578u, 1u, vec4<u32>(83358u, 2318u, 118438u, 55208u), -37612i, vec4<u32>(0u, 18679u, 1u, 1u)), Struct_1(0u, 4294967295u, vec4<u32>(1u, 86644u, 1u, 49278u), 0i, vec4<u32>(67975u, 1u, 67644u, 0u)), Struct_1(1u, 848u, vec4<u32>(80366u, 14513u, 25549u, 12360u), -1i, vec4<u32>(3028u, 4294967295u, 0u, 0u)), Struct_1(40730u, 0u, vec4<u32>(67812u, 4294967295u, 4294967295u, 0u), 0i, vec4<u32>(20403u, 0u, 4294967295u, 14996u)), Struct_1(4294967295u, 16347u, vec4<u32>(0u, 0u, 68951u, 1u), -17718i, vec4<u32>(59824u, 0u, 9600u, 4294967295u)), Struct_1(1u, 17232u, vec4<u32>(4294967295u, 1u, 22415u, 8592u), i32(-2147483648), vec4<u32>(0u, 1u, 4294967295u, 1u)), Struct_1(4294967295u, 4294967295u, vec4<u32>(63455u, 1u, 12939u, 35876u), 0i, vec4<u32>(57781u, 69035u, 0u, 40308u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec3<u32>) -> i32 {
    global2 = array<Struct_1, 28>();
    let var_0 = global2[_wgslsmith_index_u32(~u_input.c, 28u)];
    return var_0.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_2(-1i, _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(arg_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(103169i, arg_1.b, arg_1.b, -2147483647i), vec4<i32>(u_input.a.x, arg_0.d, arg_0.d, -2147483647i))), _wgslsmith_mult_i32(~(-20847i), u_input.a.x)), ~u_input.a.x & func_3(all(vec3<bool>(true, true, false)), Struct_2(-8245i, 1i), arg_0.c.zzx)));
    let var_1 = arg_0;
    var var_2 = vec2<f32>(-188f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(906f, 1000f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-799f)) - _wgslsmith_f_op_f32(min(-1017f, _wgslsmith_f_op_f32(f32(-1f) * -495f)))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(trunc(var_2.x)))))));
    global2 = array<Struct_1, 28>();
    return ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b, 81100u, 4294967295u, 21717u), ~vec4<u32>(var_1.a, var_1.b, 87095u, u_input.c)), max(~vec4<u32>(0u, 34096u, var_1.b, 4294967295u), min(var_1.c, arg_0.e))), _wgslsmith_add_vec4_u32(~vec4<u32>(1368u, 62373u, 4294967295u, 2162u), vec4<u32>(4780u, 1u, u_input.c >> (0u % 32u), _wgslsmith_dot_vec3_u32(var_1.c.xwy, vec3<u32>(arg_0.e.x, var_1.b, u_input.c)))));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(func_4(global2[_wgslsmith_index_u32(~(u_input.c | arg_0), 28u)], Struct_2(func_3(arg_1.x, Struct_2(-1i, u_input.a.x), vec3<u32>(11823u, 0u, arg_0)), 1i)) | ~(~func_4(Struct_1(u_input.b.x, 45819u, vec4<u32>(1u, 1u, 4294967295u, u_input.c), u_input.a.x, vec4<u32>(35040u, u_input.c, u_input.c, arg_0)), Struct_2(-1i, u_input.a.x))), arg_0, _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.b.x, 105969u, arg_0, u_input.c)), ~select(vec4<u32>(4294967295u, u_input.b.x, arg_0, 0u), vec4<u32>(u_input.c, arg_0, 36u, u_input.b.x), vec4<bool>(arg_1.x, arg_1.x, true, false))), max(~vec4<u32>(arg_0, arg_0, 51313u, 4294967295u), vec4<u32>(arg_0, arg_0, 6902u, 135547u) & vec4<u32>(1u, arg_0, u_input.b.x, 57154u)) << (reverseBits(firstTrailingBit(vec4<u32>(4573u, arg_0, u_input.c, 4294967295u))) % vec4<u32>(32u))), _wgslsmith_div_i32(u_input.a.x, 24420i), max(vec4<u32>(u_input.c & reverseBits(0u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b.x, arg_0, 0u), arg_0), 8547u, min(1u, 4294967295u)), firstLeadingBit(~vec4<u32>(u_input.c, arg_0, 271u, arg_0) << (~vec4<u32>(0u, u_input.c, u_input.c, arg_0) % vec4<u32>(32u)))));
    var var_1 = u_input.c;
    global0 = u_input.a.x ^ ~(-2147483647i);
    var var_2 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(arg_0, 4294967295u, 1u)), select(min(var_0.c.wxw, vec3<u32>(u_input.c, 35846u, u_input.c)), var_0.c.zzw, true)), max(~0u, ~78786u)), arg_0, reverseBits(var_0.e), -var_0.d, reverseBits(firstTrailingBit(vec4<u32>(~37565u, _wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(0u, u_input.b.x, var_0.e.x, 28247u)), ~29052u, arg_0))));
    global1 = 176f;
    return global2[_wgslsmith_index_u32(15851u, 28u)];
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> vec4<f32> {
    var var_0 = Struct_2(_wgslsmith_mod_i32(-92252i, _wgslsmith_sub_i32(1i, u_input.a.x) & countOneBits(-20195i)), 0i);
    var var_1 = func_2(1u, !vec3<bool>(false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true))), true));
    let var_2 = global2[_wgslsmith_index_u32(~61226u, 28u)];
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, var_1.c.x, u_input.c, u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_1.a, u_input.b.x, 107307u), var_2.c), ~var_2.e) << (~_wgslsmith_div_vec4_u32(var_1.c, var_1.c) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mod_u32(u_input.c, ~(~u_input.b.x)), var_2.c.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(~var_2.b, var_1.b), 55290u), var_1.c.x)), 28u)];
    let var_4 = 0u;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_0, arg_0, -305f) * vec4<f32>(1241f, -961f, arg_1.x, -101f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.x, 1039f, arg_1.x, arg_1.x))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(973f + arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(trunc(1183f))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-126f * 1179f), _wgslsmith_f_op_f32(-arg_0), arg_0))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, -940f, arg_1.x, 165f), vec4<f32>(-695f, arg_0, -274f, -1179f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1423f, -1201f, 120f, -500f) * vec4<f32>(-690f, 1378f, arg_0, arg_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1998f, arg_1.x, arg_0, 1289f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(888f, arg_1.x, -852f, -1797f))), any(vec3<bool>(true, false, false))))))));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec4<f32>, arg_3: vec2<i32>) -> vec4<u32> {
    global0 = 56017i;
    var var_0 = func_2(1116u, vec3<bool>(!(!all(vec4<bool>(true, false, false, false))), any(vec4<bool>(all(vec3<bool>(false, true, true)), true, any(vec3<bool>(false, true, false)), arg_2.x <= 1271f)), true));
    let var_1 = 1u;
    var var_2 = vec2<i32>(0i, arg_0);
    var var_3 = ~(~(~6470u));
    return _wgslsmith_mult_vec4_u32(select(min(_wgslsmith_add_vec4_u32(vec4<u32>(7521u, 77144u, 17965u, 1u), var_0.e), ~vec4<u32>(var_1, 32024u, 16664u, 4294967295u)), ~var_0.c, !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false)), vec4<u32>(4294967295u, ~1u, _wgslsmith_dot_vec4_u32(var_0.e, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, var_1, arg_1, var_1), var_0.c, vec4<u32>(29423u, var_1, var_0.e.x, 12125u))), var_0.e.x)) | (vec4<u32>(select(arg_1 & var_1, arg_1, true), 19566u, var_0.b, abs(abs(66290u))) << (var_0.c % vec4<u32>(32u)));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = Struct_1(~_wgslsmith_sub_u32(~_wgslsmith_mod_u32(arg_0, arg_3.e.x), arg_1.c.x & _wgslsmith_mod_u32(arg_3.e.x, u_input.c)), _wgslsmith_mult_u32(~(~select(1u, 4294967295u, arg_2.x)), 1u), vec4<u32>(69993u, 1680u, _wgslsmith_sub_u32(min(55904u, arg_0), arg_0) ^ reverseBits(func_4(Struct_1(arg_3.e.x, 20208u, vec4<u32>(u_input.b.x, 0u, 1u, u_input.b.x), 26724i, arg_3.c), Struct_2(-8946i, 1i))), 0u), arg_3.d, _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, 1u, u_input.c, firstTrailingBit(4175u)), arg_3.e, arg_1.c), vec4<u32>(firstLeadingBit(9492u), 60863u, 5988u, 35650u)));
    var var_1 = vec4<u32>(firstTrailingBit(~(~_wgslsmith_add_u32(1u, arg_3.c.x))), 0u, u_input.b.x, 4610u);
    let var_2 = select(arg_3.e.wzx, vec3<u32>(~arg_3.b, ~_wgslsmith_add_u32(~18752u, abs(0u)), _wgslsmith_sub_u32(1u, var_1.x)), select(select(select(!vec3<bool>(false, false, arg_2.x), vec3<bool>(true, true, arg_2.x), !arg_2.x), !vec3<bool>(true, arg_2.x, arg_2.x), select(!vec3<bool>(true, true, arg_2.x), !vec3<bool>(arg_2.x, false, arg_2.x), arg_2.x)), !select(select(vec3<bool>(true, arg_2.x, true), vec3<bool>(false, false, arg_2.x), false), vec3<bool>(arg_2.x, true, arg_2.x), !vec3<bool>(true, arg_2.x, false)), true));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1802f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(341f))));
    var var_4 = arg_1.c ^ (min(~(~arg_3.c), _wgslsmith_sub_vec4_u32(arg_1.c, vec4<u32>(var_2.x, var_1.x, 0u, 1u)) >> (vec4<u32>(8476u, 28607u, arg_0, 1u) % vec4<u32>(32u))) | abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.c, 4294967295u, 39007u) << (vec4<u32>(arg_0, arg_1.b, arg_3.a, var_2.x) % vec4<u32>(32u)), ~vec4<u32>(0u, arg_3.c.x, 18867u, 0u), vec4<u32>(78854u, var_1.x, arg_1.c.x, 69651u))));
    return StorageBuffer(reverseBits(-reverseBits(vec4<i32>(arg_3.d, 2147483647i, arg_1.d, -23161i)) | vec4<i32>(abs(20074i), 1i, 1i, 1i)), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 28>();
    global2 = array<Struct_1, 28>();
    global1 = 1000f;
    var var_0 = vec2<bool>(!all(vec3<bool>(true, false, false)) && !all(vec2<bool>(false, false)), false);
    let x = u_input.a;
    s_output = func_6(14319u, Struct_1(1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(13251u, u_input.c), 4294967295u), _wgslsmith_sub_u32(4294967295u, 1u | u_input.b.x)), vec4<u32>(21523u, u_input.b.x, 0u | max(4294967295u, u_input.b.x), u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, 0i) | -vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(~u_input.a.x, ~18001i, -u_input.a.x)), func_5(1i, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.c) >> (vec3<u32>(1u, 23071u, 46577u) % vec3<u32>(32u)), abs(vec3<u32>(u_input.c, u_input.c, 1u))), _wgslsmith_f_op_vec4_f32(func_1(259f, vec3<f32>(-379f, 1000f, 749f))), -countOneBits(u_input.a))), vec2<bool>(u_input.b.x <= _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c, u_input.b.x), u_input.c & u_input.b.x), !var_0.x), global2[_wgslsmith_index_u32(abs(max(~min(u_input.c, u_input.c), 9392u)), 28u)]);
}

