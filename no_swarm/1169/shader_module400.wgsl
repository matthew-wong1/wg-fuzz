struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(2147483647i, 22043i, 0i, 1i), vec4<i32>(17715i, 22702i, -11197i, 0i), vec4<i32>(0i, -25615i, 0i, -12083i), vec4<i32>(0i, 6003i, -47439i, 0i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 21786i), vec4<i32>(-8341i, 2147483647i, 61840i, 1303i), vec4<i32>(i32(-2147483648), 1i, -1i, -17431i), vec4<i32>(0i, -1i, 0i, -34491i), vec4<i32>(-10065i, -13063i, -20901i, -24336i), vec4<i32>(-1i, 3801i, 2147483647i, -4349i), vec4<i32>(1i, -3572i, i32(-2147483648), 2147483647i), vec4<i32>(-11651i, -57701i, -44784i, 55361i), vec4<i32>(0i, i32(-2147483648), 0i, 1i), vec4<i32>(-30448i, -1i, -41185i, -1i), vec4<i32>(-1i, -25810i, -23332i, 0i), vec4<i32>(-48070i, 4316i, 1793i, 1i), vec4<i32>(2147483647i, 1i, 25704i, 27251i), vec4<i32>(1i, -1i, -39110i, 1238i), vec4<i32>(1i, 3550i, -5931i, -1i), vec4<i32>(12548i, 25309i, 2147483647i, -17169i), vec4<i32>(0i, 1i, -43538i, 32179i), vec4<i32>(0i, -31011i, -1i, -7417i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(-64961i, -1i, 2147483647i, -1947i), vec4<i32>(i32(-2147483648), -1i, -4781i, 10250i), vec4<i32>(-26729i, -1i, -15303i, 21310i), vec4<i32>(-1i, -1i, 2147483647i, 39675i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    let var_0 = Struct_3(Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) * -2499f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -277f)))), 0u, vec2<u32>(81480u, _wgslsmith_mult_u32(u_input.a.x, u_input.c)), u_input.d.yy), 188f, u_input.d.x, _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.d, ~vec4<u32>(1u, u_input.a.x, u_input.d.x, 6945u)), ~vec4<u32>(u_input.c, 1u, u_input.d.x, ~1u)), Struct_2(Struct_1(vec3<bool>(any(vec4<bool>(false, true, false, false)), any(vec3<bool>(true, false, false)), all(vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(f32(-1f) * -315f), ~2972u, vec2<u32>(~u_input.d.x, u_input.a.x), vec2<u32>(4294967295u, ~1u)), ~(_wgslsmith_sub_u32(u_input.c, 4294967295u) << ((u_input.d.x << (24383u % 32u)) % 32u)), -1000f, arg_0.x, ~1i));
    let var_1 = 0i;
    global0 = array<vec4<i32>, 27>();
    let var_2 = select(var_0.a.a.x, select(any(var_0.a.a.xy), select(true, u_input.d.x < 8765u, var_1 <= 1i) & var_0.a.a.x, !var_0.e.a.a.x), !var_0.e.a.a.x);
    var var_3 = ~_wgslsmith_add_i32(-(i32(-1i) * -21706i), ~(~_wgslsmith_mod_i32(-30934i, 2147483647i)));
    return ~var_0.e.e;
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    global0 = array<vec4<i32>, 27>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -945f), 800f))) - 707f);
    var var_1 = max(17270i, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(342f, -648f, var_0))));
    var var_2 = any(select(!vec2<bool>(u_input.b <= 0i, false), vec2<bool>(true, true), any(vec2<bool>(true, true))));
    var var_3 = Struct_3(Struct_1(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(false, false, false), any(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), true), 70728i != -u_input.b), 1000f, abs(21547u), abs(select(~vec2<u32>(arg_0.x, arg_0.x), ~arg_0.yy, any(vec3<bool>(false, false, false)))), _wgslsmith_add_vec2_u32(~select(vec2<u32>(arg_0.x, u_input.a.x), arg_0.xx, vec2<bool>(false, false)), ~select(arg_0.zz, arg_0.wz, true))), var_0, ~21175u << (~(~countOneBits(arg_0.x)) % 32u), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 11204u, u_input.d.x) >> (u_input.a.zyw % vec3<u32>(32u)), countOneBits(vec3<u32>(arg_0.x, u_input.c, 4294967295u))), countOneBits(_wgslsmith_sub_u32(64936u, u_input.a.x)), 0u, arg_0.x), Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), _wgslsmith_f_op_f32(-var_0), ~(~u_input.c), ~_wgslsmith_mult_vec2_u32(u_input.d.zz, vec2<u32>(u_input.a.x, u_input.d.x)), ~arg_0.xx), 4220u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0)))), -981f, -71014i));
    return var_3.e;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global0 = array<vec4<i32>, 27>();
    let var_0 = !select(vec2<bool>(any(!vec4<bool>(false, arg_0.a.a.x, false, arg_0.a.a.x)), func_2(~u_input.d).a.a.x), vec2<bool>(arg_0.a.a.x, true), arg_0.a.a.zz);
    var var_1 = arg_0.b;
    let var_2 = func_2(~(~max(abs(u_input.d), vec4<u32>(u_input.a.x, u_input.d.x, arg_0.b, 10952u)))).a;
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.d, -2018f, arg_0.c))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.b, var_2.b, arg_0.d)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, -180f, -1806f))))));
    return func_2(~(~u_input.d));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> Struct_2 {
    let var_0 = max(~(~(~(~u_input.c))), firstTrailingBit(27246u));
    global0 = array<vec4<i32>, 27>();
    var var_1 = func_4(func_2(vec4<u32>(10379u, ~var_0, 49908u, 1398u)));
    let var_2 = func_4(Struct_2(var_1.a, _wgslsmith_mult_u32(9401u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_1.a.d, vec2<u32>(48591u, 6049u)), ~var_0)), var_1.d, var_1.c, -55939i)).a;
    global0 = array<vec4<i32>, 27>();
    return func_4(func_4(func_2(u_input.a)));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_1 {
    return func_2(min(~u_input.a, abs(abs(vec4<u32>(1u, u_input.c, 1u, u_input.a.x)))) ^ ~vec4<u32>(~0u, func_1(vec3<i32>(u_input.b, 25004i, 0i), false).b, 36054u | arg_1.b, 0u)).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<u32>(28338u, u_input.c, ~40474u, abs(1u)), func_1(select(vec3<i32>(1i, 50412i, ~(-2147483647i)), vec3<i32>(_wgslsmith_mod_i32(u_input.b, 0i), 1i, 1i), true), true));
    let var_1 = Struct_3(func_2(abs(min(u_input.a, vec4<u32>(var_0.e.x, u_input.a.x, 16690u, u_input.a.x) & vec4<u32>(1u, u_input.a.x, u_input.c, 4294967295u)))).a, var_0.b, u_input.a.x, countOneBits(vec4<u32>(0u, ~82642u, ~31378u, 0u)) >> (abs(u_input.d) % vec4<u32>(32u)), Struct_2(func_5(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, 0u, u_input.a.x), vec4<u32>(32477u, u_input.d.x, u_input.c, 1u)), ~var_0.e.x, var_0.e.x, func_2(u_input.d).b), func_1(countOneBits(vec3<i32>(u_input.b, -70012i, u_input.b)), !var_0.a.x)), ~61714u, -112f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-var_0.b))), -1i));
    global0 = array<vec4<i32>, 27>();
    let var_2 = any(vec4<bool>(false, any(var_0.a.xz), false, !var_0.a.x));
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, ~67749u, ~var_1.d.x), vec3<u32>(4294967295u, ~func_1(-vec3<i32>(var_1.e.e, 0i, -1i), true).a.e.x, min(~func_5(u_input.d, Struct_2(var_1.a, var_1.d.x, var_1.b, 737f, var_1.e.e)).e.x, ~_wgslsmith_dot_vec4_u32(u_input.d, var_1.d))));
    var_3 = 1u;
    let var_4 = var_0.a;
    var var_5 = Struct_2(var_0, max(4294967295u, max(61726u << (abs(var_1.d.x) % 32u), 0u & var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(570f, -792f) * var_0.b) * var_1.e.d), _wgslsmith_div_f32(func_1(-vec3<i32>(u_input.b, 2147483647i, -41092i) ^ -vec3<i32>(var_1.e.e, 1873i, 49546i), var_4.x).d, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1085f), _wgslsmith_f_op_f32(var_0.b * 1339f))))), ~(~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_1.b, i32(-1i) * -1i, var_5.c, ~0i);
}

