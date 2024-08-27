struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(152f, -525f, 571f), 466f, Struct_1(vec3<bool>(true, false, true), true));

var<private> global1: array<Struct_3, 15>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-727f, global0.a.x, _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(select(-1939f, global0.a.x, false)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -1495f, global0.a.x, global0.b)) - vec4<f32>(761f, 584f, 341f, arg_0.d.a.x)), vec4<f32>(global0.b, 721f, _wgslsmith_f_op_f32(select(-468f, arg_0.c.x, true)), _wgslsmith_f_op_f32(-782f * arg_0.d.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-409f, arg_0.c.x, global0.b, -735f), vec4<f32>(266f, -1229f, global0.b, 741f)))))));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-248f, arg_0.d.a.x), _wgslsmith_div_f32(375f, var_0.x), _wgslsmith_f_op_f32(-global0.a.x))))), 364f, arg_1);
    let var_1 = vec3<i32>(u_input.b, u_input.b ^ max(select(i32(-1i) * -2147483647i, u_input.b, true & arg_1.b), -1i), i32(-1i) * -1i);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_f_op_f32(select(478f, global0.a.x, false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f))), -265f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-715f * arg_0.d.a.x))), _wgslsmith_f_op_f32(sign(global0.a.x))));
    let var_2 = ~select(reverseBits(~_wgslsmith_sub_vec2_i32(vec2<i32>(13758i, var_1.x), var_1.zz)), min(var_1.xx, var_1.xx), arg_1.b);
    return arg_0.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: i32, arg_3: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(arg_0.xx, vec2<i32>(u_input.b, u_input.b)), 1i), _wgslsmith_add_i32(arg_2, arg_0.x), firstLeadingBit(u_input.b), _wgslsmith_clamp_i32(abs(~1i), ~arg_0.x | arg_0.x, countOneBits(~u_input.b))), select(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, -52961i, arg_2, u_input.b), vec4<i32>(-1i, -1i, -19446i, -2648i)) ^ min(vec4<i32>(arg_2, -2147483647i, 2147483647i, -4611i), vec4<i32>(2147483647i, -32812i, u_input.b, u_input.b)), vec4<i32>(35898i, 2147483647i, u_input.b, u_input.b), select(select(vec4<bool>(false, global0.c.a.x, false, false), vec4<bool>(global0.c.b, false, global0.c.b, true), vec4<bool>(true, true, global0.c.b, true)), vec4<bool>(global0.c.b, true, global0.c.a.x, false), select(vec4<bool>(false, global0.c.a.x, global0.c.b, global0.c.a.x), vec4<bool>(global0.c.a.x, false, true, global0.c.b), vec4<bool>(global0.c.b, global0.c.a.x, false, global0.c.b)))) & ~(~min(vec4<i32>(arg_2, -50732i, arg_0.x, u_input.b), vec4<i32>(u_input.b, arg_2, u_input.b, 24444i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-166f, arg_3.x, -425f, 1304f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-107f, global0.b, arg_3.x, -318f), vec4<f32>(-623f, -659f, arg_3.x, arg_3.x)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.x, global0.b, -1468f, 223f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 1330f, arg_3.x, 1281f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 268f, global0.b, 376f) * vec4<f32>(-652f, arg_3.x, arg_3.x, arg_3.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b, arg_3.x, -2473f, global0.b), vec4<f32>(global0.a.x, -206f, -1639f, arg_3.x), vec4<bool>(global0.c.a.x, global0.c.a.x, global0.c.a.x, false))))))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(min(-1142f, -1262f)), true, vec3<bool>(all(global0.c.a), global0.c.a.x, any(func_3(Struct_3(vec4<bool>(global0.c.b, global0.c.b, global0.c.b, false), vec2<u32>(77403u, arg_1), var_1.yxz, Struct_2(arg_3, var_1.x, global0.c), vec2<u32>(9038u, 69389u)), Struct_1(vec3<bool>(false, global0.c.a.x, global0.c.a.x), global0.c.b), ~arg_1))), Struct_1(global0.c.a, !(~12425u >= select(35656u, 4294967295u, global0.c.b))), arg_3.x);
    var var_3 = abs(abs(_wgslsmith_add_u32(arg_1, ~u_input.a & u_input.a)));
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1466f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1300f + _wgslsmith_f_op_f32(exp2(arg_3.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -773f) + _wgslsmith_f_op_f32(-var_2.e))))));
    return select(global0.c.b, (-u_input.b ^ (_wgslsmith_mod_i32(arg_0.x, 44921i) & ~2147483647i)) > (2147483647i | arg_2), !(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 24468u, u_input.a, arg_1) | vec4<u32>(u_input.a, 0u, arg_1, 83806u), ~vec4<u32>(1u, arg_1, 48829u, arg_1)) == _wgslsmith_mod_u32(u_input.a << (u_input.a % 32u), 0u & arg_1)));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: f32) -> vec4<bool> {
    var var_0 = Struct_4(global0.b, true, select(vec3<bool>(select(func_2(vec3<i32>(-36375i, 2147483647i, 20353i), 0u, 1i, vec3<f32>(arg_3, global0.b, -1429f)), true, u_input.a > u_input.a), !select(arg_2.a.x, arg_0, global0.c.b), arg_2.b), global0.c.a, true & arg_2.b), arg_2, _wgslsmith_f_op_f32(max(1101f, -612f)));
    var var_1 = vec4<bool>(global0.c.a.x, global0.c.a.x, !global0.c.b, false);
    global1 = array<Struct_3, 15>();
    let var_2 = ~(~vec4<u32>(u_input.a >> (1u % 32u), ~(u_input.a << (u_input.a % 32u)), _wgslsmith_div_u32(~4294967295u, 1u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, u_input.a)), ~vec2<u32>(u_input.a, u_input.a))));
    global1 = array<Struct_3, 15>();
    return !(!(!(!func_3(global1[_wgslsmith_index_u32(var_2.x, 15u)], Struct_1(vec3<bool>(true, true, true), global0.c.b), 40975u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 883u;
    let var_1 = Struct_4(-376f, false, !(!(!select(vec3<bool>(global0.c.a.x, false, true), vec3<bool>(false, global0.c.a.x, false), true))), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - global0.b) * _wgslsmith_f_op_f32(global0.a.x + global0.b)), _wgslsmith_f_op_f32(-global0.b))));
    let var_2 = vec4<bool>(-1315f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-741f + _wgslsmith_div_f32(-1008f, 775f)), global0.a.x), any(select(select(func_1(false, vec3<i32>(u_input.b, 51475i, -45767i), Struct_1(vec3<bool>(global0.c.a.x, false, false), true), -227f), !vec4<bool>(true, global0.c.a.x, var_1.d.b, false), func_3(global1[_wgslsmith_index_u32(var_0, 15u)], Struct_1(vec3<bool>(true, true, true), var_1.c.x), 46974u).x), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, var_1.b, false), vec4<bool>(var_1.b, true, var_1.c.x, false)), func_3(Struct_3(vec4<bool>(var_1.c.x, false, false, var_1.d.a.x), vec2<u32>(4294967295u, 93156u), global0.a, Struct_2(vec3<f32>(global0.a.x, -369f, 410f), var_1.e, var_1.d), vec2<u32>(var_0, 1u)), global0.c, ~var_0))), global0.c.a.x && !func_1(global0.c.b, countOneBits(vec3<i32>(u_input.b, u_input.b, 16752i)), Struct_1(vec3<bool>(false, var_1.d.b, false), global0.c.a.x), global0.b).x, var_1.d.a.x);
    var var_3 = 239f;
    let var_4 = !select(vec2<bool>(~var_0 < _wgslsmith_mult_u32(30935u, 1u), any(!var_1.c.zy)), vec2<bool>(global0.c.a.x && any(vec3<bool>(true, var_2.x, true)), true), !vec2<bool>(false, u_input.a == 4294967295u));
    global1 = array<Struct_3, 15>();
    let var_5 = ~_wgslsmith_mod_vec3_i32(~countOneBits(vec3<i32>(u_input.b, u_input.b, 3507i)), abs(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_clamp_i32(-42212i, -41058i, u_input.b), select(u_input.b, 29186i, true))));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, 1080f) - -1138f)), global0.b) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e), global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_0, var_0), vec4<u32>(u_input.a, 9496u, u_input.a, var_0)) >> (21601u % 32u), ~var_0), _wgslsmith_mod_vec4_i32(max(-min(vec4<i32>(var_5.x, 1i, -1i, var_5.x), vec4<i32>(-19993i, -23459i, var_5.x, u_input.b)), ~(vec4<i32>(u_input.b, 66898i, var_5.x, u_input.b) | vec4<i32>(-14258i, u_input.b, -3389i, 1i))), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-3159i, -1i, u_input.b, var_5.x), vec4<i32>(u_input.b, 6128i, 1i, -2147483647i) ^ vec4<i32>(u_input.b, 6640i, u_input.b, -1i)), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(u_input.b, -1i, 18565i, 1i)), vec4<i32>(var_5.x, 33523i, 1i, var_5.x)), -vec4<i32>(var_5.x, 2147483647i, -1i, var_5.x) >> ((vec4<u32>(69749u, var_0, 4294967295u, var_0) & vec4<u32>(var_0, u_input.a, 34917u, u_input.a)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b)))))));
}

