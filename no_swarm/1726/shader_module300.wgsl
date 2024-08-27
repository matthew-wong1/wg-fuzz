struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<f32>(-1174f, -439f), vec4<i32>(2147483647i, -1i, 1i, 1i), vec2<bool>(true, true)), Struct_1(vec2<f32>(548f, 1000f), vec4<i32>(0i, -29701i, 0i, 12158i), vec2<bool>(false, true)), Struct_1(vec2<f32>(187f, 511f), vec4<i32>(0i, i32(-2147483648), 1i, -6448i), vec2<bool>(false, false)), Struct_1(vec2<f32>(-2011f, -769f), vec4<i32>(3263i, 22609i, 21976i, -29118i), vec2<bool>(true, false)), Struct_1(vec2<f32>(1675f, -126f), vec4<i32>(1i, 35324i, -1i, -59799i), vec2<bool>(false, true)), Struct_1(vec2<f32>(-264f, 103f), vec4<i32>(-43259i, 48082i, 1i, -24149i), vec2<bool>(false, true)), Struct_1(vec2<f32>(-1754f, -1966f), vec4<i32>(-66124i, i32(-2147483648), 1i, 8171i), vec2<bool>(false, false)), Struct_1(vec2<f32>(1000f, 2131f), vec4<i32>(-1i, 46240i, 74142i, 74737i), vec2<bool>(false, false)));

var<private> global1: array<f32, 29>;

var<private> global2: Struct_5;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: vec3<u32>) -> vec4<i32> {
    let var_0 = 4294967295u;
    let var_1 = Struct_3(16802i, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1649f, global2.a), vec2<f32>(arg_1.a, global2.a)))))), select(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.c, global2.d, 1i, -2147483647i), vec4<i32>(0i, global2.c, 45405i, -8089i)), ~vec4<i32>(-2147483647i, -38504i, 40895i, arg_1.d), !arg_1.b) & ~vec4<i32>(arg_1.d, 1i, -5098i, global2.c), arg_1.b.zz), Struct_1(vec2<f32>(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(151f)))), -_wgslsmith_add_vec4_i32(vec4<i32>(923i, arg_1.d, 83619i, global2.d), _wgslsmith_mult_vec4_i32(vec4<i32>(-43493i, 3182i, global2.c, global2.c), vec4<i32>(arg_1.c, 14861i, 1i, 2147483647i))), vec2<bool>(true | !arg_1.b.x, any(vec2<bool>(false, false)))), Struct_2(!(!arg_1.b.x), ~var_0, 21141u, vec4<i32>(_wgslsmith_sub_i32(1i, arg_1.c), -max(arg_1.d, 2147483647i), 23017i, 1i), u_input.a.x));
    var var_2 = var_1.c.b;
    var var_3 = -507f;
    global1 = array<f32, 29>();
    return var_1.d.d;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_3(1i, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.a, -1675f), vec2<f32>(-139f, global1[_wgslsmith_index_u32(4294967295u, 29u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(280f, -1177f) + vec2<f32>(1422f, -745f)), all(vec3<bool>(arg_0.c.x, global2.b.x, global2.b.x))))), func_3(u_input.b, Struct_5(_wgslsmith_f_op_f32(trunc(1305f)), !vec4<bool>(arg_2, arg_2, false, arg_2), _wgslsmith_mult_i32(0i, arg_1), firstTrailingBit(15151i)), u_input.a), !global2.b.xw), Struct_1(arg_0.a, select(countOneBits(vec4<i32>(-12398i, arg_0.b.x, 0i, 0i)), arg_0.b, true), global2.b.yy), Struct_2(true, reverseBits(u_input.a.x), _wgslsmith_add_u32(~(~u_input.a.x), abs(countOneBits(4294967295u))), vec4<i32>(arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 25767i), select(vec2<i32>(global2.c, 3326i), vec2<i32>(-26778i, -2147483647i), vec2<bool>(arg_0.c.x, arg_0.c.x))), _wgslsmith_mult_i32(arg_0.b.x ^ global2.c, max(0i, 25842i)), _wgslsmith_div_i32(~(-34594i), global2.d)), ~(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 134101u) << (u_input.b.x % 32u))));
    var var_1 = Struct_4(~vec4<u32>(86434u, ~_wgslsmith_add_u32(11627u, 0u), var_0.d.c, var_0.d.b), global2.b);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)))));
    var var_3 = true;
    let var_4 = 1i;
    return Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.a))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1649f, 1995f)), var_0.b.a)))), select(~var_0.d.d, vec4<i32>(19001i, arg_0.b.x, _wgslsmith_mod_i32(~6516i, -6630i), 17072i >> (0u % 32u)), !(true | (var_1.b.x | false))), !select(vec2<bool>(true, !global2.b.x), vec2<bool>(arg_2 && false, select(false, true, arg_2)), arg_0.c));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    global2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1537f)), select(global2.b, !global2.b, true), ~4058i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(max(arg_2.d.d.zx, arg_2.c.b.xy), _wgslsmith_add_vec2_i32(vec2<i32>(73914i, arg_2.b.b.x), arg_2.d.d.zw)), arg_2.c.b.yw ^ arg_2.c.b.wx), _wgslsmith_mod_i32(0i, 1185i) ^ arg_1));
    var var_0 = u_input.b.zx;
    return arg_2.c;
}

fn func_1(arg_0: Struct_4) -> Struct_5 {
    global0 = array<Struct_1, 8>();
    global2 = Struct_5(global2.a, global2.b, 52857i, 0i);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.a), -706f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global2.a) * vec2<f32>(-1255f, -2226f)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, global2.a), vec2<f32>(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(55378u, 29u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-701f, 451f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2095f, global2.a), vec2<f32>(-204f, global2.a))))))), ~(vec4<i32>(-1i) * -(~vec4<i32>(global2.c, global2.d, global2.d, 1i))), vec2<bool>(global2.b.x, global2.b.x));
    var_0 = func_4(u_input.b.x, var_0.b.x, Struct_3(~(~_wgslsmith_clamp_i32(global2.c, 21248i, -2147483647i)), func_2(Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_0.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.x, -13538i, 1i, global2.c), var_0.b), !vec2<bool>(arg_0.b.x, true)), (i32(-1i) * -2147483647i) ^ -var_0.b.x, true), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -885f)), vec4<i32>(-809i, 32757i | var_0.b.x, global2.d | 2147483647i, 2505i), func_2(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 8u)], -global2.c, false | arg_0.b.x).c), Struct_2(all(!arg_0.b.yyy), 9380u, u_input.b.x & 1u, var_0.b, _wgslsmith_mult_u32(71190u, u_input.a.x))));
    var var_1 = ~(~arg_0.a.x) | arg_0.a.x;
    return Struct_5(1000f, arg_0.b, 0i, var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_4(~u_input.b, global2.b));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(select(~u_input.b, _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, 30331u)) ^ reverseBits(u_input.b), !var_0.b.x), ~u_input.b), max(4294967295u, max(_wgslsmith_sub_u32(u_input.a.x, reverseBits(0u)), u_input.b.x)));
    var_0 = Struct_5(_wgslsmith_f_op_f32(trunc(var_0.a)), select(global2.b, vec4<bool>(false, var_0.b.x, func_2(func_4(36350u, 27199i, Struct_3(-1i, global0[_wgslsmith_index_u32(11160u, 8u)], Struct_1(vec2<f32>(147f, -1150f), vec4<i32>(var_0.d, global2.d, global2.d, 10968i), var_0.b.yw), Struct_2(var_0.b.x, var_1, 14098u, vec4<i32>(-2147483647i, var_0.d, 2147483647i, -1i), 4294967295u))), ~(-36989i), global2.b.x).c.x, true), all(var_0.b.ywz)), var_0.c, -2147483647i);
    var var_2 = global2.b.x;
    global0 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-201f, _wgslsmith_f_op_f32(210f + global1[_wgslsmith_index_u32(28920u, 29u)]), _wgslsmith_f_op_f32(384f - 1275f), var_0.a)))), -809f);
}

