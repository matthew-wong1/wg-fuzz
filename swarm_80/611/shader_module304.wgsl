struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_4) -> vec4<f32> {
    global0 = !(!(!all(vec2<bool>(true, arg_0.c))));
    var var_0 = abs(vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, 0i), 8352i));
    var_0 = u_input.b.xz;
    global0 = true;
    var var_1 = Struct_3(Struct_2(vec3<i32>(select(3424i, _wgslsmith_sub_i32(-2147483647i, arg_0.a), true || arg_0.c), 1i, var_0.x), Struct_1(arg_0.b ^ _wgslsmith_dot_vec2_u32(u_input.c.ww, u_input.c.xx), abs(-u_input.b.zy), true), arg_0.c, Struct_1(0u, vec2<i32>(arg_0.a, u_input.b.x) | abs(vec2<i32>(arg_0.a, 2147483647i)), all(!vec2<bool>(true, arg_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -277f) - 1f)), abs(var_0.x), vec4<u32>(u_input.a.x << (abs(max(arg_0.b, 4294967295u)) % 32u), 0u, arg_0.b, u_input.c.x), -2147483647i);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-866f, var_1.a.e, var_1.a.e, var_1.a.e), vec4<f32>(var_1.a.e, var_1.a.e, -1812f, -1698f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.e, -426f, var_1.a.e, var_1.a.e) * vec4<f32>(var_1.a.e, var_1.a.e, -309f, -1728f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.e, -790f, -736f, -1420f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(177f, -846f, -202f, var_1.a.e))), !vec4<bool>(true, true, arg_0.c, var_1.a.b.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-451f, 851f, -593f, var_1.a.e)))), !select(select(vec4<bool>(false, arg_0.c, false, var_1.a.c), vec4<bool>(true, arg_0.c, false, var_1.a.c), var_1.a.b.c), !vec4<bool>(arg_0.c, true, var_1.a.b.c, false), arg_0.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -229f), _wgslsmith_f_op_f32(-var_1.a.e), 678f, _wgslsmith_f_op_f32(-1014f - 773f)) + vec4<f32>(_wgslsmith_f_op_f32(1951f * _wgslsmith_f_op_f32(-var_1.a.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.e)), 506f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(279f - -723f)))));
}

fn func_2() -> Struct_2 {
    global0 = true;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1822f, -458f, -2040f, -361f))), vec4<f32>(-100f, 335f, 1102f, -599f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(u_input.b.x, 29691u, true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, 509f, -1356f) * vec4<f32>(766f, 582f, -1243f, 556f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-367f, -326f, 388f, 1927f)))))));
    var var_1 = 11433u;
    let var_2 = Struct_1(1u, vec2<i32>(9245i, _wgslsmith_mod_i32(u_input.b.x, 8024i)), true);
    var_1 = 1u;
    return Struct_2(u_input.b.xxy, var_2, all(select(select(vec3<bool>(var_2.c, false, true), select(vec3<bool>(true, true, var_2.c), vec3<bool>(var_2.c, false, false), var_2.c), vec3<bool>(false, var_2.c, true)), select(!vec3<bool>(var_2.c, var_2.c, true), !vec3<bool>(var_2.c, var_2.c, false), u_input.a.x >= u_input.a.x), var_0.x == var_0.x)), var_2, _wgslsmith_f_op_f32(-var_0.x));
}

fn func_1() -> Struct_2 {
    let var_0 = true;
    global0 = (1000f >= _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(-989f)))) || true;
    let var_1 = Struct_3(func_2(), i32(-1i) * -19468i, countOneBits(vec4<u32>(~3606u, firstTrailingBit(u_input.c.x), u_input.a.x, u_input.c.x)) | ~_wgslsmith_add_vec4_u32(select(vec4<u32>(0u, u_input.a.x, u_input.c.x, u_input.c.x), u_input.c, true), reverseBits(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.a.x))), -1i);
    var var_2 = var_1.a.d;
    let var_3 = var_2.a | firstLeadingBit(_wgslsmith_mod_u32(~var_2.a, 1u) & ~(1669u >> (var_2.a % 32u)));
    return Struct_2(vec3<i32>(-1i) * -(var_1.a.a & vec3<i32>(var_2.b.x, 0i, 0i)), var_1.a.d, false, var_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1041f - var_1.a.e))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_4(-5105i, 15205u, arg_1.b.c != (abs(u_input.b.x) <= -arg_0.a.x));
    let var_1 = _wgslsmith_f_op_f32(-1000f - arg_1.e);
    var var_2 = var_0.b;
    let var_3 = Struct_5(select(abs(vec4<i32>(1i, 17602i, var_0.a, u_input.b.x)) << (vec4<u32>(_wgslsmith_sub_u32(83532u, u_input.c.x), ~var_0.b, 14296u, 5467u) % vec4<u32>(32u)), arg_0.a, var_0.c));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.e), _wgslsmith_f_op_f32(trunc(404f))), 1032f, -257f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(-40965i, 28850u, var_0.c))).yxy, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-211f, arg_1.e, arg_1.e)))), vec3<bool>(arg_1.d.c, !var_0.c, !var_0.c))))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(314f + -1383f)))) + _wgslsmith_f_op_f32(select(679f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-766f)) * _wgslsmith_f_op_f32(min(-783f, 527f))), true))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -647f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f))));
    let var_1 = u_input.b.wy;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1583f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1178f * 336f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -816f) - _wgslsmith_f_op_f32(-1122f + 254f))))) * _wgslsmith_f_op_f32(496f * 1795f));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -613f), 1724f)), 512f, false))));
    let var_3 = func_4(Struct_5(-_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(49542i, -25043i, 15i, 14710i)), -vec4<i32>(59945i, -31339i, 16045i, var_1.x), min(u_input.b, u_input.b))), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-284f, var_3.e))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.e, -405f)) - var_2), 1070f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.e, var_2, var_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_3.e, var_3.e))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_3.e, var_3.e))))) - vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(70145i, 22687u, var_3.b.c))).x, 303f, _wgslsmith_f_op_f32(f32(-1f) * -323f))), ~13749u);
}

