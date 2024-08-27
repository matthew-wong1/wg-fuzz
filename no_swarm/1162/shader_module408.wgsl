struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, false, true, false, true, false, true, true, false, true, false, false, true, false, true, false, true, false, true, true, false, true, true, true, true);

var<private> global1: Struct_3 = Struct_3(28199i, vec4<u32>(23922u, 0u, 4294967295u, 0u), Struct_2(vec2<f32>(-1510f, 583f), vec2<i32>(1i, -1i), -1089f, Struct_1(vec2<f32>(957f, 208f), true, vec2<bool>(true, true)), vec3<bool>(true, false, true)), Struct_2(vec2<f32>(-1000f, -1000f), vec2<i32>(i32(-2147483648), 0i), 738f, Struct_1(vec2<f32>(252f, -338f), true, vec2<bool>(false, false)), vec3<bool>(false, false, false)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(-_wgslsmith_mult_i32(-1i, arg_2.d.b.x), ~select(43302i, arg_3.x, false)) | ~abs(-52259i), arg_1.c.b.x);
    global0 = array<bool, 25>();
    var var_1 = arg_2.b.x;
    global1 = arg_1;
    var var_2 = Struct_2(arg_0.zx, firstTrailingBit(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(arg_1.c.b, vec2<i32>(arg_2.c.b.x, global1.c.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-202f + _wgslsmith_f_op_f32(-arg_1.d.a.x)), _wgslsmith_f_op_f32(-668f + -778f))), arg_2.d.d, arg_1.d.e);
    return !(!(!select(!vec4<bool>(true, var_2.d.b, true, arg_1.c.d.c.x), vec4<bool>(false, var_2.e.x, true, arg_2.d.d.b), select(vec4<bool>(false, false, var_2.d.c.x, false), vec4<bool>(var_2.e.x, global1.d.e.x, true, arg_2.c.d.c.x), true))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = global1.c;
    global0 = array<bool, 25>();
    global1 = Struct_3(-min(firstTrailingBit(global1.d.b.x), global1.a), ~(~_wgslsmith_add_vec4_u32(firstTrailingBit(global1.b), select(vec4<u32>(71556u, 4294967295u, global1.b.x, 27731u), vec4<u32>(1u, 4294967295u, 0u, global1.b.x), vec4<bool>(false, var_0.e.x, true, global1.c.e.x)))), global1.d, global1.d);
    var var_1 = global1.d.d;
    let var_2 = _wgslsmith_div_vec4_u32(~vec4<u32>(global1.b.x, _wgslsmith_dot_vec4_u32(global1.b, global1.b | global1.b), ~1u, firstTrailingBit(abs(0u))), global1.b);
    return Struct_3(var_0.b.x, vec4<u32>(_wgslsmith_add_u32(global1.b.x, u_input.b), u_input.d, ~(~_wgslsmith_clamp_u32(arg_0.x, global1.b.x, u_input.e)), _wgslsmith_sub_u32(~95313u >> ((arg_0.x ^ 1u) % 32u), arg_0.x << ((35254u >> (var_2.x % 32u)) % 32u))), Struct_2(global1.d.d.a, vec2<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.c, 16924i)), 1000f, var_0.d, !(!(!var_0.e))), Struct_2(var_1.a, global1.c.b, _wgslsmith_f_op_f32(1830f * _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-arg_1.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d.a * vec2<f32>(-220f, 1000f))), false, vec2<bool>(false, var_1.b)), vec3<bool>(!all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_2.x, 25u)])), !global1.c.e.x, any(func_2(vec3<f32>(var_1.a.x, var_1.a.x, global1.c.c), Struct_3(global1.c.b.x, vec4<u32>(41922u, var_2.x, 4294967295u, arg_0.x), global1.c, Struct_2(vec2<f32>(arg_1.a.x, -391f), var_0.b, -1612f, Struct_1(arg_1.a, false, var_0.d.c), vec3<bool>(arg_2.x, false, arg_1.c.x))), Struct_3(var_0.b.x, global1.b, Struct_2(var_1.a, u_input.a.zz, -709f, arg_1, global1.c.e), global1.d), global1.c.b).yw))));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = func_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_div_u32(u_input.d, u_input.b)), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(u_input.e, global1.b.x)), ~vec2<u32>(0u, 94827u) ^ _wgslsmith_sub_vec2_u32(global1.b.xz, global1.b.yx)), ~(vec2<u32>(global1.b.x, global1.b.x) >> ((global1.b.yy << (vec2<u32>(31467u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)))), global1.c.d, !select(select(!vec4<bool>(global1.c.e.x, true, false, global0[_wgslsmith_index_u32(4294967295u, 25u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 25u)], true, global1.d.d.b, global1.c.e.x), -6971i >= u_input.c), select(!vec4<bool>(true, global1.c.e.x, false, false), select(vec4<bool>(true, global0[_wgslsmith_index_u32(global1.b.x, 25u)], global1.c.e.x, global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec4<bool>(false, false, global1.c.e.x, global0[_wgslsmith_index_u32(u_input.d, 25u)]), true), func_2(vec3<f32>(global1.c.c, 1647f, global1.d.c), Struct_3(global1.d.b.x, global1.b, Struct_2(global1.d.a, arg_2.zz, 1828f, global1.d.d, global1.d.e), global1.c), Struct_3(arg_0.x, global1.b, global1.c, global1.d), vec2<i32>(14722i, global1.a))), global0[_wgslsmith_index_u32(1u, 25u)]));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -775f))), var_0.c.a.x), any(!func_2(vec3<f32>(var_0.d.c, 864f, 948f), Struct_3(-2147483647i, global1.b, global1.d, global1.d), Struct_3(arg_2.x, vec4<u32>(32480u, 69151u, 1u, u_input.d), Struct_2(vec2<f32>(global1.c.a.x, -1368f), var_0.d.b, global1.d.a.x, var_0.d.d, var_0.c.e), Struct_2(var_0.c.d.a, var_0.d.b, 1000f, Struct_1(global1.d.a, global0[_wgslsmith_index_u32(0u, 25u)], global1.c.e.zy), vec3<bool>(var_0.d.d.b, true, global1.c.d.b))), vec2<i32>(-1i, u_input.a.x) ^ vec2<i32>(arg_0.x, -1227i)).xw), var_0.d.e.zx);
    let var_2 = func_3(_wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(var_0.b.zz, ~vec2<u32>(u_input.e, 21925u)), abs(~var_0.b.yw) | var_0.b.wx), func_3(_wgslsmith_mult_vec2_u32(global1.b.zx, abs(var_0.b.yy)), Struct_1(vec2<f32>(_wgslsmith_div_f32(-280f, var_0.d.d.a.x), 1f), var_0.c.d.c.x, vec2<bool>(true, true)), vec4<bool>(any(func_2(vec3<f32>(-1458f, var_0.c.d.a.x, var_1.a.x), Struct_3(36253i, vec4<u32>(global1.b.x, 21202u, global1.b.x, 28627u), Struct_2(vec2<f32>(global1.c.c, var_0.c.d.a.x), vec2<i32>(global1.a, arg_2.x), 100f, var_0.d.d, global1.d.e), var_0.c), var_0, arg_0.yz)), true, all(!vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 25u)])), var_0.d.d.b)).d.d, !select(!func_2(vec3<f32>(var_1.a.x, global1.c.a.x, global1.d.a.x), Struct_3(var_0.c.b.x, var_0.b, Struct_2(vec2<f32>(-353f, -428f), vec2<i32>(u_input.a.x, global1.d.b.x), 765f, Struct_1(vec2<f32>(1543f, var_1.a.x), false, vec2<bool>(true, true)), global1.d.e), var_0.c), var_0, global1.c.b), vec4<bool>(false, func_3(vec2<u32>(15605u, 18972u), Struct_1(var_1.a, global1.c.d.c.x, vec2<bool>(global0[_wgslsmith_index_u32(6666u, 25u)], false)), vec4<bool>(true, true, false, true)).c.d.c.x, select(false, var_1.c.x, global0[_wgslsmith_index_u32(48015u, 25u)]), true), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.d.a.x, var_1.a.x, global1.d.c), vec3<f32>(var_1.a.x, -2047f, global1.d.c)), func_3(vec2<u32>(var_0.b.x, 55946u), var_0.c.d, vec4<bool>(false, false, var_1.b, false)), Struct_3(u_input.c, global1.b, Struct_2(var_0.d.d.a, arg_0.zx, -782f, global1.d.d, global1.d.e), Struct_2(global1.d.a, vec2<i32>(2147483647i, u_input.c), 588f, global1.d.d, vec3<bool>(true, true, global1.c.d.b))), abs(vec2<i32>(1i, 2147483647i)))));
    global0 = array<bool, 25>();
    let var_3 = global1.d.d;
    return Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.c.a * _wgslsmith_f_op_vec2_f32(vec2<f32>(-767f, var_0.d.c) * var_2.d.d.a))))), !(true & !var_0.d.e.x), !(!var_2.d.d.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 25>();
    let var_0 = max(abs(global1.d.b.x), global1.d.b.x) << (9904u % 32u);
    global0 = array<bool, 25>();
    global1 = Struct_3(global1.a, max(select(global1.b, vec4<u32>(global1.b.x, _wgslsmith_sub_u32(21251u, u_input.e), global1.b.x, firstTrailingBit(u_input.e)), false), vec4<u32>(0u, ~1u, _wgslsmith_sub_u32(global1.b.x, u_input.e & 1u), global1.b.x)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global1.c.d.a)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.d.c, -1684f))))), u_input.a.yw, global1.d.d.a.x, func_1(_wgslsmith_mod_vec3_i32(u_input.a.wzx, u_input.a.wwy), var_0, vec3<i32>(u_input.c & 0i, -5973i, -34169i)), vec3<bool>(any(func_2(vec3<f32>(global1.c.a.x, global1.c.d.a.x, -1628f), Struct_3(global1.d.b.x, vec4<u32>(4294967295u, 53848u, global1.b.x, global1.b.x), Struct_2(vec2<f32>(global1.c.c, global1.d.a.x), global1.d.b, global1.d.c, Struct_1(global1.c.a, false, global1.d.e.zx), global1.d.e), global1.d), Struct_3(-2000i, global1.b, Struct_2(global1.d.a, u_input.a.ww, global1.c.d.a.x, Struct_1(vec2<f32>(global1.c.d.a.x, 505f), false, global1.c.d.c), global1.c.e), global1.d), vec2<i32>(u_input.c, global1.c.b.x))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.c, global1.d.d.a.x, -1011f)), func_3(vec2<u32>(u_input.b, 0u), Struct_1(vec2<f32>(1000f, global1.c.d.a.x), global0[_wgslsmith_index_u32(u_input.d, 25u)], global1.d.e.yx), vec4<bool>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], true, false)), Struct_3(global1.c.b.x, vec4<u32>(23548u, u_input.e, u_input.d, 4294967295u), Struct_2(vec2<f32>(global1.c.a.x, -1173f), u_input.a.ww, global1.d.a.x, global1.c.d, global1.d.e), global1.d), vec2<i32>(2147483647i, var_0)).x, true)), global1.d);
    global1 = func_3(global1.b.zx, func_1(vec3<i32>(var_0, global1.d.b.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, global1.c.b.x, 2147483647i), vec4<i32>(26281i, var_0, global1.d.b.x, -2147483647i)), var_0)), u_input.a.x, (u_input.a.yxw << ((vec3<u32>(u_input.e, global1.b.x, u_input.d) << (global1.b.zyx % vec3<u32>(32u))) % vec3<u32>(32u))) | vec3<i32>(_wgslsmith_mult_i32(5059i, -1i), max(-1308i, 1i), ~var_0)), vec4<bool>((~global1.b.x != firstTrailingBit(0u)) & global1.d.e.x, !all(vec2<bool>(false, false)), max(i32(-1i) * -23450i, _wgslsmith_mod_i32(global1.d.b.x, global1.d.b.x)) != 19911i, global1.c.d.c.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(func_3(global1.b.ww, global1.c.d, vec4<bool>(true, global1.d.d.c.x, global0[_wgslsmith_index_u32(u_input.e, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)])).d.d.a.x, _wgslsmith_f_op_f32(524f * 1860f), _wgslsmith_f_op_f32(f32(-1f) * -688f), global1.d.a.x)))));
    global0 = array<bool, 25>();
    let var_2 = global1.c.b.x & _wgslsmith_dot_vec2_i32(vec2<i32>(~max(-2147483647i, var_0), -38774i), select(countOneBits(vec2<i32>(-89916i, 0i)), vec2<i32>(var_0, _wgslsmith_dot_vec3_i32(u_input.a.wwx, vec3<i32>(39445i, u_input.c, 2147483647i))), global1.c.d.c));
    global1 = func_3(vec2<u32>(~u_input.b, _wgslsmith_mod_u32(35496u, _wgslsmith_mult_u32(u_input.b, u_input.d)) | 1u), global1.d.d, vec4<bool>(true, true, !global0[_wgslsmith_index_u32(~(~u_input.d), 25u)], all(!vec4<bool>(false, global1.d.d.c.x, global0[_wgslsmith_index_u32(global1.b.x, 25u)], false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-306f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(504f + _wgslsmith_div_f32(var_1.x, var_1.x)), 405f)), _wgslsmith_clamp_vec4_u32(global1.b, select(select(global1.b ^ global1.b, countOneBits(global1.b), false), global1.b, _wgslsmith_f_op_f32(-var_1.x) != _wgslsmith_f_op_f32(1814f + 537f)), _wgslsmith_div_vec4_u32(global1.b, vec4<u32>(~4294967295u, u_input.e, 65179u, 84738u))), min(vec4<i32>(59535i, var_0, 15354i, 0i), (~u_input.a ^ reverseBits(vec4<i32>(u_input.c, -46072i, 30788i, var_0))) & -reverseBits(vec4<i32>(-1i, u_input.a.x, -12605i, u_input.a.x))));
}

