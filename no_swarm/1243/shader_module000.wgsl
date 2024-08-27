struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(998f, _wgslsmith_f_op_f32(1101f - 1341f), true)))))), ~(~0u), countOneBits(abs(countOneBits(0i))));
    let var_1 = _wgslsmith_clamp_i32(var_0.c, var_0.c, firstTrailingBit(-2147483647i));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) + _wgslsmith_f_op_f32(sign(var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * -1552f) + _wgslsmith_f_op_f32(-135f * var_0.a)), all(vec2<bool>(false, true)))), var_0.a, _wgslsmith_f_op_f32(-887f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), -1330f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f + -2554f), var_0.a, _wgslsmith_f_op_f32(1049f - _wgslsmith_f_op_f32(min(-584f, var_0.a))), _wgslsmith_div_f32(-1811f, -117f)) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -938f), _wgslsmith_f_op_f32(-var_0.a), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(max(-794f, _wgslsmith_f_op_f32(var_0.a - 790f))))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, false))) || true));
    var_0 = Struct_1(var_2.x, ~var_0.b, var_1);
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_f32(-480f - -1000f)), u_input.a.x ^ 1u, 0i);
    return vec2<f32>(_wgslsmith_f_op_f32(max(var_0.a, -116f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_0.a + var_2.x))), var_2.x, any(vec3<bool>(true, true, true)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: i32) -> Struct_3 {
    global0 = array<vec4<bool>, 10>();
    var var_0 = arg_2.zy;
    var var_1 = vec4<i32>(50926i, min(arg_3, ~_wgslsmith_mult_i32(arg_3, 2147483647i) << (reverseBits(countOneBits(u_input.a.x)) % 32u)), _wgslsmith_mod_i32(-2749i, arg_3 ^ -_wgslsmith_clamp_i32(-8395i, 2147483647i, 2147483647i)), ~(-2147483647i));
    var var_2 = _wgslsmith_add_u32(0u, arg_2.x << (~arg_0.c.b % 32u));
    var_1 = vec4<i32>(arg_0.b.x, var_1.x, 0i, -2147483647i);
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.c.a))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1378f, -553f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-477f, 207f), vec2<f32>(-867f, 1418f))))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.c.a * arg_0.a), arg_0.a, true))) - arg_0.c.a), Struct_2(arg_0.c.a, _wgslsmith_div_vec2_i32(vec2<i32>(abs(-59644i), arg_0.c.c ^ arg_3), _wgslsmith_clamp_vec2_i32(-var_1.wz, vec2<i32>(254i, -18332i) & arg_0.b, vec2<i32>(var_1.x, arg_0.c.c))), arg_0.c), arg_0.c.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: vec2<i32>) -> f32 {
    let var_0 = select(!all(arg_1.ww), true, arg_1.x);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c, _wgslsmith_f_op_f32(arg_2.b.x - arg_2.c))))), vec2<i32>(arg_0.c.c.c, firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_3.x, arg_3.x), arg_0.c.c.c))), func_2(Struct_2(_wgslsmith_f_op_f32(select(100f, arg_2.b.x, true & arg_1.x)), min(select(vec2<i32>(0i, arg_0.c.c.c), arg_0.c.b, arg_1.x), _wgslsmith_sub_vec2_i32(arg_3, arg_3)), arg_0.c.c), max(vec3<u32>(~41019u, ~49388u, 0u), ~firstTrailingBit(arg_2.d)), ~arg_2.d, arg_2.a.c).c.c);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1504f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))))), arg_0.c.a);
    var var_3 = arg_2;
    var var_4 = arg_0;
    return _wgslsmith_f_op_f32(-588f - -466f);
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_4 {
    global0 = array<vec4<bool>, 10>();
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-104f, _wgslsmith_f_op_f32(func_4(func_2(Struct_2(2027f, vec2<i32>(9449i, arg_1), Struct_1(-1000f, 0u, arg_1)), vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u), arg_1), select(vec4<bool>(arg_0, true, true, false), global0[_wgslsmith_index_u32(u_input.a.x, 10u)], false), Struct_4(Struct_1(245f, 30710u, -61946i), vec4<f32>(1218f, -1500f, -593f, 1000f), -744f, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), ~vec2<i32>(arg_1, arg_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -882f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(773f * -484f)))), _wgslsmith_dot_vec2_u32(vec2<u32>(75579u, 46103u), vec2<u32>(select(u_input.a.x >> (1u % 32u), u_input.a.x, false), ~u_input.a.x)), ~arg_1);
    let var_1 = true;
    let var_2 = max(~vec3<u32>(_wgslsmith_clamp_u32(func_2(Struct_2(var_0.a, vec2<i32>(1i, var_0.c), Struct_1(252f, 28064u, -6361i)), vec3<u32>(35125u, 3750u, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), -5315i).c.c.b, _wgslsmith_sub_u32(var_0.b, var_0.b), 4294967295u), min(4294967295u, u_input.a.x) ^ 78180u, 0u), ~abs(select(vec3<u32>(var_0.b, 1u, 0u), vec3<u32>(u_input.a.x, u_input.a.x, var_0.b) << (vec3<u32>(66554u, 98499u, 4294967295u) % vec3<u32>(32u)), !vec3<bool>(arg_0, false, var_1))));
    let var_3 = (var_0.b >= min(~_wgslsmith_clamp_u32(41730u, var_2.x, var_2.x), ~5907u)) || all(vec2<bool>(true, true));
    return Struct_4(func_2(func_2(func_2(Struct_2(936f, vec2<i32>(0i, 1i), var_0), abs(var_2), ~var_2, -29418i).c, vec3<u32>(_wgslsmith_mod_u32(4294967295u, var_2.x), var_0.b, firstLeadingBit(0u)), var_2 | min(var_2, vec3<u32>(var_0.b, u_input.a.x, 1u)), _wgslsmith_clamp_i32(min(-1i, arg_1), -var_0.c, -37825i)).c, vec3<u32>(u_input.a.x, _wgslsmith_div_u32(112718u, 105124u) & var_0.b, 1u), var_2, func_2(func_2(Struct_2(750f, vec2<i32>(1808i, var_0.c), Struct_1(-521f, var_2.x, 0i)), vec3<u32>(4294967295u, var_2.x, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, var_2.x, 5039u), var_2, vec3<u32>(u_input.a.x, u_input.a.x, 56041u)), var_0.c).c, vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.a.x), _wgslsmith_div_u32(var_2.x, 4294967295u), ~var_0.b), ~min(vec3<u32>(var_0.b, 0u, 38502u), vec3<u32>(4294967295u, 38006u, 24290u)), var_0.c).c.c.c).c.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1344f, var_0.a, var_0.a, var_0.a) - vec4<f32>(1023f, var_0.a, 1039f, var_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1431f, var_0.a, 390f, -529f)), !global0[_wgslsmith_index_u32(var_2.x, 10u)])) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a), !global0[_wgslsmith_index_u32(u_input.a.x, 10u)]))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), 1000f, _wgslsmith_f_op_f32(trunc(-1235f)), _wgslsmith_f_op_f32(max(-498f, 2563f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, var_0.a, -100f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-300f)) - 439f), _wgslsmith_clamp_vec3_u32(~(var_2 << (reverseBits(var_2) % vec3<u32>(32u))), ~(~vec3<u32>(1u, var_2.x, var_2.x)), firstTrailingBit(min(var_2, var_2 | var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1271f)))) - _wgslsmith_div_f32(-1642f, -857f)) - 778f));
    global0 = array<vec4<bool>, 10>();
    var var_1 = -599f;
    global0 = array<vec4<bool>, 10>();
    global0 = array<vec4<bool>, 10>();
    var var_2 = func_1(true, _wgslsmith_add_i32(15420i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_2.b.wz))), ~firstTrailingBit(~vec4<u32>(var_2.d.x, 4294967295u, 19197u, 1u)), -1672f);
}

