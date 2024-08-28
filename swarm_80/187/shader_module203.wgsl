struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: f32,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = -(vec4<i32>(-44898i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, 57585i, -1i, arg_2.a), vec4<i32>(u_input.c.x, 0i, 32522i, arg_0.a)), vec4<i32>(arg_0.a, arg_1.x, 31294i, -10249i) ^ vec4<i32>(arg_2.a, arg_2.a, -14966i, arg_0.a)), arg_2.a, -12964i) & vec4<i32>(~firstTrailingBit(arg_2.a), _wgslsmith_sub_i32(-2147483647i, select(1i, arg_0.a, true)), countOneBits(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c)), arg_2.a));
    let var_1 = (_wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(min(u_input.a, u_input.a), _wgslsmith_div_u32(u_input.a, 2703u))) >> (u_input.a % 32u)) <= _wgslsmith_mod_u32(~u_input.a, firstLeadingBit(~u_input.a));
    let var_2 = !select(!vec3<bool>(arg_0.a <= var_0.x, !var_1, all(vec3<bool>(true, var_1, var_1))), vec3<bool>(var_1, true && any(vec4<bool>(true, var_1, var_1, false)), var_1), !select(!vec3<bool>(true, var_1, var_1), !vec3<bool>(true, var_1, var_1), !vec3<bool>(true, true, var_1)));
    var var_3 = Struct_4(min(u_input.a, 0u), all(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -2281f), arg_0.a, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(202f, 1755f, true)) + 1f) + _wgslsmith_f_op_f32(583f * _wgslsmith_f_op_f32(floor(-730f)))), arg_0, Struct_1(_wgslsmith_mod_i32(-1i, -2147483647i) ^ arg_1.x)));
    return 4294967295u;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: u32) -> u32 {
    var var_0 = Struct_2(vec4<f32>(-693f, arg_1, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(ceil(1733f))), -607f), func_3(Struct_1(0i), vec2<i32>(-_wgslsmith_mod_i32(u_input.e, 12363i), 7322i), Struct_1(-2147483647i)));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(199f, var_0.a.x, var_0.a.x, arg_1), var_0.a, vec4<bool>(false, true, false, false))))))), ~var_0.b);
    var var_1 = arg_0;
    let var_2 = select(vec2<u32>(~(~29519u), var_0.b), ~vec2<u32>(var_0.b, ~u_input.a), select(false || select(false, false, true), false, all(vec2<bool>(true, true)))) << (vec2<u32>(arg_2, arg_2) % vec2<u32>(32u));
    var_1 = reverseBits(vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), u_input.c.yz)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -2147483647i) ^ vec2<i32>(u_input.c.x, arg_0.x), vec2<i32>(8539i, 1i))), ~(-min(-37014i, -2234i)), -var_1.x));
    return 0u;
}

fn func_1(arg_0: bool) -> vec3<u32> {
    let var_0 = vec4<i32>(max(select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, 3583i, -1i, u_input.b), vec4<i32>(u_input.e, 33206i, u_input.d, u_input.c.x)), u_input.c.x, any(vec4<bool>(true, arg_0, true, true))) ^ firstTrailingBit(u_input.b), reverseBits(~(i32(-1i) * -12596i))), u_input.d << (u_input.a % 32u), u_input.e, ((u_input.e | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -40891i, u_input.e), vec3<i32>(21736i, 60128i, 3309i))) << (1314u % 32u)) >> (0u % 32u));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(1212f * -1838f), _wgslsmith_f_op_f32(step(-377f, -954f)), _wgslsmith_f_op_f32(-1000f + -865f)))), func_2(_wgslsmith_div_vec4_i32(~(var_0 & vec4<i32>(var_0.x, -27738i, -21565i, var_0.x)), (vec4<i32>(-14168i, u_input.e, u_input.d, var_0.x) & var_0) & (var_0 | vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1784f))), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.a), ~u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(7360u, u_input.a), ~vec2<u32>(1u, 1u)))));
    let var_2 = Struct_4(1u, arg_0, _wgslsmith_f_op_f32(trunc(var_1.a.x)), _wgslsmith_add_i32(73114i, min(var_0.x << (u_input.a % 32u), 11479i) ^ abs(~u_input.e)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, var_1.a.x)) * var_1.a.x), Struct_1(-_wgslsmith_sub_i32(var_0.x, var_0.x)), Struct_1(var_0.x)));
    let var_3 = ~(~15822i);
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e.a, var_1.a.x, var_1.a.x, var_1.a.x) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-174f, 115f, var_1.a.x, var_1.a.x), var_1.a))) - vec4<f32>(var_2.e.a, _wgslsmith_f_op_f32(select(694f, 1195f, true)), _wgslsmith_f_op_f32(var_2.e.a * var_1.a.x), -1123f)) - _wgslsmith_f_op_vec4_f32(max(var_1.a, vec4<f32>(_wgslsmith_f_op_f32(select(var_1.a.x, var_2.e.a, false)), var_2.e.a, var_1.a.x, 178f)))), _wgslsmith_clamp_u32(u_input.a | 30877u, 1u, ~1u));
    return vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(21951u), 76694u >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(1411u, 4294967295u)) | (45205u & u_input.a)) % 32u)), ~countOneBits(func_3(Struct_1(u_input.d), _wgslsmith_add_vec2_i32(var_0.yx, var_0.zx), var_2.e.b)), 0u);
}

fn func_4(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_u32(38277u, ~u_input.a, ~4294967295u);
    var_0 = select(min(4294967295u, 4294967295u), 42756u, true) ^ ~abs(_wgslsmith_add_u32(46393u, 23219u) & u_input.a);
    var var_1 = vec4<bool>(true, !((_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.b, u_input.d), u_input.c) >> (20498u % 32u)) <= -11367i), !all(vec4<bool>(true, true, true, true)), true);
    return Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-100f, 175f, -1000f, 1000f))))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.c.x;
    var_0 = abs(_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(max(vec4<i32>(-56115i, u_input.e, 18511i, -2147483647i), vec4<i32>(u_input.d, -27268i, u_input.d, -32320i)), -vec4<i32>(u_input.b, -1i, -14944i, u_input.e)), vec4<i32>(u_input.e, 2147483647i, ~(-2147483647i), u_input.c.x))));
    var var_1 = func_4(_wgslsmith_add_vec3_u32(select(vec3<u32>(firstTrailingBit(0u), 50009u, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)), vec3<u32>(1u, u_input.a, u_input.a) >> (abs(vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), all(vec4<bool>(true, true, true, true))), countOneBits(~func_1(false))));
    var var_2 = var_1.b;
    let var_3 = 99194u;
    var_2 = abs(var_1.b);
    let var_4 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_4, 38075i, var_4, var_4) | vec4<i32>(u_input.d, 1166i, var_4, var_4), ~vec4<i32>(2147483647i, u_input.b, -42013i, var_4)), -36713i, ~_wgslsmith_mult_i32(-31582i, var_4)), vec4<i32>(-18209i, -var_4, min(1i, ~(-1i)), -48573i)), ~(~(~vec2<u32>(37502u, u_input.a)) | ~_wgslsmith_add_vec2_u32(vec2<u32>(34976u, var_3), vec2<u32>(u_input.a, 54493u))), _wgslsmith_sub_vec2_i32(vec2<i32>(-43849i, abs(1i)), u_input.c.yz) << (abs(vec2<u32>(_wgslsmith_mult_u32(12333u, var_3), 2985u)) % vec2<u32>(32u)));
}

