struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(964f, _wgslsmith_f_op_f32(step(349f, -2207f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(818f, -1418f) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a, 1451f), vec2<f32>(631f, 340f)))))))));
    var var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - arg_0.a) * _wgslsmith_f_op_f32(sign(var_0.a.x)))), _wgslsmith_f_op_f32(round(-1348f))));
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(min(1255f, var_0.a.x)))), _wgslsmith_div_f32(-1000f, arg_0.a)) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(899f * 182f) * _wgslsmith_f_op_f32(-1096f - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))));
    var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.x))), 548f));
    global0 = array<Struct_1, 26>();
    return 1i;
}

fn func_2() -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(1533f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(460f)) - _wgslsmith_f_op_f32(1123f * 646f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(957f, -1102f)) - 293f)))), func_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-372f + 1262f) * _wgslsmith_f_op_f32(532f + 119f)), -2147483647i, _wgslsmith_f_op_f32(-707f - _wgslsmith_f_op_f32(abs(-871f))), max(vec4<i32>(-1i, u_input.c, 47581i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.c, -2147483647i, -2147483647i) ^ vec4<i32>(u_input.c, u_input.a.x, -7664i, u_input.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1545f, -2595f))), _wgslsmith_div_f32(_wgslsmith_div_f32(279f, -237f), 1f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-639f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1219f) + -436f)))), vec4<i32>(0i, ~(-u_input.a.x), u_input.a.x, -53210i | _wgslsmith_mod_i32(_wgslsmith_add_i32(22293i, u_input.a.x), u_input.a.x)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(496f, var_0.a)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(543f, 857f) * vec2<f32>(var_0.c, var_0.c)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -596f)))))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~max(~0u, ~u_input.d), _wgslsmith_sub_u32(44597u, u_input.d)) << (76074u % 32u), 26u)];
    let var_3 = u_input.b;
    global0 = array<Struct_1, 26>();
    return _wgslsmith_mod_i32(-40650i | select(var_2.d, firstLeadingBit(_wgslsmith_mult_i32(u_input.c, 0i)), any(!var_2.e)), -12668i);
}

fn func_4(arg_0: bool, arg_1: i32) -> Struct_4 {
    var var_0 = abs(u_input.e.wxx) ^ _wgslsmith_mult_vec3_u32(u_input.e.yxy, ~countOneBits(u_input.e.zxx));
    global1 = !any(!(!vec4<bool>(false, arg_0, arg_0, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(723f)), _wgslsmith_f_op_f32(f32(-1f) * -743f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1205f, -1439f), vec2<f32>(-457f, -612f)))))));
    var var_2 = _wgslsmith_f_op_f32(-589f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    var var_3 = ~u_input.e;
    return Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(select(-327f, -785f, arg_0))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, -331f), vec2<f32>(-1097f, -977f), false)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)))))));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = func_4(any(vec3<bool>(arg_0 < arg_0, false, false)) && true, _wgslsmith_dot_vec3_i32(-vec3<i32>(func_2(), firstTrailingBit(0i), arg_2.b), -_wgslsmith_add_vec3_i32(~arg_2.d.zwx, _wgslsmith_mod_vec3_i32(u_input.a, arg_2.d.wzz))));
    let var_1 = Struct_1(31072u, u_input.e, true, -1i, select(select(vec4<bool>(-847f > arg_2.c, false, any(vec2<bool>(true, false)), true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), select(false, true, false)), true), vec4<bool>(false, any(vec4<bool>(true, true, true, true)), true, any(vec4<bool>(true, true, true, true))), any(vec4<bool>(false, true, true, true))));
    var var_2 = Struct_4(var_0.a);
    var var_3 = _wgslsmith_add_vec3_i32(-firstTrailingBit(firstLeadingBit(vec3<i32>(-1i, 11680i, var_1.d) | vec3<i32>(u_input.a.x, var_1.d, u_input.c))), vec3<i32>(func_3(arg_2), -8286i, ~var_1.d));
    var_3 = -vec3<i32>(1i, -firstTrailingBit(-18365i), ~(-_wgslsmith_add_i32(-1i, arg_2.b)));
    return Struct_3(Struct_2(1431f, -4052i, -244f, arg_2.d), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -u_input.c), arg_2.d.xz >> (vec2<u32>(22291u, ~var_1.b.x) % vec2<u32>(32u)), countOneBits(arg_2.d.zx | _wgslsmith_mod_vec2_i32(u_input.a.xy, vec2<i32>(var_1.d, 17437i)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_3 {
    global1 = !(-1i < reverseBits(arg_0.a.d.x));
    var var_0 = 0u;
    global0 = array<Struct_1, 26>();
    let var_1 = !select(vec2<bool>(true, true), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true));
    let var_2 = Struct_4(vec2<f32>(arg_0.a.a, arg_1.a.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1593f, _wgslsmith_div_f32(-618f, -332f))) - _wgslsmith_f_op_f32(f32(-1f) * -2276f)), ~(vec2<u32>(38404u, u_input.e.x) ^ ~vec2<u32>(u_input.b, 0u)), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(2235f)), -1576f)), max(-2147483647i, -2804i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-357f))), vec4<i32>(-1i) * -vec4<i32>(0i, 215i, -1i, u_input.c))), func_4(true, u_input.a.x));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a - var_0.a.c) - _wgslsmith_f_op_f32(-var_0.a.a)), func_3(Struct_2(-279f, min(u_input.a.x, 1i), var_0.a.c, var_0.a.d)), -1000f, firstLeadingBit(var_0.a.d)), ~(min(-var_0.a.d.wx, vec2<i32>(-1i, 81277i)) ^ var_0.b));
    var var_2 = true;
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) + 217f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.a.a, 550f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.c)))))) < _wgslsmith_f_op_f32(f32(-1f) * -107f);
    global1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.e.x, firstLeadingBit(~(~43184u))));
}

