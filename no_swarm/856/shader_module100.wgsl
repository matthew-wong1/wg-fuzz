struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(-869f, -1137f, -476f), vec3<f32>(1000f, 1062f, 298f), vec3<f32>(-563f, -537f, -1458f), vec3<f32>(380f, -626f, 543f), vec3<f32>(110f, 311f, 2455f), vec3<f32>(-1000f, -229f, -638f), vec3<f32>(331f, -629f, 263f), vec3<f32>(-1028f, -1000f, 584f), vec3<f32>(-1348f, 511f, 948f), vec3<f32>(-1030f, -1722f, -1684f), vec3<f32>(522f, -260f, -243f), vec3<f32>(975f, 405f, 542f), vec3<f32>(-894f, 765f, 1059f), vec3<f32>(-484f, 1000f, -1000f), vec3<f32>(1000f, 900f, -446f), vec3<f32>(-1000f, -413f, -155f), vec3<f32>(218f, -537f, -1057f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    global0 = array<vec3<f32>, 17>();
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(583f, 784f, -807f, -259f), vec4<f32>(-374f, -765f, -1000f, -342f), vec4<bool>(false, false, true, true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(594f, -1955f, -216f, 518f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(106f, 1535f, -283f, -125f))))))));
    var_0 = vec4<f32>(950f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-871f * _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -830f)))), -928f, var_0.x);
    var var_1 = vec4<f32>(-164f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(ceil(-1000f)))), 1160f, false)), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -476f));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(1060f - _wgslsmith_div_f32(var_0.x, -188f)), _wgslsmith_f_op_f32(min(1880f, -873f)), -1000f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_1.x + -1492f), -618f, var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_0.x, 747f, 399f)))), select(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true)), vec4<bool>(true, true, true, true), all(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false)))));
    return countOneBits(1u);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(arg_1, global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(func_3(), u_input.c.x), vec2<u32>(64600u, arg_0.c.x))), 17u)], 2280f);
    var var_1 = vec2<bool>(!all(vec2<bool>(true, true)), !(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))));
    global0 = array<vec3<f32>, 17>();
    var var_2 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, arg_0.c.x, 40098u), vec3<u32>(arg_0.c.x, arg_0.c.x, arg_0.c.x)), reverseBits(_wgslsmith_mult_u32(u_input.c.x, 62589u)) & 13935u);
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-843f + _wgslsmith_f_op_f32(1580f * arg_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(147f, 446f))), var_0.b.yz)), arg_0.d, vec2<u32>(1u, 1u), -113f);
    return Struct_2(arg_1, _wgslsmith_f_op_vec3_f32(sign(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_3.c.x, _wgslsmith_add_u32(arg_0.c.x, ~var_3.c.x)), 17u)])), _wgslsmith_f_op_f32(step(-2809f, _wgslsmith_f_op_f32(629f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-963f))))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = arg_0.a;
    let var_1 = arg_0.a;
    let var_2 = var_0.a.x;
    var_0 = func_2(Struct_3(arg_1.ww, 2010f, ~u_input.c.zy, arg_1.x), Struct_1(~vec4<i32>(firstLeadingBit(var_0.a.x), ~0i, -1i, ~(-1i)), _wgslsmith_dot_vec4_i32(-var_1.a, vec4<i32>(-1i) * -vec4<i32>(-1i, arg_0.a.b, arg_0.a.b, var_1.a.x)))).a;
    var var_3 = vec3<i32>(-max(-select(arg_0.a.b, var_0.a.x, true), countOneBits(u_input.d.x) & _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.a.a.x, u_input.b, 1i), vec4<i32>(var_0.b, 2147483647i, 1i, 46384i))), 1i, _wgslsmith_clamp_i32(var_1.a.x, var_1.b, var_1.a.x));
    return Struct_1(select(select(vec4<i32>(~var_1.a.x, firstLeadingBit(var_1.b), 0i, ~64109i), -(~vec4<i32>(-25797i, -2147483647i, 2147483647i, u_input.b)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false))), var_1.a, !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true)), _wgslsmith_dot_vec3_i32(countOneBits(abs(vec3<i32>(var_3.x, 0i, 11536i)) >> (_wgslsmith_mult_vec3_u32(u_input.c.wyy, u_input.c.wyx) % vec3<u32>(32u))), -vec3<i32>(-15809i << (u_input.c.x % 32u), 1i, -2147483647i)));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<f32>, arg_3: f32) -> vec2<i32> {
    global0 = array<vec3<f32>, 17>();
    let var_0 = Struct_2(func_4(func_2(Struct_3(arg_2.xx, _wgslsmith_f_op_f32(-arg_3), _wgslsmith_sub_vec2_u32(u_input.c.yw, vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(abs(arg_2.x))), Struct_1(vec4<i32>(4970i, -2147483647i, arg_1, arg_1) << (vec4<u32>(u_input.c.x, 4294967295u, 55338u, 0u) % vec4<u32>(32u)), 1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1040f, 811f), _wgslsmith_f_op_f32(sign(361f)), 908f, arg_2.x))), global0[_wgslsmith_index_u32(u_input.c.x, 17u)], arg_3);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1720f, _wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_f_op_f32(step(1003f, 864f)), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), ~(~24742u)), ~vec2<u32>(_wgslsmith_mod_u32(38799u, u_input.c.x), ~u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)))));
    let var_2 = u_input.c.xwz;
    var var_3 = var_0;
    return vec2<i32>(_wgslsmith_dot_vec3_i32(func_4(var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 236f, var_3.b.x, arg_3))).a.yxy, var_3.a.a.yxx), _wgslsmith_div_i32(-64569i, _wgslsmith_mod_i32(516i, max(-3480i, reverseBits(var_0.a.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 17>();
    global0 = array<vec3<f32>, 17>();
    global0 = array<vec3<f32>, 17>();
    var var_0 = -u_input.d;
    var_0 = ~(-vec2<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.b), var_0.x) ^ _wgslsmith_sub_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-15248i, u_input.b), u_input.a)), vec2<i32>(select(u_input.d.x, -15450i, true), 17768i ^ u_input.b)));
    var_0 = abs(~func_1(true, -27948i, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2156f, 1582f, -329f, 300f)), _wgslsmith_div_vec4_f32(vec4<f32>(-334f, -1000f, 160f, 809f), vec4<f32>(-1459f, -1000f, 1403f, -923f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-178f * 543f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(~40135u) >> (u_input.c.x % 32u), u_input.c.x), 17u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.c.x, ~45931u), abs(min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 121988u), vec4<u32>(34096u, u_input.c.x, 5874u, u_input.c.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 99670u, 4565u), u_input.c))));
}

