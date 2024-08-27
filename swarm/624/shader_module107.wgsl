struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(423f, 1274f, 647f);

var<private> global1: vec4<u32> = vec4<u32>(16880u, 0u, 7182u, 30214u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    return global0.x;
}

fn func_2() -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-352f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -239f) + _wgslsmith_f_op_f32(global0.x + -310f))))));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-804f, global0.x, global0.x, -418f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-716f, global0.x, global0.x, global0.x)))), vec4<f32>(-1263f, -578f, _wgslsmith_f_op_f32(-global0.x), global0.x), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true))) * vec4<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(1000f - -168f)), -377f, global0.x, _wgslsmith_f_op_f32(-129f - global0.x))));
    let var_1 = vec2<bool>(!any(vec2<bool>(true, true)), all(!vec4<bool>(any(vec2<bool>(false, true)), true, false, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(var_0.b.yzx - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.b.ywx))));
    var_0 = Struct_2(global0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -666f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.x, global0.x)) * _wgslsmith_f_op_f32(-global0.x)), var_0.a)));
    return vec4<bool>(!var_1.x, all(select(select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x), var_1.x), vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, true, var_1.x)), select(select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, true, false), var_1.x), vec3<bool>(var_1.x, var_1.x, true), var_1.x & var_1.x), select(!vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(var_1.x, false, true)))), !any(select(!vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.a)), var_0.a)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, -256f))));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_4) -> i32 {
    let var_0 = min(-(~(~(~vec3<i32>(7209i, -30818i, 1i)))), vec3<i32>(reverseBits(1i) & -firstTrailingBit(1i), ~reverseBits(~2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 29578i), vec2<i32>(1i, 1i)) | -24555i));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1627f, global0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(301f, global0.x, global0.x))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(2502f, global0.x, 689f))))), ~(~max(countOneBits(3087u), ~63366u)), ~40560u, 45149u);
    global1 = _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(abs(vec4<u32>(arg_3.a, global1.x, 70854u, u_input.a)), ~vec4<u32>(90u, 4294967295u, 0u, var_1.c) >> (~vec4<u32>(13689u, arg_3.a, u_input.b, global1.x) % vec4<u32>(32u))), vec4<u32>(0u, abs(~max(4294967295u, 0u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_3.a, 2540u, 1u), 62749u), ~0u), u_input.d));
    let var_2 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, ~u_input.a, u_input.b), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 15970u, global1.x, 12065u), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_1.d, arg_3.a, 4294967295u), vec4<u32>(20056u, arg_3.a, global1.x, 56566u)))));
    var var_3 = !(!(!vec2<bool>(any(vec3<bool>(false, false, arg_2.x)), arg_3.b & arg_1)));
    return ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(~24448i, var_0.x), firstLeadingBit(var_0.x));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -211f) * -1647f), arg_2.b);
    global1 = _wgslsmith_add_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.c, global1.x, 4076u, arg_1.c), vec4<u32>(36752u, global1.x, global1.x, 4253u) | vec4<u32>(u_input.a, arg_1.b, global1.x, arg_1.b), vec4<u32>(global1.x, 0u, 4294967295u, u_input.a))) & vec4<u32>(0u, _wgslsmith_mod_u32(u_input.a, abs(1u)), ~arg_1.d, _wgslsmith_mod_u32(reverseBits(4294967295u), _wgslsmith_clamp_u32(13744u, 26511u, 0u))), vec4<u32>(8655u, abs(arg_1.b), 1u, ~(~64095u & arg_1.c)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1628f))), arg_1.a.x);
    var var_1 = Struct_4(max(arg_1.d, 15089u), !all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)) | all(!func_2().zzx));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a)), ~arg_1.d, u_input.d, u_input.b);
    return Struct_4(0u, !((~var_1.a >> (~4294967295u % 32u)) <= (_wgslsmith_div_u32(0u, global1.x) | firstTrailingBit(3633u))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec4<f32>) -> u32 {
    let var_0 = false;
    var var_1 = func_5(max(func_4(func_2(), all(func_2()), vec2<bool>(true, true), Struct_4(~arg_1, false)), select(i32(-1i) * -37697i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -10186i), -vec2<i32>(arg_0, arg_0)), !func_2().x)), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.zwy), _wgslsmith_add_u32(~37128u, 1u), countOneBits(u_input.b), ~_wgslsmith_dot_vec3_u32(vec3<u32>(48582u, u_input.c.x, 1u) & vec3<u32>(global1.x, arg_1, global1.x), u_input.c)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_2, arg_2) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_2.x, 157f, global0.x))), _wgslsmith_f_op_vec4_f32(-arg_2))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_2.x), -870f))), u_input.b | arg_1, var_1.a, arg_1), Struct_1(arg_2.wwx, firstTrailingBit(arg_1), ~0u, var_1.a), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.wyz * _wgslsmith_f_op_vec3_f32(sign(arg_2.zxx))) + arg_2.xyy), _wgslsmith_add_u32(~var_1.a, _wgslsmith_mod_u32(global1.x, arg_1)) << (~1u % 32u), 4294967295u, ~((arg_1 >> (4294967295u % 32u)) & 1u)));
    var_2 = Struct_3(var_2.b, Struct_1(_wgslsmith_f_op_vec3_f32(var_2.c.a * arg_2.zwx), 0u, countOneBits(~6529u | func_5(-4661i, var_2.a, Struct_2(var_2.c.a.x, vec4<f32>(-313f, arg_2.x, var_2.a.a.x, -1477f))).a), abs(abs(firstTrailingBit(25750u)))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-473f, -587f, _wgslsmith_div_f32(var_2.a.a.x, global0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-638f, 1493f, 304f), vec3<f32>(-1000f, global0.x, -646f)))), 44026u, max(u_input.d, reverseBits(4294967295u) >> (select(arg_1, 75899u, true) % 32u)), arg_1));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.xxx)))) - _wgslsmith_f_op_vec3_f32(var_2.b.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.a.x, -494f, 279f)))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(~var_1.a, select(var_2.b.c, 57180u, true), var_1.a ^ u_input.c.x), ~7345u, u_input.b, ~(17406u & _wgslsmith_div_u32(4294967295u, var_1.a))), reverseBits(select(~vec4<u32>(var_1.a, var_1.a, var_1.a, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1.x, var_1.a, 4294967295u), vec4<u32>(17664u, var_2.b.b, global1.x, var_2.b.b)), !vec4<bool>(var_0, false, var_0, var_0))) >> (((vec4<u32>(0u, 1u, global1.x, u_input.a) & _wgslsmith_div_vec4_u32(vec4<u32>(1u, 66645u, arg_1, 39962u), vec4<u32>(66016u, arg_1, arg_1, arg_1))) | ~vec4<u32>(u_input.d, var_1.a, var_2.b.c, var_1.a)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<u32>(_wgslsmith_clamp_u32(~u_input.b, reverseBits(global1.x), ~(~1u)), ~(~func_1(min(21612i, 2147483647i), ~global1.x, _wgslsmith_div_vec4_f32(vec4<f32>(-604f, global0.x, -236f, global0.x), vec4<f32>(-366f, 486f, global0.x, 1000f)))), ~_wgslsmith_div_u32(global1.x >> (u_input.d % 32u), _wgslsmith_add_u32(global1.x, ~u_input.b)), firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.c.xz, ~u_input.c.xz | global1.yw)));
    let var_0 = vec3<bool>(false, true, any(!func_2().zz));
    global1 = ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, global1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, global1.x), u_input.c), 0u, ~global1.x), ~(~vec4<u32>(40784u, u_input.d, global1.x, u_input.b) | firstTrailingBit(vec4<u32>(global1.x, 1u, global1.x, global1.x))), _wgslsmith_div_vec4_u32(vec4<u32>(29121u, 1u, 4294967295u, u_input.a), ~vec4<u32>(13624u, global1.x, 22344u, 20975u)) ^ _wgslsmith_sub_vec4_u32(max(vec4<u32>(0u, 1u, u_input.d, u_input.a), vec4<u32>(global1.x, 0u, u_input.d, 0u)), vec4<u32>(7977u, u_input.a, u_input.d, 1u) & vec4<u32>(41132u, 0u, 1u, global1.x)));
    global1 = vec4<u32>(1u, _wgslsmith_mult_u32(~(4294967295u >> (u_input.d % 32u)), global1.x), ~(u_input.b << ((_wgslsmith_clamp_u32(0u, 1u, global1.x) & global1.x) % 32u)), 4294967295u);
    global1 = ~vec4<u32>(reverseBits(abs(0u)) & func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(16285i, -12519i), vec2<i32>(41914i, 1i)), Struct_1(vec3<f32>(global0.x, global0.x, -510f), global1.x, 19995u, 7691u), Struct_2(global0.x, vec4<f32>(global0.x, 1061f, global0.x, -144f))).a, 1u, 0u, select(u_input.d, _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, global1.x, u_input.b, 0u), min(vec4<u32>(29926u, u_input.a, 52976u, 0u), vec4<u32>(global1.x, 4294967295u, global1.x, u_input.c.x))), true));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_i32(-12635i, firstTrailingBit(19178i))));
}

