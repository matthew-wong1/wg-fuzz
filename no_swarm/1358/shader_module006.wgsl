struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global0 = array<Struct_1, 20>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-336f - -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1414f)), 450f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1883f) + _wgslsmith_f_op_f32(-298f - -1000f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(857f, 1000f, 1000f, -215f) + vec4<f32>(1828f, -300f, -897f, -301f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, -272f, -186f, -1127f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(1000f, -1789f)), -414f, _wgslsmith_div_f32(455f, 175f), -725f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(677f, 255f, 472f, 130f), vec4<f32>(-530f, -1856f, 340f, 121f), true)))));
    var var_1 = Struct_1(vec4<bool>(all(vec2<bool>(true, true)), true, any(vec2<bool>(true, true)), any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true)))), arg_0.x, ~1i, u_input.a.x, _wgslsmith_add_i32(-u_input.a.x, _wgslsmith_mult_i32(countOneBits(-u_input.a.x), abs(~32474i))));
    global0 = array<Struct_1, 20>();
    var var_2 = Struct_2(arg_0.x, Struct_1(!select(vec4<bool>(var_1.a.x, true, false, false), var_1.a, var_1.a.x || true), arg_0.x, countOneBits(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d, var_1.c, u_input.a.x), vec3<i32>(var_1.d, 22195i, u_input.a.x))), ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_1.d, u_input.a.x, 1i), vec3<i32>(u_input.a.x, -9889i, -41516i), true), abs(vec3<i32>(0i, 2147483647i, 23459i))), 0i), var_1.b ^ (34585u & ~arg_0.x), !vec3<bool>(true, select(!var_1.a.x, all(var_1.a.yyy), 1u <= arg_0.x), all(!var_1.a)), var_1.e);
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: i32) -> u32 {
    global0 = array<Struct_1, 20>();
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(~arg_1)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(345f))), _wgslsmith_div_f32(_wgslsmith_div_f32(811f, -428f), 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1535f + 1088f) - _wgslsmith_f_op_f32(-196f + -1641f)))), _wgslsmith_f_op_f32(trunc(812f)), -476f);
    let var_1 = countOneBits(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.a.x, 34086i, 15602i), vec4<i32>(u_input.a.x, -2431i, arg_2, 0i) ^ vec4<i32>(-1i, 38826i, -2147483647i, 0i)), u_input.a.x), arg_0.x, arg_2, -1i));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yz + var_0.zx) + _wgslsmith_f_op_vec2_f32(-var_0.yx)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.zy))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -479f))))) - var_0.xy);
    let var_3 = vec4<bool>(!any(vec4<bool>(all(vec4<bool>(false, true, true, false)), true, true, all(vec3<bool>(true, false, false)))), any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)))), !(!(!(2318f <= var_2.x))), all(vec2<bool>(true, true)));
    return abs(0u << (firstTrailingBit(0u) % 32u));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<bool>, arg_3: i32) -> f32 {
    var var_0 = Struct_2(~func_2(vec3<i32>(arg_3, u_input.a.x, u_input.a.x), reverseBits(vec2<u32>(arg_0, arg_0)), ~u_input.a.x) << (46457u % 32u), Struct_1(!vec4<bool>(select(false, arg_2.x, true), true, false, !arg_2.x), 4294967295u, -_wgslsmith_add_i32(-22443i, -1665i), 1i, u_input.a.x), arg_0, arg_2, countOneBits(5103i));
    global0 = array<Struct_1, 20>();
    let var_1 = 50854u;
    let var_2 = arg_1;
    let var_3 = Struct_2(_wgslsmith_clamp_u32(~(~var_0.a), 1u, select(1u, 22586u, !var_0.b.a.x)) >> (~(var_1 ^ (12068u & arg_0)) % 32u), Struct_1(select(vec4<bool>(false, var_0.d.x, arg_2.x || false, var_0.d.x | arg_2.x), vec4<bool>(!arg_2.x, any(var_0.b.a), true, true), var_0.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(19409u, 46326u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 6495u, 1u, 11934u), vec4<u32>(var_2, 29984u, arg_0, var_2))), vec3<u32>(_wgslsmith_clamp_u32(var_0.a, var_0.b.b, 0u), var_0.b.b, 0u)), _wgslsmith_clamp_i32(select(u_input.a.x, 37566i, true), _wgslsmith_add_i32(0i, 27294i), u_input.a.x) ^ -min(var_0.e, arg_3), abs(31304i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 26541i, -var_0.e, -58374i), _wgslsmith_div_vec4_i32(vec4<i32>(53471i, 4734i, 1i, -12126i) & vec4<i32>(2147483647i, var_0.e, 2147483647i, var_0.e), ~vec4<i32>(-45694i, var_0.b.c, arg_3, 9594i)))), var_2, !select(select(vec3<bool>(var_0.b.a.x, arg_2.x, var_0.d.x), var_0.d, select(true, var_0.d.x, var_0.b.a.x)), var_0.d, var_0.d.x), u_input.a.x);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1140f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -countOneBits(_wgslsmith_mod_i32(_wgslsmith_sub_i32(~(-1i), u_input.a.x >> (37378u % 32u)), u_input.a.x));
    global0 = array<Struct_1, 20>();
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1150f * 1f), _wgslsmith_f_op_f32(func_1(12821u, 0u, vec3<bool>(true, true, true), i32(-1i) * -1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1673f - -494f)), -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(ceil(-755f)), -1590f, _wgslsmith_f_op_f32(-136f + 533f))))), !any(vec2<bool>(true, true))));
    global0 = array<Struct_1, 20>();
    let var_2 = ~abs(vec2<u32>(~(~1u), 1u));
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, var_3);
}

