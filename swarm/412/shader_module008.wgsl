struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
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

var<private> global0: array<vec2<f32>, 28>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = array<vec2<f32>, 28>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-473f + -841f), _wgslsmith_f_op_f32(-187f - -208f)))), 105f);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1515f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1824f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f - 1144f), _wgslsmith_f_op_f32(step(-822f, -2326f)), true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(124f, 1000f, -574f)))));
    var_0 = _wgslsmith_f_op_f32(-var_1.x);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, -1211f, -1123f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1742f, 1028f, var_1.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(212f, -348f, 584f))), true)), vec3<bool>(false, true, var_1.x >= var_1.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1090f, -124f, -479f)))))) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), -932f)), -1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_1.x, 1569f, true)))))));
    return ~_wgslsmith_mult_i32(~abs(_wgslsmith_mod_i32(u_input.d, 30511i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-752i, -28982i, u_input.d, u_input.d), -vec4<i32>(32020i, u_input.e, -2147483647i, u_input.d)) | 1i);
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = -_wgslsmith_dot_vec2_i32(vec2<i32>(~(-5846i), -u_input.d), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, func_3()), -vec2<i32>(arg_1.a.d.x, arg_1.a.a.x) & vec2<i32>(arg_1.a.a.x, 0i), vec2<i32>(-arg_1.a.a.x, _wgslsmith_add_i32(u_input.d, -25018i))));
    let var_1 = select(~arg_1.a.b.zy, ~abs(firstTrailingBit(vec2<u32>(1u, arg_1.a.b.x)) ^ vec2<u32>(58780u, arg_1.a.b.x)), firstTrailingBit(50718u | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 41611u, 1u, 41041u), vec4<u32>(0u, 0u, 0u, 1u))) == abs(~reverseBits(4294967295u)));
    let var_2 = !(!(firstTrailingBit(1u) >= _wgslsmith_div_u32(max(84178u, 0u), ~8179u)));
    var_0 = 0i;
    global0 = array<vec2<f32>, 28>();
    return select(arg_1.a.c, arg_1.a.c, !(!select(select(arg_1.a.c, arg_1.a.c, var_2), !arg_1.a.c, false)));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: i32, arg_3: vec4<f32>) -> vec4<u32> {
    var var_0 = Struct_5(-1i, (~abs(arg_2) << (u_input.b % 32u)) > 63028i, select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), true), func_2(~u_input.c, Struct_2(Struct_1(vec2<i32>(arg_2, u_input.e), u_input.a, vec4<bool>(false, false, true, true), vec2<i32>(u_input.d, u_input.d), vec2<bool>(true, true)))), vec4<bool>(!all(vec4<bool>(true, false, false, true)), true, any(vec2<bool>(true, true)), !select(true, true, true))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.ywz, vec3<f32>(arg_3.x, -1453f, arg_1))), _wgslsmith_f_op_vec3_f32(select(arg_0.wzz, vec3<f32>(965f, 660f, -1193f), var_0.c.ywx)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(248f, arg_3.x, -383f)))))), Struct_2(Struct_1(_wgslsmith_add_vec2_i32(~vec2<i32>(9134i, u_input.d), firstLeadingBit(vec2<i32>(-11080i, 37027i))), _wgslsmith_mod_vec3_u32(min(u_input.a, vec3<u32>(u_input.c, 36508u, 11702u)), _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.c, u_input.b, 27836u), vec3<u32>(u_input.c, 1u, 33700u))), select(var_0.c, !var_0.c, !var_0.b), -_wgslsmith_clamp_vec2_i32(vec2<i32>(21697i, 24569i), vec2<i32>(u_input.d, var_0.a), vec2<i32>(var_0.a, u_input.d)), select(var_0.c.wx, var_0.c.yw, vec2<bool>(var_0.b, var_0.c.x)))), 138f, arg_2);
    global0 = array<vec2<f32>, 28>();
    var var_2 = u_input.b <= 1u;
    var var_3 = ((0i == _wgslsmith_sub_i32(48567i, ~var_0.a)) || any(select(func_2(1u, Struct_2(var_1.b.a)).wy, select(vec2<bool>(false, false), var_0.c.xx, var_1.b.a.e.x), false))) == !(select(func_2(0u, var_1.b).x, var_0.c.x, var_0.b) || (_wgslsmith_f_op_f32(abs(653f)) >= _wgslsmith_f_op_f32(select(775f, 1912f, true))));
    return ~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.b.a.b.x, u_input.a.x, var_1.b.a.b.x, 35380u), vec4<u32>(u_input.a.x, u_input.c & u_input.b, 0u, _wgslsmith_add_u32(1u, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_i32(~(~vec4<i32>(i32(-1i) * -1i, -u_input.e, _wgslsmith_mult_i32(5219i, 1i), ~u_input.e)), firstLeadingBit(~(~vec4<i32>(u_input.d, u_input.e, u_input.e, 1i))));
    var var_1 = countOneBits(~vec4<u32>(0u, u_input.b, firstLeadingBit(u_input.a.x), ~4294967295u) ^ countOneBits(vec4<u32>(u_input.c | u_input.c, u_input.c, _wgslsmith_add_u32(0u, 90184u), ~36173u)));
    var_1 = _wgslsmith_sub_vec4_u32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1013f, 851f, -1419f, 479f), vec4<f32>(-454f, -901f, 363f, 1235f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1016f, 383f, -112f))) + vec4<f32>(_wgslsmith_f_op_f32(666f * 642f), _wgslsmith_f_op_f32(f32(-1f) * -557f), _wgslsmith_f_op_f32(round(-874f)), -1286f)), 972f, -(-u_input.e >> (~u_input.a.x % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1209f, -374f, -222f, -1295f)))))), vec4<u32>(var_1.x, 4449u, _wgslsmith_mult_u32(var_1.x << (82310u % 32u), u_input.b), ~(~var_1.x)) & countOneBits(~vec4<u32>(74120u, 23466u, var_1.x, 60439u) >> (vec4<u32>(40028u, 10226u, u_input.c, var_1.x) % vec4<u32>(32u))));
    var var_2 = select(vec2<bool>(true, all(vec2<bool>(all(vec4<bool>(false, true, true, true)), true))), vec2<bool>(true, true), true);
    var_2 = select(!(!(!(!vec2<bool>(var_2.x, var_2.x)))), vec2<bool>(var_2.x || var_2.x, func_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(6748u, 0u, 95689u, 24016u), vec4<u32>(5620u, 30780u, 44966u, 71407u)), Struct_2(Struct_1(var_0.yx, u_input.a, vec4<bool>(false, false, var_2.x, false), var_0.yx, vec2<bool>(false, true)))).x), false);
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -636f), -378f)))), Struct_2(Struct_1(var_0.xw, _wgslsmith_add_vec3_u32(u_input.a, var_1.yzx), select(vec4<bool>(true, var_2.x, false, true), !vec4<bool>(var_2.x, false, var_2.x, var_2.x), select(vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, true, false, var_2.x))), select(vec2<i32>(6744i, u_input.e), -var_0.wz, any(vec4<bool>(true, false, true, false))), !select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, false), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-974f, _wgslsmith_f_op_f32(-1664f * 434f))), -882f, 53778u > _wgslsmith_mult_u32(82344u, u_input.c)))), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(0u ^ _wgslsmith_dot_vec2_u32(var_1.yz, abs(var_1.yw) >> ((var_3.b.a.b.xy ^ vec2<u32>(u_input.b, var_1.x)) % vec2<u32>(32u))));
}

