struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-426f, vec3<bool>(true, false, true), 4294967295u, vec3<u32>(4294967295u, 1u, 4294967295u), -5772i), Struct_1(945f, vec3<bool>(true, false, false), 4294967295u, vec3<u32>(1u, 43349u, 22000u), 28770i), Struct_1(1522f, vec3<bool>(true, false, true), 0u, vec3<u32>(4294967295u, 4294967295u, 4294967295u), 0i), Struct_1(-650f, vec3<bool>(true, true, true), 32673u, vec3<u32>(14838u, 56962u, 46204u), 4595i), Struct_1(692f, vec3<bool>(true, true, false), 0u, vec3<u32>(9125u, 1u, 101878u), 42232i), Struct_1(122f, vec3<bool>(true, true, false), 0u, vec3<u32>(30978u, 0u, 42632u), 28237i), Struct_1(-2766f, vec3<bool>(false, false, false), 0u, vec3<u32>(1u, 4294967295u, 1u), i32(-2147483648)), Struct_1(-1124f, vec3<bool>(true, false, true), 1u, vec3<u32>(34715u, 1u, 1u), 0i), Struct_1(-1000f, vec3<bool>(false, true, false), 40568u, vec3<u32>(1u, 0u, 1u), 0i), Struct_1(-757f, vec3<bool>(false, true, false), 0u, vec3<u32>(91978u, 35207u, 4294967295u), i32(-2147483648)), Struct_1(1612f, vec3<bool>(true, false, true), 20597u, vec3<u32>(25672u, 21675u, 4294967295u), 5429i), Struct_1(-1257f, vec3<bool>(true, true, false), 5690u, vec3<u32>(4294967295u, 89413u, 0u), 0i), Struct_1(-371f, vec3<bool>(true, true, false), 6545u, vec3<u32>(30559u, 4294967295u, 3427u), i32(-2147483648)), Struct_1(-3070f, vec3<bool>(true, false, false), 11676u, vec3<u32>(9417u, 66250u, 9418u), 20714i), Struct_1(-1119f, vec3<bool>(false, true, false), 1u, vec3<u32>(10963u, 31019u, 12906u), 0i), Struct_1(1000f, vec3<bool>(true, false, true), 23309u, vec3<u32>(21563u, 0u, 56226u), i32(-2147483648)), Struct_1(1296f, vec3<bool>(false, true, true), 1u, vec3<u32>(1u, 42436u, 0u), 0i), Struct_1(-1482f, vec3<bool>(false, true, true), 40367u, vec3<u32>(36114u, 17563u, 1u), -1i), Struct_1(-1982f, vec3<bool>(true, true, true), 0u, vec3<u32>(9569u, 34977u, 98793u), 1i), Struct_1(-793f, vec3<bool>(true, true, false), 1u, vec3<u32>(0u, 1u, 1u), i32(-2147483648)), Struct_1(1555f, vec3<bool>(false, false, true), 60170u, vec3<u32>(23982u, 56805u, 1u), 2147483647i), Struct_1(-185f, vec3<bool>(true, false, false), 28803u, vec3<u32>(13707u, 29876u, 8522u), 20871i), Struct_1(844f, vec3<bool>(true, true, true), 75973u, vec3<u32>(9292u, 70488u, 26415u), -81889i), Struct_1(828f, vec3<bool>(false, false, false), 49342u, vec3<u32>(0u, 4294967295u, 72870u), -41759i));

var<private> global1: array<f32, 17>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> vec2<f32> {
    let var_0 = Struct_1(-342f, arg_1, _wgslsmith_mod_u32(u_input.a.x, u_input.b), vec3<u32>(abs(u_input.b) << (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, 49396u, 12169u)), firstLeadingBit(vec3<u32>(u_input.b, u_input.a.x, u_input.a.x))) % 32u), _wgslsmith_add_u32(u_input.b, 1u), select(~u_input.b, _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(39319u, 99058u, u_input.a.x))), true)), arg_0);
    global0 = array<Struct_1, 24>();
    var var_1 = var_0.d.yz;
    var_1 = _wgslsmith_mult_vec2_u32(select(var_0.d.zy, var_0.d.zy, vec2<bool>(true, true)) | (vec2<u32>(var_1.x >> (u_input.a.x % 32u), ~982u) >> (abs(vec2<u32>(var_0.d.x, 6483u)) % vec2<u32>(32u))), select(var_0.d.yy, vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(var_0.d), max(var_0.d, var_0.d)), _wgslsmith_mod_u32(u_input.b, var_1.x)), !select(vec2<bool>(var_0.b.x, true), select(arg_1.xy, arg_1.zz, true), var_0.b.xx)));
    var_1 = u_input.a;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1156f, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]) + vec2<f32>(global1[_wgslsmith_index_u32(0u, 17u)], -766f)))), vec2<f32>(global1[_wgslsmith_index_u32(0u, 17u)], _wgslsmith_f_op_f32(-380f + 453f)))), _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-896f, global1[_wgslsmith_index_u32(u_input.a.x, 17u)])))) * vec2<f32>(-1030f, -874f));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: i32) -> vec3<bool> {
    global1 = array<f32, 17>();
    global1 = array<f32, 17>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.b, 17u)])) * global1[_wgslsmith_index_u32(arg_1.x << (4294967295u % 32u), 17u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-780f, global1[_wgslsmith_index_u32(1u, 17u)]), vec2<f32>(arg_2.a, global1[_wgslsmith_index_u32(arg_1.x, 17u)]))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, -1233f)) + vec2<f32>(arg_2.a, arg_2.a))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-744f, 983f), vec2<f32>(-213f, global1[_wgslsmith_index_u32(arg_1.x, 17u)]), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(360f, arg_2.a), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], -2896f))), arg_0.b)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], arg_2.a), vec2<f32>(arg_2.a, -826f)) + vec2<f32>(arg_2.a, arg_2.a))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_i32(arg_0.c.x, 1i), !vec3<bool>(true, arg_0.b, false)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.a, -484f, _wgslsmith_f_op_f32(trunc(841f)), _wgslsmith_f_op_f32(680f - -1763f))))));
    var var_2 = arg_0.b;
    return select(select(select(!vec3<bool>(true, true, arg_0.b), select(vec3<bool>(true, arg_0.b, true), !vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(arg_0.b, true, arg_0.b)), false), !(!select(vec3<bool>(arg_0.b, true, arg_0.b), vec3<bool>(arg_0.b, false, arg_0.b), true)), vec3<bool>(false, !any(vec3<bool>(arg_0.b, arg_0.b, arg_0.b)), arg_0.b)), !select(vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(true, any(vec2<bool>(true, arg_0.b)), true), arg_3 == arg_2.b), arg_0.b);
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    global0 = array<Struct_1, 24>();
    var var_0 = Struct_1(arg_0.x, vec3<bool>(all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), func_2(Struct_2(vec2<i32>(0i, 13894i), false, vec4<i32>(-2147483647i, -40138i, -1i, -2147483647i)), vec4<u32>(u_input.b, 49350u, 4294967295u, 45882u), Struct_3(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], -15082i), 2147483647i), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -994f)) > arg_0.x), abs(13487u << (u_input.b % 32u)), abs(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(77324u, u_input.a.x, 6889u)), reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 4294967295u), vec3<u32>(u_input.b, u_input.a.x, u_input.b))))), ~(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(24360i, 15103i, 2147483647i), vec3<i32>(1i, -20826i, 24029i)), 40860i) ^ firstLeadingBit(abs(-31088i))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_add_i32(countOneBits(-_wgslsmith_add_i32(-2147483647i, var_0.e)), 21833i << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, var_0.d.x), ~u_input.a.x) % 32u)));
    var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -999f), 1i);
    var_1 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2089f * -211f) - arg_0.x))))), _wgslsmith_clamp_i32(-(~1i), firstLeadingBit(2147483647i), var_1.b));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b & u_input.a.x, _wgslsmith_dot_vec3_u32(~var_0.d, _wgslsmith_sub_vec3_u32(var_0.d, var_0.d)), _wgslsmith_div_u32(var_0.c, reverseBits(u_input.a.x)), 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(19922u, ~max(u_input.a.x, 19935u), 58549u, 1u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(25818u, u_input.b, var_0.d.x, var_0.d.x) >> (vec4<u32>(u_input.b, u_input.a.x, 1u, 0u) % vec4<u32>(32u)), ~vec4<u32>(var_0.d.x, 46869u, u_input.a.x, var_0.c))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    global1 = array<f32, 17>();
    var var_0 = global1[_wgslsmith_index_u32(arg_1.c | ~(~u_input.a.x), 17u)];
    return Struct_3(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-arg_1.a)), arg_1.e | ~34255i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(u_input.b, 17u)], -31653i);
    global1 = array<f32, 17>();
    let var_1 = ~vec4<u32>(u_input.b, max(u_input.a.x, ~u_input.a.x), _wgslsmith_mod_u32(0u, u_input.a.x >> (0u % 32u)), 1u);
    var var_2 = func_4(abs(~58055u), Struct_1(369f, !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), true), _wgslsmith_dot_vec3_u32(var_1.zww, vec3<u32>(func_1(vec3<f32>(global1[_wgslsmith_index_u32(1u, 17u)], var_0.a, -1000f)), abs(63299u), 0u)), countOneBits(var_1.wxw), 1i));
    var var_3 = Struct_1(global1[_wgslsmith_index_u32(~28079u, 17u)], func_2(Struct_2(vec2<i32>(i32(-1i) * -16731i, _wgslsmith_div_i32(var_2.b, 0i)), all(vec3<bool>(false, false, true)), -vec4<i32>(-22230i, -25960i, -30573i, 0i)), vec4<u32>(~firstLeadingBit(u_input.a.x), _wgslsmith_sub_u32(32721u, firstLeadingBit(u_input.a.x)), 1u, min(var_1.x, func_1(vec3<f32>(1106f, 1307f, 1166f)))), func_4(u_input.a.x, Struct_1(var_2.a, vec3<bool>(true, true, true), ~var_1.x, var_1.xyx, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b, var_0.b, var_0.b), vec3<i32>(var_0.b, -2147483647i, var_2.b)))), ~(-2147483647i)), ~5322u, var_1.zwx, ~(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec3_i32(min(abs(vec3<i32>(var_2.b, -2147483647i, 4185i)), -vec3<i32>(var_0.b, var_0.b, 2147483647i)), ~select(vec3<i32>(-2147483647i, 2147483647i, var_2.b), vec3<i32>(1i, 2147483647i, var_2.b), var_3.b.x)), var_1, _wgslsmith_dot_vec3_u32(select(var_1.yyz, ~vec3<u32>(8558u, 0u, 32593u), vec3<bool>(var_2.b < var_2.b, true, true)), vec3<u32>(28083u | _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.d.x, 120278u, 0u), vec3<u32>(4294967295u, 0u, 6583u)), 0u, ~1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 17u)], 126f, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 2239f, -403f) * vec3<f32>(-1156f, var_0.a, var_0.a)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, _wgslsmith_div_f32(var_2.a, -303f), var_3.a) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a, global1[_wgslsmith_index_u32(var_1.x, 17u)], -1465f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(887f, var_3.a, 851f))))))), countOneBits(_wgslsmith_sub_i32(var_0.b, max(-5023i, select(var_3.e, -8544i, var_3.b.x)))));
}

