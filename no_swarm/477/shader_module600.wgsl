struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(-2759i, 0i, -1i));

var<private> global1: f32 = -1000f;

var<private> global2: Struct_2 = Struct_2(false, 6488i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.x, arg_1.x))));
    let var_1 = arg_2;
    global1 = -888f;
    var var_2 = Struct_1(arg_1.x, _wgslsmith_add_u32(17010u, ~_wgslsmith_div_u32(13000u, 1u) << (~select(1u, 32760u, arg_0.a) % 32u)), select(vec3<bool>(all(!vec2<bool>(arg_2.a, true)), true, all(vec2<bool>(arg_2.a, true))), !(!vec3<bool>(false, true, global2.a)), vec3<bool>(true, true, true)));
    var var_3 = -1i;
    return i32(-1i) * -_wgslsmith_clamp_i32(30233i, abs(var_1.b), i32(-1i) * -var_1.b);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> vec2<u32> {
    let var_0 = min(abs(u_input.b), select(u_input.b, ~reverseBits(u_input.a), !select(select(vec4<bool>(global2.a, true, arg_1.x, global2.a), vec4<bool>(global2.a, arg_1.x, arg_1.x, false), global2.a), !vec4<bool>(true, global2.a, arg_1.x, false), arg_1.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -982f))), ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 41267u, 4294967295u), vec4<u32>(101800u, 0u, 0u, 43628u))), arg_1);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -445f) * -571f);
    var var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-reverseBits(13491i), func_3(Struct_2(true, -36661i), vec3<f32>(1075f, 1152f, -522f), Struct_2(global2.a, u_input.a.x)) & 1i), vec2<i32>(_wgslsmith_clamp_i32(51691i, var_0.x, 2147483647i), firstLeadingBit(var_0.x)) ^ var_0.xy), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(31905i, u_input.a.x, 23226i, global2.b) & -var_0), -vec4<i32>(var_0.x, var_0.x, 1i, 54032i)), 2147483647i);
    let var_3 = ~(~(~(~vec4<u32>(4294967295u, 51826u, var_1.b, var_1.b)))) << (~vec4<u32>(var_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(33227u, 13222u, 32528u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_1.b, var_1.b), vec3<u32>(43472u, 21077u, 0u), vec3<u32>(var_1.b, var_1.b, var_1.b))), _wgslsmith_div_u32(var_1.b, 1u), firstLeadingBit(_wgslsmith_add_u32(13824u, var_1.b))) % vec4<u32>(32u));
    return vec2<u32>(var_3.x, var_1.b);
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    global2 = Struct_2(!global2.a, 1i);
    let var_0 = func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(429f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(1f)))))), select(vec3<bool>(!global2.a, arg_0.x, true), vec3<bool>(!global2.a, arg_0.x | select(false, false, global2.a), (global2.b ^ -1i) < (global2.b >> (0u % 32u))), true));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -382f), _wgslsmith_div_f32(1021f, 319f), 0u >= var_0.x))))), _wgslsmith_div_u32(var_0.x ^ 61025u, ~0u), select(vec3<bool>(true, !global2.a, global2.a), !vec3<bool>(arg_0.x || global2.a, all(vec2<bool>(false, global2.a)), global2.a), arg_0.xxz));
    let var_2 = var_1.b;
    global1 = var_1.a;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -523f), _wgslsmith_f_op_f32(2113f - -816f)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = ~arg_3.b;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1616f, arg_0.x)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 62081u, 17659u, 31108u), vec4<u32>(57190u, var_0, 4294967295u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_3.b, var_0, var_0, 28437u), vec4<u32>(53501u, arg_3.b, 11444u, 0u))), vec4<u32>(abs(arg_3.b), 4294967295u, var_0, _wgslsmith_div_u32(arg_3.b, var_0)))), select(!arg_3.c, !vec3<bool>(false & arg_3.c.x, select(false, true, true), !arg_3.c.x), !select(select(arg_3.c, arg_1.zyw, arg_1.xyx), !vec3<bool>(false, arg_3.c.x, true), vec3<bool>(true, arg_3.c.x, true))));
    var var_2 = ~min(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0, 16997u), vec3<u32>(var_1.b, 28736u, 4294967295u), vec3<u32>(71867u, var_1.b, arg_3.b)), ~vec3<u32>(arg_3.b, var_0, var_1.b)), ~(vec3<u32>(4469u, 16255u, var_1.b) & vec3<u32>(var_0, arg_3.b, 1u))) << (((select(_wgslsmith_mod_vec3_u32(vec3<u32>(76192u, 4294967295u, var_1.b), vec3<u32>(var_1.b, var_0, 4294967295u)), vec3<u32>(1u, var_1.b, arg_3.b), !vec3<bool>(arg_1.x, false, false)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(6864u, var_0, var_1.b) & vec3<u32>(4294967295u, 4294967295u, arg_3.b), vec3<u32>(0u, var_0, 4294967295u))) | ~(vec3<u32>(var_0, 52852u, 10323u) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(1291u, var_0, var_0), vec3<u32>(arg_3.b, var_0, 35293u)) % vec3<u32>(32u)))) % vec3<u32>(32u));
    global1 = _wgslsmith_div_f32(-848f, -716f);
    return Struct_2(any(vec2<bool>(false, var_1.c.x)), max(~global2.b, _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(6306i, -1i), global2.b), global2.b, _wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(1i, 44389i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(1903f - -421f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(select(vec4<bool>(false, true, global2.a, global2.a), vec4<bool>(true, global2.a, true, global2.a), vec4<bool>(global2.a, global2.a, false, false)))))), select(!(!(!vec4<bool>(false, false, global2.a, global2.a))), vec4<bool>((-9524i ^ global2.b) != abs(-20750i), _wgslsmith_f_op_f32(950f * -1197f) >= _wgslsmith_f_op_f32(sign(-2018f)), true, true), !vec4<bool>(global2.a, true, select(global2.a, global2.a, global2.a), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-161f + _wgslsmith_f_op_f32(step(-183f, _wgslsmith_f_op_f32(f32(-1f) * -251f))))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1156f, -334f, global2.a))))), 4294967295u, vec3<bool>(true, false, global2.a)));
    var var_1 = !(!(!(!select(vec3<bool>(true, false, var_0.a), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(global2.a, true, global2.a)))));
    global2 = Struct_2(!select(false, !var_0.a, true), ~(abs(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(1i, global2.b, -2147483647i, global2.b))) >> (1u % 32u)));
    global1 = _wgslsmith_div_f32(-213f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(abs(646f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-300f, _wgslsmith_f_op_f32(652f + 1070f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(389f))))));
    var var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(1f, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1945f * -243f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-450f * -941f) - _wgslsmith_f_op_f32(f32(-1f) * -1547f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1006f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.a)) * -1000f), 706f, 1f), max(_wgslsmith_add_i32(0i, _wgslsmith_mod_i32(2147483647i, -2147483647i)), var_0.b) << (~1u % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, _wgslsmith_f_op_f32(sign(-1227f)), _wgslsmith_f_op_f32(abs(1750f)), _wgslsmith_f_op_f32(164f - -109f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(598f, 924f, -133f, 208f), vec4<f32>(1371f, -1397f, 1345f, -1000f))) - vec4<f32>(1263f, -542f, 477f, 1648f))))));
}

