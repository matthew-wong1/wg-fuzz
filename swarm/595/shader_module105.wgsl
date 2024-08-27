struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> f32 {
    var var_0 = !(!vec3<bool>((0u >> (u_input.b % 32u)) <= u_input.b, select(any(arg_1), true, !arg_1.x), arg_1.x));
    var var_1 = Struct_1(-4610i, ~(~vec4<u32>(~86435u, u_input.b & u_input.b, u_input.b, _wgslsmith_div_u32(u_input.b, u_input.b))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1220f - 1f)))), 0u, arg_0);
    var var_2 = Struct_1(-firstTrailingBit(~(~2147483647i)), var_1.b & _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 0u, 28512u, u_input.b), ~firstTrailingBit(var_1.b), vec4<u32>(1u, 0u, 8368u, u_input.b) & countOneBits(var_1.b)), var_1.c, u_input.b, -1307f);
    let var_3 = (var_1.a & _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, _wgslsmith_mod_i32(var_2.a, 0i)), i32(-1i) * -var_1.a)) << (7876u % 32u);
    let var_4 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(select(~1u, u_input.b >> (4294967295u % 32u), true), u_input.b), countOneBits(_wgslsmith_mod_u32(8593u, abs(var_2.d)))), var_2.b.x >> (_wgslsmith_div_u32(_wgslsmith_div_u32(var_2.b.x >> (u_input.b % 32u), 1u), _wgslsmith_div_u32(var_2.b.x, 455u)) % 32u));
    return _wgslsmith_div_f32(-210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + 780f), 541f) * 911f)));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-global0.x);
    var var_1 = -16603i;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x);
    var_0 = _wgslsmith_f_op_f32(func_3(global0.x, select(!vec4<bool>(true, true, any(vec4<bool>(true, false, true, false)), any(vec4<bool>(false, false, false, true))), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true))))));
    let var_2 = !(!vec4<bool>(any(vec2<bool>(false, true)), true, select(true, true, true), 0u > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 9628u, u_input.b, u_input.b), vec4<u32>(0u, 0u, u_input.b, u_input.b))));
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, arg_1.e, 797f), vec3<f32>(arg_0.c.x, arg_1.c.x, arg_0.c.x)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, 263f, global0.x), vec3<f32>(-1000f, arg_1.c.x, arg_1.c.x))), vec3<f32>(global0.x, arg_1.c.x, global0.x))), true))));
    global0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x)))), _wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(floor(-1317f))), arg_1.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e, global0.x, 1000f) + vec3<f32>(arg_1.c.x, global0.x, arg_1.e)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-735f, global0.x, 1053f), vec3<f32>(arg_0.e, arg_1.e, -369f)))))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.e, _wgslsmith_div_f32(arg_0.e, arg_1.e), _wgslsmith_f_op_f32(min(arg_1.e, -749f))))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, 875f, 232f)) + vec3<f32>(-129f, 596f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.e, 471f), _wgslsmith_f_op_f32(-arg_0.e)))));
    var var_0 = _wgslsmith_add_i32(-arg_1.a, u_input.a.x);
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.c.x, arg_0.c.x, global0.x), vec3<f32>(-967f, global0.x, -103f)))), vec3<f32>(-702f, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -955f)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(arg_1.e, arg_0.c.x, 282f)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-913f, -1156f, _wgslsmith_f_op_f32(round(arg_1.c.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-288f, global0.x, -909f), vec3<f32>(-516f, global0.x, arg_1.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 413f, arg_0.c.x)))))), true));
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    var var_0 = arg_1;
    var_0 = Struct_1(-7277i, _wgslsmith_div_vec4_u32(vec4<u32>(abs(arg_0.d) >> (1u % 32u), ~20317u, var_0.b.x, ~(~arg_0.d)), vec4<u32>(2781u, 24614u, ~countOneBits(18312u), 4294967295u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.e), _wgslsmith_f_op_f32(step(-916f, -151f))), arg_0.c, true)))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, ~(19743u & arg_0.d)), reverseBits(var_0.d), arg_0.b.x), arg_0.e);
    let var_1 = func_4(arg_2, Struct_1(_wgslsmith_mult_i32(arg_1.a, abs(u_input.a.x)) ^ -16200i, vec4<u32>(~func_2(), u_input.b, u_input.b, ~(~1u)), _wgslsmith_f_op_vec2_f32(-var_0.c), ~586u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-722f * 379f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x + 660f))))));
    var var_2 = _wgslsmith_mult_vec4_i32(abs(-min(vec4<i32>(0i, arg_1.a, arg_1.a, arg_0.a), vec4<i32>(arg_2.a, u_input.a.x, -32763i, 1i))) << (~firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.x, 4294967295u, u_input.b, arg_2.b.x), arg_1.b)) % vec4<u32>(32u)), vec4<i32>(arg_0.a, u_input.a.x, 431i, reverseBits(~abs(u_input.a.x))));
    var_2 = _wgslsmith_mult_vec4_i32(select(vec4<i32>(-5166i, arg_1.a, -1i, countOneBits(1i)), countOneBits(_wgslsmith_mod_vec4_i32(min(vec4<i32>(-10446i, arg_0.a, u_input.a.x, var_0.a), vec4<i32>(2147483647i, arg_2.a, var_1.a, arg_2.a)), -vec4<i32>(arg_2.a, -37392i, var_1.a, arg_0.a))), true), countOneBits(-vec4<i32>(2147483647i, 4960i, arg_1.a | 2147483647i, var_2.x)));
    return !select(vec4<bool>(any(!vec3<bool>(arg_3, arg_3, arg_3)), arg_3, arg_3, true), !(!select(vec4<bool>(false, arg_3, true, true), vec4<bool>(true, arg_3, arg_3, arg_3), vec4<bool>(false, arg_3, arg_3, arg_3))), arg_3);
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_0 & arg_0, ~u_input.b), select(47653u, max(u_input.b, u_input.b), true)), _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(0u), arg_0, 61138u), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(u_input.b, 4294967295u, 14501u)))), abs(arg_0));
    var var_1 = ~_wgslsmith_sub_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, u_input.b, 29614u), vec3<u32>(arg_0, arg_0, arg_0))), firstLeadingBit(min(vec3<u32>(31671u, 17517u, u_input.b), reverseBits(vec3<u32>(u_input.b, 1u, arg_0)))));
    let var_2 = Struct_1(arg_2.x, vec4<u32>(~0u, 1u, u_input.b, func_2()), vec2<f32>(_wgslsmith_f_op_f32(floor(-1675f)), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x))))), 4294967295u, -570f);
    let var_3 = u_input.a.x;
    let var_4 = vec3<u32>(u_input.b, _wgslsmith_add_u32(func_2(), var_1.x), 0u);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_f32(func_5(u_input.b, vec3<bool>(any(!func_1(Struct_1(1i, vec4<u32>(58197u, u_input.b, u_input.b, u_input.b), global0.yx, u_input.b, -1000f), Struct_1(var_0, vec4<u32>(1u, u_input.b, u_input.b, 10088u), vec2<f32>(global0.x, -1000f), u_input.b, global0.x), Struct_1(var_0, vec4<u32>(u_input.b, u_input.b, u_input.b, 67811u), global0.yy, u_input.b, global0.x), false)), ~countOneBits(10321u) < u_input.b, true), _wgslsmith_clamp_vec4_i32(vec4<i32>(-(i32(-1i) * -1529i), u_input.a.x, _wgslsmith_sub_i32(reverseBits(var_0), _wgslsmith_mod_i32(var_0, var_0)), ~10931i), _wgslsmith_mult_vec4_i32(~(vec4<i32>(-26575i, var_0, 21508i, u_input.a.x) & vec4<i32>(2147483647i, var_0, -1i, -1i)), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 50323i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, var_0, var_0, var_0)))), (_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_0, u_input.a.x, -37091i), vec4<i32>(46062i, var_0, u_input.a.x, -28858i)) ^ -vec4<i32>(u_input.a.x, var_0, var_0, 0i)) >> (vec4<u32>(u_input.b & u_input.b, 13962u, abs(17710u), u_input.b & 41356u) % vec4<u32>(32u)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1f, global0.x)), _wgslsmith_div_f32(-456f, global0.x))));
    let var_2 = all(select(vec3<bool>(any(vec4<bool>(false, true, true, true)), true, all(vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), any(vec2<bool>(false, false))), true));
    var var_3 = func_4(Struct_1(_wgslsmith_sub_i32(reverseBits(var_0), reverseBits(u_input.a.x) & 0i), firstTrailingBit(vec4<u32>(20949u, 1u, u_input.b, 4294967295u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(18124u, u_input.b, 1u, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 46939u), vec4<u32>(u_input.b, 1u, 29464u, u_input.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, 229f), _wgslsmith_f_op_vec2_f32(floor(global0.xz)))), 1u, global0.x), Struct_1(38142i, vec4<u32>(~23996u, ~u_input.b, u_input.b & u_input.b, max(0u, 52688u)) & abs(reverseBits(vec4<u32>(1u, u_input.b, u_input.b, u_input.b))), vec2<f32>(_wgslsmith_f_op_f32(func_5(firstTrailingBit(4294967295u), vec3<bool>(var_2, false, false), vec4<i32>(var_0, var_0, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(-global0.x)), u_input.b, -1345f));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(399f + 1000f))));
    var_1 = -607f;
    let var_5 = _wgslsmith_f_op_f32(-var_3.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1910f, _wgslsmith_div_f32(var_3.e, -1272f), _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_5, var_3.c.x))))) + vec3<f32>(var_5, _wgslsmith_f_op_f32(global0.x - var_5), -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_5, var_3.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.c.x), 532f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, var_5)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_3.c * var_3.c)))) * vec2<f32>(_wgslsmith_f_op_f32(1558f * _wgslsmith_f_op_f32(-1064f + -1415f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.e - global0.x) + 127f))), func_4(func_4(Struct_1(1i, select(vec4<u32>(var_3.b.x, u_input.b, 11401u, var_3.d), vec4<u32>(4294967295u, 0u, u_input.b, u_input.b), vec4<bool>(var_2, false, var_2, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.e, 128f) - vec2<f32>(-755f, var_5)), _wgslsmith_sub_u32(var_3.b.x, u_input.b), _wgslsmith_f_op_f32(var_3.c.x * global0.x)), func_4(Struct_1(20422i, vec4<u32>(890u, u_input.b, u_input.b, 4294967295u), var_3.c, 52886u, var_3.e), Struct_1(-12001i, vec4<u32>(11366u, 71847u, 0u, var_3.b.x), global0.xx, var_3.b.x, global0.x))), func_4(Struct_1(_wgslsmith_sub_i32(u_input.a.x, -1i), ~var_3.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c.x, 101f) * global0.zx), _wgslsmith_dot_vec2_u32(var_3.b.yy, var_3.b.xz), _wgslsmith_f_op_f32(-261f + global0.x)), func_4(Struct_1(var_0, vec4<u32>(u_input.b, 1u, 4294967295u, 4294967295u), vec2<f32>(var_5, var_3.e), 29522u, 356f), Struct_1(var_0, vec4<u32>(var_3.b.x, 4294967295u, 0u, 0u), global0.yx, 15625u, var_5)))).e);
}

