struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(1u, 0u, 33463u), vec3<u32>(9015u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 35395u), vec3<u32>(4294967295u, 4264u, 4294967295u), vec3<u32>(7977u, 29473u, 0u), vec3<u32>(0u, 1u, 80162u), vec3<u32>(36885u, 6426u, 480u), vec3<u32>(119876u, 4294967295u, 0u), vec3<u32>(7702u, 1u, 49648u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 6854u, 4294967295u), vec3<u32>(13874u, 1u, 4294967295u), vec3<u32>(32360u, 0u, 20241u), vec3<u32>(48620u, 0u, 1u), vec3<u32>(33105u, 0u, 35839u), vec3<u32>(16032u, 0u, 41688u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, 54825u, 61043u), vec3<u32>(31869u, 64109u, 37535u), vec3<u32>(135736u, 4294967295u, 37900u), vec3<u32>(43906u, 1u, 869u), vec3<u32>(52285u, 85040u, 53571u), vec3<u32>(4294967295u, 77542u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(45079u, 25551u, 29577u), vec3<u32>(40072u, 1u, 31002u), vec3<u32>(56597u, 26556u, 74637u), vec3<u32>(4294967295u, 1u, 14055u), vec3<u32>(33189u, 0u, 48817u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = 1499f;
    global1 = array<vec3<u32>, 29>();
    let var_1 = arg_2;
    let var_2 = select(vec3<bool>(var_1.a, true, true), global0.e, select(global0.e, !global0.e, vec3<bool>(true, any(vec4<bool>(global0.a, arg_0.x, true, false)), arg_1.x >= _wgslsmith_div_f32(var_0, -1909f))));
    global0 = arg_2;
    return -828f;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~(max(12325u, ~u_input.a) & _wgslsmith_add_u32(1u, 1u));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_f32(314f, _wgslsmith_f_op_f32(func_3(select(vec4<bool>(global0.a, arg_0.a, false, global0.e.x), vec4<bool>(true, true, false, true), global0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-249f, -701f) + vec2<f32>(130f, -1000f)), Struct_1(var_1.a, vec2<i32>(arg_0.b.x, 1i), global0.d, arg_0.d, arg_0.e)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-524f + -167f))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1564f * -678f));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1896f, -1267f)), 1679f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(500f + 1000f)))) - 411f), var_2.x, var_2.x);
    return Struct_1(true, ~vec2<i32>(_wgslsmith_mult_i32(56336i, arg_0.b.x | var_1.b.x), min(42217i, arg_0.b.x & var_1.b.x)), ~u_input.a, 15009u, select(!vec3<bool>(true, false, arg_0.e.x), select(!vec3<bool>(false, false, global0.a), !var_1.e, vec3<bool>(true, false, true)), arg_0.a));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> bool {
    var var_0 = vec4<f32>(-1096f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), arg_0)) + _wgslsmith_f_op_f32(f32(-1f) * -386f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(248f - _wgslsmith_f_op_f32(trunc(arg_0))), arg_0);
    global1 = array<vec3<u32>, 29>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0))));
    let var_2 = min(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, ~func_2(Struct_1(arg_1.e.x, arg_1.b, global0.d, 8233u, vec3<bool>(true, global0.a, arg_1.e.x))).b.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, arg_1.b.x, 0i, arg_1.b.x), select(firstLeadingBit(vec4<i32>(-6587i, global0.b.x, 0i, 2147483647i)), -vec4<i32>(-15698i, global0.b.x, 1i, arg_1.b.x), select(vec4<bool>(false, true, true, arg_1.e.x), vec4<bool>(global0.a, arg_1.e.x, global0.a, true), vec4<bool>(arg_1.e.x, arg_1.e.x, false, global0.a))))), global0.b.x);
    global0 = arg_1;
    return global0.a | arg_1.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = Struct_1(func_4(arg_1.x, func_2(Struct_1(global0.e.x | true, -vec2<i32>(16582i, -28460i), _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(28405u, 1u, u_input.a, 16313u)), ~global0.d, arg_3.e))), abs(global0.b), 54610u, ~arg_2.c, global0.e);
    global1 = array<vec3<u32>, 29>();
    global0 = func_2(arg_2);
    global1 = array<vec3<u32>, 29>();
    var var_0 = ~(_wgslsmith_clamp_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.b.x, arg_3.b.x, 2147483647i, -1i), vec4<i32>(global0.b.x, -5763i, 0i, -2147483647i))), vec4<i32>(_wgslsmith_mod_i32(1i, -13804i), func_2(Struct_1(true, arg_3.b, arg_0.x, 6831u, vec3<bool>(global0.e.x, true, true))).b.x, 0i, arg_3.b.x), select(vec4<i32>(2147483647i, arg_2.b.x, 92692i, arg_2.b.x), vec4<i32>(-1i, -40736i, -48134i, global0.b.x), !vec4<bool>(global0.e.x, arg_2.e.x, arg_3.a, true))) & -vec4<i32>(arg_3.b.x, arg_3.b.x >> (340u % 32u), _wgslsmith_clamp_i32(arg_2.b.x, arg_3.b.x, arg_3.b.x), arg_3.b.x));
    return true;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    return func_2(Struct_1(true, global0.b, arg_1.x, reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.d, 72227u), vec2<u32>(1u, 0u))), vec3<bool>(any(vec4<bool>(arg_3.x, arg_3.x, false, arg_2.a)), all(vec2<bool>(true, true)), arg_2.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1096i >> (~(u_input.a & _wgslsmith_add_u32(~u_input.a, global0.d)) % 32u);
    let var_1 = select(!vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(global0.a, true), global0.e.yx)), false, !global0.e.x), global0.e, all(!vec2<bool>(true, !global0.a)));
    let var_2 = func_5(select(vec3<bool>(true, global0.a, true), global0.e, vec3<bool>(!var_1.x, global0.e.x, false || func_1(vec4<u32>(u_input.a, 30824u, 65001u, 25938u), vec2<f32>(107f, 534f), Struct_1(false, global0.b, u_input.a, global0.c, vec3<bool>(true, false, true)), Struct_1(global0.e.x, vec2<i32>(global0.b.x, -52221i), 4294967295u, 28166u, vec3<bool>(false, false, global0.e.x))))), global1[_wgslsmith_index_u32(~(~16308u), 29u)], Struct_1(!any(vec3<bool>(var_1.x, global0.a, var_1.x)), ~global0.b, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.c, 0u), max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(72245u, global0.c))), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(global0.d, 1u)), vec2<u32>(33942u, 42517u))), global0.c, select(select(global0.e, vec3<bool>(global0.a, var_1.x, false), var_1), global0.e, global0.e)), vec4<bool>(true, reverseBits(~(-2147483647i)) > ~(-global0.b.x), false, global0.a));
    let var_3 = -2147483647i;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1687f)) - -101f), _wgslsmith_f_op_f32(-526f - _wgslsmith_f_op_f32(-352f - 1550f)), -479f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(global0.a, true, global0.e.x, true), vec2<f32>(572f, 230f), Struct_1(global0.a, global0.b, 17703u, u_input.a, vec3<bool>(global0.e.x, true, false)))) + _wgslsmith_f_op_f32(abs(-130f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(837f, -580f, 2344f, -1110f) * vec4<f32>(167f, -317f, 783f, 615f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -2396f, -477f, -1790f), vec4<f32>(184f, -1757f, -1000f, -341f), var_2.e.x)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1550f, -935f, 1000f, 1112f))))))));
    let var_5 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(var_2.c, u_input.a), ~0u, global0.d ^ u_input.a)), abs(firstLeadingBit(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 4294967295u))))), global1[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(~_wgslsmith_sub_u32(u_input.a, u_input.a))), 29u)]);
    let var_6 = ~(~(~(~(vec4<u32>(global0.d, u_input.a, 19412u, u_input.a) ^ vec4<u32>(48788u, 10523u, u_input.a, var_2.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

