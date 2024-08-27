struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<f32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(-1000f, vec3<bool>(true, true, false), Struct_2(vec2<u32>(15483u, 4294967295u))), Struct_3(1000f, vec3<bool>(true, true, false), Struct_2(vec2<u32>(24377u, 48504u))), Struct_3(727f, vec3<bool>(false, false, false), Struct_2(vec2<u32>(4294967295u, 15246u))), Struct_3(-694f, vec3<bool>(false, true, false), Struct_2(vec2<u32>(1u, 26974u))), Struct_3(-939f, vec3<bool>(true, true, false), Struct_2(vec2<u32>(0u, 0u))), Struct_3(1000f, vec3<bool>(true, true, true), Struct_2(vec2<u32>(0u, 21256u))), Struct_3(-232f, vec3<bool>(true, false, true), Struct_2(vec2<u32>(0u, 39084u))), Struct_3(-1120f, vec3<bool>(false, true, false), Struct_2(vec2<u32>(58024u, 81746u))), Struct_3(1631f, vec3<bool>(true, true, false), Struct_2(vec2<u32>(1u, 0u))), Struct_3(115f, vec3<bool>(false, true, false), Struct_2(vec2<u32>(67723u, 0u))), Struct_3(1820f, vec3<bool>(true, true, false), Struct_2(vec2<u32>(11761u, 4294967295u))), Struct_3(830f, vec3<bool>(true, true, false), Struct_2(vec2<u32>(1u, 0u))), Struct_3(460f, vec3<bool>(true, true, false), Struct_2(vec2<u32>(4294967295u, 3732u))), Struct_3(103f, vec3<bool>(true, false, false), Struct_2(vec2<u32>(80248u, 31135u))), Struct_3(1000f, vec3<bool>(false, true, false), Struct_2(vec2<u32>(4359u, 35536u))), Struct_3(1000f, vec3<bool>(true, false, true), Struct_2(vec2<u32>(8547u, 4294967295u))), Struct_3(-1233f, vec3<bool>(false, false, true), Struct_2(vec2<u32>(5866u, 1u))));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec2<u32>) -> vec3<u32> {
    global0 = array<Struct_3, 17>();
    global0 = array<Struct_3, 17>();
    global0 = array<Struct_3, 17>();
    var var_0 = any(vec2<bool>(!arg_0, false));
    let var_1 = arg_0;
    return ~(~vec3<u32>(4294967295u, arg_2.x & u_input.e, abs(u_input.d.x)) & u_input.d);
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    var var_0 = ~(u_input.d ^ ~_wgslsmith_div_vec3_u32(func_3(false, 275f, arg_0.xy), ~arg_0));
    let var_1 = Struct_3(1000f, vec3<bool>(true, true, false == any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))), Struct_2(~vec2<u32>(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(var_0.x, var_0.x, 55981u)), ~4294967295u)));
    var var_2 = -2147483647i ^ max(_wgslsmith_dot_vec3_i32(~min(u_input.b, u_input.b), (vec3<i32>(17297i, u_input.b.x, 1i) & vec3<i32>(1i, u_input.b.x, -14110i)) ^ -u_input.b), _wgslsmith_dot_vec3_i32(-(u_input.b >> (u_input.d % vec3<u32>(32u))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-52833i, -2147483647i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))));
    let var_3 = Struct_4(927f, global0[_wgslsmith_index_u32(56028u, 17u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2378f, var_1.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-481f, 1000f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-335f, 348f), vec2<f32>(var_1.a, -489f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(804f, 1998f) * vec2<f32>(1525f, 561f))))), ~_wgslsmith_add_u32(select(63892u, ~4294967295u, var_1.b.x), 0u), ~vec2<i32>(u_input.b.x, 1i));
    let var_4 = Struct_5(_wgslsmith_f_op_f32(trunc(-1114f)), any(var_3.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1383f + -902f)), Struct_2(min(select(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.d.x, 32772u) << (var_1.c.a % vec2<u32>(32u)), var_3.b.b.xx), firstLeadingBit(~var_1.c.a))));
    return var_3.e.x;
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0.b, max(~(~arg_0.b), reverseBits(vec4<u32>(1u, u_input.a.x, arg_0.b.x, u_input.c) | arg_0.b))), vec4<u32>(_wgslsmith_mult_u32(func_3(arg_0.a.x, -268f, _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u))).x, arg_0.b.x), _wgslsmith_add_u32(1u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.a), 0u & u_input.a.x)), arg_0.b.x, min(~arg_0.b.x, 15165u)));
    var var_1 = func_2(~(~vec3<u32>(firstTrailingBit(var_0.x), firstTrailingBit(4294967295u), 17546u)));
    var var_2 = arg_0.e.yx;
    var var_3 = Struct_2(vec2<u32>(abs(arg_0.b.x), ~reverseBits(~u_input.c)));
    var_2 = _wgslsmith_div_vec2_i32(~(~arg_0.e.xy) >> (vec2<u32>(~func_3(false, 179f, vec2<u32>(arg_0.b.x, 1u)).x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(17466u, var_0.x, var_3.a.x, 21591u), vec4<u32>(1u, 4294967295u, var_0.x, 0u), arg_0.a), ~vec4<u32>(83425u, var_0.x, arg_0.b.x, u_input.a.x))) % vec2<u32>(32u)), vec2<i32>(arg_0.e.x << (~min(var_3.a.x, arg_0.b.x) % 32u), _wgslsmith_mod_i32(arg_0.c, -2147483647i)));
    return max(u_input.b.x, u_input.b.x & (1i | func_2(_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(4294967295u, var_3.a.x, u_input.a.x)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> bool {
    global0 = array<Struct_3, 17>();
    global0 = array<Struct_3, 17>();
    let var_0 = func_4(Struct_1(!vec4<bool>(true, true, all(vec3<bool>(false, arg_0.x, true)), true), vec4<u32>(abs(u_input.a.x), u_input.a.x, 1u, 20223u) << (~(vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x) ^ vec4<u32>(u_input.d.x, u_input.e, 4294967295u, u_input.e)) % vec4<u32>(32u)), func_2(vec3<u32>(u_input.e, 4294967295u, 0u)) << (1u % 32u), firstTrailingBit(u_input.b.x), firstTrailingBit(vec4<i32>(0i, arg_1, 1i, 2147483647i) | (vec4<i32>(0i, u_input.b.x, -1i, u_input.b.x) ^ vec4<i32>(u_input.b.x, 0i, -2147483647i, arg_1)))));
    global0 = array<Struct_3, 17>();
    var var_1 = select(!select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, arg_0.x, false, true), vec4<bool>(false, true, true, false)), !(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), select(vec4<bool>(arg_0.x, true, arg_0.x, true), select(vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), true), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x))), vec4<bool>(!any(!vec4<bool>(arg_0.x, false, true, true)), true, true != (true == any(vec2<bool>(true, arg_0.x))), arg_0.x | arg_0.x), arg_0.x);
    return any(!select(!select(vec3<bool>(false, arg_0.x, arg_0.x), var_1.xzw, vec3<bool>(true, false, var_1.x)), var_1.yzx, var_1.xwy));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 17>();
    var var_0 = vec4<bool>(false, false, func_1(!vec2<bool>(true, all(vec4<bool>(false, true, true, true))), abs(-u_input.b.x)), !select(!(u_input.b.x < 37100i), any(vec3<bool>(true, true, true)), true));
    let var_1 = global0[_wgslsmith_index_u32(1u, 17u)];
    var var_2 = Struct_5(var_1.a, true, 167f, Struct_2(_wgslsmith_mod_vec2_u32(u_input.a & ~vec2<u32>(4294967295u, 70719u), ~reverseBits(vec2<u32>(4771u, var_1.c.a.x)))));
    var_2 = Struct_5(-274f, true, _wgslsmith_f_op_f32(-var_1.a), Struct_2(var_1.c.a));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(abs(-599f)), _wgslsmith_f_op_f32(-var_1.a), var_2.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-190f, -964f, var_1.a))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(222f, -882f), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(1057f * var_1.a)), vec3<f32>(_wgslsmith_f_op_f32(min(-493f, var_1.a)), -2190f, var_1.a))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), 1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(exp2(var_2.a))))))));
    var_2 = Struct_5(_wgslsmith_f_op_f32(-var_2.c), true, var_3.x, Struct_2(u_input.d.yy));
    global0 = array<Struct_3, 17>();
    var_2 = Struct_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - -1406f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(144f, var_3.x))) - var_1.a))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a, var_1.a))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -890f)))), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, var_2.c) * vec3<f32>(-229f, 646f, var_1.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-650f, -492f, var_2.c), vec3<f32>(var_1.a, -625f, 183f)))))), ~_wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, u_input.c, 59665u, var_2.d.a.x), vec4<u32>(27041u, 0u, var_2.d.a.x, 4294967295u), var_2.b), ~vec4<u32>(1u, 0u, 44619u, 16624u))), ~select(~vec4<u32>(var_1.c.a.x, 1u, u_input.d.x, 40809u), vec4<u32>(~var_1.c.a.x, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(var_1.c.a.x, var_2.d.a.x, 4294967295u)), min(var_1.c.a.x, 4294967295u), 1u), !vec4<bool>(false, var_1.b.x, true, var_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(173f)) - -1142f)) + _wgslsmith_f_op_f32(-var_2.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, var_1.a, var_2.a) + vec3<f32>(var_2.a, 374f, var_2.a)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2037f, var_2.c, 2093f), vec3<f32>(var_3.x, var_2.c, 1277f)))), vec3<f32>(_wgslsmith_f_op_f32(select(-586f, -332f, var_2.b)), var_3.x, _wgslsmith_div_f32(var_1.a, 616f)), true)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, -184f, var_3.x), vec3<f32>(528f, var_3.x, var_2.c)), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.a, var_3.x, -1000f), vec3<f32>(718f, 590f, var_1.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_3.x, var_1.a))))));
}

