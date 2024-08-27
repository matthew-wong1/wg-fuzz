struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<bool>) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(vec3<u32>(80787u, ~(~74719u), _wgslsmith_clamp_u32(13218u, 51182u, _wgslsmith_div_u32(26524u, 4294967295u))), min(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(90432u, 67668u, 39654u), vec3<u32>(0u, 0u, 0u)), ~vec3<u32>(1u, 3833u, 38289u))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(2142f)), 586f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-129f, -621f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-435f, -248f), vec2<f32>(249f, 499f), true)))), vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(sign(1663f)), vec3<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(600u, 1u, 113233u, 117043u), vec4<u32>(1u, 7812u, 67630u, 4294967295u)), vec4<u32>(1u, 66692u, 123748u, 12700u)), ~(~29561u), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(35684u, 1u), vec2<u32>(4294967295u, 40083u), vec2<u32>(1u, 85222u)), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(77261u, 0u)), vec2<u32>(52042u, 18088u)))), abs(~abs(~vec3<i32>(u_input.a, -1i, u_input.a))));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, var_0.b) + vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(ceil(var_0.b)), var_0.a.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(894f, var_0.a.c.x, 248f), vec3<f32>(558f, var_0.a.c.x, 701f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.c.x, 268f, 755f))), vec3<bool>(false, arg_0.x, true))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 1370f, -1886f) * vec3<f32>(-304f, var_0.a.c.x, var_0.a.c.x)), vec3<f32>(719f, 183f, 903f)))), select(select(!vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, arg_0.x, arg_0.x), any(arg_0)), select(select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true)), vec3<bool>(arg_0.x, true, true), !arg_0.x), true)))));
    var var_2 = var_0.a;
    let var_3 = max(-vec4<i32>(var_0.d.x, 2147483647i, u_input.a, 2147483647i) | -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), select(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<i32>(var_0.d.x, u_input.a, u_input.a, 2147483647i))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, var_0.d.x), vec4<i32>(u_input.a, 22666i, -1i, -2147483647i), vec4<i32>(var_0.d.x, -13067i, -1i, u_input.a)), vec4<bool>(arg_0.x, arg_0.x, any(arg_0), arg_0.x | false))) >> ((countOneBits(abs(vec4<u32>(53302u, 98477u, var_0.c.x, 0u)) & ~vec4<u32>(var_2.b, var_2.d.x, 27556u, 100594u)) | (firstLeadingBit(~vec4<u32>(1u, 0u, var_2.a.x, var_2.a.x)) | vec4<u32>(~47079u, abs(4294967295u), var_0.a.d.x, firstLeadingBit(44565u)))) % vec4<u32>(32u));
    let var_4 = !(!select(vec4<bool>(!arg_0.x, true & arg_0.x, arg_0.x, all(vec2<bool>(arg_0.x, arg_0.x))), vec4<bool>(arg_0.x, true, all(vec3<bool>(true, false, arg_0.x)), all(vec2<bool>(true, true))), all(!vec4<bool>(arg_0.x, false, true, arg_0.x))));
    return abs(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d.x, 24067u, 1u) >> (vec3<u32>(117813u, 4294967295u, var_0.a.d.x) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(var_0.a.d.x, var_2.d.x, 54318u))), _wgslsmith_mult_u32(firstLeadingBit(var_0.c.x), 33147u)), max(var_0.a.a.x, 0u), countOneBits(var_0.a.a.x >> ((var_0.a.b << (80985u % 32u)) % 32u))));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(~countOneBits(~arg_1.a), ~_wgslsmith_mod_u32(4294967295u, arg_1.b), vec2<f32>(arg_1.c.x, -232f), vec2<u32>(1u & ~arg_1.a.x, 1u)), -807f, _wgslsmith_mod_vec3_u32(vec3<u32>(9120u, 1u >> (arg_1.d.x % 32u), 0u), func_3(vec2<bool>(true, any(vec3<bool>(false, true, true))))), -_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, -19099i)), ~(vec3<i32>(u_input.a, -1i, u_input.a) | vec3<i32>(u_input.a, -30483i, -51089i))));
    var var_1 = Struct_2(Struct_1(firstTrailingBit(var_0.c), 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, var_0.a.c.x) * vec2<f32>(-984f, 162f))), select(vec2<u32>(var_0.a.d.x, var_0.c.x), ~_wgslsmith_div_vec2_u32(arg_1.d, arg_1.a.yz), !select(vec2<bool>(false, true), vec2<bool>(false, false), true))), -835f, vec3<u32>(6707u, 95384u, 4294967295u ^ min(arg_0, 835u)) & firstTrailingBit(_wgslsmith_mod_vec3_u32(var_0.a.a, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, 33065u), vec3<u32>(0u, arg_1.d.x, 1u)))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, 1508i, var_0.d.x), _wgslsmith_div_i32(-10810i, -2147483647i)), var_0.d.x, ~reverseBits(-1i)) >> ((select(vec3<u32>(1u, var_0.c.x, arg_0), arg_1.a, select(true, false, true)) >> (~_wgslsmith_add_vec3_u32(arg_1.a, vec3<u32>(arg_0, 49138u, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_2 = Struct_1(~var_0.c, ~(~1u) ^ var_1.a.b, arg_1.c, vec2<u32>(_wgslsmith_mod_u32(arg_1.b, 1u), 1u) >> (vec2<u32>(_wgslsmith_add_u32(~82525u, ~arg_0), ~arg_1.a.x) % vec2<u32>(32u)));
    var var_3 = i32(-1i) * -u_input.a;
    global0 = min(var_1.d.x, -1i);
    return Struct_2(var_0.a, -1069f, arg_1.a, firstTrailingBit(_wgslsmith_mult_vec3_i32(var_1.d, var_1.d)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    global0 = 1i;
    var var_0 = firstTrailingBit(~_wgslsmith_dot_vec2_i32(vec2<i32>(22584i, 0i), arg_0.d.zx)) | _wgslsmith_div_i32(2147483647i, firstTrailingBit(_wgslsmith_add_i32(arg_2.d.x, arg_1.d.x)));
    let var_1 = ~_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(arg_0.a.a.x, arg_0.c.x, 1078u, 17076u))), firstLeadingBit(~vec4<u32>(1u, 17175u, arg_1.a.b, 4294967295u)));
    var var_2 = true;
    let var_3 = arg_0.a;
    return arg_0.a.c.x;
}

fn func_1(arg_0: i32, arg_1: bool) -> vec2<f32> {
    global0 = ~arg_0;
    global0 = i32(-1i) * -1i;
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1229f, _wgslsmith_div_f32(374f, _wgslsmith_f_op_f32(func_4(func_2(9853u, Struct_1(vec3<u32>(102947u, 15409u, 12433u), 30991u, vec2<f32>(-207f, 220f), vec2<u32>(1u, 0u))), func_2(0u, Struct_1(vec3<u32>(1u, 11242u, 4294967295u), 24898u, vec2<f32>(-1086f, -515f), vec2<u32>(264u, 4294967295u))), func_2(6381u, Struct_1(vec3<u32>(51320u, 68953u, 6252u), 1u, vec2<f32>(-917f, -1136f), vec2<u32>(1u, 4294967295u)))))))));
    global0 = _wgslsmith_mult_i32(u_input.a, u_input.a);
    global0 = firstTrailingBit(_wgslsmith_mult_i32(u_input.a, ~_wgslsmith_div_i32(_wgslsmith_mod_i32(28469i, -17246i), -arg_0)));
    return vec2<f32>(122f, _wgslsmith_f_op_f32(trunc(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    var var_0 = Struct_1(~vec3<u32>(select(~56u, max(1u, 0u), true), abs(~4294967295u), abs(~1u)), ~(select(_wgslsmith_div_u32(127461u, 52273u), 1u, true) | 1u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-443f, _wgslsmith_f_op_f32(select(1785f, 885f, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(250f, 260f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-214f, 1418f)))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true))))), ~select(~vec2<u32>(19034u, 4294967295u), vec2<u32>(1u, 1u), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))));
    var var_1 = Struct_1(vec3<u32>(var_0.b, select(var_0.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(20824u, var_0.d.x, var_0.a.x) << (var_0.a % vec3<u32>(32u))), true), max(~23943u, 78985u)), ~(_wgslsmith_add_u32(var_0.a.x & 39277u, 15717u) >> (1u % 32u)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.c), _wgslsmith_f_op_vec2_f32(func_1(firstLeadingBit(-u_input.a), false)))), vec2<u32>(var_0.d.x, reverseBits(1u >> (~var_0.a.x % 32u))));
    var var_2 = u_input.a << (var_1.a.x % 32u);
    var_0 = func_2(var_1.d.x, Struct_1(~var_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u >> (var_1.b % 32u), ~var_1.b, func_2(4294967295u, Struct_1(vec3<u32>(var_0.b, var_0.a.x, var_1.a.x), var_1.a.x, vec2<f32>(var_1.c.x, -1985f), var_0.d)).a.a.x), func_3(vec2<bool>(false, true))), var_1.c, var_0.d)).a;
    var var_3 = Struct_2(Struct_1(vec3<u32>(abs(~1u), 0u, var_0.a.x), select(4294967295u, 1u, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.c, vec2<f32>(var_0.c.x, var_0.c.x))) * var_0.c), max(vec2<u32>(max(4294967295u, 22780u), ~1u), select(reverseBits(vec2<u32>(6253u, 4294967295u)), var_1.d, vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.c.x + 816f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(998f))))), ~firstTrailingBit(var_1.a), -_wgslsmith_clamp_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, 43533i), vec3<i32>(46409i, u_input.a, 2147483647i)), max(-vec3<i32>(u_input.a, 1i, -18219i), vec3<i32>(-49707i, u_input.a, 0i) | vec3<i32>(-1i, -1i, u_input.a)), vec3<i32>(~(-24686i), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -25693i), vec2<i32>(-36911i, 1i)))));
    global0 = var_3.d.x | var_3.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(-(~var_3.d.xz), var_0.c.x, var_3.d.xy, vec2<u32>(~(~firstTrailingBit(var_3.a.a.x)), _wgslsmith_mult_u32(~26278u, _wgslsmith_add_u32(~1u, _wgslsmith_add_u32(4294967295u, var_0.d.x)))));
}

