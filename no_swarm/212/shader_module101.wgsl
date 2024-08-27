struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec3<bool>, 21>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec2<u32> {
    global1 = array<vec3<bool>, 21>();
    var var_0 = Struct_5(Struct_4(true, vec2<u32>(~firstLeadingBit(1u), firstTrailingBit(1u)), vec3<u32>(countOneBits(4746u >> (1u % 32u)), ~4294967295u, ~firstLeadingBit(global0.c.x))), max(countOneBits(22828u), 47731u), Struct_1(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, u_input.b), u_input.a), firstLeadingBit(-2147483647i), -1i), 269f, vec2<f32>(291f, -492f), 520f, ~(vec3<u32>(19561u, global0.c.x, 1u) << (global0.c % vec3<u32>(32u))) >> (firstLeadingBit(~global0.c) % vec3<u32>(32u))), abs(~firstLeadingBit(vec3<u32>(28634u, global0.b.x, 1u))));
    global0 = var_0.a;
    var var_1 = var_0.a;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.c.d)), _wgslsmith_f_op_f32(-var_0.c.d));
    return select(vec2<u32>(4294967295u, 114786u), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.c.x >> (var_0.a.b.x % 32u), global0.b.x << (0u % 32u)) | abs(var_1.b), var_1.c.xx), var_1.a);
}

fn func_2() -> vec2<u32> {
    let var_0 = u_input.a;
    let var_1 = all(!select(vec2<bool>(true, !global0.a), !(!vec2<bool>(true, global0.a)), (u_input.b <= var_0.x) | !global0.a));
    global0 = Struct_4(var_1, _wgslsmith_mult_vec2_u32(func_3(), _wgslsmith_mod_vec2_u32(vec2<u32>(60891u >> (global0.b.x % 32u), global0.c.x), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.c.x, global0.b.x), vec2<u32>(global0.b.x, global0.b.x)), vec2<u32>(9011u, 4294967295u)))), reverseBits(global0.c));
    var var_2 = var_0.x;
    let var_3 = -1217f;
    return vec2<u32>(global0.b.x, 1u);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>) -> bool {
    let var_0 = -u_input.a.x;
    global0 = Struct_4(global0.a, _wgslsmith_add_vec2_u32(vec2<u32>(~(~global0.b.x), _wgslsmith_add_u32(global0.c.x, global0.b.x)), func_2()), vec3<u32>(45865u, 1u, _wgslsmith_div_u32(50111u, 73766u)));
    global1 = array<vec3<bool>, 21>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(119f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -920f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(865f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-785f, 305f, global0.a)))))));
    var var_2 = false;
    return select(any(select(select(vec4<bool>(global0.a, false, false, global0.a), vec4<bool>(global0.a, global0.a, global0.a, global0.a), !global0.a), !(!vec4<bool>(global0.a, global0.a, global0.a, true)), any(vec3<bool>(true, global0.a, global0.a)))), true & any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, global0.a), select(vec2<bool>(global0.a, false), vec2<bool>(global0.a, global0.a), false))), (0u <= ~(4294967295u | global0.b.x)) & any(select(vec2<bool>(global0.a, false), vec2<bool>(true, true), global0.c.x >= 0u)));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: bool) -> bool {
    var var_0 = max(_wgslsmith_clamp_u32(global0.b.x, arg_0, arg_0), 10441u);
    var var_1 = _wgslsmith_f_op_f32(max(277f, 849f));
    var_0 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1300f) + _wgslsmith_f_op_f32(sign(1628f))) - _wgslsmith_f_op_f32(trunc(-1000f))) * -234f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-552f)) + 396f)))));
    var var_3 = _wgslsmith_sub_i32(-3048i, arg_2.x);
    return func_1(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, -2147483647i, 1i, arg_2.x), arg_2), arg_2), firstLeadingBit(vec4<i32>(u_input.b, reverseBits(u_input.b), min(1i, -1i), firstLeadingBit(2107i)))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!global0.a, func_4(10359u, vec3<bool>(u_input.a.x >= 1i, true, select(false, global0.a, global0.a)), -vec4<i32>(u_input.b, 1i, -2147483647i, u_input.a.x), func_1(vec4<i32>(1i, u_input.b, u_input.a.x, u_input.a.x), u_input.a & u_input.a)), global0.a) & func_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -6593i, -2147483647i, u_input.a.x) & vec4<i32>(-1875i, u_input.b, -9096i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, -2147483647i, u_input.a.x), vec4<i32>(-39307i, u_input.b, -2147483647i, u_input.a.x)) & _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.a.x, u_input.b), vec4<i32>(u_input.b, 2147483647i, 59565i, u_input.a.x))), vec3<i32>(-1i) * -vec3<i32>(u_input.b, 54456i, u_input.b));
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global0.b.x, global0.c.x, 13360u, global0.c.x)), vec4<u32>(global0.b.x, firstLeadingBit(global0.c.x), ~1u, ~global0.b.x)), global0.b.x), func_2().x, 33751u, min(select(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, global0.c.x), global0.b), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.b.x), vec2<u32>(0u, 525u)), false), _wgslsmith_div_u32(global0.b.x, 0u)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(-372f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(f32(-1f) * -747f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-565f, -148f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-821f)) + -196f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1548f - 561f)), -429f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-900f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1041f, 1000f))), !any(vec2<bool>(false, global0.a))))));
    let var_3 = !select(select(!vec2<bool>(global0.a, global0.a), select(vec2<bool>(global0.a, global0.a), vec2<bool>(true, true), !vec2<bool>(false, global0.a)), select(select(vec2<bool>(false, true), vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, global0.a)), vec2<bool>(false, true), select(vec2<bool>(global0.a, false), vec2<bool>(true, global0.a), false))), vec2<bool>(global0.a, !(329f != var_2.x)), vec2<bool>(0i > select(u_input.b, -38887i, global0.a), global0.a));
    let var_4 = select(~vec3<u32>(global0.c.x, 1u, 0u), ~_wgslsmith_mult_vec3_u32(~max(vec3<u32>(4294967295u, 44680u, global0.c.x), var_1.wwz), global0.c), !(!vec3<bool>(!global0.a, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1400f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1151f, 1930f)) - _wgslsmith_div_f32(2425f, var_2.x))), vec3<f32>(_wgslsmith_f_op_f32(max(-348f, _wgslsmith_f_op_f32(max(var_2.x, -1000f)))), _wgslsmith_f_op_f32(trunc(var_2.x)), var_2.x))), 1f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, var_2.x, -383f, var_2.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, -942f, -1016f), vec4<f32>(-2583f, var_2.x, var_2.x, var_2.x))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -466f, var_2.x, var_2.x) * vec4<f32>(var_2.x, 507f, var_2.x, 1643f))))))), global0.c);
}

