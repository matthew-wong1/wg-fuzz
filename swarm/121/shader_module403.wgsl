struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<f32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(22932i, 15624i, 2147483647i, 2147483647i), vec4<i32>(47686i, 2147483647i, -5012i, 2147483647i), vec4<i32>(2147483647i, 53410i, -14i, i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -45299i), vec4<i32>(0i, 23635i, -3068i, 60920i), vec4<i32>(35261i, 1i, 1i, -52761i), vec4<i32>(0i, 0i, 1i, -1i), vec4<i32>(27961i, -1i, -8841i, 4495i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -29585i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 2147483647i), vec4<i32>(-36467i, 2147483647i, 1i, -4766i), vec4<i32>(0i, -66497i, 1i, 41641i), vec4<i32>(-48122i, -8595i, 1i, 1i), vec4<i32>(-43545i, 22170i, i32(-2147483648), -1i), vec4<i32>(-1i, i32(-2147483648), -1i, 7797i), vec4<i32>(i32(-2147483648), 99663i, 1i, 12465i), vec4<i32>(1i, -19162i, -1i, 22017i), vec4<i32>(i32(-2147483648), 1i, 3112i, 0i));

var<private> global2: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(1183u, 64652u), vec2<u32>(4294967295u, 1u), vec2<u32>(31219u, 0u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 23023u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u), vec2<u32>(4445u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 24649u), vec2<u32>(60628u, 0u), vec2<u32>(53311u, 44669u), vec2<u32>(8605u, 1u), vec2<u32>(0u, 72060u), vec2<u32>(67834u, 67664u), vec2<u32>(42406u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(35011u, 1u), vec2<u32>(1u, 26886u), vec2<u32>(4294967295u, 20099u), vec2<u32>(0u, 1u), vec2<u32>(10806u, 28557u), vec2<u32>(35430u, 10965u), vec2<u32>(4294967295u, 1u), vec2<u32>(5415u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(101651u, 4294967295u), vec2<u32>(5716u, 68532u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<f32>) -> bool {
    var var_0 = Struct_3(arg_1.a, _wgslsmith_f_op_f32(sign(arg_1.e)));
    let var_1 = ~_wgslsmith_sub_i32(arg_1.a.b.x, u_input.c.x);
    global1 = array<vec4<i32>, 18>();
    var_0 = Struct_3(Struct_1(var_0.a.e.x, var_0.a.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.a.c))))), _wgslsmith_f_op_f32(-arg_3.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(131f * var_0.a.c.x)), var_0.a.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(select(arg_1.d.x, -305f, select(arg_2, true, true))))));
    let var_2 = arg_1;
    return false;
}

fn func_4(arg_0: bool) -> f32 {
    global2 = array<vec2<u32>, 31>();
    let var_0 = Struct_5(u_input.a ^ u_input.b);
    var var_1 = true;
    let var_2 = select(vec4<bool>(arg_0 || !any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), true, true, false), vec4<bool>(true || ((arg_0 || false) != true), true, arg_0, !(u_input.c.x < (i32(-1i) * -2147483647i))), false);
    let var_3 = Struct_1(true, vec3<i32>(1i, i32(-1i) * -global0[_wgslsmith_index_u32(1u, 14u)], ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(7850u, 14303u, 29986u, var_0.a)), vec4<u32>(var_0.a, var_0.a, 0u, u_input.a)), 14u)]), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-582f - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-443f + 294f))))), any(select(select(vec2<bool>(true, arg_0), var_2.yw, var_2.x), var_2.xw, true)) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(995f))) >= -328f), var_2.yxw);
    return _wgslsmith_f_op_f32(var_3.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.c.x, var_3.c.x)))))));
}

fn func_2(arg_0: vec3<f32>) -> vec2<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_3(firstLeadingBit(vec3<u32>(u_input.a, 18887u, u_input.a)), Struct_2(Struct_1(false, vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec2<f32>(arg_0.x, arg_0.x), true, vec3<bool>(true, true, false)), vec4<u32>(1u, u_input.b, u_input.a, u_input.a), Struct_1(false, vec3<i32>(18816i, 2147483647i, global0[_wgslsmith_index_u32(u_input.b, 14u)]), vec2<f32>(1318f, -1176f), true, vec3<bool>(false, false, true)), arg_0.xz, arg_0.x), any(vec4<bool>(false, true, true, false)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, 775f, arg_0.x, arg_0.x))))))), 987f, 1210f);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1207f + 299f), var_0.x, _wgslsmith_div_f32(-484f, arg_0.x))))));
    let var_1 = -abs(countOneBits(_wgslsmith_mult_i32(~u_input.c.x, u_input.c.x)));
    global1 = array<vec4<i32>, 18>();
    var var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(~global2[_wgslsmith_index_u32(u_input.b, 31u)]), ~(vec2<u32>(u_input.b, u_input.a) << (global2[_wgslsmith_index_u32(1915u, 31u)] % vec2<u32>(32u)))), ~(~max(41090u, u_input.b))) >> ((select(vec2<u32>(max(21040u, u_input.a), firstLeadingBit(u_input.b)), global2[_wgslsmith_index_u32(reverseBits(0u), 31u)], u_input.c.x < ~u_input.c.x) & vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.a, 20854u, u_input.a), vec4<u32>(u_input.a, u_input.b, u_input.a, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(20527u, u_input.b, u_input.b, 69709u), vec4<u32>(10548u, 4294967295u, u_input.b, u_input.a))), firstTrailingBit(~u_input.b))) % vec2<u32>(32u));
    return select(!select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), true), any(vec4<bool>(true, true, true, true))), !select(vec2<bool>(false, 4294967295u > u_input.b), vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>(true, true)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false)), any(vec4<bool>(false, false, true, true))), vec2<bool>(func_3(countOneBits(vec3<u32>(var_2.x, 4294967295u, 4294967295u)), Struct_2(Struct_1(false, vec3<i32>(-1307i, 17910i, global0[_wgslsmith_index_u32(var_2.x, 14u)]), var_0.xx, true, vec3<bool>(true, false, false)), vec4<u32>(1u, u_input.a, 5969u, 59424u), Struct_1(true, vec3<i32>(0i, global0[_wgslsmith_index_u32(var_2.x, 14u)], u_input.c.x), vec2<f32>(arg_0.x, arg_0.x), false, vec3<bool>(false, true, false)), var_0.zz, var_0.x), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(378f, -1172f, var_0.x, var_0.x) - vec4<f32>(-553f, 1204f, 958f, 960f))), true)));
}

fn func_1(arg_0: i32) -> vec2<bool> {
    return select(select(vec2<bool>(true, true), func_2(vec3<f32>(_wgslsmith_div_f32(-167f, -308f), _wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(-2346f - -1000f))), true), select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false), true), vec2<bool>(true, true)), !vec2<bool>(all(vec3<bool>(true, false, false)), select(false, false, false)), !select(true, false, false) | (min(u_input.c.x, arg_0) > (arg_0 >> (u_input.a % 32u)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c | vec2<i32>(u_input.c.x >> (abs(firstTrailingBit(18867u)) % 32u), -(u_input.c.x & u_input.c.x) ^ _wgslsmith_mult_i32(firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0[_wgslsmith_index_u32(23483u, 14u)], -15773i), vec3<i32>(global0[_wgslsmith_index_u32(24940u, 14u)], -2147483647i, -33637i))));
    let var_1 = func_1(-1i);
    var var_2 = !(~_wgslsmith_sub_i32(-1i, firstTrailingBit(var_0.x)) != _wgslsmith_clamp_i32(1i, 2147483647i, 1i | _wgslsmith_mult_i32(14873i, u_input.c.x)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(371f, _wgslsmith_f_op_f32(-1f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -274f), -818f, var_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1458f + 315f)))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(2328f)), 1f, func_1(global0[_wgslsmith_index_u32(612u, 14u)]).x)) + _wgslsmith_f_op_f32(func_4(var_1.x)))));
    var_2 = func_3(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, ~u_input.a, u_input.b), vec3<u32>(u_input.a, ~countOneBits(4294967295u), 47368u >> (~u_input.b % 32u))), Struct_2(Struct_1(var_3, abs(vec3<i32>(-2183i, -54830i, -27111i) | vec3<i32>(u_input.c.x, var_0.x, u_input.c.x)), vec2<f32>(1040f, _wgslsmith_f_op_f32(-1000f - -1029f)), !func_3(vec3<u32>(4294967295u, u_input.a, 18035u), Struct_2(Struct_1(var_1.x, vec3<i32>(-2147483647i, -1i, 2147483647i), vec2<f32>(-1640f, -383f), true, vec3<bool>(var_1.x, var_1.x, false)), vec4<u32>(u_input.b, u_input.a, 8970u, u_input.a), Struct_1(false, vec3<i32>(global0[_wgslsmith_index_u32(1u, 14u)], 1i, 2147483647i), vec2<f32>(-743f, 1302f), var_1.x, vec3<bool>(false, var_3, true)), vec2<f32>(982f, -848f), -381f), var_1.x, vec4<f32>(1022f, 1222f, -1000f, 188f)), select(vec3<bool>(true, var_3, true), select(vec3<bool>(true, var_1.x, true), vec3<bool>(true, var_3, true), vec3<bool>(var_3, var_3, var_1.x)), 1i > var_0.x)), (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 5207u, 0u, u_input.b), vec4<u32>(4294967295u, 0u, u_input.a, 4294967295u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, 4294967295u), vec4<u32>(u_input.a, 49412u, u_input.a, 4294967295u)) % vec4<u32>(32u))) << (abs(~vec4<u32>(0u, u_input.a, 1u, u_input.b)) % vec4<u32>(32u)), Struct_1(false, vec3<i32>(u_input.c.x, var_0.x, var_0.x), vec2<f32>(-1000f, -124f), var_3, !select(vec3<bool>(true, var_3, false), vec3<bool>(var_1.x, var_3, var_1.x), var_3)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(1582f)), _wgslsmith_div_f32(781f, -175f))), -688f), var_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(782f, 155f, 2658f, 307f) - vec4<f32>(1000f, -277f, 764f, 1404f))))));
    let var_4 = vec4<u32>(min(abs(~_wgslsmith_mult_u32(u_input.b, u_input.b)), 0u), u_input.a, countOneBits(_wgslsmith_add_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.a, u_input.b), vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.a)))) << (~_wgslsmith_add_u32(u_input.b, u_input.a << (29564u % 32u)) % 32u), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(var_4, _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(var_4.x, 0u, var_4.x, var_4.x)), vec4<u32>(1u, 6240u, 36564u, 19606u)) >> (vec4<u32>(4294967295u, var_4.x << (300u % 32u), 0u, abs(var_4.x)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(441f, -455f))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(783f * 1000f)), _wgslsmith_f_op_f32(step(-905f, 250f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-542f, 201f, -795f), vec3<f32>(973f, -465f, 518f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-317f, -1971f, 102f))))))), _wgslsmith_f_op_f32(func_4(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1279f));
}

