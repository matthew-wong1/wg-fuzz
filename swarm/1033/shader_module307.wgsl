struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.b)) * vec2<f32>(_wgslsmith_div_f32(354f, arg_0.c.x), 292f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_3.c))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(arg_0.b, vec2<f32>(arg_3.b.x, arg_0.c.x)))))))));
    let var_1 = -1i;
    let var_2 = arg_3;
    var var_3 = Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(round(global0.a))), _wgslsmith_sub_u32(u_input.b, _wgslsmith_add_u32(~(~u_input.b), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.d), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1, u_input.d), vec2<u32>(arg_1, arg_1), vec2<u32>(7499u, 0u))))), _wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(80748u, arg_1), arg_1, ~0u), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(7125u, arg_1, 1u), vec3<u32>(arg_1, arg_1, arg_1)))), _wgslsmith_clamp_i32(arg_2, _wgslsmith_dot_vec2_i32(min(~vec2<i32>(-7478i, arg_2), abs(vec2<i32>(-1i, 40810i))), abs(vec2<i32>(34355i, arg_2) | vec2<i32>(arg_2, var_1))), -1i));
    let var_4 = select(vec4<bool>(select(true, all(select(vec2<bool>(arg_0.a, var_2.a), vec2<bool>(arg_3.a, true), arg_0.a)), arg_0.a), !(!(arg_1 == 0u)), !arg_3.a, all(select(select(vec3<bool>(var_2.a, true, var_2.a), vec3<bool>(var_2.a, var_2.a, false), false), select(vec3<bool>(var_2.a, false, false), vec3<bool>(true, arg_0.a, false), vec3<bool>(false, true, var_2.a)), true))), !vec4<bool>(arg_0.a, true, (39624i <= u_input.a) || true, var_2.a | any(vec4<bool>(false, arg_3.a, var_2.a, arg_3.a))), !select(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_3.a, true, false, arg_0.a), select(vec4<bool>(true, var_2.a, var_2.a, arg_0.a), vec4<bool>(true, var_2.a, true, var_2.a), true)), !vec4<bool>(false, false, arg_0.a, false), any(!vec4<bool>(var_2.a, true, false, arg_0.a))));
    return global0.a;
}

fn func_2() -> vec4<f32> {
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.a))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, -1471f, global0.a.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, 293f) + vec4<f32>(-227f, 864f, 417f, global0.a.x)) - _wgslsmith_f_op_vec4_f32(exp2(global0.a))))));
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) - _wgslsmith_f_op_vec4_f32(func_3(Struct_3(false, vec2<f32>(global0.a.x, 1544f), vec2<f32>(global0.a.x, global0.a.x)), 1u, -2147483647i, Struct_3(false, vec2<f32>(358f, global0.a.x), global0.a.ww)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1764f, -1013f, global0.a.x, global0.a.x), _wgslsmith_f_op_vec4_f32(-global0.a), true)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.a, vec4<f32>(851f, 118f, -123f, 1000f), vec4<bool>(true, false, true, true))))), vec4<bool>(false, false & all(vec2<bool>(false, true)), false, 66739i >= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(0i, -1i))))));
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(global0.a, vec4<f32>(1902f, 1000f, global0.a.x, -394f)), _wgslsmith_f_op_vec4_f32(trunc(global0.a)))))))));
}

fn func_1(arg_0: f32, arg_1: i32) -> StorageBuffer {
    let var_0 = vec3<i32>(-2147483647i, i32(-1i) * -28698i, 62755i);
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -747f)), -1055f, arg_0, -788f))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_div_f32(arg_0, -1355f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_vec4_f32(func_2())) + global0.a), false, _wgslsmith_f_op_vec2_f32(global0.a.zy + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-219f, -146f) + vec2<f32>(170f, arg_0)) + _wgslsmith_f_op_vec2_f32(step(global0.a.ww, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 655f)))))), max(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(11434u, 33021u, 0u) >> (vec3<u32>(u_input.d, 4294967295u, u_input.d) % vec3<u32>(32u)), ~vec3<u32>(1u, u_input.b, 0u)), vec3<u32>(~8411u, ~17929u, firstLeadingBit(4294967295u))), min(min(~vec3<u32>(u_input.d, u_input.b, u_input.d), vec3<u32>(4294967295u, u_input.b, u_input.b)), (vec3<u32>(u_input.b, 0u, 26346u) << (vec3<u32>(u_input.b, 0u, u_input.b) % vec3<u32>(32u))) & select(vec3<u32>(u_input.d, u_input.d, 14781u), vec3<u32>(u_input.d, u_input.b, 4294967295u), false))));
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a.x, arg_0, _wgslsmith_f_op_f32(ceil(var_1.a.x)), _wgslsmith_f_op_f32(step(-272f, _wgslsmith_f_op_f32(abs(977f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global0.a + global0.a), _wgslsmith_f_op_vec4_f32(trunc(var_1.a)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-645f, arg_0, var_1.a.x, var_1.c.x)))), !(!vec4<bool>(var_1.b, var_1.b, false, var_1.b)))))));
    var var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(-vec4<i32>(u_input.a, 1i, 1i, var_0.x)), ~(vec4<i32>(var_0.x, u_input.c, arg_1, -30255i) | vec4<i32>(0i, arg_1, -5903i, u_input.c)), vec4<i32>(reverseBits(1i), -1i, arg_1, _wgslsmith_mult_i32(arg_1, u_input.c))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.d.x, 42001u, 0u, u_input.b) & vec4<u32>(65211u, var_1.d.x, 10616u, 0u), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(66625u, var_1.d.x, 0u, u_input.b)), select(vec4<u32>(var_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x), vec4<u32>(var_1.d.x, u_input.b, u_input.d, 59689u), vec4<bool>(var_1.b, true, true, var_1.b)))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(((vec4<i32>(-42361i, arg_1, -7201i, -16108i) << (vec4<u32>(6949u, u_input.b, 4294967295u, 53232u) % vec4<u32>(32u))) & -vec4<i32>(-17699i, 2147483647i, arg_1, 24544i)) << (~(~vec4<u32>(var_1.d.x, 13703u, 11199u, var_1.d.x)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -8785i, 2843i, var_0.x) ^ vec4<i32>(2147483647i, 2986i, var_0.x, 9447i), vec4<i32>(arg_1, 5409i, -8816i, arg_1) ^ vec4<i32>(arg_1, var_0.x, -2147483647i, u_input.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_0.x, var_0.x, var_0.x) & vec4<i32>(var_0.x, u_input.a, 1873i, arg_1), firstTrailingBit(vec4<i32>(u_input.c, -2147483647i, -72258i, 45136i)))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_0.x, u_input.c), i32(-1i) * -23558i, ~arg_1, arg_1), ~vec4<i32>(u_input.c, 2147483647i, arg_1, -2147483647i) & ~vec4<i32>(arg_1, 0i, arg_1, -15377i))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_div_f32(global0.a.x, 269f), arg_0))) - global0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(abs(430f)), _wgslsmith_mod_i32(-19269i, u_input.a));
}

