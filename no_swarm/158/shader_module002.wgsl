struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 1u, 43462u, 1u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = Struct_2(~_wgslsmith_mod_i32(-u_input.b, u_input.b), countOneBits(select(abs(vec3<u32>(u_input.c.x, u_input.c.x, arg_0.b.x)), ~(global0.wyy & arg_0.b), -10373i < _wgslsmith_clamp_i32(2147483647i, 2147483647i, -2147483647i))), arg_0, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1348f, 491f, arg_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(484f - 825f) + -477f)), 1f), arg_0);
    var var_1 = vec2<bool>(!arg_0.a, false);
    var var_2 = ~(4294967295u & _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(4294967295u, arg_0.c.x)), ~(~var_0.b.yy)));
    var var_3 = Struct_3(-39415i);
    global0 = vec4<u32>(~firstTrailingBit(28396u), ~global0.x >> (min(abs(_wgslsmith_mult_u32(arg_0.b.x, 4294967295u)), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_0.e.c.x, arg_0.b.x, 30062u)), vec3<u32>(u_input.c.x, u_input.c.x, 2080u))) % 32u), u_input.c.x, firstLeadingBit(_wgslsmith_clamp_u32(16998u, arg_0.b.x, 7196u) ^ ~u_input.c.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(38016u, 1u, countOneBits(global0.x)), countOneBits(select(vec3<u32>(global0.x, var_0.e.b.x, 0u), global0.wyx, var_0.e.a))) % 32u));
    return min(-_wgslsmith_div_vec2_i32(max(vec2<i32>(var_0.a, 0i), vec2<i32>(u_input.a, 0i)) & select(vec2<i32>(u_input.b, var_0.a), vec2<i32>(u_input.b, var_0.a), vec2<bool>(false, true)), vec2<i32>(_wgslsmith_clamp_i32(1i, -6335i, -10502i), ~2147483647i)), -max(vec2<i32>(u_input.a | 1i, -u_input.a), vec2<i32>(var_0.a, u_input.a) & _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(0i, 53161i))));
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = 587f;
    var var_1 = func_3(Struct_1(!arg_0.a, ~abs(_wgslsmith_sub_vec3_u32(global0.zxz, global0.yww)), vec2<u32>(33050u, ~u_input.c.x) ^ _wgslsmith_div_vec2_u32(vec2<u32>(6802u, 79134u), u_input.c)));
    var var_2 = vec3<i32>(u_input.b, var_1.x, -var_1.x);
    var_1 = firstLeadingBit(var_2.yx);
    var_0 = _wgslsmith_f_op_f32(1219f - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-864f - -1468f)), _wgslsmith_f_op_f32(-1f)))));
    return ~arg_0.b;
}

fn func_1() -> vec3<i32> {
    let var_0 = reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(1i, abs(-1i), _wgslsmith_mod_i32(0i, u_input.b)), max(abs(vec3<i32>(u_input.a, u_input.a, -23394i)), -vec3<i32>(2147483647i, u_input.b, u_input.b)))) << (_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(func_2(Struct_1(false, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec2<u32>(0u, 37035u))), _wgslsmith_add_vec3_u32(global0.zww, global0.xxx)), vec3<u32>(~0u, firstLeadingBit(0u), global0.x)), ~vec3<u32>(func_2(Struct_1(false, vec3<u32>(u_input.c.x, global0.x, 21353u), vec2<u32>(85641u, 8416u))).x, ~u_input.c.x, ~global0.x)) % vec3<u32>(32u));
    var var_1 = -var_0.zy;
    var_1 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, _wgslsmith_clamp_i32(~0i, var_0.x, 1i)), firstTrailingBit(~abs(var_0.xz)));
    var_1 = min(min(vec2<i32>(_wgslsmith_mult_i32(select(-1i, var_0.x, true), min(u_input.a, 0i)), reverseBits(firstLeadingBit(var_0.x))), vec2<i32>(-13869i, var_0.x)), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-1i, _wgslsmith_mod_i32(var_1.x, u_input.b))), var_0.zy));
    let var_2 = -899f;
    return vec3<i32>(min(var_0.x, var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, 0i, u_input.a, abs(u_input.b)), ~(~vec4<i32>(u_input.a, -1i, var_0.x, var_1.x))) & u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, var_1.x), ~var_0.zy), select(var_0.zy, var_0.zy, vec2<bool>(true, true))), reverseBits(vec2<i32>(-u_input.b, firstTrailingBit(-2147483647i)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, 719f, 2179f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1820f, 239f, -344f, arg_1.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1487f, arg_1.x, 756f, 1136f))))))));
    var var_1 = !vec4<bool>(true, abs(global0.x ^ 20067u) == reverseBits(~59140u), all(!select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, true, arg_2))), arg_2);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -358f), _wgslsmith_f_op_f32(floor(var_0.x)), arg_1.x)));
    var_1 = !(!select(vec4<bool>(select(false, false, false), !arg_2, all(vec2<bool>(arg_2, false)), true), select(vec4<bool>(false, true, var_1.x, true), !vec4<bool>(false, false, arg_2, arg_2), vec4<bool>(var_1.x, var_1.x, true, true)), vec4<bool>(any(var_1.wwz), true, any(vec3<bool>(arg_2, false, arg_2)), false)));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, -1000f, true)) * -510f) + _wgslsmith_f_op_f32(min(614f, _wgslsmith_f_op_f32(1099f + arg_1.x)))) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1371f, 157f)), _wgslsmith_f_op_f32(-var_0.x)))), -35057i >= _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(-55336i, arg_0.x), u_input.a), 1i, -min(u_input.b, 847i))));
    return Struct_3(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.x, u_input.b, arg_0.x, 0i)), vec4<i32>(-1i, 2147483647i, 2147483647i, -1i) << (vec4<u32>(global0.x, global0.x, 42945u, global0.x) % vec4<u32>(32u))), -u_input.a) << (~u_input.c.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(((global0.x >> (39249u % 32u)) << ((60731u << (u_input.c.x % 32u)) % 32u)) ^ global0.x, 15193u, abs(global0.x), 4294967295u), vec4<u32>(~(~4294967295u | firstTrailingBit(0u)), 0u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~global0.wyz, select(global0.xzy, global0.zxy, true)), select(vec3<u32>(global0.x, u_input.c.x, 40123u) & global0.zyx, ~global0.xzy, u_input.b < u_input.a)), u_input.c.x & _wgslsmith_mod_u32(reverseBits(global0.x), max(83482u, 39067u))));
    let var_0 = func_4(-(~func_1()), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2059f, -467f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1186f), vec2<f32>(-1000f, -993f), false)), _wgslsmith_div_vec2_f32(vec2<f32>(-1808f, 1040f), vec2<f32>(-810f, 1000f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1288f, 453f))))), 4294967295u != ~(~u_input.c.x))), false);
    let var_1 = 0i;
    let var_2 = !vec4<bool>(true, true, all(vec4<bool>(all(vec3<bool>(false, true, true)), any(vec4<bool>(true, false, true, false)), true, true)), firstLeadingBit(65564i) > (1i ^ _wgslsmith_clamp_i32(1i, var_1, u_input.b)));
    global0 = ~(vec4<u32>(global0.x, 4294967295u, select(_wgslsmith_sub_u32(0u, global0.x), u_input.c.x | 1u, var_2.x), ~(~u_input.c.x)) >> (max(_wgslsmith_add_vec4_u32(select(vec4<u32>(35688u, 12209u, u_input.c.x, 0u), vec4<u32>(u_input.c.x, u_input.c.x, global0.x, 0u), var_2), select(vec4<u32>(u_input.c.x, 0u, global0.x, global0.x), vec4<u32>(4294967295u, 84018u, u_input.c.x, 0u), var_2.x)), ~vec4<u32>(20748u, 1u, 4294967295u, u_input.c.x)) % vec4<u32>(32u)));
    global0 = _wgslsmith_clamp_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(26443u, global0.x, 55305u, 1u), vec4<u32>(u_input.c.x, u_input.c.x, 6318u, 4294967295u))), firstLeadingBit(vec4<u32>(u_input.c.x, global0.x, 33093u, u_input.c.x) ^ vec4<u32>(4294967295u, 0u, global0.x, u_input.c.x)))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 1u, global0.x, 18066u), vec4<u32>(4294967295u, 18481u, 17510u, u_input.c.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 34815u, 4294967295u, 85030u), vec4<u32>(u_input.c.x, 31349u, 1u, u_input.c.x)), var_2.x), abs(~vec4<u32>(87365u, 43956u, global0.x, 1u)), ~firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, global0.x, u_input.c.x))), firstTrailingBit(vec4<u32>(global0.x, firstTrailingBit(u_input.c.x), 1u, global0.x))), ~vec4<u32>(~(~32624u), 11461u, reverseBits(~7886u), firstLeadingBit(_wgslsmith_mult_u32(48758u, u_input.c.x))));
    var var_3 = select(select(!(!select(vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, var_2.x), false)), select(var_2.zy, select(!vec2<bool>(false, var_2.x), vec2<bool>(true, true), var_2.x), false), var_2.zw), !vec2<bool>(!all(vec3<bool>(false, true, true)), true), vec2<bool>(true && ((1u <= global0.x) | true), !any(var_2.yyy)));
    let var_4 = Struct_1(true, ~(~vec3<u32>(_wgslsmith_add_u32(u_input.c.x, 31203u), abs(global0.x), 30716u)), _wgslsmith_clamp_vec2_u32(~u_input.c, min(abs(~u_input.c), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(global0.wz, vec2<u32>(1u, global0.x)), ~vec2<u32>(0u, 32373u))), min(u_input.c, u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(~(-46809i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1461f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-445f + -1535f), _wgslsmith_f_op_f32(-199f + -321f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), 580f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(985f, -583f, 1204f, -329f), _wgslsmith_div_vec4_f32(vec4<f32>(-294f, 176f, 2316f, 733f), vec4<f32>(839f, 295f, 662f, 756f)), true)))), func_4(-abs(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a, -1i, -2147483647i), vec3<i32>(u_input.a, 2147483647i, u_input.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-808f, 1198f), vec2<f32>(-1347f, 902f))) + vec2<f32>(1f, 1f)), !(var_4.a | !var_2.x)).a, vec2<i32>(var_0.a, _wgslsmith_add_i32(_wgslsmith_add_i32(var_0.a, u_input.a), -1977i)) >> (u_input.c % vec2<u32>(32u)));
}

