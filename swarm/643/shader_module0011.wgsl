struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<Struct_4, 24>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = Struct_3(37535u, arg_0.b, 0u, _wgslsmith_f_op_f32(sign(210f)));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(970f, -305f), vec2<f32>(var_0.d, -308f))))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1733f - var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, -892f) - vec2<f32>(1270f, var_0.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-194f, arg_0.d))), select(vec2<bool>(arg_0.b.b.a, arg_0.b.d.a), select(vec2<bool>(true, false), vec2<bool>(var_0.b.e.a, var_0.b.d.a), vec2<bool>(arg_0.b.d.a, arg_0.b.b.a)), vec2<bool>(true, arg_0.b.d.a))))));
    global0 = array<u32, 20>();
    let var_2 = var_0.b;
    let var_3 = Struct_2(-firstLeadingBit(abs(-vec4<i32>(1i, -12443i, -22262i, u_input.a))), Struct_1(arg_0.b.b.a), arg_0.b.d.a, Struct_1(1u < ~var_0.a), var_0.b.e);
    return ~_wgslsmith_sub_vec4_u32(~(~reverseBits(vec4<u32>(1u, 1u, u_input.c.x, u_input.c.x))), vec4<u32>(32841u, ~18166u, _wgslsmith_clamp_u32(var_0.a, min(24927u, 77686u), ~var_0.a), 47027u << (abs(arg_0.c) % 32u)));
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_4, 24>();
    var var_0 = ~max(_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(~12893u, 20u)], u_input.c.x, global0[_wgslsmith_index_u32(~61669u, 20u)], _wgslsmith_div_u32(u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10680u, 20u)], 20u)])), func_3(Struct_3(global0[_wgslsmith_index_u32(50802u, 20u)], Struct_2(vec4<i32>(-1i, u_input.a, 35454i, 65812i), Struct_1(true), true, Struct_1(false), Struct_1(true)), global0[_wgslsmith_index_u32(u_input.c.x, 20u)], 1044f))), vec4<u32>(max(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], 20u)]), vec2<u32>(0u, u_input.c.x)), 20u)], global0[_wgslsmith_index_u32(0u, 20u)]), _wgslsmith_add_u32(select(4294967295u, 0u, true), ~global0[_wgslsmith_index_u32(56326u, 20u)]), ~(~92394u), max(~40221u, firstLeadingBit(1u))));
    var var_1 = _wgslsmith_add_i32(firstLeadingBit(~(~u_input.b)), u_input.a);
    global0 = array<u32, 20>();
    var var_2 = _wgslsmith_div_vec4_u32(~(~(~(~vec4<u32>(18816u, 0u, u_input.c.x, var_0.x)))), countOneBits(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 20u)], 0u, global0[_wgslsmith_index_u32(u_input.c.x, 20u)]), vec4<u32>(29857u, global0[_wgslsmith_index_u32(u_input.c.x, 20u)], global0[_wgslsmith_index_u32(4706u, 20u)], 0u)))));
    return Struct_2(~select(max(vec4<i32>(-2856i, -33144i, -2147483647i, u_input.a), ~vec4<i32>(-7008i, u_input.b, u_input.b, u_input.b)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.b, 1i, 1i), vec4<i32>(u_input.b, u_input.a, -1i, u_input.b)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_1(false), all(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)))), Struct_1(~(~17091u) > ~max(global0[_wgslsmith_index_u32(0u, 20u)], var_0.x)), Struct_1(true));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = var_0.b.a;
    let var_2 = var_0.a;
    let var_3 = !vec4<bool>(select(!var_0.b.a, var_0.c && true, any(vec4<bool>(true, false, false, true))) & false, var_0.d.a, var_0.d.a, true);
    var_1 = select(var_0.e.a, var_3.x, true);
    return var_0.d;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_2(select(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, u_input.b, 7826i, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.a, u_input.b), vec4<i32>(2387i, 0i, 8212i, u_input.a), -vec4<i32>(u_input.a, 16132i, u_input.b, u_input.a))), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.b, 2147483647i, -2147483647i), select(vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.a), vec4<i32>(0i, 9530i, -1i, -4153i), !vec4<bool>(false, arg_0, false, true))), select(!select(vec4<bool>(arg_1.a, false, arg_1.a, false), vec4<bool>(arg_1.a, false, true, false), vec4<bool>(arg_1.a, arg_1.a, false, false)), vec4<bool>(true, !arg_0, !arg_1.a, true), true)), Struct_1(true || all(!vec2<bool>(false, arg_1.a))), func_1().a, func_1(), arg_1);
    global1 = array<Struct_4, 24>();
    global1 = array<Struct_4, 24>();
    let var_1 = Struct_1(all(vec3<bool>(arg_0, false, all(select(vec4<bool>(var_0.c, arg_1.a, false, var_0.e.a), vec4<bool>(arg_0, var_0.d.a, arg_1.a, var_0.b.a), vec4<bool>(arg_0, true, true, arg_0))))));
    var var_2 = Struct_1(!func_1().a);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~u_input.c.x <= global0[_wgslsmith_index_u32(97385u, 20u)], func_1(), ~_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(11996u, 20u)], 0u), global0[_wgslsmith_index_u32(~u_input.c.x, 20u)]) & _wgslsmith_add_u32(~(~global0[_wgslsmith_index_u32(1u, 20u)]), func_3(Struct_3(u_input.c.x, Struct_2(vec4<i32>(u_input.b, u_input.a, 27732i, -1i), Struct_1(false), true, Struct_1(true), Struct_1(true)), 4294967295u, 1135f)).x | u_input.c.x));
    global0 = array<u32, 20>();
    let var_1 = abs(18329u);
    var_0 = Struct_2(vec4<i32>(_wgslsmith_mult_i32(14555i, u_input.a), 23686i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.a.ww, vec2<i32>(0i, -25108i) << (u_input.c % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 7457i), vec2<i32>(var_0.a.x, -11621i))), _wgslsmith_mod_vec2_i32(var_0.a.xz & vec2<i32>(-1i, 64493i), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a.x, 1i), var_0.a.xy, var_0.a.yx))), firstLeadingBit(firstLeadingBit(u_input.b))), Struct_1(func_2().c), true, func_4(true, func_1(), 29069u).b, var_0.b);
    global0 = array<u32, 20>();
    let var_2 = func_1();
    var_0 = func_4(false, func_4(true, func_4(!(true || var_2.a), func_2().b, global0[_wgslsmith_index_u32(var_1, 20u)]).e, 0u).b, ~1u ^ var_1);
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-620f - 1171f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -625f), _wgslsmith_div_f32(405f, 774f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(667f + -866f)), _wgslsmith_f_op_f32(floor(-749f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(675f))), _wgslsmith_f_op_f32(round(894f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1071f, 1000f) - _wgslsmith_f_op_f32(max(-1000f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-396f * -489f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(select(countOneBits(vec2<i32>(u_input.b, var_0.a.x)), -var_0.a.zy, false), vec2<i32>(u_input.a, u_input.a), any(!vec4<bool>(true, false, var_2.a, false))));
}

