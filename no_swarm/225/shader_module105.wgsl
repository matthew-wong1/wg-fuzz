struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec3<u32>) -> u32 {
    var var_0 = abs(0u);
    var_0 = _wgslsmith_sub_u32(~1u, _wgslsmith_sub_u32(min(_wgslsmith_mod_u32(arg_3.x, _wgslsmith_div_u32(u_input.a, u_input.a)), arg_0.b.d), _wgslsmith_add_u32(104145u, u_input.a)));
    let var_1 = _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1.b.x, max(arg_2.a.b.x, reverseBits(arg_0.a.c))), vec2<i32>(32685i, arg_2.a.b.x));
    var var_2 = Struct_4(arg_1, Struct_1(max(u_input.a, ~(~arg_3.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1675f)), _wgslsmith_f_op_f32(arg_1.a + -1248f)) - _wgslsmith_f_op_vec2_f32(arg_0.b.c.yx * _wgslsmith_f_op_vec2_f32(select(arg_2.b.c.xx, arg_2.b.c.zz, vec2<bool>(true, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.c)), _wgslsmith_clamp_u32(firstLeadingBit(4294967295u), arg_0.b.a, _wgslsmith_div_u32(~0u, ~arg_2.b.d))), Struct_3(_wgslsmith_f_op_f32(1167f * -109f), -vec2<i32>(firstLeadingBit(arg_2.a.c), _wgslsmith_add_i32(arg_1.c, arg_2.a.c)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_1, -40376i) >> (arg_3 % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.b.x, arg_1.b.x, 37383i), vec3<i32>(arg_2.c.c, arg_1.b.x, arg_0.a.c))), -3890i)));
    let var_3 = ~countOneBits(vec3<u32>(4294967295u, 1u, ~4294967295u));
    return min(arg_0.b.a, _wgslsmith_dot_vec3_u32(firstTrailingBit(~var_3), ~(~var_3) | var_3));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_2(1i, ~118969u);
    var var_1 = ~_wgslsmith_mod_i32(abs(_wgslsmith_sub_i32(abs(var_0.a), var_0.a)), -(~(~var_0.a)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2116f))))), vec2<i32>(reverseBits(1i & _wgslsmith_dot_vec4_i32(vec4<i32>(16450i, 1i, 9253i, 19694i), vec4<i32>(var_0.a, var_0.a, -6387i, -1i))), -21932i), _wgslsmith_add_i32(-15022i, -44086i));
    var_0 = Struct_2(var_2.b.x, var_0.b);
    let var_3 = min(vec4<u32>(abs(4294967295u) ^ ~(~var_0.b), u_input.a & 50015u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.b, 61879u, 6951u) << (vec4<u32>(1u, 1u, u_input.a, 0u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 91895u, 1u, 2134u), vec4<u32>(4294967295u, var_0.b, u_input.a, 40506u)) << (countOneBits(vec4<u32>(u_input.a, 1u, 23177u, var_0.b)) % vec4<u32>(32u)))), (vec4<u32>(func_3(Struct_4(Struct_3(var_2.a, var_2.b, var_2.b.x), Struct_1(5808u, vec2<f32>(var_2.a, -1369f), vec3<f32>(-232f, var_2.a, var_2.a), 1u), Struct_3(484f, vec2<i32>(-2147483647i, -3446i), 51394i)), var_2, Struct_4(var_2, Struct_1(1u, vec2<f32>(var_2.a, -586f), vec3<f32>(1000f, var_2.a, var_2.a), u_input.a), var_2), vec3<u32>(54702u, u_input.a, 5099u)), 57929u, 1u, u_input.a | var_0.b) & abs(vec4<u32>(u_input.a, 1u, var_0.b, 1u))) >> (_wgslsmith_mult_vec4_u32(abs(abs(vec4<u32>(17854u, var_0.b, u_input.a, u_input.a))), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a, 26551u, 47508u, 36135u)), vec4<u32>(84715u, 0u, var_0.b, var_0.b))) % vec4<u32>(32u)));
    return Struct_4(var_2, Struct_1(63070u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(695f, 395f) * vec2<f32>(var_2.a, var_2.a)), vec2<f32>(509f, 1718f), all(vec2<bool>(true, false)))) * vec2<f32>(_wgslsmith_f_op_f32(-var_2.a), var_2.a)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-373f + 1247f), var_2.a, 1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1773f, var_2.a, 1138f), vec3<f32>(var_2.a, -919f, var_2.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2.a, var_2.a))))), 1u), Struct_3(378f, -var_2.b, _wgslsmith_clamp_i32(var_2.b.x, -2147483647i, _wgslsmith_mod_i32(0i << (u_input.a % 32u), _wgslsmith_clamp_i32(1i, 35385i, -2147483647i)))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = func_2();
    var_0 = func_2();
    var_0 = Struct_4(var_0.c, func_2().b, func_2().a);
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(555f + var_0.c.a) - func_2().a.a)), var_0.a.b, var_0.c.c), var_0.b, Struct_3(_wgslsmith_f_op_f32(round(var_0.a.a)), countOneBits(vec2<i32>(-1i, var_0.c.b.x) & var_0.a.b) & -abs(vec2<i32>(var_0.c.b.x, var_0.c.b.x)), _wgslsmith_add_i32(var_0.a.c, var_0.a.b.x) >> (~(~4294967295u) % 32u)));
    var var_2 = var_0.a.c;
    return Struct_2(firstTrailingBit(abs(-31397i)), 0u);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2, arg_3: i32) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(1021f + arg_1.a)), _wgslsmith_f_op_f32(-arg_1.a)))), ~arg_1.b, 51291i);
    let var_1 = abs(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -31653i), min(vec2<i32>(36566i, arg_1.c), var_0.b)), arg_2.a, reverseBits(-16725i)), ~vec3<i32>(countOneBits(arg_2.a), var_0.c, -32033i)));
    let var_2 = Struct_1(~func_1(-682f).b, vec2<f32>(-1454f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 907f, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a, -894f, var_0.a)))))), u_input.a);
    var_0 = arg_1;
    var var_3 = var_2.b;
    return select(max(abs(vec4<u32>(select(27230u, arg_2.b, true), min(var_2.d, var_2.d), 70551u, _wgslsmith_dot_vec4_u32(vec4<u32>(79875u, arg_0, 4294967295u, arg_0), vec4<u32>(1u, arg_0, arg_0, arg_0)))), countOneBits(vec4<u32>(35355u, arg_0, var_2.d, u_input.a)) << (vec4<u32>(select(u_input.a, 4294967295u, false), ~var_2.d, var_2.a ^ 4294967295u, _wgslsmith_clamp_u32(var_2.a, u_input.a, 83086u)) % vec4<u32>(32u))), (vec4<u32>(~31937u, func_3(Struct_4(Struct_3(var_3.x, vec2<i32>(arg_1.b.x, -30832i), -3371i), var_2, arg_1), arg_1, Struct_4(arg_1, Struct_1(var_2.d, vec2<f32>(var_0.a, -743f), vec3<f32>(-481f, var_2.b.x, var_0.a), 44630u), Struct_3(var_3.x, arg_1.b, 0i)), vec3<u32>(0u, arg_2.b, 6443u)), u_input.a << (4294967295u % 32u), u_input.a) & ~vec4<u32>(var_2.a, arg_2.b, 26895u, u_input.a)) | ~(~abs(vec4<u32>(arg_2.b, arg_2.b, 12596u, arg_2.b))), abs(_wgslsmith_clamp_i32(-var_0.c, _wgslsmith_div_i32(arg_2.a, var_0.b.x), _wgslsmith_add_i32(14269i, arg_1.c))) < _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -10382i), func_2().a.b));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = func_2().a;
    let var_1 = arg_0.xz;
    let var_2 = vec2<bool>(!any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_1.c.yy);
    var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_1.b + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(645f)), _wgslsmith_f_op_f32(var_3.x * var_0.a))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-202f, var_0.a) + arg_1.c.zz) - vec2<f32>(516f, _wgslsmith_f_op_f32(step(arg_1.c.x, _wgslsmith_f_op_f32(-581f * -1098f))))), all(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(var_2.x, var_2.x, var_2.x, false)), vec4<bool>(false, var_2.x, var_2.x, var_2.x), var_2.x))));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(func_5(_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 26678u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), func_4(u_input.a, Struct_3(-486f, vec2<i32>(5929i, 1i), -29739i), func_1(723f), _wgslsmith_mult_i32(37218i, 41804i))), Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-611f, -776f), vec2<f32>(335f, 333f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(153f, 1382f), vec2<f32>(235f, 819f), vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(256f, 477f, 2427f) + vec3<f32>(941f, -959f, -1000f)), abs(93791u))), func_1(_wgslsmith_f_op_f32(-401f * 1075f)).b);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1008f, 545f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(min(283f, -760f))), vec2<f32>(690f, _wgslsmith_f_op_f32(350f * -804f)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1051f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -657f, true))))));
    var_1 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(step(-913f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2().b.b.x) + -451f))));
    var var_2 = var_1.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(965f * -455f))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<i32>(-1475i, ~1i, 33729i), ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -2147483647i, -1i) << (vec3<u32>(var_0.x, 26806u, var_0.x) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(-1i, 2147483647i, 0i)))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_sub_vec2_i32(select(reverseBits(reverseBits(vec2<i32>(0i, 0i))), firstTrailingBit(~vec2<i32>(-11994i, 2147483647i)), any(vec4<bool>(true, true, true, true))), vec2<i32>(~44747i, 1i) >> (vec2<u32>(u_input.a, 18708u) % vec2<u32>(32u))));
}

