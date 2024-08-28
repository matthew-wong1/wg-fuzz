struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec3<f32>, 1>;

var<private> global2: Struct_5 = Struct_5(4294967295u);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = Struct_4(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.a, 0i), u_input.a, ~global0.b.a.x, u_input.a), -firstLeadingBit(global0.a)), vec4<i32>(1i, -(~global0.b.a.x), (-2147483647i ^ global0.a.x) | -1i, _wgslsmith_add_i32(abs(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, 2147483647i, arg_1.a.x), global0.a)))), arg_1, global0.c, 4294967295u, countOneBits(firstTrailingBit(11074u)));
    let var_1 = Struct_4(min(vec4<i32>(var_0.b.a.x, -2147483647i, ~(u_input.a >> (77623u % 32u)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(28513i, arg_1.a.x), global0.b.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(30470i >> (0u % 32u), ~var_0.b.a.x, arg_1.a.x, _wgslsmith_mult_i32(0i, -58649i)), -global0.a)), global0.b, -132f, global2.a, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, var_0.e, 4294967295u, 4294967295u), vec4<u32>(var_0.d, 4294967295u, global0.d, 0u), arg_0.x), vec4<u32>(global0.e, 1u, 1u, global2.a) ^ vec4<u32>(25822u, 27796u, global0.e, 4294967295u)), vec4<u32>(var_0.e, abs(global0.e), 45595u, ~global2.a)) & ~_wgslsmith_mult_u32(global2.a ^ global2.a, 48188u ^ global2.a));
    global1 = array<vec3<f32>, 1>();
    global2 = Struct_5(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(global0.d, 1u, global0.e, global0.e), vec4<u32>(4294967295u, global0.d, global0.d, 4294967295u) | vec4<u32>(global0.d, 0u, global2.a, 31627u))), min(vec4<u32>(global2.a | 4294967295u, 54003u, 1u, ~4294967295u), vec4<u32>(1u, ~81974u, var_1.e << (global0.e % 32u), firstLeadingBit(global2.a)))));
    var var_2 = Struct_3(firstLeadingBit(var_1.b.a.x) < _wgslsmith_sub_i32(var_1.a.x, firstTrailingBit(-40787i) | _wgslsmith_clamp_i32(73796i, -42225i, var_1.a.x)), ~firstLeadingBit((vec2<u32>(global2.a, 4294967295u) | vec2<u32>(global0.d, global2.a)) >> (~vec2<u32>(4294967295u, var_0.e) % vec2<u32>(32u))), u_input.a);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(trunc(-1000f))) - -1129f), 1067f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, global0.c)))));
}

fn func_2() -> i32 {
    var var_0 = !((49864u ^ ~(global0.e ^ global0.d)) == 0u);
    var var_1 = global0.c;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), any(vec3<bool>(true, true, true))), global0.b)), _wgslsmith_mult_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d, global0.d, global2.a), vec3<u32>(global0.e, 4294967295u, global2.a)) ^ firstTrailingBit(1u), firstLeadingBit(0u), all(vec3<bool>(true, false, false)) | (global0.e >= global0.e)), 10941u ^ _wgslsmith_clamp_u32(global2.a, reverseBits(global0.d), _wgslsmith_sub_u32(global2.a, 0u))), _wgslsmith_f_op_f32(-global0.c));
    global2 = Struct_5(min(global0.d, min(global2.a, select(_wgslsmith_dot_vec3_u32(vec3<u32>(83900u, 2832u, global2.a), vec3<u32>(9726u, 16461u, 51843u)), ~global2.a, any(vec4<bool>(true, false, true, true))))));
    global2 = Struct_5(global2.a);
    return u_input.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = Struct_3(true, arg_1, func_2());
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, _wgslsmith_f_op_f32(-global0.c)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(304f, -301f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-994f, global0.c))))))));
    var var_2 = Struct_3(true, select(abs(countOneBits(var_0.b)), ~vec2<u32>(abs(global2.a), _wgslsmith_clamp_u32(1296u, var_0.b.x, arg_1.x)), false), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.b.a.x, -14676i, global0.b.a.x, 0i), global0.a), vec4<i32>(1i, 9427i, -8835i, 0i) | vec4<i32>(24595i, var_0.c, var_0.c, global0.b.a.x)), vec4<i32>(max(0i, var_0.c), -46515i, global0.b.a.x, global0.b.a.x), ~global0.a), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-35798i, -2147483647i, arg_2.a.x, 13363i), global0.a)));
    var_2 = Struct_3(false, ~(~(~vec2<u32>(global2.a, 4294967295u))), 25398i);
    let var_3 = arg_0;
    return vec2<i32>(global0.b.a.x, -41959i);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: vec4<i32>) -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-155f, _wgslsmith_f_op_f32(-392f - _wgslsmith_f_op_f32(-152f - 1331f)), select(true, 0u < arg_0.a, true))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(true, true, false), global0.b)).x)), 2496f, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-global0.c));
    let var_1 = all(vec2<bool>(true, true));
    let var_2 = Struct_1(var_0.xy, _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.a, 1u), countOneBits(firstLeadingBit(arg_0.a))), -522f);
    var var_3 = var_1;
    return min(_wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_2.b, 113470u, global2.a), ~vec3<u32>(var_2.b, var_2.b, 0u), ~vec3<u32>(arg_0.a, 27853u, var_2.b)), firstLeadingBit(~(~vec3<u32>(var_2.b, global2.a, global0.d)))), select(vec3<u32>(var_2.b, global2.a, (67571u ^ global0.e) | 4294967295u), vec3<u32>(countOneBits(arg_0.a ^ var_2.b), global0.d, 4294967295u), vec3<bool>(var_1, !var_1, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(func_4(Struct_5(0u), func_1(vec2<bool>(true, true), vec2<u32>(20059u, 1u), global0.b) ^ _wgslsmith_div_vec2_i32(-global0.a.zy, _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, global0.a.x), vec2<i32>(-26596i, -21175i))), global0.a));
    let var_1 = global0.c;
    global1 = array<vec3<f32>, 1>();
    var var_2 = global0.b;
    let var_3 = u_input.a;
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.c, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, global0.c)), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(1244f, global0.c), vec2<f32>(global0.c, 775f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, -353f))))))), var_0.x >> (global0.d % 32u), global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 37248u, global2.a, 0u)), ~vec4<u32>(var_4.b, global2.a, 4294967295u, 9761u)), ~firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(39439u, var_0.x, 1704u, global0.e), vec4<u32>(var_0.x, 1u, 47867u, 50852u), vec4<u32>(global0.d, 29661u, var_0.x, global0.e)))), global0.e, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.x, 1000f, global0.c, var_4.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1345f, -1464f, -1986f, var_4.c)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.c, global0.c, -247f, global0.c), vec4<f32>(global0.c, -992f, var_4.c, var_4.c)))), vec4<bool>(false, true, false, _wgslsmith_f_op_f32(-714f + var_4.c) < _wgslsmith_f_op_f32(ceil(394f))))));
}

