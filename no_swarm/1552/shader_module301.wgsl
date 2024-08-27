struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = vec3<f32>(-505f, _wgslsmith_f_op_f32(floor(-326f)), -1258f);
    var var_1 = _wgslsmith_f_op_f32(round(-1000f));
    let var_2 = true;
    let var_3 = arg_0;
    var var_4 = vec2<bool>(false, var_3.c.x);
    return u_input.b;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec2<u32>(~(u_input.b & firstTrailingBit(u_input.b)), firstLeadingBit(30042u)), func_3(Struct_1(u_input.d.xw, 0u, vec2<bool>(true, true), u_input.a, u_input.d.x)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, true))), vec2<bool>(true, !(0i >= u_input.e.x)), all(vec3<bool>(true, true, true))), u_input.e.x, countOneBits(abs(~abs(u_input.d.x))));
    var var_1 = vec4<bool>(true, !var_0.c.x, true, true);
    let var_2 = vec4<f32>(-2149f, _wgslsmith_f_op_f32(-1f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-360f, 880f)))));
    var_1 = select(select(vec4<bool>(true, all(!vec2<bool>(false, var_0.c.x)), (var_1.x || true) | any(vec4<bool>(var_0.c.x, var_1.x, true, var_1.x)), 49740u < ~u_input.b), !(!vec4<bool>(false, var_1.x, false, var_0.c.x)), !(!(!vec4<bool>(true, true, var_0.c.x, false)))), !(!(!vec4<bool>(false, var_1.x, false, false))), u_input.a != (-2147483647i & _wgslsmith_clamp_i32(firstLeadingBit(26253i), -62582i, u_input.a)));
    var_1 = select(!(!(!(!vec4<bool>(true, true, false, var_1.x)))), select(!select(!vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x), select(vec4<bool>(false, true, var_0.c.x, var_1.x), vec4<bool>(var_0.c.x, true, var_1.x, var_0.c.x), true), var_0.c.x || false), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, var_0.c.x, false, var_1.x), vec4<bool>(true, true, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, var_1.x, true, var_0.c.x)), vec4<bool>(false, var_1.x, true, var_1.x)), true), false && (true || var_1.x));
    return Struct_1(vec2<u32>(~countOneBits(_wgslsmith_mod_u32(u_input.b, 41894u)), ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(293u, u_input.d.x), max(var_0.b, var_0.a.x))), 39281u, select(select(select(var_0.c, !vec2<bool>(true, var_0.c.x), var_1.yx), vec2<bool>(16970u <= var_0.a.x, var_0.c.x), true), vec2<bool>(true, true), any(vec4<bool>(!var_0.c.x, true, var_0.c.x, !var_0.c.x))), abs(1i), 0u);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = vec2<bool>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1.b, 0u, 51220u)), vec3<u32>(1u, arg_1.e, 3294u)), 0u) >= arg_1.e, true);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-820f)) - arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -720f)))), arg_0, 1113f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_0, -288f, arg_0)))), var_0.x));
    var var_2 = Struct_1(arg_1.a & vec2<u32>(~u_input.d.x, reverseBits(arg_1.e)), max(_wgslsmith_sub_u32(~(~u_input.b), 0u), _wgslsmith_clamp_u32(~arg_1.e, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d), 45646u)), !arg_1.c, 2147483647i, u_input.b);
    let var_3 = var_1.zyx;
    var var_4 = var_2.a;
    return (arg_1.d ^ _wgslsmith_div_i32(-1i, -abs(-11430i))) <= _wgslsmith_sub_i32(-func_2().d, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.e.zw, u_input.e.yw), ~28002i) << (u_input.d.x % 32u));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = vec3<bool>(!func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -313f) - _wgslsmith_f_op_f32(-1060f * -756f)), func_2(), _wgslsmith_f_op_f32(f32(-1f) * -622f)), 64897u == select(max(12151u, 0u), _wgslsmith_clamp_u32(arg_2.x, 0u, 1u) | reverseBits(arg_3.b), true), arg_3.c.x);
    var var_1 = arg_1;
    var_1 = arg_3.b;
    var_1 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_3.e ^ _wgslsmith_clamp_u32(~u_input.d.x, ~25718u, arg_1), countOneBits(arg_1)), arg_2.x);
    let var_2 = func_2();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(537f, -1091f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-838f + 315f)));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: f32) -> vec3<u32> {
    let var_0 = u_input.c.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.xz - vec2<f32>(arg_1.x, 938f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.x, 444f), vec2<f32>(790f, arg_2)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xx), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(439f, arg_1.x), arg_1.zw))))) * arg_1.zw) + arg_1.xx);
    var var_2 = func_2();
    var var_3 = reverseBits(firstTrailingBit(_wgslsmith_mult_vec3_u32(min(max(arg_0, vec3<u32>(25056u, 0u, arg_0.x)), u_input.d.wwz), _wgslsmith_sub_vec3_u32(arg_0, vec3<u32>(arg_0.x, 0u, var_2.b)) | min(u_input.d.ywz, vec3<u32>(92713u, 43941u, 41800u)))));
    let var_4 = func_2();
    return _wgslsmith_clamp_vec3_u32(~u_input.d.yyw, ~(select(u_input.d.zxz, firstLeadingBit(vec3<u32>(25033u, 62629u, 25460u)), vec3<bool>(false, true, false)) ^ ((vec3<u32>(var_2.e, 1u, 18673u) | u_input.d.ywz) << (arg_0 % vec3<u32>(32u)))), ~(~arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(func_5(max(u_input.d.yzz, ~vec3<u32>(4294967295u, u_input.d.x, 64147u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1301f, -1430f, 679f, -1404f) + vec4<f32>(-1388f, 533f, 1000f, 213f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.e.x, 4294967295u, vec2<u32>(u_input.d.x, u_input.b), Struct_1(u_input.d.xx, u_input.b, vec2<bool>(false, false), u_input.a, 66933u))))) | _wgslsmith_div_vec3_u32(abs(countOneBits(u_input.d.yzy)), u_input.d.yyw));
    let var_1 = func_2();
    let var_2 = _wgslsmith_add_i32(var_1.d, var_1.d) | (-_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.e.wxw, vec3<i32>(1i, var_1.d, u_input.a)), 6434i) | u_input.e.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-354f - -1092f), _wgslsmith_div_f32(-1210f, -829f), _wgslsmith_f_op_f32(f32(-1f) * -775f)), vec3<f32>(_wgslsmith_f_op_f32(step(495f, 2450f)), -571f, -784f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1608f, 257f, -862f))), vec3<f32>(826f, 990f, -1443f), vec3<bool>(var_1.c.x, true, var_1.c.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(~var_2, 43885u, abs(vec2<u32>(0u, var_0.x)), Struct_1(var_1.a, 9714u, var_1.c, var_2, u_input.b))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1586f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(915f * 214f), 1239f, 540f)))));
    let var_4 = ~((_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -1i, 1066i, 30679i), u_input.e << (u_input.d % vec4<u32>(32u)), ~vec4<i32>(u_input.a, u_input.e.x, var_1.d, var_1.d)) | max(vec4<i32>(-1i, 83i, -13526i, 10117i), select(vec4<i32>(var_2, var_1.d, -2147483647i, u_input.e.x), vec4<i32>(6756i, -27176i, u_input.a, var_2), var_1.c.x))) | u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

