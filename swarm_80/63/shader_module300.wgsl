struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

var<private> global2: bool = true;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: i32) -> u32 {
    var var_0 = Struct_3(all(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), true)), _wgslsmith_div_i32(~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, global1.x, 14939i, u_input.d), vec4<i32>(u_input.b, -16793i, arg_1, u_input.b)), _wgslsmith_sub_i32(1i, arg_1)), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.d, 57373i), vec3<i32>(27695i, 0i, 64268i)), _wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, arg_1, 0i), vec3<i32>(2147483647i, 40119i, 0i))))), Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), Struct_1(~(~0u)), vec2<i32>(_wgslsmith_mult_i32(-5444i, 0i), -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1, arg_1), vec3<i32>(2147483647i, 0i, global1.x))), Struct_1(max(0u, 1u))));
    var var_1 = _wgslsmith_div_vec2_u32(~(~(_wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(23955u, arg_0)) & vec2<u32>(var_0.c.d.a, arg_0))), ~(vec2<u32>(~93228u, u_input.a) | _wgslsmith_clamp_vec2_u32(~vec2<u32>(global0.a, arg_0), ~vec2<u32>(1u, u_input.a), ~vec2<u32>(global0.a, var_0.c.b.a))));
    let var_2 = -(~(~(-39476i)));
    var_0 = Struct_3(true, _wgslsmith_mult_i32(0i, -33639i), var_0.c);
    let var_3 = Struct_1(~_wgslsmith_clamp_u32(firstLeadingBit(17347u), min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.c.b.a, 21100u), vec3<u32>(global0.a, u_input.c, var_0.c.d.a)), reverseBits(18706u)), ~arg_0));
    return ~firstLeadingBit(arg_0);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(global0.a);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1241f)))), _wgslsmith_f_op_f32(trunc(-121f))))), Struct_1(~global0.a), -vec2<i32>(global1.x, global1.x), Struct_1(func_3(arg_0, min(select(-3061i, global1.x, false), u_input.b))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), -152f, var_1.a.x))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1163f)), -961f));
    var var_4 = ~vec2<i32>(u_input.d | _wgslsmith_add_i32(~(-4159i), ~u_input.d), 1i >> (~firstTrailingBit(u_input.a) % 32u));
    return Struct_1(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(global0.a, u_input.c) | vec2<u32>(var_0.a, 1u)) & countOneBits(abs(vec2<u32>(6409u, 0u))), vec2<u32>(u_input.c, arg_0)));
}

fn func_1() -> u32 {
    let var_0 = 1u;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), -522f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1265f, -290f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(334f, -1719f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1223f, 398f) - vec2<f32>(192f, -714f)), select(false, true, false)))))), func_2(40905u), vec2<i32>((global1.x & global1.x) << (var_0 % 32u), global1.x) ^ -(~select(vec2<i32>(u_input.d, u_input.d), vec2<i32>(global1.x, global1.x), vec2<bool>(false, false))), func_2(6668u));
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(~var_0 | ~var_1.b.a, ~global0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 4294967295u, reverseBits(u_input.c), ~58456u), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.d.a, u_input.a, 16093u, var_1.b.a), vec4<u32>(4294967295u, 1u, 67408u, global0.a) & vec4<u32>(var_1.d.a, 0u, global0.a, var_0)))) | (_wgslsmith_add_u32(abs(40656u), global0.a) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 302u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, var_1.d.a), vec3<u32>(26771u, 16868u, 1u), vec3<u32>(0u, global0.a, var_0))) % 32u));
    var var_3 = func_2(var_0);
    let var_4 = _wgslsmith_f_op_f32(round(1000f));
    return ~(_wgslsmith_div_u32(~var_3.a, 1u) & var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(min(~_wgslsmith_mult_u32(~u_input.a, 10436u ^ u_input.a), _wgslsmith_div_u32(global0.a, _wgslsmith_div_u32(12136u, 81269u)) & ~0u));
    global0 = Struct_1(41939u);
    global0 = Struct_1(func_1());
    global2 = false;
    global2 = all(vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, ~global0.a) | countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(2593u, global0.a), vec2<u32>(4294967295u, u_input.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-736f, -545f, _wgslsmith_f_op_f32(f32(-1f) * -448f)))), vec3<u32>(global0.a, global0.a | _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, 1u), 1u), 0u));
}

