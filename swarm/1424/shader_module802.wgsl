struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_2,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 52623u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec4<i32> {
    var var_0 = ~(~(~(-select(16572i, -1i, false))));
    global1 = 1u;
    var var_1 = Struct_2(Struct_1(!(_wgslsmith_mod_i32(74772i, 11992i) == ~u_input.c.x), select(~u_input.e.x & (41905u << (u_input.a % 32u)), u_input.e.x, true)), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(max(56025i, ~0i), 0i, 1i)), Struct_1(true, ~_wgslsmith_mult_u32(~30941u, u_input.e.x)), Struct_1(false, abs(u_input.e.x)));
    var var_2 = !(!vec3<bool>(!(!var_1.d.a), all(vec4<bool>(false, true, var_1.c.a, var_1.a.a)) && true, true));
    var var_3 = Struct_3(537f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(470f, 275f, false))), -vec4<i32>(u_input.c.x, _wgslsmith_mod_i32(firstTrailingBit(var_1.b), ~var_1.b), u_input.c.x, var_1.b), Struct_2(var_1.d, _wgslsmith_mult_i32(35895i, u_input.d.x), var_1.a, Struct_1(true, 0u)), firstLeadingBit(1u), 76155i);
    return var_3.b;
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = -655f;
    var var_1 = Struct_3(false, ~(~func_3()), Struct_2(Struct_1(any(vec2<bool>(true, true)), ~(~arg_0.x)), u_input.c.x, Struct_1(true, abs(22897u >> (arg_0.x % 32u))), Struct_1(true, u_input.a)), ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(abs(35184u), arg_0.x, arg_0.x << (arg_0.x % 32u)), countOneBits(~72122u)), abs(~(u_input.d.x & u_input.c.x)) & min(u_input.d.x, 0i));
    global1 = 53603u;
    var var_2 = !select(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, var_1.c.d.a), vec3<bool>(true, false, var_1.c.d.a)), select(vec3<bool>(var_1.a, var_1.c.d.a, false), vec3<bool>(var_1.a, false, false), vec3<bool>(false, var_1.c.a.a, true)), vec3<bool>(var_1.a, var_1.c.a.a, false)), !(!(!vec3<bool>(var_1.c.c.a, true, var_1.a))), true);
    global1 = u_input.a;
    return Struct_3(-1788f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 1551f)) + _wgslsmith_f_op_f32(-var_0)), ~_wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, var_1.b.x, u_input.c.x), vec4<i32>(u_input.c.x, 51354i, 53903i, u_input.d.x)), countOneBits(_wgslsmith_clamp_vec4_i32(var_1.b, vec4<i32>(32798i, -53331i, -25368i, u_input.d.x), vec4<i32>(1i, 10601i, u_input.d.x, u_input.d.x)))), Struct_2(Struct_1(!var_2.x | false, ~(139716u ^ u_input.e.x)), _wgslsmith_mod_i32(1i, ~_wgslsmith_sub_i32(0i, var_1.c.b)), Struct_1(_wgslsmith_f_op_f32(873f * 489f) == _wgslsmith_f_op_f32(var_0 * var_0), ~min(1u, 0u)), Struct_1(false, 15260u << (firstLeadingBit(60221u) % 32u))), u_input.a >> (4294967295u % 32u), -2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    global0 = ~arg_3.c.d.b;
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-159f, _wgslsmith_f_op_f32(floor(-1350f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-465f)) * _wgslsmith_f_op_f32(-1000f * 1762f)))), 1f) - vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(1026f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -831f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1880f)), _wgslsmith_f_op_f32(f32(-1f) * -635f)));
    let var_1 = Struct_3(false, vec4<i32>(arg_1.b.x, firstTrailingBit(26009i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.d.x ^ 18098i, _wgslsmith_mod_i32(-56742i, 28724i), -2147483647i), 16533i), u_input.c.x), Struct_2(Struct_1(false, func_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b, arg_1.c.c.b, arg_0.b), u_input.e, vec3<u32>(94934u, 35188u, 0u))).d), arg_3.e, func_2(~countOneBits(vec3<u32>(22742u, arg_3.c.a.b, arg_3.c.a.b))).c.a, Struct_1(arg_1.a, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(min(4294967295u << (arg_1.d % 32u), arg_3.c.a.b), 56546u, _wgslsmith_add_u32(min(arg_1.d, 42374u), ~16294u), u_input.a), vec4<u32>(~(u_input.e.x ^ 4294967295u), firstLeadingBit(~arg_0.b), ~arg_0.b, arg_3.d)), arg_1.c.b);
    var var_2 = _wgslsmith_sub_vec4_u32(abs(countOneBits(countOneBits(min(vec4<u32>(var_1.c.d.b, 5162u, 26634u, u_input.a), vec4<u32>(arg_0.b, var_1.d, 1u, 94731u))))), ~(firstTrailingBit(reverseBits(vec4<u32>(arg_0.b, arg_0.b, u_input.b, 40509u))) | ~vec4<u32>(613u, var_1.d, 4294967295u, 1u)));
    global1 = var_2.x;
    return Struct_1(!(true || (!arg_1.a != !arg_2)), ~(~(_wgslsmith_div_u32(4294967295u, 1u) & select(u_input.a, var_2.x, false))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<u32>) -> u32 {
    let var_0 = Struct_2(func_4(Struct_1(arg_0.a.a, ~(~12661u)), func_2(_wgslsmith_div_vec3_u32(vec3<u32>(299u, arg_3.x, 69352u), firstLeadingBit(vec3<u32>(1u, 7348u, 75321u)))), true, func_2(reverseBits(~arg_3))), _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(select(u_input.d, u_input.d, arg_1.a.a), vec3<i32>(arg_1.b, -1445i, -13430i)), u_input.d), func_4(func_2(vec3<u32>(arg_1.c.b, arg_0.c.b, ~57590u)).c.c, func_2(~u_input.e), true, func_2(u_input.e)), Struct_1(false, 4294967295u));
    var var_1 = vec2<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.d.b & 4294967295u, 4294967295u), ~arg_0.d.b));
    return ~arg_0.d.b;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<u32>) -> vec3<u32> {
    var var_0 = ~(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1u, 0u, 11921u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a)), countOneBits(vec4<u32>(4294967295u, 0u, u_input.a, arg_1.x))) >> (21879u % 32u));
    global0 = abs(51385u);
    let var_1 = true;
    let var_2 = Struct_1(func_2(abs(vec3<u32>(arg_1.x, ~0u, 4294967295u))).a, arg_1.x);
    var var_3 = Struct_2(Struct_1((var_2.a == any(vec3<bool>(false, true, var_1))) || true, ~100916u), -_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.d.x, 0i)), u_input.d.zy) << (50238u % 32u), var_2, Struct_1(!func_2(vec3<u32>(1u, 0u, var_2.b)).c.a.a, 104131u ^ _wgslsmith_dot_vec4_u32(arg_1, min(arg_1, arg_1))));
    return _wgslsmith_mult_vec3_u32(arg_1.xzz, ~vec3<u32>(arg_1.x | var_3.a.b, var_3.c.b >> (_wgslsmith_mult_u32(arg_1.x, 52229u) % 32u), 7638u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(u_input.e.x);
    let var_1 = -13238i;
    let var_2 = func_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(107f, _wgslsmith_f_op_f32(-123f * 665f))))), _wgslsmith_sub_vec4_u32(vec4<u32>(max(~48313u, func_1(Struct_2(Struct_1(false, 3517u), -32081i, Struct_1(true, u_input.a), Struct_1(true, u_input.a)), Struct_2(Struct_1(false, u_input.e.x), 10417i, Struct_1(false, 16409u), Struct_1(false, u_input.a)), vec2<f32>(-936f, 952f), vec3<u32>(u_input.a, u_input.b, 1u))), u_input.e.x, ~func_2(u_input.e).c.d.b, ~u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, ~u_input.a, _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(u_input.a, u_input.b, 41686u)), ~u_input.e.x), min(~vec4<u32>(0u, u_input.b, 1u, 49925u), vec4<u32>(u_input.b, 6590u, u_input.b, u_input.a) ^ vec4<u32>(u_input.b, 17563u, u_input.b, 60500u)))));
    let var_3 = vec3<u32>(select(u_input.b, ~_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(u_input.b, 41778u, 34166u)), func_4(Struct_1(false, var_2.x), func_2(u_input.e), true, func_2(var_2)).a), ~4294967295u, var_2.x) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(min(u_input.b, u_input.b), 30060u >> (u_input.b % 32u), 28250u), vec3<u32>(var_2.x, var_2.x, 1u) | ~vec3<u32>(1u, 68686u, 21221u));
    let var_4 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(81925i, -1i, -1i), -max(func_3().x, i32(-1i) * -1i), -2147483647i), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(291i, u_input.d.x), 1i), u_input.c.x), 3971i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 8672i), -u_input.d.yz)));
    global0 = var_2.x;
    global0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(var_3.x, min(var_3.x, ~(~453u))), firstLeadingBit(~72691u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(173f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-203f, -671f) - _wgslsmith_f_op_f32(min(-533f, -1786f))))), 835f);
}

