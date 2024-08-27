struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, 0i), vec2<i32>(-1i, 14917i), vec2<i32>(-41700i, -25551i), vec2<i32>(-13657i, 80741i), vec2<i32>(6792i, i32(-2147483648)), vec2<i32>(-44783i, -1i), vec2<i32>(-1527i, 1i), vec2<i32>(-57973i, 2147483647i), vec2<i32>(-1i, -33296i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-21653i, 1i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, 18779i), vec2<i32>(58038i, -2419i), vec2<i32>(27491i, i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(17143i, 25112i), vec2<i32>(0i, -1i), vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, -32260i), vec2<i32>(1i, 1i));

var<private> global1: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-520f, -1267f, 696f)) + vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1079f), _wgslsmith_f_op_f32(ceil(-229f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(843f, 1420f, 959f)))))));
    global1 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - var_0.x) * -1697f));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.zx), _wgslsmith_f_op_vec2_f32(select(var_0.yy, vec2<f32>(var_0.x, 1000f), arg_1.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xz)), arg_1.a.zx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -220f) + vec2<f32>(-351f, -314f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), var_0.xy, arg_1.a.yz))) + var_0.xz)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -488f)) + _wgslsmith_f_op_vec2_f32(max(var_0.yy, _wgslsmith_f_op_vec2_f32(-var_0.yx))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: f32) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1256f, 950f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1349f, 822f))) * _wgslsmith_f_op_vec2_f32(func_3(Struct_4(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 24u)]), Struct_3(vec3<bool>(false, true, false), vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, u_input.a))))), any(arg_1.zwz))));
    var var_1 = !(!arg_1.yyy);
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(~u_input.b, 64634u, 62527u), ~(~arg_0.x) << (0u % 32u), arg_0.x, arg_0.x);
    let var_3 = vec4<f32>(1000f, var_0.a.x, arg_2, -705f);
    global0 = array<vec2<i32>, 24>();
    return vec4<u32>(u_input.b, var_2.x, u_input.b, (~_wgslsmith_dot_vec4_u32(arg_0, arg_0) >> (~u_input.b % 32u)) >> (~reverseBits(_wgslsmith_div_u32(arg_0.x, 2442u)) % 32u));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(func_2(~vec4<u32>(4294967295u, 1u, u_input.b, u_input.b), vec4<bool>(true, true, true, true), 1846f), func_2(vec4<u32>(1u, 0u, u_input.b, u_input.b), vec4<bool>(false, false, true, false), -1074f)), reverseBits(~(vec4<u32>(1u, u_input.b, u_input.b, u_input.b) | vec4<u32>(4294967295u, u_input.b, u_input.b, 0u))) & abs((vec4<u32>(0u, 22462u, 11767u, 1u) | vec4<u32>(u_input.b, u_input.b, 43494u, 1u)) ^ (vec4<u32>(u_input.b, u_input.b, u_input.b, 53616u) ^ vec4<u32>(31176u, 1u, 1u, 4294967295u))));
    global0 = array<vec2<i32>, 24>();
    var_0 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(15372u, 65843u, 0u, var_0.x) | func_2(abs(vec4<u32>(13696u, 28652u, 12325u, var_0.x)), vec4<bool>(false, true, true, true), _wgslsmith_f_op_f32(ceil(-253f)))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.b, ~38681u), abs(u_input.b) ^ ~var_0.x, var_0.x, _wgslsmith_add_u32(u_input.b, 0u)), ~firstTrailingBit(~vec4<u32>(u_input.b, u_input.b, 0u, u_input.b))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-381f * _wgslsmith_f_op_f32(1000f + -467f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(24943u, u_input.c.zw), Struct_3(vec3<bool>(false, true, false), vec4<i32>(u_input.a, u_input.c.x, -1i, -1i)))).x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(min(1205f, _wgslsmith_f_op_f32(1030f + 2090f))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), 222f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1523f, -351f, var_1.x), vec3<f32>(-1735f, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(var_1.x, -141f, var_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(-1000f * var_1.x), _wgslsmith_f_op_f32(139f + var_1.x)), !(u_input.b == 58144u)))));
    return Struct_3(vec3<bool>(true, true, true), min(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, countOneBits(231i), _wgslsmith_add_i32(30942i, u_input.c.x)), vec4<i32>(47044i, u_input.a, u_input.a, abs(u_input.a))), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec3<u32>(~(~u_input.b) | 19794u, ~4294967295u, 38639u);
    var_0 = Struct_3(select(!select(func_1().a, !vec3<bool>(var_0.a.x, false, var_0.a.x), false), func_1().a, vec3<bool>(all(vec4<bool>(true, true, true, true)), var_0.a.x, var_0.a.x)), min(-(vec4<i32>(2147483647i, var_0.b.x, var_0.b.x, 285i) | vec4<i32>(-1i, var_0.b.x, var_0.b.x, -12230i)) | vec4<i32>(_wgslsmith_mult_i32(-17740i, 18779i), 0i, var_0.b.x ^ -2147483647i, abs(-6225i)), vec4<i32>(-1i) * -firstTrailingBit(var_0.b)));
    var var_2 = Struct_1((abs(u_input.a) >> (_wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, var_1.x, 12177u), u_input.b | 26158u) % 32u)) > _wgslsmith_div_i32(var_0.b.x, firstTrailingBit(var_0.b.x)), var_0.a.x | all(!select(vec4<bool>(false, true, var_0.a.x, true), vec4<bool>(var_0.a.x, true, true, var_0.a.x), var_0.a.x)), 33708u, var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2190f)) * -1266f));
    let var_3 = Struct_5(0u, func_1(), !(!(!var_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e) - -3128f));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1569f, 360f, var_2.e, -801f)))))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.d, 1443f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1162f * -471f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.e + 132f), _wgslsmith_f_op_f32(138f + var_2.e)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d, 354f, 571f, var_3.d) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e, 976f, var_3.d, var_3.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d, var_2.e, var_3.d, 1894f)) * vec4<f32>(var_3.d, var_2.e, 1809f, var_3.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_4.yxy * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.e, var_4.x, -106f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(172f)))), _wgslsmith_f_op_f32(abs(-1000f)))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(24007i, _wgslsmith_sub_i32(var_0.b.x, 2147483647i), ~var_3.b.b.x), var_0.b.zwy, vec3<i32>(1i, -1i, 2147483647i)), countOneBits(firstTrailingBit(vec3<i32>(var_3.b.b.x, var_0.b.x, var_0.b.x))), select(!(!var_0.a), !var_0.a, select(vec3<bool>(var_2.b, var_3.c, var_3.b.a.x), var_3.b.a, vec3<bool>(false, false, var_2.a)))), _wgslsmith_mod_vec2_i32(select(vec2<i32>(1i, 0i), firstLeadingBit(var_0.b.zz), vec2<bool>(var_0.a.x, true)), u_input.c.zz), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_4.xy * _wgslsmith_f_op_vec2_f32(vec2<f32>(856f, -1305f) + var_4.ww)))))));
}

