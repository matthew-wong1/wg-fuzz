struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
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

var<private> global0: bool;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: i32) -> u32 {
    let var_0 = Struct_2(Struct_1(1u, all(vec3<bool>(!arg_0, true, true)), -vec3<i32>(firstLeadingBit(arg_2), ~arg_2, ~42870i)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1000f, -636f, arg_0 && false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2098f)) - _wgslsmith_f_op_f32(-1456f * -1032f)) * -377f)), Struct_1(~min(_wgslsmith_mod_u32(arg_1.x, arg_1.x), ~arg_1.x), true, -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.c.x), reverseBits(vec3<i32>(arg_2, 2147483647i, 1i)))), _wgslsmith_dot_vec2_u32(reverseBits(countOneBits(firstTrailingBit(vec2<u32>(arg_1.x, arg_1.x)))), arg_1.zw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(211f, 1000f, -823f, -1594f), vec4<f32>(660f, 367f, 671f, -906f), vec4<bool>(false, true, arg_0, arg_0))), vec4<f32>(-883f, _wgslsmith_f_op_f32(f32(-1f) * -1281f), _wgslsmith_f_op_f32(f32(-1f) * -176f), -852f)))));
    let var_1 = Struct_3(var_0.e.x, var_0.c.c.xx, Struct_2(var_0.c, var_0.b, Struct_1(var_0.d, ~var_0.c.a == 50359u, ~var_0.a.c), 1u, var_0.e), var_0.e.yxx, var_0.a);
    global0 = true;
    var var_2 = _wgslsmith_f_op_f32(max(397f, var_1.c.e.x));
    let var_3 = Struct_2(var_1.e, var_1.d.yy, var_1.e, firstLeadingBit(58586u), vec4<f32>(_wgslsmith_f_op_f32(var_1.c.e.x * -114f), _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a, -299f, var_1.c.a.b)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -194f), any(vec4<bool>(false, true, var_1.e.b, false))))));
    return abs(var_1.e.a);
}

fn func_2() -> bool {
    global0 = true;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1660f), _wgslsmith_f_op_f32(sign(218f)), _wgslsmith_f_op_f32(f32(-1f) * -1959f))))));
    var var_1 = Struct_3(var_0.x, vec2<i32>(reverseBits(_wgslsmith_mod_i32(2760i, -23711i) << (func_3(true, vec4<u32>(50703u, 43831u, 4294967295u, 65136u), 28859i) % 32u)), -2147483647i), Struct_2(Struct_1(abs(13043u), true, ~u_input.c << (vec3<u32>(60047u, 0u, 52166u) % vec3<u32>(32u))), var_0.zy, Struct_1(39824u, true, select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 1i, u_input.a.x), u_input.a.zzz), -u_input.c, vec3<bool>(true, true, true))), firstTrailingBit(51278u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -245f, 1000f, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-205f, var_0.x, var_0.x, -2839f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1365f, var_0.x, -891f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-532f + -868f), -306f, _wgslsmith_f_op_f32(-var_0.x))), vec3<f32>(-530f, -603f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), -835f))), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), false, _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c, min(u_input.c, u_input.c)), vec3<i32>(-u_input.c.x, -2147483647i, u_input.a.x))));
    global0 = var_1.e.b;
    let var_2 = ~u_input.c.x;
    return var_1.e.b;
}

fn func_1() -> u32 {
    global0 = true != func_2();
    var var_0 = _wgslsmith_mult_u32(firstLeadingBit(~(~41279u)), _wgslsmith_mod_u32(select(firstLeadingBit(1u), 52645u, true), 0u));
    var var_1 = Struct_2(Struct_1(4294967295u, all(vec2<bool>(true, any(vec4<bool>(false, false, false, false)))), u_input.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1405f, -1331f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-901f, 952f))))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1165f, -1619f))), vec2<f32>(1f, 1f), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), true)))), Struct_1(62894u, any(vec4<bool>(false, all(vec4<bool>(true, false, false, true)), any(vec2<bool>(true, false)), true)), -u_input.a.wyw), ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 58255u)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(-850f, 883f, any(vec3<bool>(false, false, true)))), 195f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1785f * 419f)), _wgslsmith_f_op_f32(1281f * -250f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(705f, -1000f, 1326f, -395f)))))));
    global0 = any(vec3<bool>(var_1.a.b, !any(select(vec2<bool>(var_1.c.b, false), vec2<bool>(var_1.a.b, var_1.c.b), vec2<bool>(false, var_1.c.b))), true && (var_1.c.b == true)));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.x) * _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(var_1.e.x + -1123f))))), _wgslsmith_f_op_f32(step(834f, _wgslsmith_f_op_f32(trunc(1000f))))));
    return var_1.a.a | 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 4294967295u, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 27314u), vec2<u32>(7397u, 1u)) >> (func_1() % 32u)), true, -_wgslsmith_mult_vec3_i32(vec3<i32>(10414i, 1i, u_input.c.x), vec3<i32>(21983i, 2147483647i, u_input.c.x) ^ u_input.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1967f, 581f) * vec2<f32>(-2439f, 1028f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1103f, 364f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f * 1000f), _wgslsmith_f_op_f32(1875f * -142f)) + vec2<f32>(_wgslsmith_f_op_f32(1176f + 1000f), _wgslsmith_f_op_f32(1126f * -1047f)))), Struct_1(1152u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(830f + 325f) * _wgslsmith_f_op_f32(max(-579f, -818f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-992f)), -307f), firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a.www, u_input.a.wzz), u_input.a.zzz))), 2029u, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(-220f)), -556f, _wgslsmith_f_op_f32(-3020f * _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-157f * 865f)))))));
    let var_1 = Struct_1(0u, true, ~u_input.a.yxx);
    let var_2 = 1159f;
    var var_3 = Struct_2(Struct_1(min(var_0.c.a, var_0.d), any(vec4<bool>(true == var_0.c.b, true, var_0.a.b | var_0.a.b, true)), vec3<i32>(-var_0.a.c.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-54274i, var_0.c.c.x), u_input.b.x), -2147483647i)), var_0.e.xy, Struct_1(~4294967295u, false, -_wgslsmith_mult_vec3_i32(var_1.c ^ u_input.a.wwy, vec3<i32>(u_input.a.x, 0i, var_0.c.c.x) | var_0.c.c)), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(max(var_0.e.x, var_2)), var_2, _wgslsmith_f_op_f32(f32(-1f) * -915f)))));
    global0 = select(!(true & all(select(vec2<bool>(true, var_3.a.b), vec2<bool>(false, var_3.c.b), false))), var_3.a.b, var_3.a.b | ((any(vec4<bool>(var_1.b, false, false, false)) & !var_3.c.b) || false));
    var var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 1503u), countOneBits(4294967295u))), 1u));
}

