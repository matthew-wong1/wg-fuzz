struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 27>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-151f, -485f, 1241f));

var<private> global2: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(-15542i, 431i), vec2<i32>(-8070i, -10944i), vec2<i32>(-1i, 17786i), vec2<i32>(-40832i, 2280i), vec2<i32>(1i, -15247i), vec2<i32>(8222i, 2147483647i), vec2<i32>(36386i, 43209i), vec2<i32>(1i, 23312i), vec2<i32>(-11971i, 33497i), vec2<i32>(0i, 56262i), vec2<i32>(0i, -19811i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(29176i, -6385i), vec2<i32>(0i, -37042i), vec2<i32>(0i, 2147483647i), vec2<i32>(1i, -21666i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(8765i, 2147483647i), vec2<i32>(-2660i, -33443i), vec2<i32>(-26317i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 38578i), vec2<i32>(1i, -61248i), vec2<i32>(23299i, 0i), vec2<i32>(i32(-2147483648), 40137i), vec2<i32>(1i, -1089i), vec2<i32>(-3711i, -4796i));

var<private> global3: f32;

var<private> global4: array<vec4<i32>, 6>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    global3 = global1.a.x;
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-153f, _wgslsmith_f_op_f32(global1.a.x - -1000f), false)))), -638f);
    let var_2 = Struct_3(vec3<bool>(false, !(u_input.c <= _wgslsmith_clamp_i32(var_0, arg_0.x, u_input.c)), true), u_input.a);
    var var_3 = i32(-1i) * -var_0;
    return 27883u;
}

fn func_2() -> i32 {
    var var_0 = Struct_3(vec3<bool>(func_3(select(vec3<i32>(1i, u_input.b.x, -21894i), vec3<i32>(u_input.c, u_input.c, -15383i), vec3<bool>(true, false, true))) != firstLeadingBit(firstTrailingBit(12484u)), true, true), 17807u);
    var var_1 = -1i;
    global2 = array<vec2<i32>, 26>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -584f) - _wgslsmith_f_op_f32(floor(-1458f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1618f)) * _wgslsmith_f_op_f32(global1.a.x - 1000f)))));
    let var_3 = 13976u;
    return -1i;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_5 {
    var var_0 = _wgslsmith_mod_vec4_u32(abs(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(arg_1.c.x, 19711u, u_input.a, u_input.a)), arg_1.c)), _wgslsmith_div_vec4_u32(arg_1.c, _wgslsmith_mult_vec4_u32(firstLeadingBit(max(arg_1.c, vec4<u32>(arg_1.c.x, arg_1.c.x, u_input.a, 51358u))), arg_1.c)));
    var var_1 = vec2<u32>(u_input.a, 41417u);
    var var_2 = arg_1;
    var var_3 = 166f;
    let var_4 = select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), var_1.x <= 2393u), !(-26903i < arg_1.b.x)), select(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), false)), !vec2<bool>(all(vec3<bool>(true, true, false)), all(vec3<bool>(false, true, true))), vec2<bool>(true, all(vec4<bool>(false, true, true, false)))), true);
    return global0[_wgslsmith_index_u32(4294967295u, 27u)];
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = func_4(vec3<i32>(func_2(), arg_0.b.x, max(-(~arg_0.b.x), arg_0.b.x)), arg_0);
    var var_1 = vec2<f32>(-1509f, arg_0.a.x);
    let var_2 = _wgslsmith_mult_i32(~arg_0.b.x ^ abs(i32(-1i) * -39086i), u_input.b.x) >> (max(_wgslsmith_sub_u32(49292u | _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 0u, var_0.a.c.x, var_0.a.c.x), vec4<u32>(arg_0.c.x, 4294967295u, 4294967295u, var_0.b.x)), min(var_0.b.x, arg_0.c.x << (6045u % 32u))), (_wgslsmith_div_u32(u_input.a, 42320u) | _wgslsmith_div_u32(arg_0.c.x, 0u)) << (_wgslsmith_div_u32(~u_input.a, 0u) % 32u)) % 32u);
    var var_3 = ~vec4<u32>(~reverseBits(var_0.b.x), select(~(~69402u), arg_0.c.x, var_0.d.x), ~1u, reverseBits(1u));
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-490f + _wgslsmith_f_op_f32(max(-1025f, global1.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -293f))), vec3<i32>(var_2, arg_0.b.x, var_2), ~firstTrailingBit(~var_0.a.c));
    return func_4(-(vec3<i32>(_wgslsmith_clamp_i32(9513i, var_2, -28946i), i32(-1i) * -1990i, 17264i) | vec3<i32>(arg_0.b.x ^ var_0.a.b.x, u_input.b.x, func_2())), var_0.a).d.xy;
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<u32>) -> u32 {
    var var_0 = Struct_3(vec3<bool>(arg_0, arg_1.x, arg_0 & true), min(_wgslsmith_sub_u32(~23876u, ~(~12191u)), _wgslsmith_add_u32(1u >> ((u_input.a << (arg_2.x % 32u)) % 32u), ~(~u_input.a))));
    global2 = array<vec2<i32>, 26>();
    global2 = array<vec2<i32>, 26>();
    var var_1 = _wgslsmith_f_op_f32(global1.a.x + 1181f);
    var var_2 = countOneBits(reverseBits(~_wgslsmith_add_u32(~9024u, abs(u_input.a))));
    return ~(u_input.a ^ max(max(1u << (0u % 32u), u_input.a), u_input.a));
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_5) -> Struct_4 {
    global2 = array<vec2<i32>, 26>();
    global4 = array<vec4<i32>, 6>();
    global3 = -1404f;
    let var_0 = arg_3.d.x;
    let var_1 = Struct_3(arg_3.d, arg_2.x);
    return Struct_4(abs(abs(vec3<i32>(arg_3.a.b.x, arg_3.a.b.x, -2147483647i))) & ~(_wgslsmith_sub_vec3_i32(arg_3.a.b, arg_3.a.b) & _wgslsmith_add_vec3_i32(arg_3.a.b, arg_3.a.b)), ~arg_2.yww);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 27>();
    let var_0 = func_6(_wgslsmith_clamp_u32(select(34110u, u_input.a | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(3195u, u_input.a)), true), 4294967295u, ~countOneBits(56175u << (u_input.a % 32u))), _wgslsmith_f_op_f32(-795f * 160f), vec4<u32>(countOneBits(u_input.a), u_input.a, func_5(true, func_1(Struct_2(vec2<f32>(-1631f, 1101f), vec3<i32>(35156i, u_input.b.x, -11688i), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))), _wgslsmith_mod_vec2_u32(vec2<u32>(52191u, 43108u), ~vec2<u32>(u_input.a, u_input.a))), u_input.a), func_4(~(~vec3<i32>(0i, u_input.b.x, u_input.c)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a.yx + vec2<f32>(-1559f, 678f))), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-19063i, 22039i, u_input.b.x)), firstTrailingBit(vec3<i32>(u_input.b.x, -2147483647i, 1i))), max(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(6073u, u_input.a, 9191u, u_input.a)) | vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))));
    let var_1 = Struct_5(Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global1.a.x)) * global1.a.xx), _wgslsmith_div_vec2_f32(vec2<f32>(1333f, 2050f), _wgslsmith_div_vec2_f32(global1.a.zx, global1.a.xz)))), var_0.a, reverseBits(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 34746u, var_0.b.x), vec4<u32>(46249u, 4294967295u, 0u, 1u)), ~vec4<u32>(u_input.a, 58048u, var_0.b.x, 9245u)))), vec2<u32>(16426u, 4294967295u), _wgslsmith_f_op_vec3_f32(sign(global1.a)), vec3<bool>(any(vec2<bool>(true, true)), any(func_1(func_4(var_0.a, Struct_2(global1.a.yy, var_0.a, vec4<u32>(73317u, 1u, 0u, 155569u))).a)), true));
    let var_2 = select(vec4<bool>(var_1.d.x, all(!select(vec4<bool>(var_1.d.x, true, var_1.d.x, var_1.d.x), vec4<bool>(true, var_1.d.x, var_1.d.x, true), vec4<bool>(var_1.d.x, false, var_1.d.x, true))), true, !(var_1.d.x && false)), !vec4<bool>(all(!var_1.d), var_1.d.x, true, func_4(-vec3<i32>(-11526i, 6105i, u_input.c), Struct_2(global1.a.yy, vec3<i32>(var_1.a.b.x, var_1.a.b.x, u_input.b.x), vec4<u32>(var_1.b.x, var_1.a.c.x, 1u, u_input.a))).d.x), var_0.b.x <= _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(min(vec4<u32>(56394u, 39582u, var_0.b.x, u_input.a), var_1.a.c), ~var_1.a.c), firstTrailingBit(~vec4<u32>(u_input.a, var_1.b.x, var_0.b.x, u_input.a))));
    let var_3 = _wgslsmith_f_op_f32(var_1.a.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -591f)) + global1.a.x), var_1.c.x), _wgslsmith_add_i32(u_input.b.x, -_wgslsmith_div_i32(-var_1.a.b.x, -40526i)), -38789i, var_0.a.x, ~var_0.b);
}

