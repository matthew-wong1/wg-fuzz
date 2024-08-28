struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: u32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_5) -> i32 {
    global0 = -31803i;
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(f32(-1f) * -362f))), 1f)));
    global1 = ~arg_0.c;
    return abs(u_input.a.x);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 26514u, 50241u), vec4<u32>(54413u, 1u, 1u, 4294967295u))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(451f)), _wgslsmith_f_op_f32(f32(-1f) * -1323f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1171f))))), arg_0.x);
    global1 = ~countOneBits(47177u ^ _wgslsmith_add_u32(countOneBits(1u), ~var_0.a.a));
    var var_1 = Struct_4(Struct_1(~(firstTrailingBit(41616u) << ((var_0.a.a << (1u % 32u)) % 32u)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(448f, _wgslsmith_f_op_f32(-var_0.a.b)), _wgslsmith_f_op_f32(-var_0.a.b)))), ~_wgslsmith_mod_vec2_u32(abs(vec2<u32>(var_0.a.a, 54121u)), vec2<u32>(countOneBits(4294967295u), 1u)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(342f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-848f, -2116f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b, var_0.a.b) - vec2<f32>(-916f, 1942f)) + vec2<f32>(var_0.a.b, var_0.a.b))))));
    global1 = 1u;
    var var_2 = var_0;
    return Struct_1(1u, _wgslsmith_f_op_f32(step(var_2.a.b, -1000f)));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    let var_0 = Struct_5(vec3<bool>(false || any(vec3<bool>(true, true, true)), !(!(u_input.a.x < 4974i)), false), _wgslsmith_f_op_f32(select(arg_0.a.b, -1611f, true)), 77191u);
    global0 = abs(-u_input.a.x);
    let var_1 = Struct_3(Struct_2(arg_0.a, any(!var_0.a)), -(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b.x, 1i, -76778i, -42034i), vec4<i32>(2903i, u_input.b.x, 39188i, 2147483647i), ~vec4<i32>(1i, 28773i, u_input.a.x, -29441i))), Struct_1(var_0.c, _wgslsmith_f_op_f32(floor(arg_0.c.x))));
    let var_2 = var_1.b.yww;
    let var_3 = vec2<f32>(1f, _wgslsmith_f_op_f32(-arg_0.c.x));
    return Struct_3(var_1.a, vec4<i32>(-1i) * -var_1.b, func_3(!(!vec4<bool>(true, var_0.a.x, var_1.a.b, false)), !vec4<bool>(true, var_1.a.b, !var_1.a.b, true), u_input.b, max(vec2<i32>(_wgslsmith_div_i32(1i, var_1.b.x), ~var_2.x), countOneBits(vec2<i32>(1i, 1i)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = firstLeadingBit(~(~firstTrailingBit(vec3<u32>(arg_1.a.a, 57682u, arg_0.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -875f), 1043f));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1133f, var_1.x, _wgslsmith_f_op_f32(-var_1.x), var_1.x));
    var var_3 = func_4(Struct_4(func_3(select(!vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b), select(vec4<bool>(true, arg_1.b, arg_1.b, true), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, true), vec4<bool>(false, arg_1.b, arg_1.b, false)), true), !select(vec4<bool>(false, arg_1.b, arg_1.b, false), vec4<bool>(true, arg_1.b, arg_1.b, false), true), vec3<i32>(u_input.b.x | 4407i, u_input.b.x | 11564i, func_2(Struct_5(vec3<bool>(false, true, arg_1.b), arg_1.a.b, 0u))), ~_wgslsmith_div_vec2_i32(u_input.a.xy, u_input.b.zy)), vec2<u32>(arg_1.a.a, 0u), var_1));
    var var_4 = func_4(Struct_4(func_4(Struct_4(arg_1.a, vec2<u32>(arg_1.a.a, 20930u), var_2.ww)).a.a, countOneBits(vec2<u32>(arg_0.x, arg_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(118f, var_2.x), vec2<f32>(1265f, 1294f))) + _wgslsmith_f_op_vec2_f32(var_2.zy - var_1)))).a.a;
    return Struct_2(Struct_1(1u, 1135f), all(!(!select(vec2<bool>(true, true), vec2<bool>(false, var_3.a.b), vec2<bool>(false, true)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    let var_0 = false;
    global1 = ~abs(((67242u >> (arg_1.a % 32u)) & 49313u) & (~arg_1.a ^ arg_1.a));
    let var_1 = vec4<u32>(~arg_1.a, 65701u, 1u, max(~_wgslsmith_mod_u32(1u, arg_0.c.a), 1u));
    global0 = u_input.a.x;
    global0 = ~(reverseBits(arg_2) >> (func_4(Struct_4(arg_0.c, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u), var_1.wx), vec2<f32>(arg_0.c.b, -449f))).a.a.a % 32u));
    return func_4(Struct_4(func_4(Struct_4(Struct_1(var_1.x, arg_1.b), var_1.xy | vec2<u32>(var_1.x, var_1.x), vec2<f32>(arg_1.b, 1000f))).c, ~(vec2<u32>(var_1.x, 12950u) & _wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_1.a), var_1.zw)), vec2<f32>(_wgslsmith_f_op_f32(trunc(-296f)), -1066f)));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(Struct_1(func_4(Struct_4(Struct_1(arg_2.a.a.a, -616f), ~vec2<u32>(0u, arg_2.a.a.a), vec2<f32>(1f, 1f))).c.a, arg_2.a.a.b), select(arg_1, firstTrailingBit(~vec2<u32>(arg_2.c.a, arg_2.c.a)) ^ ~(~arg_1), !select(!vec2<bool>(true, arg_0.a.b), !vec2<bool>(false, arg_0.a.b), func_1(arg_1, arg_0.a).b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1871f, -112f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(138f, -675f))))));
    global0 = u_input.b.x;
    var var_1 = Struct_4(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(572u), arg_1.x, func_4(Struct_4(var_0.a, vec2<u32>(arg_1.x, var_0.a.a), vec2<f32>(-504f, var_0.a.b))).c.a, arg_2.a.a.a), vec4<u32>(53000u, func_1(vec2<u32>(3605u, arg_2.c.a), arg_0.a).a.a, arg_2.a.a.a, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.a.b) * _wgslsmith_f_op_f32(arg_2.a.a.b + arg_2.c.b)))), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, arg_2.a.a.a), vec2<u32>(arg_0.a.a.a, var_0.a.a)) >> (arg_0.c.a % 32u)), arg_1), vec2<f32>(arg_2.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a.a.b))))));
    global0 = -_wgslsmith_add_i32(-9833i, 28978i);
    global0 = ~_wgslsmith_add_i32(firstTrailingBit(arg_0.b.x), abs(u_input.a.x));
    return func_4(Struct_4(arg_2.a.a, firstLeadingBit(var_1.b), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_2.a.a.b, arg_2.c.b)))), func_5(arg_0, func_5(arg_0, Struct_1(var_1.a.a, -1509f), 0i).c, _wgslsmith_dot_vec2_i32(vec2<i32>(26043i, 2800i), arg_0.b.xz)).a.a.b))).c;
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    global1 = 12715u;
    global0 = abs(-(~u_input.b.x));
    global1 = arg_0;
    var var_0 = vec3<bool>(all(vec3<bool>(func_1(_wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_1.a), vec2<u32>(26563u, 17979u)), func_5(Struct_3(Struct_2(Struct_1(0u, arg_1.b), arg_2.b), u_input.a, Struct_1(arg_1.a, arg_2.a.b)), Struct_1(1u, arg_1.b), arg_3).a).b, any(vec3<bool>(true, arg_2.b, true)), false)), arg_2.b, arg_2.b);
    var var_1 = func_1(~firstTrailingBit(vec2<u32>(min(arg_0, arg_0), min(24639u, arg_1.a))), func_5(Struct_3(arg_2, ~_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a), Struct_1(1u, arg_2.a.b)), func_4(Struct_4(arg_2.a, ~vec2<u32>(arg_2.a.a, arg_0), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1705f, -337f))))).a.a, reverseBits(-1i)).a);
    return func_1(vec2<u32>(~arg_2.a.a, arg_2.a.a), Struct_2(func_6(Struct_3(func_1(vec2<u32>(30523u, 1u), arg_2), vec4<i32>(u_input.a.x, u_input.b.x, -23283i, 23741i), func_4(Struct_4(Struct_1(17646u, arg_2.a.b), vec2<u32>(arg_2.a.a, 4294967295u), vec2<f32>(-378f, 720f))).a.a), ~max(vec2<u32>(63095u, arg_0), vec2<u32>(1u, 45752u)), Struct_3(Struct_2(var_1.a, arg_2.b), u_input.a, Struct_1(495u, 976f))), func_5(Struct_3(func_1(vec2<u32>(arg_0, 40476u), Struct_2(arg_2.a, var_1.b)), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i), var_1.a), Struct_1(~7728u, var_1.a.b), ~36629i | (-2147483647i | arg_3)).a.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstTrailingBit(firstLeadingBit(max(31961u, 17359u))) | min(~1u, 41191u);
    global0 = -8137i;
    var var_0 = func_7(1u, func_6(func_5(Struct_3(func_1(vec2<u32>(3562u, 1u), Struct_2(Struct_1(4294967295u, 428f), true)), vec4<i32>(u_input.b.x, 2147483647i, u_input.a.x, -36517i), func_1(vec2<u32>(0u, 3441u), Struct_2(Struct_1(4294967295u, -457f), false)).a), Struct_1(15370u, _wgslsmith_f_op_f32(floor(-602f))), u_input.a.x), ~abs(~vec2<u32>(128148u, 60037u)), Struct_3(Struct_2(func_4(Struct_4(Struct_1(25718u, -737f), vec2<u32>(0u, 70981u), vec2<f32>(273f, 518f))).c, false), u_input.a, Struct_1(1u, func_3(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), u_input.b, vec2<i32>(1i, u_input.a.x)).b))), Struct_2(Struct_1(1u, _wgslsmith_f_op_f32(-1197f - -345f)), func_4(Struct_4(Struct_1(0u, 749f), vec2<u32>(6382u, 1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-889f, -477f)))).a.b), -20362i);
    let var_1 = Struct_4(var_0.a, ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.a, abs(var_0.a.a)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.a, var_0.a.a), vec2<u32>(4294967295u, 1u)), vec2<u32>(1u, 4294967295u), ~vec2<u32>(0u, 4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-304f, -1000f) - vec2<f32>(1573f, 144f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1434f, 877f) * vec2<f32>(var_0.a.b, var_0.a.b)))))));
    var var_2 = Struct_3(Struct_2(var_1.a, select(false, u_input.b.x == u_input.a.x, any(vec3<bool>(var_0.b, false, var_0.b)) && (24917i >= u_input.b.x))), _wgslsmith_mult_vec4_i32(~(-vec4<i32>(u_input.b.x, -52704i, 10107i, u_input.a.x)) >> (select(~vec4<u32>(31975u, var_0.a.a, var_1.b.x, var_1.b.x), ~vec4<u32>(var_0.a.a, 7750u, 67587u, 4294967295u), true) % vec4<u32>(32u)), -(u_input.a >> (vec4<u32>(var_1.b.x, 0u, 4294967295u, var_1.b.x) % vec4<u32>(32u)))), func_3(vec4<bool>(true, var_0.b, var_0.b, true), select(select(select(vec4<bool>(var_0.b, var_0.b, false, true), vec4<bool>(true, false, var_0.b, true), true), !vec4<bool>(false, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, true, var_0.b, false)), vec4<bool>(!var_0.b, var_0.b, true, true), var_0.b), vec3<i32>(func_5(Struct_3(Struct_2(Struct_1(var_0.a.a, -1029f), false), u_input.a, Struct_1(43148u, var_1.a.b)), var_0.a, u_input.a.x).b.x, u_input.b.x, u_input.a.x), abs(u_input.a.zz)));
    var_2 = Struct_3(Struct_2(var_1.a, ~var_1.a.a <= 8803u), u_input.a >> (~vec4<u32>(_wgslsmith_div_u32(var_1.b.x, var_1.a.a), countOneBits(54421u), ~39128u, _wgslsmith_add_u32(var_2.c.a, var_1.a.a)) % vec4<u32>(32u)), Struct_1(min(_wgslsmith_dot_vec2_u32(var_1.b, var_1.b), ~var_1.a.a), _wgslsmith_f_op_f32(-1075f + 742f)));
    var var_3 = func_5(func_4(Struct_4(var_1.a, max(firstTrailingBit(var_1.b), select(vec2<u32>(0u, var_1.b.x), var_1.b, vec2<bool>(var_0.b, false))), var_1.c)), var_2.a.a, -var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mod_i32(-48293i, -var_3.b.x) | func_5(func_5(Struct_3(var_3.a, vec4<i32>(1i, var_2.b.x, var_2.b.x, 1i), Struct_1(var_0.a.a, 2048f)), Struct_1(var_2.c.a, 267f), -38482i), Struct_1(57898u, 1213f), ~var_3.b.x).b.x), (_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.b, vec2<u32>(var_0.a.a, var_1.b.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_1.b.x), vec2<u32>(0u, 14284u))) >> (vec2<u32>(4294967295u, ~0u) % vec2<u32>(32u))) ^ ~vec2<u32>(var_3.c.a, ~4294967295u), _wgslsmith_f_op_f32(571f + func_5(func_4(Struct_4(var_3.a.a, var_1.b, var_1.c)), func_7(4294967295u, Struct_1(13452u, -344f), Struct_2(Struct_1(4294967295u, var_1.c.x), var_2.a.b), -var_2.b.x).a, max(var_2.b.x, var_2.b.x)).c.b), countOneBits(_wgslsmith_mult_i32(var_3.b.x, u_input.a.x >> (var_2.c.a % 32u))) | 2147483647i, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(654f - var_2.a.a.b) * _wgslsmith_f_op_f32(var_3.a.a.b + var_2.a.a.b)), _wgslsmith_f_op_f32(-var_0.a.b)))));
}

