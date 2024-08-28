struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec2<i32>(-10444i, 0i)), Struct_2(vec2<i32>(20167i, -30614i)), Struct_2(vec2<i32>(9581i, -1i)), Struct_2(vec2<i32>(17824i, 2147483647i)), Struct_2(vec2<i32>(6814i, 2147483647i)), Struct_2(vec2<i32>(1i, 33060i)), Struct_2(vec2<i32>(41256i, 0i)), Struct_2(vec2<i32>(-45224i, 0i)), Struct_2(vec2<i32>(-26572i, 22205i)), Struct_2(vec2<i32>(13189i, i32(-2147483648))), Struct_2(vec2<i32>(-1i, i32(-2147483648))), Struct_2(vec2<i32>(2147483647i, -11383i)), Struct_2(vec2<i32>(31710i, 1i)), Struct_2(vec2<i32>(i32(-2147483648), 0i)), Struct_2(vec2<i32>(6916i, 1i)), Struct_2(vec2<i32>(1i, i32(-2147483648))), Struct_2(vec2<i32>(-1i, 8453i)), Struct_2(vec2<i32>(-1i, 9212i)), Struct_2(vec2<i32>(40164i, -18540i)), Struct_2(vec2<i32>(-1i, 12263i)), Struct_2(vec2<i32>(51301i, 1i)), Struct_2(vec2<i32>(-1i, 33298i)), Struct_2(vec2<i32>(0i, -2251i)), Struct_2(vec2<i32>(-1i, -55366i)), Struct_2(vec2<i32>(15369i, 0i)), Struct_2(vec2<i32>(-13747i, 0i)), Struct_2(vec2<i32>(1i, 57998i)), Struct_2(vec2<i32>(2511i, -7741i)), Struct_2(vec2<i32>(46290i, -1i)));

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_4, 21>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = u_input.d.zwy & -_wgslsmith_mod_vec3_i32(select(u_input.d.zyz, vec3<i32>(36112i, u_input.d.x, -32746i), all(vec4<bool>(true, false, false, false))), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.d.www, vec3<i32>(u_input.b, -2147483647i, u_input.b)), u_input.d.yyy));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1434f, 843f, -850f) + vec3<f32>(1454f, 1261f, 1180f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(509f, 714f, -657f) - vec3<f32>(-706f, -1142f, -538f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(517f, -301f, -585f))), true))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1533f)), _wgslsmith_f_op_f32(max(-1298f, 1099f))), -910f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-322f + -2074f) * _wgslsmith_f_op_f32(f32(-1f) * -1336f))))));
    let var_2 = vec4<u32>(~_wgslsmith_div_u32(reverseBits(24445u), u_input.e.x), u_input.e.x, u_input.e.x, u_input.c.x);
    global1 = abs(~(~(~var_2.yz) << (u_input.c.zy % vec2<u32>(32u))));
    let var_3 = global2[_wgslsmith_index_u32(39173u, 21u)];
    return ~(~(1u & (_wgslsmith_clamp_u32(0u, 0u, global1.x) & ~23240u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: f32, arg_3: u32) -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(min(arg_3 | arg_3, ~(~5475u)), 29u)];
    var var_1 = _wgslsmith_clamp_u32((global1.x | u_input.a) | countOneBits(abs(1u)), ~arg_3, countOneBits(func_3()));
    var var_2 = _wgslsmith_mult_vec3_u32(min(vec3<u32>(u_input.e.x << (~u_input.e.x % 32u), func_3(), _wgslsmith_div_u32(global1.x, firstLeadingBit(arg_3))), u_input.e), _wgslsmith_clamp_vec3_u32(u_input.c, u_input.c, u_input.c) | vec3<u32>(~4294967295u, abs(arg_3), _wgslsmith_mod_u32(~global1.x, 1u)));
    global1 = vec2<u32>(57849u, max(~reverseBits(~arg_3), var_2.x));
    var var_3 = _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(firstLeadingBit(global1.x), _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(~62413u, arg_3)), 57930u));
    return !vec4<bool>(true, !(!all(vec4<bool>(false, true, false, true))), false, true);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_3(!func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(614f, 1179f, -1201f) + vec3<f32>(-393f, -217f, 344f)) - vec3<f32>(329f, 1000f, -273f)), ~u_input.d.x << (~u_input.a % 32u), 592f, ~_wgslsmith_dot_vec3_u32(u_input.e, u_input.c)), global0[_wgslsmith_index_u32(global1.x, 29u)], 233f, _wgslsmith_div_i32(abs(u_input.d.x), ~abs(u_input.b)) >> (global1.x % 32u), Struct_1(u_input.d.wx, !arg_0));
    let var_1 = 42451u;
    var var_2 = 4294967295u;
    global0 = array<Struct_2, 29>();
    var_2 = ~(~_wgslsmith_sub_u32(~7644u, reverseBits(u_input.c.x))) & 4294967295u;
    return Struct_1(~(-(~vec2<i32>(-2147483647i, 0i))) | _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, var_0.d), countOneBits(u_input.d.xx)), u_input.d.zy << (u_input.c.zy % vec2<u32>(32u))), 9457i != ~_wgslsmith_dot_vec2_i32(var_0.b.a, reverseBits(vec2<i32>(-1i, 27126i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    var var_0 = func_1(any(vec3<bool>(true, true, global1.x <= abs(u_input.a))));
    var var_1 = reverseBits(reverseBits(~(~0u)));
    var_1 = ~(~(~_wgslsmith_add_u32(u_input.e.x, 42998u)) >> (global1.x % 32u));
    let var_2 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(970f, _wgslsmith_f_op_f32(1000f - 1290f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -618f)) * _wgslsmith_f_op_f32(abs(720f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(672f, -1272f, true)), _wgslsmith_f_op_f32(sign(1378f)))))), _wgslsmith_f_op_f32(986f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1277f))))), vec3<bool>(!(!all(vec2<bool>(var_0.b, var_0.b))), var_0.b, var_0.b), Struct_2(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -505i), select(u_input.d.xy, u_input.d.zw, vec2<bool>(var_0.b, false)), ~vec2<i32>(-11844i, u_input.b)), vec2<i32>(2147483647i >> (u_input.a % 32u), -45898i))), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-183f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(326f + 695f) * _wgslsmith_div_f32(-1433f, var_2.a))))));
}

