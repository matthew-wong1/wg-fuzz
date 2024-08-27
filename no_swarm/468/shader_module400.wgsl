struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(35028u, 1307u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<u32>, arg_3: vec2<f32>) -> vec4<i32> {
    let var_0 = vec3<bool>(true, any(vec4<bool>(arg_3.x == _wgslsmith_f_op_f32(-392f - arg_3.x), true, true, all(vec2<bool>(arg_0, true)))), !any(select(!vec3<bool>(false, false, arg_0), !vec3<bool>(arg_0, arg_0, true), true)));
    var var_1 = Struct_1(arg_0, ~countOneBits(vec2<i32>(18746i, u_input.a)), vec3<i32>(-u_input.a, max(-1i, -(~(-2147483647i))), -max(1i, _wgslsmith_add_i32(-2147483647i, u_input.a))), vec3<u32>(0u, global0.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global0.x, 0u, arg_2.x), vec4<u32>(16785u, u_input.b, 4127u, 4294967295u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(127534u, arg_1, 5690u, 10154u), vec4<u32>(arg_2.x, global0.x, 0u, global0.x), vec4<u32>(300u, 35295u, 0u, 4015u)))));
    var_1 = Struct_1((false & all(!var_0.zx)) | !(!var_1.a), vec2<i32>(~min(abs(-3728i), _wgslsmith_div_i32(2147483647i, 46959i)), 1i), var_1.c, var_1.d);
    global0 = arg_2.xz ^ _wgslsmith_clamp_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(arg_2.xx, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(global0.x, arg_1)), ~vec2<u32>(u_input.b, arg_1))), select(vec2<u32>(~global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_1), vec2<u32>(arg_1, arg_2.x))), vec2<u32>(_wgslsmith_mod_u32(5781u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(67332u, 10244u, var_1.d.x, arg_2.x), vec4<u32>(u_input.b, 14173u, 20703u, arg_2.x))), !(!var_0.zx)), vec2<u32>(~0u, _wgslsmith_div_u32(u_input.b >> (global0.x % 32u), u_input.b)));
    global0 = ~vec2<u32>(~_wgslsmith_mod_u32(arg_2.x, var_1.d.x), _wgslsmith_add_u32(~(var_1.d.x << (102528u % 32u)), arg_2.x));
    return vec4<i32>(min(abs(-50618i), _wgslsmith_div_i32(_wgslsmith_add_i32(~(-28386i), u_input.a << (arg_1 % 32u)), countOneBits(1i))), var_1.c.x, abs(-2147483647i), -45018i);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> vec4<i32> {
    var var_0 = Struct_3(~u_input.b, reverseBits(-(~(-vec2<i32>(1i, -1i)))));
    var_0 = Struct_3(global0.x, vec2<i32>(-1i) * -(~reverseBits(arg_0.c.yw)));
    var_0 = Struct_3(u_input.b, vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(1i, 0i)), vec2<i32>(-21966i, -2147483647i)), -5324i), ~2147483647i));
    var_0 = Struct_3(global0.x, -(~arg_0.c.xy));
    let var_1 = Struct_3(abs(4332u), vec2<i32>(1i, u_input.a));
    return -select(firstTrailingBit(select(_wgslsmith_add_vec4_i32(arg_0.c, vec4<i32>(var_0.b.x, 19169i, 1946i, var_1.b.x)), _wgslsmith_add_vec4_i32(arg_0.c, vec4<i32>(arg_0.c.x, -19274i, 29149i, -1i)), !arg_0.a)), ~(~func_3(false, u_input.b, vec3<u32>(global0.x, u_input.b, 1u), vec2<f32>(-1000f, arg_0.b.x))), select(!(!vec4<bool>(true, arg_0.a, false, arg_0.a)), vec4<bool>(!arg_0.a, arg_0.a, true, false), !select(vec4<bool>(arg_0.a, false, arg_0.a, true), vec4<bool>(true, false, arg_0.a, true), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a))));
}

fn func_4(arg_0: vec4<i32>) -> vec2<u32> {
    let var_0 = all(!select(vec2<bool>(true, false), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, false))));
    global0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(~4294967295u, ~29237u, global0.x) | (u_input.b << (0u % 32u)), _wgslsmith_div_u32(_wgslsmith_div_u32(~0u, ~1u), u_input.b)), ~abs(min(~vec2<u32>(u_input.b, 4294967295u), select(vec2<u32>(4294967295u, 0u), vec2<u32>(global0.x, u_input.b), vec2<bool>(var_0, var_0)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1578f, -140f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1825f) * vec2<f32>(-134f, -1000f))))))));
    let var_2 = Struct_2(false, vec2<f32>(_wgslsmith_f_op_f32(ceil(-127f)), _wgslsmith_f_op_f32(506f + 1000f)), arg_0);
    return vec2<u32>(u_input.b, ~u_input.b);
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: u32, arg_3: bool) -> Struct_2 {
    global0 = ~(~vec2<u32>(~4294967295u, 0u));
    global0 = func_4(func_2(Struct_2(true, arg_1, -abs(vec4<i32>(-50705i, u_input.a, u_input.a, u_input.a))), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 61054u), vec2<u32>(arg_2, u_input.b)), ~vec2<u32>(0u, arg_2), abs(vec2<u32>(global0.x, arg_2)))));
    let var_0 = _wgslsmith_add_u32(abs(abs(~global0.x | 1u)), countOneBits(~1u));
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(~1u, 1u), select(vec2<u32>(var_0, ~(~4294967295u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 10574u, var_0), vec3<u32>(arg_2, var_0, global0.x)), 4294967295u) & max(max(vec2<u32>(105154u, var_0), vec2<u32>(11088u, u_input.b)), vec2<u32>(4294967295u, u_input.b) << (vec2<u32>(var_0, 13024u) % vec2<u32>(32u))), !arg_0));
    var var_1 = arg_1.x;
    return Struct_2(!any(select(!vec3<bool>(arg_0, arg_3, arg_3), vec3<bool>(true, arg_0, false), vec3<bool>(true, arg_3, true))), arg_1, vec4<i32>(max(u_input.a, ~u_input.a), -13683i | _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 25823i, u_input.a), vec3<i32>(1i, u_input.a, u_input.a)), u_input.a, firstTrailingBit(abs(47365i))) >> (select(vec4<u32>(_wgslsmith_div_u32(4294967295u, global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 69922u, arg_2), vec4<u32>(77007u, var_0, 41768u, 42296u)), arg_2, ~u_input.b), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 11512u, u_input.b, 0u), vec4<u32>(18538u, 1u, 35940u, var_0)), ~global0.x, ~global0.x), arg_0) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(all(!vec4<bool>(all(vec3<bool>(false, false, false)), true, false, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1560f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -844f)))), ~_wgslsmith_mod_u32(u_input.b, 0u) & ~(u_input.b | _wgslsmith_add_u32(u_input.b, global0.x)), global0.x > 1u);
    let var_1 = Struct_1(false, _wgslsmith_div_vec2_i32((-vec2<i32>(u_input.a, 2147483647i) | -var_0.c.yz) << ((~vec2<u32>(6537u, global0.x) ^ ~vec2<u32>(28823u, 32984u)) % vec2<u32>(32u)), vec2<i32>(-2147483647i, ~var_0.c.x | var_0.c.x)), vec3<i32>(min(153i & u_input.a, 1i), _wgslsmith_div_i32(u_input.a & var_0.c.x, 1i), abs(-9433i)) & func_1((var_0.c.x > u_input.a) == var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) + _wgslsmith_f_op_vec2_f32(select(var_0.b, vec2<f32>(229f, -517f), var_0.a))), 4294967295u & ~global0.x, var_0.a).c.wxz, vec3<u32>(27172u, 1u, ~(~(~u_input.b))));
    global0 = ~select(~var_1.d.xz, ~min(var_1.d.yz << (var_1.d.yz % vec2<u32>(32u)), vec2<u32>(1u, u_input.b)), vec2<bool>(false, func_1(global0.x < 4294967295u, _wgslsmith_f_op_vec2_f32(-var_0.b), var_1.d.x, 25298i == var_0.c.x).a));
    var var_2 = func_1(var_1.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x) - vec2<f32>(var_0.b.x, -148f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1225f, 471f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b.x, -715f))))), var_1.d.x, !(((var_1.a && false) && true) && false)).c.yx;
    global0 = vec2<u32>(8641u, ~firstTrailingBit(40707u | global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_1(true, var_0.b, ~reverseBits(var_1.d.x), var_0.a).b.x), vec2<u32>(~global0.x, ~19439u));
}

