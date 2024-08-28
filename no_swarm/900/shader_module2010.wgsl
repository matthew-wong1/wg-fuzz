struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1052f, 1i), 4294967295u, 117f);

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(1360f, 41367i), Struct_1(1249f, 7508i), Struct_1(184f, 1i), Struct_1(-1311f, -1i), Struct_1(610f, 5221i), Struct_1(-109f, 19815i), Struct_1(1745f, 0i), Struct_1(1000f, -18602i), Struct_1(206f, -1i), Struct_1(1936f, -28695i), Struct_1(777f, -1i), Struct_1(-436f, -1i), Struct_1(-771f, -19319i), Struct_1(-1658f, 1i), Struct_1(-935f, -33349i), Struct_1(-690f, 2147483647i), Struct_1(302f, 37750i), Struct_1(-1616f, -1i), Struct_1(586f, -14274i), Struct_1(-865f, 0i), Struct_1(1351f, -58822i), Struct_1(948f, -1i), Struct_1(-661f, -1i), Struct_1(-400f, 2147483647i), Struct_1(348f, 1i), Struct_1(1356f, -8281i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> i32 {
    global0 = arg_1;
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global0.c)))), arg_1.a.b), ~(global0.b << (1u % 32u)), global0.c);
    global1 = array<Struct_1, 26>();
    global1 = array<Struct_1, 26>();
    global0 = Struct_2(global0.a, 1u, _wgslsmith_f_op_f32(floor(var_0.c)));
    return -16052i << ((max(global0.b, _wgslsmith_div_u32(~global0.b, 71562u)) | var_0.b) % 32u);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>) -> Struct_2 {
    global0 = Struct_2(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 26u)], abs(15993u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(round(-1672f))))));
    global0 = Struct_2(Struct_1(arg_1.x, _wgslsmith_add_i32(countOneBits(global0.a.b), global0.a.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(global0.b) ^ 4294967295u, arg_0.x), vec2<u32>(~global0.b, ~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)));
    var var_0 = arg_1.yx;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_1.x)))), var_0.x);
    global1 = array<Struct_1, 26>();
    return Struct_2(Struct_1(var_0.x, func_3(vec4<bool>(true, true, true, false), Struct_2(global1[_wgslsmith_index_u32(98453u, 26u)], 0u, var_0.x)) & -(i32(-1i) * -7983i)), firstTrailingBit(139074u), 1506f);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global0.a.a, -121f)))))), firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_sub_i32(i32(-1i) * -1i, u_input.c.x), -74110i)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(870f, -1034f, true)), arg_0.c)) - 818f);
    var_0 = Struct_1(-1000f, -47285i);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1087f * arg_0.a.a), _wgslsmith_f_op_f32(2143f * var_1))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_f_op_f32(round(1919f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2115f, -1628f))))));
    var var_3 = arg_0;
    return vec3<i32>(func_2(arg_1, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, global0.a.a, var_0.a))), vec3<f32>(-1512f, _wgslsmith_f_op_f32(var_2.x - 628f), _wgslsmith_f_op_f32(-arg_0.a.a)), vec3<bool>(false, true, true)))).a.b, _wgslsmith_add_i32(~var_0.b, 2147483647i), -var_3.a.b);
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = ~(func_4(func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b, 4294967295u, 11328u, global0.b), vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1165f, -170f, 124f) + vec3<f32>(-684f, 426f, global0.c))), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 23761u, global0.b, global0.b), vec4<u32>(global0.b, u_input.a.x, 0u, global0.b)))) >> (~(~min(vec3<u32>(1u, 1u, 0u), vec3<u32>(8735u, 77539u, 4294967295u))) % vec3<u32>(32u)));
    let var_1 = Struct_3(-vec2<i32>(-2147483647i, ~(i32(-1i) * -15109i)), !(!any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)))), ~((u_input.b.x >> (u_input.a.x % 32u)) | 29735u));
    let var_2 = global1[_wgslsmith_index_u32(u_input.b.x, 26u)];
    var_0 = ~select(max(vec3<i32>(global0.a.b, 0i, 1i), abs(vec3<i32>(var_1.a.x, var_0.x, global0.a.b))), vec3<i32>(1i, -_wgslsmith_mult_i32(arg_0.x, 0i), firstLeadingBit(_wgslsmith_mult_i32(var_1.a.x, global0.a.b))), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, var_1.b, var_1.b), var_1.b), !vec3<bool>(var_1.b, var_1.b, false), false));
    global1 = array<Struct_1, 26>();
    return Struct_2(Struct_1(global0.c, _wgslsmith_dot_vec2_i32(arg_0, arg_0) ^ var_0.x), global0.b, 154f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(-vec2<i32>(max(~u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.b, global0.a.b, -2147483647i, 22716i), vec4<i32>(global0.a.b, u_input.c.x, 6879i, u_input.c.x))), ~reverseBits(1i)));
    var var_0 = Struct_2(func_1(vec2<i32>(0i, global0.a.b) >> (u_input.a % vec2<u32>(32u))).a, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.c)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1661f))))));
    var var_1 = Struct_2(func_2(_wgslsmith_clamp_vec4_u32(select(~vec4<u32>(global0.b, 1u, 13295u, 46856u), ~vec4<u32>(global0.b, u_input.b.x, u_input.a.x, u_input.a.x), select(true, true, false)), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(var_0.b, 4294967295u, u_input.b.x, 6631u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b, var_0.b, 82854u, u_input.a.x), vec4<u32>(global0.b, u_input.a.x, 33348u, u_input.a.x))), _wgslsmith_add_vec4_u32(vec4<u32>(global0.b, 1u, var_0.b, 1u), ~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, var_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a.a, 591f, global0.a.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, var_0.a.a, global0.a.a)))))).a, 0u, _wgslsmith_f_op_f32(f32(-1f) * -1084f));
    global1 = array<Struct_1, 26>();
    var var_2 = 1u;
    global1 = array<Struct_1, 26>();
    var var_3 = all(vec4<bool>(true == any(vec4<bool>(true, true, true, true)), true & any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), false, !any(vec2<bool>(false, false)) | all(vec3<bool>(false, true, true))));
    let var_4 = i32(-1i) * -1i;
    var var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_1.c)), _wgslsmith_f_op_f32(trunc(var_1.a.a)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.a), global0.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(840f * -201f) * _wgslsmith_f_op_f32(step(830f, var_0.c))))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1649f, -2437f) * _wgslsmith_f_op_f32(floor(-305f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(47327u, _wgslsmith_sub_u32(32381u, 0u), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(855f, global0.a.a, 407f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.a, var_0.c, global0.a.a), vec3<f32>(-1261f, var_1.a.a, var_0.c))), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.a.a, 787f) + vec3<f32>(-1000f, var_1.a.a, var_0.c))))), ~vec4<u32>(func_2(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 29800u), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(572f, var_0.c, -1901f)))).b, ~var_1.b, 0u, ~0u), ~_wgslsmith_mult_i32(-var_1.a.b, 9183i), func_2(_wgslsmith_add_vec4_u32(vec4<u32>(max(26794u, 49200u), 25378u, reverseBits(global0.b), var_1.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0.b, 57844u, 1u), vec4<u32>(26399u, global0.b, global0.b, var_1.b), vec4<u32>(u_input.b.x, var_1.b, var_0.b, 4294967295u)) << ((vec4<u32>(var_1.b, var_1.b, global0.b, 4294967295u) ^ vec4<u32>(global0.b, 64679u, 54303u, u_input.b.x)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, -1174f, 1000f)))).a.a);
}

