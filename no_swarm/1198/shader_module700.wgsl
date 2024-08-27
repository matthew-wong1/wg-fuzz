struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(1i, -7828i, 0i), vec3<i32>(2147483647i, 36173i, 33776i), vec3<i32>(-15551i, -1i, -10211i), vec3<i32>(7370i, 15294i, 42772i), vec3<i32>(0i, -3020i, 0i), vec3<i32>(-36746i, -13770i, 0i), vec3<i32>(34946i, 8635i, -1i), vec3<i32>(19194i, i32(-2147483648), 2147483647i), vec3<i32>(66200i, -1i, 39548i), vec3<i32>(i32(-2147483648), 39930i, 1i), vec3<i32>(-1i, -8940i, 2147483647i), vec3<i32>(-1i, 492i, 2147483647i), vec3<i32>(27164i, -4439i, -10788i), vec3<i32>(1424i, -1564i, i32(-2147483648)), vec3<i32>(21303i, 29123i, -56219i), vec3<i32>(-22017i, 1i, -1i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(-1i, 1i, 0i), vec3<i32>(0i, 10747i, -1i), vec3<i32>(48005i, -5765i, 12634i), vec3<i32>(-41177i, -4884i, 2147483647i), vec3<i32>(-19152i, 0i, 8829i), vec3<i32>(-24653i, -1i, -3548i), vec3<i32>(0i, 12315i, 52254i), vec3<i32>(1i, 24413i, -14417i), vec3<i32>(-109705i, -15877i, 42642i), vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(0i, 14827i, 954i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-609f + _wgslsmith_f_op_f32(f32(-1f) * -874f));
    var var_1 = Struct_1(!vec3<bool>(true, !(!arg_1.x), arg_1.x));
    let var_2 = arg_2;
    var var_3 = 132f;
    let var_4 = countOneBits(_wgslsmith_mod_i32(-55136i, arg_2.d));
    return ~_wgslsmith_div_u32(8549u, arg_2.c);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.b, abs(89240u)), _wgslsmith_mult_u32(u_input.a, u_input.b & 48367u)), u_input.d.wx), Struct_1(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), _wgslsmith_div_u32(~_wgslsmith_mult_u32(reverseBits(u_input.d.x), select(u_input.b, u_input.d.x, true)), firstTrailingBit(~22754u)), ~u_input.c);
    var var_1 = true;
    global0 = array<vec3<i32>, 28>();
    var_0 = Struct_2(var_0.a, Struct_1(vec3<bool>(var_0.b.a.x, var_0.c < u_input.b, var_0.b.a.x)), reverseBits(_wgslsmith_add_u32(5987u, firstTrailingBit(u_input.a))), u_input.e);
    var_0 = Struct_2(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), u_input.d.yxz)), ~(u_input.b & func_3(u_input.d.zw, vec4<bool>(var_0.b.a.x, false, var_0.b.a.x, true), Struct_2(4294967295u, Struct_1(vec3<bool>(false, var_0.b.a.x, false)), 0u, var_0.d), var_0.c))), var_0.b, func_3(vec2<u32>(0u, abs(_wgslsmith_sub_u32(4294967295u, 22294u))), !(!vec4<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, false)), Struct_2(var_0.a, Struct_1(var_0.b.a), max(var_0.a, _wgslsmith_mod_u32(20459u, 1u)), 32855i), 1u), 0i);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-359f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1414f) + 1f))));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_2 {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(1150f, -1143f, false)), 990f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-711f, -1000f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(981f, -2075f) - vec2<f32>(-161f, -1226f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(245f, 173f) + vec2<f32>(251f, -1217f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(337f, 245f)))), vec2<f32>(_wgslsmith_f_op_f32(-1257f + -680f), _wgslsmith_f_op_f32(trunc(562f))), _wgslsmith_mod_i32(u_input.e, arg_1) > -914i)), vec2<f32>(-1199f, _wgslsmith_f_op_f32(func_2())))));
    var var_2 = vec3<bool>(false, true, select(!(!any(vec3<bool>(false, true, true))), 0i != (u_input.e >> (_wgslsmith_div_u32(var_0, 15782u) % 32u)), true & select(true, all(vec3<bool>(true, false, false)), any(vec4<bool>(false, false, false, true)))));
    var var_3 = Struct_2(reverseBits(~((var_0 >> (1u % 32u)) & abs(26366u))), Struct_1(select(select(vec3<bool>(var_2.x, false, false), !vec3<bool>(var_2.x, var_2.x, var_2.x), select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x), false)), !(!vec3<bool>(var_2.x, var_2.x, false)), !select(vec3<bool>(false, true, var_2.x), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, false, var_2.x)))), var_0, u_input.c);
    let var_4 = countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.b, u_input.b), 757u, 5264u & u_input.a, firstLeadingBit(9487u)), vec4<u32>(firstTrailingBit(u_input.a), _wgslsmith_dot_vec3_u32(u_input.d.xyy, vec3<u32>(var_3.c, var_3.a, var_0)), firstLeadingBit(1u), var_3.a)));
    return Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~(var_4.wx >> (u_input.d.zx % vec2<u32>(32u))), ~vec2<u32>(4294967295u, var_4.x)), countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(66085u, var_4.x)))), Struct_1(!var_3.b.a), ~var_0, _wgslsmith_dot_vec4_i32(-select(vec4<i32>(-1i, 18653i, var_3.d, 0i) | vec4<i32>(u_input.c, arg_1, 1i, 8390i), vec4<i32>(1i, 0i, 20451i, u_input.e), !var_3.b.a.x), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, arg_1, var_3.d), vec4<i32>(-4136i, -2147483647i, u_input.e, u_input.c)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.e, 1i, -16016i), vec4<i32>(var_3.d, -22969i, arg_0, -1i)), vec4<i32>(var_3.d, 56479i, 1i, -2147483647i) ^ vec4<i32>(0i, arg_1, arg_1, 2147483647i)) >> (u_input.d % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec2<i32>) -> u32 {
    var var_0 = any(select(select(!vec4<bool>(false, arg_1.x, false, arg_1.x), vec4<bool>(true, false, true, arg_1.x), select(select(vec4<bool>(true, arg_1.x, true, false), vec4<bool>(false, false, arg_2.b.a.x, true), true), !vec4<bool>(arg_1.x, arg_2.b.a.x, arg_2.b.a.x, arg_0.b.a.x), any(arg_2.b.a.zz))), select(!select(vec4<bool>(arg_0.b.a.x, true, false, false), vec4<bool>(arg_0.b.a.x, arg_1.x, arg_0.b.a.x, arg_1.x), true), !vec4<bool>(arg_2.b.a.x, false, false, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, arg_0.b.a.x, true, false), false), !vec4<bool>(arg_1.x, arg_1.x, arg_0.b.a.x, arg_2.b.a.x), true)), select(select(!vec4<bool>(arg_1.x, false, arg_0.b.a.x, true), !vec4<bool>(arg_1.x, arg_2.b.a.x, true, arg_0.b.a.x), true), vec4<bool>(arg_3.x < -56598i, !arg_0.b.a.x, !arg_2.b.a.x, !arg_0.b.a.x), ~arg_3.x > -1i)));
    var var_1 = func_1(2147483647i, 4612i).b;
    let var_2 = arg_0.b;
    global0 = array<vec3<i32>, 28>();
    let var_3 = 1u;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(func_4(func_1(1i, firstTrailingBit(~(-2147483647i))), vec2<bool>(true, true), func_1(-19697i, 2147483647i | _wgslsmith_mult_i32(u_input.e, 29638i)), vec2<i32>(reverseBits(i32(-1i) * -27801i), u_input.c)), u_input.b);
    var var_1 = Struct_1(func_1(_wgslsmith_div_i32(reverseBits(16927i), 502i), select(u_input.c, abs(u_input.c << (4294967295u % 32u)), true)).b.a);
    var_0 = vec2<u32>(0u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(0u, var_0.x, var_0.x, 4294967295u)), u_input.b));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(801f + 566f), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(1754f * 1323f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1386f, 314f, 1174f)))))))));
    global0 = array<vec3<i32>, 28>();
    var_0 = vec2<u32>(5938u, var_0.x);
    var var_3 = var_2.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1759f)), _wgslsmith_f_op_f32(abs(var_3.x)), 417f, _wgslsmith_f_op_f32(var_2.x * -1651f)) * vec4<f32>(-603f, var_3.x, -608f, _wgslsmith_f_op_f32(round(907f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_3.x, 849f, 425f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1509f, var_2.x, var_3.x, -619f) - vec4<f32>(890f, -531f, -984f, -1226f))))), _wgslsmith_f_op_vec2_f32(-var_2.yx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.xz - _wgslsmith_f_op_vec2_f32(var_2.xy + vec2<f32>(275f, var_3.x)))));
}

