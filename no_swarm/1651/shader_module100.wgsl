struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1284f, -485f), _wgslsmith_f_op_f32(floor(-418f)), 506f, -723f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(341f, -100f, -1000f, 504f))))), vec4<f32>(1395f, -1116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(400f + 1053f)))), _wgslsmith_f_op_f32(-1205f + 232f))));
    let var_1 = arg_1.a;
    let var_2 = !select(!vec4<bool>(all(vec2<bool>(arg_1.b, arg_1.b)), true, all(vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b)), all(vec2<bool>(arg_1.b, arg_1.b))), vec4<bool>(true, true, true, true), !arg_1.b);
    var var_3 = var_2.zz;
    let var_4 = all(var_2);
    return true;
}

fn func_2(arg_0: Struct_3) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(u_input.a << (u_input.c % 32u)), func_3(_wgslsmith_mult_vec4_u32(~vec4<u32>(77474u, 65834u, arg_0.b, 33434u), vec4<u32>(u_input.a, 19629u, 28230u, u_input.a) << (~vec4<u32>(33583u, u_input.a, 1u, u_input.c) % vec4<u32>(32u))), Struct_2(Struct_1(~96401u), all(vec4<bool>(arg_0.a.x, true, false, arg_0.a.x)), ~max(vec3<u32>(arg_0.d.x, arg_0.d.x, 4294967295u), vec3<u32>(1u, u_input.c, u_input.c)))), vec3<u32>(~(~u_input.c), 88279u, _wgslsmith_clamp_u32(2146u, abs(u_input.c & 57096u), ~_wgslsmith_add_u32(8422u, 10707u))));
    var var_1 = Struct_3(arg_0.a, abs(_wgslsmith_mod_u32(~arg_0.b, ~1u)) << (14991u % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(abs(arg_0.c.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, -201f)))), countOneBits(~var_0.c.zx), select(_wgslsmith_div_vec4_i32(select(vec4<i32>(33565i, -1697i, arg_0.e.x, -76890i), -arg_0.e, var_0.b | var_0.b), vec4<i32>(min(u_input.b, 34088i), _wgslsmith_mod_i32(-1i, u_input.d), -19330i, ~28i)), -(~arg_0.e), vec4<bool>(any(vec4<bool>(var_0.b, var_0.b, var_0.b, false)), !arg_0.a.x != true, true, true)));
    let var_2 = ~vec3<u32>(~4294967295u, 0u, ~20826u);
    var var_3 = var_0.a;
    let var_4 = firstLeadingBit(abs(arg_0.e) ^ arg_0.e);
    return ~(~_wgslsmith_div_vec3_u32(vec3<u32>(9451u, var_1.d.x, var_0.a.a), var_2 & var_2) << ((vec3<u32>(0u, var_3.a, var_2.x) & var_2) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: u32) -> vec3<u32> {
    let var_0 = vec2<i32>(u_input.b, u_input.d);
    var var_1 = Struct_2(Struct_1(abs(arg_0.x)), arg_1.a.x, arg_0);
    var var_2 = vec2<bool>(true, true);
    var var_3 = _wgslsmith_f_op_f32(-arg_1.c.x);
    var_2 = vec2<bool>(false && any(!select(vec4<bool>(arg_1.a.x, arg_1.a.x, false, true), vec4<bool>(true, arg_1.a.x, true, arg_1.a.x), var_1.b)), any(!select(vec4<bool>(false, true, false, var_2.x), vec4<bool>(var_1.b, true, false, var_1.b), var_2.x)) && false);
    return select(~(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1.d, arg_0.xx), countOneBits(1u), arg_2) & vec3<u32>(44240u, 57559u, arg_0.x << (66034u % 32u))), ~var_1.c, true);
}

fn func_5(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1034f, -779f, _wgslsmith_f_op_f32(106f - -2525f), 683f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1087f, -278f, 749f, 624f), _wgslsmith_div_vec4_f32(vec4<f32>(946f, -822f, -408f, -188f), vec4<f32>(1162f, -302f, -612f, -1221f)), any(vec4<bool>(arg_0.b, true, false, false))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(736f, -725f, 1000f, 1249f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1167f, -1859f, -1503f, -1001f)), vec4<f32>(427f, 242f, 520f, -165f), select(vec4<bool>(arg_0.b, false, false, arg_0.b), vec4<bool>(true, true, true, arg_0.b), arg_0.b)))))));
    var var_1 = firstTrailingBit(abs(vec2<i32>(u_input.b, u_input.b)));
    var var_2 = var_1.x;
    var var_3 = Struct_1(~(~min(_wgslsmith_sub_u32(4294967295u, 1u), 4294967295u)));
    var var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(var_1.x), ~abs(var_1.x), var_1.x, 39400i) | vec4<i32>(_wgslsmith_clamp_i32(-u_input.d, reverseBits(var_1.x), -24646i), _wgslsmith_div_i32(_wgslsmith_mod_i32(23142i, var_1.x), _wgslsmith_add_i32(-2147483647i, u_input.d)), u_input.b, 2147483647i), (_wgslsmith_mult_vec4_i32(min(vec4<i32>(60070i, 18759i, var_1.x, var_1.x), vec4<i32>(u_input.d, -8660i, u_input.b, 2147483647i)), min(vec4<i32>(-11523i, var_1.x, u_input.d, 15147i), vec4<i32>(2147483647i, 17415i, var_1.x, var_1.x))) << (vec4<u32>(~5554u, u_input.a, ~u_input.c, ~1u) % vec4<u32>(32u))) & (abs(vec4<i32>(-61907i, var_1.x, u_input.d, 2147483647i)) << (reverseBits(vec4<u32>(19378u, u_input.c, 0u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, var_3.a, var_3.a) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return firstTrailingBit(abs(-u_input.b)) <= (u_input.b >> (15243u % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    var var_0 = min(_wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(-2147483647i), max(u_input.d, -30356i)), select(~vec2<i32>(-24953i, 0i), ~vec2<i32>(u_input.b, u_input.b), vec2<bool>(true, true)))), reverseBits(~(_wgslsmith_mod_i32(u_input.b, u_input.b) & 1i)));
    let var_1 = select(87559u, ~(u_input.c << (u_input.a % 32u)), !any(vec4<bool>(true, true, true, true))) & _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.c, u_input.c, 1u, 1u), vec4<u32>(51299u, 4294967295u, arg_0.a, u_input.a)), abs(vec4<u32>(4294967295u, arg_0.a, 1u, 32846u))), ~(~vec4<u32>(1u, u_input.c, 4294967295u, arg_0.a)));
    var var_2 = u_input.a;
    let var_3 = func_5(Struct_2(Struct_1(~firstTrailingBit(u_input.c)), false || !any(vec4<bool>(true, true, false, true)), func_4(abs(func_2(Struct_3(vec2<bool>(false, true), 66247u, arg_1.yx, vec2<u32>(arg_0.a, 1u), vec4<i32>(0i, 66518i, u_input.b, u_input.b)))), Struct_3(vec2<bool>(false, true), reverseBits(32052u), _wgslsmith_f_op_vec2_f32(-arg_1.yx), vec2<u32>(u_input.c, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b), vec4<i32>(0i, u_input.d, -10378i, u_input.b))), ~_wgslsmith_sub_u32(var_1, arg_0.a))));
    var_0 = ~(-2147483647i);
    return ~u_input.c | _wgslsmith_div_u32(1u, firstTrailingBit(0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1021f * -296f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-907f, -664f)))) * _wgslsmith_f_op_f32(ceil(-494f))) * 2353f));
    var var_1 = !select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), false), vec2<bool>(false, all(vec4<bool>(true, true, true, true))));
    var var_2 = vec4<u32>(func_1(Struct_1(~u_input.c), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1710f, -619f, 728f, 651f))) - vec4<f32>(-2489f, 191f, -992f, 751f))))), abs(u_input.a), u_input.a ^ 1u, ~39766u << (u_input.a % 32u));
    var var_3 = Struct_3(select(select(!select(vec2<bool>(var_1.x, false), vec2<bool>(false, true), vec2<bool>(var_1.x, true)), select(vec2<bool>(true, true), !vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, true)), vec2<bool>(func_3(vec4<u32>(var_2.x, 4294967295u, var_2.x, 1u), Struct_2(Struct_1(4294967295u), var_1.x, var_2.xxy)), var_1.x)), vec2<bool>(var_1.x, func_5(Struct_2(Struct_1(1u), false, var_2.wyy)) | var_1.x), select(vec2<bool>(true, true), vec2<bool>(false, !var_1.x), vec2<bool>(true, var_1.x | true))), var_2.x, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-230f, _wgslsmith_f_op_f32(f32(-1f) * -149f)))), reverseBits(var_2.wy), select(vec4<i32>(~firstLeadingBit(u_input.d), i32(-1i) * -u_input.b, ~u_input.b, 8532i), vec4<i32>(_wgslsmith_add_i32(u_input.b >> (10207u % 32u), reverseBits(-61828i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-6227i, u_input.b, -64674i, u_input.d), vec4<i32>(-48887i, -49188i, u_input.b, u_input.d)), max(0i, -33596i), -19753i), !var_1.x));
    let var_4 = u_input.b;
    var var_5 = _wgslsmith_sub_i32(2147483647i, firstTrailingBit(_wgslsmith_div_i32(var_3.e.x, u_input.d << (_wgslsmith_add_u32(var_2.x, var_3.d.x) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.x) * 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_f_op_f32(select(-724f, var_3.c.x, var_1.x)))))), ~func_2(Struct_3(select(var_3.a, var_3.a, vec2<bool>(var_1.x, false)), var_2.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c.x, var_3.c.x) * var_3.c), ~var_3.d, abs(vec4<i32>(-12914i, var_4, 756i, u_input.d)))).zz, _wgslsmith_dot_vec4_u32(min(~vec4<u32>(32632u, 3691u, u_input.c, 3114u), vec4<u32>(u_input.c, u_input.c, 0u, var_2.x)), vec4<u32>(~17067u, 124729u, 1u, 28131u << (u_input.c % 32u))) ^ 10526u);
}

