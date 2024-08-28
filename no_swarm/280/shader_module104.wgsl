struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(false, true, 1000f, vec3<i32>(2147483647i, 6833i, -1i));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, select(u_input.a, ~1u, !global1.a), u_input.c, u_input.a), _wgslsmith_clamp_vec4_u32(min(~vec4<u32>(u_input.a, u_input.a, 74757u, 4294967295u), vec4<u32>(41862u, 0u, u_input.c, u_input.c)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 52779u, 1u, 23450u), vec4<u32>(0u, 4294967295u, 4294967295u, u_input.a), vec4<u32>(u_input.a, 9995u, 29250u, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.a, u_input.a, 0u), vec4<u32>(58175u, u_input.c, 1u, 4294967295u)), arg_0.x), vec4<u32>(_wgslsmith_mod_u32(u_input.a, 1u), ~4294967295u, 4294967295u, u_input.a)), vec4<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, u_input.c)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 83241u), vec2<u32>(u_input.a, 36660u))), _wgslsmith_add_u32(0u, 1u), u_input.a, reverseBits(0u << (u_input.a % 32u)))) | vec4<u32>(1u, ~u_input.c, 4294967295u, ~(~11644u & _wgslsmith_mult_u32(u_input.c, 60175u)));
    global1 = Struct_1(true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1077f))))), -(~global1.d));
    var var_1 = 1u;
    var var_2 = var_0.ww;
    var var_3 = Struct_2(Struct_1(true, all(select(vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, true), !arg_0.x)), _wgslsmith_f_op_f32(ceil(global1.c)), ~vec3<i32>(1i, _wgslsmith_add_i32(1i, u_input.b.x), select(15301i, global1.d.x, true))), !select(select(arg_0, select(vec3<bool>(global1.b, arg_0.x, false), arg_0, arg_0), vec3<bool>(global1.a, true, global1.b)), select(arg_0, vec3<bool>(global1.b, global1.a, global1.b), arg_0), true), Struct_1(true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - global1.c)), abs(u_input.b.wyy)), global1.d.zz);
    return var_3.c.c;
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_3 {
    let var_0 = abs(u_input.a) ^ ~_wgslsmith_mult_u32(8611u, ~max(u_input.c, 1u));
    global1 = Struct_1(global1.b, !global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -921f))) - _wgslsmith_f_op_f32(-564f + global1.c)), vec3<i32>(global1.d.x >> (1u % 32u), -65076i, ~(-48513i)) & (select(~global1.d, vec3<i32>(5079i, 2147483647i, global1.d.x), select(vec3<bool>(global1.b, global1.b, true), vec3<bool>(false, global1.b, global1.b), vec3<bool>(global1.a, false, false))) & abs(vec3<i32>(-2147483647i, u_input.b.x, global1.d.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -506f), 1f, arg_0), vec3<f32>(arg_1, arg_1, -1488f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_1, -347f) * vec3<f32>(arg_1, arg_0, arg_1))) - vec3<f32>(_wgslsmith_div_f32(global1.c, -424f), global1.c, _wgslsmith_f_op_f32(ceil(-497f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1006f, 673f))) * vec3<f32>(_wgslsmith_f_op_f32(1509f + arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.c)), -513f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1223f, -309f)))))), global1.a));
    var var_2 = Struct_4(abs(~firstTrailingBit(0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!vec3<bool>(global1.a, true, false))) * _wgslsmith_f_op_f32(f32(-1f) * -282f)) > _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -356f)))))), Struct_1(!all(vec2<bool>(true, true)), global1.b, var_1.x, ~_wgslsmith_div_vec3_i32(abs(vec3<i32>(-10409i, u_input.b.x, u_input.b.x)), min(vec3<i32>(u_input.b.x, 20677i, 2419i), vec3<i32>(46420i, 24579i, 1i)))));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x)))));
    return Struct_3(vec3<f32>(-715f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -782f)))), -2207f), 0u, ~select(~vec3<i32>(-2147483647i, u_input.b.x, global1.d.x), countOneBits(var_2.d.d | vec3<i32>(-17343i, -53025i, 33066i)), _wgslsmith_add_u32(1u, var_2.a) > 34344u), Struct_2(var_2.d, vec3<bool>(false, var_2.b, global1.b), var_2.d, vec2<i32>(-u_input.b.x, -2147483647i)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec4<i32>) -> vec3<f32> {
    var var_0 = -7673i;
    var var_1 = u_input.b.x;
    return arg_1.a;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(923f, 794f)), vec2<f32>(-802f, _wgslsmith_f_op_f32(-global1.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, global1.c))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, global1.c) - vec2<f32>(-821f, global1.c))) + vec2<f32>(global1.c, _wgslsmith_f_op_f32(-global1.c))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, global1.c))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1436f, global1.c) * vec2<f32>(global1.c, 572f))))));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1528f, global1.c))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_0.x, var_0.x, global1.c, -1417f)), func_2(global1.c, 2646f), u_input.b)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1587f, global1.c, var_0.x) * vec3<f32>(var_0.x, global1.c, 502f)))))));
    var var_3 = func_2(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_vec3_f32(func_4(vec4<f32>(324f, var_2.x, global1.c, -1106f), Struct_3(var_2, u_input.c, global1.d, Struct_2(Struct_1(var_1, false, var_2.x, u_input.b.wzz), vec3<bool>(var_1, false, global1.a), Struct_1(false, var_1, -125f, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.wx)), u_input.b)).x)), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 828f, global1.c, 1000f)), Struct_3(_wgslsmith_f_op_vec3_f32(-var_2), _wgslsmith_div_u32(u_input.c, 36250u), u_input.b.zyw & global1.d, Struct_2(Struct_1(global1.a, global1.b, var_0.x, global1.d), vec3<bool>(true, false, false), Struct_1(true, global1.a, -1000f, global1.d), u_input.b.zw)), u_input.b)).x), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1241f - -1000f) * var_2.x))));
    var var_4 = vec3<bool>(true, false, var_3.d.b.x && false);
    return 589f;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4) -> Struct_1 {
    var var_0 = ~firstLeadingBit(~abs(vec3<u32>(arg_2.a, 4294967295u, u_input.a)));
    let var_1 = func_2(_wgslsmith_f_op_f32(-535f - func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.c, arg_0.c)) * _wgslsmith_f_op_f32(-arg_0.c)), arg_2.d.c).a.x), 1556f);
    global0 = true && !all(select(var_1.d.b.yy, var_1.d.b.xy, !arg_2.d.b));
    var_0 = ~vec3<u32>(var_0.x, 4294967295u, firstTrailingBit(u_input.c));
    var_0 = vec3<u32>(~_wgslsmith_dot_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(82668u, 10052u), var_0.xx)), ~(~var_0.xz)), ~select(64414u, 1u, arg_2.d.b), 11828u);
    return Struct_1(true, any(var_1.d.b), -662f, _wgslsmith_mult_vec3_i32(vec3<i32>(~firstLeadingBit(arg_0.d.x), -1i, _wgslsmith_clamp_i32(global1.d.x, -arg_0.d.x, arg_0.d.x & -1i)), vec3<i32>(i32(-1i) * -2147483647i, select(arg_2.d.d.x, -4168i, all(vec2<bool>(arg_2.b, false))), -var_1.d.d.x)));
}

fn func_6(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_2(arg_0.d, !vec3<bool>(false || all(vec3<bool>(false, true, true)), arg_0.d.a, !arg_0.d.a), func_5(Struct_1(false | arg_0.d.a, true, -399f, ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, global1.d.x, arg_0.d.d.x), arg_0.d.d)), _wgslsmith_f_op_f32(func_5(arg_0.d, _wgslsmith_f_op_f32(global1.c * 168f), Struct_4(4294967295u, false, 578f, arg_0.d)).c - arg_3.x), arg_0), vec2<i32>(min(u_input.b.x, global1.d.x & arg_0.d.d.x), 10441i));
    global1 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -330f), -481f).d.a;
    let var_1 = arg_0.d.b;
    var var_2 = arg_0.d;
    var var_3 = select(~1i, i32(-1i) * -28764i, var_2.b);
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, var_0.a.c))))), _wgslsmith_f_op_f32(floor(arg_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -630f;
    let var_1 = _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(10228u, 76444u, u_input.c), ~vec3<u32>(u_input.c, 77024u, 0u) >> (~vec3<u32>(4294967295u, u_input.a, 0u) % vec3<u32>(32u))), vec3<u32>(u_input.c, ~u_input.c, 37809u));
    var var_2 = u_input.c;
    var_2 = var_1;
    let var_3 = ~firstLeadingBit(var_1 & 1u);
    var var_4 = func_6(Struct_4(~var_3, any(!(!vec3<bool>(false, global1.b, global1.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.c * -802f), _wgslsmith_f_op_f32(-global1.c), ~u_input.b.x > 27714i)), func_5(Struct_1(any(vec4<bool>(false, global1.b, global1.a, global1.b)), global1.b, 229f, -global1.d), _wgslsmith_f_op_f32(func_1()), Struct_4(~var_3, true, _wgslsmith_f_op_f32(func_3(vec3<bool>(global1.a, global1.b, true))), Struct_1(false, global1.a, 904f, global1.d)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(660f, global1.c, func_5(func_5(Struct_1(global1.b, false, global1.c, u_input.b.zxy), -153f, Struct_4(0u, false, -2149f, Struct_1(global1.b, true, global1.c, vec3<i32>(38146i, u_input.b.x, global1.d.x)))), global1.c, Struct_4(u_input.a, true, 1094f, Struct_1(global1.a, false, global1.c, u_input.b.yyw))).c, _wgslsmith_f_op_f32(-156f + -107f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c - global1.c) * func_2(1091f, global1.c).d.c.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * _wgslsmith_f_op_f32(global1.c + 1075f)), global1.c, global1.c), !vec4<bool>(!global1.a, global1.b, false, u_input.b.x < global1.d.x))), !select(vec2<bool>(false, true), vec2<bool>(true, global1.b), !select(vec2<bool>(true, global1.b), vec2<bool>(false, global1.b), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, -994f, -933f, _wgslsmith_f_op_f32(step(global1.c, 1991f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-123f, global1.c, -739f, -1484f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, global1.c, 340f, global1.c) * vec4<f32>(-908f, global1.c, global1.c, global1.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, global1.c, global1.c, global1.c))))));
    var_2 = 1u;
    var_0 = _wgslsmith_f_op_f32(var_4.a.x + _wgslsmith_f_op_f32(abs(var_4.a.x)));
    var var_5 = Struct_4(0u, func_5(var_4.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a.x + var_4.d.c.c) + var_4.d.c.c), Struct_4(~var_4.b, !all(vec4<bool>(var_4.d.c.b, false, false, false)), 712f, Struct_1(1774f >= global1.c, true, var_4.d.a.c, firstLeadingBit(global1.d)))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -506f)), var_4.d.a);
    let x = u_input.a;
    s_output = StorageBuffer(1807u, _wgslsmith_mod_u32(35837u, ~(min(0u, 69792u) >> (_wgslsmith_clamp_u32(3774u, 81051u, 47547u) % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -426f) * global1.c));
}

