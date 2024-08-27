struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-744f, 316f, -575f, -247f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(214f, 661f, 1661f, 1087f)))))))));
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    let var_1 = arg_0;
    global0 = array<Struct_1, 22>();
    return Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(0u << (arg_1.a % 32u), 1u), _wgslsmith_sub_u32(4294967295u, ~1u), 4294967295u << ((4294967295u << (u_input.a.x % 32u)) % 32u)), vec3<u32>(~_wgslsmith_clamp_u32(0u, u_input.a.x, 8755u), u_input.a.x, 1u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    var var_0 = arg_1.c.x;
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1.c.x)), -1383f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x + -519f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1088f + 1216f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.c.x)), _wgslsmith_f_op_f32(min(arg_1.b.x, -1108f)))))));
    global0 = array<Struct_1, 22>();
    var var_1 = _wgslsmith_f_op_f32(-arg_1.c.x);
    var var_2 = arg_1.b.zx;
    return Struct_2(Struct_1(54758u), _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(min(abs(vec4<u32>(arg_1.d.x, u_input.a.x, 13957u, 1184u)), vec4<u32>(19992u, u_input.a.x, 21660u, arg_0.a)), ~vec4<u32>(1u, 40095u, arg_2.b, 4294967295u))), select(0i > ~arg_2.d.x, select(false, arg_3, all(!vec2<bool>(true, arg_3))), true), vec3<i32>(_wgslsmith_div_i32(arg_2.d.x, select(arg_1.a.d.x >> (1280u % 32u), 41610i, arg_1.a.c)), arg_2.d.x, arg_2.d.x));
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> vec2<u32> {
    var var_0 = func_3(func_2(-200f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -643f) * arg_1.c.x), Struct_1(1u)), arg_1, Struct_2(arg_1.a.a, 2588u, arg_1.a.c, arg_1.a.d), -1000f > _wgslsmith_f_op_f32(round(arg_1.b.x)));
    var var_1 = Struct_1(arg_1.a.b);
    let var_2 = abs(~arg_0);
    let var_3 = Struct_1(_wgslsmith_clamp_u32(max(86434u, u_input.a.x), firstTrailingBit(_wgslsmith_dot_vec3_u32(min(arg_1.d, vec3<u32>(1u, u_input.a.x, 106895u)), abs(arg_1.d))), _wgslsmith_mod_u32(var_1.a, _wgslsmith_sub_u32(2391u, firstTrailingBit(1u)))));
    var_0 = func_3(func_3(Struct_1(0u), arg_1, func_3(global0[_wgslsmith_index_u32(~var_3.a, 22u)], arg_1, func_3(Struct_1(14506u), Struct_3(arg_1.a, arg_1.b, arg_1.b, arg_1.d), arg_1.a, false), true), true).a, arg_1, func_3(Struct_1(~var_1.a), Struct_3(func_3(Struct_1(3434u), Struct_3(arg_1.a, arg_1.b, vec3<f32>(-439f, arg_1.b.x, -1337f), vec3<u32>(9203u, 9238u, var_0.a.a)), arg_1.a, 27278u < var_0.b), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(231f, -1000f, -262f), arg_1.b), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.c.x, arg_1.c.x, 895f))))), _wgslsmith_f_op_vec3_f32(arg_1.b - arg_1.c), select(arg_1.d, vec3<u32>(45529u, var_0.b, 39936u), all(vec4<bool>(false, arg_1.a.c, arg_1.a.c, true)))), Struct_2(arg_1.a.a, 3968u, true, firstTrailingBit(select(arg_1.a.d, arg_1.a.d, vec3<bool>(arg_1.a.c, var_0.c, var_0.c)))), false), ~var_0.a.a <= (arg_1.a.b | 104016u));
    return reverseBits(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(21204u | var_3.a, _wgslsmith_sub_u32(32424u, u_input.a.x))), ~vec2<u32>(0u, 1262u) ^ ((vec2<u32>(8256u, 35180u) >> (vec2<u32>(var_0.b, var_1.a) % vec2<u32>(32u))) ^ vec2<u32>(arg_1.d.x, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    var var_0 = _wgslsmith_dot_vec2_u32(~func_1(i32(-1i) * -17170i, Struct_3(Struct_2(Struct_1(1u), 4294967295u, true, vec3<i32>(0i, 2147483647i, 0i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(300f, -524f, 341f) - vec3<f32>(-392f, 360f, 636f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(347f, 1370f, -417f))), vec3<u32>(u_input.a.x, u_input.a.x, 15752u) ^ vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))), ~_wgslsmith_sub_vec2_u32(abs(u_input.a), reverseBits(u_input.a)));
    var var_1 = abs(9857i);
    var_0 = u_input.a.x;
    var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(abs(abs(vec4<i32>(1i, -7936i, -8344i, -1i))), abs(vec4<i32>(-1i, 2147483647i, -18668i, 3555i))), -6464i, 1i), ~(-vec3<i32>(1i, -2147483647i, 1i)));
    var var_2 = -max(vec3<i32>(1i, 1i, 1i), min(~abs(vec3<i32>(-48217i, 42413i, 25394i)), countOneBits(firstTrailingBit(vec3<i32>(-2147483647i, 1i, 0i)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-495f, 424f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(880f, -522f))), true)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -706f), -1104f)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(184f, -207f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-896f * -945f), _wgslsmith_f_op_f32(445f * -1000f))))), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(var_2.xy, _wgslsmith_mult_vec2_i32(var_2.yz & vec2<i32>(var_2.x, -2147483647i), vec2<i32>(1i, var_2.x))), -select(_wgslsmith_add_vec2_i32(var_2.xx, var_2.yz), firstTrailingBit(var_2.yz), true)));
}

