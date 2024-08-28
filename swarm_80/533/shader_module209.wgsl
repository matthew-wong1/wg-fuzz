struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec4<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1562f, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(trunc(454f)), true))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1228f - -1000f)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -412f));
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(-var_1);
    return ~abs(vec3<u32>(0u, ~(arg_3.x & arg_0.x), arg_3.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> vec3<i32> {
    let var_0 = 0i;
    let var_1 = Struct_3(firstLeadingBit(~(~abs(vec3<u32>(4294967295u, 0u, arg_1.b.c.c.x)))), Struct_2(arg_1.b.d, arg_0.b | ~arg_0.b, arg_0.d, Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a.a + vec2<f32>(1000f, arg_0.a.a.x)), arg_0.c.b, _wgslsmith_sub_vec3_u32(arg_0.a.c, arg_1.b.a.c), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.c.d.x), _wgslsmith_f_op_f32(round(arg_0.c.d.x))))));
    let var_2 = var_1.b.d;
    let var_3 = var_2;
    var var_4 = Struct_2(var_2, ~(~_wgslsmith_sub_vec4_u32(arg_0.b, vec4<u32>(4294967295u, 0u, arg_0.d.c.x, arg_0.a.c.x))) >> (~(var_1.b.b | select(arg_0.b, vec4<u32>(39051u, 0u, arg_0.c.c.x, 64159u), vec4<bool>(arg_2, arg_2, arg_2, arg_2))) % vec4<u32>(32u)), var_2, arg_1.b.a);
    return abs(vec3<i32>(-_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_3.b, -1940i, u_input.b), u_input.a), _wgslsmith_mult_i32(1i, arg_1.b.d.b)), firstLeadingBit(var_3.b << (var_4.d.c.x % 32u)), _wgslsmith_add_i32(-39453i, ~select(var_2.b, 1i, true))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = abs(countOneBits(u_input.a));
    var var_1 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(214f, -126f) - _wgslsmith_div_vec2_f32(vec2<f32>(1444f, -309f), vec2<f32>(350f, -1000f))), ~(~var_0.x), vec3<u32>(arg_1, arg_1, 1u), vec2<f32>(_wgslsmith_f_op_f32(abs(-394f)), -1352f)), vec4<u32>(countOneBits(108789u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 5315u), arg_2.yx), arg_0, arg_0 & arg_0) ^ vec4<u32>(arg_1, arg_2.x, ~arg_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 4294967295u, 91596u, 1u), vec4<u32>(4294967295u, arg_1, arg_1, 39045u))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1350f, 879f)), var_0.x & ~u_input.a.x, vec3<u32>(arg_2.x, ~39760u, arg_0), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(691f, 1036f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 600f) - vec2<f32>(-1862f, 1000f))))), Struct_1(vec2<f32>(-803f, -1000f), -(~u_input.b), vec3<u32>(356u, 2001u, ~arg_0), vec2<f32>(-780f, _wgslsmith_f_op_f32(1444f + -120f)))), Struct_3(_wgslsmith_mod_vec3_u32(~func_3(vec4<u32>(0u, arg_0, 1u, 1u), arg_2.yx, vec2<bool>(true, true), vec4<u32>(arg_0, 25155u, 4294967295u, arg_1)), ~vec3<u32>(4294967295u, arg_0, arg_0)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1469f, -796f))), u_input.a.x | var_0.x, ~vec3<u32>(4294967295u, arg_1, arg_1), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1697f, 439f)))), vec4<u32>(4294967295u, arg_1, firstTrailingBit(arg_1), countOneBits(arg_0)), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(233f, 347f))), -u_input.b, vec3<u32>(arg_2.x, 28086u, 4294967295u), _wgslsmith_f_op_vec2_f32(vec2<f32>(1450f, -1069f) + vec2<f32>(-655f, 1548f))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1562f, -123f)), 2147483647i, ~vec3<u32>(arg_2.x, 1u, arg_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1513f) * vec2<f32>(1728f, 1000f))))), !(!all(vec4<bool>(false, false, true, false))));
    var_1 = var_0.zxx;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-317f, -207f), vec2<f32>(294f, -1186f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(467f, -343f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1906f, 3191f))), true))))), _wgslsmith_div_i32(var_0.x, _wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(var_0.x, 30580i))) << (_wgslsmith_div_u32(arg_1, arg_0) % 32u), ~(arg_2 << (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, arg_0), _wgslsmith_div_vec3_u32(arg_2, vec3<u32>(arg_0, arg_0, arg_0)), arg_2 >> (arg_2 % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-775f, 768f)) * vec2<f32>(704f, 891f)), vec2<f32>(_wgslsmith_f_op_f32(1574f + -1435f), -1278f))));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, 541f, -967f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, var_2.d.x, var_2.a.x) * vec3<f32>(var_2.a.x, 2747f, -768f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1324f, 145f, var_2.d.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.a.x, -1000f, var_2.a.x)))))))));
    return Struct_1(var_3.zy, 19565i, abs(arg_2), var_3.yy);
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> bool {
    var var_0 = 26119u;
    return all(select(!vec4<bool>(select(true, false, false), true, any(vec2<bool>(true, true)), true), vec4<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(1205f * 1629f) > func_2(arg_0, arg_0, arg_1.d.c).d.x, !(arg_1.a.a.x <= arg_1.d.d.x), any(vec4<bool>(true, true, true, true))), any(vec2<bool>(true, arg_1.c.a.x != -2706f))));
}

fn func_6(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: i32, arg_3: vec2<i32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0.xx))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yx) - vec2<f32>(-607f, -1206f))))), func_2(_wgslsmith_clamp_u32(1u, 1u, ~1u), ~max(48871u, 1u), vec3<u32>(~_wgslsmith_mod_u32(0u, 4294967295u), max(firstTrailingBit(40021u), ~10753u), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(35964u, 1647u, 61083u, 31859u), vec4<u32>(0u, 33261u, 0u, 4294967295u))))).b, vec3<u32>(~abs(~42632u), ~24674u, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.xx)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = ~arg_2.c;
    let var_1 = func_6(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-571f, 292f, 1104f), vec3<f32>(515f, arg_2.a.x, arg_2.d.x))), arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-819f, arg_0.x, 1582f)))))), vec4<bool>(2147483647i <= (-u_input.b ^ _wgslsmith_mod_i32(23276i, -27405i)), func_5(1u, Struct_2(func_2(var_0.x, 17916u, arg_2.c), vec4<u32>(20832u, 4294967295u, var_0.x, 4294967295u) & vec4<u32>(arg_1.x, 0u, var_0.x, arg_2.c.x), Struct_1(vec2<f32>(136f, arg_0.x), arg_2.b, vec3<u32>(0u, var_0.x, arg_2.c.x), arg_0.yz), Struct_1(arg_2.d, 36931i, vec3<u32>(arg_1.x, 4294967295u, arg_2.c.x), arg_2.d))), false, false), -1i, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, firstLeadingBit(-28704i)), max(reverseBits(u_input.a.xy), _wgslsmith_mult_vec2_i32(-u_input.a.wy, ~u_input.a.yw))));
    var_0 = _wgslsmith_clamp_vec3_u32(~_wgslsmith_add_vec3_u32(min(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, 4294967295u), arg_2.c), arg_2.c << (vec3<u32>(arg_2.c.x, 4294967295u, var_1.c.x) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_1.x, var_1.c.x) << (var_1.c % vec3<u32>(32u)), ~vec3<u32>(arg_2.c.x, var_0.x, 42182u), var_1.c | vec3<u32>(arg_2.c.x, 55447u, var_0.x))), ~(~(~(vec3<u32>(arg_1.x, var_0.x, 61275u) | vec3<u32>(0u, var_0.x, arg_1.x)))), select(~var_1.c, arg_2.c, select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))));
    var_0 = min(vec3<u32>(_wgslsmith_add_u32(~arg_2.c.x, 7951u), countOneBits(countOneBits(var_0.x)) >> (arg_2.c.x % 32u), abs(~4294967295u)), vec3<u32>(0u, arg_1.x, 68002u));
    var var_2 = Struct_1(vec2<f32>(var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) + arg_0.x))), arg_2.b, ~(~vec3<u32>(0u, 129326u, 1u) ^ ~vec3<u32>(arg_2.c.x, 29243u, var_0.x)) << (select(~(~vec3<u32>(var_1.c.x, var_1.c.x, 1u)), vec3<u32>(~arg_1.x, 1u, ~1u), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))) % vec3<u32>(32u)), arg_0.zx);
    return StorageBuffer(-1i, arg_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(196f, var_2.d.x, var_2.d.x, var_1.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, -1587f, var_1.a.x, 167f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, 858f, var_1.a.x, 946f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-464f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1461f) - -146f), 1515f)), ~(~min(abs(vec2<u32>(9943u, 0u)), ~vec2<u32>(9108u, 0u))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(832f, 843f) + vec2<f32>(-145f, -1496f))))), _wgslsmith_dot_vec4_i32(u_input.a, max(vec4<i32>(u_input.a.x, u_input.b, u_input.b, -2147483647i), u_input.a)) << (_wgslsmith_mod_u32(~38816u, _wgslsmith_dot_vec4_u32(vec4<u32>(44976u, 22996u, 4294967295u, 30306u), vec4<u32>(1u, 4294967295u, 4294967295u, 0u))) % 32u), countOneBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(48806u, 4294967295u, 0u), ~vec3<u32>(52980u, 4294967295u, 42987u))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(step(545f, -1526f)), _wgslsmith_f_op_f32(497f - 560f))))));
}

