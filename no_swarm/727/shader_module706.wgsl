struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
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

var<private> global0: vec3<f32> = vec3<f32>(-1069f, -253f, -1287f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    var var_0 = !(u_input.b.x >= u_input.e.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.xx))));
    var var_2 = Struct_3(~u_input.d);
    var var_3 = !select(select(vec4<bool>(true, true, u_input.a.x <= u_input.e.x, true), vec4<bool>(true, true, true, true), false), vec4<bool>(!any(vec2<bool>(true, true)), any(vec2<bool>(false, false)), all(vec3<bool>(true, true, true)), -u_input.b.x < ~(-2147483647i)), false);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-671f + var_1.x)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x - 2127f))), -511f))));
    return -1i;
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-712f))))), arg_2.b.x, arg_2.b.x);
    let var_0 = Struct_2(-121f);
    let var_1 = Struct_3(46257u);
    global0 = vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)), arg_2.b.x);
    var var_2 = arg_0;
    return var_1.a;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -680f));
    var var_1 = -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-u_input.a.yzy, vec3<i32>(u_input.a.x, 32686i, u_input.a.x)), vec3<i32>(u_input.e.x, _wgslsmith_add_i32(u_input.b.x, u_input.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.e.x, -1i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, 19577i, u_input.a.x)))), 1i);
    let var_2 = vec2<u32>(abs(u_input.d), func_4(_wgslsmith_div_i32(_wgslsmith_div_i32(-1i, u_input.a.x), func_3(vec3<f32>(-700f, 1195f, 1000f))) | u_input.e.x, vec4<u32>(reverseBits(~104189u), _wgslsmith_div_u32(63709u, u_input.d >> (u_input.d % 32u)), 0u, 1u << (0u % 32u)), Struct_1(countOneBits(vec3<u32>(u_input.d, 0u, 54259u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_0.a, 1000f))), vec4<bool>(true, select(false, false, true), all(vec4<bool>(false, false, true, true)), any(vec4<bool>(true, false, false, true))), 0i, vec3<u32>(u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, u_input.d, 0u), vec4<u32>(u_input.c.x, u_input.d, 982u, u_input.d)), u_input.d)), !select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), false)));
    var var_3 = _wgslsmith_mod_i32(-29287i, -2147483647i);
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))))))));
    return Struct_3(~_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(59637u, 7511u, var_2.x)), ~vec3<u32>(var_2.x, u_input.d, u_input.c.x)));
}

fn func_1(arg_0: Struct_3) -> i32 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -108f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2103f), -2261f))), -110f);
    var var_0 = ~18585i;
    let var_1 = func_2();
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-282f))), global0.x, global0.x);
    let var_2 = any(select(!vec4<bool>(false, select(true, false, true), true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, any(vec2<bool>(true, false)))), vec4<bool>(true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true)), true, true)));
    return -(_wgslsmith_div_i32(-2147483647i, firstLeadingBit(u_input.b.x ^ 2147483647i)) << (~func_2().a % 32u));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec4<u32>) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2521f, -619f, -116f))) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -168f, 2106f), vec3<f32>(-1000f, -215f, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -1094f, global0.x), vec3<f32>(global0.x, global0.x, -577f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1339f, 690f, -898f) * vec3<f32>(1059f, global0.x, -1466f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, -528f, -822f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(902f, -553f, _wgslsmith_f_op_f32(step(global0.x, global0.x)))))));
    let var_0 = (0i << (_wgslsmith_clamp_u32(22520u, u_input.c.x, 85025u) % 32u)) >> (~(~51502u) % 32u);
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -531f), -2243f, 1107f));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))));
    let var_1 = Struct_1(arg_3.xyz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, global0.x, global0.x))))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-991f * 1502f))))), vec4<bool>(_wgslsmith_f_op_f32(392f * global0.x) < -234f, false, all(vec4<bool>(any(vec2<bool>(true, arg_2.x)), arg_2.x, arg_2.x, global0.x >= 1000f)), true), -25576i, vec3<u32>(arg_1.a, ~arg_3.x, 44595u));
    return false;
}

fn func_6(arg_0: vec2<i32>, arg_1: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), select(!(!(705f < arg_1)), !select(true, any(vec3<bool>(true, true, false)), all(vec3<bool>(false, true, true))), true)));
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, 2066f, global0.x))), vec3<f32>(-260f, global0.x, 1882f))))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-arg_1), all(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(max(1281f, 1271f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, -800f)) + _wgslsmith_f_op_f32(abs(arg_1)))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1253f, _wgslsmith_f_op_f32(round(global0.x)), -380f), vec3<f32>(1f, global0.x, _wgslsmith_div_f32(var_0, -981f)), false))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(733f, var_0, _wgslsmith_f_op_f32(f32(-1f) * -118f)))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-397f, global0.x, global0.x)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 998f, -287f), vec3<f32>(-104f, arg_1, arg_1), vec3<bool>(true, true, true)))))))));
    let var_1 = func_2();
    return ~_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(1u, u_input.c.x, ~4294967295u, u_input.c.x)) & ~vec4<u32>(u_input.c.x, reverseBits(var_1.a), 7722u, var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~(vec2<i32>(u_input.b.x, -2147483647i) ^ ~u_input.a.xw));
    let var_1 = func_6(min(var_0, abs(~_wgslsmith_mod_vec2_i32(vec2<i32>(0i, var_0.x), var_0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-2278f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-181f, -492f))), func_5(func_1(Struct_3(0u)), func_2(), vec3<bool>(false, true, true), u_input.c))))));
    var var_2 = -_wgslsmith_mult_i32(-(1055i >> ((var_1.x ^ u_input.d) % 32u)), ~30480i);
    var_2 = _wgslsmith_dot_vec2_i32(firstTrailingBit(var_0), vec2<i32>(firstTrailingBit(~u_input.e.x), abs(select(2147483647i, var_0.x, true)))) ^ _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(57221i, max(u_input.b.x, 3912i), var_0.x), -vec3<i32>(var_0.x, 12912i, u_input.a.x)), i32(-1i) * -(i32(-1i) * -1i));
    var var_3 = !(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var_2 = u_input.a.x;
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0.x, -966f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-208f))) - global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x)))));
    var var_4 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.e.x, u_input.e.x), vec3<i32>(1i, -1i, 8793i)), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.b.x, u_input.b.x, -1i, -6066i)), var_0.x)));
}

