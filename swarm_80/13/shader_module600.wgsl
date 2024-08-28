struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: u32) -> i32 {
    let var_0 = ~(~vec2<u32>(u_input.b.x, ~_wgslsmith_div_u32(arg_2.d.x, arg_3)));
    var var_1 = -53460i;
    var_1 = i32(-1i) * -1i;
    var_1 = _wgslsmith_div_i32(select(-31869i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(3406i, 2147483647i), -arg_2.b.xz), 5294i), arg_0.b.a), _wgslsmith_sub_i32(abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.b.x, arg_0.b.b.x, -2147483647i, 1i), vec4<i32>(arg_2.b.x, arg_2.b.x, -22279i, arg_2.b.x))), _wgslsmith_mult_i32(0i, max(arg_2.b.x, -1i))));
    var_1 = arg_2.b.x;
    return arg_2.b.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec3<bool>) -> u32 {
    var var_0 = Struct_1(any(select(!(!arg_2), !(!vec3<bool>(true, arg_1.x, arg_2.x)), all(!arg_1.xzz))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -50204i, 0i, _wgslsmith_div_i32(0i, -50339i)), vec3<i32>(max(2147483647i, -2147483647i), reverseBits(-26852i), 42651i), select(vec3<i32>(8986i, 2147483647i, 0i), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(-11529i, -71458i, 1i)), vec3<bool>(true, arg_2.x, true))), reverseBits(vec3<i32>(1i, i32(-1i) * -25319i, _wgslsmith_mult_i32(-1i, -32266i))), select(!vec3<bool>(arg_1.x, arg_2.x, true), arg_2, arg_1.zxw)), vec2<f32>(_wgslsmith_f_op_f32(883f * _wgslsmith_f_op_f32(f32(-1f) * -1970f)), arg_0.x), ~vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(39190u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.b.x, 87727u, 4294967295u)), u_input.b.x, u_input.b.x, 1u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-753f, _wgslsmith_f_op_f32(step(-772f, var_0.c.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c * vec2<f32>(var_0.c.x, arg_0.x))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1053f, -1526f))))) + _wgslsmith_f_op_vec2_f32(step(var_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * var_0.c.x), _wgslsmith_f_op_f32(721f + 193f)) - _wgslsmith_f_op_vec2_f32(-arg_0)))));
    var var_2 = min(_wgslsmith_mod_i32(func_3(Struct_2(var_0.d.zyz, Struct_1(true, vec3<i32>(-1i, 2147483647i, -2147483647i), vec2<f32>(var_0.c.x, 823f), vec4<u32>(2543u, u_input.b.x, var_0.d.x, u_input.b.x)), vec3<i32>(12124i, var_0.b.x, var_0.b.x), var_0.c.x, vec2<u32>(var_0.d.x, u_input.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-107f, var_1.x, 1462f, -466f)), Struct_1(arg_1.x, var_0.b, arg_0, var_0.d), 56347u >> (var_0.d.x % 32u)) | 10780i, _wgslsmith_mult_i32(~var_0.b.x, 52782i)), ~var_0.b.x);
    var var_3 = Struct_1(true, var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.c.x, var_0.c.x, arg_2.x)), _wgslsmith_f_op_f32(max(-780f, 995f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, var_0.c.x))) + var_0.c), select(countOneBits(var_0.d), reverseBits(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(var_0.d, var_0.d), ~var_0.d)), var_0.a));
    var var_4 = Struct_2(var_3.d.wzx, Struct_1(true | all(select(vec2<bool>(arg_2.x, arg_1.x), vec2<bool>(false, true), false)), firstTrailingBit(~(-vec3<i32>(var_3.b.x, var_3.b.x, var_0.b.x))), vec2<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(select(-850f, arg_0.x, arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - _wgslsmith_div_f32(var_3.c.x, -1359f))), ~abs(vec4<u32>(38843u, 4294967295u, var_0.d.x, var_0.d.x)) | var_0.d), vec3<i32>(var_0.b.x, var_0.b.x << ((_wgslsmith_add_u32(4294967295u, var_3.d.x) ^ _wgslsmith_add_u32(35680u, var_3.d.x)) % 32u), var_0.b.x), arg_0.x, var_0.d.yy ^ ~var_3.d.zy);
    return ~14132u;
}

fn func_1() -> Struct_1 {
    global0 = u_input.a.x;
    global0 = _wgslsmith_sub_u32(firstLeadingBit(30957u), _wgslsmith_mult_u32(~1u, _wgslsmith_sub_u32(u_input.a.x, reverseBits(4294967295u)))) | max(abs(6879u), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-891f, -1077f))), vec4<bool>(true, true, true, true), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), all(vec4<bool>(false, false, false, true)))));
    global0 = _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x);
    let var_0 = true && !(!(~7346u == u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1442f, -561f))))));
    return Struct_1(all(!vec3<bool>(true, var_0, true)), firstLeadingBit(vec3<i32>(1i, 38565i, _wgslsmith_dot_vec4_i32(vec4<i32>(-40567i, -2147483647i, 26147i, 3764i), vec4<i32>(41784i, 1i, -1i, -46428i)) << (~u_input.b.x % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1200f, 302f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1409f, 782f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -486f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-687f, -362f) + vec2<f32>(-791f, 205f)))))), vec4<u32>(u_input.b.x, u_input.a.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, u_input.a.x, 21622u, u_input.b.x)), ~(~vec4<u32>(4294967295u, 9042u, 8281u, 101525u))), (min(u_input.a.x, 34816u) ^ _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, u_input.b.x))) ^ ~(~44193u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec2<bool>(arg_0.a, !(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d.x, 0u, arg_0.d.x), arg_1.b.d.zyx) > firstTrailingBit(u_input.b.x)) && true);
    var var_1 = -6955i;
    global0 = u_input.a.x;
    let var_2 = func_1().a;
    let var_3 = arg_1.b;
    return func_1();
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> u32 {
    global0 = select((arg_2 << (arg_2 % 32u)) >> (~893u % 32u), ~6445u, false);
    global0 = ~func_1().d.x;
    global0 = arg_3.d.x;
    global0 = arg_2;
    let var_0 = func_4(func_1(), arg_1);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -4124i, -1i, 32878i), vec4<i32>(1i, -2147483647i, -1i, 18278i) << (vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), -vec4<i32>(1i, 1i, 1i, 1i)), Struct_2(min(reverseBits(vec3<u32>(4294967295u, 52620u, u_input.a.x)), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) | vec3<u32>(u_input.b.x, 24381u, 704u)), func_4(func_1(), Struct_2(vec3<u32>(u_input.b.x, u_input.a.x, 62366u), Struct_1(false, vec3<i32>(-27550i, 13510i, -1i), vec2<f32>(1000f, 1054f), vec4<u32>(62180u, u_input.a.x, 0u, 140u)), vec3<i32>(-45066i, -24364i, 39732i), 505f, u_input.b)), -vec3<i32>(-1i, 0i, -1i) | select(vec3<i32>(27454i, 57179i, 2147483647i), vec3<i32>(19565i, 11159i, -2147483647i), vec3<bool>(false, false, false)), -361f, _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b.x, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(49904u, u_input.a.x), vec2<u32>(u_input.b.x, u_input.b.x)), u_input.a)), 29889u, func_4(Struct_1(false, vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-131f, 1000f), vec2<f32>(-922f, 1000f))), vec4<u32>(u_input.a.x, 55548u, 3415u, 41869u)), Struct_2(func_1().d.zzy, func_4(Struct_1(true, vec3<i32>(0i, -2147483647i, 0i), vec2<f32>(-480f, -1021f), vec4<u32>(u_input.b.x, u_input.a.x, 19876u, u_input.a.x)), Struct_2(vec3<u32>(u_input.a.x, 0u, 71582u), Struct_1(true, vec3<i32>(-11418i, -87345i, -21750i), vec2<f32>(153f, 252f), vec4<u32>(1128u, u_input.b.x, u_input.a.x, u_input.a.x)), vec3<i32>(-2147483647i, -2241i, 1i), 420f, vec2<u32>(u_input.a.x, 86847u))), abs(vec3<i32>(3722i, -1i, 0i)), _wgslsmith_f_op_f32(f32(-1f) * -1336f), _wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, vec2<u32>(u_input.b.x, 0u))))) >> (4294967295u % 32u);
    var var_0 = Struct_2(~vec3<u32>(4294967295u, min(~u_input.a.x, select(u_input.b.x, u_input.b.x, false)), 54921u), func_4(Struct_1(true, vec3<i32>(_wgslsmith_clamp_i32(0i, -2147483647i, 8523i), i32(-1i) * -1i, -19613i), vec2<f32>(1f, -1453f), _wgslsmith_mult_vec4_u32(~vec4<u32>(1464u, 0u, 4294967295u, 0u), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.b.x))), Struct_2(~vec3<u32>(0u, 39764u, u_input.b.x), Struct_1(true, vec3<i32>(20005i, 0i, -73747i), vec2<f32>(1712f, 163f), ~vec4<u32>(678u, 47401u, 1u, 93815u)), select(-vec3<i32>(33009i, 2147483647i, -29524i), vec3<i32>(1i, 1i, 1i), true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(916f, 403f)), ~reverseBits(vec2<u32>(u_input.b.x, 4294967295u)))), func_1().b, _wgslsmith_f_op_f32(f32(-1f) * -867f), u_input.b);
    let var_1 = Struct_2(vec3<u32>(~u_input.a.x, 5139u << ((4294967295u & var_0.e.x) % 32u), 55342u), var_0.b, var_0.b.b, _wgslsmith_f_op_f32(max(var_0.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d)))))), _wgslsmith_mult_vec2_u32(vec2<u32>(9238u, 20742u), vec2<u32>(u_input.a.x, 13139u)));
    global0 = _wgslsmith_sub_u32(~var_1.a.x ^ var_1.a.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, 20599u), select(var_1.b.d.x, var_1.b.d.x, true)), var_0.a.x) >> (1u % 32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2378f, var_1.d, var_1.d, 577f) * vec4<f32>(var_1.b.c.x, var_0.b.c.x, 462f, var_0.d)) + vec4<f32>(var_0.d, 949f, 2244f, var_1.b.c.x)))))));
    let var_3 = (all(select(select(vec3<bool>(var_1.b.a, true, true), vec3<bool>(var_1.b.a, false, var_1.b.a), var_1.b.a), vec3<bool>(true, true, true), !vec3<bool>(true, var_1.b.a, false))) && !all(select(vec2<bool>(var_0.b.a, true), vec2<bool>(var_0.b.a, var_1.b.a), true))) == var_1.b.a;
    var_0 = Struct_2(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 4294967295u, 33768u) | vec3<u32>(~4115u, var_1.e.x, _wgslsmith_clamp_u32(var_1.b.d.x, 4294967295u, 1u)), vec3<u32>(4294967295u, _wgslsmith_div_u32(31571u, ~32828u), ~1u)), func_4(var_1.b, var_1), var_0.c, -612f, firstTrailingBit(var_0.a.yx));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(var_0.a.x, u_input.a.x, 75067u, 10671u), _wgslsmith_sub_vec4_u32(min(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b.d.x, 0u, 0u, 0u), vec4<u32>(1u, 2925u, var_1.a.x, 4294967295u)), vec4<u32>(35768u, var_0.a.x, 4294967295u, var_1.e.x)), var_0.b.d), vec4<bool>(firstTrailingBit(var_0.c.x) == ~var_1.c.x, (var_1.b.b.x | 2147483647i) <= var_0.c.x, select(!var_3, var_1.b.a, true), all(select(vec2<bool>(var_0.b.a, var_1.b.a), vec2<bool>(true, var_0.b.a), true)))), _wgslsmith_dot_vec4_i32(-(-vec4<i32>(1i, 0i, -52734i, 8644i) ^ (vec4<i32>(20241i, var_1.b.b.x, var_0.c.x, 52742i) >> (vec4<u32>(384u, 1u, var_1.e.x, var_0.e.x) % vec4<u32>(32u)))), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, ~var_1.c.x, i32(-1i) * -21433i, -1i), ~vec4<i32>(var_1.c.x, var_1.c.x, 1625i, -2147483647i))), select(~(~vec4<i32>(var_0.c.x, 51623i, var_0.b.b.x, 54150i)) | abs(-vec4<i32>(-1i, 37366i, 0i, 2147483647i)), _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(-20168i, var_0.c.x, 31104i, -2147483647i)), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2147483647i, var_0.c.x, var_0.b.b.x), vec4<i32>(var_1.c.x, -2147483647i, var_1.c.x, var_0.c.x))), abs(select(vec4<i32>(55244i, 12497i, 0i, var_0.b.b.x), vec4<i32>(var_0.c.x, var_1.b.b.x, var_1.c.x, var_1.c.x), vec4<bool>(var_0.b.a, true, var_0.b.a, var_0.b.a)))), all(select(vec2<bool>(var_0.b.a, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
}

