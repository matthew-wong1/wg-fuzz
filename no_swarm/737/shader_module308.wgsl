struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<f32>) -> u32 {
    var var_0 = ~(_wgslsmith_div_i32(-38383i, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, 0i << (arg_0.b % 32u), 3682i)) & 1i);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1194f)) + _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(arg_1.x + arg_1.x), true))), _wgslsmith_f_op_f32(-arg_1.x))), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.x, arg_1.x))), true, select(~vec2<u32>(34767u, 4294967295u), ~u_input.b, false), false)), !any(vec3<bool>(arg_0.a > u_input.d, false, true)), ~min(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(78393i, -18768i, -2147483647i), vec3<i32>(4525i, -22344i, 0i)))));
    let var_2 = ~11921u;
    global0 = array<vec4<u32>, 6>();
    let var_3 = 672f;
    return ~_wgslsmith_mod_u32(abs(var_1.b.a.c.x), _wgslsmith_mult_u32(arg_0.b | 1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, arg_0.a), arg_0.a)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_5) -> bool {
    var var_0 = !vec2<bool>(_wgslsmith_mult_i32(-11098i, 16233i) < (~(-2147483647i) | -arg_1.x), true);
    global0 = array<vec4<u32>, 6>();
    var_0 = select(select(select(select(select(vec2<bool>(true, false), vec2<bool>(var_0.x, false), true), vec2<bool>(true, true), all(vec3<bool>(true, var_0.x, true))), vec2<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x), !(!vec2<bool>(false, var_0.x))), select(vec2<bool>(any(vec3<bool>(false, var_0.x, true)), true), !select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x), true), vec2<bool>(false, var_0.x)), vec2<bool>(any(!vec4<bool>(true, var_0.x, true, false)), ~arg_2.b < _wgslsmith_mult_u32(39677u, 10881u >> (u_input.a % 32u))), select(select(!vec2<bool>(false, var_0.x), vec2<bool>(10091u <= u_input.d, true), vec2<bool>(!var_0.x, true)), !select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, false), vec2<bool>(var_0.x, true), true), !var_0.x), select(vec2<bool>(select(var_0.x, var_0.x, var_0.x), true), vec2<bool>(!var_0.x, var_0.x), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true), false))));
    let var_1 = 50688u;
    let var_2 = true;
    return all(select(vec4<bool>(all(vec2<bool>(var_0.x, true)), var_2, true, all(vec4<bool>(true, var_0.x, var_0.x, true))), select(vec4<bool>(true & var_2, false, var_2, select(false, false, var_2)), select(!vec4<bool>(true, false, var_2, var_0.x), vec4<bool>(false, var_2, false, var_0.x), all(vec3<bool>(var_0.x, var_2, var_0.x))), !any(vec2<bool>(false, var_0.x))), true));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>) -> vec4<bool> {
    global0 = array<vec4<u32>, 6>();
    global0 = array<vec4<u32>, 6>();
    var var_0 = vec3<bool>(true, true, true);
    global0 = array<vec4<u32>, 6>();
    let var_1 = vec2<bool>(var_0.x, false);
    return vec4<bool>(true, func_4(u_input.c.zy, select(min(vec3<i32>(0i, arg_0.a.x, arg_0.a.x), arg_0.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.a, vec3<i32>(arg_0.a.x, 0i, arg_0.a.x)), select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, var_0.x, true), vec3<bool>(true, false, var_0.x))) << (_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, 0u, u_input.a) | u_input.c, u_input.c) % vec3<u32>(32u)), Struct_5(4294967295u, func_3(Struct_5(23031u, arg_1), arg_0.b) >> (_wgslsmith_mult_u32(arg_2.x, arg_1) % 32u))), var_1.x, false);
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> u32 {
    var var_0 = vec3<i32>(1i, -8473i, arg_0.a.x);
    var var_1 = -596f;
    let var_2 = func_2(Struct_2(firstLeadingBit(arg_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_0.b.x) + vec2<f32>(1454f, arg_0.b.x)), _wgslsmith_f_op_vec2_f32(-arg_0.b)))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, abs(28973u), reverseBits(u_input.d), u_input.a), vec4<u32>(1u, u_input.c.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 23626u, u_input.b.x), u_input.c), u_input.a)), firstLeadingBit(~(~u_input.c.zz)));
    var_0 = vec3<i32>(15829i, ~1i, abs(-17290i ^ arg_0.a.x));
    var var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(561f - _wgslsmith_f_op_f32(ceil(-1268f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_0.b.x) - -1000f) * _wgslsmith_f_op_f32(-1f))), 345f);
    return ~(~u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 6>();
    global0 = array<vec4<u32>, 6>();
    let var_0 = -(~vec4<i32>(firstLeadingBit(-7449i), 8625i, -4012i, ~(-2147483647i))) ^ vec4<i32>(2147483647i, select(-_wgslsmith_div_i32(1i, -44302i), 1i, false), 51800i, firstTrailingBit(1i));
    let var_1 = firstLeadingBit(func_1(Struct_2(var_0.yyw, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(420f, -869f), vec2<f32>(829f, 102f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(704f, -315f)))) | ~(~min(41948u, 4294967295u)));
    let var_2 = Struct_2(var_0.xzx, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))) + -783f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1313f, 1651f)))))));
    var var_3 = select(var_0, select(vec4<i32>(abs(~var_2.a.x), -27307i, firstLeadingBit(var_0.x << (0u % 32u)), var_2.a.x), (var_0 ^ abs(vec4<i32>(var_2.a.x, var_2.a.x, 0i, -28820i))) & ~abs(vec4<i32>(4640i, 2147483647i, var_2.a.x, var_2.a.x)), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, false, any(vec3<bool>(true, false, true))), vec4<bool>(var_2.b.x >= var_2.b.x, true, all(vec2<bool>(false, false)), true))), select(vec4<bool>((var_1 >= u_input.d) & (u_input.c.x > 22845u), any(func_2(var_2, u_input.b.x, u_input.b).xzw), false, func_4(vec2<u32>(1u, u_input.b.x), var_0.xwx, Struct_5(var_1, 40008u))), !select(func_2(var_2, 4294967295u, u_input.b), vec4<bool>(true, true, true, true), true), true));
    global0 = array<vec4<u32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(~3830i, _wgslsmith_f_op_f32(f32(-1f) * -822f));
}

