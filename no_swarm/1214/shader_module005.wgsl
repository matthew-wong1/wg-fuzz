struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(-383f, 316f), vec2<f32>(612f, -178f), vec2<f32>(773f, -372f), vec2<f32>(891f, 1471f), vec2<f32>(258f, 476f), vec2<f32>(-933f, -456f), vec2<f32>(526f, 350f), vec2<f32>(214f, -1037f), vec2<f32>(778f, 1000f), vec2<f32>(-995f, -1602f), vec2<f32>(1000f, 1706f), vec2<f32>(706f, 107f), vec2<f32>(-505f, 2254f), vec2<f32>(1000f, 367f), vec2<f32>(1046f, 509f), vec2<f32>(-1651f, -230f), vec2<f32>(709f, 644f), vec2<f32>(-2863f, -742f), vec2<f32>(-1080f, 2183f), vec2<f32>(-542f, 2189f), vec2<f32>(-105f, 293f), vec2<f32>(963f, -1377f), vec2<f32>(-1426f, -153f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = select(!select(select(select(vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(arg_2.a, true), vec2<bool>(arg_2.a, false)), vec2<bool>(arg_2.a, arg_2.a), true), vec2<bool>(true, true), vec2<bool>(6979u < arg_0.a.x, select(false, true, arg_2.a))), !select(vec2<bool>(arg_2.a & true, true), !vec2<bool>(false, arg_2.a), arg_2.a), arg_2.a);
    var var_1 = Struct_3(select(arg_2.a, true, _wgslsmith_div_f32(1011f, _wgslsmith_f_op_f32(arg_2.c.d * -349f)) > _wgslsmith_f_op_f32(-340f + _wgslsmith_div_f32(-211f, arg_1.x))), arg_0, arg_2.c);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.d, arg_1.x, arg_0.c.d, arg_1.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-819f * 570f), _wgslsmith_f_op_f32(arg_0.b.d + -871f), -1949f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.b.d, 1691f, arg_2.c.d, -1444f)))));
    var var_3 = _wgslsmith_f_op_f32(floor(arg_2.b.c.d));
    let var_4 = vec3<f32>(-333f, var_1.b.c.d, -660f);
    return arg_0.c.b;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> vec4<f32> {
    var var_0 = Struct_1(u_input.c.x, ~func_3(Struct_2(vec4<u32>(u_input.a.x, u_input.c.x, u_input.b, u_input.a.x), Struct_1(u_input.c.x, vec4<u32>(56104u, u_input.c.x, 9306u, u_input.a.x), vec2<u32>(9164u, u_input.a.x), -1012f, -27919i), Struct_1(1u, vec4<u32>(u_input.a.x, u_input.c.x, u_input.a.x, u_input.b), u_input.a.xy, arg_0.x, arg_1), ~vec4<u32>(u_input.c.x, 4294967295u, 58024u, 0u), 46472u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-435f, arg_0.x, arg_0.x, arg_0.x) * arg_0)), Struct_3(true, Struct_2(vec4<u32>(u_input.b, 47272u, u_input.b, 4294967295u), Struct_1(u_input.b, vec4<u32>(u_input.a.x, 0u, u_input.c.x, u_input.b), vec2<u32>(u_input.b, u_input.b), arg_0.x, u_input.d), Struct_1(4294967295u, vec4<u32>(u_input.c.x, 68941u, u_input.c.x, 5120u), vec2<u32>(4308u, u_input.b), 625f, -2147483647i), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 28399u), u_input.b), Struct_1(u_input.b, vec4<u32>(u_input.a.x, u_input.b, 1u, u_input.a.x), u_input.a.xx, 994f, -38668i))), countOneBits(~u_input.a.zy) & vec2<u32>(~_wgslsmith_mod_u32(u_input.c.x, 1u), ~reverseBits(44792u)), 3033f, ~0i);
    var_0 = Struct_1(19476u, max(select(_wgslsmith_add_vec4_u32(var_0.b >> (var_0.b % vec4<u32>(32u)), vec4<u32>(4294967295u, var_0.c.x, u_input.c.x, var_0.b.x) >> (var_0.b % vec4<u32>(32u))), var_0.b, select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)), vec4<u32>(4294967295u, 30453u, 83471u, _wgslsmith_dot_vec4_u32(var_0.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 54880u, var_0.c.x, 4294967295u), vec4<u32>(u_input.c.x, 37489u, 18914u, u_input.c.x), var_0.b)))), ~(~max(_wgslsmith_div_vec2_u32(vec2<u32>(10562u, 0u), var_0.b.zw), vec2<u32>(var_0.c.x, u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, -1000f) * var_0.d), arg_1);
    let var_1 = Struct_3(_wgslsmith_div_u32(_wgslsmith_mod_u32(60316u, ~u_input.b), _wgslsmith_add_u32(~var_0.c.x, _wgslsmith_clamp_u32(4294967295u, var_0.a, var_0.c.x))) < 21088u, Struct_2(vec4<u32>(min(abs(u_input.a.x), 1u), 41518u, (var_0.b.x & 4294967295u) << (~878u % 32u), 2876u), Struct_1(_wgslsmith_add_u32(1u, u_input.c.x), vec4<u32>(u_input.a.x, ~u_input.b, _wgslsmith_dot_vec4_u32(var_0.b, var_0.b), 10364u), ~(~u_input.c), 1263f, var_0.e), Struct_1(var_0.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.x, var_0.a, 10736u, 89713u), var_0.b & vec4<u32>(var_0.b.x, 45561u, u_input.c.x, 11405u), vec4<u32>(u_input.b, 4691u, 0u, 15182u)), var_0.b.yy, _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-1871f * 1000f))), ~reverseBits(-46193i)), vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(38938u, u_input.c.x), 1u, 4294967295u) & ~var_0.b, ~_wgslsmith_sub_u32(countOneBits(24886u), ~var_0.a)), Struct_1(abs(u_input.c.x | 78066u), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a, 4294967295u, u_input.c.x, var_0.a), vec4<u32>(54895u, u_input.b, 1u, u_input.c.x)) & vec4<u32>(var_0.a, 1u, 45422u, var_0.c.x), ~vec4<u32>(1u, var_0.b.x, 4294967295u, 1u) | var_0.b), var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2669f), 758f)), _wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(45620i, u_input.d), -u_input.d), -(i32(-1i) * -61167i))));
    global0 = array<vec2<f32>, 23>();
    let var_2 = var_1.a;
    return vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(-var_0.d))), 1148f))), _wgslsmith_f_op_f32(ceil(arg_0.x)), var_1.b.b.d);
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(~firstTrailingBit(1u), vec4<u32>(25449u, 103102u, u_input.a.x, ~(~(~u_input.c.x))), ~min(vec2<u32>(u_input.c.x, abs(u_input.c.x)), ~vec2<u32>(u_input.b, 23016u)), -582f, ~u_input.d);
    var var_1 = Struct_3(false || all(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), false)), Struct_2(_wgslsmith_sub_vec4_u32(~(var_0.b & vec4<u32>(var_0.a, 36819u, 0u, u_input.c.x)), reverseBits(~var_0.b)), Struct_1(~u_input.a.x ^ _wgslsmith_clamp_u32(1u, var_0.b.x, u_input.b), vec4<u32>(countOneBits(18317u), 77048u ^ var_0.b.x, 0u, ~u_input.b), vec2<u32>(var_0.b.x ^ 20893u, _wgslsmith_clamp_u32(32206u, var_0.b.x, u_input.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -151f), arg_0.x)), _wgslsmith_mult_i32(17094i << (var_0.b.x % 32u), i32(-1i) * -32905i)), Struct_1(~(u_input.c.x >> (1u % 32u)), ~(vec4<u32>(0u, u_input.a.x, 4294967295u, var_0.b.x) & var_0.b), max(var_0.c, u_input.c ^ u_input.c), arg_0.x, i32(-1i) * -2147483647i), _wgslsmith_div_vec4_u32(var_0.b, ~var_0.b), _wgslsmith_add_u32(~firstLeadingBit(19783u), ~(var_0.a ^ 1u))), Struct_1(0u, vec4<u32>(_wgslsmith_dot_vec2_u32(abs(u_input.c), u_input.c), ~reverseBits(u_input.c.x), 26601u, ~(~19473u)), vec2<u32>(~u_input.a.x & reverseBits(var_0.b.x), u_input.c.x), 857f, u_input.d));
    var var_2 = Struct_1(_wgslsmith_div_u32(var_0.c.x, _wgslsmith_add_u32(u_input.c.x, ~0u)), ~func_3(var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 * arg_0)), Struct_3(var_0.b.x != u_input.b, Struct_2(vec4<u32>(15688u, 4294967295u, var_0.c.x, 1u), Struct_1(11466u, var_0.b, vec2<u32>(4294967295u, 0u), var_1.c.d, var_1.b.b.e), var_1.b.b, vec4<u32>(47887u, 0u, var_0.b.x, var_0.c.x), u_input.c.x), Struct_1(var_0.c.x, vec4<u32>(u_input.b, var_0.b.x, var_0.c.x, var_1.c.b.x), u_input.a.zy, var_1.b.b.d, var_0.e))), ~func_3(Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.b.x, var_1.c.b.x, 32758u), vec4<u32>(21030u, 85009u, 1u, var_1.c.c.x)), var_1.b.b, Struct_1(46462u, var_1.b.c.b, var_0.c, var_0.d, u_input.d), vec4<u32>(var_1.c.b.x, var_1.c.b.x, var_1.b.d.x, 25920u), var_0.a), _wgslsmith_f_op_vec4_f32(select(arg_0, _wgslsmith_f_op_vec4_f32(-arg_0), vec4<bool>(var_1.a, var_1.a, true, true))), Struct_3(any(vec2<bool>(var_1.a, var_1.a)), var_1.b, Struct_1(var_1.c.c.x, var_1.b.d, var_0.c, 154f, -2147483647i))).zy, _wgslsmith_f_op_f32(max(-974f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-var_0.d))))))), 24555i);
    return var_1.b.c;
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = array<vec2<f32>, 23>();
    var var_0 = min(2147483647i, 2513i);
    var_0 = -1i;
    let var_1 = true;
    let var_2 = ~(~u_input.b) | _wgslsmith_dot_vec2_u32(~vec2<u32>(abs(u_input.c.x), firstLeadingBit(3139u)), vec2<u32>(1u, ~reverseBits(0u)));
    return Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(select(1u, 4294967295u, false), var_2, var_2 | var_2, 1u ^ var_2), abs(vec4<u32>(var_2, u_input.c.x, var_2, var_2))) >> (~(~min(vec4<u32>(var_2, 104u, 5692u, var_2), vec4<u32>(9032u, u_input.a.x, var_2, 89696u))) % vec4<u32>(32u)), func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(235f, 163f, -1316f, -3035f))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 1000f, arg_0, 1000f), vec4<f32>(arg_0, arg_0, -1000f, 177f)), vec4<bool>(var_1, true, var_1, false))), _wgslsmith_f_op_vec4_f32(func_2(vec4<f32>(2882f, arg_0, arg_0, 1034f), u_input.d))))), func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 1153f, -1000f, -128f), vec4<f32>(-340f, arg_0, -987f, 1522f))))))), vec4<u32>(4294967295u, ~(~(~var_2)), min(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.b, u_input.b, var_2), vec4<u32>(14222u, var_2, var_2, 4294967295u)), var_2), var_2), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a | vec3<u32>(u_input.b, u_input.b, var_2)) ^ (u_input.a ^ ~u_input.a), abs(max(~vec3<u32>(var_2, 4294967295u, var_2), u_input.a))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: vec2<f32>) -> vec3<f32> {
    var var_0 = any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, any(vec4<bool>(false, false, false, false)), any(vec3<bool>(false, false, true)), true), true));
    var_0 = true;
    global0 = array<vec2<f32>, 23>();
    var_0 = any(select(vec3<bool>(select(any(vec3<bool>(false, true, false)), true, u_input.d < arg_1.e), !all(vec2<bool>(true, true)), false), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(select(true, true, false), false, true), vec3<bool>(true, false, true))));
    global0 = array<vec2<f32>, 23>();
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.d, 117f) - 222f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1682f)))))), -307f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 23>();
    global0 = array<vec2<f32>, 23>();
    global0 = array<vec2<f32>, 23>();
    let var_0 = u_input.c.x;
    global0 = array<vec2<f32>, 23>();
    global0 = array<vec2<f32>, 23>();
    let var_1 = -326f;
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 1000f, -117f)))))), global0[_wgslsmith_index_u32(var_0, 23u)], vec4<u32>(44261u, _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_clamp_u32(var_0, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, var_0, var_0), vec4<u32>(var_0, u_input.c.x, var_0, 55258u)))), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, var_0, u_input.a.x), vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, 0u) & vec4<u32>(var_0, 79515u, 49912u, 0u))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, u_input.a.x, 0u, 4810u) & max(vec4<u32>(var_0, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 5043u, 21240u, var_0)), vec4<u32>(~u_input.b, 1u, ~4294967295u, ~var_0))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, 477f, var_1) + vec3<f32>(-266f, var_1, var_1)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1093f, var_2, var_1) - vec3<f32>(var_2, -1586f, -597f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(func_1(var_1), func_1(var_2).c, _wgslsmith_f_op_f32(f32(-1f) * -659f), _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(1u, 23u)] + global0[_wgslsmith_index_u32(0u, 23u)]))) - vec3<f32>(-1904f, var_2, var_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_2) + -2611f));
}

