struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<bool>, 18>;

var<private> global2: array<i32, 27>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<bool>) -> f32 {
    var var_0 = arg_1;
    var_0 = Struct_3(~2147483647i, 70140u, _wgslsmith_clamp_u32(reverseBits(var_0.d), _wgslsmith_mod_u32(~4294967295u, 1u), max(~arg_1.b, 0u)), 29823u, Struct_2(Struct_1(~(var_0.e.a.d >> (arg_1.d % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1.c, 10938u), u_input.b.www) << (11807u % 32u), !any(vec4<bool>(var_0.e.a.c, false, arg_1.e.a.c, false)), firstTrailingBit(-arg_1.a), _wgslsmith_div_u32(~50533u, u_input.b.x & var_0.b)), vec3<f32>(-1070f, -152f, _wgslsmith_f_op_f32(trunc(-1950f)))));
    global0 = arg_1.a;
    var_0 = arg_1;
    let var_1 = arg_1;
    return 253f;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-277f)) * -923f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(304f - 1060f) + _wgslsmith_f_op_f32(-271f - -1940f))), _wgslsmith_f_op_f32(func_3(vec4<bool>(all(vec3<bool>(false, false, false)), true, any(vec3<bool>(false, false, false)), true), Struct_3(-2147483647i, ~1u, 92640u, abs(u_input.b.x), Struct_2(Struct_1(-27833i, u_input.c, false, 0i, 1u), vec3<f32>(828f, -582f, -909f))), vec2<bool>(true, true)))));
    let var_1 = vec3<i32>(global2[_wgslsmith_index_u32(u_input.c, 27u)], _wgslsmith_div_i32(12391i, -u_input.e), _wgslsmith_mod_i32(-4204i, ~(~global2[_wgslsmith_index_u32(~0u, 27u)])));
    let var_2 = u_input.c;
    let var_3 = _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(abs(select(-vec3<i32>(-12323i, u_input.d.x, 35709i), var_1, vec3<bool>(true, true, true))), _wgslsmith_div_vec3_i32(reverseBits(u_input.d.wxw | vec3<i32>(var_1.x, global2[_wgslsmith_index_u32(u_input.c, 27u)], -28348i)), var_1)), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.d.x, var_1.x, _wgslsmith_div_i32(0i, var_1.x)), ~(~(vec3<i32>(global2[_wgslsmith_index_u32(5013u, 27u)], u_input.a.x, 2147483647i) | u_input.d.www))), countOneBits(~(countOneBits(vec3<i32>(var_1.x, var_1.x, u_input.d.x)) ^ vec3<i32>(u_input.a.x, 28162i, 38257i))));
    let var_4 = 1u == ((var_2 & countOneBits(9175u)) << ((1u << (var_2 % 32u)) % 32u));
    return _wgslsmith_sub_i32(-60439i, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2, 54318u), 27u)]);
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_div_i32(max(global2[_wgslsmith_index_u32(~1u ^ _wgslsmith_mod_u32(u_input.b.x, u_input.c), 27u)] | ~(~global2[_wgslsmith_index_u32(u_input.b.x, 27u)]), max(func_2(), 0i)), 49711i);
    let var_0 = select(vec2<bool>(countOneBits(8098i) > (select(0i, 2147483647i, false) | -65i), false), vec2<bool>(false, !(!any(vec4<bool>(false, true, true, false)))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), false), vec2<bool>(true, !any(vec3<bool>(false, false, false))), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), true)));
    let var_1 = ~u_input.d;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2314f, 1356f), vec2<f32>(-601f, 1146f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-256f, 229f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(236f, -527f)), _wgslsmith_f_op_f32(sign(1197f)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2457f, -1073f) * vec2<f32>(-932f, -744f)))))));
    global1 = array<vec4<bool>, 18>();
    return Struct_1(-(~(func_2() | 43080i)), 1u, all(global1[_wgslsmith_index_u32(~u_input.c, 18u)]), 0i, countOneBits(~min(u_input.b.x, reverseBits(u_input.b.x))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: vec2<bool>) -> StorageBuffer {
    var var_0 = arg_0.e.a.b;
    var_0 = ~abs(~abs(12785u) << (~_wgslsmith_mod_u32(u_input.c, u_input.b.x) % 32u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.b.x) + arg_0.e.b.x);
    let var_2 = Struct_3(~u_input.d.x, 0u, u_input.c, ~arg_0.e.a.b, arg_0.e);
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(func_1().a, ~(-15896i) ^ var_2.a), arg_0.a);
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2000f, _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(max(arg_0.e.b.x, var_1)))))), ~_wgslsmith_mod_u32(countOneBits(arg_0.b | 46767u), var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 27>();
    let x = u_input.a;
    s_output = func_4(Struct_3(_wgslsmith_div_i32(u_input.e, _wgslsmith_dot_vec3_i32(-vec3<i32>(1732i, u_input.e, u_input.e), min(u_input.d.yyy, u_input.a))), _wgslsmith_add_u32(15458u, 44402u), firstTrailingBit(_wgslsmith_mod_u32(4294967295u, firstLeadingBit(59026u))), 4294967295u, Struct_2(func_1(), vec3<f32>(1f, 1f, 1f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(300f * 2091f), _wgslsmith_f_op_f32(-682f - 1139f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1743f), _wgslsmith_f_op_f32(trunc(219f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1320f + _wgslsmith_f_op_f32(-607f - -1069f)), -900f)), 1464f, 422f), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], global1[_wgslsmith_index_u32(u_input.c >> (18262u % 32u), 18u)], u_input.b.x <= 0u), u_input.c < ~u_input.c), global1[_wgslsmith_index_u32((54343u >> ((1u ^ u_input.b.x) % 32u)) ^ 5136u, 18u)], !(!global1[_wgslsmith_index_u32(abs(u_input.b.x), 18u)])), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(false, false))));
}

