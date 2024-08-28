struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<i32> {
    let var_0 = 0u;
    let var_1 = _wgslsmith_div_vec2_i32(-_wgslsmith_mult_vec2_i32(~vec2<i32>(-46882i, 0i), vec2<i32>(firstLeadingBit(40683i), _wgslsmith_add_i32(3689i, 33623i))), select(vec2<i32>(abs(countOneBits(9082i)), 1i), vec2<i32>(1i, 1i), vec2<bool>(true, true)));
    return vec4<i32>(_wgslsmith_add_i32(1i, firstTrailingBit(_wgslsmith_add_i32(firstTrailingBit(0i), var_1.x))), i32(-1i) * -2147483647i, abs(max(-53142i, countOneBits(firstTrailingBit(-1i)))), firstLeadingBit(~firstTrailingBit(abs(var_1.x))));
}

fn func_4(arg_0: Struct_2) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.e.a, -447f, -949f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(462f, arg_0.e.a, 357f))), select(true, true, arg_0.e.a >= arg_0.e.a))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.e.a, arg_0.e.a, arg_0.e.a), vec3<f32>(arg_0.e.a, 108f, arg_0.e.a)))))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.e.a, arg_0.e.a, -397f), vec3<f32>(arg_0.e.a, arg_0.e.a, arg_0.e.a))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1269f, arg_0.e.a, arg_0.e.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e.a, 265f, -1287f) + vec3<f32>(-759f, -488f, arg_0.e.a)), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e.a, 159f, arg_0.e.a) - vec3<f32>(-1207f, -542f, arg_0.e.a)), vec3<f32>(arg_0.e.a, -1079f, arg_0.e.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.a, arg_0.e.a, 884f)))));
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(select(u_input.a.xzy, vec3<u32>(arg_0.b.x, 44022u, u_input.d.x) ^ max(vec3<u32>(4294967295u, 25221u, u_input.d.x), vec3<u32>(4294967295u, 22881u, 1u)), true), u_input.a.xwz), arg_0.b);
    let var_2 = !(!vec3<bool>(true, any(vec2<bool>(true, false)), true));
    let var_3 = arg_0.e.a;
    var var_4 = u_input.d;
    return abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-(i32(-1i) * -8890i), _wgslsmith_mod_i32(-2147483647i, arg_0.d)), max(select(vec2<i32>(-51435i, arg_0.a), ~vec2<i32>(arg_0.e.b, -15299i), select(vec2<bool>(var_2.x, true), var_2.xy, var_2.xz)), vec2<i32>(-29i, 45619i))));
}

fn func_2() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1577f, 1000f) - 1315f)))));
    var_0 = -1135f;
    var var_1 = func_4(Struct_2(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, -71829i, 28056i)), vec3<i32>(-32875i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -4231i), vec2<i32>(32276i, -7043i)), reverseBits(34037i))), u_input.a.zyx, 4294967295u, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(func_3(), ~vec4<i32>(-1i, -1i, -38776i, 1i)), select(~vec4<i32>(-1i, -12485i, 2147483647i, -35021i), vec4<i32>(1i, 1i, 1i, 1i), false)), Struct_1(-2045f, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2436i, -39218i, -1i, -26073i), vec4<i32>(15151i, -2147483647i, -7362i, -1i))))));
    var_1 = vec2<i32>(_wgslsmith_sub_i32(27261i, var_1.x), -var_1.x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(458f)) + -903f));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2032f - 991f) * _wgslsmith_f_op_f32(-295f + 1205f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1035f, -1047f)))), _wgslsmith_f_op_f32(-607f - _wgslsmith_f_op_f32(-747f - -1170f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(2234f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1720f, 291f, 1000f, 1691f), vec4<f32>(-101f, -612f, 431f, -909f)))), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), true)))));
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1117f, arg_1, 198f, 605f) + vec4<f32>(arg_1, arg_1, arg_1, arg_1))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -262f, arg_1) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 950f, -771f) - vec4<f32>(arg_1, -1244f, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-938f, -1405f, -697f, 131f), vec4<f32>(arg_1, 1073f, -1801f, -1762f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, -646f, arg_1, arg_1))) * vec4<f32>(-1702f, -307f, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, -1355f, arg_1, arg_1), vec4<f32>(arg_1, arg_1, 850f, 1000f), arg_0))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, 270f, -1135f, _wgslsmith_f_op_f32(select(586f, -466f, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, -502f)), all(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, true, true, arg_0))))))));
    var var_1 = reverseBits(4294967295u);
    var_1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(0u, u_input.d.x)), firstLeadingBit(u_input.c));
    var var_2 = Struct_1(arg_1, _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, -41272i), -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 30091i), vec2<i32>(0i, 0i))), ~14982i));
    let var_3 = vec4<bool>(true, arg_0, false, true);
    return Struct_2(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(reverseBits(1i), ~func_3().x, -var_2.b), 1i), u_input.a.xxx, _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 4294967295u), 45070u) ^ u_input.d.x, var_2.b, Struct_1(-570f, 0i ^ firstTrailingBit(~var_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-749f * -1634f)))))));
    var_0 = Struct_2(1i, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.b.x, _wgslsmith_add_u32(67410u, u_input.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b.x, 4294967295u, var_0.b.x) << (u_input.a.wzx % vec3<u32>(32u)), vec3<u32>(94179u, 35461u, 19129u)), func_1(true, 791f).b << (_wgslsmith_div_vec3_u32(u_input.a.zwz, vec3<u32>(19701u, 1u, u_input.d.x)) % vec3<u32>(32u))), 4294967295u, _wgslsmith_sub_i32(1i, var_0.d), Struct_1(_wgslsmith_f_op_f32(abs(var_0.e.a)), -1i));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -953f), _wgslsmith_sub_i32(firstLeadingBit(var_0.e.b), func_3().x) | -37178i);
    let var_2 = Struct_2(func_1(true, -1583f).e.b, reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(var_0.b, vec3<u32>(var_0.c, 4294967295u, u_input.c)) << (~u_input.a.xww % vec3<u32>(32u)), vec3<u32>(countOneBits(u_input.d.x), ~u_input.a.x, 65693u | var_0.c))), 44061u, var_1.b, func_1(all(vec3<bool>(true, true, true)), var_1.a).e);
    let var_3 = func_1(!any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), _wgslsmith_f_op_f32(exp2(1f)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.e.a) + var_1.a);
    var var_5 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), var_1.b > -1i)), -816f).e.a);
}

