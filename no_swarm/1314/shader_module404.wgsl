struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13>;

var<private> global1: array<Struct_3, 13>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = vec3<u32>(1u, 1u, 1u) << (((~(~vec3<u32>(0u, 26940u, 5151u)) ^ vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(20815u, 72922u), vec2<u32>(6467u, 1u)), ~33828u, abs(4294967295u))) << (vec3<u32>(36083u, ~34730u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 125u)), ~28232u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = array<Struct_4, 13>();
    return Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(~14799i ^ ~u_input.a, 29028i, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a) & vec3<i32>(1002i, u_input.a, u_input.a), countOneBits(min(vec3<i32>(u_input.a, 1i, -2147483647i), vec3<i32>(-42144i, 2147483647i, u_input.a))))), var_0.x, abs(_wgslsmith_div_vec4_i32(select(~vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(2147483647i, u_input.a, u_input.a, 1i), true), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -11662i), vec2<i32>(u_input.a, u_input.a)), ~60628i, -u_input.a, u_input.a))), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 30130i, 12285i), vec3<i32>(2147483647i, 1i, u_input.a)), _wgslsmith_add_i32(-53160i, u_input.a), _wgslsmith_add_i32(-2147483647i, -1i), -25538i), vec4<i32>(u_input.a, 0i & u_input.a, _wgslsmith_sub_i32(-2147483647i, -66981i), firstLeadingBit(u_input.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -464f) - arg_0), arg_0));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec3<bool>) -> f32 {
    global1 = array<Struct_3, 13>();
    global1 = array<Struct_3, 13>();
    let var_0 = arg_0.xx;
    let var_1 = Struct_2(true);
    var var_2 = Struct_3(~(arg_2.d | min(u_input.a, arg_2.d)), func_2(var_0.x).b, select(vec4<i32>(-1i) * -vec4<i32>(arg_1.d, u_input.a, arg_1.d, arg_1.e), vec4<i32>(arg_2.d, arg_1.d, -2147483647i, _wgslsmith_clamp_i32(1i, 17268i, -45936i)), true) << (select((vec4<u32>(arg_2.b, 0u, arg_1.c.x, arg_1.c.x) >> (vec4<u32>(35006u, 57253u, 21556u, arg_2.b) % vec4<u32>(32u))) >> (~vec4<u32>(arg_2.b, arg_1.b, 1606u, arg_2.c.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 107239u, arg_2.c.x, arg_2.c.x) & vec4<u32>(arg_2.b, arg_1.b, arg_2.b, 36039u), ~vec4<u32>(arg_2.b, 39627u, arg_2.b, 40327u)), !select(vec4<bool>(true, var_1.a, arg_2.a, true), vec4<bool>(true, false, false, false), var_1.a)) % vec4<u32>(32u)), select((~vec4<i32>(u_input.a, arg_2.d, arg_2.d, arg_2.e) | select(vec4<i32>(-2147483647i, u_input.a, -5088i, 1i), vec4<i32>(u_input.a, arg_1.e, 2147483647i, -42848i), vec4<bool>(true, arg_1.a, false, arg_2.a))) | _wgslsmith_mod_vec4_i32(vec4<i32>(-30946i, 0i, 7646i, -18692i), max(vec4<i32>(30661i, arg_2.d, u_input.a, arg_2.e), vec4<i32>(-8429i, arg_1.d, arg_2.e, arg_1.e))), min(_wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, arg_2.e, arg_1.e, u_input.a), ~vec4<i32>(arg_2.d, arg_1.e, 2147483647i, 50642i), reverseBits(vec4<i32>(36366i, 2147483647i, u_input.a, u_input.a))), vec4<i32>(u_input.a, select(u_input.a, -43968i, var_1.a), reverseBits(arg_1.d), u_input.a)), any(vec3<bool>(false, arg_3.x, arg_2.a || arg_1.a))), _wgslsmith_f_op_f32(trunc(var_0.x)));
    return _wgslsmith_f_op_f32(round(var_0.x));
}

fn func_1() -> vec2<bool> {
    let var_0 = func_2(_wgslsmith_f_op_f32(step(-1551f, -939f)));
    var var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.e)), _wgslsmith_f_op_f32(func_3(vec4<f32>(var_0.e, var_0.e, -1736f, var_0.e), Struct_4(false, 29408u, vec3<u32>(var_0.b, var_0.b, 37592u), u_input.a, 1i), global0[_wgslsmith_index_u32(4294967295u, 13u)], vec3<bool>(false, false, false)))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-378f, var_0.e))));
    var_1 = Struct_3(-(~(-(var_1.c.x & u_input.a))), _wgslsmith_clamp_u32(134539u, ~var_1.b, var_0.b), firstTrailingBit(-countOneBits(var_0.d) | ~vec4<i32>(0i, var_0.d.x, var_1.a, -2147483647i)), _wgslsmith_div_vec4_i32(select(abs(select(vec4<i32>(var_1.c.x, u_input.a, 2147483647i, var_0.a), var_0.c, vec4<bool>(false, false, false, true))), max(~vec4<i32>(-16246i, -35354i, -25212i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(2176i, var_1.a, 1643i, -50657i), var_0.d)), vec4<bool>(true, false, all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)))), ~(-(vec4<i32>(-64560i, u_input.a, 1i, var_1.a) | vec4<i32>(0i, 11068i, var_1.a, 0i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_1.e)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e - 576f)))));
    var var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~var_1.b, ~1u, 87733u, ~var_1.b), select(vec4<u32>(1u, var_0.b >> (4294967295u % 32u), _wgslsmith_mod_u32(19425u, 1u), ~1u), countOneBits(firstTrailingBit(vec4<u32>(46750u, 1u, 1u, var_0.b))), vec4<bool>(false, true, any(vec2<bool>(true, false)), true))), vec4<u32>(1u & var_1.b, _wgslsmith_mod_u32(1u, var_0.b), 523u, var_1.b));
    let var_3 = global0[_wgslsmith_index_u32(~var_0.b, 13u)];
    return vec2<bool>(!(all(select(vec3<bool>(var_3.a, false, var_3.a), vec3<bool>(var_3.a, var_3.a, var_3.a), var_3.a)) && all(!vec4<bool>(var_3.a, false, true, var_3.a))), var_3.a || all(vec4<bool>(!var_3.a, !var_3.a, false, var_3.a || true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true), func_1()), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, true), true), vec2<bool>(true, func_1().x), vec2<bool>(!(u_input.a < abs(u_input.a)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(-761f, -570f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1242f))))), vec4<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 25086u, 0u), vec4<u32>(47784u, 4294967295u, 11823u, 1u))), firstLeadingBit(4294967295u), ~_wgslsmith_div_u32(~21105u, ~0u), 29005u));
}

