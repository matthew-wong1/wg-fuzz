struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = Struct_4(Struct_3(Struct_1(vec2<bool>(any(vec2<bool>(true, false)), true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(477f, -320f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1487f, 2770f), vec2<f32>(-1284f, 1047f))), true))), vec3<bool>(true, true, ~u_input.a.x >= _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -22346i, u_input.a.x))), -1i, Struct_1(vec2<bool>(true, all(vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1496f, -651f)))));
    let var_1 = -342f;
    let var_2 = 62804u;
    var var_3 = var_0.a.a.a.x;
    var var_4 = _wgslsmith_add_u32(_wgslsmith_mod_u32(~var_2, min(~(4294967295u >> (0u % 32u)), ~(~var_2))), _wgslsmith_mult_u32(40069u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, 68598u, 4294967295u, 1669u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_2, 16596u, 41072u), vec4<u32>(0u, 35438u, 0u, 0u)), vec4<u32>(var_2, var_2, 31148u, var_2), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2, var_2, var_2, 4294967295u), vec4<u32>(var_2, 32911u, var_2, var_2))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -540f) + 1f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1983f * -1151f))))) - _wgslsmith_f_op_f32(func_3()));
    var var_1 = Struct_1(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), all(vec4<bool>(false, true, false, true))), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 492f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(229f, var_0))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))));
    var_1 = Struct_1(select(vec2<bool>(false, true), vec2<bool>(any(select(vec3<bool>(true, var_1.a.x, false), vec3<bool>(var_1.a.x, true, false), false)), false), select(!(!vec2<bool>(var_1.a.x, var_1.a.x)), !vec2<bool>(var_1.a.x, true), select(select(true, var_1.a.x, true), var_1.a.x, var_1.a.x))), vec2<f32>(-1293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(620f - var_0), _wgslsmith_f_op_f32(select(var_0, -1280f, false)))))));
    var_1 = Struct_1(select(vec2<bool>(true, true), !select(vec2<bool>(true, var_1.a.x), !vec2<bool>(var_1.a.x, var_1.a.x), true || var_1.a.x), var_1.a), var_1.b);
    var_1 = Struct_1(!var_1.a, _wgslsmith_f_op_vec2_f32(ceil(var_1.b)));
    return ~((~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(0u, 13933u, 15045u)) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(76254u, 52222u, 4294967295u)) % 32u)) ^ ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 4148u, 29488u), 1u));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-415f - -873f), _wgslsmith_div_f32(177f, -1105f))), 1f, -121f)));
    return ~(_wgslsmith_dot_vec3_i32(countOneBits(-u_input.a.xzx), _wgslsmith_sub_vec3_i32(reverseBits(u_input.a.yxw), u_input.a.zxz)) | 2147483647i);
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: f32, arg_3: bool) -> Struct_3 {
    let var_0 = select(_wgslsmith_sub_i32(arg_1.a.c, select(~arg_1.a.c, arg_1.a.c, any(vec3<bool>(arg_1.a.b.x, arg_3, true))) ^ arg_0), -18480i, !(40709i >= func_4(func_2(), vec3<u32>(1u, 4294967295u, 0u), all(vec2<bool>(arg_1.a.a.a.x, false)))));
    var var_1 = vec4<u32>(_wgslsmith_div_u32(~(~(~1u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(countOneBits(101014u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 48465u, 81333u), vec3<u32>(60364u, 0u, 2691u))), max(1u, ~4294967295u))), _wgslsmith_div_u32(_wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(func_2(), _wgslsmith_dot_vec2_u32(vec2<u32>(28581u, 64686u), vec2<u32>(58401u, 30135u)))), abs(4294967295u)), 0u, _wgslsmith_mod_u32(7386u, ~(~10121u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.a.b.x, 516f, arg_2))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.a.b.x, 1442f, arg_2)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2, 2261f, -840f)))))) + vec3<f32>(arg_1.a.a.b.x, 1089f, arg_1.a.d.b.x)));
    let var_3 = var_0;
    let var_4 = Struct_2(52638u);
    return arg_1.a;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.a.d.b.x);
    var_0 = arg_1.a.b.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(548f + 221f));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(~1u, 1u, 4294967295u, firstLeadingBit(6615u));
    var_0 = vec4<u32>(~_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 17495u), vec2<u32>(1u, var_0.x))), var_0.x), var_0.x, ~func_5(Struct_4(func_1(u_input.a.x, Struct_4(Struct_3(Struct_1(vec2<bool>(true, true), vec2<f32>(-597f, 1133f)), vec3<bool>(true, false, true), u_input.a.x, Struct_1(vec2<bool>(false, false), vec2<f32>(878f, -1135f)))), 444f, true)), Struct_3(Struct_1(vec2<bool>(false, false), vec2<f32>(197f, -1352f)), vec3<bool>(true, true, true), reverseBits(u_input.a.x), Struct_1(vec2<bool>(true, false), vec2<f32>(-441f, -209f)))), _wgslsmith_mult_u32(0u, 1u));
    var_0 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 51692u, var_0.x, 84880u), vec4<u32>(40382u, 4294967295u, 4294967295u, var_0.x)), ~(~vec4<u32>(var_0.x, 52210u, 100u, var_0.x)), abs(countOneBits(vec4<u32>(4294967295u, var_0.x, 0u, 72346u)))), vec4<u32>(~62617u, _wgslsmith_add_u32(countOneBits(var_0.x), abs(55104u)), ~(~var_0.x), 0u));
    let var_1 = Struct_2(var_0.x << (var_0.x % 32u));
    let var_2 = vec3<i32>(u_input.a.x, -1i, u_input.a.x);
    var_0 = vec4<u32>(var_1.a, min(_wgslsmith_mod_u32(~(~var_1.a), ~(30859u << (1u % 32u))), 62292u), firstTrailingBit(var_1.a >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a, var_0.x, var_1.a, 72030u), vec4<u32>(46628u, var_0.x, 4294967295u, var_1.a) & vec4<u32>(var_1.a, 28928u, 11565u, var_0.x)) % 32u)), var_0.x ^ 19493u);
    var var_3 = Struct_2(var_0.x | var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(567f, _wgslsmith_f_op_f32(f32(-1f) * -1006f)) * -718f), _wgslsmith_div_i32(max(countOneBits(u_input.a.x), 1i), var_2.x), var_0.x, countOneBits(countOneBits(var_0.yyy)));
}

