struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 23>;

var<private> global1: Struct_2;

var<private> global2: bool;

var<private> global3: array<vec2<bool>, 18>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = arg_0.x;
    let var_1 = -18056i;
    return Struct_3(_wgslsmith_f_op_f32(abs(var_0)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    global2 = global1.d;
    let var_0 = 1143f;
    let var_1 = false;
    global1 = Struct_2(arg_0.d.x, var_1, arg_1.a.xzw, !(!(!(arg_2.x || false))));
    var var_2 = vec2<bool>(true, all(arg_2));
    return ~(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-42703i, arg_1.b, arg_1.c.x), vec3<i32>(u_input.a.x, 2147483647i, 0i)), ~vec3<i32>(1i, 1i, arg_1.b)), 1i) & ~arg_1.b);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> u32 {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-884f)), arg_1.d.x)));
    global1 = Struct_2(640f, (4294967295u != (1u | _wgslsmith_div_u32(global1.c.x, 44788u))) | true, firstTrailingBit(reverseBits(arg_1.a.zyz ^ min(arg_1.a.xwy, arg_1.a.yzy))), global1.d);
    var var_1 = -_wgslsmith_sub_vec4_i32(vec4<i32>(select(u_input.a.x, func_3(arg_1, arg_1, vec4<bool>(arg_2, true, true, arg_2), arg_1), global1.a != 634f), _wgslsmith_dot_vec3_i32(vec3<i32>(25549i, 2147483647i, arg_1.b), vec3<i32>(26279i, u_input.a.x, arg_1.b)) | ~(-29082i), -arg_1.b, arg_3.x), -vec4<i32>(-u_input.a.x, u_input.a.x, -1i, u_input.a.x));
    let var_2 = 55863i ^ firstLeadingBit(_wgslsmith_add_i32(var_1.x, arg_3.x));
    var var_3 = arg_1;
    return _wgslsmith_dot_vec4_u32(var_3.a, ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(arg_1.a, var_3.a), ~var_3.a)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = vec3<bool>(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * global1.a)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a, global1.a)))), !select(true, false, arg_0));
    let var_1 = Struct_1(abs(_wgslsmith_add_vec4_u32(~countOneBits(vec4<u32>(8178u, 4294967295u, arg_3, arg_3)), ~(~vec4<u32>(global1.c.x, 4294967295u, 0u, arg_3)))), min(-2147483647i >> (~4294967295u % 32u), i32(-1i) * -1i) & ~max(u_input.a.x, -arg_1), vec2<i32>(u_input.a.x, 9603i | _wgslsmith_dot_vec3_i32(max(vec3<i32>(-8793i, -2147483647i, arg_1), vec3<i32>(u_input.a.x, 1i, arg_1)), _wgslsmith_clamp_vec3_i32(vec3<i32>(55220i, arg_1, 2147483647i), vec3<i32>(u_input.a.x, -5691i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-533f, -609f, global1.a, arg_2.x), vec4<f32>(global1.a, -1809f, -1000f, -1556f)) * vec4<f32>(global1.a, 1228f, arg_2.x, -806f))))), countOneBits(global1.c.x));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -1000f, arg_2.x, -1000f)), var_1.d, vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.a, -797f, arg_2.x)))), vec4<bool>(false, global1.b, true, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, 674f, global1.a, 281f)))));
    var_0 = vec3<bool>(global1.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.d.x, -1176f))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(-1735f - var_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(var_1.d.x - var_2.x)))), false);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-var_1.d.x));
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(vec4<u32>(0u, _wgslsmith_dot_vec2_u32(min(arg_0.c.yx, vec2<u32>(4294967295u, 16289u)), ~select(arg_3.a.xx, global1.c.xz, arg_0.d)), _wgslsmith_clamp_u32(~func_4(global1.d, arg_2.x, global0[_wgslsmith_index_u32(16622u, 23u)], arg_0.c.x).a.x, 13452u, 35366u), arg_3.e), arg_2.x, _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a, select(vec2<i32>(u_input.a.x, -1i), vec2<i32>(-17828i, -1i), vec2<bool>(global1.b, false))), vec2<i32>(-2147483647i, -11980i)), (-vec2<i32>(u_input.a.x, -18870i) & (vec2<i32>(-27314i, arg_3.c.x) ^ arg_2.xx)) << (~(vec2<u32>(9247u, global1.c.x) & arg_3.a.ww) % vec2<u32>(32u))), arg_3.d, 36748u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_4(true, -43992i, vec3<f32>(arg_0.a, var_0.d.x, arg_3.d.x), arg_1).d.x, arg_3.d.x))), _wgslsmith_f_op_f32(-global1.a), var_0.d.x, arg_0.a));
    var_0 = Struct_1(abs(vec4<u32>(_wgslsmith_mult_u32(countOneBits(global1.c.x), global1.c.x), _wgslsmith_dot_vec2_u32(global1.c.yz, global1.c.yz), 65978u, var_0.a.x)), 1i, arg_2.xx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(arg_3.d)), vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.a, -1000f)), var_1.x, _wgslsmith_f_op_f32(sign(global1.a)), _wgslsmith_f_op_f32(f32(-1f) * -284f)))) - var_0.d), ~global1.c.x);
    var var_2 = -arg_2;
    let var_3 = var_2.x;
    return vec2<f32>(_wgslsmith_f_op_f32(var_1.x * arg_3.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + 783f) - -262f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec4<bool>(true, !(global1.a < global1.a), true, global1.d), !vec4<bool>(!global1.d, true, global1.b, !global1.d), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(Struct_2(1118f, any(vec4<bool>(false, true, var_0.x, false)) & any(vec4<bool>(global1.d, true, var_0.x, true)), ~vec3<u32>(global1.c.x, 4294967295u, 49056u), false), 0u, vec3<i32>(-2147483647i, 1i >> (global1.c.x % 32u), reverseBits(u_input.a.x)) ^ ~(~vec3<i32>(0i, -30192i, u_input.a.x)), func_4(u_input.a.x <= u_input.a.x, _wgslsmith_div_i32(u_input.a.x, ~0i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(global1.c.x, 23u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, -1334f, 183f) - global0[_wgslsmith_index_u32(global1.c.x, 23u)])), func_1(vec3<f32>(-1085f, global1.a, 485f), Struct_1(vec4<u32>(24540u, global1.c.x, 4294967295u, 1u), -2147483647i, u_input.a, vec4<f32>(-387f, 269f, global1.a, global1.a), global1.c.x), false, vec3<i32>(-20332i, u_input.a.x, u_input.a.x)) << (~1u % 32u)))));
    var var_2 = max(reverseBits(global1.c | (vec3<u32>(46061u, 6385u, 19588u) | global1.c)), vec3<u32>(min(global1.c.x, 0u), ~(~global1.c.x), ~11637u));
    let var_3 = vec3<i32>(_wgslsmith_mod_i32(min(countOneBits(2147483647i), u_input.a.x), u_input.a.x), -_wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(27699i, u_input.a.x, -2147483647i, 36264i), vec4<i32>(-1286i, u_input.a.x, u_input.a.x, u_input.a.x)), ~u_input.a.x, u_input.a.x), u_input.a.x);
    global2 = true;
    global1 = Struct_2(-1460f, !global1.d | !(!(!var_0.x)), _wgslsmith_div_vec3_u32(max(global1.c, global1.c), vec3<u32>(~_wgslsmith_add_u32(global1.c.x, global1.c.x), ~(~1u), var_2.x)), func_3(Struct_1(~vec4<u32>(0u, 4128u, 4294967295u, 10669u), -var_3.x, var_3.xx | vec2<i32>(-11009i, -2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(1265f, -915f, var_1.x, -279f) * vec4<f32>(-1377f, -901f, -840f, var_1.x)), 1u), Struct_1(abs(vec4<u32>(20751u, 4988u, 29537u, 0u)), -var_3.x, -vec2<i32>(-39348i, u_input.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1136f, 1171f, -1000f, 271f) - vec4<f32>(-837f, global1.a, 1000f, 1000f)), 4294967295u), select(vec4<bool>(true, true, true, false), !var_0, vec4<bool>(global1.d, true, false, false)), Struct_1(vec4<u32>(var_2.x, 1u, 25866u, 1u) ^ vec4<u32>(global1.c.x, 0u, var_2.x, var_2.x), countOneBits(u_input.a.x), ~u_input.a, vec4<f32>(2262f, var_1.x, 624f, 1000f), global1.c.x)) > (i32(-1i) * -241i));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_5(Struct_2(1975f, false, global1.c, var_0.x), global1.c.x, vec3<i32>(var_3.x, u_input.a.x, var_3.x), Struct_1(vec4<u32>(global1.c.x, global1.c.x, global1.c.x, global1.c.x), u_input.a.x, vec2<i32>(u_input.a.x, 0i), vec4<f32>(global1.a, global1.a, -1000f, global1.a), 7783u))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.a, var_1.x))), all(var_0.wyy))) - vec2<f32>(-942f, -265f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(f32(-1f) * -1484f))), _wgslsmith_div_f32(-144f, _wgslsmith_f_op_vec2_f32(func_5(Struct_2(global1.a, global1.b, vec3<u32>(4294967295u, 37183u, 4294967295u), false), 13370u, vec3<i32>(var_3.x, u_input.a.x, var_3.x), Struct_1(vec4<u32>(var_2.x, global1.c.x, global1.c.x, var_2.x), var_3.x, var_3.zx, vec4<f32>(-1173f, var_1.x, global1.a, global1.a), var_2.x))).x)))), ~1u, global1.c.yy);
}

