struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<f32> = vec3<f32>(-1256f, -1398f, -130f);

var<private> global2: f32 = -1000f;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(4294967295u, vec2<f32>(1796f, 292f), vec4<u32>(19800u, 0u, 60488u, 0u), vec4<u32>(4294967295u, 15305u, 1u, 3277u)), Struct_1(4294967295u, vec2<f32>(-1007f, -829f), vec4<u32>(21954u, 124838u, 1u, 67793u), vec4<u32>(50546u, 4294967295u, 12728u, 27544u)), Struct_1(1u, vec2<f32>(-727f, 931f), vec4<u32>(4294967295u, 91681u, 25454u, 4294967295u), vec4<u32>(2114u, 66824u, 76370u, 0u)), Struct_1(4294967295u, vec2<f32>(223f, -1000f), vec4<u32>(40623u, 4294967295u, 4294967295u, 0u), vec4<u32>(5639u, 74006u, 1u, 0u)), Struct_1(80709u, vec2<f32>(-3111f, 234f), vec4<u32>(50065u, 4294967295u, 43812u, 4294967295u), vec4<u32>(4294967295u, 62006u, 62852u, 43985u)));

var<private> global4: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_1(4294967295u, vec2<f32>(366f, 316f), vec4<u32>(1u, 0u, 28737u, 1556u), vec4<u32>(93438u, 73653u, 1u, 16176u)), 958f, vec3<f32>(-361f, -702f, 871f), vec2<f32>(418f, -607f)), Struct_3(Struct_1(15266u, vec2<f32>(-703f, 918f), vec4<u32>(6141u, 0u, 31045u, 17792u), vec4<u32>(1u, 0u, 45056u, 4294967295u)), -916f, vec3<f32>(-812f, 351f, 799f), vec2<f32>(-507f, -1158f)), Struct_3(Struct_1(32817u, vec2<f32>(-877f, -1186f), vec4<u32>(0u, 1702u, 50191u, 0u), vec4<u32>(0u, 45477u, 36944u, 1u)), -1000f, vec3<f32>(954f, -1422f, 288f), vec2<f32>(-1000f, 1000f)), Struct_3(Struct_1(4294967295u, vec2<f32>(497f, 576f), vec4<u32>(25115u, 19962u, 14332u, 13841u), vec4<u32>(4294967295u, 103230u, 10693u, 19181u)), 272f, vec3<f32>(948f, 277f, 350f), vec2<f32>(-539f, 175f)), Struct_3(Struct_1(4294967295u, vec2<f32>(-411f, -466f), vec4<u32>(115336u, 90922u, 0u, 4294967295u), vec4<u32>(1466u, 4294967295u, 1u, 92786u)), 1276f, vec3<f32>(1000f, -852f, 1000f), vec2<f32>(-825f, -738f)), Struct_3(Struct_1(4294967295u, vec2<f32>(687f, -1672f), vec4<u32>(4294967295u, 9423u, 44448u, 15111u), vec4<u32>(4294967295u, 1u, 112u, 0u)), 157f, vec3<f32>(175f, -1000f, 417f), vec2<f32>(-447f, 1015f)), Struct_3(Struct_1(4294967295u, vec2<f32>(-844f, -1000f), vec4<u32>(1u, 46865u, 3911u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u)), -1586f, vec3<f32>(1000f, -259f, -1006f), vec2<f32>(-1123f, -1561f)), Struct_3(Struct_1(8152u, vec2<f32>(-121f, 100f), vec4<u32>(6065u, 1901u, 0u, 4294967295u), vec4<u32>(22300u, 13844u, 7753u, 8316u)), -807f, vec3<f32>(1641f, 1492f, -1872f), vec2<f32>(534f, -512f)), Struct_3(Struct_1(1u, vec2<f32>(-1417f, -2034f), vec4<u32>(0u, 68202u, 12805u, 95402u), vec4<u32>(0u, 7937u, 156794u, 4294967295u)), -351f, vec3<f32>(678f, -1000f, -1514f), vec2<f32>(-109f, 140f)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(1105f - arg_1.b.x), arg_0.a, _wgslsmith_f_op_f32(-127f + 1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(535f, -478f, 414f, -637f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1468f, 1142f, arg_0.a, 1101f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1105f, arg_1.b.x, arg_0.a) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, -1000f, arg_1.b.x, arg_1.b.x), vec4<f32>(114f, arg_0.a, 125f, 936f)))))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(-598f, true, u_input.b.zz), global3[_wgslsmith_index_u32(~4294967295u, 5u)], firstTrailingBit(vec4<u32>(1u, 0u, 4294967295u, 2757u)), select(5791u, u_input.b.x, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(500f, global1.x, -526f, global1.x))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(-2117f * global1.x), _wgslsmith_f_op_f32(global1.x * global1.x), global1.x) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-811f, 421f, 272f, 134f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-448f, global1.x, -1946f, global1.x) * vec4<f32>(global1.x, 741f, global1.x, global1.x)))))), vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global1.x)))), _wgslsmith_f_op_f32(-global1.x))));
    let var_1 = Struct_5(731f, any(vec4<bool>(true, true, true, true)), u_input.b.xz);
    let var_2 = abs(12988i);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x * global1.x), _wgslsmith_f_op_f32(max(var_0.x, global1.x))))), 1780f));
    global0 = max(-reverseBits(_wgslsmith_div_i32(var_2 >> (var_1.c.x % 32u), _wgslsmith_clamp_i32(-2147483647i, var_2, -2147483647i))), -2147483647i << (abs(u_input.b.x) % 32u));
    return ~0u;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global3 = array<Struct_1, 5>();
    global4 = array<Struct_3, 9>();
    var var_0 = global3[_wgslsmith_index_u32(~(~func_2()), 5u)];
    global2 = -1297f;
    let var_1 = Struct_3(Struct_1(_wgslsmith_add_u32(~var_0.d.x, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -1372f))), vec4<u32>(arg_0, ~(var_0.a & 0u), _wgslsmith_dot_vec3_u32(~vec3<u32>(47030u, arg_0, var_0.a), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.d.x, u_input.b.x, 4294967295u), u_input.b)), 0u), firstTrailingBit(var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1790f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_div_f32(var_0.b.x, -1000f))) + _wgslsmith_f_op_f32(482f + -1341f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_5(_wgslsmith_f_op_f32(1914f - _wgslsmith_f_op_f32(-var_0.b.x)), true, var_0.d.xw), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(40003u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0, u_input.b.x), reverseBits(52000u))), 5u)], ~_wgslsmith_mult_vec4_u32(~var_0.c, var_0.d), 0u)).xzw, var_0.b);
    return global3[_wgslsmith_index_u32(firstLeadingBit(var_1.a.a), 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 9>();
    let var_0 = func_1(4294967295u & _wgslsmith_clamp_u32(_wgslsmith_sub_u32(countOneBits(0u), 0u), u_input.b.x, ~34134u));
    var var_1 = select(true, !(!(select(true, false, true) || true)), !(_wgslsmith_f_op_f32(select(-1335f, 124f, any(vec2<bool>(true, true)))) == _wgslsmith_f_op_f32(max(global1.x, 427f))));
    let var_2 = vec2<bool>(any(select(vec3<bool>(true, select(false, false, true), true), vec3<bool>(true, 1085f <= global1.x, false), true)), true);
    let var_3 = func_1(~(~_wgslsmith_add_u32(4294967295u | var_0.a, var_0.c.x & u_input.b.x)));
    global0 = ~39960i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_dot_vec3_i32(min(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, 7283i), vec3<i32>(-2147483647i, -1i, 2147483647i)), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.c, 0i), vec3<i32>(0i, u_input.a, u_input.c)))), -(abs(vec3<i32>(u_input.d.x, u_input.a, u_input.c)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.c), vec3<i32>(-32160i, -1i, u_input.d.x), vec3<i32>(u_input.a, -1i, 8240i)))), u_input.a, -1i, firstLeadingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.d.x), u_input.d)));
}

