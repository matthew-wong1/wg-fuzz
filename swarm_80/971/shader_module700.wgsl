struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1, arg_3: Struct_3) -> vec2<i32> {
    var var_0 = Struct_2(-_wgslsmith_sub_vec3_i32(firstLeadingBit(abs(vec3<i32>(arg_2.c, arg_1, 2147483647i))), firstTrailingBit(select(vec3<i32>(-4359i, -3089i, -12317i), vec3<i32>(arg_3.b, arg_3.b, arg_3.a), true))), arg_2, 34014u, Struct_1(~(min(vec3<u32>(arg_2.a.x, 37179u, arg_2.a.x), vec3<u32>(1u, arg_2.a.x, 58248u)) << (firstLeadingBit(vec3<u32>(arg_2.a.x, arg_2.a.x, arg_2.a.x)) % vec3<u32>(32u))), vec2<bool>(true, arg_2.b.x), _wgslsmith_mult_i32(1i, max(~6460i, arg_2.c)), -7689i), ~arg_2.a);
    var_0 = Struct_2(vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.xy, vec2<i32>(-1294i, 41345i)), vec2<i32>(-1408i, 1i)), u_input.a.zz), -_wgslsmith_mult_i32(arg_1, -9341i)), Struct_1(_wgslsmith_clamp_vec3_u32(reverseBits(var_0.e & vec3<u32>(var_0.c, 0u, arg_2.a.x)), vec3<u32>(arg_2.a.x, 11812u, 0u), var_0.d.a), vec2<bool>(!(arg_0.a.x & false), all(!vec4<bool>(arg_3.c, false, var_0.d.b.x, arg_3.c))), arg_2.d, 2147483647i << (var_0.d.a.x % 32u)), abs(43455u), Struct_1(var_0.b.a, arg_2.b, -var_0.d.d, arg_2.c), ~(abs(abs(vec3<u32>(arg_2.a.x, 11302u, arg_2.a.x))) | abs(var_0.b.a)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + -390f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(398f, 221f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(606f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -629f) * _wgslsmith_div_f32(-463f, 2319f))))));
    var var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(var_0.b.a.x), 31748u, ~arg_2.a.x), ~(_wgslsmith_mod_vec3_u32(arg_2.a, vec3<u32>(var_0.c, var_0.c, 19085u)) | vec3<u32>(select(var_0.e.x, arg_2.a.x, arg_2.b.x), countOneBits(var_0.e.x), ~arg_2.a.x)), var_0.b.a);
    var var_3 = arg_0.a;
    return u_input.a.xz;
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> vec2<f32> {
    let var_0 = Struct_3(u_input.a.x, countOneBits(_wgslsmith_mult_i32(arg_0.d.c | arg_0.a.x, arg_0.d.c | -12344i) | ~u_input.a.x), arg_1 <= arg_1);
    var var_1 = func_3(Struct_4(vec4<bool>(true || (-42015i < arg_1), (1u | arg_0.b.a.x) == (arg_0.d.a.x | arg_0.c), arg_0.d.b.x, all(select(vec3<bool>(false, arg_0.b.b.x, arg_0.d.b.x), vec3<bool>(false, var_0.c, var_0.c), false)))), 2147483647i, arg_0.d, var_0);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(883f, 1257f, 472f, 1525f)))))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1774f), -549f, 2301f), var_0.c)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-887f, -2107f), -508f))), -215f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-412f + -1000f)) + 1275f), -965f));
    var var_3 = ~_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.a.x, arg_0.b.a.x, 36775u, arg_0.e.x) ^ vec4<u32>(arg_0.e.x, 63438u, 0u, arg_0.b.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, arg_0.b.a.x, 18524u), vec4<u32>(4294967295u, arg_0.b.a.x, arg_0.b.a.x, 34192u))), vec4<u32>(~1u, 1344u, 1u ^ select(arg_0.b.a.x, arg_0.c, true), ~0u));
    var var_4 = Struct_3(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, var_0.b, 1i, arg_0.d.d) | vec4<i32>(var_1.x, arg_1, arg_0.b.c, u_input.a.x), _wgslsmith_mod_vec4_i32(select(vec4<i32>(-10078i, -84489i, -39753i, 2147483647i), vec4<i32>(-1i, var_0.a, var_0.b, 0i), vec4<bool>(arg_0.b.b.x, arg_0.d.b.x, true, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, u_input.a.x, 0i, arg_1), vec4<i32>(arg_0.b.c, u_input.a.x, 2147483647i, 2147483647i))), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.b.c, arg_1, 1i, -1i) << (vec4<u32>(var_3.x, 11451u, arg_0.e.x, var_3.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.a.x, var_0.b, 2147483647i), vec4<i32>(-1i, 0i, -1i, u_input.a.x)))), _wgslsmith_add_vec4_i32(select(vec4<i32>(-10117i, 11499i, arg_0.b.c, -2147483647i), vec4<i32>(arg_0.d.c, var_0.b, var_1.x, arg_0.b.c) >> (vec4<u32>(86632u, 32292u, var_3.x, 13817u) % vec4<u32>(32u)), !vec4<bool>(arg_0.d.b.x, true, var_0.c, false)), vec4<i32>(~u_input.a.x, u_input.a.x, arg_0.a.x ^ var_1.x, u_input.a.x))), false);
    return _wgslsmith_f_op_vec2_f32(-var_2.yw);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -1235f)), _wgslsmith_f_op_vec2_f32(func_2(arg_3, 2147483647i))))));
    let var_1 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(u_input.a.x, 6435i)), ~max(u_input.a.x, arg_3.b.c), arg_3.b.c), vec3<i32>(arg_3.b.d, 2147483647i, -1i), arg_3.b.b.x), ~(-u_input.a));
    var var_2 = _wgslsmith_mult_i32(~u_input.a.x, 43766i | _wgslsmith_dot_vec3_i32(countOneBits(reverseBits(vec3<i32>(-374i, -1i, 0i))), ~(~vec3<i32>(arg_3.d.d, 2147483647i, 43653i))));
    var var_3 = u_input.a.yz;
    var var_4 = arg_1;
    return vec3<i32>(-2147483647i, var_3.x | 0i, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_sub_vec3_i32(-func_1(vec4<u32>(1919u, 54499u, 52083u, 0u), -719f, _wgslsmith_div_f32(-1000f, -1000f), Struct_2(u_input.a, Struct_1(vec3<u32>(1u, 1u, 67538u), vec2<bool>(false, true), u_input.a.x, u_input.a.x), 43156u, Struct_1(vec3<u32>(43354u, 1u, 4294967295u), vec2<bool>(false, false), u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 1u, 1u))), vec3<i32>(-1i, 3651i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(43470i, u_input.a.x), vec2<i32>(-45655i, 2147483647i)))), Struct_1(_wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(4294967295u, 32554u, 42141u)), vec3<u32>(~1u, _wgslsmith_clamp_u32(1u, 1u, 27754u), 1u), vec3<u32>(1u, 1u, 1u)), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)), u_input.a.x, u_input.a.x), 4294967295u, Struct_1(~vec3<u32>(~53246u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 12935u), vec2<u32>(59721u, 50987u)), _wgslsmith_mult_u32(11168u, 21715u)), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, false), any(vec2<bool>(true, false)))), 1i, -_wgslsmith_div_i32(max(-1i, -67826i), -2147483647i)), ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(2608u, 19760u)), ~min(5916u, 35663u), ~abs(67555u)));
    var_0 = Struct_2(-(select(u_input.a, ~var_0.a, vec3<bool>(var_0.b.b.x, true, true)) >> (var_0.b.a % vec3<u32>(32u))), var_0.b, 6512u, var_0.d, ~var_0.b.a);
    var var_1 = vec2<u32>(0u, _wgslsmith_mult_u32(firstTrailingBit(1u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(65113u, 92034u), vec2<u32>(var_0.d.a.x, var_0.c)), max(440u, var_0.d.a.x)))) ^ select(~var_0.e.zz, var_0.e.zy, vec2<bool>(!(var_0.d.b.x & var_0.d.b.x), var_0.d.b.x));
    var_1 = vec2<u32>(_wgslsmith_mult_u32(select(0u, var_0.d.a.x, var_0.d.b.x), ~(~var_0.b.a.x)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(41238u, var_0.c, var_0.d.a.x), ~reverseBits(var_0.d.a)), select(_wgslsmith_dot_vec2_u32(max(vec2<u32>(var_1.x, var_1.x) ^ var_0.e.zz, ~vec2<u32>(12641u, var_0.d.a.x)), _wgslsmith_sub_vec2_u32(~vec2<u32>(var_1.x, var_1.x), ~var_0.b.a.zy)), abs(firstTrailingBit(var_1.x)) ^ var_0.d.a.x, all(vec2<bool>(select(var_0.d.b.x, false, var_0.d.b.x), false))));
    var_0 = Struct_2(u_input.a, var_0.d, min(select(~1u, countOneBits(_wgslsmith_mult_u32(var_1.x, 1u)), false & select(var_0.b.b.x, var_0.d.b.x, var_0.b.b.x)), ~_wgslsmith_div_u32(var_1.x, 1u) | _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.d.a.x, var_1.x, var_1.x), var_0.e.x >> (58546u % 32u))), Struct_1(~var_0.b.a, var_0.d.b, ~_wgslsmith_add_i32(-1i, 1i), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), ~(~vec3<u32>(49808u, 95409u, var_0.d.a.x) << (~vec3<u32>(var_0.e.x, 4294967295u, var_0.e.x) % vec3<u32>(32u))));
    var_0 = Struct_2(firstLeadingBit(vec3<i32>(~(-30571i), 16613i, firstLeadingBit(u_input.a.x)) ^ ~vec3<i32>(var_0.d.c, -2147483647i, var_0.b.c)), Struct_1(~vec3<u32>(var_1.x, 4294967295u, 1u) | firstTrailingBit(vec3<u32>(var_1.x, var_0.d.a.x, 39653u)), select(vec2<bool>(var_0.d.b.x, var_0.d.b.x), select(vec2<bool>(var_0.b.b.x, var_0.b.b.x), !var_0.d.b, vec2<bool>(var_0.b.b.x, var_0.b.b.x)), var_0.d.b), ~0i, -1i), var_1.x, var_0.d, firstLeadingBit(vec3<u32>(1u, var_1.x, var_0.e.x) << (vec3<u32>(~var_0.d.a.x, _wgslsmith_div_u32(var_1.x, var_1.x), _wgslsmith_dot_vec2_u32(var_0.e.zy, vec2<u32>(17565u, 6985u))) % vec3<u32>(32u))));
    var var_2 = Struct_2(firstTrailingBit((vec3<i32>(-2147483647i, -37487i, 1i) | (vec3<i32>(u_input.a.x, -1i, 0i) & vec3<i32>(-35380i, var_0.d.c, 47825i))) >> (~var_0.e % vec3<u32>(32u))), var_0.b, ~(66556u | abs(~var_0.b.a.x)), Struct_1(firstLeadingBit(vec3<u32>(4294967295u >> (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 16770u, var_1.x), vec4<u32>(var_1.x, var_0.e.x, 80374u, 0u)), _wgslsmith_dot_vec2_u32(var_0.b.a.xy, vec2<u32>(37352u, var_0.d.a.x)))), vec2<bool>(true, any(!var_0.b.b)), -var_0.a.x, var_0.a.x), ~countOneBits(vec3<u32>(var_1.x, ~var_0.d.a.x, 1u)));
    var_1 = var_2.d.a.zx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(53600u, var_1.x, var_0.c), ~56975u, var_2.b.a.x << (var_0.d.a.x % 32u), min(8910u, var_0.b.a.x)) & ~abs(vec4<u32>(0u, 1u, var_0.c, var_2.b.a.x)), vec4<u32>(18212u, ~(~0u), 20141u, ~_wgslsmith_div_u32(var_2.d.a.x, var_2.d.a.x))), ~vec4<u32>(0u, (var_1.x & var_1.x) ^ var_2.b.a.x, _wgslsmith_mod_u32(7417u, 11611u >> (0u % 32u)), max(var_2.e.x, var_2.d.a.x)), vec4<u32>(_wgslsmith_mult_u32(reverseBits(select(17024u, var_1.x, false)), 0u), _wgslsmith_mod_u32(~reverseBits(4294967295u), ~0u), ~83357u, var_2.c));
}

