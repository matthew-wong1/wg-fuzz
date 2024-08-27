struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: u32) -> vec3<i32> {
    let var_0 = -595f;
    return vec3<i32>(-1i) * -vec3<i32>(2147483647i, _wgslsmith_div_i32(max(-25596i, -16857i), 5674i), -14816i);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: u32) -> f32 {
    let var_0 = abs((_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, -1i, arg_1.x), vec4<i32>(14032i, 2147483647i, arg_2.b.x, 36103i)) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 4176u, u_input.a, 4294967295u), vec4<u32>(1u, 0u, 38486u, 0u)) % vec4<u32>(32u))) | (_wgslsmith_sub_vec4_i32(vec4<i32>(53423i, 0i, arg_1.x, arg_1.x), vec4<i32>(-1i, 1i, arg_1.x, arg_1.x) << (vec4<u32>(u_input.b.x, 0u, 58937u, arg_2.a) % vec4<u32>(32u))) ^ vec4<i32>(arg_2.b.x, 24870i, arg_1.x, arg_1.x & 0i)));
    var var_1 = select(-_wgslsmith_div_vec4_i32(vec4<i32>(~(-1i), 1727i, var_0.x ^ 0i, 1i), var_0), ~(vec4<i32>(-1i) * -firstLeadingBit(var_0)), vec4<bool>(false, true, arg_0.x, arg_0.x));
    let var_2 = arg_0.x;
    var var_3 = !select(!vec3<bool>(!var_2, any(vec3<bool>(true, var_2, false)), any(vec3<bool>(arg_2.d.x, arg_0.x, var_2))), !select(vec3<bool>(var_2, var_2, arg_2.d.x), vec3<bool>(true, false, false), arg_2.c.x <= -2017f), !select(select(vec3<bool>(false, arg_0.x, arg_2.d.x), vec3<bool>(arg_2.d.x, false, false), vec3<bool>(false, false, arg_0.x)), select(vec3<bool>(false, arg_0.x, false), vec3<bool>(arg_0.x, false, true), arg_0.x), true));
    let var_4 = arg_2.c.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-926f * -710f))), _wgslsmith_f_op_f32(arg_2.c.x * _wgslsmith_f_op_f32(-387f + 1627f)))));
}

fn func_2() -> i32 {
    let var_0 = -765f;
    let var_1 = 19096i;
    let var_2 = Struct_1(select(_wgslsmith_sub_u32(~u_input.c, ~(~u_input.c)), 1u, abs(var_1) <= (~var_1 ^ -53863i)), -vec4<i32>(var_1, ~(-1i), firstTrailingBit(_wgslsmith_mult_i32(1i, 47245i)), ~(i32(-1i) * -2241i)));
    var var_3 = Struct_2(_wgslsmith_mult_u32(var_2.a & ~var_2.a, firstLeadingBit((4294967295u & var_2.a) << (reverseBits(var_2.a) % 32u))), var_2.b.xww, vec3<f32>(577f, _wgslsmith_f_op_f32(func_4(vec2<bool>(true, false), _wgslsmith_add_vec3_i32(func_3(var_2.a), _wgslsmith_clamp_vec3_i32(var_2.b.wxw, vec3<i32>(1i, -58655i, var_1), var_2.b.yyy)), Struct_2(u_input.c ^ var_2.a, ~vec3<i32>(2147483647i, 286i, 0i), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, var_0, -1195f), vec3<f32>(1110f, 128f, -302f))), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), ~_wgslsmith_sub_u32(var_2.a, 0u))), var_0), !vec2<bool>(!all(vec2<bool>(true, true)), true));
    var var_4 = var_2;
    return var_3.b.x;
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    var var_0 = firstTrailingBit(~_wgslsmith_sub_vec2_i32(~vec2<i32>(-1i, -47327i), vec2<i32>(arg_2.b.x, -6222i)));
    let var_1 = 1796f;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-var_1), -821f)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, var_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(var_1, var_1))), vec2<f32>(_wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_f32(abs(var_1))))), vec2<f32>(_wgslsmith_f_op_f32(-var_1), var_1))));
    var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(func_3(0u), -vec3<i32>(-2550i, countOneBits(-2147483647i), _wgslsmith_mod_i32(-2147483647i, var_0.x))), var_0.x);
    var_0 = -arg_2.b.xw;
    return select(arg_2.a, 1u, any(vec4<bool>(all(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, false), arg_0)), all(select(vec4<bool>(false, arg_0, true, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), false, select(true, arg_0, arg_0) | (arg_0 && arg_0))));
}

fn func_1(arg_0: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1165f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -720f) - _wgslsmith_f_op_f32(sign(-339f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-408f, 220f), -525f)))))));
    var var_1 = ~firstLeadingBit(func_5(all(vec4<bool>(false, true, arg_0, true)), 1i & func_2(), Struct_1(u_input.a >> (99148u % 32u), select(vec4<i32>(2559i, -21713i, 13594i, -12309i), vec4<i32>(0i, 102384i, 0i, 1i), true)), vec3<i32>(_wgslsmith_div_i32(0i, 1i), _wgslsmith_mult_i32(-1i, 0i), 1i)));
    var var_2 = vec2<bool>(!(!arg_0), !(var_0 > _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(select(var_0, -294f, arg_0))))));
    var_1 = ~_wgslsmith_clamp_u32(countOneBits(u_input.c), 4294967295u, ~5572u);
    var var_3 = _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i)), firstLeadingBit(~vec4<i32>(-1i, 35883i, -21280i, 15820i)) >> (_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(39346u, u_input.b.x, u_input.a, u_input.b.x) << (vec4<u32>(1u, 4294967295u, u_input.b.x, 36763u) % vec4<u32>(32u))), ~(~vec4<u32>(u_input.c, 4294967295u, u_input.b.x, u_input.c))) % vec4<u32>(32u)));
    return vec2<i32>(_wgslsmith_dot_vec3_i32(-var_3.zxz, -vec3<i32>(var_3.x, -1i, 1i)) | abs(_wgslsmith_mult_i32(70903i, _wgslsmith_mult_i32(var_3.x, -31759i))), _wgslsmith_add_i32(-1i, var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec2<bool>(true, true));
    let var_1 = select(_wgslsmith_sub_vec2_i32(vec2<i32>(-5998i << (u_input.a % 32u), ~(-2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(~(-70210i), _wgslsmith_sub_i32(-1i, -10825i)), ~abs(vec2<i32>(-1i, 43380i)))), func_1(!(!var_0)), vec2<bool>(true, true));
    let var_2 = ~vec2<u32>(_wgslsmith_sub_u32(u_input.c, u_input.b.x) | 1u, countOneBits(1u));
    var var_3 = Struct_1(2783u, vec4<i32>(10424i, ~abs(var_1.x), -19008i, ~1i) << (_wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(76583u, 61907u, 20859u, 1u), vec4<u32>(0u, var_2.x, 23439u, 20806u)), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 1u, 80234u, var_2.x)), ~vec4<u32>(0u, 4294967295u, u_input.b.x, 1u), reverseBits(vec4<u32>(30431u, 0u, u_input.a, u_input.a)))) % vec4<u32>(32u)));
    let var_4 = _wgslsmith_f_op_f32(trunc(526f));
    let var_5 = var_0;
    var var_6 = Struct_2(reverseBits(~0u), ~select(var_3.b.zxx, vec3<i32>(abs(var_1.x), _wgslsmith_dot_vec2_i32(var_1, var_1), -1i), !(!var_5)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2162f, -1156f, -370f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(710f, -1485f, 858f), vec3<f32>(-1450f, var_4, 1394f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_4, var_4, var_4))))) + vec3<f32>(-286f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_4, var_4)))), _wgslsmith_f_op_f32(min(var_4, _wgslsmith_f_op_f32(-var_4))))), select(!select(select(vec2<bool>(var_0, var_5), vec2<bool>(false, var_5), vec2<bool>(false, false)), select(vec2<bool>(var_5, var_5), vec2<bool>(var_5, true), var_0), all(vec2<bool>(var_5, var_5))), !(!select(vec2<bool>(false, var_5), vec2<bool>(var_0, true), var_5)), !any(select(vec3<bool>(var_5, false, var_5), vec3<bool>(true, var_5, true), vec3<bool>(var_0, true, var_5)))));
    var var_7 = Struct_2(_wgslsmith_mod_u32(9506u, var_6.a), var_6.b | firstLeadingBit(_wgslsmith_clamp_vec3_i32(func_3(var_3.a), min(vec3<i32>(-2147483647i, -27915i, -15650i), vec3<i32>(-12669i, var_3.b.x, 1i)), var_6.b)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_6.c - vec3<f32>(-824f, var_6.c.x, var_6.c.x)), var_6.c) - var_6.c))), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_7.a, var_3.b, func_1(!var_0 & var_0).x);
}

