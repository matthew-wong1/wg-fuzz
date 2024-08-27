struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(-17418i), Struct_3(1i), Struct_3(-31556i), Struct_3(-32720i), Struct_3(i32(-2147483648)), Struct_3(2147483647i), Struct_3(-35661i), Struct_3(2147483647i), Struct_3(9656i));

var<private> global3: bool;

var<private> global4: array<Struct_2, 30>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(min(_wgslsmith_add_u32(68013u, 13112u), ~u_input.a.x), 27309u, u_input.a.x), ~(vec3<u32>(4294967295u | arg_0.c.x, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, arg_0.c.x), vec4<u32>(u_input.a.x, 73352u, 0u, arg_0.c.x))) << (~vec3<u32>(1u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))));
    global1 = arg_0.d;
    var var_1 = Struct_2(!(!vec2<bool>(true, 4294967295u < arg_0.c.x)), 0i, vec2<u32>(_wgslsmith_mult_u32(arg_0.c.x, u_input.a.x) >> (var_0.x % 32u), 1u) | max(~_wgslsmith_mult_vec2_u32(u_input.a, arg_0.c), ~arg_0.c), arg_0.e, Struct_1(vec4<bool>(all(!vec2<bool>(global1.a.x, arg_0.a.x)), all(global1.a) | global1.a.x, global1.a.x, false)));
    var var_2 = -10950i;
    var var_3 = 1463f;
    return var_1.d.a;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = -619f;
    global1 = Struct_1(global1.a);
    let var_1 = global2[_wgslsmith_index_u32(97333u, 9u)];
    let var_2 = any(!(!vec4<bool>(!arg_2.x, true, global0.x != -32766i, false)));
    var var_3 = Struct_3(global0.x & 21950i);
    return Struct_2(arg_3.d.a.zw, _wgslsmith_add_i32(min(arg_3.b, 1i), 0i), _wgslsmith_clamp_vec2_u32(arg_3.c, firstLeadingBit(min(vec2<u32>(23127u, arg_1.x), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_1.x), vec2<u32>(3845u, 4294967295u)))), reverseBits(vec2<u32>(arg_1.x, arg_3.c.x)) << (_wgslsmith_div_vec2_u32(firstTrailingBit(arg_1.wy), arg_1.xw) % vec2<u32>(32u))), Struct_1(!global1.a), arg_3.d);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = min(vec2<u32>(_wgslsmith_clamp_u32(arg_1.c.x, u_input.a.x, u_input.a.x), arg_1.c.x), vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, min(countOneBits(u_input.a.x), abs(0u)), ~u_input.a.x), u_input.a.x));
    let var_1 = vec2<bool>(func_2(arg_1, Struct_3(global0.x)).x, !arg_0.a.x);
    var var_2 = func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-442f, 1670f), vec2<f32>(-1328f, -966f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(573f, 1762f), vec2<f32>(989f, -349f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-340f, 796f), vec2<f32>(-658f, -604f))))))), _wgslsmith_mod_vec4_u32(max(firstTrailingBit(vec4<u32>(0u, arg_1.c.x, arg_0.c.x, var_0.x) ^ vec4<u32>(31723u, 0u, 2708u, u_input.a.x)), vec4<u32>(~arg_0.c.x, reverseBits(arg_0.c.x), var_0.x, 4294967295u & arg_0.c.x)), firstLeadingBit(~(~vec4<u32>(u_input.a.x, 0u, 4294967295u, 1u)))), !arg_0.a, Struct_2(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-993f, -1194f)), ~vec4<u32>(arg_1.c.x, arg_0.c.x, arg_1.c.x, 5342u) & _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, arg_0.c.x, u_input.a.x, 23878u), vec4<u32>(1u, 21340u, var_0.x, 1u)), vec2<bool>(all(arg_3.a.yz), arg_0.a.x), Struct_2(vec2<bool>(true, arg_0.d.a.x), firstLeadingBit(arg_2.x), ~arg_1.c, Struct_1(arg_1.e.a), func_3(vec2<f32>(-1051f, -628f), vec4<u32>(14782u, arg_1.c.x, var_0.x, arg_0.c.x), arg_1.d.a.xz, Struct_2(arg_0.e.a.yw, 0i, arg_1.c, arg_0.d, arg_0.d)).e)).a, arg_1.b, _wgslsmith_add_vec2_u32(var_0, arg_1.c), Struct_1(!vec4<bool>(arg_1.a.x, var_1.x, arg_0.e.a.x, arg_1.e.a.x)), arg_0.d));
    let var_3 = Struct_3(~(~(-(~(-29838i)))));
    let var_4 = max(_wgslsmith_div_vec2_u32(~(~(~arg_1.c)), u_input.a), _wgslsmith_add_vec2_u32(min(vec2<u32>(_wgslsmith_add_u32(1u, 49958u), 0u), min(select(vec2<u32>(21229u, 91189u), vec2<u32>(arg_0.c.x, arg_0.c.x), global1.a.x), firstLeadingBit(arg_1.c))), var_0));
    return func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1546f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_f_op_f32(f32(-1f) * -904f)))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1349f)), 162f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2143f, -397f)))))), abs(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 51256u, 34193u, 98573u), vec4<u32>(6709u, arg_0.c.x, var_2.c.x, 5194u)), vec4<u32>(4661u, abs(arg_0.c.x), _wgslsmith_sub_u32(var_4.x, 84013u), abs(arg_0.c.x)))), arg_3.a.wy, global4[_wgslsmith_index_u32(~arg_1.c.x, 30u)]).d;
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<bool>(global1.a.x, true, !global1.a.x);
    let var_1 = global0.x;
    global3 = false;
    var var_2 = vec4<bool>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(16173u, u_input.a.x, 78130u))) < _wgslsmith_add_u32(_wgslsmith_mult_u32(max(u_input.a.x, u_input.a.x), u_input.a.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(1u, u_input.a.x)), vec2<u32>(4294967295u, 28794u))), global1.a.x, var_0.x, all(select(vec2<bool>(global1.a.x, global1.a.x), vec2<bool>(all(global1.a.zzy), -5315i > global0.x), !(!global1.a.xz))));
    var_2 = !vec4<bool>(true, true, var_0.x, var_0.x);
    return func_4(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(437f, -846f, false)), _wgslsmith_f_op_f32(f32(-1f) * -382f))), ~max(~vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 8933u), vec4<u32>(1037u, 91220u, u_input.a.x, 4294967295u)), vec2<bool>(any(func_2(global4[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)])), 31323u == (0u ^ u_input.a.x)), Struct_2(var_2.wx, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, -1i), vec4<i32>(global0.x, -1i, -2147483647i, -12160i)), global0.x), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 28027u), vec2<u32>(u_input.a.x, u_input.a.x)) << (vec2<u32>(12191u, u_input.a.x) % vec2<u32>(32u)), Struct_1(func_2(global4[_wgslsmith_index_u32(u_input.a.x, 30u)], global2[_wgslsmith_index_u32(6475u, 9u)])), Struct_1(!vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x)))), global4[_wgslsmith_index_u32(firstTrailingBit(~(~u_input.a.x)), 30u)], select(_wgslsmith_mod_vec4_i32(firstLeadingBit(~vec4<i32>(-6099i, -1i, global0.x, -19147i)), ~vec4<i32>(2147483647i, -41284i, -11726i, -16141i) >> (~vec4<u32>(u_input.a.x, 7748u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), vec4<i32>(-1i) * -(~vec4<i32>(2147483647i, -7130i, global0.x, global0.x)), global1.a), func_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(847f, 361f)) + vec2<f32>(-1505f, 509f)))), abs(reverseBits(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), !(!global1.a.wy), Struct_2(select(var_2.zw, !var_0.xx, true), global0.x, vec2<u32>(u_input.a.x, 6682u), Struct_1(vec4<bool>(true, global1.a.x, true, var_0.x)), func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1000f), vec2<f32>(-1689f, -1051f)), ~vec4<u32>(48439u, u_input.a.x, 4294967295u, u_input.a.x), !vec2<bool>(var_0.x, true), Struct_2(global1.a.ww, global0.x, vec2<u32>(u_input.a.x, 9151u), Struct_1(global1.a), Struct_1(global1.a))).e)).e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    var var_1 = func_1();
    var var_2 = func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(ceil(-231f)), _wgslsmith_div_f32(336f, 249f)), vec2<f32>(_wgslsmith_f_op_f32(1569f - -1075f), _wgslsmith_f_op_f32(ceil(924f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1066f, -393f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1457f, -1260f), vec2<f32>(214f, 752f)) - vec2<f32>(519f, -167f)))), vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(13148u, u_input.a.x, u_input.a.x, 3233u), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), abs(vec4<u32>(1u, 4294967295u, 31278u, 14073u))), 1u), global1.a.xy, func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1052f, -1000f) + vec2<f32>(-374f, 664f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-690f, -737f)))), vec4<u32>(1u, 63636u, 154830u, _wgslsmith_mod_u32(firstLeadingBit(1u), u_input.a.x)), !(!(!vec2<bool>(var_1.a.x, global1.a.x))), func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(878f, -232f), _wgslsmith_f_op_vec2_f32(vec2<f32>(2486f, 1038f) + vec2<f32>(1407f, 834f)), global0.x < 25146i)), ~min(vec4<u32>(0u, 4294967295u, u_input.a.x, 0u), vec4<u32>(46543u, 709u, u_input.a.x, 1u)), var_0.xy, Struct_2(!vec2<bool>(true, var_1.a.x), global0.x >> (54273u % 32u), vec2<u32>(36807u, 4294967295u), Struct_1(vec4<bool>(global1.a.x, var_1.a.x, true, var_0.x)), Struct_1(vec4<bool>(false, false, false, true))))));
    let var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(1950f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-748f * 464f)))), _wgslsmith_f_op_f32(2070f - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(780f)))), 1f, 1020f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-654f, 274f)), _wgslsmith_f_op_f32(f32(-1f) * -300f)), 869f, _wgslsmith_f_op_f32(floor(200f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-190f, -1000f, -904f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(107f, 1722f, 122f) * vec3<f32>(-1000f, 604f, 1000f)), select(var_1.a.wxw, global1.a.yzz, var_2.e.a.xxy))))), min(select(var_2.c.x, firstLeadingBit(abs(u_input.a.x)), func_1().a.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, u_input.a.x, 77101u, var_2.c.x), ~vec4<u32>(var_2.c.x, var_2.c.x, 37555u, u_input.a.x), vec4<bool>(false, var_0.x, false, var_0.x)), vec4<u32>(2036u, max(u_input.a.x, 4294967295u), var_2.c.x, u_input.a.x))), _wgslsmith_dot_vec4_i32(-select(vec4<i32>(global0.x, var_2.b, 0i, global0.x) ^ vec4<i32>(4073i, global0.x, -51252i, var_2.b), vec4<i32>(global0.x, var_2.b, var_2.b, -2147483647i) << (vec4<u32>(34799u, 0u, 1u, 36296u) % vec4<u32>(32u)), !var_2.e.a), vec4<i32>(-24558i, 16701i, var_2.b, var_2.b)), _wgslsmith_dot_vec3_i32(max(vec3<i32>(global0.x, 1i, -2320i) << (vec3<u32>(12676u, var_2.c.x, var_2.c.x) % vec3<u32>(32u)), vec3<i32>(global0.x, 1i, 17762i)) >> ((_wgslsmith_div_vec3_u32(vec3<u32>(35603u, 52249u, var_2.c.x), vec3<u32>(u_input.a.x, var_2.c.x, 11434u)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.c.x, u_input.a.x, 11216u), vec3<u32>(u_input.a.x, 65711u, u_input.a.x), vec3<u32>(1u, u_input.a.x, 18160u)) % vec3<u32>(32u))) % vec3<u32>(32u)), -select(vec3<i32>(var_2.b, var_2.b, -1793i), select(vec3<i32>(var_2.b, -66637i, 1i), vec3<i32>(26334i, 0i, var_2.b), false), true)));
}

