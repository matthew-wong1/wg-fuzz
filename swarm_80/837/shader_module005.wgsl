struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<vec4<i32>, 21>;

var<private> global1: f32;

var<private> global2: Struct_3 = Struct_3(vec4<f32>(-901f, 1000f, -1154f, 2053f), vec4<i32>(12593i, -26898i, i32(-2147483648), i32(-2147483648)), false, vec4<u32>(1889u, 1u, 4294967295u, 27440u));

var<private> global3: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(Struct_3(vec4<f32>(-1034f, 377f, 1062f, -1037f), vec4<i32>(-35889i, -8732i, -33053i, -8944i), false, vec4<u32>(1u, 0u, 31095u, 4224u)), false, Struct_2(i32(-2147483648))), Struct_4(Struct_3(vec4<f32>(-663f, 1318f, -526f, 1110f), vec4<i32>(18158i, 2147483647i, -44311i, 0i), false, vec4<u32>(17195u, 1u, 35772u, 66937u)), true, Struct_2(8723i)));

var<private> global4: array<vec3<i32>, 21>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = firstTrailingBit(vec4<i32>(global2.b.x, -2147483647i, min(u_input.a.x, -2147483647i) & (i32(-1i) * -2147483647i), ~u_input.a.x)) ^ vec4<i32>(-global2.b.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -8729i), u_input.a.yy) | -44054i, -4288i, select(_wgslsmith_add_i32(u_input.a.x, -1i), ~37395i, true));
    let var_1 = Struct_2(~1i);
    let var_2 = Struct_3(_wgslsmith_div_vec4_f32(global2.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(146f, -561f, -2116f, global2.a.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(global2.a)))))), vec4<i32>(~u_input.a.x, abs(1i), var_1.a, global2.b.x), !all(select(!vec2<bool>(global2.c, false), select(vec2<bool>(true, true), vec2<bool>(global2.c, global2.c), vec2<bool>(true, false)), false)), vec4<u32>(~17839u, ~global2.d.x, countOneBits(global2.d.x), ~1u) << (global2.d % vec4<u32>(32u)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x));
    global2 = Struct_3(vec4<f32>(global2.a.x, global2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-459f, global2.a.x, true)), _wgslsmith_f_op_f32(ceil(var_2.a.x))) - global2.a.x)), select(u_input.a, firstTrailingBit(select(vec4<i32>(u_input.a.x, -1i, -6106i, var_0.x), -global0[_wgslsmith_index_u32(var_2.d.x, 21u)], vec4<bool>(true, false, var_2.c, var_2.c))), select(!(!vec4<bool>(global2.c, false, false, true)), vec4<bool>(true, var_2.c, false, global2.c | true), vec4<bool>(false, 49231i != u_input.a.x, any(vec3<bool>(var_2.c, true, global2.c)), all(vec3<bool>(var_2.c, false, true))))), all(select(!vec2<bool>(false, var_2.c), !select(vec2<bool>(var_2.c, global2.c), vec2<bool>(var_2.c, true), false), !var_2.c)), var_2.d & vec4<u32>(9482u, ~(var_2.d.x & 37975u), 1577u, 1u));
    return var_2.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec2<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1373f, global2.a.x)))))), -201f);
    var var_1 = _wgslsmith_mod_i32(min(select(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c, arg_0.a, arg_0.c, -2147483647i), u_input.a << (vec4<u32>(53904u, global2.d.x, 8042u, 1u) % vec4<u32>(32u))), arg_0.c, any(!vec3<bool>(false, global2.c, global2.c))), _wgslsmith_dot_vec4_i32(-(~u_input.a), vec4<i32>(~arg_0.c, global2.b.x, u_input.a.x ^ 46524i, _wgslsmith_sub_i32(global2.b.x, -2147483647i)))), arg_0.a);
    global0 = array<vec4<i32>, 21>();
    let var_2 = global3[_wgslsmith_index_u32(~abs(global2.d.x), 2u)];
    let var_3 = global2.a.wx;
    return ~(~(~global2.d.xz ^ var_2.a.d.zy));
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(727f - _wgslsmith_div_f32(-2378f, 139f)) * _wgslsmith_f_op_f32(-global2.a.x));
    let var_0 = ~65589u;
    var var_1 = func_4(Struct_1(u_input.a.x, global2.c, func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.x, global2.b.x, 0i, global2.b.x), u_input.a) ^ u_input.a.x)), global2.c);
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(1000f * global2.a.x), _wgslsmith_f_op_f32(global2.a.x - global2.a.x), _wgslsmith_f_op_f32(trunc(405f))))), vec4<i32>(firstLeadingBit(43196i), 2177i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(64662i, -18903i, 21182i, global2.b.x)) | select(vec4<i32>(global2.b.x, u_input.a.x, global2.b.x, global2.b.x), u_input.a, true), (u_input.a ^ vec4<i32>(global2.b.x, -30354i, global2.b.x, 43218i)) | vec4<i32>(global2.b.x, 20631i, global2.b.x, global2.b.x)), -(~reverseBits(global2.b.x))), false, ~_wgslsmith_add_vec4_u32(global2.d, ~vec4<u32>(var_1.x, var_0, var_0, var_1.x)) & _wgslsmith_div_vec4_u32(firstLeadingBit(~global2.d), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global2.d.x, var_1.x, var_0), firstLeadingBit(vec4<u32>(1u, var_0, var_0, var_0)))));
    var var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(global2.d.x | global2.d.x, firstLeadingBit(4294967295u), ~global2.d.x, var_1.x), var_2.d);
    return var_2.b.x;
}

fn func_1() -> Struct_3 {
    global2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(426f)), global2.a.x, 562f, global2.a.x) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(global2.a))))) + global2.a), firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, -1i, 2147483647i) >> (~0u % 32u), (-11367i >> (global2.d.x % 32u)) & func_2(vec2<bool>(global2.c, global2.c)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(64474i, 17414i), _wgslsmith_add_i32(-1i, 10629i), 1i), abs(select(global2.b.x, u_input.a.x, global2.c)))), all(vec4<bool>(true, !global2.c, global2.c, global2.c)), global2.d);
    global3 = array<Struct_4, 2>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1165f, -408f, 1000f, global2.a.x), vec4<f32>(global2.a.x, -634f, global2.a.x, global2.a.x))), global2.a, global2.a.x < global2.a.x)) - global2.a) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -206f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1017f) * 1f), 1181f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global2.a.x)))))), select(_wgslsmith_mod_vec4_i32(vec4<i32>(abs(u_input.a.x), countOneBits(global2.b.x), u_input.a.x, -13133i), global0[_wgslsmith_index_u32(11636u, 21u)]), countOneBits(min(-vec4<i32>(u_input.a.x, u_input.a.x, -1i, 0i), abs(u_input.a))), !any(select(vec4<bool>(global2.c, true, false, false), vec4<bool>(false, global2.c, global2.c, global2.c), vec4<bool>(true, global2.c, true, global2.c)))), all(select(vec2<bool>(true, global2.a.x <= global2.a.x), select(select(vec2<bool>(global2.c, true), vec2<bool>(global2.c, global2.c), vec2<bool>(false, global2.c)), !vec2<bool>(false, global2.c), select(vec2<bool>(global2.c, global2.c), vec2<bool>(global2.c, false), true)), vec2<bool>(true, true))), ~vec4<u32>(_wgslsmith_mult_u32(114215u, global2.d.x) & _wgslsmith_mult_u32(28821u, 1u), abs(~global2.d.x), 4294967295u, 1u));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(-1000f, var_0.a.x), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.x))))), u_input.a, all(select(select(!vec2<bool>(var_0.c, true), vec2<bool>(global2.c, var_0.c), select(vec2<bool>(var_0.c, true), vec2<bool>(false, true), global2.c)), !(!vec2<bool>(global2.c, global2.c)), !var_0.c)), ~(_wgslsmith_mult_vec4_u32(global2.d, ~global2.d) << ((vec4<u32>(0u, 4294967295u, var_0.d.x, 4294967295u) & ~vec4<u32>(1u, var_0.d.x, 56898u, 0u)) % vec4<u32>(32u))));
    global4 = array<vec3<i32>, 21>();
    return var_1;
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    var var_0 = 0i;
    let var_1 = 353f;
    let var_2 = Struct_1(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_div_i32(global2.b.x << (4294967295u % 32u), countOneBits(-36008i)), -17040i), _wgslsmith_add_i32(func_2(vec2<bool>(true, true)), _wgslsmith_add_i32(arg_0.b.x & 978i, 1i))), true, -12450i);
    var var_3 = Struct_2(_wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(global2.d.x, 21u)], u_input.a) << (~max(arg_0.d, global2.d) % vec4<u32>(32u)), arg_0.b));
    var var_4 = !select(!vec4<bool>(true, true, false, any(vec2<bool>(false, arg_0.c))), !select(vec4<bool>(var_2.b, global2.c, false, arg_0.c), !vec4<bool>(true, true, false, arg_0.c), !var_2.b), !vec4<bool>(true, var_2.b, all(vec4<bool>(arg_0.c, true, var_2.b, false)), any(vec3<bool>(true, true, arg_0.c))));
    return Struct_3(arg_0.a, select(u_input.a, ~global2.b, !(!vec4<bool>(false, false, global2.c, true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.a.x, global2.a.x)), _wgslsmith_f_op_f32(sign(global2.a.x))) * 1065f) == _wgslsmith_f_op_f32(2182f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_0.a.x))))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.d.x, 1u, global2.d.x, 20282u), vec4<u32>(1u, global2.d.x, arg_0.d.x, func_4(Struct_1(arg_0.b.x, true, arg_0.b.x), false).x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1());
    global2 = Struct_3(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x)))), -586f, _wgslsmith_f_op_f32(var_0.a.x + -230f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-var_0.a.x)) * -1504f)), var_0.b, false, ~(~global2.d) << (abs(vec4<u32>(~0u, max(global2.d.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, var_0.d.x, global2.d.x), vec3<u32>(var_0.d.x, 27485u, var_0.d.x)), firstLeadingBit(35412u))) % vec4<u32>(32u)));
    let var_1 = Struct_4(func_5(Struct_3(var_0.a, abs(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.d.x, 9306u), 21u)]), true, vec4<u32>(~global2.d.x, ~4294967295u, var_0.d.x, var_0.d.x))), false, Struct_2(1i));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global2.a.x)))), 248f));
    global4 = array<vec3<i32>, 21>();
    let var_2 = _wgslsmith_clamp_i32(u_input.a.x, -(~54054i), func_3(-abs(1i)));
    var var_3 = _wgslsmith_add_vec4_i32(firstTrailingBit(~vec4<i32>(2147483647i, global2.b.x | var_0.b.x, global2.b.x, select(var_2, global2.b.x, false))), vec4<i32>(-var_1.c.a, i32(-1i) * -2102i, _wgslsmith_div_i32(var_1.c.a, _wgslsmith_mult_i32(_wgslsmith_mult_i32(global2.b.x, -49242i), ~var_0.b.x)), abs(global2.b.x)));
    var var_4 = ~var_2;
    global3 = array<Struct_4, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(567f, var_0.a.x, var_1.a.a.x)))), _wgslsmith_f_op_vec3_f32(-var_1.a.a.yyz))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -950f) - -142f), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))))));
}

