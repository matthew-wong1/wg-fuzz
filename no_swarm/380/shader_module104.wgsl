struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(~(~(~max(0i, -19050i))));
    global0 = _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(64917u, ~(~countOneBits(u_input.a)), u_input.b.x, ~u_input.b.x));
    let var_1 = abs(~(~_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-1i, var_0.a, var_0.a)), ~vec3<i32>(0i, var_0.a, 2147483647i), vec3<i32>(var_0.a, var_0.a, var_0.a))));
    var var_2 = Struct_1(-1i);
    let var_3 = var_1;
    return vec4<bool>(all(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, var_1.x > 49122i, true), false)), true, !all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, true, false), true)), true != all(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true))));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = -1002f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f - -1385f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -841f) * 317f) + _wgslsmith_f_op_f32(156f + -1101f))));
    var var_1 = vec2<f32>(-124f, -248f);
    let var_2 = 707f;
    var_0 = var_1.x;
    return any(select(!func_3(), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, any(vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true)), 19142u == _wgslsmith_dot_vec2_u32(global0.xy, u_input.b.wy)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = !all(vec3<bool>(!select(true, false, false), select(all(vec2<bool>(false, false)), true, true), func_2(Struct_1(40941i))));
    let var_1 = Struct_1(firstLeadingBit(min(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0, arg_0, arg_0, 2147483647i), ~vec4<i32>(arg_1.a, arg_1.a, arg_1.a, 50095i)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_1.a, -1i), arg_1.a << (u_input.b.x % 32u), 0i))));
    global0 = vec4<u32>(~_wgslsmith_dot_vec3_u32(abs(select(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(0u, global0.x, u_input.b.x), vec3<bool>(true, true, true))), _wgslsmith_mult_vec3_u32(abs(global0.wzw), vec3<u32>(53099u, 98183u, u_input.b.x))), _wgslsmith_dot_vec3_u32(max(_wgslsmith_div_vec3_u32(u_input.b.yzz, _wgslsmith_sub_vec3_u32(global0.xzy, global0.xxy)), vec3<u32>(~4294967295u, u_input.b.x ^ 11440u, _wgslsmith_div_u32(u_input.b.x, global0.x))), ~global0.xyx), u_input.b.x, _wgslsmith_mult_u32(countOneBits(7555u), 1u));
    let var_2 = Struct_1(_wgslsmith_clamp_i32(-(~var_1.a), _wgslsmith_div_i32(var_1.a, arg_0), select(arg_1.a, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-40577i, -14023i, 8526i)), vec3<i32>(10214i, var_1.a, arg_0)), true | all(vec2<bool>(true, false)))));
    return StorageBuffer(-1i, firstTrailingBit(45393u), ~_wgslsmith_clamp_vec3_u32(u_input.b.zxx, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, global0.x, 1u), u_input.b.yyx), u_input.b.yyx), global0.zwx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(394f, -1000f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-414f, 733f) * vec2<f32>(291f, -1548f))))), _wgslsmith_mult_i32(25204i, _wgslsmith_add_i32(-27711i, max(max(var_2.a, var_2.a), reverseBits(arg_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 11690u, 4294967295u), u_input.b), abs(u_input.a)), ~(~u_input.b.x), ~(global0.x << (u_input.b.x % 32u)), u_input.b.x) ^ u_input.b, firstLeadingBit(reverseBits(~(~u_input.b))));
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1170f)) - -1204f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-806f)), _wgslsmith_f_op_f32(f32(-1f) * -2550f)))), -467f, _wgslsmith_f_op_f32(max(860f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(230f + -1574f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(474f * 559f) - 1894f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(848f + _wgslsmith_f_op_f32(max(-799f, -302f))), -708f)));
    let x = u_input.a;
    s_output = func_1(select(19492i, 1i, any(vec2<bool>(54768u == global0.x, 637f <= var_0.x))), Struct_1(1i));
}

