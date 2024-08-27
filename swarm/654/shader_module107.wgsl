struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(0u, vec2<u32>(4294967295u, 33371u), vec2<i32>(28164i, i32(-2147483648)), vec4<i32>(-1i, 40244i, 1i, 1i), true), Struct_1(4294967295u, vec2<u32>(4294967295u, 11407u), vec2<i32>(2147483647i, 2147483647i), vec4<i32>(17229i, i32(-2147483648), i32(-2147483648), -23159i), true), Struct_1(31645u, vec2<u32>(27941u, 30964u), vec2<i32>(-1i, -32659i), vec4<i32>(-1i, 14337i, 34966i, 0i), true), Struct_1(1929u, vec2<u32>(4294967295u, 94599u), vec2<i32>(1i, -14869i), vec4<i32>(-10068i, 0i, 21818i, -1i), false), Struct_1(4066u, vec2<u32>(48425u, 87453u), vec2<i32>(1172i, 0i), vec4<i32>(i32(-2147483648), -89032i, 2147483647i, 41930i), true), Struct_1(31712u, vec2<u32>(44165u, 62296u), vec2<i32>(40365i, i32(-2147483648)), vec4<i32>(-40805i, 1i, i32(-2147483648), 24242i), false), Struct_1(15024u, vec2<u32>(4294967295u, 4294967295u), vec2<i32>(1i, 29493i), vec4<i32>(-15154i, 2147483647i, 62682i, -15707i), true), Struct_1(1u, vec2<u32>(4294967295u, 59415u), vec2<i32>(0i, -23966i), vec4<i32>(11823i, -37004i, 1i, -27998i), true), Struct_1(4294967295u, vec2<u32>(0u, 4294967295u), vec2<i32>(-10722i, 22230i), vec4<i32>(2147483647i, 1i, 4941i, 2147483647i), true), Struct_1(29083u, vec2<u32>(24372u, 14421u), vec2<i32>(-6801i, 55782i), vec4<i32>(1i, 1i, 35831i, -45821i), false), Struct_1(0u, vec2<u32>(0u, 27666u), vec2<i32>(930i, i32(-2147483648)), vec4<i32>(-224i, -18807i, 12935i, 2147483647i), false), Struct_1(55290u, vec2<u32>(43698u, 1u), vec2<i32>(1i, 2147483647i), vec4<i32>(27127i, i32(-2147483648), 0i, -20442i), false), Struct_1(4294967295u, vec2<u32>(40938u, 28940u), vec2<i32>(-13421i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, -5269i, 2147483647i), false), Struct_1(4294967295u, vec2<u32>(29776u, 20998u), vec2<i32>(-38999i, -1i), vec4<i32>(-41706i, -13230i, -34525i, 60860i), false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = false;
    var var_1 = global1[_wgslsmith_index_u32(49321u, 14u)];
    var var_2 = countOneBits(var_1.b.x) << (4294967295u % 32u);
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1612f, _wgslsmith_f_op_f32(f32(-1f) * -542f), 430f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 2250f, 914f, -1344f) * vec4<f32>(arg_0, arg_0, arg_1, arg_0))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-932f, arg_0, arg_0, arg_0), vec4<f32>(arg_0, arg_0, 1254f, arg_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_0, -622f, 1218f) - vec4<f32>(arg_1, arg_1, arg_0, arg_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-324f, -239f, arg_1, -369f), vec4<f32>(-431f, arg_0, arg_1, 1000f)))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2646f), _wgslsmith_f_op_f32(-arg_0), 1093f, -1398f))));
    var var_4 = var_1.d.xy;
    return ~(select(0u, firstTrailingBit(12314u), var_0) & select(1u, max(~var_1.b.x, ~var_1.b.x), true));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    var var_0 = arg_0;
    let var_1 = Struct_1(~26278u, vec2<u32>(~(~var_0.b.x), func_3(arg_1, _wgslsmith_f_op_f32(ceil(-563f)))), abs(~firstLeadingBit(reverseBits(arg_2.d.xz))), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(~(-22644i), -13130i, firstLeadingBit(33692i), arg_0.d.x ^ arg_2.d.x)), ~(abs(arg_0.d) & vec4<i32>(0i, -2147483647i, arg_2.c.x, 0i))), true);
    var_0 = Struct_1(_wgslsmith_mod_u32(var_0.a, _wgslsmith_add_u32(56870u, var_0.a & 1u)), vec2<u32>(1u, ~firstLeadingBit(1u)), reverseBits(_wgslsmith_add_vec2_i32(arg_0.d.yx, var_0.d.xx)), arg_0.d, var_0.e);
    var_0 = arg_0;
    let var_2 = vec3<bool>(true, false, !(select(false, var_1.e, all(vec2<bool>(var_0.e, false))) | !select(false, true, false)));
    return var_2.x;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global0 = max(_wgslsmith_add_u32(~(~11592u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 24891u), vec3<u32>(2876u, 4294967295u, 1u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(8976u, 8071u), vec2<u32>(17890u, 32989u)) % 32u)) & abs(select(_wgslsmith_mult_u32(39596u, 44507u), 0u, func_2(Struct_1(4294967295u, vec2<u32>(4294967295u, 79760u), vec2<i32>(24454i, -41206i), vec4<i32>(u_input.a, 51639i, -2584i, 2147483647i), false), 1087f, global1[_wgslsmith_index_u32(0u, 14u)], vec3<u32>(929u, 16992u, 0u)))), _wgslsmith_sub_u32(min(43206u, 114860u) >> (_wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u) % 32u), 0u) << (~0u % 32u));
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~1247u), select(1u, ~2282u, all(vec3<bool>(false, false, true))), ~1u), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(1u, 33622u, 0u)) & vec3<u32>(35952u, 63836u, 10054u), ~abs(vec3<u32>(42581u, 1u, 1u)))) & reverseBits(1u), 14u)];
    var var_1 = ~_wgslsmith_add_u32(select(~var_0.a, 142u, var_0.e), _wgslsmith_mult_u32(~(~0u), 87915u));
    let var_2 = abs(vec3<i32>(firstLeadingBit(abs(-1i ^ u_input.a)), var_0.d.x, abs(u_input.a)));
    var var_3 = var_0.e;
    return global1[_wgslsmith_index_u32(max(max(_wgslsmith_clamp_u32(var_0.a, ~(~1u), ~abs(var_0.b.x)), var_0.b.x), 9263u), 14u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_div_i32(-firstTrailingBit(max(arg_1.c.x, _wgslsmith_mod_i32(arg_0.d.x, 18186i))), firstLeadingBit(-_wgslsmith_sub_i32(arg_1.d.x, 1i)));
    let var_1 = Struct_1(reverseBits(arg_0.b.x), ~(~(~arg_0.b)) ^ reverseBits(~(~arg_1.b)), ~firstLeadingBit(~(~vec2<i32>(1i, arg_0.d.x))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.a, _wgslsmith_mult_i32(-49513i, 1i), 2147483647i, 42046i), arg_1.d), ~(vec4<i32>(-1i) * -vec4<i32>(-1i, -12639i, -1i, -19329i)), vec4<i32>(_wgslsmith_div_i32(37152i, u_input.a), countOneBits(arg_2), _wgslsmith_sub_i32(-36457i, u_input.a), u_input.a) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(54172u, arg_1.a, 33124u, 28523u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b.x, 64155u, arg_1.b.x, 0u), vec4<u32>(51819u, arg_0.a, arg_1.b.x, 38986u))) % vec4<u32>(32u))), true);
    var var_2 = -222f;
    let var_3 = var_1.a;
    global1 = array<Struct_1, 14>();
    return ~(50212u ^ arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(_wgslsmith_dot_vec4_u32(select(vec4<u32>(16582u, 11486u, 4294967295u, 26445u), vec4<u32>(44352u, 1u, 1u, 33620u), false), vec4<u32>(0u, 4294967295u, 0u, 26508u)) | func_4(func_1(vec2<f32>(-216f, 1449f)), func_1(vec2<f32>(-867f, 631f)), _wgslsmith_sub_i32(0i, u_input.a))), vec2<u32>(1u, ~abs(4294967295u) >> (((30587u << (0u % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(13324u, 32812u, 4u), vec3<u32>(4294967295u, 0u, 4294967295u)) % 32u)) % 32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(~(u_input.a >> (42010u % 32u)), u_input.a), firstTrailingBit(vec2<i32>(u_input.a, u_input.a))), select(-abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, 2147483647i), vec4<i32>(u_input.a, -32700i, u_input.a, u_input.a))), -func_1(vec2<f32>(2466f, -1000f)).d, 53374u > _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 62906u, 0u, 94093u), ~vec4<u32>(37456u, 51384u, 4294967295u, 0u))), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true))) & all(vec4<bool>(u_input.a != u_input.a, select(true, false, true), true, all(vec3<bool>(false, true, true)))));
    let var_1 = true;
    var_0 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(1f, 1f)));
    var var_2 = func_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(337f)) * _wgslsmith_f_op_f32(-1000f - -928f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(508f * 469f))))));
    var var_3 = func_1(vec2<f32>(-612f, -720f));
    global1 = array<Struct_1, 14>();
    let var_4 = var_3.c;
    let var_5 = vec4<u32>(1u, reverseBits(~0u) >> ((var_0.a << (~firstLeadingBit(var_0.a) % 32u)) % 32u), _wgslsmith_div_u32(var_3.a, _wgslsmith_add_u32(26635u, ~var_2.b.x) ^ max(~4294967295u, var_0.b.x)), reverseBits(~_wgslsmith_div_u32(~var_2.a, var_0.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-652f, -125f)))))).c, vec2<i32>(-1i) * -(~(~var_0.d.xw)));
}

