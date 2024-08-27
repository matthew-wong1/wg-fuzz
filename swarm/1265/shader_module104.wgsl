struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3>;

var<private> global1: f32;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = arg_2.b.c;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-841f)) + -213f))));
    let var_2 = countOneBits(~select(~vec2<u32>(arg_1.c, arg_2.b.c), select(vec2<u32>(95832u, 0u), vec2<u32>(u_input.a, 1u), global2.x) & vec2<u32>(22848u, arg_1.c), select(vec2<bool>(arg_3.d, global2.x), vec2<bool>(false, false), arg_1.a)));
    let var_3 = Struct_3(988f, arg_3, -1000f, arg_2.b.c, arg_3);
    global2 = arg_2.b.a;
    return ~arg_0;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> Struct_3 {
    var var_0 = arg_2.e;
    var_0 = 0i;
    global1 = _wgslsmith_f_op_f32(arg_2.c + arg_2.c);
    var var_1 = arg_2;
    var var_2 = select(_wgslsmith_mod_vec2_u32(vec2<u32>(~(~var_1.b.c), ~_wgslsmith_sub_u32(52000u, 18974u)), _wgslsmith_mod_vec2_u32(reverseBits(~vec2<u32>(u_input.a, u_input.a)), _wgslsmith_div_vec2_u32(~vec2<u32>(48045u, 21001u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 6267u), vec2<u32>(var_1.b.c, var_1.b.c), vec2<u32>(0u, u_input.a))))), vec2<u32>(72392u << (((4294967295u >> (arg_2.b.c % 32u)) ^ func_3(16075u, var_1.b, arg_2, arg_2)) % 32u), reverseBits(0u)), false);
    return Struct_3(arg_3, Struct_2(var_1.a, Struct_1(select(vec2<bool>(arg_1.a.x, arg_0), select(vec2<bool>(var_1.b.a.x, true), arg_2.b.a, arg_0), !arg_1.a), abs(4294967295u) == ~arg_2.b.c, var_1.b.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c, _wgslsmith_f_op_f32(-832f + -244f))), true, arg_2.e), var_1.a.x, firstTrailingBit(select(var_1.b.c, countOneBits(_wgslsmith_mult_u32(37609u, 3529u)), !(!arg_2.d))), arg_2);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_1 {
    global1 = -618f;
    var var_0 = arg_1.e.a.xy;
    var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(max(var_0.x, 1999f)))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2193f, arg_1.a)), -719f);
    global0 = array<vec3<bool>, 3>();
    return arg_1.b.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32) -> Struct_1 {
    var var_0 = ~(arg_1.xz | arg_1.xy);
    var var_1 = 503f;
    var_1 = arg_0.c;
    var var_2 = Struct_1(vec2<bool>(func_4(-(~vec3<i32>(-1i, arg_0.e, arg_0.e)), func_2(all(vec4<bool>(global2.x, arg_0.d, false, arg_0.d)), func_2(false, Struct_1(arg_0.b.a, arg_0.b.b, 4294967295u), Struct_2(vec3<f32>(arg_0.c, 449f, -1277f), Struct_1(arg_0.b.a, true, var_0.x), -145f, true, 31805i), -1053f).e.b, arg_0, arg_0.c), vec2<bool>(true, func_4(vec3<i32>(0i, 1i, 1i), Struct_3(1885f, arg_0, 295f, arg_1.x, Struct_2(arg_0.a, Struct_1(vec2<bool>(true, global2.x), global2.x, 0u), -861f, arg_0.d, 0i)), vec2<bool>(true, global2.x)).a.x)).a.x, false), (arg_0.c == _wgslsmith_f_op_f32(abs(1000f))) & (((arg_0.b.a.x || arg_0.d) | true) && !arg_0.b.a.x), 1u >> (_wgslsmith_add_u32(_wgslsmith_div_u32(43214u, u_input.a) & var_0.x, func_2(arg_0.b.a.x, Struct_1(arg_0.b.a, arg_0.b.a.x, 30504u), Struct_2(vec3<f32>(arg_0.a.x, arg_0.a.x, -1128f), arg_0.b, arg_0.a.x, global2.x, -61601i), 448f).e.b.c & ~arg_2) % 32u));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-392f * -1000f)))))), -862f);
    return arg_0.b;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = arg_0;
    global0 = array<vec3<bool>, 3>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1009f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), func_5(Struct_2(vec3<f32>(969f, 392f, _wgslsmith_f_op_f32(-arg_1)), func_4(vec3<i32>(-24894i, 6133i, 0i), func_2(global2.x, Struct_1(var_0.a, arg_0.a.x, 4030u), Struct_2(vec3<f32>(arg_1, arg_1, arg_1), Struct_1(arg_0.a, global2.x, var_0.c), arg_1, true, -2147483647i), arg_1), vec2<bool>(false, var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -1287f), !(!global2.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(-15683i, 22372i, -50410i, 1050i), vec4<i32>(6019i, -1i, 1i, -36265i))), reverseBits(vec3<u32>(~var_0.c, var_0.c, arg_0.c)), ~1u), -658f, true, -6251i);
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 3>();
    let var_0 = ~_wgslsmith_mod_i32(func_1(Struct_1(!vec2<bool>(global2.x, global2.x), true, u_input.a & u_input.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-349f * 1053f)))), -_wgslsmith_add_i32(-5875i, _wgslsmith_clamp_i32(2147483647i, -1i, -1i)));
    let var_1 = func_2(false, Struct_1(func_5(Struct_2(vec3<f32>(710f, -1317f, 499f), Struct_1(vec2<bool>(global2.x, true), global2.x, u_input.a), _wgslsmith_f_op_f32(floor(-188f)), false, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_0, 5211i))), select(vec3<u32>(19757u, u_input.a, 4294967295u) << (vec3<u32>(0u, 48949u, 24667u) % vec3<u32>(32u)), ~vec3<u32>(91181u, 4294967295u, 4294967295u), global2.x), u_input.a).a, true, firstTrailingBit(~(~39608u))), Struct_2(vec3<f32>(1f, 1f, 1f), Struct_1(vec2<bool>(any(vec2<bool>(global2.x, global2.x)), false), all(!vec4<bool>(false, global2.x, global2.x, global2.x)), select(1u, ~u_input.a, var_0 <= var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-513f + 1416f)))), global2.x, 23652i), _wgslsmith_f_op_f32(-1f)).e;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(func_2(var_1.b.b, Struct_1(var_1.b.a, any(vec2<bool>(false, global2.x)), u_input.a), Struct_2(_wgslsmith_f_op_vec3_f32(-var_1.a), Struct_1(vec2<bool>(global2.x, var_1.d), false, 62567u), _wgslsmith_f_op_f32(select(var_1.c, var_1.a.x, var_1.b.b)), select(true, var_1.b.b, var_1.d), -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-183f)) * var_1.c)).b.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.x, var_1.a.x))), _wgslsmith_f_op_f32(round(var_1.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f), -3525f)))), _wgslsmith_f_op_vec3_f32(var_1.a + var_1.a), vec3<bool>(all(!select(var_1.b.a, var_1.b.a, var_1.b.a)), var_1.d || func_2(var_1.b.c >= var_1.b.c, func_4(vec3<i32>(5849i, 0i, var_1.e), Struct_3(-275f, var_1, var_1.a.x, 22117u, var_1), vec2<bool>(var_1.d, var_1.d)), Struct_2(var_1.a, Struct_1(vec2<bool>(var_1.b.b, global2.x), false, 16263u), -1272f, global2.x, var_1.e), _wgslsmith_div_f32(var_1.c, var_1.a.x)).e.d, _wgslsmith_f_op_f32(-var_1.a.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-157f)) * _wgslsmith_f_op_f32(round(var_1.c))))));
    let var_3 = var_1.a.x;
    let var_4 = vec2<i32>(var_1.e, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(898i, -2147483647i)), abs(vec2<i32>(89723i, var_1.e))), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_0, var_0), vec2<i32>(var_0, -2147483647i)), select(1i, var_1.e, var_1.b.b) ^ ~var_1.e), vec3<i32>(1i, _wgslsmith_mod_i32(-var_0, var_1.e), select(~22346i, func_1(var_1.b, var_3), var_1.b.b))));
    let var_5 = 53214u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_1.b.c, 28047u, 1u)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(7336u, 4294967295u, u_input.a), vec3<u32>(var_1.b.c, 0u, 1289u)), vec3<u32>(1u, var_1.b.c, abs(u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_3, var_3, 711f))), (-_wgslsmith_div_vec4_i32(vec4<i32>(var_0, var_4.x, var_0, -23625i), vec4<i32>(-17407i, var_1.e, 19893i, var_1.e)) & min(firstTrailingBit(vec4<i32>(1i, 0i, -7508i, 1i)), vec4<i32>(-48065i, -1i, var_4.x, var_0) >> (vec4<u32>(u_input.a, 27410u, var_1.b.c, var_5) % vec4<u32>(32u)))) >> ((firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.c, 47162u, 1u, var_5), vec4<u32>(0u, u_input.a, 85193u, 1u), vec4<u32>(var_5, var_1.b.c, var_1.b.c, var_1.b.c))) | _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(50167u, var_5, 20478u, var_1.b.c)), ~vec4<u32>(u_input.a, 64506u, 8975u, var_1.b.c))) % vec4<u32>(32u)));
}

