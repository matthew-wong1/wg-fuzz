struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), -34078i, 0i, -1i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-166f + -1795f) * _wgslsmith_f_op_f32(floor(-353f))))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1187f)), _wgslsmith_f_op_f32(step(623f, -269f)))), _wgslsmith_div_f32(-1538f, _wgslsmith_div_f32(1523f, -1000f))))), 111f));
    var var_1 = !(var_0 < _wgslsmith_f_op_f32(round(411f))) || true;
    global0 = array<Struct_1, 23>();
    return firstLeadingBit(~u_input.b);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = ~(~_wgslsmith_add_vec4_u32(~select(vec4<u32>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), vec4<u32>(arg_1.b, 4294967295u, arg_1.b, 1u), vec4<bool>(true, false, true, true)), ~(~vec4<u32>(arg_1.b, arg_1.b, 21023u, arg_1.b))));
    global1 = _wgslsmith_add_vec4_i32(vec4<i32>(global1.x, _wgslsmith_add_i32(~func_3(), 1i), 0i, -60245i), ~(vec4<i32>(u_input.a, -1i, -7756i, -34367i) & ~vec4<i32>(-1i, 23022i, -2147483647i, global1.x)) & -vec4<i32>(global1.x, firstLeadingBit(-1i), -global1.x, global1.x << (45017u % 32u)));
    global0 = array<Struct_1, 23>();
    var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(min(var_0.x, arg_1.b), max(max(var_0.x, var_0.x), ~var_0.x), max(_wgslsmith_mult_u32(arg_1.b, arg_1.b), ~1u), 0u), vec4<u32>(1u, ~(arg_1.b & var_0.x), abs(~37642u), var_0.x), abs(~_wgslsmith_add_vec4_u32(vec4<u32>(97u, arg_1.b, arg_1.b, 1u), vec4<u32>(var_0.x, arg_1.b, 8870u, 1u)))) & select(~(vec4<u32>(12540u, arg_1.b, 29126u, 34622u) >> (~vec4<u32>(var_0.x, var_0.x, 72953u, 4294967295u) % vec4<u32>(32u))), vec4<u32>((13u | arg_1.b) >> (~43463u % 32u), _wgslsmith_clamp_u32(59293u, arg_1.b, arg_1.b), ~(~var_0.x), select(~1u, 5463u, true)), all(vec2<bool>(false, true)));
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(abs(1u), 23u)], true, Struct_2(2147483647i, global1.wzy), Struct_2(~(-1i), select(global1.yxz, vec3<i32>(1i, u_input.b, 61285i) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(-44471i, 0i, 17027i), global1.yww), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, false), true))), Struct_2(_wgslsmith_mod_i32(2147483647i, -35195i ^ min(global1.x, 2147483647i)), global1.wyx));
    return Struct_2(-(i32(-1i) * -1i), min(max(firstLeadingBit(vec3<i32>(var_1.d.b.x, 8578i, u_input.b)), vec3<i32>(global1.x, -26076i, var_1.e.a)), reverseBits(vec3<i32>(1i, 0i, 2147483647i))) << (vec3<u32>(abs(~4281u), 1u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.x, 4294967295u)), vec2<u32>(10255u, 7993u))) % vec3<u32>(32u)));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = Struct_2(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(~u_input.a, u_input.a)) >> (_wgslsmith_mod_u32(~(~0u), countOneBits(1u)) % 32u), firstTrailingBit(-(global1.yww ^ global1.wyz)));
    global0 = array<Struct_1, 23>();
    let var_1 = !(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)));
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1516f, -640f, -1000f) + vec3<f32>(-424f, 1000f, 659f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-300f, 103f, -389f)))))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -146f))))), 4294967295u, _wgslsmith_f_op_f32(sign(-1543f))));
    var var_3 = firstTrailingBit(4294967295u);
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -vec4<i32>(func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, 805i, global1.x), vec3<i32>(global1.x, 51709i, -43614i))) | 1i, -(0i & (u_input.a >> (1u % 32u))), -10380i, func_1(-2147483647i));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 987f) * vec2<f32>(-1469f, -312f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1595f, 1000f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(231f, -477f)) * vec2<f32>(-771f, -131f))), vec2<f32>(-139f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -3835f), _wgslsmith_f_op_f32(1641f * 593f)))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))))), 4294967295u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1012f)) * 1f))))));
    global0 = array<Struct_1, 23>();
    var var_1 = 518f;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-531f, var_0.c));
    var_1 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-755f, var_2.x, -1000f) * vec3<f32>(1000f, var_2.x, -278f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-519f, var_2.x, -119f) * vec3<f32>(398f, 558f, var_2.x))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, 1388f))), vec3<f32>(_wgslsmith_f_op_f32(abs(669f)), _wgslsmith_f_op_f32(f32(-1f) * -437f), 616f))));
}

