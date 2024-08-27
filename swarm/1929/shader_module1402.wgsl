struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
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

var<private> global0: array<Struct_2, 20>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> i32 {
    global0 = array<Struct_2, 20>();
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_add_u32(u_input.b, 0u) < 76979u, false, !any(vec2<bool>(true, false))), true);
    return _wgslsmith_dot_vec4_i32(countOneBits(abs(abs(abs(vec4<i32>(-42818i, u_input.c, u_input.c, 2147483647i))))), vec4<i32>(1i, ~firstLeadingBit(19711i), -1i, u_input.d));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    let var_0 = reverseBits(-89825i);
    var var_1 = ~(~arg_1.b.wyy);
    return vec4<bool>(select(select(30998i, ~(-1i), false), arg_1.b.x, true) == 0i, _wgslsmith_mod_i32(select(arg_1.b.x, -2147483647i, all(arg_0)), _wgslsmith_sub_i32(1i, 0i)) >= var_1.x, true || !all(select(vec2<bool>(arg_0.x, arg_0.x), arg_0, arg_0.x)), arg_0.x);
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: vec4<bool>) -> u32 {
    let var_0 = vec2<u32>(u_input.b, _wgslsmith_dot_vec2_u32(~u_input.a, ~vec2<u32>(u_input.a.x, u_input.b)));
    global0 = array<Struct_2, 20>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(720f, 1248f, -488f, -1000f))))));
    var var_2 = ~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(85205u, 66577u, ~25988u)), vec3<u32>(0u << (~u_input.b % 32u), 20434u, _wgslsmith_dot_vec2_u32(~vec2<u32>(78897u, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(6393u, u_input.b), vec2<u32>(u_input.a.x, var_0.x)))));
    var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1638f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(786f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(-648f + 481f), _wgslsmith_f_op_f32(ceil(280f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1449f, var_1.x, var_1.x, -1000f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1357f, 146f, var_1.x, -1565f), vec4<f32>(-1440f, var_1.x, var_1.x, var_1.x), vec4<bool>(arg_3.x, true, true, true))), select(arg_3, vec4<bool>(true, arg_3.x, true, true), vec4<bool>(arg_3.x, false, false, arg_2.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -151f, var_1.x, 1100f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1481f, var_1.x, -2206f, var_1.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1283f, var_1.x, 250f) + vec4<f32>(-770f, 505f, var_1.x, -1000f))))))));
    return _wgslsmith_mod_u32(abs(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a.x, 64334u), vec3<u32>(u_input.a.x, u_input.a.x, 6428u) >> (vec3<u32>(u_input.b, u_input.a.x, var_0.x) % vec3<u32>(32u)))), ~u_input.b);
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<i32>(select(-7609i, 10932i, any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), false), true))), func_2());
    let var_1 = vec4<u32>(0u, u_input.a.x, _wgslsmith_mult_u32(1u, u_input.b), func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(1321i, -1i, -486i), vec3<i32>(var_0.x, var_0.x, var_0.x)) | 2147483647i, max(vec4<i32>(-12799i, 1i, 2147483647i, 0i) | vec4<i32>(0i, 15435i, -1i, var_0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, var_0.x, u_input.d, u_input.d), vec4<i32>(2147483647i, 0i, u_input.d, 19739i), vec4<i32>(0i, 5747i, -15599i, var_0.x))), vec4<bool>(true, true, true, true), select(func_3(vec2<bool>(true, true), Struct_1(217f, vec4<i32>(u_input.d, var_0.x, u_input.d, var_0.x), vec3<i32>(var_0.x, var_0.x, 1i))), vec4<bool>(true, true, true, true), true)) ^ countOneBits(~4294967295u));
    global0 = array<Struct_2, 20>();
    var var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~var_1.wzx, countOneBits(reverseBits(vec3<u32>(u_input.b, 12939u, 0u)))) ^ ~firstTrailingBit(_wgslsmith_mod_vec3_u32(var_1.www, vec3<u32>(0u, 1u, 15015u))), max(~min(var_1.yyx, var_1.zyz) & vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 92255u, 79775u, u_input.b), var_1), ~u_input.a.x, 0u | var_1.x), var_1.zyx));
    var_0 = _wgslsmith_add_vec2_i32(~_wgslsmith_div_vec2_i32(select(~vec2<i32>(var_0.x, var_0.x), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.d), vec2<i32>(u_input.d, 15076i)), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), ~min(vec2<i32>(var_0.x, u_input.c), vec2<i32>(1i, 2147483647i))), ~select(vec2<i32>(u_input.c, var_0.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, u_input.c) & vec2<i32>(0i, -7358i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(u_input.c, var_0.x), vec2<i32>(-1i, u_input.c)), vec2<i32>(u_input.d, u_input.d)), !select(true, false, true)));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(384f, _wgslsmith_f_op_f32(f32(-1f) * -774f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(459f + 3234f), _wgslsmith_f_op_f32(ceil(492f)), true)))), _wgslsmith_add_vec4_i32(countOneBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(-17174i, u_input.d, var_0.x, var_0.x), vec4<i32>(u_input.c, u_input.d, 2147483647i, 2147483647i))), ~(~vec4<i32>(-53337i, var_0.x, 18932i, u_input.c))), vec3<i32>(firstTrailingBit(max(var_0.x, -12031i) << (~4294967295u % 32u)), func_2(), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(15055i, -16859i)) >> (4294967295u % 32u))));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec2_u32(u_input.a, _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(firstLeadingBit(select(vec2<u32>(u_input.a.x, 1u), u_input.a, false)), ~vec2<u32>(4294967295u, 4294967295u) & _wgslsmith_mult_vec2_u32(u_input.a, u_input.a), u_input.a), max(countOneBits(vec2<u32>(0u, arg_1)), u_input.a)));
    var var_1 = vec3<u32>(~37905u, var_0.x, 465u);
    var var_2 = ~min(max(vec3<u32>(1u, arg_1, 82072u), vec3<u32>(arg_1, u_input.a.x, var_0.x)) ^ ((vec3<u32>(var_1.x, 38269u, 92532u) << (vec3<u32>(u_input.a.x, 1u, 4294967295u) % vec3<u32>(32u))) >> (select(vec3<u32>(arg_1, 35213u, 1u), vec3<u32>(32039u, u_input.a.x, var_1.x), vec3<bool>(false, true, true)) % vec3<u32>(32u))), select(abs(~vec3<u32>(0u, u_input.b, var_0.x)), countOneBits(vec3<u32>(var_0.x, 4294967295u, var_0.x)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), all(vec2<bool>(true, false)))));
    var_0 = ~(~reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a, var_2.yz), var_1.x)));
    var var_3 = arg_3;
    return Struct_3(24971i >> (var_0.x % 32u), !vec4<bool>(true, true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), all(vec3<bool>(true, false, true)) || false), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-615f + _wgslsmith_f_op_f32(round(arg_2.x))), arg_0, 1154f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_3.a, var_3.a))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, arg_3.a, arg_2.x), vec4<f32>(183f, var_3.a, -363f, arg_2.x))), vec4<f32>(_wgslsmith_f_op_f32(trunc(473f)), var_3.a, _wgslsmith_f_op_f32(min(var_3.a, arg_0)), _wgslsmith_f_op_f32(-arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 20>();
    var var_0 = u_input.a.x << (4294967295u % 32u);
    let var_1 = u_input.d;
    var var_2 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -696f), ~(~(~(u_input.a.x | u_input.b))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(748f, -389f, 315f), _wgslsmith_div_vec3_f32(vec3<f32>(-1793f, 1031f, 434f), vec3<f32>(389f, 400f, -769f))))))), func_1());
    global0 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(countOneBits(u_input.a.x)));
}

