struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    global0 = arg_1.a.x;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(455f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1177f, arg_1.a.x) * _wgslsmith_f_op_f32(-arg_1.a.x))))))));
    var var_0 = arg_2;
    return var_0.a.x;
}

fn func_2(arg_0: i32, arg_1: Struct_4) -> vec3<f32> {
    var var_0 = 4294967295u >> (abs(func_3(abs(-21790i), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(450f, -1815f, -146f) + vec3<f32>(-540f, 1135f, 2501f)), arg_1.b.x), Struct_1(vec2<u32>(1u, 0u), -arg_1.c, -1105f, vec3<bool>(true, true, arg_1.a), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-763f, -748f)))), Struct_2(Struct_1(vec2<u32>(79837u, 80015u), vec3<i32>(u_input.a, arg_1.c.x, u_input.a), -835f, arg_1.b.xyx, vec2<f32>(-857f, 933f)), _wgslsmith_add_vec3_i32(arg_1.c, arg_1.c), ~1u, _wgslsmith_mult_i32(arg_0, 1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1608f, 674f))))) % 32u);
    var var_1 = true;
    var_0 = ~(~_wgslsmith_mod_u32(4294967295u, 1u) >> (1u % 32u));
    var_1 = arg_1.b.x;
    let var_2 = vec3<u32>(firstTrailingBit(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(26963u, 21696u), 52455u, ~abs(1u))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 16309u), vec2<u32>(4294967295u, 1u)), 1u), _wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 1u), select(27842u, 138222u, false))) ^ 1u, 1u);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-652f, 1595f, -1113f) + vec3<f32>(-215f, 983f, -1480f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1594f, -1000f, 1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-473f, -310f, -1000f))) - vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(706f, -1552f, -925f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-883f, 1000f, -590f) + vec3<f32>(178f, -606f, 646f)), true)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1998f, -1055f, 660f), vec3<f32>(-1000f, -959f, 214f))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(539f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)), -198f))));
    global0 = arg_0.x;
    global1 = arg_0.x;
    let var_0 = u_input.a;
    let var_1 = abs(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -8263i, 0i, var_0) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-27036i, -12343i, u_input.a, 20526i), vec4<i32>(-37581i, var_0, -50700i, -2147483647i), vec4<i32>(1i, u_input.a, 81078i, 12575i)), min(~vec4<i32>(var_0, 7571i, u_input.a, u_input.a), reverseBits(vec4<i32>(64849i, 1i, -1i, 56143i)))) | ~(vec4<i32>(var_0, 32341i, u_input.a, 45445i) >> (_wgslsmith_div_vec4_u32(arg_3, arg_3) % vec4<u32>(32u))));
    return Struct_3(arg_0, any(select(vec4<bool>(false, true, select(arg_1, true, arg_1), !arg_1), select(select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(true, arg_1, arg_1, true)), vec4<bool>(true, true, true, arg_1), vec4<bool>(true, false, true, false)), select(select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(true, false, arg_1, arg_1)), select(vec4<bool>(false, false, true, arg_1), vec4<bool>(false, arg_1, false, arg_1), arg_1), true))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec2<i32>) -> i32 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2(~(arg_2.x >> (arg_1.x % 32u)), Struct_4(true, select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), vec3<i32>(u_input.a, arg_2.x, arg_2.x)))))), !select(_wgslsmith_f_op_f32(sign(-2629f)) == _wgslsmith_f_op_f32(-1459f * -135f), min(-2147483647i, arg_2.x) >= (arg_0.x >> (arg_1.x % 32u)), !select(true, true, false)), arg_1, reverseBits(select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 1615u, 59838u, 1u), vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 4294967295u)), 1u, ~14454u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(58002u, arg_1.x, arg_1.x, 4294967295u), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 4294967295u)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 0u, 60121u, arg_1.x), vec4<u32>(29868u, 2710u, 0u, arg_1.x)) % vec4<u32>(32u)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)))));
    let var_1 = -_wgslsmith_add_i32(arg_0.x, -select(50116i, min(arg_0.x, 0i), any(vec3<bool>(var_0.b, false, true))));
    global0 = 2122f;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 627f;
    var var_1 = firstLeadingBit(_wgslsmith_sub_i32(select(-func_1(vec2<i32>(u_input.a, u_input.a), vec3<u32>(4294967295u, 4294967295u, 34567u), vec2<i32>(-2147483647i, 39438i)), min(i32(-1i) * -1i, _wgslsmith_sub_i32(-1i, u_input.a)), select(true, true, false)), -1i));
    global1 = 1417f;
    var_1 = ~firstTrailingBit(_wgslsmith_sub_i32(45833i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(53678u, 48971u), vec2<u32>(1u, 1u)) % 32u), u_input.a));
    var var_2 = Struct_4(false, vec4<bool>(true, true, true, true), _wgslsmith_sub_vec3_i32(~vec3<i32>(1i, _wgslsmith_mod_i32(6051i, u_input.a), -2147483647i), select(-max(vec3<i32>(u_input.a, 2147483647i, 14331i), vec3<i32>(-2147483647i, -1i, 30622i)), select(-vec3<i32>(-2147483647i, u_input.a, u_input.a), abs(vec3<i32>(1i, -21722i, u_input.a)), true), any(vec4<bool>(true, true, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-321f, 576f))) + 1f))), var_2.c.x << (1u % 32u));
}

