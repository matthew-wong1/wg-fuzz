struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<vec2<bool>, 15>;

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<bool>(true, true, true), 34352u, 1u), Struct_1(vec3<bool>(true, false, true), 22544u, 52963u), Struct_1(vec3<bool>(true, false, false), 5531u, 4294967295u), Struct_1(vec3<bool>(false, true, false), 1u, 74428u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_2(reverseBits(_wgslsmith_add_vec2_u32(u_input.e.xy, vec2<u32>(_wgslsmith_add_u32(arg_3.b, arg_3.b), 5115u >> (u_input.b % 32u)))));
    let var_1 = firstTrailingBit(-(~_wgslsmith_add_vec3_i32(~vec3<i32>(-1i, 1i, u_input.d), vec3<i32>(u_input.d, -2147483647i, u_input.a) | vec3<i32>(u_input.d, -2147483647i, 1i))));
    let var_2 = arg_1.xz;
    let var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1354f, arg_1.x, true)) * arg_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, 1935f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_2.x)))), var_2.x, var_2.x);
    global2 = array<vec2<bool>, 15>();
    return u_input.e.x;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = ~arg_0.a.x;
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2118f - _wgslsmith_f_op_f32(f32(-1f) * -599f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1657f)), !any(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0, 555f))))))));
    var var_2 = arg_0;
    global3 = array<Struct_1, 4>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1203f)), _wgslsmith_f_op_f32(max(var_0, var_0)))))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = -920f;
    var_0 = _wgslsmith_f_op_f32(func_4(Struct_2(max(vec2<u32>(10759u & arg_0.c, reverseBits(35941u)), u_input.e.yx)), select(func_3(!vec4<bool>(true, true, true, arg_0.a.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-145f, 601f, 1062f, 895f) - vec4<f32>(182f, -476f, -408f, -189f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2260f, -1363f), vec2<f32>(677f, -875f))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e, u_input.e), 3u)]), func_3(select(vec4<bool>(arg_0.a.x, true, arg_0.a.x, false), !vec4<bool>(arg_0.a.x, true, false, false), false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(998f, -506f, 1278f, 561f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(734f, -2237f, 938f, -1000f) - vec4<f32>(396f, 388f, 841f, -530f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2645f, -833f), vec2<f32>(456f, 110f))), global3[_wgslsmith_index_u32(1554u, 4u)]), arg_0.a.x)));
    global1 = array<Struct_1, 3>();
    var var_1 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(~63770u, ~arg_0.c), vec2<u32>(arg_0.b, 0u)) << (~u_input.e.yz % vec2<u32>(32u)));
    let var_2 = ~var_1.a.x;
    return -1792f;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = min(select(select(vec4<u32>(~u_input.b, arg_1.b, 1u, ~1u), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.e.x, arg_1.b, arg_1.b), vec4<u32>(4294967295u, u_input.b, 1u, u_input.e.x), vec4<u32>(8488u, u_input.b, arg_1.c, u_input.e.x)), firstLeadingBit(vec4<u32>(arg_1.c, u_input.b, u_input.b, u_input.e.x))), !any(arg_1.a)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, select(arg_1.b, u_input.b, arg_1.a.x), u_input.b >> (u_input.e.x % 32u)), vec4<u32>(35781u, ~0u, ~u_input.b, 4294967295u)), select(select(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), select(vec4<bool>(true, false, arg_1.a.x, true), vec4<bool>(false, false, arg_1.a.x, true), vec4<bool>(true, true, arg_1.a.x, arg_1.a.x)), !arg_1.a.x), vec4<bool>(true, !arg_1.a.x, true || arg_1.a.x, any(vec2<bool>(arg_1.a.x, true))), vec4<bool>(false, arg_1.a.x, any(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true)), !arg_1.a.x))), firstLeadingBit(~firstTrailingBit(vec4<u32>(51986u, arg_1.b, 41933u, arg_1.c))));
    var var_1 = Struct_2(u_input.e.yz);
    global0 = -289f;
    var var_2 = select(!select(arg_1.a, select(vec3<bool>(true, true, true), arg_1.a, select(arg_1.a, arg_1.a, arg_1.a)), true), !select(arg_1.a, vec3<bool>(arg_1.a.x, true, !arg_1.a.x), arg_1.a), arg_1.a);
    let var_3 = arg_1;
    return _wgslsmith_add_u32(9095u, ~(~_wgslsmith_div_u32(1u, 40016u)));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_clamp_vec3_u32(u_input.e, abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.e.x), vec3<u32>(u_input.e.x, u_input.e.x, 0u)) & _wgslsmith_mult_vec3_u32(u_input.e, vec3<u32>(u_input.b, u_input.e.x, u_input.b))), vec3<u32>(select(u_input.e.x, _wgslsmith_div_u32(14237u << (1u % 32u), max(126061u, u_input.b)), true), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<bool>(true, true, true), u_input.e.x, u_input.b))) - _wgslsmith_f_op_f32(-442f - 682f)), Struct_1(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), u_input.b, 37989u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-732f)) - _wgslsmith_f_op_f32(f32(-1f) * -146f))), _wgslsmith_mult_u32(37028u, u_input.e.x)));
    var var_1 = !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(any(vec4<bool>(true, false, false, false)), any(global2[_wgslsmith_index_u32(u_input.e.x, 15u)]), var_0.x == var_0.x, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    global2 = array<vec2<bool>, 15>();
    var var_2 = global3[_wgslsmith_index_u32(var_0.x << (var_0.x % 32u), 4u)];
    let var_3 = var_0.x;
    return ~0i;
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> vec3<bool> {
    var var_0 = select(select(select(select(vec4<bool>(true, arg_2, arg_2, false), !vec4<bool>(false, arg_2, arg_2, arg_2), arg_2 | arg_2), vec4<bool>(arg_2, all(vec4<bool>(arg_2, true, false, false)), true, true), arg_2), select(select(vec4<bool>(arg_2, true, arg_2, false), vec4<bool>(true, arg_2, arg_2, arg_2), true), vec4<bool>(arg_2, !arg_2, arg_0 != 1i, true), select(vec4<bool>(true, arg_2, arg_2, true), !vec4<bool>(arg_2, arg_2, arg_2, arg_2), true)), true), select(select(select(!vec4<bool>(false, arg_2, arg_2, true), !vec4<bool>(arg_2, false, arg_2, arg_2), arg_2), select(vec4<bool>(arg_2, arg_2, false, true), vec4<bool>(false, arg_2, arg_2, true), !vec4<bool>(arg_2, arg_2, false, arg_2)), vec4<bool>(true, true, !arg_2, arg_2)), vec4<bool>(arg_2, true, true, any(vec4<bool>(true, false, arg_2, arg_2))), !all(vec4<bool>(arg_2, arg_2, arg_2, true))), !vec4<bool>(true, !(0i != arg_0), arg_2, true));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-330f, 596f)), _wgslsmith_f_op_f32(-593f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1475f + -911f) - _wgslsmith_f_op_f32(786f - -394f))))));
    var var_2 = u_input.c;
    global1 = array<Struct_1, 3>();
    var var_3 = Struct_2(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(55115u, 54316u, 20401u, 89673u), vec4<u32>(12481u, u_input.b, 27624u, 4294967295u)) & 1u, 140106u));
    return var_0.zzz;
}

fn func_7(arg_0: vec3<bool>) -> vec3<bool> {
    global3 = array<Struct_1, 4>();
    var var_0 = arg_0.x;
    let var_1 = _wgslsmith_mod_u32(u_input.b, ~3984u);
    var var_2 = Struct_1(vec3<bool>(all(arg_0), false, arg_0.x), u_input.e.x, ~(~9209u));
    let var_3 = Struct_2(vec2<u32>(7305u, ~(~firstTrailingBit(54162u))));
    return vec3<bool>(36444u != ~(var_3.a.x & 68874u), !select(-1i < select(u_input.d, 1i, arg_0.x), false, any(!vec4<bool>(var_2.a.x, arg_0.x, var_2.a.x, false))), true && arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 15>();
    let var_0 = ~_wgslsmith_div_vec3_u32(~(u_input.e ^ vec3<u32>(u_input.e.x, u_input.b, u_input.b)), vec3<u32>(39129u, 1u, 53347u)) | ~(~(~abs(vec3<u32>(1u, u_input.b, 37681u))));
    var var_1 = Struct_1(func_7(func_6(func_1(1i), Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(34987u, u_input.e.x), var_0.xx)), all(vec3<bool>(false, false, false)) && true, abs(u_input.b))), _wgslsmith_mod_u32(var_0.x & 4294967295u, 39427u), 4294967295u);
    global0 = _wgslsmith_f_op_f32(func_2(global3[_wgslsmith_index_u32(var_1.c, 4u)]));
    global2 = array<vec2<bool>, 15>();
    global1 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.x, abs(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_0.x, u_input.b), max(vec3<u32>(u_input.e.x, 1u, 0u), var_0)) << (select(abs(32625u), func_5(-1000f, global3[_wgslsmith_index_u32(var_0.x, 4u)], 291f), false) % 32u), abs(~55518u & select(4294967295u, 21677u, var_1.a.x))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(40940u, 1u, _wgslsmith_sub_u32(var_0.x, u_input.e.x), var_0.x), ~(~vec4<u32>(40617u, var_0.x, var_0.x, var_0.x)), vec4<u32>(firstLeadingBit(1u), firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(15693u, 1u, var_1.b, 556u), vec4<u32>(4294967295u, 21703u, u_input.e.x, var_0.x)), min(u_input.e.x, 51588u))), ~(~vec4<u32>(u_input.b, var_0.x, u_input.e.x, 74523u)) & vec4<u32>(firstTrailingBit(u_input.e.x), 4294967295u, min(4294967295u, u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), u_input.e.zz))), _wgslsmith_div_f32(1705f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1481f)) * _wgslsmith_f_op_f32(max(-1276f, -2322f))))));
}

