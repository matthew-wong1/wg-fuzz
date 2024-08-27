struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(arg_1.a, arg_1.b);
    let var_1 = 1049f;
    let var_2 = Struct_1(var_0.a, true);
    let var_3 = select(28953u, _wgslsmith_clamp_u32(37299u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 37845u)), 27465u), true) > u_input.d;
    var var_4 = select(~u_input.d, _wgslsmith_sub_u32(u_input.d, _wgslsmith_mult_u32(34941u, u_input.d)), !select(false && any(vec2<bool>(arg_1.b, false)), true, !(!arg_1.b)));
    return _wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.d, 4294967295u, u_input.d), _wgslsmith_add_vec4_u32(vec4<u32>(40639u, 1u, 25549u, u_input.d), vec4<u32>(1u, 4294967295u, 37898u, u_input.d)))) & vec4<u32>(~4101u << ((u_input.d | 32777u) % 32u), ~firstLeadingBit(u_input.d), u_input.d, _wgslsmith_sub_u32(u_input.d, ~u_input.d)), ~(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(20628u, 5351u, u_input.d, 39990u), vec4<u32>(49102u, u_input.d, 21491u, 24759u))) & select(vec4<u32>(u_input.d, 21703u, 2082u, 46514u), vec4<u32>(u_input.d, 0u, 4294967295u, u_input.d), vec4<bool>(true, true, true, true))));
}

fn func_2() -> i32 {
    let var_0 = firstTrailingBit(vec3<i32>(u_input.a, u_input.c, -(~(~u_input.a))));
    let var_1 = func_3(abs(5679i), Struct_1(abs(_wgslsmith_mod_vec2_i32(var_0.xx, var_0.zz | u_input.b.yz)), !any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))));
    let var_2 = Struct_1(vec2<i32>(countOneBits(~var_0.x) ^ -40902i, -2147483647i), _wgslsmith_add_i32(var_0.x, 2147483647i) > select(max(u_input.b.x & 1i, select(1i, 0i, true)), u_input.a, true));
    let var_3 = _wgslsmith_dot_vec3_i32(-(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-77884i, 2010i, 65679i), vec3<i32>(-13888i, -42211i, -47442i), u_input.b)), u_input.b) & var_2.a.x;
    let var_4 = vec2<i32>(-1i, -14118i);
    return 2995i;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: i32, arg_3: u32) -> i32 {
    var var_0 = Struct_1(-vec2<i32>(1i, -2147483647i), true);
    var var_1 = Struct_1(vec2<i32>(~(i32(-1i) * -1i) & u_input.c, -1i), _wgslsmith_add_i32(~u_input.a, countOneBits(-10117i)) >= -28387i);
    var var_2 = select(select(!select(vec4<bool>(var_1.b, var_0.b, false, var_0.b), !vec4<bool>(var_0.b, false, var_0.b, false), true), select(select(vec4<bool>(false, false, var_0.b, true), select(vec4<bool>(true, var_1.b, var_0.b, true), vec4<bool>(false, var_0.b, var_0.b, var_1.b), vec4<bool>(true, var_0.b, var_1.b, var_1.b)), vec4<bool>(var_1.b, false, var_0.b, var_1.b)), select(!vec4<bool>(var_0.b, true, var_1.b, true), vec4<bool>(true, true, true, true), !vec4<bool>(var_1.b, true, var_1.b, var_1.b)), select(select(vec4<bool>(false, var_1.b, var_0.b, var_1.b), vec4<bool>(false, true, false, false), true), select(vec4<bool>(var_1.b, var_0.b, var_1.b, false), vec4<bool>(false, var_1.b, var_0.b, false), true), arg_0.x <= u_input.d)), var_0.b), select(vec4<bool>(false, !(!var_0.b), true, 4294967295u >= arg_3), !(!(!vec4<bool>(false, var_1.b, true, true))), any(vec2<bool>(true, true)) == all(!vec4<bool>(var_0.b, var_1.b, var_0.b, var_1.b))), select(select(vec4<bool>(!var_1.b, var_1.b, any(vec2<bool>(false, var_1.b)), true), select(!vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), !vec4<bool>(var_1.b, var_1.b, var_1.b, var_0.b), select(vec4<bool>(true, var_0.b, true, true), vec4<bool>(true, true, true, false), false)), !(!vec4<bool>(var_1.b, var_1.b, var_0.b, var_0.b))), select(!vec4<bool>(false, var_0.b, var_1.b, true), vec4<bool>(true, true, any(vec4<bool>(true, false, false, true)), all(vec2<bool>(true, false))), all(!vec4<bool>(var_0.b, false, var_0.b, var_1.b))), var_1.b));
    let var_3 = -5586i;
    let var_4 = Struct_1(select(_wgslsmith_mod_vec2_i32(var_1.a ^ u_input.b.xx, vec2<i32>(54129i, arg_2) & vec2<i32>(4144i, -1i)) ^ vec2<i32>(_wgslsmith_sub_i32(var_1.a.x, var_3), -30580i), reverseBits(vec2<i32>(u_input.c, arg_2)), var_0.b), true);
    return 1i & _wgslsmith_dot_vec4_i32(reverseBits(select(min(vec4<i32>(0i, -1i, -56332i, var_4.a.x), vec4<i32>(var_1.a.x, 13990i, u_input.c, -2147483647i)), vec4<i32>(var_3, -12144i, -27983i, arg_2), any(vec2<bool>(var_1.b, true)))), select(abs(max(vec4<i32>(10040i, var_3, var_1.a.x, var_0.a.x), vec4<i32>(var_3, var_4.a.x, 1i, 2147483647i))), (vec4<i32>(var_3, u_input.a, var_3, 1i) ^ vec4<i32>(var_0.a.x, var_1.a.x, var_0.a.x, 2147483647i)) << (vec4<u32>(1u, arg_1, 0u, arg_0.x) % vec4<u32>(32u)), !(!vec4<bool>(var_4.b, var_1.b, var_4.b, var_1.b))));
}

fn func_1() -> f32 {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2680f, _wgslsmith_f_op_f32(1308f * -839f)), vec2<f32>(_wgslsmith_f_op_f32(-1328f - -760f), _wgslsmith_f_op_f32(ceil(-216f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1062f, true))), 214f))));
    let var_2 = vec2<bool>(true, true);
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(~_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.c, 24573i, -38901i), u_input.a), func_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.d, 1u), vec3<u32>(0u, 8395u, 77492u) & vec3<u32>(u_input.d, 17569u, u_input.d), _wgslsmith_sub_vec3_u32(vec3<u32>(17479u, 1u, 14435u), vec3<u32>(4294967295u, u_input.d, u_input.d))), 1u, -func_2(), countOneBits(u_input.d))), u_input.a);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = ~_wgslsmith_div_u32(u_input.d, 1928u) <= (~(~(~0u)) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, u_input.d), select(vec2<u32>(56195u, u_input.d), vec2<u32>(u_input.d, 1u), true)), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 0u), vec2<u32>(29654u, u_input.d)), firstTrailingBit(vec2<u32>(u_input.d, 39381u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -526f), 263f), _wgslsmith_f_op_f32(-129f * 498f))));
    var_0 = !(u_input.d != _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 17014u), min(vec2<u32>(u_input.d, 1u), vec2<u32>(u_input.d, 0u))), _wgslsmith_mod_u32(~u_input.d, u_input.d ^ u_input.d)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1134f), var_1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-598f, 203f))))), _wgslsmith_f_op_f32(-var_1.x)));
    var_0 = all(select(vec3<bool>(true, true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, 16035u <= u_input.d, select(true, false, false)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), false)));
    let var_3 = vec4<i32>(-(~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.c, -2147483647i), vec3<i32>(65991i, -18052i, u_input.c)))), -1i, -2147483647i, -51997i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec3<u32>(0u, u_input.d, u_input.d))), -1834f, vec2<u32>(~abs(u_input.d & 44719u), ~1u), 24758u);
}

