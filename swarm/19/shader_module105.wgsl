struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(-10983i, -13119i, 2147483647i), vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(i32(-2147483648), -38310i, 24279i), vec3<i32>(-1i, 37753i, i32(-2147483648)), vec3<i32>(-71485i, 0i, 2147483647i), vec3<i32>(0i, 2147483647i, -30295i), vec3<i32>(-1i, 0i, -16711i), vec3<i32>(37631i, -1i, -13105i), vec3<i32>(37950i, 44062i, -13169i), vec3<i32>(-50577i, -1i, -1783i), vec3<i32>(2147483647i, 6077i, i32(-2147483648)), vec3<i32>(-1i, 0i, 99021i), vec3<i32>(32552i, -14844i, -4249i), vec3<i32>(6908i, 0i, 21803i), vec3<i32>(0i, -27123i, 30805i), vec3<i32>(-20555i, 50667i, 63286i), vec3<i32>(-4970i, -34667i, 2147483647i), vec3<i32>(1i, i32(-2147483648), 31161i), vec3<i32>(11786i, 16769i, 2147483647i), vec3<i32>(i32(-2147483648), -18385i, 19533i), vec3<i32>(-33643i, 25844i, 17530i));

var<private> global1: f32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -320f), vec3<i32>(u_input.d.x, _wgslsmith_mult_i32(u_input.d.x, ~38260i), select(u_input.d.x, u_input.d.x, true) << (select(4294967295u, abs(u_input.a), false) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(734f - 1043f)) - _wgslsmith_f_op_f32(-233f + _wgslsmith_f_op_f32(max(389f, 1684f))))), -2147483647i);
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, var_0.a, 765f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(796f, var_0.a, var_0.c) * vec3<f32>(-114f, var_0.a, -341f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, 1000f)), vec3<bool>(true, true, true)))) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-697f)) + _wgslsmith_f_op_f32(var_0.c * -1709f)), var_0.c))));
    global1 = var_1.x;
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2190f * -903f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), 124f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f), -814f)))), 1000f);
    let var_2 = var_1.yz;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, var_0.a)) - _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(var_1.x + var_0.a)))), _wgslsmith_f_op_f32(trunc(-102f)));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_4 {
    return Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-802f + arg_0.a.x) - arg_1.x), _wgslsmith_f_op_f32(989f + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.x)))), _wgslsmith_f_op_vec4_f32(arg_0.a * arg_0.a)), ~vec2<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-12343i, u_input.d.x), u_input.d.yz) >> (countOneBits(4294967295u) % 32u)), u_input.d.x);
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> f32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(76667u, arg_0), reverseBits(~vec2<u32>(7234u, arg_0))), abs(firstLeadingBit(_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(47728u, arg_0) << (vec2<u32>(var_0, 17583u) % vec2<u32>(32u)), vec2<u32>(4294967295u, var_0)))));
    var var_2 = min(arg_1.b, vec2<i32>(_wgslsmith_clamp_i32(-(-2147483647i << (0u % 32u)), ~reverseBits(u_input.d.x), -2147483647i), -2147483647i ^ ~arg_1.b.x));
    var var_3 = _wgslsmith_f_op_f32(-arg_1.a.x);
    global0 = array<vec3<i32>, 21>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2065f)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~_wgslsmith_clamp_u32(1u, 4294967295u, 1u), _wgslsmith_dot_vec3_u32(arg_0.a, ~arg_0.a), 4294967295u | min(arg_0.a.x, u_input.b.x), ~(0u >> (1u % 32u))), vec4<u32>(arg_0.a.x >> (u_input.a % 32u), ~_wgslsmith_div_u32(~69865u, arg_0.a.x), ~firstTrailingBit(_wgslsmith_add_u32(arg_0.a.x, u_input.c)), _wgslsmith_sub_u32(arg_0.a.x, 1u)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~u_input.c, func_2(arg_1, vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x + 605f), _wgslsmith_f_op_f32(sign(-1081f)), -551f), arg_0.b))) * _wgslsmith_f_op_f32(floor(func_2(Struct_4(_wgslsmith_f_op_vec4_f32(arg_1.a - arg_1.a), _wgslsmith_sub_vec2_i32(vec2<i32>(-20284i, 1i), vec2<i32>(u_input.d.x, -2147483647i)), reverseBits(arg_0.c.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(357f, arg_1.a.x, 1822f), arg_1.a.zzw)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.x, -551f, 277f), arg_0.b)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(413f, arg_1.a.x, -467f)))).a.x)));
    let var_1 = vec3<bool>(false, any(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, true), false)), !any(vec4<bool>(true, true, arg_0.a.x != u_input.c, true)));
    return arg_0;
}

fn func_5(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_3) -> Struct_4 {
    var var_0 = u_input.d.yxy | vec3<i32>(arg_3.a, select(arg_3.a, ~min(-18991i, arg_0.b.c.x), all(!vec3<bool>(false, false, arg_1.x))), ~arg_0.b.c.x);
    return Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.b.x, arg_0.b.b.x, -1211f, arg_0.b.b.x) - vec4<f32>(100f, arg_0.a.x, arg_0.b.b.x, arg_0.a.x))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_0.a)))), _wgslsmith_div_vec2_i32(vec2<i32>(-var_0.x, ~_wgslsmith_div_i32(1894i, arg_0.b.c.x)), arg_0.b.c), ~min(-1i, firstLeadingBit(func_2(Struct_4(arg_0.a, u_input.d.zx, 11309i), arg_0.b.b, vec3<f32>(arg_0.b.b.x, -218f, arg_0.b.b.x)).b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 21>();
    let var_0 = func_5(Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1084f, -648f, 2160f, 119f))), func_1(Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(29246u, u_input.b.x, u_input.a), vec3<u32>(15664u, 1u, u_input.b.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1039f, -1000f, -384f), vec3<f32>(-311f, 550f, -1171f))), firstLeadingBit(u_input.d.yx)), Struct_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(202f, 443f, 1059f, 357f))), u_input.d.zx ^ vec2<i32>(-2147483647i, -8582i), _wgslsmith_mult_i32(-806i, -2490i)))), select(vec2<bool>(true, true), vec2<bool>(true == select(false, false, false), all(vec2<bool>(true, true))), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))), true, Struct_3(-firstTrailingBit(~u_input.d.x)));
    let var_1 = -1690f;
    let var_2 = Struct_5(vec4<f32>(var_1, _wgslsmith_f_op_f32(round(var_0.a.x)), -1164f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1262f, 1173f))))))), func_1(Struct_2(select(vec3<u32>(u_input.c, u_input.c, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 47510u, u_input.a), vec3<u32>(u_input.a, 57572u, 33135u)), vec3<bool>(true, false, false)), func_2(func_5(Struct_5(var_0.a, Struct_2(vec3<u32>(799u, u_input.c, 19128u), var_0.a.wxx, var_0.b)), vec2<bool>(true, false), true, Struct_3(u_input.d.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, -888f, var_0.a.x), var_0.a.yxy), var_0.a.ywx).a.wyz, ~(-vec2<i32>(u_input.d.x, var_0.b.x))), Struct_4(func_5(Struct_5(vec4<f32>(var_1, -481f, -181f, 224f), Struct_2(vec3<u32>(u_input.a, u_input.c, 0u), var_0.a.yzy, u_input.d.xx)), vec2<bool>(false, false), false, Struct_3(0i)).a, ~_wgslsmith_sub_vec2_i32(var_0.b, vec2<i32>(10015i, 11263i)), u_input.d.x & u_input.d.x)));
    let var_3 = _wgslsmith_f_op_f32(func_5(Struct_5(var_2.a, func_1(var_2.b, var_0)), vec2<bool>(true, true), true | any(vec3<bool>(true, false, true)), Struct_3(var_0.b.x)).a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), var_1));
    var var_4 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, 19429i), ~(-u_input.d.xxy << (min(vec3<u32>(u_input.b.x, u_input.a, 16591u), var_2.b.a) % vec3<u32>(32u))));
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(968f, var_2.b.b.x, -1000f, -2029f) * vec4<f32>(var_3, 414f, -390f, 1047f)) - vec4<f32>(var_3, var_2.a.x, var_3, -2772f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-412f, ~50336i);
}

