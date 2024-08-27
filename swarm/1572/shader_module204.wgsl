struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<i32>, arg_3: f32) -> vec4<f32> {
    global0 = arg_0;
    let var_0 = -1i;
    var var_1 = Struct_3(-2147483647i, Struct_1(-13713i, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, u_input.a.x, 1u), ~vec4<u32>(arg_1, u_input.a.x, arg_1, u_input.a.x)), 1u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, ~arg_1), arg_1), -37085i), ~vec4<i32>(-23266i, -_wgslsmith_div_i32(arg_2.x, -27819i), arg_2.x, _wgslsmith_mod_i32(7431i, var_0) & 0i));
    let var_2 = Struct_3(abs(-21323i), var_1.b, ~vec4<i32>(_wgslsmith_div_i32(-2147483647i, 17409i) | _wgslsmith_mod_i32(28467i, var_0), firstLeadingBit(~var_1.b.a), 11972i | ~arg_2.x, var_1.a));
    var_1 = var_2;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3 + 260f), _wgslsmith_f_op_f32(-arg_3)), -144f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), arg_3)))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(true, 20765u, ~vec2<i32>(0i, select(-10608i, -44679i, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1301f, -102f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1351f, -994f, var_0.x, 492f), vec4<f32>(var_0.x, var_0.x, 769f, 1000f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, -110f, var_0.x, 1008f))))))))));
    let var_1 = Struct_3(~1i << (u_input.a.x % 32u), Struct_1(~firstTrailingBit(firstLeadingBit(0i)), _wgslsmith_clamp_vec2_u32(~u_input.a, vec2<u32>(u_input.a.x, u_input.a.x), u_input.a >> (u_input.a % vec2<u32>(32u))) & firstLeadingBit(select(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a, true)), u_input.a.x, -2147483647i), -(~vec4<i32>(~(-21841i), i32(-1i) * -1i, i32(-1i) * -849i, ~30765i)));
    return Struct_2(Struct_1(var_1.b.a, ~firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x)), ~4294967295u << ((_wgslsmith_sub_u32(u_input.a.x, var_1.b.c) ^ _wgslsmith_mod_u32(133593u, u_input.a.x)) % 32u), reverseBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, var_1.c.x, -2147483647i), select(vec3<i32>(var_1.a, var_1.a, var_1.b.a), var_1.c.wyw, true)))), -1i, select(vec3<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true))), all(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), true)), !vec2<bool>(all(vec4<bool>(true, true, true, true)), false), _wgslsmith_dot_vec2_i32(var_1.c.wy, min(~var_1.c.wy, vec2<i32>(var_1.c.x, i32(-1i) * -54284i))));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_add_i32(reverseBits(0i >> (u_input.a.x % 32u)), -5029i) | 60167i, ~abs(~min(u_input.a, u_input.a)), _wgslsmith_sub_u32(44577u, _wgslsmith_mod_u32(~54002u, _wgslsmith_mult_u32(~u_input.a.x, abs(u_input.a.x)))), abs(~0i));
    var var_1 = func_2();
    var var_2 = !(!(!vec4<bool>(all(vec4<bool>(false, true, false, var_1.c.x)), var_1.d.x, false, var_1.d.x)));
    global0 = true;
    var_2 = vec4<bool>(true, _wgslsmith_div_u32(u_input.a.x, _wgslsmith_add_u32(~35466u, 1u)) == 0u, true, any(select(vec4<bool>(var_1.c.x, true, var_1.d.x, var_0.d != 25493i), !vec4<bool>(var_2.x, true, var_1.c.x, var_1.d.x), true)));
    return Struct_3(func_2().a.d, Struct_1(_wgslsmith_div_i32(19425i, ~var_0.d), var_1.a.b, 47902u, var_1.a.a), ~_wgslsmith_mod_vec4_i32(~vec4<i32>(var_1.e, 0i, -52337i, -17086i), select(~vec4<i32>(var_1.b, 1i, 1i, var_1.e), -vec4<i32>(var_1.e, var_1.a.a, var_0.a, var_0.a), true)));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: f32) -> Struct_1 {
    var var_0 = ~(arg_1.b.b | vec2<u32>(_wgslsmith_sub_u32(61536u, u_input.a.x) ^ 4294967295u, ~arg_1.b.b.x));
    global0 = all(!vec3<bool>(_wgslsmith_div_f32(arg_2, 349f) <= _wgslsmith_f_op_f32(623f * 415f), true, !any(vec3<bool>(true, false, true))));
    let var_1 = arg_3;
    var var_2 = func_1();
    let var_3 = Struct_3(-(arg_1.c.x | abs(var_2.b.d >> (u_input.a.x % 32u))), func_1().b, arg_1.c);
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = Struct_1(~1i >> (u_input.a.x % 32u), u_input.a, ~u_input.a.x, 0i);
    var var_2 = var_1.b;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-452f, -1175f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1296f)) * _wgslsmith_div_f32(-1728f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1688f), -1235f))));
    let var_4 = func_4(max(var_1.a, _wgslsmith_div_i32(countOneBits(~var_1.d), (var_1.a << (var_2.x % 32u)) ^ -28457i)), func_1(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 + 1391f) + _wgslsmith_f_op_f32(339f - -212f)) - var_3), var_3), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(~(-(vec4<i32>(-1i) * -vec4<i32>(var_4.d, var_1.a, 13928i, var_4.a))));
}

