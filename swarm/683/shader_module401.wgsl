struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(75840u, vec4<i32>(-16129i, 2147483647i, -17732i, -1i), -278f, true), Struct_1(18515u, vec4<i32>(1395i, -15155i, -5446i, i32(-2147483648)), -1264f, false), Struct_1(37789u, vec4<i32>(0i, 1i, 28619i, 1i), 300f, false), Struct_1(83371u, vec4<i32>(1i, -31814i, i32(-2147483648), 1i), -1509f, true), Struct_1(864u, vec4<i32>(i32(-2147483648), -1653i, -1i, 1i), -782f, false), Struct_1(30139u, vec4<i32>(-1i, 45447i, -1i, 2147483647i), -863f, false), Struct_1(0u, vec4<i32>(-14936i, -52184i, 2809i, i32(-2147483648)), -1776f, false), Struct_1(44151u, vec4<i32>(2300i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), -593f, true), Struct_1(12723u, vec4<i32>(64689i, 53306i, -53385i, 33828i), 1002f, false), Struct_1(4294967295u, vec4<i32>(i32(-2147483648), 0i, -431i, -46310i), -764f, true), Struct_1(44318u, vec4<i32>(59621i, -8099i, 18709i, 1i), 1642f, true), Struct_1(21670u, vec4<i32>(-19282i, 6974i, 40259i, 31013i), -226f, true), Struct_1(27985u, vec4<i32>(12769i, 31626i, 1i, 14143i), -405f, false), Struct_1(1u, vec4<i32>(1i, 1i, 2147483647i, 0i), -1229f, true), Struct_1(1u, vec4<i32>(-32531i, -20147i, 9063i, 8439i), 997f, true), Struct_1(0u, vec4<i32>(2147483647i, 54624i, 7693i, 19779i), -300f, false));

var<private> global2: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_3(Struct_2(true), vec3<u32>(0u, ~_wgslsmith_mod_u32(select(arg_1.a, 37155u, false), arg_1.a), arg_1.a), ~(~(-arg_1.b.zxw)) & vec3<i32>(-43044i, _wgslsmith_add_i32(2147483647i, 0i) | _wgslsmith_dot_vec4_i32(arg_1.b, arg_1.b), _wgslsmith_dot_vec3_i32(arg_1.b.xxx ^ vec3<i32>(u_input.a, 0i, 2147483647i), -vec3<i32>(0i, -1i, 1i))));
    global0 = array<vec4<i32>, 3>();
    global1 = array<Struct_1, 16>();
    var var_1 = Struct_4(Struct_3(var_0.a, abs(vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(var_0.b.x, var_0.b.x, 4294967295u)), var_0.b.x >> (0u % 32u), 74168u)), _wgslsmith_add_vec3_i32(-vec3<i32>(arg_0, var_0.c.x, u_input.b), vec3<i32>(1i, -5895i, firstTrailingBit(arg_0)))), Struct_2(select(true && var_0.a.a, all(select(vec4<bool>(arg_1.d, var_0.a.a, arg_1.d, true), vec4<bool>(arg_1.d, var_0.a.a, arg_1.d, false), vec4<bool>(arg_1.d, var_0.a.a, true, var_0.a.a))), true)), arg_0, Struct_2(!(any(vec4<bool>(arg_1.d, var_0.a.a, true, var_0.a.a)) || all(vec4<bool>(arg_1.d, false, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.c)), arg_1.c, arg_1.c, _wgslsmith_div_f32(321f, arg_1.c)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, arg_1.c, arg_1.c, 1066f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.c, arg_1.c, -550f, arg_1.c))), all(vec3<bool>(var_0.a.a, false, var_0.a.a)))))));
    return 864f;
}

fn func_2(arg_0: Struct_4) -> vec2<i32> {
    var var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.b), arg_0.a.c.zz), arg_0.a.c.zy), -_wgslsmith_mult_vec2_i32(~arg_0.a.c.xy, ~vec2<i32>(u_input.b, arg_0.c))) | -arg_0.a.c.xy;
    let var_1 = false;
    let var_2 = true;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~u_input.b, Struct_1(arg_0.a.b.x, vec4<i32>(27051i, -6108i, -31584i, u_input.a), arg_0.e.x, true))) + arg_0.e.x), arg_0.e.x)), _wgslsmith_f_op_f32(trunc(arg_0.e.x)), 2107f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1102f + 118f) * 2184f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(170f)) - -1243f))));
    let var_4 = var_3.x;
    return _wgslsmith_mult_vec2_i32(max(_wgslsmith_mod_vec2_i32(min(arg_0.a.c.zz, select(vec2<i32>(-1i, 2147483647i), arg_0.a.c.zy, var_1)), vec2<i32>(arg_0.a.c.x, firstTrailingBit(u_input.a))), _wgslsmith_clamp_vec2_i32(min(arg_0.a.c.zy, arg_0.a.c.zz) & abs(arg_0.a.c.xy), arg_0.a.c.yx & vec2<i32>(u_input.b, arg_0.a.c.x), vec2<i32>(0i, min(arg_0.c, -2147483647i)))), arg_0.a.c.zz);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec2<f32>) -> u32 {
    global1 = array<Struct_1, 16>();
    let var_0 = Struct_5(select(all(!vec3<bool>(false, arg_1.x, arg_1.x)), !arg_1.x, !(!all(vec2<bool>(arg_1.x, arg_1.x)))), Struct_3(Struct_2(arg_1.x), vec3<u32>(1u, 1u, 1u), abs(vec3<i32>(u_input.b, -2147483647i, -2147483647i)) ^ vec3<i32>(_wgslsmith_add_i32(-1i, -1i), -arg_2.x, _wgslsmith_dot_vec2_i32(arg_2, arg_2))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_3.x)), _wgslsmith_f_op_f32(arg_0 * arg_0))))), -679f), -688f);
    global0 = array<vec4<i32>, 3>();
    var var_1 = Struct_2(true);
    let var_2 = false;
    return 0u;
}

fn func_1() -> vec3<i32> {
    global1 = array<Struct_1, 16>();
    var var_0 = vec4<u32>(_wgslsmith_add_u32(1u, abs(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(40142u, 18921u, 6894u, 4294967295u), vec4<u32>(37171u, 9885u, 61281u, 1u))))), firstLeadingBit(func_4(_wgslsmith_f_op_f32(step(-310f, 1508f)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), func_2(Struct_4(Struct_3(Struct_2(true), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<i32>(-37191i, -1i, u_input.b)), Struct_2(false), -6389i, Struct_2(true), vec4<f32>(-170f, -523f, -1169f, 832f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 557f), vec2<f32>(923f, 1152f))))) << (1u % 32u), 1u, ~0u);
    let var_1 = -(~_wgslsmith_mult_i32(u_input.b, max(-15371i, 1i) >> (var_0.x % 32u)));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -496f), -1734f));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2, 773f)), var_2);
    return vec3<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 0i, u_input.a, var_1), vec4<i32>(var_1, -2147483647i, -13584i, -2147483647i)), -(~11400i), _wgslsmith_mod_i32(65191i & u_input.a, -27809i)), ~(~vec4<i32>(45821i, var_1, -2565i, -32823i))), var_1);
}

fn func_5(arg_0: Struct_5, arg_1: u32, arg_2: Struct_1) -> Struct_4 {
    global2 = !arg_0.b.a.a;
    let var_0 = Struct_4(arg_0.b, arg_0.b.a, select(arg_2.b.x, i32(-1i) * -countOneBits(-41644i), true), Struct_2(true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(425f, -1074f))), 253f, arg_0.c.x, arg_2.c)));
    var var_1 = -vec3<i32>(_wgslsmith_mod_i32(u_input.b, _wgslsmith_mod_i32(func_1().x, -var_0.a.c.x)), 1i, ~arg_0.b.c.x >> (_wgslsmith_mult_u32(~0u, abs(0u)) % 32u));
    global2 = arg_2.d;
    global0 = array<vec4<i32>, 3>();
    return Struct_4(Struct_3(Struct_2(var_0.d.a), min(~var_0.a.b, vec3<u32>(~arg_0.b.b.x, ~arg_2.a, abs(0u))), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.b, var_0.c, -610i), var_0.a.c & arg_2.b.xyw) ^ _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-29056i, 23412i, var_0.c), vec3<i32>(2147483647i, arg_0.b.c.x, var_0.c)), var_0.a.c & arg_0.b.c)), arg_0.b.a, -arg_0.b.c.x, var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.e)) - var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec2<bool>(all(vec2<bool>(false, true)), true), !select(vec2<bool>(true, false), vec2<bool>(false, false), false), !select(vec2<bool>(false, false), vec2<bool>(true, true), false)));
    let var_1 = !(!(true != all(vec2<bool>(true, true)))) || var_0.x;
    var var_2 = func_5(Struct_5(any(!(!vec3<bool>(var_0.x, var_1, true))), Struct_3(Struct_2(false), vec3<u32>(20784u, _wgslsmith_mult_u32(19673u, 26473u), ~0u), countOneBits(func_1())), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-436f, -470f) * vec2<f32>(628f, -1147f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1223f, 749f), vec2<f32>(-1000f, -299f))))), _wgslsmith_f_op_f32(func_3(i32(-1i) * -63564i, Struct_1(~1u, global0[_wgslsmith_index_u32(~0u, 3u)], _wgslsmith_f_op_f32(ceil(-904f)), true)))), 1u, Struct_1(select(firstTrailingBit(10780u), _wgslsmith_sub_u32(32331u, 0u), true) << (abs(1u) % 32u), -global0[_wgslsmith_index_u32(firstTrailingBit(~29184u), 3u)], 826f, !(u_input.b > 2147483647i)));
    let var_3 = _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b, var_2.a.c.x, _wgslsmith_dot_vec2_i32(abs(var_2.a.c.zx), var_2.a.c.xy), var_2.c), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.a.b.x, _wgslsmith_add_u32(~1u, max(var_2.a.b.x, ~1u))), 3u)]);
    var_2 = Struct_4(func_5(Struct_5(!(!var_0.x), func_5(Struct_5(var_1, Struct_3(Struct_2(var_0.x), var_2.a.b, vec3<i32>(var_2.c, -4790i, var_3.x)), var_2.e.yz, var_2.e.x), ~4294967295u, Struct_1(4294967295u, vec4<i32>(var_3.x, -1i, var_2.a.c.x, -59315i), -470f, false)).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.e.x, 707f))), _wgslsmith_div_f32(var_2.e.x, -388f)), var_2.a.b.x >> (var_2.a.b.x % 32u), Struct_1(~var_2.a.b.x, var_3, var_2.e.x, true)).a, func_5(Struct_5(false, func_5(Struct_5(var_2.b.a, Struct_3(Struct_2(true), vec3<u32>(55164u, var_2.a.b.x, 36559u), var_3.zwz), vec2<f32>(var_2.e.x, 445f), var_2.e.x), var_2.a.b.x, Struct_1(var_2.a.b.x, var_3, var_2.e.x, true)).a, var_2.e.zz, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_2.e.x, 2014f)), _wgslsmith_f_op_f32(var_2.e.x - -824f)))), var_2.a.b.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(var_2.a.b.x ^ var_2.a.b.x), abs(func_5(Struct_5(true, var_2.a, vec2<f32>(var_2.e.x, 288f), -1450f), 1u, Struct_1(var_2.a.b.x, vec4<i32>(var_3.x, var_2.a.c.x, 2147483647i, u_input.a), -309f, true)).a.b.x)), 16u)]).d, -7245i, var_2.b, var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e.x - -414f) + 1202f))))));
}

