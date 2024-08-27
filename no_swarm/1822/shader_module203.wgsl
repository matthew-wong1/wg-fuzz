struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: f32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = vec2<f32>(264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1578f)) + _wgslsmith_f_op_f32(min(586f, -396f)))));
    let var_1 = !(!any(vec3<bool>(true, true, true)));
    return 4294967295u;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec4<bool>) -> f32 {
    global0 = firstTrailingBit(_wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-9289i, -6936i), vec2<i32>(46746i, 13319i), vec2<i32>(-19531i, -1i)), abs(vec2<i32>(3113i, 0i)))), ~(-vec2<i32>(30019i, 30030i))));
    global0 = abs(_wgslsmith_sub_i32(-22543i, ~(-31217i)));
    var var_0 = arg_0.xxz;
    var_0 = arg_0.xww;
    var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~arg_0.x, 1u, 41388u), vec3<u32>(8885u, countOneBits(0u), _wgslsmith_add_u32(var_0.x, _wgslsmith_add_u32(abs(var_0.x), _wgslsmith_clamp_u32(36899u, 55540u, 111369u)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(ceil(arg_1.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = !((_wgslsmith_clamp_u32(abs(u_input.a), func_2(Struct_2(vec3<i32>(-1i, -80493i, 0i), Struct_1(1u, vec2<u32>(u_input.a, u_input.a)), Struct_1(51276u, vec2<u32>(0u, 16317u)), Struct_1(u_input.a, vec2<u32>(u_input.a, u_input.a)), Struct_1(20069u, vec2<u32>(17147u, u_input.a)))), u_input.a) & ~(~4294967295u)) <= ~(_wgslsmith_dot_vec4_u32(vec4<u32>(64316u, u_input.a, u_input.a, 17380u), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)) & (u_input.a << (u_input.a % 32u))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(46261u, u_input.a, u_input.a, 4294967295u), vec4<f32>(-706f, -469f, 1230f, -1100f), vec4<bool>(var_0, true, var_0, var_0)))), _wgslsmith_f_op_f32(abs(-1070f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * -736f))))));
    var var_2 = Struct_2(select(abs(~select(vec3<i32>(-4883i, 2147483647i, 12690i), vec3<i32>(1i, -1i, -2147483647i), vec3<bool>(false, var_0, var_0))), vec3<i32>(~(i32(-1i) * -16045i), -_wgslsmith_sub_i32(0i, -8287i), 15874i), select(var_0, all(!vec4<bool>(var_0, var_0, false, true)), var_1 <= _wgslsmith_f_op_f32(418f * var_1))), Struct_1(~u_input.a, ~(~(~vec2<u32>(u_input.a, 119743u)))), Struct_1(u_input.a, abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 51885u), vec2<u32>(u_input.a, 33426u)))), Struct_1(_wgslsmith_div_u32(4294967295u, countOneBits(u_input.a)), ~(vec2<u32>(4294967295u, u_input.a) << (min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(71828u, 0u)) % vec2<u32>(32u)))), Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1353u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) >> (_wgslsmith_mod_u32(621u, 25287u) % 32u), ~_wgslsmith_mult_u32(u_input.a, u_input.a)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(25979u, u_input.a)), ~(~vec2<u32>(u_input.a, u_input.a)))));
    let var_3 = -vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(-var_2.a.x), _wgslsmith_add_i32(var_2.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.x, 2147483647i), vec2<i32>(var_2.a.x, var_2.a.x)))), -_wgslsmith_sub_i32(-var_2.a.x, -30624i), 42658i, _wgslsmith_mod_i32(var_2.a.x, var_2.a.x));
    let var_4 = var_2.b;
    return Struct_1(~func_2(Struct_2(~vec3<i32>(41890i, 3536i, var_3.x), var_2.c, Struct_1(57761u, var_2.c.b), Struct_1(var_2.e.a, var_2.e.b), var_2.e)), firstLeadingBit(vec2<u32>(abs(~var_4.a), 31342u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1i;
    var var_0 = Struct_2(vec3<i32>((firstTrailingBit(16653i) >> (~107210u % 32u)) & -1i, min(firstTrailingBit(2245i), 0i), _wgslsmith_sub_i32(1i, -11749i)), Struct_1(11532u, vec2<u32>(1u, _wgslsmith_mult_u32(~u_input.a, firstTrailingBit(1u)))), Struct_1(9828u, _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(u_input.a, u_input.a)), abs(~vec2<u32>(39631u, u_input.a)))), func_1(), func_1());
    var_0 = Struct_2(reverseBits(var_0.a), Struct_1(_wgslsmith_mod_u32(53146u & (var_0.d.b.x | u_input.a), 1u), var_0.d.b), var_0.c, Struct_1(~(68624u & (u_input.a >> (var_0.d.a % 32u))), vec2<u32>(func_1().a, 0u)), Struct_1(func_1().b.x, vec2<u32>(~u_input.a, _wgslsmith_mod_u32(~0u, var_0.c.a >> (1u % 32u)))));
    let var_1 = Struct_4(vec4<bool>(select(true, true, !any(vec3<bool>(true, false, true))), !any(vec3<bool>(true, false, true)), any(vec2<bool>(false, true)) && false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) & any(vec4<bool>(true, false, true, false))), Struct_3(var_0.a.x), -882f, vec4<i32>(countOneBits(min(var_0.a.x, var_0.a.x)), var_0.a.x, select(-1i, var_0.a.x, !all(vec2<bool>(true, false))), i32(-1i) * -var_0.a.x), Struct_1(countOneBits(1u), ~func_1().b));
    var_0 = Struct_2(~vec3<i32>(-2147483647i, 24637i, -(i32(-1i) * -26610i)), Struct_1(_wgslsmith_dot_vec4_u32(reverseBits(select(vec4<u32>(1u, var_1.e.a, 53393u, 0u), vec4<u32>(u_input.a, 60816u, var_1.e.a, 0u), var_1.a.x)), min(~vec4<u32>(2122u, u_input.a, u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, 8717u, var_1.e.b.x), vec4<u32>(var_0.b.b.x, u_input.a, 58679u, 12542u)))), ~vec2<u32>(~28943u, 0u)), Struct_1(4294967295u, var_1.e.b), var_1.e, Struct_1(1u, firstLeadingBit(_wgslsmith_mod_vec2_u32(var_1.e.b, vec2<u32>(1u, var_1.e.a)))));
    let var_2 = var_1.b.a;
    global0 = -max(firstLeadingBit(var_0.a.x), firstTrailingBit(-13445i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(7068u, 24271u));
}

