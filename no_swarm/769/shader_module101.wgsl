struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 30>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec3<u32>) -> bool {
    let var_0 = Struct_5(vec3<f32>(-392f, _wgslsmith_f_op_f32(select(-654f, _wgslsmith_f_op_f32(-1266f + _wgslsmith_f_op_f32(ceil(681f))), u_input.b <= firstTrailingBit(0u))), 625f));
    let var_1 = !vec4<bool>(all(vec2<bool>(all(vec3<bool>(true, true, false)), global0.x)), !global0.x, true, all(vec4<bool>(-308f <= var_0.a.x, true, !global0.x, all(vec3<bool>(false, global1.c, false)))));
    let var_2 = Struct_5(var_0.a);
    let var_3 = arg_1;
    let var_4 = u_input.d.zx;
    return !any(global0.xy) | !any(vec4<bool>(true, false, !global1.c, !global0.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool) -> vec3<bool> {
    var var_0 = Struct_4(0i & firstTrailingBit(abs(1i)), _wgslsmith_mod_vec3_i32(u_input.d, -(~u_input.d)), _wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, ~vec2<u32>(select(u_input.c.x, u_input.b, arg_1), firstTrailingBit(4294967295u))), any(!vec4<bool>(true, any(global0.zz), true, true)), min(-global1.a.x, _wgslsmith_sub_i32(u_input.d.x, u_input.d.x)));
    global1 = global2[_wgslsmith_index_u32(~var_0.c.x, 30u)];
    global2 = array<Struct_1, 30>();
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f - 1476f), -138f, _wgslsmith_f_op_f32(f32(-1f) * -922f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-966f, -1873f, -1000f) - vec3<f32>(-1000f, -189f, -172f)))))));
    var var_2 = -(u_input.a << (~vec2<u32>(reverseBits(var_0.c.x), 0u | u_input.b) % vec2<u32>(32u)));
    return !vec3<bool>(!any(vec2<bool>(true, false)), all(vec3<bool>(arg_1, false, arg_1)) && any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), arg_1)), !select(arg_1, false, !global0.x));
}

fn func_2(arg_0: u32) -> vec3<f32> {
    global0 = func_4(global1.a, !any(vec4<bool>(true, all(vec3<bool>(global0.x, global0.x, global0.x)), all(vec3<bool>(global1.c, global0.x, true)), func_3(76936u, 5451i, vec3<u32>(4294967295u, arg_0, 1u)))));
    let var_0 = -vec2<i32>(u_input.d.x, firstTrailingBit(global1.b));
    var var_1 = _wgslsmith_clamp_i32(62934i, u_input.a.x & _wgslsmith_clamp_i32(global1.a.x, _wgslsmith_sub_i32(abs(global1.d), max(2147483647i, 18716i)), global1.a.x), _wgslsmith_mult_i32(countOneBits(select(global1.d, u_input.a.x, false || global1.c)), ~global1.d));
    global1 = Struct_1(_wgslsmith_clamp_vec2_i32(-(~u_input.a ^ global1.a), global1.a, global1.a), -141i, global1.c, -7005i);
    var var_2 = !vec2<bool>(global0.x, ((i32(-1i) * -2147483647i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(101955i, global1.a.x, var_0.x), vec3<i32>(21843i, 44688i, u_input.a.x))) && true);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(734f)), _wgslsmith_f_op_f32(676f - 1000f), -1176f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(682f, 1000f, -1255f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1796f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2478f), _wgslsmith_f_op_f32(f32(-1f) * -924f)), _wgslsmith_f_op_f32(-262f * -1154f))));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_5) -> Struct_3 {
    global2 = array<Struct_1, 30>();
    var var_0 = _wgslsmith_f_op_vec2_f32(min(arg_2.a.xy, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2287f, 2211f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -366f)), arg_2.a.yz, global0.xx)))))));
    var var_1 = abs(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, 0u), vec3<u32>(u_input.b, 1u, 1u))) & ~(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(u_input.b, 1u, 0u)) & ~vec3<u32>(u_input.b, u_input.c.x, 1u)));
    global1 = global2[_wgslsmith_index_u32(~var_1.x, 30u)];
    var var_2 = Struct_2(Struct_1(min(global1.a, vec2<i32>(u_input.d.x >> (4294967295u % 32u), 1i)), 1i, func_4(-vec2<i32>(1i, u_input.d.x), all(vec2<bool>(true, true))).x, u_input.a.x & -_wgslsmith_dot_vec2_i32(global1.a, global1.a)), !any(select(select(vec3<bool>(false, arg_0, true), vec3<bool>(global0.x, global0.x, true), false), select(vec3<bool>(false, global1.c, false), vec3<bool>(false, arg_0, true), true), func_4(global1.a, true))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x & countOneBits(-30103i), 2147483647i), min(~(vec2<i32>(global1.d, -26543i) << (var_1.xz % vec2<u32>(32u))), u_input.d.zy)));
    return Struct_3(Struct_1(~max(reverseBits(global1.a), u_input.d.xx), global1.a.x, _wgslsmith_f_op_f32(sign(1f)) <= arg_2.a.x, select(var_2.a.d, -1i, true)), _wgslsmith_div_i32(global1.b, ~(-10938i)), ~(~max(u_input.c, vec2<u32>(31064u, var_1.x))));
}

fn func_1(arg_0: vec3<u32>) -> vec3<f32> {
    var var_0 = func_5(true, _wgslsmith_f_op_f32(round(1f)), Struct_5(_wgslsmith_f_op_vec3_f32(func_2(~12254u))));
    var var_1 = Struct_4((i32(-1i) * -27351i) << (~_wgslsmith_div_u32(u_input.c.x, _wgslsmith_add_u32(arg_0.x, 74419u)) % 32u), u_input.d, _wgslsmith_mult_vec2_u32(~abs(u_input.c), ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.yy, u_input.c), ~u_input.c)), global1.c, firstTrailingBit(_wgslsmith_mult_i32(-57157i, var_0.b)));
    let var_2 = Struct_2(Struct_1(~(~_wgslsmith_div_vec2_i32(vec2<i32>(var_1.b.x, u_input.d.x), var_0.a.a)), ~2147483647i, false, var_0.a.b), (!(global0.x && false) & true) || !var_0.a.c, ~(-vec2<i32>(-86261i, 20838i)) << (firstLeadingBit(~var_0.c) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_sub_vec4_i32(firstLeadingBit(firstTrailingBit(-vec4<i32>(global1.d, global1.a.x, 1i, var_1.a) | vec4<i32>(-39997i, -57299i, 1i, 19392i))), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b, u_input.a.x, -1i), ~vec3<i32>(1i, var_1.e, var_0.b)), u_input.d.x, global1.a.x, _wgslsmith_mult_i32(u_input.d.x & u_input.d.x, u_input.d.x | var_1.e)));
    var var_4 = -vec3<i32>(u_input.d.x, countOneBits(countOneBits(-2147483647i)), -_wgslsmith_sub_i32(_wgslsmith_div_i32(var_1.b.x, global1.b), i32(-1i) * -27867i));
    return vec3<f32>(1f, 1f, 1f);
}

fn func_6(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: vec2<u32>) -> StorageBuffer {
    let var_0 = select(~_wgslsmith_clamp_vec3_i32(arg_1.b, -u_input.d, vec3<i32>(0i, 43727i, global1.b)), vec3<i32>(-5108i, -(arg_1.e << (22594u % 32u)), u_input.a.x), global1.c) & firstTrailingBit(vec3<i32>(select(1i, abs(-54059i), !global0.x), arg_1.b.x, 0i));
    var var_1 = _wgslsmith_f_op_f32(837f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1418f - arg_0.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x), -720f, true))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1109f + -1008f)))), _wgslsmith_f_op_f32(f32(-1f) * -871f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x)) * _wgslsmith_f_op_f32(sign(arg_0.a.x))), -906f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(step(1000f, -599f)), arg_0.a.x, _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x)))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), -1297f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))), 107f);
    let var_3 = arg_1;
    return StorageBuffer(arg_0.a.x, var_0.x, _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 1i, 44442i, u_input.a.x), vec4<i32>(-26808i, u_input.d.x, global1.d, arg_1.b.x)) << (~(vec4<u32>(1u, 11759u, var_3.c.x, 1767u) >> (vec4<u32>(u_input.c.x, var_3.c.x, 0u, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(select(~vec4<i32>(global1.b, 1i, u_input.a.x, -22269i), ~vec4<i32>(1i, 1i, -1i, var_3.a), vec4<bool>(global1.c, arg_1.d, true, global0.x)), -select(vec4<i32>(2147483647i, global1.d, var_3.a, -21867i), vec4<i32>(2147483647i, -13815i, var_0.x, 1i), vec4<bool>(arg_2.x, global1.c, arg_2.x, arg_2.x)))), u_input.d.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    global2 = array<Struct_1, 30>();
    let var_1 = vec4<bool>(all(!global0.zz), !(!(!global0.x)), false, true);
    global2 = array<Struct_1, 30>();
    var var_2 = Struct_3(Struct_1(global1.a >> (~select(vec2<u32>(55240u, var_0), u_input.c, global0.zz) % vec2<u32>(32u)), global1.a.x | u_input.a.x, !var_1.x || (-1i > u_input.d.x), global1.a.x), _wgslsmith_div_i32(global1.d, _wgslsmith_mod_i32(global1.a.x, ~global1.a.x)) | (min(~global1.d, abs(global1.b)) | 1i), ~select(u_input.c ^ vec2<u32>(45646u, 33121u), u_input.c, select(vec2<bool>(true, var_1.x), var_1.wz, !var_1.xz)));
    let x = u_input.a;
    s_output = func_6(Struct_5(_wgslsmith_f_op_vec3_f32(func_1(~(vec3<u32>(6752u, 1u, 1u) | vec3<u32>(42222u, 21519u, var_2.c.x))))), Struct_4(_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a.x, 41668i, var_2.b, global1.d), vec4<i32>(-12567i, global1.b, var_2.b, var_2.a.b)), ~vec4<i32>(global1.b, u_input.a.x, u_input.d.x, 1611i)) | u_input.d.x, select(vec3<i32>(u_input.d.x, _wgslsmith_clamp_i32(16033i, 15568i, -1i), 1i), vec3<i32>(7865i, _wgslsmith_add_i32(var_2.a.d, u_input.a.x), global1.d), var_1.wxz), vec2<u32>(~u_input.c.x & 78510u, (12148u ^ var_2.c.x) >> (~13496u % 32u)), any(vec3<bool>(global1.c, global0.x, func_5(true, -1652f, Struct_5(vec3<f32>(1429f, 1000f, -121f))).a.c)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x & global1.a.x, 2147483647i, -419i | var_2.b, ~var_2.b), countOneBits(-vec4<i32>(91198i, -64131i, u_input.d.x, -2147483647i)))), vec2<bool>(true, true), _wgslsmith_clamp_vec2_u32(u_input.c, func_5(select(false, var_2.a.c, any(vec2<bool>(global0.x, global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -319f), Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1185f, -420f, 508f) + vec3<f32>(630f, -245f, 1141f)))).c, vec2<u32>(firstTrailingBit(1u), max(u_input.b, _wgslsmith_add_u32(48428u, var_0)))));
}

