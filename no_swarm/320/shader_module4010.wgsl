struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
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

var<private> global0: bool = true;

var<private> global1: array<vec4<bool>, 21>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: u32) -> bool {
    let var_0 = Struct_2(-2147483647i, firstTrailingBit(abs(select(vec3<u32>(7841u, u_input.b.x, 10687u), vec3<u32>(arg_1, 52536u, 4294967295u), vec3<bool>(false, false, false)))) & select(~vec3<u32>(78413u, 4294967295u, u_input.b.x), ~(~vec3<u32>(268u, 4294967295u, arg_1)), vec3<bool>(any(global1[_wgslsmith_index_u32(arg_1, 21u)]), true, true)));
    let var_1 = ~vec4<u32>(_wgslsmith_mult_u32(4294967295u, firstTrailingBit(43408u)), ~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 4294967295u), ~abs(var_0.b.xz)), u_input.c);
    var var_2 = !all(select(vec2<bool>(true, false), vec2<bool>(false, true), any(vec2<bool>(true, false)))) | true;
    let var_3 = var_0.b;
    var var_4 = _wgslsmith_f_op_f32(sign(arg_0));
    return false;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, func_3(-811f, 8884u), func_3(2353f, 0u)), false), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), !(u_input.a != arg_0) | (u_input.d < u_input.d)));
    let var_0 = true;
    global1 = array<vec4<bool>, 21>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1581f, 1621f) + vec2<f32>(1634f, 354f)) * vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2892f, -1751f), vec2<f32>(-1000f, -418f), vec2<bool>(false, var_0))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-551f, 1280f)))))));
    global1 = array<vec4<bool>, 21>();
    return Struct_1(_wgslsmith_add_u32(reverseBits(0u), u_input.b.x), !vec2<bool>(var_1.x == -1894f, false || !var_0), any(select(vec2<bool>(var_0, all(vec4<bool>(var_0, var_0, var_0, true))), !vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, true), select(vec2<bool>(var_0, false), vec2<bool>(var_0, false), vec2<bool>(true, false)), vec2<bool>(var_0, true)))), _wgslsmith_f_op_f32(1731f * _wgslsmith_f_op_f32(select(1000f, var_1.x, all(vec2<bool>(true, true)) & var_0))), select(select(vec3<bool>(true, false && var_0, !var_0), vec3<bool>(var_0, var_0, false), !select(vec3<bool>(false, true, true), vec3<bool>(var_0, var_0, true), vec3<bool>(true, true, var_0))), !select(vec3<bool>(true, true, true), !vec3<bool>(var_0, false, var_0), vec3<bool>(true, true, true)), true));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> vec4<u32> {
    global1 = array<vec4<bool>, 21>();
    let var_0 = global1[_wgslsmith_index_u32(58695u, 21u)];
    var var_1 = Struct_4(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), func_2(_wgslsmith_mult_u32(188u, u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1584f, -498f, -1194f, _wgslsmith_div_f32(-995f, 916f)), vec4<f32>(_wgslsmith_div_f32(1000f, arg_0.x), arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x - arg_0.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -898f, arg_0.x, -588f))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - -387f), -557f, arg_0.x, _wgslsmith_f_op_f32(round(arg_0.x))))), vec3<u32>(firstLeadingBit(_wgslsmith_sub_u32(countOneBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(14606u, u_input.b.x, 39040u, u_input.c), vec4<u32>(26859u, u_input.b.x, 34072u, 1u)))), _wgslsmith_mult_u32(28197u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.a)), min(vec4<u32>(u_input.b.x, 1u, u_input.a, u_input.a), vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, u_input.b.x)))), 31519u));
    return vec4<u32>(32285u, u_input.c, var_1.b.a, 1u) | (_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.a, 1u, 6086u, var_1.b.a) ^ min(vec4<u32>(1u, var_1.b.a, 1u, 19244u), vec4<u32>(4294967295u, var_1.d.x, u_input.b.x, 1u)), ~vec4<u32>(u_input.c, var_1.b.a, 1u, u_input.b.x)) << (vec4<u32>(var_1.b.a, 116696u, var_1.b.a, _wgslsmith_mult_u32(1u, select(39041u, u_input.b.x, var_0.x))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(false, any(vec3<bool>(true, true, true))));
    let var_1 = ~(~(~abs(u_input.b)));
    var var_2 = ~min(_wgslsmith_mod_vec4_u32(func_1(vec3<f32>(-2234f, 872f, -339f), true), abs(~vec4<u32>(13666u, var_1.x, u_input.c, u_input.a))), _wgslsmith_div_vec4_u32(vec4<u32>(abs(1u), _wgslsmith_clamp_u32(739u, 4294967295u, 4294967295u), ~54187u, 35504u), ~(~vec4<u32>(20694u, u_input.c, var_1.x, var_1.x))));
    let var_3 = Struct_3((~(~vec3<i32>(-11150i, 4094i, u_input.d)) >> (_wgslsmith_clamp_vec3_u32(var_2.xww, vec3<u32>(var_2.x, 4294967295u, var_2.x), _wgslsmith_clamp_vec3_u32(var_2.www, vec3<u32>(72104u, 1u, u_input.c), vec3<u32>(var_2.x, var_1.x, 0u))) % vec3<u32>(32u))) << (var_2.yyz % vec3<u32>(32u)));
    let var_4 = Struct_2(-5178i, select(vec3<u32>(0u, 115913u, ~u_input.c), select(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.c), select(vec3<u32>(31320u, 4294967295u, 92666u), var_2.xxx, true)), _wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, 18170u, 49274u), ~var_2.zzz), !(var_0.x && var_0.x)), !(!func_2(var_2.x).e)));
    var_2 = vec4<u32>(u_input.c >> (var_1.x % 32u), var_4.b.x, select(~var_1.x, _wgslsmith_div_u32(firstLeadingBit(max(43875u, 1u)), var_2.x), var_2.x > 1u), ~var_4.b.x);
    var var_5 = global1[_wgslsmith_index_u32(u_input.a, 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(-1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(411f, 367f) - vec2<f32>(-415f, 1000f)), vec2<f32>(795f, 1329f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-473f, -366f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1676f, 1867f) + vec2<f32>(-641f, -1014f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-569f, -1000f, 378f, 2113f)), vec4<f32>(-817f, -693f, 902f, 451f), vec4<bool>(var_5.x, var_5.x, var_0.x, false)))))));
}

