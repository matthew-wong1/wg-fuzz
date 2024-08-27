struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> bool {
    var var_0 = vec2<bool>(true, !(!(_wgslsmith_add_i32(-2148i, -46395i) == ~global0.b)));
    global0 = Struct_1(global0.a, min(global0.b, i32(-1i) * -1i), -vec3<i32>(-global0.b << (_wgslsmith_dot_vec2_u32(global0.a.xz, vec2<u32>(7166u, 36157u)) % 32u), global0.c.x, _wgslsmith_clamp_i32(1i << (0u % 32u), _wgslsmith_div_i32(global0.c.x, 20634i), -1i)), ~(~firstLeadingBit(vec2<u32>(global0.a.x, u_input.a.x))));
    let var_1 = Struct_1(~vec3<u32>(select(global0.a.x ^ global0.a.x, ~global0.d.x, false && var_0.x), global0.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 28581u, 25649u, 0u), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, global0.d.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, 4044u, 54942u))), -2147483647i, global0.c, ~_wgslsmith_div_vec2_u32(global0.d, vec2<u32>(1u, 1u)));
    let var_2 = _wgslsmith_add_vec4_i32(-_wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, 0i, global0.c.x, var_1.c.x), vec4<i32>(2147483647i, var_1.c.x, -16992i, _wgslsmith_sub_i32(global0.b, 44129i))), vec4<i32>(reverseBits(-2196i), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-18665i, global0.c.x), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global0.b), global0.c.yy))), var_1.c.x, _wgslsmith_div_i32(var_1.c.x | 2147483647i, -reverseBits(global0.b))));
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(153f - _wgslsmith_f_op_f32(f32(-1f) * -264f)), -486f)), 741f), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(abs(1548f))))), _wgslsmith_f_op_f32(f32(-1f) * -950f)));
    return !(var_0.x != (false | var_0.x));
}

fn func_4(arg_0: bool) -> i32 {
    global0 = Struct_1(~global0.a, -2147483647i, global0.c, ~abs(select(global0.a.xx, global0.a.xz, true)) ^ firstLeadingBit(firstTrailingBit(vec2<u32>(global0.a.x, global0.a.x))));
    global0 = Struct_1(~(global0.a | vec3<u32>(~4294967295u, ~0u, 12539u)), -1i, vec3<i32>(global0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(0i, global0.c.x), global0.b), vec3<i32>(1i, -global0.b, 1i)), _wgslsmith_dot_vec4_i32(firstLeadingBit(select(vec4<i32>(-1i, global0.b, global0.c.x, -1i), vec4<i32>(-10234i, global0.c.x, global0.c.x, global0.c.x), arg_0)), max(~vec4<i32>(2147483647i, 1i, global0.b, global0.c.x), firstLeadingBit(vec4<i32>(global0.b, global0.b, global0.b, 1i))))), vec2<u32>(~44197u, u_input.a.x));
    global0 = Struct_1(firstLeadingBit(global0.a), 24645i, vec3<i32>(-1i) * -countOneBits(vec3<i32>(-1i, global0.b, 1i) & global0.c), u_input.a);
    var var_0 = Struct_1(reverseBits(countOneBits(_wgslsmith_mod_vec3_u32(global0.a, ~global0.a))), -1i, -(~(~max(vec3<i32>(1i, global0.c.x, global0.c.x), global0.c))), ~(vec2<u32>(~global0.d.x, 4294967295u) << (u_input.a % vec2<u32>(32u))));
    let var_1 = func_3();
    return var_0.c.x;
}

fn func_2() -> i32 {
    global0 = Struct_1(global0.a << (global0.a % vec3<u32>(32u)), func_4(func_3()), global0.c, ~(~_wgslsmith_add_vec2_u32(vec2<u32>(global0.d.x, 0u) << (global0.a.xz % vec2<u32>(32u)), vec2<u32>(u_input.a.x, u_input.a.x))));
    global0 = Struct_1(global0.a, 0i, vec3<i32>(global0.b, global0.b, 2147483647i), u_input.a);
    var var_0 = ~46303u;
    var var_1 = global0.c;
    var var_2 = Struct_1(countOneBits(abs(abs(~vec3<u32>(global0.d.x, 37017u, 4294967295u)))), global0.c.x, ~vec3<i32>(var_1.x, ~(global0.c.x >> (u_input.a.x % 32u)), ~(-1i)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, ~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(4294967295u, u_input.a.x))), min(vec2<u32>(u_input.a.x, abs(global0.d.x)), global0.a.yx)));
    return 1i;
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    var var_0 = select(arg_0.x, func_2() <= _wgslsmith_sub_i32(34779i, -21196i), true);
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-416f, -1521f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))));
    var var_2 = 31249u >= ((~(~global0.a.x) | u_input.a.x) << (firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(15806u, 50825u, 4294967295u), _wgslsmith_div_vec3_u32(global0.a, global0.a))) % 32u));
    return global0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(1u, u_input.a.x, ~1u);
    var_0 = global0.a;
    let var_1 = max(global0.c.yz, abs(~global0.c.xx));
    let var_2 = any(select(select(vec4<bool>(false, true, true, false), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, any(vec2<bool>(false, false)), true, true)), vec4<bool>(false, 1i <= (-26879i >> (global0.a.x % 32u)), true, true), true));
    let var_3 = ~vec3<u32>(~(~u_input.a.x), 0u, 2243u);
    var_0 = vec3<u32>(~(~31149u), 20033u, func_1(vec3<bool>(true != all(vec2<bool>(var_2, var_2)), !(!var_2), all(vec4<bool>(var_2, false, false, var_2)))));
    var var_4 = countOneBits(var_3.x);
    global0 = Struct_1(~_wgslsmith_mult_vec3_u32(vec3<u32>(global0.d.x | 26287u, 54313u, _wgslsmith_mult_u32(global0.d.x, 2303u)), ~var_3), -(~29459i), vec3<i32>(_wgslsmith_mult_i32(~var_1.x, var_1.x), -38056i, global0.b), vec2<u32>(~_wgslsmith_mod_u32(13718u, 44241u << (var_3.x % 32u)), 1u));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(283f)), vec4<u32>(var_0.x, 4294967295u, _wgslsmith_clamp_u32(global0.d.x, u_input.a.x, var_3.x), global0.a.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1260f, 369f, 1286f, 977f)))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1672f, 1000f, -1000f, 408f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1484f, -744f)) * -1152f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(812f, 501f))), 1000f, -1i <= global0.b))), vec2<u32>(reverseBits(~_wgslsmith_mod_u32(var_3.x, 52532u)), u_input.a.x));
}

