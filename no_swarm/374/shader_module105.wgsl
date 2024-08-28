struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<Struct_1, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>) -> vec2<bool> {
    global1 = array<Struct_1, 19>();
    let var_0 = Struct_3(all(vec2<bool>(true, true)), Struct_1(arg_1.x), 230f, ~_wgslsmith_dot_vec2_u32(u_input.c.zy, ~u_input.c.yz));
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.b.a, u_input.c.x), _wgslsmith_sub_u32(var_0.d, var_0.d)), 19u)];
    global0 = array<Struct_1, 27>();
    var var_2 = min(firstTrailingBit(-_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 2147483647i, u_input.a.x, -1i), vec4<i32>(728i, u_input.a.x, -1i, u_input.a.x) << (vec4<u32>(0u, u_input.c.x, var_0.b.a, arg_1.x) % vec4<u32>(32u)))), vec4<i32>(-1i) * -(_wgslsmith_add_vec4_i32(vec4<i32>(-4250i, u_input.a.x, -1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 21050i)) ^ vec4<i32>(u_input.a.x, 18443i, u_input.a.x, 2147483647i)));
    return !vec2<bool>(firstTrailingBit(_wgslsmith_sub_i32(-1i, u_input.a.x)) > var_2.x, true);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> i32 {
    global1 = array<Struct_1, 19>();
    var var_0 = Struct_3(true, Struct_1(1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -721f) + -1000f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(370f, 169f, false))))), ~u_input.c.x);
    var var_1 = func_3(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1226f))), 2958f), _wgslsmith_f_op_f32(var_0.c * -492f), var_0.c), ~(~(~vec3<u32>(0u, arg_0.a, var_0.d))));
    var_1 = !(!(!(!select(vec2<bool>(var_0.a, true), vec2<bool>(false, var_1.x), vec2<bool>(var_0.a, false)))));
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(abs(45438i), _wgslsmith_add_i32(0i | arg_3, -19005i)) ^ 1i, u_input.a.x, u_input.a.x);
    return -_wgslsmith_sub_i32(var_2.x, var_2.x);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec3<f32>) -> Struct_3 {
    global0 = array<Struct_1, 27>();
    let var_0 = _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, -1i, 8890i, reverseBits(arg_1)), _wgslsmith_sub_vec4_i32(vec4<i32>(-17540i, u_input.a.x, -2147483647i, arg_1), vec4<i32>(u_input.a.x, -2147483647i, arg_1, arg_1)) ^ min(vec4<i32>(0i, arg_1, -28903i, u_input.a.x), vec4<i32>(-1i, arg_1, 36758i, -1i)), vec4<i32>(~1i, ~3011i, -3681i, -34141i))), vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), arg_1, 55411i, ~1i));
    global0 = array<Struct_1, 27>();
    let var_1 = ~vec4<i32>(-_wgslsmith_clamp_i32(-arg_1, ~0i, -1i), -2147483647i, -11686i, _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, -1i, arg_0), ~vec3<i32>(-15914i, 29048i, 2147483647i)) & _wgslsmith_sub_i32(19034i, firstTrailingBit(arg_0)));
    let var_2 = Struct_3(any(vec3<bool>(true, any(vec2<bool>(true, true)), true)), global0[_wgslsmith_index_u32(firstTrailingBit(1u), 27u)], _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(1669f * _wgslsmith_f_op_f32(ceil(arg_2.x)))), min(u_input.c.x, ~(~4294967295u)));
    return var_2;
}

fn func_1(arg_0: u32) -> Struct_3 {
    global1 = array<Struct_1, 19>();
    global0 = array<Struct_1, 27>();
    var var_0 = ~vec4<u32>(~24158u, u_input.c.x, u_input.c.x, ~80120u & (select(u_input.b, 4294967295u, false) & _wgslsmith_div_u32(13987u, arg_0)));
    let var_1 = func_4(_wgslsmith_dot_vec4_i32(min(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<i32>(0i, 2147483647i, 2147483647i, u_input.a.x), ~vec4<i32>(-1i, u_input.a.x, 0i, 14595i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-3161i, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) ^ vec4<i32>(1i, u_input.a.x, 2863i, u_input.a.x)), abs(vec4<i32>(-1i & u_input.a.x, func_2(global0[_wgslsmith_index_u32(u_input.b, 27u)], Struct_2(Struct_1(var_0.x)), 36666u, 0i), max(2596i, u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, 1i)))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a.x, 1i), u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1460f, 803f, -574f) - vec3<f32>(1304f, 1421f, -399f))))));
    let var_2 = _wgslsmith_mod_u32(~firstLeadingBit(45997u), 80340u);
    return func_4(func_2(func_4(u_input.a.x, u_input.a.x, vec3<f32>(812f, _wgslsmith_f_op_f32(-var_1.c), 322f)).b, Struct_2(func_4(func_2(var_1.b, Struct_2(var_1.b), var_0.x, -2147483647i), -33780i, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-949f, var_1.c, var_1.c), vec3<f32>(604f, var_1.c, 1000f)))).b), arg_0 >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(12031u, var_0.x, var_1.b.a, u_input.b), vec4<u32>(var_2, 90966u, arg_0, 4294967295u)), select(vec4<u32>(1u, arg_0, u_input.c.x, u_input.c.x), vec4<u32>(0u, var_2, 1u, var_1.b.a), var_1.a)) % 32u), 2147483647i), _wgslsmith_mult_i32(reverseBits(-19551i), _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.a.x, 13294i, -2147483647i) | vec3<i32>(-1i, u_input.a.x, u_input.a.x)), abs(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))))), vec3<f32>(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(727f, -176f), _wgslsmith_f_op_f32(floor(-1255f)))) - 254f), _wgslsmith_div_f32(var_1.c, 627f)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    let var_0 = func_1(_wgslsmith_add_u32(1u, abs(0u << (arg_1.d % 32u))));
    let var_1 = func_4(~((i32(-1i) * -1i) | (u_input.a.x >> (arg_1.d % 32u))) | abs(1i), _wgslsmith_clamp_i32(-_wgslsmith_div_i32(16687i, _wgslsmith_sub_i32(1i, 59134i)), ~(~_wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), u_input.a.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(528f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(627f - var_0.c))))));
    var var_2 = countOneBits(_wgslsmith_mult_i32(~(-6027i), -66928i));
    global1 = array<Struct_1, 19>();
    global0 = array<Struct_1, 27>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(func_4(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), vec4<i32>(u_input.a.x, u_input.a.x, -26008i, 28793i)), 49136i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-981f, 1235f, var_0.c)))).c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.c.x | 51175u), 19u)]), func_1(~(~11652u)), Struct_1(~(~75183u)))));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(23677u, 27u)]);
    let var_2 = abs(~52677u);
    var var_3 = u_input.a.x;
    var var_4 = 24132i;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(957f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(159f, 627f)) * _wgslsmith_div_f32(3256f, 221f))))), _wgslsmith_f_op_f32(-1544f + _wgslsmith_f_op_f32(func_5(Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 19u)]), func_4(1i, -6043i, vec3<f32>(1576f, -232f, -345f)), var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(_wgslsmith_mult_i32(0i, u_input.a.x) >> (~u_input.b % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, 1i, 22801i), vec3<i32>(u_input.a.x, 0i, -18838i)), _wgslsmith_mod_i32(u_input.a.x, -1i) << (30365u % 32u), 40989i), max(_wgslsmith_sub_vec4_i32(vec4<i32>(54574i, u_input.a.x, 0i, u_input.a.x), vec4<i32>(0i, 16256i, u_input.a.x, u_input.a.x)), vec4<i32>(1i, 29903i, u_input.a.x, -1i)) << (vec4<u32>(var_1.a.a & 80779u, ~var_1.a.a, 41128u, var_1.a.a) % vec4<u32>(32u)), vec4<bool>(_wgslsmith_f_op_f32(floor(-2261f)) != _wgslsmith_f_op_f32(305f + -224f), false, true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1067f), -266f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1004f, _wgslsmith_f_op_f32(-289f + 502f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-862f, 2336f)))), vec3<f32>(_wgslsmith_f_op_f32(997f + func_4(49733i, u_input.a.x, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1375f, -394f, -452f)))).c), -542f, _wgslsmith_f_op_f32(max(-989f, _wgslsmith_div_f32(1f, _wgslsmith_div_f32(963f, 1590f))))));
}

