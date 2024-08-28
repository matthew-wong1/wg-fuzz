struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(firstTrailingBit(~vec2<i32>(-1i, 0i)), u_input.a), -u_input.a);
    return abs(~_wgslsmith_add_u32(~_wgslsmith_mult_u32(25731u, 119265u), 0u));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_2(-306f);
    var var_1 = Struct_1(4294967295u, 4294967295u, _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, _wgslsmith_mod_u32(51754u, 1u), ~0u), ~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(57770u, 49929u, 4294967295u)), abs(vec3<u32>(1u, 1u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(297f + 905f)));
    var var_2 = min(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(abs(-2147483647i), u_input.a.x, ~u_input.a.x), firstLeadingBit(vec3<i32>(14172i, u_input.a.x, 2147483647i)))), vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mod_i32(-u_input.a.x, 2147483647i)), _wgslsmith_mult_i32(_wgslsmith_div_i32(1i, 1i) << (func_1() % 32u), ~firstLeadingBit(50573i))));
    var var_3 = Struct_2(-1274f);
    let var_4 = 250f;
    return select(countOneBits(vec3<u32>(~4294967295u, 151u, var_1.c.x)), vec3<u32>(select(~1u, max(0u, var_1.c.x), any(vec3<bool>(false, false, true))), select(_wgslsmith_sub_u32(var_1.b, 4294967295u), var_1.a, true) & ~(~0u), _wgslsmith_dot_vec2_u32(countOneBits(var_1.c.yz ^ var_1.c.xx), ~vec2<u32>(48099u, var_1.c.x))), u_input.a.x >= _wgslsmith_mult_i32(-(~u_input.a.x), -11014i));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = 27266u;
    return Struct_1(var_0, 1u, max(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0, var_0, 0u), vec3<u32>(0u, var_0, var_0), func_3()), vec3<u32>(~73344u, _wgslsmith_dot_vec2_u32(vec2<u32>(75044u, 4294967295u), vec2<u32>(var_0, var_0)), var_0 << (43728u % 32u))) | vec3<u32>(var_0, 17795u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_0), vec2<u32>(1u, 1u) << (vec2<u32>(var_0, 17857u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -619f)) - 236f));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: Struct_2) -> f32 {
    let var_0 = arg_0.d;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -842f), _wgslsmith_f_op_f32(round(-800f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a, -1000f) + vec2<f32>(var_0, 1080f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a, _wgslsmith_div_f32(var_0, 428f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_3.a, arg_0.d)))))));
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(abs(1u), (~_wgslsmith_mod_u32(4294967295u, 21372u) >> (0u % 32u)) >> (_wgslsmith_sub_u32(4294967295u, firstTrailingBit(43907u) | countOneBits(18137u)) % 32u), vec3<u32>(0u, 43812u, func_1()), _wgslsmith_f_op_f32(func_4(func_2(true), !select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a.x, 57208i), vec3<i32>(-30350i, u_input.a.x, -1i)), -23864i, 0i), Struct_2(1083f))));
    var var_1 = -105f;
    var var_2 = var_0.b;
    let var_3 = var_0;
    let var_4 = true;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1103f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d)))), _wgslsmith_f_op_f32(-var_3.d)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~var_3.c | (abs(vec3<u32>(56942u, 22077u, var_3.c.x)) & _wgslsmith_add_vec3_u32(vec3<u32>(1u, 22378u, 1u), vec3<u32>(3084u, 0u, var_0.a))), min(var_3.c ^ select(var_3.c, vec3<u32>(var_0.a, 44957u, var_3.c.x), vec3<bool>(var_4, var_4, var_4)), var_3.c)), u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1351f, var_3.d, -657f, var_0.d) + vec4<f32>(var_3.d, -279f, var_0.d, -1052f)))))), vec4<u32>(~0u, ~(1u & (var_0.b >> (var_0.c.x % 32u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b, var_0.a, 5325u), abs(vec3<u32>(2919u, var_3.b, var_3.b))), func_1()), max(_wgslsmith_add_u32(var_3.a, _wgslsmith_add_u32(var_3.c.x, _wgslsmith_mult_u32(var_0.c.x, 31267u))), 4294967295u));
}

