struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = Struct_2(Struct_1(true, vec2<bool>(!arg_0, arg_0), vec4<i32>(-1i) * -abs(vec4<i32>(u_input.a.x, 1i, -34231i, u_input.a.x))), -937f);
    let var_1 = Struct_5(_wgslsmith_mult_vec3_i32(~var_0.a.c.yxw, vec3<i32>(reverseBits(max(u_input.a.x, -1i)), firstLeadingBit(_wgslsmith_dot_vec2_i32(var_0.a.c.xz, vec2<i32>(u_input.a.x, 1i))), u_input.a.x)), true, 2147483647i <= -_wgslsmith_div_i32(u_input.a.x, 40371i | u_input.a.x));
    let var_2 = countOneBits(-(~firstTrailingBit(~1i)));
    var var_3 = var_1;
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, -2235f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-505f, _wgslsmith_f_op_f32(f32(-1f) * -388f))), 602f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -2142f)), vec3<f32>(-1619f, -1000f, -2514f)))));
    return any(vec3<bool>(arg_0, select(false, !select(false, false, true), any(select(vec4<bool>(arg_0, arg_0, false, var_0.a.b.x), vec4<bool>(var_1.c, true, true, var_0.a.b.x), vec4<bool>(var_0.a.b.x, false, true, true)))), var_1.b));
}

fn func_2(arg_0: i32, arg_1: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -872f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(760f + 409f) - _wgslsmith_f_op_f32(f32(-1f) * -1786f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-957f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(310f, _wgslsmith_f_op_f32(sign(-2159f)))))));
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.x))));
    let var_2 = Struct_4(vec4<f32>(2002f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1021f)) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(min(-1447f, -2012f)), _wgslsmith_f_op_f32(ceil(var_0.x))));
    let var_3 = select(func_3(true), !all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false), u_input.a.x > arg_0)), _wgslsmith_f_op_f32(ceil(var_2.a.x)) >= 1096f);
    return ~(~max(select(~vec4<u32>(arg_1, 38010u, arg_1, 0u), vec4<u32>(arg_1, arg_1, 45273u, arg_1), all(vec3<bool>(true, var_3, var_3))), ~vec4<u32>(arg_1, 35706u, arg_1, 1u)));
}

fn func_1() -> Struct_5 {
    let var_0 = ~select(_wgslsmith_add_vec4_u32(vec4<u32>(1u, ~0u, 52985u, _wgslsmith_mod_u32(30174u, 7458u)), firstLeadingBit(func_2(u_input.a.x, 92062u))), vec4<u32>(max(_wgslsmith_div_u32(4294967295u, 6885u), reverseBits(1u)), 41101u, abs(~4294967295u), 1u), func_3(false));
    return Struct_5(max(~abs(vec3<i32>(u_input.a.x, -1i, u_input.a.x)), -(~vec3<i32>(u_input.a.x, u_input.a.x, 33061i) << (~vec3<u32>(var_0.x, 4294967295u, var_0.x) % vec3<u32>(32u)))), select(func_3(false), var_0.x != ~12416u, false), !any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)) & all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), any(vec3<bool>(false, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = !(!select(vec4<bool>(var_0.b | true, var_0.c, true, 4800i != var_0.a.x), select(select(vec4<bool>(var_0.c, false, false, var_0.b), vec4<bool>(var_0.c, false, var_0.b, true), var_0.b), !vec4<bool>(var_0.b, var_0.b, false, false), any(vec4<bool>(false, false, false, var_0.b))), !select(vec4<bool>(var_0.c, var_0.c, true, var_0.b), vec4<bool>(true, var_0.c, var_0.b, true), true)));
    let var_2 = Struct_3(select(vec4<bool>(any(var_1.yy), var_0.c, true, !(var_1.x | false)), !var_1, !select(var_1, vec4<bool>(var_0.b, true, var_0.b, var_0.b), !var_0.c)));
    let var_3 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(36920u, 14866u, 29952u, 54251u)), ~vec4<u32>(0u, 32616u, 0u, 31512u), ~vec4<u32>(1u, 8046u, 24572u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(28591u, 1u, 74131u, 45943u), ~vec4<u32>(89169u, 15057u, 10167u, 0u))), firstLeadingBit(min(vec4<u32>(63156u, 14143u, 66406u, 1u), vec4<u32>(30380u, 9229u, 0u, 4962u)) & firstTrailingBit(vec4<u32>(1u, 1u, 8690u, 0u)))), _wgslsmith_mod_vec4_u32(vec4<u32>(99621u, 1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 45020u, 68180u), vec3<u32>(0u, 4294967295u, 44580u)), func_2(-20824i, 0u).x), 1u), vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(30695u, 0u)), ~min(27463u, 0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(28255u, 3456u, 32066u, 0u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(56429u, 1u, 2413u, 40032u), vec4<u32>(22003u, 4294967295u, 45053u, 54706u))))));
    let var_4 = var_0.a.x;
    let var_5 = Struct_5(reverseBits(vec3<i32>(~(~17634i), (-10225i & var_0.a.x) >> (_wgslsmith_mod_u32(4294967295u, 1u) % 32u), firstTrailingBit(u_input.a.x))), true, true);
    let var_6 = ~var_5.a.yx;
    let var_7 = Struct_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - vec4<f32>(_wgslsmith_f_op_f32(268f - -1325f), _wgslsmith_f_op_f32(977f + -825f), -742f, 1165f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a >> (vec3<u32>(max(44110u, firstLeadingBit(var_3.x)), ~4294967295u, countOneBits(_wgslsmith_add_u32(73673u, var_3.x))) % vec3<u32>(32u)), 0u, var_7.a.yy);
}

