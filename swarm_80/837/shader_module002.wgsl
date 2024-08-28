struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    var var_0 = select(!select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, u_input.d > u_input.b, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), select(false, false, false)), any(vec4<bool>(true, true, true, true))), vec4<bool>(false, true & all(vec3<bool>(true, true, true)), true, true), ~min(30950u, u_input.d) >= 4294967295u), !select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true), any(vec3<bool>(false, true, true)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -2161f))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-494f)), 162f), 113f, false)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: Struct_3) -> u32 {
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    var var_0 = _wgslsmith_add_u32(~(1u & _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 25887u), u_input.a), abs(u_input.a))), arg_1.a.x);
    let var_1 = vec3<u32>(~firstLeadingBit(firstLeadingBit(4294967295u)), _wgslsmith_dot_vec2_u32(arg_1.a, vec2<u32>(~(~0u), 0u)), arg_1.a.x & 0u);
    var_0 = arg_1.a.x;
    return var_1.x;
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2666f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-603f + 303f))))), -551f));
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(min(u_input.d, ~16409u) & ~firstLeadingBit(4294967295u), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.d, u_input.d), ~u_input.d) | countOneBits(_wgslsmith_sub_u32(46360u, 1u)), func_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-194f, var_0), vec2<f32>(var_0, 166f)))), Struct_4(countOneBits(vec2<u32>(88302u, u_input.b)), 1i), Struct_3(_wgslsmith_f_op_f32(func_3()), Struct_1(vec4<f32>(155f, var_0, -708f, var_0))))), u_input.a);
    let var_2 = reverseBits(u_input.a.x);
    global0 = array<Struct_3, 14>();
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1181f)), var_0, var_0, _wgslsmith_f_op_f32(-319f - -1768f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0, -918f, var_0, var_0), vec4<f32>(var_0, var_0, var_0, 835f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(-var_0), -847f, _wgslsmith_div_f32(1282f, var_0)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1154f, var_0, var_0, var_0) - vec4<f32>(309f, var_0, 437f, -466f)))), vec4<bool>(true, true, true, true)))));
    return select(select(vec4<bool>(true, true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), true), any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))))), select(vec4<bool>(!all(vec4<bool>(false, false, false, false)), all(vec4<bool>(false, true, false, false)), all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), select(all(vec2<bool>(true, false)), true, 22391i <= u_input.c)), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true)), true), -32942i != u_input.c);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_3.c.a.yzw);
    var var_1 = !(!select(select(func_2(), select(vec4<bool>(true, arg_3.d, false, arg_3.d), vec4<bool>(arg_3.d, false, false, true), arg_1.x), !vec4<bool>(arg_3.d, arg_3.d, arg_3.d, arg_1.x)), select(select(vec4<bool>(true, true, arg_1.x, false), vec4<bool>(arg_3.d, true, false, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_3.d)), vec4<bool>(arg_1.x, arg_1.x, false, arg_3.d), arg_1.x | arg_1.x), func_2()));
    var_1 = !(!(!(!(!vec4<bool>(true, false, false, arg_3.d)))));
    let var_2 = vec4<i32>(-(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), ~vec2<i32>(17446i, u_input.c)) ^ ~u_input.c), u_input.c, u_input.c, _wgslsmith_mod_i32(u_input.c, _wgslsmith_add_i32(min(2147483647i, countOneBits(102672i)), min(u_input.c, 2147483647i))));
    var var_3 = arg_1;
    return vec2<bool>(all(vec3<bool>(false, func_2().x, false)), any(vec2<bool>(!arg_3.d, var_3.x)));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_4(vec2<u32>(u_input.b, countOneBits(min(u_input.d, u_input.b))) | ~(u_input.a.zy << ((vec2<u32>(u_input.d, 0u) << (vec2<u32>(u_input.b, u_input.d) % vec2<u32>(32u))) % vec2<u32>(32u))), select(u_input.c, u_input.c, func_1(_wgslsmith_f_op_f32(1619f + arg_0), vec3<bool>(arg_2.x, true, false), countOneBits(3796u), Struct_2(161f, vec4<f32>(arg_0, arg_0, -1046f, -1258f), Struct_1(vec4<f32>(-339f, -1820f, 461f, arg_1)), true)).x) | (max(_wgslsmith_add_i32(u_input.c, -38791i), countOneBits(u_input.c)) & _wgslsmith_sub_i32(-u_input.c, -u_input.c)));
    var var_1 = Struct_4(~u_input.a.yz, ~u_input.c);
    let var_2 = vec3<i32>(0i, var_0.b, reverseBits(11647i));
    var_1 = Struct_4(var_0.a, 21373i);
    var var_3 = select(~vec4<i32>(var_1.b, _wgslsmith_clamp_i32(var_1.b, u_input.c, 48405i), 1i, -2147483647i), min(countOneBits(reverseBits(vec4<i32>(var_2.x, 1900i, 0i, -2147483647i))), select(firstTrailingBit(vec4<i32>(u_input.c, var_0.b, var_0.b, var_0.b)), -vec4<i32>(u_input.c, 67765i, u_input.c, 1i), func_2().x)), true) << (~vec4<u32>(var_0.a.x, 4294967295u, u_input.a.x, var_0.a.x) % vec4<u32>(32u));
    return Struct_2(arg_0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -624f, 121f, arg_0) + vec4<f32>(arg_0, -1000f, arg_0, arg_1))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1994f, _wgslsmith_f_op_f32(select(150f, arg_1, arg_2.x)), 668f, _wgslsmith_f_op_f32(f32(-1f) * -975f))))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -659f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-656f * -221f), _wgslsmith_f_op_f32(arg_0 - 519f)))), !(!(606f >= _wgslsmith_f_op_f32(func_3()))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(1116f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-369f, 1f))), _wgslsmith_f_op_f32(sign(-572f))), func_1(_wgslsmith_f_op_f32(637f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1150f - 1015f) * -1406f)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), any(vec3<bool>(false, false, true))), 74199u, Struct_2(_wgslsmith_f_op_f32(-784f * _wgslsmith_f_op_f32(sign(757f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-188f, -685f, -423f, -563f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(635f, 658f, -507f, -1041f))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-329f, 953f, 555f, -507f)))), true)));
    var var_1 = !(!select(vec4<bool>(true, true, true, true), func_2(), !select(vec4<bool>(false, true, var_0.d, var_0.d), vec4<bool>(true, var_0.d, true, false), var_0.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.c.a), var_0.c.a)), _wgslsmith_f_op_vec2_f32(-var_0.b.xw), firstLeadingBit(u_input.c), _wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.b, u_input.a.x, 25405u, 39048u)), ~(~(~vec4<u32>(4294967295u, u_input.b, u_input.d, u_input.d)))), ~firstLeadingBit(abs(vec2<i32>(36678i, 0i))));
}

