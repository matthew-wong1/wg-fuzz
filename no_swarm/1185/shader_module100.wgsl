struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true));

var<private> global1: f32 = 148f;

var<private> global2: f32;

var<private> global3: array<i32, 21>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: u32) -> bool {
    var var_0 = arg_1;
    return arg_1.c.d.c;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(reverseBits(-25237i), _wgslsmith_sub_i32(0i, -2147483647i), u_input.b, _wgslsmith_clamp_i32(-792i, -1i, 1i)), ~_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b, -1i, u_input.b, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, global3[_wgslsmith_index_u32(u_input.a, 21u)], -1i, -31356i), vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 21u)], u_input.b, 0i, 2147483647i)))), -_wgslsmith_dot_vec3_i32(-(~vec3<i32>(29616i, 57002i, 49854i)), firstLeadingBit(vec3<i32>(-8394i, -2147483647i, global3[_wgslsmith_index_u32(u_input.a, 21u)])) ^ (vec3<i32>(7643i, 0i, global3[_wgslsmith_index_u32(u_input.a, 21u)]) ^ vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(u_input.a, 21u)], u_input.b))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(188f, _wgslsmith_f_op_f32(f32(-1f) * -1688f))))) - arg_1.x), u_input.b, Struct_2(Struct_1(vec4<u32>(1u, u_input.a, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 47614u, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a))), u_input.b, !select(false, false, true), 1i), Struct_1(~min(vec4<u32>(17807u, 3118u, 59995u, u_input.a), vec4<u32>(25939u, u_input.a, u_input.a, 4294967295u)), -13118i, false, 32790i >> ((u_input.a & 56042u) % 32u)), Struct_1(~vec4<u32>(0u, 16730u, u_input.a, 1u), ~countOneBits(2147483647i), false, i32(-1i) * -u_input.b), Struct_1(~countOneBits(vec4<u32>(21767u, 0u, 56641u, 1u)), -48566i, false, ~global3[_wgslsmith_index_u32(u_input.a, 21u)]), max(~vec2<u32>(2681u, u_input.a), vec2<u32>(u_input.a, 31305u) >> (firstTrailingBit(vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u)))), abs(vec3<i32>(-43022i, 0i, u_input.b) & _wgslsmith_mod_vec3_i32(vec3<i32>(7530i, -2147483647i, global3[_wgslsmith_index_u32(u_input.a, 21u)]), vec3<i32>(16150i, -1i, -35471i))) ^ (-_wgslsmith_div_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 21u)], var_0, 0i), vec3<i32>(1i, var_0, global3[_wgslsmith_index_u32(u_input.a, 21u)])) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(54212u, u_input.a, 4294967295u), min(vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(0u, u_input.a, 1u))) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_div_u32(~firstTrailingBit(1u), 63152u), _wgslsmith_sub_u32(u_input.a, ~4294967295u) & (30565u | ~(~var_1.c.b.a.x)));
    let var_3 = var_1;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -668f) + -1000f) * -2260f), _wgslsmith_f_op_f32(round(var_1.a)));
    return abs(-4758i);
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-773f * 795f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -310f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1503f * 1593f) - _wgslsmith_f_op_f32(max(1543f, _wgslsmith_f_op_f32(round(1826f)))))));
    var var_1 = !(!(!(!select(vec3<bool>(arg_0, arg_1.c.c, arg_0), vec3<bool>(arg_0, arg_1.c.c, true), vec3<bool>(true, false, false)))));
    let var_2 = ~arg_1.e.a.x;
    var_1 = !(!(!(!vec3<bool>(arg_0, true, true))));
    var var_3 = !(!(!(true && any(vec2<bool>(false, true)))));
    return _wgslsmith_f_op_f32(min(264f, var_0.x));
}

fn func_1() -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(!(!(-18415i > global3[_wgslsmith_index_u32(u_input.a, 21u)])), Struct_4(Struct_1(vec4<u32>(44949u, 97757u, 1u, 4294967295u) << (vec4<u32>(4294967295u, 2849u, u_input.a, u_input.a) % vec4<u32>(32u)), 0i, func_2(vec4<bool>(true, true, true, true), Struct_3(1124f, u_input.b, Struct_2(Struct_1(vec4<u32>(u_input.a, u_input.a, 0u, 1u), global3[_wgslsmith_index_u32(u_input.a, 21u)], true, 0i), Struct_1(vec4<u32>(u_input.a, 11928u, u_input.a, u_input.a), global3[_wgslsmith_index_u32(u_input.a, 21u)], true, 0i), Struct_1(vec4<u32>(u_input.a, 0u, 77961u, 18780u), global3[_wgslsmith_index_u32(u_input.a, 21u)], false, 38419i), Struct_1(vec4<u32>(u_input.a, u_input.a, 1u, 22287u), 2147483647i, false, u_input.b), vec2<u32>(4294967295u, 25809u)), vec3<i32>(global3[_wgslsmith_index_u32(62690u, 21u)], 2147483647i, 2147483647i)), u_input.a), firstLeadingBit(-1i)), ~countOneBits(vec3<i32>(u_input.b, 54211i, u_input.b)), Struct_1(vec4<u32>(1u, 0u, u_input.a, 1u), _wgslsmith_div_i32(global3[_wgslsmith_index_u32(58109u, 21u)], -201i), global3[_wgslsmith_index_u32(4294967295u, 21u)] > -30821i, func_3(vec2<f32>(-1172f, 1142f), vec4<f32>(1651f, -1378f, -263f, -438f))), ~max(vec4<i32>(42568i, global3[_wgslsmith_index_u32(4294967295u, 21u)], 25023i, -2147483647i), vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 21u)], 1i, 39420i, u_input.b)), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 777u, u_input.a)), min(2147483647i, -2147483647i), true, global3[_wgslsmith_index_u32(u_input.a, 21u)])))), _wgslsmith_f_op_f32(f32(-1f) * -285f), all(select(vec4<bool>(select(false, true, true), u_input.b > u_input.b, all(vec3<bool>(false, false, true)), true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 64776u, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 7099u, 0u), vec3<u32>(0u, u_input.a, 23052u))), 18u)], vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 21u)] == u_input.b, false, true, true)))));
    var var_0 = Struct_4(Struct_1(~vec4<u32>(select(93927u, u_input.a, true), 1u, 1u, _wgslsmith_add_u32(0u, 8192u)), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-726f, 929f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-444f, 993f))), countOneBits(-19470i ^ countOneBits(global3[_wgslsmith_index_u32(u_input.a, 21u)]))), _wgslsmith_sub_vec3_i32(vec3<i32>(abs(11421i), ~(-2147483647i), 2147483647i) ^ vec3<i32>(func_3(vec2<f32>(532f, 1239f), vec4<f32>(1000f, 902f, 817f, 1000f)), -8027i, _wgslsmith_mod_i32(64609i, global3[_wgslsmith_index_u32(26254u, 21u)])), ~select(select(vec3<i32>(-13260i, u_input.b, u_input.b), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 21u)], 3873i, global3[_wgslsmith_index_u32(711u, 21u)]), true), -vec3<i32>(-2147483647i, 0i, global3[_wgslsmith_index_u32(u_input.a, 21u)]), false)), Struct_1(firstTrailingBit(vec4<u32>(u_input.a, 0u, ~1u, 46200u << (u_input.a % 32u))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, -u_input.b), 42502i), true, -7i), -vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -34285i, global3[_wgslsmith_index_u32(u_input.a, 21u)]), vec3<i32>(-11672i, -2147483647i, -48837i), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 21u)], global3[_wgslsmith_index_u32(u_input.a, 21u)], 8602i)), vec3<i32>(3007i, u_input.b, -38681i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(u_input.a, 21u)], global3[_wgslsmith_index_u32(64954u, 21u)]), vec2<i32>(global3[_wgslsmith_index_u32(4534u, 21u)], -10531i)), u_input.b), 1i | u_input.b), Struct_1(countOneBits(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)))), _wgslsmith_clamp_i32(~(~u_input.b), _wgslsmith_mod_i32(-1i, u_input.b), u_input.b), true, 30659i));
    var var_1 = true;
    var var_2 = Struct_4(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(~0u, var_0.a.a.x, min(32044u, 22210u), _wgslsmith_add_u32(38764u, u_input.a)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.e.a.x, var_0.a.a.x, u_input.a, var_0.c.a.x), var_0.c.a)), var_0.c.b, var_0.e.c, ~(~u_input.b)), firstTrailingBit(~(-(var_0.d.xxy | var_0.d.yww))), Struct_1(_wgslsmith_add_vec4_u32(var_0.e.a, vec4<u32>(~var_0.c.a.x, ~4294967295u, u_input.a, 4294967295u)), _wgslsmith_dot_vec4_i32(vec4<i32>(-29878i | var_0.c.b, u_input.b, var_0.c.d, _wgslsmith_sub_i32(-9108i, u_input.b)), var_0.d), any(select(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.c.a.x, 1u, 0u), 18u)], !vec4<bool>(var_0.e.c, var_0.c.c, var_0.a.c, true), global0[_wgslsmith_index_u32(var_0.c.a.x, 18u)])), abs(var_0.c.d)), abs(min(_wgslsmith_div_vec4_i32(var_0.d, _wgslsmith_sub_vec4_i32(var_0.d, var_0.d)), var_0.d | vec4<i32>(3023i, 0i, -2147483647i, 1i))), var_0.c);
    let var_3 = Struct_2(var_2.a, var_2.a, var_2.e, var_0.c, var_0.a.a.yy);
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-972f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -121f) - 822f)) - _wgslsmith_f_op_f32(ceil(-2537f))), -_wgslsmith_mod_i32(_wgslsmith_add_i32(1i, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 0u), 21u)]), ~3268i), var_3, countOneBits(var_0.d.xxw));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1303f);
    let var_0 = _wgslsmith_f_op_f32(sign(-687f));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, arg_3.a, 438f, var_0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(748f, arg_3.a, 2304f, -588f) + vec4<f32>(1768f, arg_1.a, -1100f, -1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-586f, arg_3.a, var_0, arg_3.a))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, 294f, arg_3.a, arg_1.a)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1402f, 1000f, var_0, 423f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, 267f, arg_3.a, arg_3.a)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.a, arg_1.a, arg_3.a, var_0)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-835f, arg_1.a, arg_3.a, var_0), vec4<f32>(var_1.x, 725f, var_1.x, arg_3.a), arg_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-933f, -241f, arg_1.a, var_1.x)), !vec4<bool>(false, arg_0, false, arg_2)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.a, arg_1.a, var_1.x, arg_1.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(703f, -1903f, 707f, -630f), vec4<f32>(arg_3.a, -1000f, var_0, -500f), global0[_wgslsmith_index_u32(13318u, 18u)])))))));
    global3 = array<i32, 21>();
    return Struct_1(vec4<u32>(~arg_3.c.a.a.x, ~firstTrailingBit(u_input.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.c.b.a.x, arg_1.c.c.a.x, arg_3.c.b.a.x), max(countOneBits(vec3<u32>(arg_1.c.b.a.x, 4294967295u, 64292u)), vec3<u32>(4294967295u, 4294967295u, 1u) ^ arg_3.c.d.a.yzx)), abs(~(arg_1.c.b.a.x >> (u_input.a % 32u)))), -(~(~firstTrailingBit(arg_1.c.c.b))), select(!all(global0[_wgslsmith_index_u32(arg_3.c.a.a.x, 18u)]), true, arg_1.c.b.c), _wgslsmith_sub_i32(arg_3.c.c.b, arg_3.b));
}

fn func_6(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = !(!select(!select(vec3<bool>(arg_0.c.c.c, arg_0.c.a.c, arg_0.c.a.c), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true || arg_0.c.b.c, false, true | arg_0.c.d.c), !(!vec3<bool>(arg_0.c.c.c, arg_0.c.a.c, arg_0.c.a.c))));
    var var_1 = func_5(all(vec3<bool>(arg_0.c.b.c, var_0.x, !all(var_0.yz))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-476f, arg_0.a)), func_5(false, arg_0, var_0.x, arg_0).d, func_1().c, ~firstTrailingBit(arg_0.d)), true, Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a))), arg_0.c.c.b, Struct_2(Struct_1(arg_0.c.b.a >> (arg_0.c.b.a % vec4<u32>(32u)), global3[_wgslsmith_index_u32(arg_0.c.e.x, 21u)], func_2(global0[_wgslsmith_index_u32(1u, 18u)], Struct_3(-1109f, 2147483647i, arg_0.c, arg_0.d), arg_0.c.a.a.x), _wgslsmith_dot_vec3_i32(arg_0.d, vec3<i32>(arg_0.b, u_input.b, arg_0.c.c.d))), arg_0.c.a, Struct_1(vec4<u32>(4294967295u, arg_0.c.c.a.x, 55671u, 1u), -46930i, true, 1i), func_5(arg_0.c.b.c != false, func_1(), true, Struct_3(arg_0.a, arg_0.d.x, arg_0.c, arg_0.d)), select(arg_0.c.a.a.yy | vec2<u32>(u_input.a, u_input.a), vec2<u32>(5645u, 0u) << (arg_0.c.b.a.ww % vec2<u32>(32u)), !vec2<bool>(false, var_0.x))), arg_0.d)).c;
    let var_2 = ~(vec2<u32>(~u_input.a, ~_wgslsmith_dot_vec4_u32(arg_0.c.a.a, vec4<u32>(arg_0.c.a.a.x, 0u, u_input.a, arg_0.c.e.x))) & min(~arg_0.c.b.a.ww | vec2<u32>(42855u, 0u), firstTrailingBit(arg_0.c.d.a.wy)));
    global2 = -1081f;
    let var_3 = !(!((_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -23531i, -2147483647i), vec3<i32>(u_input.b, -1i, 40846i)) >> (~9727u % 32u)) < reverseBits(min(global3[_wgslsmith_index_u32(var_2.x, 21u)], global3[_wgslsmith_index_u32(1u, 21u)]))));
    return StorageBuffer(arg_0.c.b.a.x, -1283f, _wgslsmith_mult_vec2_i32(-(arg_0.d.xy & vec2<i32>(10289i, -9443i)) >> (~arg_0.c.e % vec2<u32>(32u)), countOneBits(arg_0.d.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -349f;
    let x = u_input.a;
    s_output = func_6(Struct_3(2133f, u_input.b, Struct_2(Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 96108u), ~global3[_wgslsmith_index_u32(u_input.a, 21u)], true, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -9590i, 2147483647i), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 21u)], -1i, u_input.b))), Struct_1(vec4<u32>(36852u, u_input.a, u_input.a, u_input.a), -global3[_wgslsmith_index_u32(4294967295u, 21u)], true, reverseBits(u_input.b)), func_5(any(vec3<bool>(true, true, false)), func_1(), all(vec3<bool>(false, false, false)), func_1()), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(50126u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 1u, u_input.a)), global3[_wgslsmith_index_u32(0u, 21u)], any(global0[_wgslsmith_index_u32(u_input.a, 18u)]), _wgslsmith_add_i32(u_input.b, -1i)), ~vec2<u32>(u_input.a, 15016u)), ~(vec3<i32>(-1i) * -vec3<i32>(global3[_wgslsmith_index_u32(1u, 21u)], u_input.b, 2147483647i))));
}

