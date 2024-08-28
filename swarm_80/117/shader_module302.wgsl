struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    global0 = array<f32, 22>();
    var var_0 = vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(select(true, true, true), true), any(vec4<bool>(false, true, true, false)) || (global0[_wgslsmith_index_u32(36748u, 22u)] > global0[_wgslsmith_index_u32(2219u, 22u)]))), !all(vec2<bool>(true, false)));
    var var_1 = select(true, false, var_0.x);
    global0 = array<f32, 22>();
    let var_2 = Struct_3(Struct_1(true, vec3<bool>(true && var_0.x, true, var_0.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1505f, global0[_wgslsmith_index_u32(arg_0.x, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(arg_0.x, 22u)]))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], 262f, -703f) - vec4<f32>(1300f, -618f, 857f, 1494f)))))));
    return firstTrailingBit(_wgslsmith_add_u32(~40657u >> (arg_0.x % 32u), _wgslsmith_mod_u32(abs(arg_0.x), _wgslsmith_div_u32(u_input.c, arg_0.x)))) >> (76056u % 32u);
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_u32(max(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_1, arg_1, arg_1, arg_1)), _wgslsmith_add_vec4_u32(~vec4<u32>(93927u, 4294967295u, 4294967295u, 0u), ~vec4<u32>(arg_1, u_input.c, u_input.c, arg_1))), vec4<u32>(func_3(vec4<u32>(0u, 58986u, 12881u, arg_1)), 48395u, arg_1, ~arg_1) << (abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, arg_1, 4294967295u, 4294967295u), vec4<u32>(28404u, 4294967295u, arg_1, 0u), vec4<u32>(arg_1, 95130u, arg_1, 4294967295u))) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(abs(min(vec4<u32>(1u, 1u, 4294967295u, u_input.c), vec4<u32>(u_input.c, 0u, 13780u, 30380u))), min(vec4<u32>(arg_1, 0u, 47154u, 0u) << (vec4<u32>(arg_1, arg_1, arg_1, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(0u, 4294967295u, u_input.c, u_input.c))), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 42645u, 32090u, 1u), vec4<u32>(arg_1, 1u, arg_1, arg_1)), ~vec4<u32>(arg_1, u_input.c, arg_1, 0u)) | _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, 0u, arg_1, u_input.c), vec4<u32>(0u, 21537u, 32449u, 32681u))), ~(~(~vec4<u32>(u_input.c, 4294967295u, 12382u, arg_1)))));
    var var_1 = -(~2147483647i);
    let var_2 = ~(~(u_input.a.wzw & firstTrailingBit(vec3<i32>(u_input.d, -31472i, 0i))));
    let var_3 = Struct_3(arg_0.a);
    global0 = array<f32, 22>();
    return Struct_1(!all(arg_2) & false, vec3<bool>(var_0.x == ~4294967295u, any(vec2<bool>(!var_3.a.b.x, !arg_2.x)), !all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_0.a.c))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global0 = array<f32, 22>();
    let var_0 = firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(reverseBits(1i), u_input.d) ^ u_input.b, _wgslsmith_div_i32(-(~(-1i)), arg_0), -_wgslsmith_mod_i32(2147483647i, ~arg_0), arg_0));
    global0 = array<f32, 22>();
    var var_1 = arg_3.b.zz;
    let var_2 = Struct_2(arg_1.a, func_2(Struct_3(Struct_1(arg_2, select(vec3<bool>(false, arg_1.b.b.x, true), arg_1.b.b, arg_3.b), _wgslsmith_f_op_vec4_f32(-arg_3.c))), _wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.c, 9762u) << (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u))), ~(~vec2<u32>(arg_1.a, 57030u))), !(!(!vec4<bool>(true, arg_1.b.b.x, true, true)))));
    return Struct_1(arg_1.b.a, arg_3.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.b.c - arg_3.c) + _wgslsmith_f_op_vec4_f32(-var_2.b.c)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(629f, -1527f, -906f, 1471f) + _wgslsmith_f_op_vec4_f32(sign(arg_1.b.c))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(126f, -373f, arg_1.b.c.x, var_2.b.c.x), arg_3.c, vec4<bool>(var_1.x, true, true, arg_1.b.b.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(49526u, 22u)], var_2.b.c.x, -1000f, 463f), vec4<f32>(-1000f, var_2.b.c.x, arg_3.c.x, -920f)))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13272u, 22u)]);
    var var_1 = arg_0;
    var var_2 = Struct_3(func_4(_wgslsmith_mod_i32(firstTrailingBit(0i), _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.d, 8900i, -18676i, u_input.a.x), vec4<i32>(-2147483647i, 55779i, 33468i, u_input.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.b, u_input.d, u_input.b), u_input.a))), Struct_2(select(~u_input.c, 55u, 1419f <= global0[_wgslsmith_index_u32(21816u, 22u)]), func_2(Struct_3(Struct_1(false, arg_2.xzx, vec4<f32>(var_1.x, global0[_wgslsmith_index_u32(u_input.c, 22u)], var_0, -1334f))), 0u, !arg_2)), any(!arg_1) | ((global0[_wgslsmith_index_u32(u_input.c, 22u)] < var_0) && (arg_0.x >= -1249f)), func_2(Struct_3(func_2(Struct_3(Struct_1(true, vec3<bool>(true, arg_1.x, true), vec4<f32>(arg_0.x, global0[_wgslsmith_index_u32(1u, 22u)], 992f, global0[_wgslsmith_index_u32(u_input.c, 22u)]))), 1u, arg_2)), ~0u, select(arg_2, vec4<bool>(arg_1.x, arg_2.x, false, false), false))));
    var var_3 = func_2(Struct_3(func_4(u_input.b, Struct_2(73040u, func_4(45249i, Struct_2(u_input.c, var_2.a), false, Struct_1(false, vec3<bool>(false, false, false), vec4<f32>(arg_0.x, var_1.x, -998f, var_2.a.c.x)))), true, Struct_1(arg_1.x, arg_2.yyw, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-957f, -1136f, 503f, var_0))))), ~abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, u_input.c))), select(vec4<bool>(u_input.b >= select(0i, u_input.d, false), any(!vec4<bool>(false, false, arg_2.x, arg_2.x)), true, !(4386u == u_input.c)), select(vec4<bool>(true, !arg_2.x, any(vec4<bool>(arg_2.x, arg_1.x, true, var_2.a.a)), arg_2.x), select(select(vec4<bool>(false, false, false, var_2.a.a), arg_2, arg_2), arg_2, select(vec4<bool>(true, var_2.a.b.x, var_2.a.b.x, arg_1.x), arg_2, vec4<bool>(var_2.a.b.x, arg_2.x, false, true))), !vec4<bool>(arg_1.x, false, true, true)), !vec4<bool>(arg_2.x, !arg_1.x, var_2.a.b.x && arg_2.x, true)));
    var_2 = Struct_3(Struct_1(false, arg_2.xzy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0[_wgslsmith_index_u32(u_input.c, 22u)], -822f, arg_0.x) * func_2(Struct_3(var_2.a), 1u, vec4<bool>(arg_1.x, arg_2.x, arg_2.x, arg_1.x)).c))));
    return Struct_3(Struct_1(true, vec3<bool>((u_input.b & 2147483647i) != firstLeadingBit(u_input.a.x), false, any(!vec3<bool>(arg_1.x, arg_1.x, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -377f), _wgslsmith_f_op_f32(arg_0.x + var_0), 1f, global0[_wgslsmith_index_u32(u_input.c, 22u)]))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_1(!(!((1u & u_input.c) != 1u)), arg_1.a.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1u, 22u)])), global0[_wgslsmith_index_u32(u_input.c, 22u)], -395f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(45262u, 22u)] - -445f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-776f, 790f, -367f, arg_1.a.c.x)), _wgslsmith_f_op_vec4_f32(floor(arg_1.a.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_0.a.c)))));
    let var_1 = !vec4<bool>((min(24126u, u_input.c) >> (~u_input.c % 32u)) < min(49467u, select(u_input.c, u_input.c, false)), true, var_0.b.x == arg_0.a.b.x, arg_0.a.a || !(var_0.a || true));
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(11566u, u_input.c), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(4294967295u, 4294967295u)), 57060u, u_input.c), vec3<u32>(~min(u_input.c, 0u), 0u, firstLeadingBit(u_input.c))) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 38952u), vec4<u32>(u_input.c, 35095u, u_input.c, 4294967295u) | vec4<u32>(u_input.c, u_input.c, u_input.c, 6225u)), vec4<u32>(_wgslsmith_add_u32(u_input.c, 0u), _wgslsmith_div_u32(0u, u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, u_input.c)), 45836u)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(39332u, u_input.c), ~vec2<u32>(u_input.c, 4294967295u)), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.c, 53220u)), ~vec2<u32>(6286u, u_input.c))), ~(~_wgslsmith_mult_u32(u_input.c, u_input.c))) % vec3<u32>(32u));
    return Struct_1(false, select(func_2(Struct_3(arg_0.a), 4294967295u, vec4<bool>(true, !var_0.a, true, var_0.b.x)).b, vec3<bool>(any(arg_1.a.b), all(var_1), all(var_1)), func_4(-(~u_input.d), Struct_2(max(4294967295u, 44182u), arg_0.a), firstTrailingBit(u_input.d) != u_input.b, Struct_1(true, arg_1.a.b, vec4<f32>(arg_1.a.c.x, var_0.c.x, -750f, 342f))).b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.a.c.x, 332f, var_0.c.x, 262f))), vec4<f32>(259f, var_0.c.x, arg_1.a.c.x, -260f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.c.x - global0[_wgslsmith_index_u32(0u, 22u)])), arg_1.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(466f, -287f, var_1.x)) - _wgslsmith_f_op_f32(arg_0.a.c.x - -1784f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_5(func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(3961f, global0[_wgslsmith_index_u32(u_input.c, 22u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-853f, global0[_wgslsmith_index_u32(u_input.c, 22u)]))), vec2<bool>(true, true), vec4<bool>(true, true, true, false)), Struct_3(func_2(func_1(vec2<f32>(137f, -245f), vec2<bool>(false, true), vec4<bool>(true, true, true, false)), u_input.c, select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false))))));
    var_0 = Struct_3(func_2(Struct_3(Struct_1(true && var_0.a.b.x, select(vec3<bool>(var_0.a.b.x, var_0.a.a, true), vec3<bool>(var_0.a.a, var_0.a.b.x, true), var_0.a.b.x), _wgslsmith_f_op_vec4_f32(var_0.a.c - var_0.a.c))), _wgslsmith_mult_u32(1u, ~u_input.c >> (min(u_input.c, u_input.c) % 32u)), !vec4<bool>(var_0.a.b.x, false, false, func_1(var_0.a.c.yw, var_0.a.b.zx, vec4<bool>(var_0.a.b.x, var_0.a.a, false, false)).a.a)));
    var var_1 = 19758i;
    var var_2 = !vec3<bool>(var_0.a.b.x, true, all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(var_0.a.a, true, false, true), vec4<bool>(false, var_0.a.b.x, var_0.a.a, false)), vec4<bool>(true, false, var_0.a.b.x, var_0.a.b.x), var_0.a.b.x)));
    var var_3 = Struct_1(any(!func_4(u_input.b, Struct_2(u_input.c, var_0.a), true, func_1(var_0.a.c.zx, var_0.a.b.zy, vec4<bool>(var_0.a.a, true, var_0.a.a, var_0.a.a)).a).b), func_4(~firstLeadingBit(abs(u_input.b)), Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u), vec4<u32>(u_input.c, 0u, u_input.c, u_input.c)), Struct_1(any(vec4<bool>(var_0.a.b.x, false, var_0.a.a, var_2.x)), func_1(var_0.a.c.yy, vec2<bool>(false, true), vec4<bool>(var_0.a.b.x, var_0.a.a, var_2.x, var_0.a.a)).a.b, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.c.x, 876f, global0[_wgslsmith_index_u32(u_input.c, 22u)], 130f), var_0.a.c))), var_2.x, var_0.a).b, var_0.a.c);
    var_3 = Struct_1(var_2.x, select(vec3<bool>(min(u_input.c, 4294967295u) != min(4294967295u, u_input.c), var_0.a.b.x, var_3.b.x | (var_2.x | false)), vec3<bool>(true, true, false), func_4(u_input.d, Struct_2(u_input.c, func_5(Struct_3(var_0.a), Struct_3(var_0.a))), true, var_0.a).b), func_2(func_1(_wgslsmith_f_op_vec2_f32(step(var_0.a.c.xy, vec2<f32>(var_3.c.x, -568f))), !var_0.a.b.yy, select(select(vec4<bool>(true, var_3.a, var_2.x, var_3.b.x), vec4<bool>(var_0.a.b.x, var_3.b.x, var_0.a.b.x, var_3.a), vec4<bool>(true, var_3.b.x, false, var_2.x)), !vec4<bool>(var_0.a.b.x, true, var_0.a.a, true), vec4<bool>(var_2.x, true, true, var_3.b.x))), 19344u, !vec4<bool>(select(true, var_3.a, var_2.x), true, any(var_2.xx), !var_2.x)).c);
    var var_4 = Struct_1(true, func_5(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(240f, 908f)) + vec2<f32>(var_0.a.c.x, -481f)), func_5(func_1(vec2<f32>(395f, 346f), var_2.zy, vec4<bool>(true, var_2.x, var_3.b.x, var_3.b.x)), func_1(var_0.a.c.yw, var_3.b.xz, vec4<bool>(var_0.a.b.x, var_3.b.x, false, var_2.x))).b.xz, !select(vec4<bool>(var_2.x, false, var_0.a.b.x, var_3.b.x), vec4<bool>(false, true, false, false), vec4<bool>(false, var_2.x, false, var_3.a))), func_1(var_0.a.c.xw, !func_4(2147483647i, Struct_2(29188u, var_0.a), var_3.a, var_0.a).b.xy, vec4<bool>(true, true, true, true))).b, vec4<f32>(var_3.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -319f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 22u)])), 949f, 517f));
    let var_5 = Struct_2(_wgslsmith_dot_vec4_u32(select(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 53705u, 0u), vec4<u32>(4294967295u, 4294967295u, u_input.c, u_input.c), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(u_input.c, 13697u, 90527u, 0u)), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 1u, u_input.c))), var_0.a.a), ~vec4<u32>(~43197u, _wgslsmith_sub_u32(u_input.c, u_input.c), u_input.c, 1u)), Struct_1(true, func_1(vec2<f32>(_wgslsmith_f_op_f32(599f - -1000f), -2165f), var_3.b.yx, vec4<bool>(func_5(Struct_3(Struct_1(var_2.x, var_3.b, vec4<f32>(1049f, var_4.c.x, 1619f, var_0.a.c.x))), Struct_3(Struct_1(var_0.a.b.x, var_0.a.b, vec4<f32>(var_0.a.c.x, -292f, global0[_wgslsmith_index_u32(u_input.c, 22u)], 525f)))).b.x, true, var_3.a, 11u >= u_input.c)).a.b, _wgslsmith_f_op_vec4_f32(round(var_0.a.c))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_5.a, ~firstLeadingBit(vec3<u32>(53468u, 91057u, 41637u)) & vec3<u32>(u_input.c, _wgslsmith_div_u32(~66778u, var_5.a), var_5.a));
}

