struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(319f)), _wgslsmith_div_f32(285f, -351f))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(30020u, arg_0, arg_0, arg_0)), ~(vec4<u32>(18508u, u_input.a, 4294967295u, u_input.c) ^ vec4<u32>(20292u, u_input.a, u_input.c, arg_0))) > ~arg_0, u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>(12436u, ~43129u >> (~arg_0 % 32u), u_input.a, 51086u), ~vec4<u32>(u_input.a >> (0u % 32u), ~66653u, u_input.a, _wgslsmith_sub_u32(0u, arg_0))));
    global0 = array<i32, 26>();
    return -975f;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_4 {
    var var_0 = arg_2;
    global0 = array<i32, 26>();
    var var_1 = arg_3.c;
    var var_2 = var_1.d.x;
    var var_3 = vec4<f32>(var_1.a, _wgslsmith_f_op_f32(-1897f * _wgslsmith_f_op_f32(-1139f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1633f))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_u32(var_1.d.x, 1u))), arg_3.b.a);
    return Struct_4(~(-2147483647i), !vec4<bool>(true, all(select(vec3<bool>(true, arg_3.b.b, true), vec3<bool>(false, false, var_0.b), arg_0)), arg_3.a, any(vec4<bool>(false, arg_3.b.b, false, var_0.b))), Struct_1(-408f, var_0.b | arg_2.b, -28589i, select(vec4<u32>(_wgslsmith_add_u32(var_0.d.x, 2746u), ~arg_2.d.x, _wgslsmith_mult_u32(14136u, var_1.d.x), firstLeadingBit(var_1.d.x)), arg_2.d, all(!vec3<bool>(var_1.b, arg_0, arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1364f, arg_3.c.a, true)), _wgslsmith_f_op_f32(-arg_3.b.a), true)))) - var_1.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.x, var_3.x)) + var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, var_1.a))) * _wgslsmith_f_op_f32(f32(-1f) * -1331f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.a - -526f))), arg_3.b.a));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: u32, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(all(vec4<bool>(any(vec2<bool>(true, arg_1.b.x)), func_2(all(arg_1.b.zwx), 3574u, func_2(false, u_input.c, arg_1.c, Struct_2(arg_1.c.b, arg_1.c, Struct_1(-1754f, arg_1.c.b, arg_1.a, arg_1.c.d), arg_0)).c, Struct_2(arg_1.b.x, arg_1.c, arg_1.c, arg_1.d)).b.x, all(arg_1.b.zxy), arg_1.c.b)), func_2(all(select(!vec3<bool>(arg_1.c.b, arg_1.b.x, true), !arg_1.b.wzw, !arg_1.b.x)), 85679u, arg_1.c, Struct_2(false, func_2(func_2(arg_1.b.x, 0u, arg_1.c, Struct_2(false, Struct_1(arg_0, true, -460i, vec4<u32>(arg_1.c.d.x, 13825u, arg_1.c.d.x, arg_3.x)), arg_1.c, -808f)).c.b, 1523u & arg_3.x, arg_1.c, Struct_2(true, Struct_1(-128f, arg_1.c.b, global0[_wgslsmith_index_u32(arg_1.c.d.x, 26u)], arg_1.c.d), Struct_1(-568f, arg_1.b.x, 68783i, vec4<u32>(arg_1.c.d.x, arg_3.x, 52537u, 0u)), arg_1.c.a)).c, func_2(true, reverseBits(4294967295u), func_2(true, 70493u, arg_1.c, Struct_2(arg_1.b.x, Struct_1(arg_0, true, -34930i, arg_1.c.d), Struct_1(arg_1.d, arg_1.b.x, 63223i, arg_1.c.d), -526f)).c, Struct_2(arg_1.c.b, arg_1.c, Struct_1(arg_0, true, -1i, arg_1.c.d), -793f)).c, -913f)).c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_1.c.a)) * _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(arg_1.e.x - 901f)))), any(!(!vec4<bool>(arg_1.c.b, arg_1.b.x, arg_1.b.x, false))), 1306i, vec4<u32>(arg_3.x, max(~arg_1.c.d.x, arg_1.c.d.x), max(_wgslsmith_mod_u32(arg_3.x, 32476u), 16636u), _wgslsmith_dot_vec3_u32(abs(arg_1.c.d.yyz), arg_1.c.d.wyx))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.c.a)))))));
    var var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 24373i) << (arg_3 % vec2<u32>(32u)), ~vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(arg_1.c.d.x, 26u)])), vec2<i32>(u_input.b, 2147483647i)), _wgslsmith_add_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.a, arg_1.a), vec2<i32>(arg_1.c.c, global0[_wgslsmith_index_u32(12334u, 26u)])), vec2<i32>(_wgslsmith_mod_i32(8290i, arg_1.c.c), var_0.c.c))) ^ vec2<i32>((-13961i & (var_0.c.c ^ -56850i)) | _wgslsmith_mod_i32(i32(-1i) * -2147483647i, arg_1.c.c), -2147483647i);
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(max(0i, -1i), -1i) ^ (~vec2<i32>(u_input.b, -65465i) << (max(arg_3, vec2<u32>(arg_2, 4294967295u)) % vec2<u32>(32u))), vec2<i32>(1i, ~1i)), ~max(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, global0[_wgslsmith_index_u32(66573u, 26u)]), vec2<i32>(arg_1.c.c, 0i))), firstTrailingBit(vec2<i32>(var_1.x, u_input.b)) & _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.a, 1i), vec2<i32>(-18509i, 2147483647i), vec2<i32>(2147483647i, 1i))));
    var_2 = var_0.c.c;
    global0 = array<i32, 26>();
    return var_0.c;
}

fn func_1() -> vec4<i32> {
    var var_0 = Struct_5(true, func_4(-725f, func_2(true & any(vec4<bool>(true, true, false, true)), countOneBits(~4294967295u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -431f), true, -global0[_wgslsmith_index_u32(u_input.a, 26u)], _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.a, 18085u, 0u), vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u))), Struct_2(false, Struct_1(992f, false, u_input.b, vec4<u32>(4294967295u, u_input.a, u_input.c, 45812u)), Struct_1(-1000f, true, -2147483647i, vec4<u32>(0u, u_input.c, 92398u, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -671f))), u_input.a, abs(~(~vec2<u32>(18016u, 0u)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(525f * -455f))), -1123f)), _wgslsmith_f_op_f32(max(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1362f))), func_2(true, ~1u, Struct_1(1888f, true, 0i, vec4<u32>(0u, u_input.c, 36655u, u_input.c)), Struct_2(true, Struct_1(506f, false, -14740i, vec4<u32>(u_input.a, 4294967295u, 1u, 0u)), Struct_1(-109f, false, 0i, vec4<u32>(57462u, 1u, 1u, 31403u)), 156f)), u_input.a << (countOneBits(1u) % 32u), ~(~vec2<u32>(u_input.c, u_input.a))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -495f))))));
    var_0 = Struct_5(!var_0.b.b, func_2(!(any(vec4<bool>(var_0.a, false, var_0.a, false)) || true), 1u, func_2(_wgslsmith_f_op_f32(-var_0.d) < _wgslsmith_f_op_f32(func_3(var_0.b.d.x)), _wgslsmith_mult_u32(var_0.b.d.x ^ 4294967295u, u_input.c), func_2(var_0.b.b, ~2896u, func_2(var_0.b.b, var_0.b.d.x, var_0.b, Struct_2(false, Struct_1(396f, false, var_0.b.c, var_0.b.d), Struct_1(var_0.c, var_0.b.b, -6606i, vec4<u32>(0u, var_0.b.d.x, var_0.b.d.x, var_0.b.d.x)), -1171f)).c, Struct_2(var_0.a, var_0.b, Struct_1(var_0.c, var_0.b.b, -1i, var_0.b.d), 321f)).c, Struct_2(all(vec3<bool>(true, true, var_0.a)), Struct_1(1021f, var_0.b.b, -2147483647i, vec4<u32>(56377u, 83070u, u_input.a, u_input.a)), func_2(var_0.b.b, var_0.b.d.x, Struct_1(var_0.b.a, var_0.a, global0[_wgslsmith_index_u32(32731u, 26u)], var_0.b.d), Struct_2(var_0.b.b, Struct_1(var_0.c, false, 0i, var_0.b.d), var_0.b, var_0.b.a)).c, _wgslsmith_f_op_f32(-1417f + 740f))).c, Struct_2(select(var_0.b.b, true, var_0.a), var_0.b, var_0.b, _wgslsmith_f_op_f32(floor(var_0.c)))).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.a, var_0.d, true)))))), _wgslsmith_f_op_f32(func_3(~24479u ^ max(var_0.b.d.x, select(var_0.b.d.x, 1u, false)))));
    var var_1 = _wgslsmith_div_f32(var_0.b.a, -1433f);
    var_0 = Struct_5(any(vec3<bool>((var_0.b.b && true) & true, var_0.b.b, any(select(vec4<bool>(var_0.b.b, false, false, false), vec4<bool>(true, var_0.a, var_0.a, var_0.b.b), var_0.a)))), Struct_1(1370f, -2147483647i < ~(-var_0.b.c), 0i, ~(~_wgslsmith_mult_vec4_u32(var_0.b.d, var_0.b.d))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_f_op_f32(select(var_0.b.a, var_0.c, false))))), var_0.d, !all(func_2(var_0.b.b, 1u, Struct_1(var_0.b.a, var_0.a, global0[_wgslsmith_index_u32(27239u, 26u)], vec4<u32>(u_input.a, 0u, 29364u, var_0.b.d.x)), Struct_2(var_0.a, Struct_1(-113f, var_0.b.b, 12837i, var_0.b.d), Struct_1(var_0.c, var_0.a, 40516i, vec4<u32>(var_0.b.d.x, var_0.b.d.x, 0u, 4294967295u)), 784f)).b.yy))), _wgslsmith_f_op_f32(floor(-1765f)));
    var_0 = Struct_5(var_0.b.b, var_0.b, var_0.c, var_0.c);
    return vec4<i32>(-1i) * -abs(~(-vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(var_0.b.d.x, 26u)], u_input.b, 2147483647i)));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_2 {
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    var var_0 = Struct_5(true, func_2(true, ~u_input.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -970f)), (-1i | u_input.b) == 1i, global0[_wgslsmith_index_u32(abs(min(u_input.a, 13402u)), 26u)], _wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, 1u, u_input.a, 50377u)), vec4<u32>(u_input.c, u_input.c, 31774u, u_input.a))), Struct_2(any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true)), Struct_1(-1206f, true, -1i, ~vec4<u32>(u_input.c, u_input.a, 3349u, u_input.a)), func_4(_wgslsmith_f_op_f32(abs(arg_0.x)), func_2(false, 0u, Struct_1(arg_0.x, true, 1i, vec4<u32>(5630u, 27585u, 42271u, 0u)), Struct_2(false, Struct_1(arg_0.x, true, u_input.b, vec4<u32>(28526u, u_input.c, 13918u, u_input.c)), Struct_1(-1000f, true, -8815i, vec4<u32>(31140u, u_input.a, 54351u, u_input.a)), -1245f)), u_input.a << (u_input.c % 32u), vec2<u32>(0u, u_input.c)), arg_0.x)).c, _wgslsmith_f_op_f32(f32(-1f) * -1502f), _wgslsmith_f_op_f32(-586f - _wgslsmith_f_op_f32(-232f + arg_0.x)));
    return Struct_2(true, var_0.b, func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -571f), 847f)), func_2(all(!vec3<bool>(var_0.a, false, true)), ~u_input.a, Struct_1(arg_0.x, !var_0.b.b, -1i, ~vec4<u32>(12298u, var_0.b.d.x, 1u, var_0.b.d.x)), Struct_2(var_0.b.b, Struct_1(1396f, var_0.b.b, 11694i, var_0.b.d), var_0.b, _wgslsmith_f_op_f32(round(-485f)))), 13968u, ~var_0.b.d.xx), _wgslsmith_f_op_f32(-var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 26>();
    let var_0 = Struct_3(func_5(vec3<f32>(1000f, 1347f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1180f * 1063f)))), -func_1()));
    global0 = array<i32, 26>();
    let var_1 = select(select(!select(select(vec4<bool>(var_0.a.c.b, false, var_0.a.a, var_0.a.a), vec4<bool>(var_0.a.c.b, var_0.a.b.b, false, true), var_0.a.b.b), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, var_0.a.b.b)), !(!select(vec4<bool>(var_0.a.c.b, var_0.a.a, var_0.a.b.b, var_0.a.c.b), vec4<bool>(var_0.a.a, var_0.a.b.b, true, var_0.a.a), var_0.a.b.b)), !(func_2(true, 4294967295u, Struct_1(-1104f, var_0.a.a, var_0.a.c.c, vec4<u32>(4294967295u, u_input.c, 4294967295u, var_0.a.b.d.x)), Struct_2(var_0.a.c.b, Struct_1(var_0.a.c.a, true, var_0.a.b.c, var_0.a.b.d), var_0.a.b, 294f)).a > ~var_0.a.b.c)), !func_2(false, _wgslsmith_mult_u32(0u, 1u), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.c.a, var_0.a.b.a, 1000f) * vec3<f32>(-669f, 655f, 754f)), -vec4<i32>(var_0.a.b.c, global0[_wgslsmith_index_u32(var_0.a.b.d.x, 26u)], 0i, var_0.a.c.c)).c, func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b.a, var_0.a.c.a, -180f) * vec3<f32>(var_0.a.b.a, var_0.a.c.a, var_0.a.d)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.c.c, 0i, global0[_wgslsmith_index_u32(var_0.a.b.d.x, 26u)], u_input.b), vec4<i32>(var_0.a.b.c, -2147483647i, var_0.a.b.c, -9538i)))).b, vec4<bool>((~u_input.a | ~var_0.a.c.d.x) < var_0.a.c.d.x, true, true, var_0.a.a));
    let var_2 = -vec3<i32>(-(u_input.b >> (12447u % 32u)) >> ((firstLeadingBit(u_input.c) & u_input.c) % 32u), var_0.a.b.c, 9162i);
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    var var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, 5254u), u_input.c);
}

