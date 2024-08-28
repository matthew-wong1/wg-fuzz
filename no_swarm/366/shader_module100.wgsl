struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_4, 12>;

var<private> global2: Struct_2;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> vec2<u32> {
    return ~countOneBits(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, arg_0.a.d), ~63900u), u_input.a));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = global2.e.zz;
    var var_0 = global0.x;
    let var_1 = !vec4<bool>(true, all(vec3<bool>(-274f > global2.a.c, true, false)), any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true))), all(vec2<bool>(false, all(vec4<bool>(true, true, false, true)))));
    let var_2 = _wgslsmith_f_op_f32(-global0.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.c * global2.e.x) + -388f)) * _wgslsmith_div_f32(-1575f, _wgslsmith_f_op_f32(round(370f))));
    return Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(~global2.a.d >> (1u % 32u), _wgslsmith_dot_vec2_u32(func_3(Struct_3(Struct_1(vec2<u32>(1974u, 4294967295u), global2.a.b, arg_0, 37513u)), 2147483647i, Struct_2(global2.d, global2.b, global2.a.b, global2.b, vec4<f32>(772f, global2.d.c, 582f, 766f))), _wgslsmith_mod_vec2_u32(global2.b.a, vec2<u32>(u_input.a, global2.d.a.x)))), vec2<u32>(global2.b.d, global2.d.a.x | u_input.a) | (vec2<u32>(global2.d.a.x, 4294967295u) ^ min(global2.a.a, vec2<u32>(global2.a.d, global2.a.d)))), abs(vec3<i32>(1475i, ~global2.b.b.x, global2.d.b.x)), 1f, firstLeadingBit(~min(global2.b.d, global2.a.d)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_4 {
    return global1[_wgslsmith_index_u32(global2.b.d, 12u)];
}

fn func_5(arg_0: Struct_4, arg_1: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_u32(select(func_3(Struct_3(Struct_1(global2.b.a, global2.a.b, global0.x, 0u)), -48450i ^ global2.b.b.x, Struct_2(global2.b, Struct_1(global2.b.a, vec3<i32>(global2.d.b.x, global2.d.b.x, -28230i), 167f, 78835u), global2.b.b, Struct_1(global2.b.a, vec3<i32>(global2.b.b.x, global2.b.b.x, 39740i), 1000f, 1u), vec4<f32>(1416f, arg_0.a.x, arg_1.x, -461f))), vec2<u32>(~u_input.a, global2.b.a.x ^ global2.b.d), !vec2<bool>(arg_0.c, arg_0.c)), reverseBits(global2.a.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global2.c.x, 1i, 9948i), min(vec3<i32>(global2.c.x, func_2(1131f).b.x, -67660i ^ global2.d.b.x), reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(global2.c.x, -11406i, 7047i), vec3<i32>(global2.c.x, -2147483647i, global2.a.b.x)))), -vec3<i32>(0i, global2.a.b.x, ~2147483647i)), global0.x, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), global2.a.c)))).d);
    let var_1 = !(!select(select(vec2<bool>(arg_0.c, true), !vec2<bool>(arg_0.c, arg_0.c), false & arg_0.c), select(vec2<bool>(true, true), !vec2<bool>(arg_0.c, true), global2.b.c <= -2350f), select(select(vec2<bool>(true, arg_0.c), vec2<bool>(arg_0.c, true), vec2<bool>(true, true)), vec2<bool>(arg_0.c, arg_0.c), false)));
    let var_2 = ~(~(30404u & ~var_0.a.x));
    var var_3 = ~func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -761f)))).a.x;
    return Struct_3(global2.a);
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> Struct_5 {
    var var_0 = true;
    let var_1 = -2147483647i;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_2.a.c).c - 381f)) - 1587f), 399f, -764f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(714f + 181f)));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.e) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x))), -380f, 1000f, -1187f)));
    let var_4 = select(vec4<bool>(arg_0, arg_0, any(!select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, false, true, true), vec4<bool>(true, true, arg_0, arg_0))), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(arg_0, true)), true))), vec4<bool>(arg_0, var_1 >= min(-24930i, arg_2.a.b.x), !(any(vec4<bool>(false, true, arg_0, arg_0)) && true), !(any(vec4<bool>(arg_0, true, false, false)) | !arg_0)), false);
    return Struct_5(Struct_2(arg_2.a, func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.e.x * 1124f)))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, 2147483647i, global2.c.x) << (select(vec3<u32>(global2.b.a.x, 4294967295u, arg_1.a.d), vec3<u32>(arg_2.a.a.x, arg_1.a.a.x, arg_1.a.d), var_4.yww) % vec3<u32>(32u)), vec3<i32>(-1i, -21969i, i32(-1i) * -1i), global2.b.b), func_2(_wgslsmith_f_op_f32(-arg_2.a.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.c, global2.b.c, -146f, -1886f) * global2.e))))), global2.b, -1064f, select(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(arg_2.a.a.x, 0u), u_input.a, _wgslsmith_div_u32(u_input.a, 1u), arg_2.a.a.x), vec4<u32>(_wgslsmith_sub_u32(51344u, arg_1.a.d), select(11120u, 47207u, false), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global2.a.d, global2.a.a.x), vec3<u32>(0u, 69343u, arg_2.a.d)), ~68720u)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(1u, global2.d.a.x, 1u, arg_2.a.a.x)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.a.d, 91095u, 1u, global2.b.d), vec4<u32>(25999u, 35917u, 0u, 60778u)), vec4<u32>(u_input.a, u_input.a, ~global2.b.a.x, 62265u)), all(select(!var_4, vec4<bool>(false, true, arg_0, var_4.x), true))));
}

fn func_1(arg_0: vec3<bool>) -> vec2<u32> {
    let var_0 = func_6(false, func_5(func_4(func_2(_wgslsmith_f_op_f32(f32(-1f) * -323f)), ~_wgslsmith_div_vec4_i32(vec4<i32>(global2.a.b.x, 17904i, 0i, global2.a.b.x), vec4<i32>(global2.a.b.x, global2.d.b.x, global2.c.x, global2.b.b.x))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1814f))))), func_5(Struct_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(global2.e.yyz, global2.e.yxz), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-891f, global0.x, global0.x), global2.e.zxy, vec3<bool>(arg_0.x, arg_0.x, arg_0.x))))), 650f, arg_0.x & all(vec2<bool>(arg_0.x, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global2.e.xz)))));
    var var_1 = vec4<bool>(any(vec4<bool>(any(vec4<bool>(false, true, true, arg_0.x)), any(select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), true)), false, false | !arg_0.x)), arg_0.x, any(!(!select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, false), arg_0))), all(select(vec3<bool>(arg_0.x, arg_0.x, false), arg_0, !(!vec3<bool>(arg_0.x, arg_0.x, false)))));
    let var_2 = var_0.b.b;
    let var_3 = -_wgslsmith_add_i32(var_0.a.d.b.x, -var_2.x);
    let var_4 = ~(~countOneBits(4294967295u));
    return ~global2.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_u32(global2.b.a, _wgslsmith_sub_vec2_u32(~(~global2.b.a), func_1(vec3<bool>(true, true, false)))) ^ select(global2.a.a, ~abs(global2.a.a) >> (global2.a.a % vec2<u32>(32u)), !(!all(vec3<bool>(true, false, true))));
    var var_1 = global1[_wgslsmith_index_u32(countOneBits(~(~4294967295u)), 12u)];
    let var_2 = select(-global2.a.b.x, reverseBits(_wgslsmith_mult_i32(global2.c.x << (select(global2.b.a.x, 0u, var_1.c) % 32u), -2147483647i)), _wgslsmith_f_op_f32(var_1.a.x * global2.a.c) < -879f);
    var var_3 = ~(~(-func_5(global1[_wgslsmith_index_u32(~1u, 12u)], var_1.a.zz).a.b));
    let var_4 = func_6(false, Struct_3(func_2(2108f)), func_5(func_4(global2.a, _wgslsmith_sub_vec4_i32(vec4<i32>(-8525i, -18944i, -2147483647i, global2.a.b.x), vec4<i32>(-1i, var_2, var_2, -2147483647i)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, 6897u, 1u), vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global2.e.xz))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-131f, global2.b.c))))).a;
    var var_5 = Struct_5(Struct_2(func_5(func_4(var_4.b, _wgslsmith_div_vec4_i32(vec4<i32>(80509i, var_4.b.b.x, 9338i, var_4.b.b.x), vec4<i32>(-14913i, 2147483647i, global2.c.x, var_4.d.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.e.yy) + vec2<f32>(-564f, 1898f))).a, Struct_1(_wgslsmith_add_vec2_u32(global2.a.a, ~vec2<u32>(var_0.x, 1u)), select(~vec3<i32>(-65266i, global2.a.b.x, 0i), _wgslsmith_sub_vec3_i32(global2.d.b, var_4.c), select(var_1.c, var_1.c, true)), 1367f, ~(~u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i << (u_input.a % 32u), var_3.x, _wgslsmith_mod_i32(var_2, var_4.b.b.x)), global2.a.b), Struct_1(~vec2<u32>(1u, var_0.x), vec3<i32>(2147483647i, select(global2.d.b.x, var_2, var_1.c), -19577i), -1126f, u_input.a), vec4<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(756f * var_4.a.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_4.a.c), func_5(global1[_wgslsmith_index_u32(var_0.x, 12u)], vec2<f32>(-130f, global2.a.c)).a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(409f + var_4.e.x) - _wgslsmith_f_op_f32(1517f - global0.x)))), global2.a, 146f, _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 73865u, var_0.x), vec4<u32>(global2.d.a.x, 1u, var_4.d.a.x, u_input.a)), ~vec4<u32>(u_input.a, 12257u, var_0.x, var_4.b.d)), ~((vec4<u32>(var_0.x, 0u, var_0.x, u_input.a) & vec4<u32>(var_4.d.d, global2.b.d, var_4.d.d, 8547u)) | firstTrailingBit(vec4<u32>(47777u, var_4.d.a.x, global2.b.d, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(var_5.a.d.b.x, _wgslsmith_clamp_i32(-36818i, global2.d.b.x, -37985i)), 2378i, vec4<u32>(_wgslsmith_mult_u32(4294967295u, ~4294967295u) & _wgslsmith_div_u32(global2.d.d | var_4.a.a.x, 0u & u_input.a), _wgslsmith_mod_u32(var_0.x, u_input.a), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global2.d.a, vec2<u32>(global2.b.d, 4294967295u)), _wgslsmith_dot_vec4_u32(var_5.d, vec4<u32>(var_5.b.a.x, global2.d.a.x, 4294967295u, 0u))), ~max(57640u, var_5.b.a.x)), 1u), abs(~1i));
}

