struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(197f, arg_1.x))))) - _wgslsmith_f_op_vec2_f32(-arg_1.xz)), Struct_1(select(vec4<bool>(662f > arg_1.x, all(vec4<bool>(true, false, arg_0.c.x, arg_0.a.x)), arg_0.c.x, any(arg_0.c.wyw)), select(select(arg_0.c, arg_0.a, false), !vec4<bool>(true, arg_0.a.x, arg_0.b.x, arg_0.a.x), !arg_0.a.x), arg_0.c.x), vec4<bool>(true, false, true, any(vec3<bool>(false, arg_0.a.x, arg_0.c.x))), arg_0.a), 1808f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x)));
    var_1 = _wgslsmith_div_f32(-576f, _wgslsmith_f_op_f32(f32(-1f) * -789f));
    var_1 = 420f;
    var var_2 = select(~(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 1i), ~vec2<i32>(6825i, 5596i))), ~select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(4294967295u, 28890u) % vec2<u32>(32u)), vec2<i32>(-8454i, -44063i)), vec2<i32>(_wgslsmith_mod_i32(u_input.a, -20855i), -u_input.a), var_0.b.c.x), !all(vec3<bool>(var_0.b.a.x, arg_0.a.x, false)) & var_0.b.c.x);
    return all(select(vec3<bool>(~45005u < _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(60743u, 1u)), true, var_0.b.b.x), vec3<bool>(false, !any(var_0.b.a.ywz), true), !var_0.b.b.xxz));
}

fn func_2() -> Struct_2 {
    var var_0 = 49634i;
    var var_1 = select(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(false, false, true), func_3(Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), vec3<f32>(130f, 484f, -514f)))), select(select(vec3<bool>(false, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))), all(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false))), _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(10170i, u_input.a), reverseBits(-15887i)), _wgslsmith_add_i32(u_input.a, ~(-29514i))) <= u_input.a);
    var_0 = -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(17024i, u_input.a)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))), vec2<i32>(u_input.a, 0i));
    var_0 = -_wgslsmith_div_i32(u_input.a, _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, -1i), u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-2512i, u_input.a, -3043i), ~vec3<i32>(u_input.a, -1i, u_input.a))));
    var_0 = u_input.a;
    return Struct_2(Struct_1(vec4<bool>(var_1.x & var_1.x, any(select(var_1.yz, vec2<bool>(var_1.x, true), var_1.x)), var_1.x, false), !vec4<bool>(any(vec4<bool>(false, var_1.x, true, true)), all(vec3<bool>(var_1.x, true, true)), var_1.x | true, func_3(Struct_1(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, false, false)), vec3<f32>(-125f, 329f, 902f))), vec4<bool>(true, var_1.x, !(-2147483647i > u_input.a), var_1.x)), Struct_1(vec4<bool>(true, reverseBits(u_input.a) == -23306i, var_1.x, var_1.x), !vec4<bool>(false, true, var_1.x, all(vec3<bool>(var_1.x, false, var_1.x))), select(vec4<bool>(true, true, all(var_1.xy), var_1.x), vec4<bool>(true, true, var_1.x, var_1.x), select(!vec4<bool>(true, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, false, true, true), vec4<bool>(var_1.x, false, var_1.x, true), true), select(vec4<bool>(true, false, false, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true), true)))), 26005u, Struct_1(!select(vec4<bool>(true, var_1.x, true, var_1.x), select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(false, var_1.x, true, true)), vec4<bool>(false, true, true, false)), vec4<bool>(false || var_1.x, var_1.x, false || (var_1.x || var_1.x), func_3(Struct_1(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, false, var_1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(768f, -497f, -285f), vec3<f32>(-2321f, -128f, 580f)))), select(!select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(var_1.x, false, var_1.x, var_1.x)), vec4<bool>(false, func_3(Struct_1(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), vec3<f32>(1000f, 221f, -458f)), true, true), !var_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1345f - -1657f), _wgslsmith_f_op_f32(-494f + -1450f)) * vec2<f32>(_wgslsmith_f_op_f32(-334f + 173f), _wgslsmith_f_op_f32(floor(-960f))))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.e.x, -506f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2)) + arg_2)), arg_2), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, 1000f, -838f, -527f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-824f * arg_0.e.x), 2405f, _wgslsmith_f_op_f32(f32(-1f) * -1114f), -1293f)))));
    let var_1 = _wgslsmith_f_op_f32(671f + _wgslsmith_f_op_f32(max(700f, arg_0.e.x)));
    var var_2 = vec2<u32>(41609u, 20114u);
    var var_3 = _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(u_input.a, abs(u_input.a), -11526i, u_input.a)), vec4<i32>(-2147483647i, 22635i, -(-25479i | min(27777i, u_input.a)), -(~1i) << (abs(func_2().c) % 32u)));
    var var_4 = (1i != var_3.x) | any(vec4<bool>(arg_0.d.c.x, arg_1, false, _wgslsmith_f_op_f32(max(-457f, var_1)) <= _wgslsmith_f_op_f32(f32(-1f) * -723f)));
    return _wgslsmith_div_vec3_u32(firstTrailingBit(~(~vec3<u32>(65701u, var_2.x, 53982u)) << (~select(vec3<u32>(4294967295u, var_2.x, var_2.x), vec3<u32>(0u, var_2.x, 77409u), false) % vec3<u32>(32u))), countOneBits(vec3<u32>(firstTrailingBit(arg_0.c >> (var_2.x % 32u)), ~firstTrailingBit(0u), 51842u)));
}

fn func_1() -> Struct_1 {
    let var_0 = ~(vec3<u32>(15355u, 4294967295u, _wgslsmith_mult_u32(52553u, _wgslsmith_clamp_u32(20490u, 1u, 4294967295u))) | select(func_4(func_2(), false, _wgslsmith_f_op_f32(-1041f + 197f)), vec3<u32>(4294967295u, 50970u, min(4294967295u, 26049u)), true));
    var var_1 = Struct_3(vec2<f32>(1584f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(169f + 1037f))), Struct_1(vec4<bool>(_wgslsmith_mult_u32(var_0.x, 0u) >= 51910u, true, true, true), select(vec4<bool>(true, true, true, true), func_2().a.a, vec4<bool>(true, true, true, true)), func_2().d.c), -251f);
    var var_2 = vec4<bool>(true, true && !(!var_1.b.b.x), func_3(func_2().a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 609f, 616f)))), !var_1.b.b.x);
    var var_3 = func_2().a;
    var_3 = var_1.b;
    return var_1.b;
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = -986f;
    let var_1 = true;
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(4294967295u, 55905u, 0u)), ~vec3<u32>(42272u, 14835u, 25495u))), ~(~(~0u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 4294967295u, 40277u, 0u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 74359u), vec2<u32>(31261u, 72981u))), reverseBits(1u)), abs(countOneBits(abs(vec4<u32>(4294967295u, 36181u, 24836u, 4294967295u)))));
    var var_3 = func_2();
    let var_4 = true || (_wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, u_input.a, 33314i, u_input.a)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 26443i, u_input.a, u_input.a), vec4<i32>(u_input.a, 1i, 763i, 2988i)), vec4<i32>(u_input.a, 2147483647i, 8298i, 26751i) & vec4<i32>(17746i, -1i, 46115i, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(-58226i, u_input.a, -2147483647i, 5634i), vec4<i32>(u_input.a, u_input.a, u_input.a, -66808i)))) >= -1i);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(-firstLeadingBit(u_input.a), -1i, ~(-32361i) << (var_2 % 32u)), reverseBits(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 0i, 11010i) & vec3<i32>(u_input.a, -1i, u_input.a), firstTrailingBit(vec3<i32>(-84678i, -1i, u_input.a))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, 0i, -47627i), vec3<i32>(u_input.a, u_input.a, -5491i)))));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    var var_0 = func_1();
    var_0 = Struct_1(arg_1.a, arg_1.a, arg_1.a);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(801f, -1000f), vec2<f32>(-1439f, -276f)))))), Struct_1(!vec4<bool>(false, var_0.b.x, any(var_0.b), false & arg_1.a.x), !(!(!vec4<bool>(true, false, var_0.b.x, arg_1.c.x))), var_0.c), -103f);
    var_0 = arg_1;
    var_0 = arg_1;
    return Struct_2(Struct_1(select(vec4<bool>(false, arg_1.a.x, !var_1.b.a.x, true), func_1().c, var_1.b.c.x), !(!var_0.c), vec4<bool>(all(var_0.b), all(select(vec2<bool>(var_0.c.x, arg_1.c.x), var_1.b.a.zz, false)), true, func_1().a.x)), var_1.b, arg_2 >> (max(~1u << (arg_2 % 32u), _wgslsmith_mod_u32(21255u << (arg_2 % 32u), ~2041u)) % 32u), func_2().b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(round(-960f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0u & _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(80449u, 1u, 14444u)) << (~(~47184u) % 32u), ~1u);
    let var_1 = _wgslsmith_mult_i32(21501i, 1i) >= u_input.a;
    var var_2 = func_6(func_5(func_1()) | (10066i << (func_2().c % 32u)), Struct_1(select(vec4<bool>(true, var_1, true, any(vec3<bool>(true, var_1, true))), vec4<bool>(!var_1, u_input.a == -18451i, u_input.a == u_input.a, true), select(func_1().a, vec4<bool>(true, true, true, var_1), !var_1)), vec4<bool>(true, false, any(!vec4<bool>(true, var_1, var_1, var_1)), true), func_2().d.b), ~max(firstTrailingBit(var_0), ~8192u << (_wgslsmith_clamp_u32(var_0, 27287u, 1u) % 32u)));
    let var_3 = 1i >> (max(52154u, ~(~func_6(u_input.a, var_2.d, var_2.c).c)) % 32u);
    var_2 = func_6(var_3, Struct_1(!var_2.a.a, select(!var_2.d.c, vec4<bool>(true, !var_1, var_2.c < var_0, true), !(false | var_1)), select(!vec4<bool>(false, var_2.d.c.x, var_2.a.b.x, var_2.d.c.x), func_1().a, func_1().b)), _wgslsmith_sub_u32(8172u, var_2.c));
    var_2 = Struct_2(var_2.b, Struct_1(vec4<bool>(!(var_2.d.a.x && var_1), select(false, false, var_1) == true, false, false), func_1().c, !var_2.d.c), countOneBits(var_0), func_2().d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.e.x), 583f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(407f)), var_2.e.x, _wgslsmith_f_op_f32(var_2.e.x * -108f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1189f, var_2.e.x, var_2.e.x) - vec3<f32>(var_2.e.x, 1441f, var_2.e.x)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-218f, var_2.e.x, -1000f))))))), var_3, _wgslsmith_f_op_f32(sign(1052f)), ~firstTrailingBit(max(vec2<u32>(var_0, var_2.c), vec2<u32>(var_0, var_0))) & vec2<u32>(31198u, var_2.c), _wgslsmith_div_i32(u_input.a, ~var_3));
}

