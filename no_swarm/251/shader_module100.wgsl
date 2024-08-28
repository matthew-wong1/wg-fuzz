struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    return select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), 46829u < u_input.b.x), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)), !vec3<bool>(false, any(vec3<bool>(false, true, true)), any(vec4<bool>(false, false, false, true))), false), vec3<bool>(any(vec4<bool>(true, true, select(true, false, false), true)), select(select(true, true, select(false, false, true)), false || all(vec2<bool>(true, true)), true), !(_wgslsmith_f_op_f32(step(-636f, 387f)) == _wgslsmith_f_op_f32(select(-1539f, 2322f, false)))), -u_input.a >= 55138i);
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    var var_1 = Struct_3(Struct_1(func_3(), 28520u, vec4<i32>(u_input.a, -_wgslsmith_clamp_i32(-1i, u_input.a, u_input.a), u_input.a, u_input.a)));
    var_1 = Struct_3(Struct_1(select(var_1.a.a, func_3(), false), select(_wgslsmith_mult_u32(4294967295u, select(var_1.a.b, u_input.b.x, true)), 23562u, true), vec4<i32>(_wgslsmith_clamp_i32(u_input.a, var_1.a.c.x, -41392i) | _wgslsmith_div_i32(26891i, -1i), u_input.a, 1i, ~(u_input.a ^ var_1.a.c.x))));
    var_1 = Struct_3(Struct_1(var_1.a.a, _wgslsmith_div_u32(1u, 19781u), select(vec4<i32>(u_input.a, 5178i, -15956i, -7973i), _wgslsmith_div_vec4_i32(abs(var_1.a.c), vec4<i32>(u_input.a, -18058i, 0i, u_input.a)), vec4<bool>(any(vec2<bool>(false, true)), false, false, true))));
    var var_2 = _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(abs(vec4<u32>(var_1.a.b, var_1.a.b, u_input.b.x, u_input.b.x)) & firstTrailingBit(vec4<u32>(4294967295u, 47103u, 4073u, 52568u)), select(vec4<u32>(var_1.a.b, u_input.b.x, var_1.a.b, u_input.b.x), vec4<u32>(1u, var_1.a.b, 4294967295u, 19812u), vec4<bool>(var_0, false, true, var_1.a.a.x)) & ~vec4<u32>(58296u, 0u, 0u, u_input.b.x)), _wgslsmith_mod_vec4_u32(max(firstTrailingBit(vec4<u32>(0u, 0u, var_1.a.b, var_1.a.b)), abs(vec4<u32>(19908u, 4294967295u, u_input.b.x, u_input.b.x))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(53233u, 50560u, var_1.a.b, var_1.a.b), vec4<u32>(u_input.b.x, 51185u, 29033u, var_1.a.b)))) | vec4<u32>(~0u, min(var_1.a.b, 0u), 4389u, var_1.a.b));
    return Struct_2(!any(var_1.a.a.xy), Struct_1(func_3(), max(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.x, u_input.b.x, 11944u), vec4<u32>(var_1.a.b, 22486u, 8522u, 0u)), var_1.a.b), countOneBits(-var_1.a.c)));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = func_2();
    var var_2 = ~vec4<u32>(var_1.b.b, ~(1u | (0u << (var_1.b.b % 32u))), ~(~_wgslsmith_add_u32(var_1.b.b, 4294967295u)), 62437u);
    let var_3 = var_0.b.a;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1069f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(655f)) * _wgslsmith_f_op_f32(1822f * -2725f)), _wgslsmith_f_op_f32(205f * _wgslsmith_f_op_f32(f32(-1f) * -225f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1296f, _wgslsmith_div_f32(-2143f, _wgslsmith_f_op_f32(floor(2022f))), arg_2.a))), _wgslsmith_f_op_f32(-1368f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -921f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1001f, -504f))))));
    return func_2().b;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> f32 {
    let var_0 = Struct_3(func_4(!arg_1.a.yz, arg_1.c.x, func_2()));
    var var_1 = func_4(vec2<bool>(arg_2, arg_2), arg_1.c.x, Struct_2(var_0.a.a.x, Struct_1(func_2().b.a, 24062u, vec4<i32>(-184i, abs(var_0.a.c.x), countOneBits(42483i), ~8754i)))).a.x;
    var var_2 = var_0;
    var_2 = var_0;
    let var_3 = var_2.a.c.x;
    return _wgslsmith_f_op_f32(-184f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1024f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) - arg_3))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(908f)), -1000f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-523f)), _wgslsmith_f_op_f32(673f * -427f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1495f * -386f))) * _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -475f), Struct_1(vec3<bool>(true, true, false), u_input.b.x, vec4<i32>(-20804i, u_input.a, -1i, -1542i)), true, _wgslsmith_f_op_f32(round(-168f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1381f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-950f, 552f))))));
    var var_1 = Struct_3(func_2().b);
    let var_2 = _wgslsmith_mod_u32(4294967295u, func_2().b.b) << (77995u % 32u);
    var_1 = Struct_3(var_1.a);
    var_1 = Struct_3(var_1.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-117f, -1825f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(step(275f, 419f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-625f, -981f))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(463f, -1848f) * _wgslsmith_f_op_f32(select(801f, -973f, true))) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-333f)))));
    var var_4 = 3058u;
    let var_5 = var_1.a.a.yx;
    let var_6 = -var_1.a.c.x >> ((abs(var_2) ^ 4294967295u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(var_6, min(var_1.a.c.x, -17075i) >> (var_1.a.b % 32u), 18388i, countOneBits(countOneBits(u_input.a))), var_1.a.c), _wgslsmith_clamp_vec2_u32(vec2<u32>(18754u, 5106u), ~u_input.b, ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a.b, 1u), u_input.b | vec2<u32>(65693u, 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1005f, 1343f, -923f), vec3<f32>(var_3.x, 216f, -1826f), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1106f, -302f, -668f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.x, var_3.x, var_3.x)))))));
}

