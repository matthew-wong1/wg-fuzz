struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(14396u, 48550u, 0u, 0u), vec4<u32>(4294967295u, 1u, 4738u, 17182u), vec4<u32>(18674u, 22570u, 4294967295u, 86702u), vec4<u32>(13751u, 11023u, 4294967295u, 101693u), vec4<u32>(4294967295u, 354u, 24548u, 1u), vec4<u32>(36066u, 4294967295u, 15126u, 0u));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    return arg_2;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = u_input.b;
    global0 = array<vec4<u32>, 6>();
    let var_1 = Struct_1(vec4<bool>(false, _wgslsmith_f_op_f32(arg_3 - arg_3) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - 270f), arg_2.a.x, false), 10983u);
    global0 = array<vec4<u32>, 6>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-576f - arg_1.x), -1214f, arg_3, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -426f)))))));
    return 2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    let var_1 = u_input.d;
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-select(vec4<i32>(0i, 16379i, u_input.c, arg_2.x), vec4<i32>(-2147483647i, arg_2.x, u_input.d, -5999i), arg_3.a.x), select(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, arg_2.x, 39596i), vec4<i32>(-2147483647i, 2147483647i, 0i, var_1)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1, arg_2.x, arg_2.x, var_1), vec4<i32>(2147483647i, u_input.a, u_input.d, -27168i)), u_input.b.x >= 0u), abs(abs(vec4<i32>(arg_2.x, u_input.a, var_1, var_1)))), vec4<i32>(max(_wgslsmith_add_i32(1i, var_1), max(4193i, -2147483647i)), firstTrailingBit(0i), -abs(u_input.c), -var_1)), _wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(abs(u_input.c)), func_3(vec4<i32>(var_1, arg_2.x, 1i, 7171i), _wgslsmith_f_op_vec2_f32(arg_1 - vec2<f32>(828f, -1624f)), Struct_1(arg_3.a, 56372u), 185f), ~_wgslsmith_sub_i32(27468i, u_input.a), 2147483647i), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(1i, -2147483647i, u_input.a, u_input.c), vec4<i32>(arg_2.x, -42400i, -37866i, var_1), vec4<bool>(arg_0.a.x, arg_3.a.x, false, false)), ~vec4<i32>(-11872i, 44680i, 51080i, -28463i), vec4<i32>(-8095i, 2147483647i, var_1, u_input.d)), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, 45531i, 1i), vec4<i32>(u_input.a, u_input.a, arg_2.x, 39957i))))));
    let var_3 = vec2<f32>(1303f, _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, 725f), -1654f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) - _wgslsmith_f_op_f32(-773f * 953f)), arg_0.a.x))));
    let var_4 = Struct_1(vec4<bool>(arg_3.a.x, !arg_0.a.x, arg_3.a.x, arg_3.a.x), 17705u);
    return Struct_1(select(!vec4<bool>(select(true, true, true), arg_3.a.x, !arg_0.a.x, true), arg_3.a, true), reverseBits(select(arg_0.b, u_input.b.x, select(var_2 >= arg_2.x, true, -27859i <= u_input.d))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<f32>) -> vec4<bool> {
    var var_0 = arg_1;
    let var_1 = func_1(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, arg_3.x)))), Struct_1(var_0.a, ~var_0.b & u_input.b.x));
    global0 = array<vec4<u32>, 6>();
    var var_2 = vec2<f32>(351f, _wgslsmith_f_op_f32(607f * -114f));
    var_2 = arg_3;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -425f;
    global0 = array<vec4<u32>, 6>();
    global0 = array<vec4<u32>, 6>();
    var var_1 = Struct_1(!select(vec4<bool>(u_input.b.x >= u_input.b.x, false, true, true), vec4<bool>(u_input.a >= u_input.a, true, true, true), 1971f < _wgslsmith_f_op_f32(step(535f, -460f))), _wgslsmith_clamp_u32(abs(105076u), ~u_input.b.x, min(max(85649u, 4294967295u), u_input.b.x)) >> (_wgslsmith_mult_u32(17352u, ~u_input.b.x) % 32u));
    var_1 = func_1(u_input.c, 775f, Struct_1(var_1.a, var_1.b >> (abs(~1u) % 32u)));
    let var_2 = func_1(-u_input.a, _wgslsmith_f_op_f32(ceil(-615f)), Struct_1(select(var_1.a, func_4(vec3<i32>(0i, u_input.c, 1i) ^ vec3<i32>(u_input.c, 0i, -1i), func_2(Struct_1(vec4<bool>(var_1.a.x, false, true, var_1.a.x), 61559u), vec2<f32>(1000f, -1146f), vec2<i32>(u_input.c, u_input.c), Struct_1(vec4<bool>(var_1.a.x, false, true, true), 0u)), -602f, vec2<f32>(1200f, 871f)), func_2(func_2(Struct_1(var_1.a, 1u), vec2<f32>(-137f, -157f), vec2<i32>(u_input.d, -20648i), Struct_1(vec4<bool>(false, var_1.a.x, false, true), var_1.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-208f, 555f)), ~vec2<i32>(u_input.c, u_input.d), func_1(u_input.c, -386f, Struct_1(var_1.a, 7130u))).a), ~min(u_input.b.x, u_input.b.x)));
    var var_3 = func_1(-u_input.a, 737f, var_2);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xx | select(vec2<u32>(abs(var_3.b), ~var_1.b), ~u_input.b.xz ^ vec2<u32>(4294967295u, u_input.b.x), !vec2<bool>(var_2.a.x, false)), _wgslsmith_sub_vec4_u32(~(~global0[_wgslsmith_index_u32(1u, 6u)]), firstTrailingBit(vec4<u32>(var_3.b, var_1.b, 1u, var_3.b) >> (global0[_wgslsmith_index_u32(var_1.b, 6u)] % vec4<u32>(32u))) ^ ~select(global0[_wgslsmith_index_u32(var_3.b, 6u)], vec4<u32>(u_input.b.x, 4294967295u, var_2.b, 1u), var_1.a.x)), 0u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-339f, -2636f)) - 1669f)))), var_2.b);
}

