struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(1u);
    var var_1 = Struct_2(var_0, var_0, 1419f, 1u >> (u_input.a.x % 32u));
    var_1 = Struct_2(var_1.a, Struct_1(~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.a, 0u, 15309u), vec3<u32>(4294967295u, 23853u, 85847u)) ^ 1u)), _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(-1356f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))), ~u_input.a.x);
    let var_2 = Struct_2(Struct_1(firstLeadingBit(abs(var_1.d)) & _wgslsmith_dot_vec4_u32(~u_input.a, u_input.a)), Struct_1(var_1.b.a), var_1.c, 23121u);
    let var_3 = ~var_1.b.a;
    return !(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), all(vec3<bool>(true, false, true))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = select(!vec3<bool>(true, all(!vec4<bool>(arg_0.x, arg_0.x, false, false)), select(arg_0.x, arg_0.x, !arg_0.x)), select(func_3(), vec3<bool>(true, true, true), !vec3<bool>(all(vec4<bool>(false, true, arg_0.x, arg_0.x)), arg_0.x == arg_0.x, arg_0.x)), !select(!func_3(), !vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(false, false, all(vec3<bool>(arg_0.x, true, arg_0.x)))));
    var var_1 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(abs(u_input.a.x), u_input.a.x), ~0u), u_input.a.x));
    var_0 = vec3<bool>(var_1.a > ~max(select(11760u, 47915u, true), 37428u), false, all(!(!(!vec3<bool>(arg_0.x, true, true)))));
    var_1 = Struct_1(_wgslsmith_add_u32(~reverseBits(var_1.a), var_1.a));
    let var_2 = Struct_2(Struct_1(var_1.a), Struct_1(~30456u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2208f, -1000f))))), ~_wgslsmith_add_u32(~(10083u | var_1.a), var_1.a));
    return Struct_3(vec2<bool>(true, _wgslsmith_add_i32(0i << (var_1.a % 32u), 12850i) <= 9607i), abs(max(firstLeadingBit(vec2<i32>(1i, 1i)), vec2<i32>(1i, 1i))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>) -> f32 {
    let var_0 = ~(~(~arg_2.x));
    return arg_1;
}

fn func_5(arg_0: f32) -> Struct_3 {
    let var_0 = !select(!func_3().zz, vec2<bool>(false, arg_0 != _wgslsmith_f_op_f32(344f - arg_0)), func_2(vec2<bool>(false, true)).a);
    var var_1 = vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.xz >> (vec2<u32>(31980u, 1u) % vec2<u32>(32u)), vec2<u32>(6739u, u_input.a.x)), vec2<u32>(~u_input.a.x, ~u_input.a.x)), ~u_input.a.xy), 52582u | ~(u_input.a.x << (4294967295u % 32u)), (select(u_input.a.x, 46542u, !var_0.x) ^ 0u) << (_wgslsmith_dot_vec4_u32(select(vec4<u32>(51240u, 38945u, u_input.a.x, 75860u), u_input.a, !vec4<bool>(true, false, true, var_0.x)), vec4<u32>(reverseBits(4294967295u), ~u_input.a.x, abs(u_input.a.x), u_input.a.x)) % 32u));
    let var_2 = var_0.x;
    var_1 = u_input.a;
    var var_3 = vec3<bool>(~u_input.a.x < var_1.x, var_0.x, min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(92408u, u_input.a.x, 105735u))), u_input.a.x) >= max(_wgslsmith_add_u32(0u, 0u), ~u_input.a.x & _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)));
    return Struct_3(vec2<bool>(true, var_0.x), _wgslsmith_add_vec2_i32(countOneBits((vec2<i32>(-1i, 0i) << (u_input.a.xx % vec2<u32>(32u))) | ~vec2<i32>(2147483647i, 8132i)), vec2<i32>(-1i, -1i)));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = arg_1.a.x;
    var var_1 = 398f;
    let var_2 = func_2(!vec2<bool>(_wgslsmith_f_op_f32(floor(arg_2.c)) <= _wgslsmith_f_op_f32(-772f * arg_2.c), func_2(vec2<bool>(arg_1.a.x, true)).a.x));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(188f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.c))), 2149f));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(970f, arg_2.c, -228f, -159f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.c, var_3.x, -1000f, var_3.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.x, var_3.x, var_3.x, -134f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-910f, 453f, -677f, var_3.x), vec4<f32>(var_3.x, -317f, var_3.x, arg_2.c), false)), select(vec4<bool>(false, false, var_2.a.x, var_2.a.x), vec4<bool>(true, true, arg_1.a.x, false), var_2.a.x))))));
    return vec4<i32>(~_wgslsmith_mult_i32(reverseBits(var_2.b.x), reverseBits(1i)), var_2.b.x, var_2.b.x, var_2.b.x);
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    let var_0 = func_6(_wgslsmith_mod_vec2_u32(vec2<u32>(41737u, abs(~10175u)), ~_wgslsmith_div_vec2_u32(u_input.a.xx, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 56226u)))), func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -743f)), _wgslsmith_f_op_f32(func_4(func_2(arg_0.xy), _wgslsmith_f_op_f32(max(-1379f, -1000f)), ~u_input.a))))), Struct_2(Struct_1(countOneBits(u_input.a.x)), Struct_1(30129u), -948f, ~u_input.a.x));
    var var_1 = vec2<bool>(!(1387i >= var_0.x), false);
    var var_2 = Struct_2(Struct_1(4294967295u), Struct_1(u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-900f, -980f) * _wgslsmith_f_op_f32(floor(-501f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1914f, 920f, var_1.x)))))), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 87607u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, 45035u)) ^ u_input.a.x) & u_input.a.x);
    var_2 = Struct_2(Struct_1(4294967295u), Struct_1(var_2.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) + var_2.c))), ~0u);
    let var_3 = vec2<i32>(var_0.x & ~(~var_0.x), var_0.x);
    return 13865i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(3683i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-6840i, 7477i, -2147483647i, 22632i), vec4<i32>(2147483647i, 2147483647i, 51849i, 48744i)), func_1(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)))), _wgslsmith_clamp_vec3_i32(~(~vec3<i32>(2147483647i, -23342i, 0i)), ~vec3<i32>(1i, 1i, 1i), firstLeadingBit(vec3<i32>(i32(-1i) * -1i, select(-1i, 0i, false), ~(-2147483647i)))));
    let var_1 = Struct_3(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), countOneBits(vec2<i32>(func_5(_wgslsmith_f_op_f32(step(-297f, -352f))).b.x, -23493i)));
    var var_2 = !select(select(!vec4<bool>(false, var_1.a.x, true, true), !select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(false, false, var_1.a.x, var_1.a.x), var_1.a.x), u_input.a.x >= ~u_input.a.x), !(!select(vec4<bool>(false, var_1.a.x, false, var_1.a.x), vec4<bool>(true, var_1.a.x, true, false), vec4<bool>(false, false, var_1.a.x, var_1.a.x))), vec4<bool>(u_input.a.x < 10444u, true, var_1.a.x, true));
    var_2 = !vec4<bool>(func_3().x, false, true, !(!(var_2.x & var_2.x)));
    var var_3 = ~95644u;
    var var_4 = vec4<i32>(~var_0.x, ~var_0.x, -func_2(!(!vec2<bool>(false, var_2.x))).b.x, var_1.b.x);
    var var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-212f, -272f)), -314f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-146f, -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1314f)) + -505f))));
    var var_6 = !vec3<bool>(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1020f)) - -1483f)).a.x, true != var_1.a.x, func_3().x);
    let x = u_input.a;
    s_output = StorageBuffer(-197f);
}

