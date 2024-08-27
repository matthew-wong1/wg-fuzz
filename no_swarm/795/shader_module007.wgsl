struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<i32>) -> bool {
    var var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(u_input.b.x), 53156u), _wgslsmith_div_u32(~u_input.b.x, u_input.b.x), u_input.b.x, ~(0u | u_input.b.x)), ~(u_input.b & _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.b.x))));
    var_0 = 16942u;
    let var_1 = Struct_2(vec4<i32>(_wgslsmith_add_i32(-63273i, -37694i), -1i, 1i, min(0i, 0i)));
    var_0 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-669f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -2263f) * _wgslsmith_f_op_f32(f32(-1f) * -996f))))));
    return arg_0;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = (u_input.c.x ^ ~_wgslsmith_mod_i32(-u_input.e, _wgslsmith_sub_i32(-36021i, 64994i))) >> (~u_input.b.x % 32u);
    var_0 = -2147483647i;
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, arg_0.c.a.x, -44116i), vec3<i32>(2147483647i, u_input.a, u_input.a))), u_input.d), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, u_input.d.x, -28273i) | u_input.c.x, 1990i), ~39367i, select(1i, firstLeadingBit(u_input.e >> (arg_0.a.x % 32u)), func_3(false, u_input.c.xy, vec3<i32>(1i, arg_0.c.a.x, -14379i)))), _wgslsmith_div_vec4_i32(arg_0.c.a, vec4<i32>(reverseBits(-u_input.c.x), 20566i, ~(-arg_0.c.a.x), ~(90868i >> (arg_0.a.x % 32u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1));
    var_0 = arg_0.c.a.x ^ _wgslsmith_mod_i32(max(u_input.a, _wgslsmith_div_i32(arg_0.c.a.x, -1i)), arg_0.c.a.x);
    return Struct_1(true);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<i32>) -> bool {
    global0 = true;
    var var_0 = u_input.b.x;
    var var_1 = vec3<u32>(4294967295u, _wgslsmith_div_u32(~_wgslsmith_div_u32(~u_input.b.x, select(arg_0.b.x, 4294967295u, arg_0.e.a)), ~_wgslsmith_add_u32(4332u, ~u_input.b.x)), 4294967295u);
    var_0 = _wgslsmith_div_u32(~52106u << (_wgslsmith_add_u32(~max(5045u, 0u), arg_2.a.x) % 32u), _wgslsmith_clamp_u32(abs(arg_0.a.x), u_input.b.x, select(_wgslsmith_div_u32(arg_0.a.x, ~var_1.x), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, 0u), arg_0.a), ~arg_2.b.yx), true)));
    var var_2 = i32(-1i) * -1i;
    return false;
}

fn func_1(arg_0: Struct_3) -> vec3<bool> {
    global0 = false;
    global0 = true;
    let var_0 = reverseBits(~vec3<u32>(u_input.b.x, firstLeadingBit(58789u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 24574u, u_input.b.x), ~vec3<u32>(arg_0.a.x, arg_0.a.x, 0u))));
    var var_1 = ~(~firstTrailingBit(1u));
    var_1 = 22179u;
    return select(vec3<bool>(true, !arg_0.e.a, any(select(!vec3<bool>(arg_0.d.a, arg_0.d.a, true), vec3<bool>(arg_0.d.a, arg_0.d.a, arg_0.d.a), true))), !select(vec3<bool>(true, !arg_0.d.a, false & arg_0.e.a), select(vec3<bool>(true, true, arg_0.e.a), !vec3<bool>(arg_0.e.a, arg_0.d.a, false), !vec3<bool>(arg_0.d.a, arg_0.e.a, false)), false || arg_0.d.a), true && func_4(Struct_3(vec2<u32>(var_0.x, var_0.x) << (vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u)), vec4<u32>(arg_0.a.x, 0u, 4294967295u, 0u), arg_0.c, func_2(arg_0, vec2<f32>(-1000f, -1880f)), Struct_1(true)), Struct_2(~arg_0.c.a), Struct_3(vec2<u32>(var_0.x, var_0.x), u_input.b, Struct_2(vec4<i32>(arg_0.c.a.x, -2147483647i, u_input.c.x, -15920i)), Struct_1(arg_0.e.a), func_2(Struct_3(var_0.yx, vec4<u32>(var_0.x, var_0.x, 51617u, 1u), Struct_2(arg_0.c.a), arg_0.e, arg_0.d), vec2<f32>(540f, 1000f))), abs(vec2<i32>(arg_0.c.a.x, u_input.d.x))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = 0u;
    var var_1 = ~firstLeadingBit(21264u);
    return Struct_1(arg_3.x);
}

fn func_6(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = arg_1;
    global0 = !all(!vec4<bool>(u_input.d.x <= 47915i, true, all(vec4<bool>(false, var_0.a, true, arg_0)), var_0.a));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(855f, -285f, 1000f)) + vec3<f32>(1059f, 1023f, 483f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2320f, -1523f, -450f))))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-948f, -846f), 1703f, 444f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(705f, -784f, -142f), vec3<f32>(-108f, 1191f, -1151f), var_0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(957f, -210f, -782f) + vec3<f32>(-160f, -716f, 1000f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(469f, 1000f, -584f) - vec3<f32>(2287f, -444f, 233f))))));
    return Struct_2(vec4<i32>(-reverseBits(firstLeadingBit(u_input.a)), ~firstTrailingBit(-39686i), firstLeadingBit(abs(-2147483647i)), -56798i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(true, func_5(!select(func_1(Struct_3(vec2<u32>(1u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), Struct_2(vec4<i32>(-2147483647i, 15956i, u_input.a, -14473i)), Struct_1(true), Struct_1(true))), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), Struct_2(~(~vec4<i32>(41023i, u_input.c.x, 46066i, 18243i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(882f, -1000f, 532f), vec3<f32>(-624f, -2164f, -498f), vec3<bool>(true, false, true))))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)))));
    global0 = ((i32(-1i) * -_wgslsmith_mod_i32(u_input.d.x, u_input.d.x)) <= 1i) || !func_3(true, u_input.d.xz, ~_wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(u_input.a, var_0.a.x, u_input.a)));
    global0 = false;
    var var_1 = _wgslsmith_div_f32(-1000f, 1000f);
    global0 = !(!any(vec4<bool>(true, true, true, false)));
    global0 = false;
    var_1 = _wgslsmith_f_op_f32(444f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(823f))), _wgslsmith_f_op_f32(f32(-1f) * -509f), any(vec2<bool>(u_input.e <= var_0.a.x, true)))));
    var var_2 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(~(24295u >> (u_input.b.x % 32u)), _wgslsmith_div_u32(4294967295u, select(4294967295u, u_input.b.x, false)), ~(~u_input.b.x), countOneBits(4690u << (u_input.b.x % 32u))), vec4<u32>((u_input.b.x ^ u_input.b.x) ^ u_input.b.x, 4294967295u, ~_wgslsmith_mod_u32(u_input.b.x, 4294967295u), countOneBits(u_input.b.x))), countOneBits(~(~3917u)), ~_wgslsmith_clamp_i32(52909i, var_0.a.x, _wgslsmith_add_i32(max(var_0.a.x, 12713i), _wgslsmith_add_i32(-50451i, u_input.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-849f + 1402f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-233f, 1680f)), -244f, true))))));
}

