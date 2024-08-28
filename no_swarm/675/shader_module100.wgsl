struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
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

var<private> global0: vec2<f32> = vec2<f32>(529f, -146f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_0.d), vec2<u32>(arg_0.d, arg_0.d)), reverseBits(vec2<u32>(4294967295u, u_input.e.x))) ^ 1u, ~arg_0.d, ~(~_wgslsmith_mult_u32(3338u, arg_0.d)), u_input.e.x), !vec4<bool>(true, true, -8188i >= ~u_input.d, true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(arg_0.a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, 495f, -1043f))), all(vec3<bool>(true, true, true)))))), vec4<i32>(u_input.a, 1i, min(reverseBits(~u_input.d), -1i), i32(-1i) * -max(12074i, u_input.b.x)), ~u_input.e.x);
    global0 = vec2<f32>(arg_0.e, -351f);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.a.xz, var_0.c.zx) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), global0.x), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b), -1277f), vec2<bool>(all(vec2<bool>(var_0.b.x, true)), true))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.c.xx + vec2<f32>(1195f, -1225f))))));
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(var_0.a, vec4<u32>(40887u, 0u, 0u, ~_wgslsmith_sub_u32(u_input.e.x, 93522u))), var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.a), arg_0.a, vec3<bool>(true, false, var_0.b.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.e, -1060f, arg_0.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.c))))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(~0i, u_input.d << (1u % 32u), u_input.d, 1i), -u_input.b), firstLeadingBit(var_0.d >> ((var_0.a ^ var_0.a) % vec4<u32>(32u)))), 15208u);
    let var_2 = var_1.d.xy;
    return vec2<f32>(_wgslsmith_f_op_f32(704f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(arg_0.e + -185f)))), var_1.c.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2687f, arg_1, global0.x))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1020f, arg_1, arg_1))))), 1f, -278f, _wgslsmith_dot_vec2_u32(u_input.e.xx, ~vec2<u32>(1u, arg_0.x)), arg_1)));
    let var_1 = arg_0.xx;
    let var_2 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), !vec3<bool>(!(var_1.x > arg_0.x), false, _wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.b.zz) == (u_input.d & u_input.a)), vec3<bool>(true, true || any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), true));
    var var_3 = 1f;
    var var_4 = 0i;
    return _wgslsmith_f_op_f32(f32(-1f) * -283f);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>(arg_2.b.x, false);
    global0 = arg_0.a.zy;
    let var_1 = arg_0.d;
    let var_2 = Struct_2(vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_0.a.x, global0.x)), arg_0.b))), _wgslsmith_div_f32(1000f, arg_2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) + -431f)))), -404f, arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_2.a, -392f))) - 575f)));
    var var_3 = _wgslsmith_f_op_vec3_f32(var_2.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1203f, 918f, _wgslsmith_f_op_f32(f32(-1f) * -383f))));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> i32 {
    let var_0 = arg_2;
    var var_1 = Struct_1(arg_0.a, !(!vec4<bool>(true, false, any(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.c + _wgslsmith_f_op_vec3_f32(-arg_0.c)))), vec4<i32>(_wgslsmith_mult_i32(0i, arg_2) | var_0, ~abs(-1i), -2147483647i, u_input.c.x) & _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i >> (arg_0.e % 32u), ~(-1i), 0i, var_0), vec4<i32>(-1i) * -u_input.b), 1u);
    let var_2 = -var_1.d.x;
    var var_3 = vec4<bool>(false, !(!any(vec2<bool>(false, true))), !all(!arg_0.b.xzw), !(!var_1.b.x));
    let var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(20309u, 4294967295u, 48038u, var_1.a.x), vec4<u32>(arg_0.e, var_1.a.x, 1u, 4294967295u)), abs(var_1.a)), arg_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(vec4<u32>(arg_0.e, 42170u, 1u, 50153u), 392f)), _wgslsmith_f_op_f32(round(-1340f))))), global0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, arg_0.c.x, -775f, -2199f)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(200f, var_1.c.x, 1958f, arg_0.c.x))))), vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-1631f + -2333f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.c.x - var_1.c.x)))), !(!any(var_1.b)))));
    return -reverseBits(1i) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(57757u, arg_1, var_1.e, _wgslsmith_dot_vec4_u32(vec4<u32>(85494u, var_1.a.x, arg_0.a.x, 4294967295u), vec4<u32>(72953u, 39517u, arg_1, 45271u))), arg_0.a) % 32u);
}

fn func_5(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = 1i;
    var var_1 = func_1(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(481f, -1064f, global0.x) * vec3<f32>(-438f, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1216f, 889f))), -1000f, global0.x, ~u_input.e.x, _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -196f), _wgslsmith_f_op_f32(586f - -1026f), true))))), vec3<bool>(true, true, true), Struct_1(abs(vec4<u32>(~u_input.e.x, u_input.e.x, countOneBits(0u), ~u_input.e.x)), select(select(vec4<bool>(true, true, true, true), func_1(Struct_2(vec3<f32>(140f, global0.x, global0.x), global0.x, -2028f, 1u, -858f), vec3<bool>(true, false, false), Struct_1(vec4<u32>(u_input.e.x, 22034u, u_input.e.x, 6066u), vec4<bool>(false, true, false, false), vec3<f32>(global0.x, global0.x, -538f), vec4<i32>(u_input.b.x, u_input.d, arg_0.x, arg_0.x), 0u)).b, select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true)), vec4<bool>(true, true, true, true), true), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-719f)), _wgslsmith_f_op_f32(459f * -1200f)), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, global0.x)) * global0.x)), vec4<i32>(u_input.b.x, 7680i, ~(arg_0.x >> (u_input.e.x % 32u)), func_4(func_1(Struct_2(vec3<f32>(-777f, global0.x, -1000f), global0.x, -335f, u_input.e.x, -706f), vec3<bool>(false, true, false), Struct_1(vec4<u32>(28609u, u_input.e.x, 0u, 4294967295u), vec4<bool>(false, true, false, true), vec3<f32>(-614f, global0.x, global0.x), vec4<i32>(arg_0.x, 7223i, u_input.b.x, arg_0.x), u_input.e.x)), u_input.e.x, ~0i)), 4294967295u >> (u_input.e.x % 32u)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.xy));
    var var_2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-255f, global0.x, -592f) + var_1.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.c.x, -1890f, -1335f))), _wgslsmith_f_op_vec3_f32(-var_1.c))), _wgslsmith_f_op_vec3_f32(var_1.c + _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, var_1.c.x, var_1.c.x), var_1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(-global0.x)))), 1267f, _wgslsmith_mult_u32(reverseBits(~(~0u)), ~abs(4294967295u)), _wgslsmith_f_op_f32(-global0.x));
    var var_3 = countOneBits(min(u_input.d, -2147483647i));
    return Struct_2(var_2.a, var_1.c.x, _wgslsmith_f_op_f32(-var_1.c.x), ~u_input.e.x, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-10578i, -2195i), _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(2147483647i, 38303i)), vec2<i32>(u_input.b.x, 0i))), -2147483647i, _wgslsmith_mult_i32(select(0i, _wgslsmith_dot_vec3_i32(u_input.b.yxy, vec3<i32>(2147483647i, u_input.a, u_input.b.x)), select(true, false, true)), func_4(func_1(Struct_2(vec3<f32>(global0.x, global0.x, -262f), 1331f, -1614f, u_input.e.x, -1000f), vec3<bool>(false, false, false), Struct_1(vec4<u32>(0u, 1u, u_input.e.x, u_input.e.x), vec4<bool>(true, true, false, true), vec3<f32>(-481f, global0.x, global0.x), u_input.c, 23950u)), ~23355u, 18865i)), -29996i));
    var_0 = func_5(vec4<i32>(-1i) * -vec4<i32>(~u_input.c.x, u_input.a, -2147483647i, -u_input.a));
    var var_1 = 45405i;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, var_0.e) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-583f, global0.x)) + var_0.c)), 1466f, _wgslsmith_dot_vec2_u32(u_input.e.zx, u_input.e.zy), _wgslsmith_f_op_f32(var_0.b - global0.x));
    var var_3 = vec4<bool>(true, true, func_1(var_2, func_1(Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.b, -541f, global0.x))), _wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.e.x, var_2.d, var_2.d, 1u), 389f)), _wgslsmith_f_op_f32(-258f + 1727f), _wgslsmith_div_u32(var_0.d, 27172u), _wgslsmith_f_op_f32(var_0.b - 1063f)), vec3<bool>(true, true, false), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(var_2.d, u_input.e.x, u_input.e.x, var_2.d)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(global0.x, global0.x, -386f)), min(vec4<i32>(u_input.d, u_input.a, -77077i, u_input.b.x), u_input.c), 33165u)).b.wwx, func_1(Struct_2(var_0.a, _wgslsmith_f_op_f32(var_0.a.x * -160f), _wgslsmith_div_f32(-752f, -1474f), 0u, var_0.b), vec3<bool>(true, true, true), Struct_1(firstTrailingBit(vec4<u32>(var_0.d, u_input.e.x, u_input.e.x, 4294967295u)), vec4<bool>(false, false, false, true), var_0.a, vec4<i32>(u_input.b.x, 1i, u_input.c.x, u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, var_2.d, 4294967295u, 51294u), vec4<u32>(0u, var_0.d, 4294967295u, var_2.d))))).b.x, true & (firstLeadingBit(1u) == u_input.e.x));
    let var_4 = all(select(select(vec4<bool>(true, true, var_0.a.x <= var_0.e, false), select(vec4<bool>(true, var_3.x, true, true), vec4<bool>(var_3.x, var_3.x, false, var_3.x), false || var_3.x), select(!vec4<bool>(true, true, true, var_3.x), vec4<bool>(false, var_3.x, var_3.x, var_3.x), !vec4<bool>(true, false, var_3.x, false))), vec4<bool>(_wgslsmith_f_op_f32(-var_0.e) <= _wgslsmith_f_op_f32(-var_2.c), any(var_3.wx), true, all(var_3.xyy)), !(!func_1(Struct_2(vec3<f32>(global0.x, var_2.e, -171f), -366f, -305f, 32613u, -1304f), var_3.xyx, Struct_1(vec4<u32>(u_input.e.x, u_input.e.x, 24119u, 4294967295u), vec4<bool>(var_3.x, var_3.x, true, var_3.x), vec3<f32>(566f, -1760f, 435f), vec4<i32>(u_input.d, -8314i, u_input.d, u_input.c.x), var_0.d)).b)));
    let x = u_input.a;
    s_output = StorageBuffer(1732f);
}

