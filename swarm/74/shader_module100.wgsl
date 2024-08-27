struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 223f;

var<private> global1: vec3<f32> = vec3<f32>(747f, -468f, 264f);

var<private> global2: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(-695f, -1228f), vec2<f32>(1338f, 1240f), vec2<f32>(-2514f, -902f), vec2<f32>(177f, 1441f), vec2<f32>(186f, -1142f), vec2<f32>(-2294f, 321f), vec2<f32>(1653f, -1000f), vec2<f32>(1117f, 216f), vec2<f32>(1060f, 438f), vec2<f32>(-1693f, -901f), vec2<f32>(-257f, 919f), vec2<f32>(2132f, 1261f), vec2<f32>(1716f, -242f), vec2<f32>(-1000f, -548f), vec2<f32>(156f, -154f), vec2<f32>(-1000f, -2127f), vec2<f32>(1326f, -1000f), vec2<f32>(-581f, 1613f), vec2<f32>(264f, -1000f), vec2<f32>(349f, 1232f), vec2<f32>(-1431f, -948f), vec2<f32>(-486f, 526f), vec2<f32>(1616f, -537f), vec2<f32>(-1131f, -784f), vec2<f32>(-1267f, -763f), vec2<f32>(1032f, -1000f), vec2<f32>(864f, 986f), vec2<f32>(526f, -1000f), vec2<f32>(-771f, -162f), vec2<f32>(-391f, 1000f), vec2<f32>(2535f, -949f), vec2<f32>(472f, -836f));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: u32) -> vec2<i32> {
    let var_0 = Struct_1(countOneBits(u_input.c >> (vec2<u32>(7209u, u_input.d) % vec2<u32>(32u))), vec4<i32>(-(~(-1i)), _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(-12573i, 0i)), -_wgslsmith_div_i32(_wgslsmith_mod_i32(arg_0, arg_0), abs(u_input.c.x)), -48711i | u_input.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 165f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-464f, 195f, -1165f), vec3<f32>(-382f, global1.x, arg_1)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 715f) + _wgslsmith_f_op_f32(998f + arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-855f - arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -1168f))), arg_0, true);
    var var_1 = Struct_1(max(-(-var_0.a << (vec2<u32>(u_input.d, arg_2) % vec2<u32>(32u))), (vec2<i32>(u_input.a.x, var_0.b.x) & countOneBits(u_input.c)) << (u_input.b.zz % vec2<u32>(32u))), _wgslsmith_mod_vec4_i32(var_0.b, firstTrailingBit(var_0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c)), var_0.c)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -1234f, var_0.c.x) * var_0.c) - _wgslsmith_f_op_vec3_f32(-var_0.c))))), 1i, all(!vec3<bool>(var_0.e, !var_0.e, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(var_0.c, var_1.c, !(!select(vec3<bool>(false, true, var_0.e), !vec3<bool>(var_1.e, false, var_1.e), vec3<bool>(var_0.e, var_1.e, var_1.e)))));
    global0 = var_0.c.x;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), -2850f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(839f - _wgslsmith_f_op_f32(-var_2.x)))), var_0, Struct_1(firstTrailingBit(select(-u_input.a.zx, u_input.a.zy | vec2<i32>(var_1.b.x, var_0.d), true)), vec4<i32>(-1i, var_0.a.x, ~var_0.b.x, -17384i), vec3<f32>(-324f, _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(floor(-671f))), -573f), 1i, 0i < u_input.a.x));
    return _wgslsmith_mod_vec2_i32(-max(var_3.b.a, vec2<i32>(_wgslsmith_div_i32(-19790i, var_3.b.d), var_3.c.a.x << (u_input.d % 32u))), _wgslsmith_mult_vec2_i32(firstLeadingBit(var_1.a) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(4445u, u_input.b.x), vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)), select(-var_1.a, _wgslsmith_sub_vec2_i32(-var_0.a, u_input.c), vec2<bool>(var_3.c.e, true))));
}

fn func_2() -> Struct_3 {
    global2 = array<vec2<f32>, 32>();
    let var_0 = max(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(38366u, 1u), u_input.b.xz, false), ~vec2<u32>(0u, 72290u)), select(1u, u_input.d, true)), ~abs(u_input.d));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(round(global1.x)), 282f, 887f);
    let var_1 = Struct_1(func_3(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-363f, _wgslsmith_f_op_f32(-776f + -150f)))), _wgslsmith_dot_vec3_u32(vec3<u32>(min(var_0, u_input.b.x), ~u_input.b.x, firstLeadingBit(50661u)), u_input.b)), vec4<i32>(-1i) * -vec4<i32>(1i, u_input.c.x, 37949i, u_input.a.x >> (38085u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, 705f, 1099f), vec3<f32>(global1.x, -1907f, 1275f))))) - _wgslsmith_div_vec3_f32(vec3<f32>(687f, _wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_f_op_f32(-782f * 141f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) + vec3<f32>(171f, global1.x, global1.x)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1175f, global1.x, 1345f), vec3<f32>(global1.x, global1.x, 1233f), true))))), abs((u_input.c.x ^ -u_input.a.x) | -1i), -424f <= global1.x);
    global2 = array<vec2<f32>, 32>();
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.c, vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(min(global1.x, 579f)), 1000f)))));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = vec2<i32>(u_input.a.x, u_input.c.x ^ _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(-18647i, u_input.c.x, 1032i, u_input.a.x), vec4<i32>(arg_2.a, u_input.a.x, u_input.c.x, arg_2.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(-26061i, 37311i, -21762i, u_input.c.x), firstTrailingBit(vec4<i32>(2147483647i, -2147483647i, u_input.c.x, arg_2.a)))));
    var var_1 = Struct_5(any(!select(select(vec3<bool>(arg_2.d, arg_2.d, arg_3.x), vec3<bool>(arg_0, false, arg_2.d), false), vec3<bool>(true, true, true), false)), u_input.a.x);
    let var_2 = !vec3<bool>(var_1.a, any(select(vec3<bool>(true, arg_0, arg_0), select(vec3<bool>(true, false, var_1.a), vec3<bool>(var_1.a, arg_0, arg_3.x), var_1.a), global1.x == arg_1.x)), !(!arg_0) | true);
    let var_3 = global1.zz;
    global0 = _wgslsmith_f_op_f32(min(var_3.x, 226f));
    return arg_2.b;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_5) -> Struct_1 {
    let var_0 = u_input.d;
    var var_1 = _wgslsmith_div_vec2_u32(u_input.b.yx, vec2<u32>(reverseBits(u_input.b.x), ~0u) ^ u_input.b.yx);
    var var_2 = func_4(true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, 930f, -1165f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 596f, global1.x) - vec3<f32>(global1.x, global1.x, 1000f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-232f, 1229f, -174f)))), true)))), Struct_4(arg_1, func_2(), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 1228f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.x, -812f, 1234f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, 870f, -2173f), vec3<f32>(global1.x, -441f, global1.x), vec3<bool>(true, arg_2.a, arg_2.a))), _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, 483f), vec3<f32>(1000f, 2475f, 320f)))), arg_2.a)), false, u_input.b), vec2<bool>(any(vec3<bool>(any(vec2<bool>(true, arg_2.a)), !arg_2.a, !arg_2.a)), arg_2.a));
    var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1383f), _wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(round(global1.x)))))));
    let var_3 = global1.x;
    return Struct_1(min(~u_input.c, -select(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.x, 1i), vec2<i32>(2147483647i, u_input.c.x), arg_0), vec2<i32>(arg_2.b, -1i), !vec2<bool>(false, arg_2.a))), select(vec4<i32>(u_input.a.x, countOneBits(arg_0.x), i32(-1i) * -54286i, max(arg_0.x, 16152i)), reverseBits(-vec4<i32>(2147483647i, arg_0.x, arg_0.x, arg_0.x)), !arg_2.a) >> (firstLeadingBit(~(~vec4<u32>(u_input.b.x, 4294967295u, u_input.d, 51718u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(sign(752f)), _wgslsmith_div_f32(471f, 110f)) * vec3<f32>(-1212f, global1.x, -1958f)))), ~arg_0.x, all(!select(!vec4<bool>(false, arg_2.a, arg_2.a, true), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, false), any(vec2<bool>(arg_2.a, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    global0 = 983f;
    let var_1 = func_1(abs(~(-u_input.c)), u_input.c.x, Struct_5(true, firstLeadingBit(0i)));
    var var_2 = u_input.d;
    let var_3 = false;
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(exp2(var_1.c.x)), _wgslsmith_f_op_f32(-global1.x), 300f))), abs(max(vec3<u32>(0u, firstTrailingBit(u_input.d), u_input.b.x), vec3<u32>(u_input.d, 12364u, ~u_input.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-671f - _wgslsmith_f_op_f32(global1.x + -1000f)) * var_4.c.x) - _wgslsmith_f_op_f32(trunc(1352f))));
}

