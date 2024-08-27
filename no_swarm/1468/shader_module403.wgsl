struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(-51268i, 2147483647i, -1i), vec3<i32>(-67062i, 10749i, -16896i), vec3<i32>(0i, 7623i, -757i), vec3<i32>(i32(-2147483648), 70i, -33580i), vec3<i32>(-1283i, 48365i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, 38580i), vec3<i32>(2147483647i, 6754i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 1i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(-26878i, -40067i, 1i), vec3<i32>(-21435i, 2147483647i, 0i), vec3<i32>(1i, -1i, 780i), vec3<i32>(0i, 0i, 10003i), vec3<i32>(-9287i, 5086i, -1i), vec3<i32>(-44370i, 2147483647i, i32(-2147483648)), vec3<i32>(-3721i, 0i, 36284i), vec3<i32>(1i, i32(-2147483648), 3346i), vec3<i32>(-11046i, i32(-2147483648), 19845i), vec3<i32>(-12778i, 32759i, 0i), vec3<i32>(2147483647i, 23807i, 12347i), vec3<i32>(43494i, 2147483647i, 37460i), vec3<i32>(-10021i, 2147483647i, 1i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-78465i, -18191i, 0i), vec3<i32>(-21013i, -1i, 7202i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(-19244i, 2147483647i, 26302i), vec3<i32>(-51212i, 1i, 1i), vec3<i32>(54236i, 1i, 971i));

var<private> global1: array<Struct_2, 28>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(311f, 1464f, -1308f)))) * vec3<f32>(1f, -1000f, -753f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-601f, -605f, _wgslsmith_f_op_f32(ceil(462f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1115f, 865f, -215f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-856f, 301f, 1000f), vec3<f32>(349f, -1216f, 1646f), false))))))));
    global1 = array<Struct_2, 28>();
    global1 = array<Struct_2, 28>();
    global1 = array<Struct_2, 28>();
    global1 = array<Struct_2, 28>();
    return vec4<i32>(0i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(abs(~u_input.c), arg_0.x), countOneBits(_wgslsmith_add_i32(firstLeadingBit(35752i), firstLeadingBit(-2147483647i)))), arg_0.x, _wgslsmith_mod_i32(-2147483647i, u_input.c));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<u32>, arg_3: u32) -> u32 {
    let var_0 = Struct_2(any(vec3<bool>(true, true, -735f < _wgslsmith_f_op_f32(floor(arg_0.x)))), u_input.c);
    global1 = array<Struct_2, 28>();
    let var_1 = Struct_2(_wgslsmith_div_f32(-1695f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(885f - arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -665f))) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) * -821f))), _wgslsmith_dot_vec4_i32(func_3(countOneBits(vec2<i32>(-1i, -34219i)), Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(12896i, u_input.c), vec2<i32>(31707i, -1i)), u_input.b.x | 4294967295u, 1i, u_input.a.x >> (1u % 32u), ~vec4<u32>(arg_2.x, 138151u, arg_2.x, arg_3))), _wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, var_0.b, u_input.c, var_0.b) | vec4<i32>(23527i, 2147483647i, var_0.b, -2147483647i), vec4<i32>(-1i) * -vec4<i32>(16626i, var_0.b, -28i, 1i))));
    global0 = array<vec3<i32>, 29>();
    let var_2 = Struct_2(false, u_input.c | 2147483647i);
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec3<i32>, 29>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-269f, _wgslsmith_f_op_f32(f32(-1f) * -520f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    var var_1 = arg_3;
    let var_2 = func_3(arg_3.a, Struct_1(vec2<i32>(-1i) * -(~var_1.a), min(36759u, ~arg_0.b) ^ firstTrailingBit(min(4294967295u, u_input.a.x)), 4184i >> (1u % 32u), 1u, ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_0.d, 35793u, 66458u) >> (arg_0.e % vec4<u32>(32u)), max(vec4<u32>(73127u, var_1.d, u_input.b.x, 0u), vec4<u32>(u_input.b.x, arg_0.d, 84707u, arg_0.d))))).xy;
    let var_3 = arg_3;
    return Struct_1(var_2 & min(arg_3.a, var_1.a), 4294967295u, arg_0.c | var_3.a.x, ~(~select(4294967295u, ~44703u, true)), ~firstTrailingBit(vec4<u32>(1u, var_3.b, arg_0.d, ~arg_3.d)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = vec2<i32>(firstTrailingBit(0i), arg_1.a.x);
    var var_1 = true;
    let var_2 = 523f;
    let var_3 = _wgslsmith_f_op_f32(-arg_0.x);
    var_1 = arg_2;
    return func_4(arg_1, _wgslsmith_mult_i32(arg_1.c, u_input.c), vec3<bool>(func_2(vec4<f32>(-482f, var_3, 397f, 344f), 1u, vec3<u32>(1u, u_input.b.x, 33916u), ~1u) > ~(~arg_1.d), !all(vec3<bool>(true, true, true)), false), Struct_1(var_0, arg_1.e.x, firstTrailingBit(countOneBits(firstTrailingBit(u_input.c))), 1u, vec4<u32>(u_input.b.x, u_input.b.x, max(4294967295u, 62888u), abs(arg_1.b ^ u_input.a.x))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1321f - -329f))), _wgslsmith_f_op_f32(f32(-1f) * -764f));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -977f), var_0));
    global1 = array<Struct_2, 28>();
    let var_2 = select(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0.b, ~1u), ~_wgslsmith_add_u32(67218u, func_1(vec2<f32>(var_1, var_1), arg_0, false).d)), abs(abs(~(~arg_0.e.x))), arg_1);
    let var_3 = Struct_1(arg_0.a, 27905u, ~3383i, _wgslsmith_sub_u32(u_input.a.x, arg_2) | 1758u, func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1931f * -1308f) + -679f), var_1), Struct_1(arg_0.a, 98127u, arg_0.c, _wgslsmith_dot_vec4_u32(~arg_0.e, arg_0.e), ~vec4<u32>(4294967295u, arg_0.d, 32313u, u_input.b.x)), true).e);
    return vec4<bool>(all(!vec3<bool>(arg_1, arg_1, select(arg_1, false, arg_1))), all(!select(!vec4<bool>(false, true, arg_1, true), vec4<bool>(true, true, true, true), arg_1)), arg_1, all(vec2<bool>(all(vec4<bool>(true, false, arg_1, arg_1)), arg_1 | !arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_2(any(func_5(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-230f, 975f)), Struct_1(vec2<i32>(u_input.c, -1i), u_input.a.x, u_input.c, 0u, vec4<u32>(u_input.b.x, 1u, u_input.b.x, 2344u)), true), false, abs(23210u))), -(~850i));
    var var_2 = _wgslsmith_f_op_f32(612f + _wgslsmith_f_op_f32(f32(-1f) * -435f));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(426f, 1654f))))));
    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(156f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-174f)) - _wgslsmith_f_op_f32(f32(-1f) * -319f)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(50520u)), _wgslsmith_f_op_f32(f32(-1f) * -1136f), reverseBits(-2147483647i), -2147483647i);
}

