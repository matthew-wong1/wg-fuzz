struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(4294967295u, vec3<bool>(false, true, false)), Struct_2(1u, vec3<bool>(false, true, true)), Struct_2(4294967295u, vec3<bool>(true, true, false)), Struct_2(4294967295u, vec3<bool>(false, true, false)), Struct_2(12485u, vec3<bool>(false, true, true)), Struct_2(1u, vec3<bool>(true, false, true)), Struct_2(29297u, vec3<bool>(true, false, true)), Struct_2(28861u, vec3<bool>(false, true, false)), Struct_2(4294967295u, vec3<bool>(false, true, true)), Struct_2(4294967295u, vec3<bool>(true, true, false)), Struct_2(1u, vec3<bool>(false, false, true)));

var<private> global1: array<vec4<bool>, 6>;

var<private> global2: bool = false;

var<private> global3: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false));

var<private> global4: u32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> f32 {
    global4 = 4294967295u;
    let var_0 = abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-16581i, -19154i, u_input.a), -reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-20782i, 61898i, u_input.a), vec3<i32>(-14996i, 1i, 88518i)))));
    global3 = array<vec4<bool>, 10>();
    let var_1 = Struct_1(4294967295u, max(select(_wgslsmith_sub_i32(0i, var_0.x), _wgslsmith_div_i32(var_0.x, 24696i), true), u_input.a) < (~u_input.a << (u_input.b % 32u)), ~reverseBits(var_0));
    global0 = array<Struct_2, 11>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-894f * -1000f) - 884f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-211f - _wgslsmith_f_op_f32(f32(-1f) * -219f)))))));
}

fn func_2() -> Struct_3 {
    global2 = _wgslsmith_f_op_f32(max(-350f, _wgslsmith_f_op_f32(func_3()))) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1192f))));
    var var_0 = _wgslsmith_f_op_f32(min(153f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1270f, -1771f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -464f)))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1312f), -643f, -558f, -1000f);
    var var_2 = 28221i;
    let var_3 = ~(-(-_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(38064i, u_input.a, 37415i)) ^ _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-95901i, u_input.a, u_input.a), vec3<i32>(u_input.a, 7055i, u_input.a)), min(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(66764i, u_input.a, 2147483647i)))));
    return Struct_3(-(~u_input.a), u_input.a, !select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), vec3<bool>(select(true, all(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, true))), true | (-3022f <= var_1.x), true), !any(vec3<bool>(true, true, true)) || select(any(vec3<bool>(true, false, false)) & true, false, false));
}

fn func_4(arg_0: Struct_3) -> bool {
    let var_0 = arg_0.d.x;
    global0 = array<Struct_2, 11>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1696f - 1135f), _wgslsmith_div_f32(-241f, _wgslsmith_div_f32(400f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(276f)))))));
    var var_2 = !all(arg_0.c);
    global1 = array<vec4<bool>, 6>();
    return false;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(-704f));
    global2 = !func_4(func_2());
    global3 = array<vec4<bool>, 10>();
    global3 = array<vec4<bool>, 10>();
    let var_1 = true;
    return true;
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: u32) -> vec3<f32> {
    let var_0 = u_input.a;
    global2 = false;
    let var_1 = func_2().c.x;
    let var_2 = reverseBits(~(~vec3<u32>(4294967295u, arg_3, 61346u))) >> (abs(firstTrailingBit(~(~vec3<u32>(u_input.b, u_input.b, arg_3)))) % vec3<u32>(32u));
    global0 = array<Struct_2, 11>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(423f, arg_2.x, 532f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, 1292f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -934f, -111f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-712f, _wgslsmith_f_op_f32(sign(1041f)), arg_2.x)) * vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - arg_2.x)), -1159f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 11>();
    global2 = false;
    let var_0 = _wgslsmith_f_op_vec3_f32(func_5(all(vec2<bool>(true, true)), select(select(vec3<bool>(true, func_1(vec4<i32>(u_input.a, u_input.a, -91761i, 3499i), vec3<i32>(-35740i, -2147483647i, 0i), vec4<f32>(141f, -1000f, -846f, -158f)), false), vec3<bool>(all(vec3<bool>(true, true, false)), u_input.a < u_input.a, true), vec3<bool>(u_input.a >= 2147483647i, u_input.a > -1i, any(vec2<bool>(true, true)))), vec3<bool>(true, true || func_4(Struct_3(-1i, u_input.a, vec2<bool>(true, true), vec3<bool>(false, true, true), false)), false), select(true, true, false)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(334f, 389f), vec2<f32>(1f, 1f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(880f, -1000f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(508f, -451f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1650f, 858f))))), ~(~1u)));
    var var_1 = u_input.b;
    let var_2 = Struct_2(max(~min(u_input.b, ~39316u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u), vec4<u32>(u_input.b, u_input.b, 71355u, u_input.b)), ~1u), min(vec2<u32>(u_input.b, 49838u) >> (vec2<u32>(u_input.b, 7640u) % vec2<u32>(32u)), max(vec2<u32>(23149u, 35888u), vec2<u32>(u_input.b, 55590u))))), func_2().d);
    var var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(min(abs(_wgslsmith_mod_u32(4294967295u, 7603u)), var_2.a), u_input.b, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 47618u), vec2<u32>(u_input.b, var_2.a))), var_2.a), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(countOneBits(var_2.a), _wgslsmith_div_u32(var_2.a, var_2.a), select(0u, 4294967295u, var_2.b.x), ~var_2.a), firstLeadingBit(vec4<u32>(4294967295u, 50882u, 1u, 2811u)), vec4<u32>(0u, max(39496u, var_2.a), ~u_input.b, 1u)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_2.a, var_2.a, 4294967295u, var_2.a), vec4<u32>(7573u, 30165u, 66391u, 1u)))));
    var_3 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, abs(0u), var_3.x & var_2.a) ^ (_wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, var_3.x, var_2.a, var_3.x), vec4<u32>(0u, 61530u, 0u, 69141u)) & ~vec4<u32>(20783u, 109767u, var_2.a, 25073u)), ~vec4<u32>(max(u_input.b, var_2.a), ~u_input.b, ~var_3.x, var_3.x)), ~vec4<u32>(~(~var_3.x), abs(~1u), 1u >> ((0u | var_3.x) % 32u), _wgslsmith_dot_vec3_u32(~var_3.wzy, vec3<u32>(var_2.a, var_3.x, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(14837u, -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -u_input.a), vec2<i32>(-1i, -1i) & (vec2<i32>(-1i, u_input.a) ^ vec2<i32>(1i, 2147483647i))), var_0.xx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1884f, 1042f)) + _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(813f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-339f))))));
}

