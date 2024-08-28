struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(63034u, 0u, 18758u, 4294967295u);

var<private> global1: array<vec3<f32>, 11>;

var<private> global2: u32 = 55043u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: bool) -> vec4<bool> {
    global2 = ~firstTrailingBit(36802u);
    let var_0 = Struct_3(~(~(vec4<u32>(u_input.a.x, global0.x, 36807u, 77277u) ^ vec4<u32>(4294967295u, global0.x, global0.x, u_input.a.x))) & select(~vec4<u32>(global0.x, u_input.b.x, 0u, 25927u) ^ vec4<u32>(global0.x, 23456u, u_input.a.x, 0u), ~abs(vec4<u32>(global0.x, 0u, 26964u, 71629u)), select(vec4<bool>(true, false, arg_2, arg_2), !vec4<bool>(arg_2, arg_2, true, false), vec4<bool>(true, arg_2, arg_2, true))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), vec2<f32>(_wgslsmith_div_f32(1000f, arg_0), _wgslsmith_f_op_f32(1322f - arg_0))), vec4<bool>(global0.x <= 0u, !arg_2, true, false), arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-564f, arg_0, -224f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -568f, 485f)), global1[_wgslsmith_index_u32(~4294967295u, 11u)], any(vec4<bool>(arg_2, arg_2, false, arg_2)))))), _wgslsmith_mod_i32(max(~arg_1.x, 0i), min(arg_1.x | arg_1.x, 11913i) & ~(arg_1.x & 2147483647i)));
    global2 = global0.x ^ firstTrailingBit(~abs(1u));
    var var_1 = var_0.b;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(var_1.d.yy))))), select(!vec4<bool>(var_1.c, var_1.c, true, var_0.b.c), var_1.b, any(select(vec2<bool>(var_0.b.b.x, arg_2), var_1.b.yw, var_1.c))), _wgslsmith_f_op_f32(-arg_0) <= var_0.b.a.x, _wgslsmith_div_vec3_f32(var_0.b.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(147f, 1301f, arg_0)))));
    return var_0.b.b;
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -651f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-816f, 1473f)) + _wgslsmith_f_op_f32(abs(-437f)))), select(!func_3(1545f, vec4<i32>(1i, 2147483647i, 14419i, -1i), false), vec4<bool>(false, all(vec3<bool>(false, false, true)), all(vec4<bool>(true, false, true, false)), true), func_3(-691f, -vec4<i32>(1i, -2147483647i, 0i, -16634i), true).x), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec3<f32>(1000f, -550f, -898f), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))))));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -18304i), vec2<i32>(0i, 9039i)), 0i), _wgslsmith_mod_i32(firstTrailingBit(-2147483647i), -20437i)), max(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 0i), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 5993i), vec3<i32>(23647i, 2147483647i, -4367i))), firstTrailingBit(select(-25758i, 1i, var_0.a.b.x)))) | -26457i;
    global1 = array<vec3<f32>, 11>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a.a + _wgslsmith_f_op_vec2_f32(round(var_0.a.d.zx))), vec4<bool>(var_0.a.b.x, var_0.a.b.x, all(vec2<bool>(false, true)), ~reverseBits(u_input.c.x) > (u_input.c.x | ~4294967295u)), any(var_0.a.b.wxz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.a.d)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-729f, 2141f, -1019f)))))));
    global2 = reverseBits(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(global0.xw, abs(vec2<u32>(u_input.a.x, 93272u))), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(firstTrailingBit(u_input.b.x), ~u_input.b.x))));
    return Struct_5(Struct_4(1195f, ~vec4<u32>(countOneBits(4294967295u), 1u, _wgslsmith_mult_u32(25310u, global0.x), global0.x), _wgslsmith_div_i32(_wgslsmith_add_i32(abs(var_1), -40860i), _wgslsmith_add_i32(_wgslsmith_mod_i32(var_1, -1405i), min(-2147483647i, -27771i)))), Struct_2(var_2));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_5) -> vec4<u32> {
    var var_0 = func_2().a;
    let var_1 = arg_2.b;
    global0 = ~vec4<u32>(~(~(~4294967295u)), 1u, _wgslsmith_div_u32(abs(u_input.a.x | u_input.a.x), _wgslsmith_sub_u32(countOneBits(15853u), var_0.b.x)), 7513u);
    global0 = var_0.b;
    let var_2 = true;
    return ~(~_wgslsmith_div_vec4_u32(min(var_0.b, vec4<u32>(u_input.b.x, 0u, 5168u, arg_2.a.b.x)), max(var_0.b, arg_2.a.b))) ^ vec4<u32>(global0.x, var_0.b.x, arg_2.a.b.x, ~(~1u));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_i32(~(~vec4<i32>(1i, 1i, 1i, 1i)), ~abs(vec4<i32>(1i, 1i, 1i, 1i)) << (func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-168f, -1866f)), vec4<bool>(false, true, arg_0, false), true, vec3<f32>(1654f, -618f, 393f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2054f, 681f, -275f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1901f, -707f, 1084f)), true)), func_2()) % vec4<u32>(32u)));
    var var_1 = firstLeadingBit(~var_0.wz);
    var var_2 = -1i;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -763f) + _wgslsmith_f_op_f32(f32(-1f) * -516f)), _wgslsmith_f_op_f32(940f * _wgslsmith_f_op_f32(round(-1310f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-314f)))));
    let var_4 = 280f;
    return func_2().b.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> u32 {
    global0 = func_4(Struct_1(arg_0.d.yx, vec4<bool>(true, func_1(32184i < arg_1.c).c, 122f >= _wgslsmith_f_op_f32(select(arg_1.a, 207f, true)), !(18176u > arg_1.b.x)), arg_0.b.x, vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.x)), _wgslsmith_f_op_f32(-1599f - 1155f), _wgslsmith_f_op_f32(step(-347f, _wgslsmith_f_op_f32(-arg_1.a))))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-899f + arg_0.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(arg_1.a + arg_1.a))), _wgslsmith_f_op_f32(min(-1446f, arg_1.a)))), Struct_5(func_2().a, func_2().b));
    var var_0 = Struct_3(~(~_wgslsmith_div_vec4_u32(arg_1.b, func_2().a.b)), func_1(false), _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.c, arg_1.c), vec2<i32>(arg_1.c, arg_1.c))), vec2<i32>(arg_1.c ^ ~(-2147483647i), ~(~56919i))));
    var_0 = Struct_3(vec4<u32>(0u, func_4(func_1(!arg_0.c), var_0.b.d, Struct_5(Struct_4(arg_1.a, arg_1.b, var_0.c), func_2().b)).x, ~0u, _wgslsmith_dot_vec3_u32(~firstTrailingBit(u_input.a), vec3<u32>(arg_1.b.x, _wgslsmith_mod_u32(u_input.a.x, global0.x), select(var_0.a.x, 42506u, var_0.b.c)))), Struct_1(_wgslsmith_f_op_vec2_f32(step(var_0.b.d.yx, _wgslsmith_f_op_vec2_f32(vec2<f32>(459f, -2110f) * var_0.b.a))), vec4<bool>(false, true, arg_0.c, true), all(func_3(func_1(var_0.b.c).d.x, abs(vec4<i32>(0i, -1i, 1i, 42562i)), true).zyx), global1[_wgslsmith_index_u32(62556u, 11u)]), ~_wgslsmith_mod_i32(var_0.c, -_wgslsmith_mult_i32(2147483647i, var_0.c)));
    let var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.c, -54125i) ^ _wgslsmith_div_vec2_i32(vec2<i32>(arg_1.c, var_0.c), ~vec2<i32>(38104i, var_0.c)), vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c, 7345i), vec2<i32>(6688i, 0i))), 5709i)), -(~_wgslsmith_div_i32(var_0.c, var_0.c)), arg_1.c);
    let var_2 = func_2().b.a.b.xzx;
    return ~(~(select(u_input.a.x, global0.x, arg_1.a != var_0.b.d.x) & ~max(0u, var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1746f, 738f) - _wgslsmith_f_op_f32(f32(-1f) * -1601f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1991f), _wgslsmith_f_op_f32(-249f + -253f)))));
    global0 = firstTrailingBit(vec4<u32>(~func_5(func_1(true), Struct_4(518f, vec4<u32>(8120u, global0.x, global0.x, 0u), -806i)), firstTrailingBit(global0.x), _wgslsmith_mod_u32(~0u, 4294967295u >> (_wgslsmith_clamp_u32(4294967295u, u_input.b.x, u_input.a.x) % 32u)), 47530u));
    let var_1 = ~0i;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1451f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -345f))), _wgslsmith_f_op_f32(ceil(-101f)))));
    var var_2 = vec2<u32>(1u, ~global0.x);
    let var_3 = func_2().b;
    var var_4 = vec4<i32>(13906i, -51226i ^ (11389i ^ (abs(41173i) << (var_2.x % 32u))), 0i, var_1);
    let var_5 = !var_3.a.b.yy;
    var var_6 = vec2<i32>(13375i, 44482i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-233f, var_3.a.d.x, -1035f, var_3.a.a.x))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2372f * var_3.a.d.x), -1401f, 221f, _wgslsmith_f_op_f32(abs(-717f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.a.x, 1753f, var_3.a.d.x, var_3.a.a.x) - vec4<f32>(var_3.a.d.x, 356f, var_3.a.a.x, 677f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.a.x, 711f, var_3.a.a.x, var_3.a.a.x))))));
}

