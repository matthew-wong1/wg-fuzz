struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1 = Struct_1(-11413i, vec3<f32>(-1000f, 135f, 2080f), i32(-2147483648), false, 1000f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_5(-181i, Struct_4(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~global0.wxw, countOneBits(vec3<u32>(global0.x, global0.x, global0.x))), _wgslsmith_sub_vec3_u32(global0.ywz, global0.xxy)), 0i, _wgslsmith_add_u32(countOneBits(global0.x) >> (global0.x % 32u), 0u), ~_wgslsmith_mult_u32(~51111u, ~arg_0)));
    let var_1 = select(true, global1.d, global1.d) && global1.d;
    let var_2 = var_0.b;
    var_0 = Struct_5(-global1.a, var_0.b);
    return min(_wgslsmith_div_u32(4294967295u, 3301u), 0u);
}

fn func_2(arg_0: Struct_4) -> f32 {
    global0 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(global0.x, arg_0.a.x, arg_0.a.x, 16972u) | vec4<u32>(0u, 5992u, global0.x, 0u)), ~(~(~vec4<u32>(4294967295u, 1u, global0.x, 4294967295u))), vec4<u32>(~(~29927u), func_3(global0.x), _wgslsmith_mod_u32(global0.x, ~41881u), arg_0.d)) << (select(select(vec4<u32>(global0.x, global0.x, 4294967295u, 4294967295u) << (vec4<u32>(4294967295u, global0.x, 1u, 0u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(6606u, arg_0.c, global0.x, 1u)), false) & ((vec4<u32>(global0.x, global0.x, 4294967295u, global0.x) | vec4<u32>(arg_0.a.x, arg_0.c, global0.x, 22699u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, arg_0.d, arg_0.a.x, 18324u), vec4<u32>(global0.x, arg_0.d, arg_0.d, global0.x), vec4<u32>(global0.x, arg_0.a.x, global0.x, 0u))), ~(~countOneBits(vec4<u32>(arg_0.a.x, 19721u, arg_0.c, arg_0.a.x))), global1.d) % vec4<u32>(32u));
    global1 = Struct_1(-arg_0.b, global1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-28526i, 2147483647i, ~2147483647i, abs(global1.a)) & firstTrailingBit(select(vec4<i32>(2147483647i, -42714i, global1.a, global1.c), vec4<i32>(arg_0.b, global1.c, global1.a, global1.c), false)), firstLeadingBit(~(~vec4<i32>(arg_0.b, 2147483647i, arg_0.b, u_input.a.x)))), global1.d, global1.b.x);
    var var_0 = Struct_1(~(_wgslsmith_mod_i32(0i, firstLeadingBit(arg_0.b)) ^ 20427i), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(global1.b)))) + global1.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global1.b)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, 913f, global1.b.x) + global1.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e, 963f, -1051f) + global1.b))))), u_input.a.x, true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-451f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b.x)))))));
    global0 = vec4<u32>(1u, arg_0.d, 50156u, firstTrailingBit(_wgslsmith_sub_u32(42475u, global0.x) & 43238u)) ^ _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c, arg_0.a.x, 49380u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 66752u, 1u, 31884u), vec4<u32>(arg_0.d, arg_0.d, arg_0.d, arg_0.c))), reverseBits(~(~vec4<u32>(arg_0.a.x, arg_0.a.x, global0.x, 37496u))));
    var var_1 = any(vec4<bool>((var_0.d == select(global1.d, true, false)) | global1.d, true, (u_input.b != _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 24997i, -1i), vec3<i32>(1i, var_0.c, 0i))) == true, false));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-809f)), _wgslsmith_f_op_f32(f32(-1f) * -1066f)))), _wgslsmith_f_op_f32(-global1.b.x));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32) -> u32 {
    global1 = Struct_1(-(u_input.b & _wgslsmith_div_i32(arg_2, -2147483647i)) ^ _wgslsmith_add_i32(_wgslsmith_add_i32(-2147483647i, 35324i), arg_0), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global1.b))))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-613f - global1.e))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1831f, -537f) * _wgslsmith_f_op_f32(558f + 217f)), -332f)), arg_0, all(vec3<bool>(true, all(!vec2<bool>(arg_1, arg_1)), false)), _wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_4(global0.wwy, global1.a, global0.x, 57528u))))));
    global1 = Struct_1(~(-(0i >> (_wgslsmith_add_u32(1u, global0.x) % 32u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(908f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.b.x, -217f)) * _wgslsmith_f_op_f32(max(-2766f, global1.b.x)))), _wgslsmith_f_op_f32(sign(global1.e)), 191f), -_wgslsmith_mult_i32(abs(global1.a), abs(-15802i)), !(!arg_1), 111f);
    global0 = reverseBits(vec4<u32>(global0.x, ~global0.x, ~(~4294967295u), global0.x)) | _wgslsmith_mult_vec4_u32(select(~vec4<u32>(0u, 28995u, global0.x, 1u), ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.x, global0.x, 1u), vec4<u32>(92731u, global0.x, 55561u, global0.x)), select(!vec4<bool>(arg_1, false, global1.d, true), vec4<bool>(true, true, arg_1, true), vec4<bool>(true, false, false, false))), _wgslsmith_mod_vec4_u32(~vec4<u32>(global0.x, 4294967295u, global0.x, 1u), vec4<u32>(~global0.x, global0.x, ~54853u, global0.x)));
    var var_0 = arg_0;
    var var_1 = _wgslsmith_div_i32(arg_0, arg_0);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(abs(global0.x), _wgslsmith_add_u32(1u, func_1(global1.c, !global1.d, -16318i)));
    global1 = Struct_1(-(~(-2147483647i)), vec3<f32>(-536f, 916f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e + 193f) + _wgslsmith_f_op_f32(max(global1.e, -996f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * global1.e)), !(global1.d && false)))), countOneBits(9594i), true, global1.b.x);
    global0 = vec4<u32>(func_3(global0.x), 3373u & ~global0.x, _wgslsmith_clamp_u32(countOneBits(var_0.x), ~3221u, ~1u) << (0u % 32u), global0.x);
    var var_1 = ~_wgslsmith_div_u32(~abs(1u), _wgslsmith_sub_u32(85082u, 69960u));
    let var_2 = Struct_5(u_input.a.x, Struct_4(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(global0.wzz, vec3<u32>(global0.x, var_0.x, 4371u)), vec3<u32>(1u, 4294967295u, 1u) | global0.wxx), _wgslsmith_div_i32(max(-1i, u_input.a.x), reverseBits(-u_input.a.x)), global0.x, ~firstLeadingBit(~0u)));
    var var_3 = Struct_2(Struct_1(-3635i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b) + global1.b), 0i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.e, 1167f)) >= global1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b.x))))), Struct_1(_wgslsmith_add_i32(firstTrailingBit(global1.c), select(-16716i, _wgslsmith_mult_i32(-2147483647i, u_input.b), any(vec2<bool>(global1.d, true)))), _wgslsmith_f_op_vec3_f32(min(global1.b, global1.b)), 1i, global1.d, _wgslsmith_f_op_f32(ceil(-1498f))), _wgslsmith_f_op_f32(-global1.e), firstLeadingBit(vec4<u32>(var_0.x, global0.x, global0.x, 4294967295u)));
    var_1 = abs(_wgslsmith_mod_u32(var_2.b.a.x, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, var_0.x, 61297u, 1u), var_3.d), firstLeadingBit(4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(var_3.b.a, -24384i, 16243i, -16615i)), -vec4<i32>(var_2.a, 0i, global1.a, u_input.b))) >> (firstTrailingBit(vec4<u32>(17600u, var_3.d.x, 20226u, global0.x) | vec4<u32>(23201u, 0u, var_3.d.x, 7533u)) % vec4<u32>(32u)));
}

