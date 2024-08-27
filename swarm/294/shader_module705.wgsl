struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false));

var<private> global1: Struct_2 = Struct_2(vec3<u32>(92407u, 66678u, 0u));

var<private> global2: vec3<u32> = vec3<u32>(1u, 1u, 0u);

var<private> global3: array<vec3<u32>, 5>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = !all(!(!vec4<bool>(arg_3.d, false, arg_3.d, true)));
    global3 = array<vec3<u32>, 5>();
    let var_1 = arg_3;
    var var_2 = var_1;
    var var_3 = any(vec4<bool>(any(!global0[_wgslsmith_index_u32(global2.x, 29u)]), any(!(!vec4<bool>(true, var_2.d, true, true))), var_1.d, false));
    return arg_3.b.x;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_mult_i32(-55308i, ~_wgslsmith_mod_i32(abs(-11191i), _wgslsmith_div_i32(-51280i, 1i))), vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(-451f, -955f), Struct_2(vec3<u32>(1u, 4294967295u, 4294967295u)), arg_0 & arg_0, Struct_1(-2147483647i, vec2<f32>(-1000f, -215f), 64810u, arg_1.x, 0u))), arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1193f) - _wgslsmith_f_op_f32(f32(-1f) * -1468f))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~55259u, _wgslsmith_dot_vec4_u32(vec4<u32>(3571u, 4294967295u, 4294967295u, 0u), vec4<u32>(arg_0, global2.x, 1u, 4294967295u))), ~4294967295u), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(global2.x, 4294967295u), vec2<u32>(1u, 1u))), arg_1.x, abs(0u));
    let var_1 = vec2<i32>(-var_0.a, ~reverseBits(_wgslsmith_clamp_i32(-8266i, -37475i | var_0.a, ~var_0.a)));
    global1 = Struct_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), ~min(vec3<u32>(global2.x, u_input.b, 16635u), u_input.a) ^ reverseBits(global3[_wgslsmith_index_u32(2730u, 5u)]), ~(firstTrailingBit(global1.a) ^ global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 5u)])));
    let var_2 = Struct_2(firstTrailingBit(global1.a));
    global2 = vec3<u32>(arg_0, reverseBits(36509u), ~global1.a.x);
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> vec3<f32> {
    var var_0 = abs(9228i);
    var var_1 = _wgslsmith_div_i32(arg_1.x, arg_1.x) | arg_1.x;
    global1 = Struct_2(abs(global1.a));
    var_1 = ~(-1i);
    var_1 = firstTrailingBit(_wgslsmith_mult_i32(~arg_1.x, arg_1.x));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-355f - 1165f) + _wgslsmith_f_op_f32(select(468f, -1000f, true))), _wgslsmith_f_op_f32(-677f - -1000f), _wgslsmith_f_op_f32(step(765f, -1735f)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-758f, arg_0.x, arg_0.x, arg_0.x))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-483f, 771f, -1000f, -2343f) + vec4<f32>(arg_0.x, arg_0.x, 147f, 1418f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1179f, 425f, arg_0.x) - vec4<f32>(arg_0.x, -1045f, -1152f, arg_0.x))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_3(-1258f, Struct_2(global1.a), arg_1, Struct_1(17399i, arg_0.xz, global1.a.x, true, arg_1))), arg_0.x)))));
    let var_1 = ~(abs(func_2(abs(global1.a.x), vec2<bool>(true, false)).a.x) | arg_1);
    global3 = array<vec3<u32>, 5>();
    let var_2 = Struct_2(~vec3<u32>(~0u, ~(17308u << (u_input.a.x % 32u)), _wgslsmith_mult_u32(0u, ~global2.x)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x);
    return Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, reverseBits(~1914u), u_input.a.x & global2.x), ~(~vec3<u32>(1u, var_2.a.x, 6076u))));
}

fn func_1() -> f32 {
    global3 = array<vec3<u32>, 5>();
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 38667u, u_input.c, 14320u), vec4<u32>(1u, global1.a.x, global2.x, 4294967295u)), vec2<bool>(true, true)), _wgslsmith_mult_vec4_i32(~vec4<i32>(4300i, 28553i, 29099i, -1i), max(vec4<i32>(9405i, -13341i, -2147483647i, 2147483647i), vec4<i32>(1i, 8074i, 14705i, -2147483647i)))))), u_input.a.x >> (u_input.c % 32u));
    var var_1 = vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(-2147483647i), -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(4132i, -2147483647i), vec2<i32>(37709i, -10985i)), reverseBits(2029i))), 2147483647i, abs(35868i), ~2147483647i);
    let var_2 = vec3<i32>(-1i) * -var_1.wwz;
    let var_3 = true;
    return -1205f;
}

fn func_6(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> StorageBuffer {
    global2 = ~(~(~(vec3<u32>(61371u, arg_2.c, global2.x) << (vec3<u32>(arg_2.e, 31203u, 21240u) % vec3<u32>(32u))))) & _wgslsmith_mult_vec3_u32(global1.a, ~(~u_input.a));
    return StorageBuffer(arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(~(i32(-1i) * -2147483647i), _wgslsmith_add_i32(arg_2.a, _wgslsmith_mod_i32(arg_2.a, arg_2.a)), select(arg_2.a, arg_2.a, true)), reverseBits(firstLeadingBit(~vec3<i32>(-1i, arg_2.a, 32258i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1268f, _wgslsmith_f_op_f32(arg_2.b.x * arg_0.x))), arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -220f)), arg_2.a, ~(vec3<u32>(~arg_2.e, 1u, ~u_input.c) ^ vec3<u32>(_wgslsmith_mod_u32(28877u, u_input.a.x), 40260u, ~31027u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = func_6(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1()), 1f, 272f, _wgslsmith_f_op_f32(-824f + _wgslsmith_f_op_f32(ceil(1696f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-890f, -1753f, -393f, 178f), vec4<f32>(671f, 1000f, 647f, 1269f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -525f) - -1387f), Struct_1(~(~(-25374i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1006f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-406f, -187f)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-2143f, 137f), vec2<f32>(-168f, -941f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-503f, -647f) - vec2<f32>(-1000f, -845f)), true))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, global2.x, global2.x, 0u), abs(vec4<u32>(1u, u_input.a.x, u_input.c, global1.a.x))), firstLeadingBit(~vec4<u32>(20454u, 115203u, global1.a.x, 1u))), true, u_input.c), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(321f, 718f) + vec2<f32>(-1153f, 1715f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(343f, -436f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1317f, 1289f) * vec2<f32>(-878f, 562f)) + vec2<f32>(533f, -459f))))));
}

