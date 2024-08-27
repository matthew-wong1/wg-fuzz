struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2) -> bool {
    global0 = array<vec2<f32>, 30>();
    global0 = array<vec2<f32>, 30>();
    let var_0 = 4294967295u >> (_wgslsmith_mod_u32(4294967295u, arg_2.c) % 32u);
    global0 = array<vec2<f32>, 30>();
    global0 = array<vec2<f32>, 30>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-371f * -1950f)))) >= _wgslsmith_f_op_f32(trunc(680f));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(~59540u, !vec3<bool>(any(arg_0.xyw), all(!arg_0), any(!arg_0.wzz)));
    var var_1 = arg_1;
    global0 = array<vec2<f32>, 30>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1085f, 605f, 349f, 1008f) * vec4<f32>(1000f, 1423f, -969f, 762f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-298f, -957f, -209f, -321f)))))));
    let var_3 = countOneBits(~_wgslsmith_clamp_u32(39905u, 13175u, u_input.d.x));
    return u_input.e;
}

fn func_2() -> Struct_2 {
    global0 = array<vec2<f32>, 30>();
    var var_0 = Struct_4(select(_wgslsmith_sub_vec3_i32(u_input.b.wyw, _wgslsmith_clamp_vec3_i32(u_input.b.xzy, vec3<i32>(u_input.b.x, u_input.a, 2147483647i), u_input.b.wyw)), vec3<i32>(abs(-4962i), u_input.b.x, func_3(vec4<bool>(false, true, true, true), Struct_1(0u, vec3<bool>(false, false, false)))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)) & (firstLeadingBit(_wgslsmith_mod_vec3_i32(u_input.b.yyz, vec3<i32>(u_input.e, u_input.b.x, 2147483647i))) ^ min(_wgslsmith_clamp_vec3_i32(u_input.b.xxw, u_input.b.zzz, vec3<i32>(u_input.e, u_input.e, u_input.b.x)), u_input.b.zyw)), true);
    global0 = array<vec2<f32>, 30>();
    let var_1 = !var_0.b;
    let var_2 = _wgslsmith_f_op_f32(-1612f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(752f, 1424f)), -1776f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -849f)))));
    return Struct_2(-1i, abs((_wgslsmith_mult_vec3_u32(u_input.d.wxy, vec3<u32>(u_input.c, u_input.c, 41834u)) & u_input.d.xyy) | vec3<u32>(~1u, ~u_input.d.x, u_input.c)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 0u), vec2<u32>(abs(u_input.d.x), 1u))), !var_1);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> Struct_4 {
    let var_0 = 307f;
    global0 = array<vec2<f32>, 30>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(573f, var_0, var_0, 270f) - vec4<f32>(-1968f, var_0, -919f, var_0)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 209f, var_0) - vec4<f32>(1214f, var_0, -288f, var_0)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-477f, var_0, var_0, 1345f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-830f, -2142f, 1094f, 479f))))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1870f, 1000f, -358f, 364f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_0, var_0, 682f), vec4<f32>(-529f, -340f, var_0, 434f), true)), true)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -446f, var_0) - vec4<f32>(var_0, 1000f, -913f, -395f)) + vec4<f32>(var_0, -1299f, -193f, -1210f))), vec4<f32>(var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(-var_0))), var_0, var_0)));
    let var_2 = var_1.yzy;
    var var_3 = Struct_3(Struct_1(~u_input.d.x, arg_1.b), Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(5796u, arg_1.a, arg_1.a, arg_0.c), u_input.d), vec3<bool>(_wgslsmith_f_op_f32(-var_2.x) != _wgslsmith_f_op_f32(-653f + var_1.x), true, !(!arg_0.d))), Struct_1(_wgslsmith_clamp_u32(max(~arg_0.c, arg_0.c), arg_0.b.x, arg_1.a), arg_1.b), u_input.b.zzz, _wgslsmith_dot_vec3_i32(-vec3<i32>(abs(0i), -2147483647i, arg_0.a), vec3<i32>(_wgslsmith_mod_i32(u_input.e, arg_3) ^ arg_0.a, arg_0.a, 1i)));
    return Struct_4(vec3<i32>(func_3(vec4<bool>(u_input.e == var_3.e, !arg_0.d, true | var_3.a.b.x, any(vec2<bool>(arg_2, arg_0.d))), Struct_1(12467u ^ arg_1.a, select(arg_1.b, vec3<bool>(arg_0.d, arg_2, false), var_3.c.b.x))), -reverseBits(~11290i), _wgslsmith_mult_i32(max(~var_3.d.x, 2147483647i), -11767i)), !(var_3.a.b.x & (u_input.c != reverseBits(arg_0.b.x))));
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: Struct_4) -> vec3<i32> {
    let var_0 = arg_3.b;
    return -abs(u_input.b.zxx);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_dot_vec4_u32(min(_wgslsmith_sub_vec4_u32(u_input.d, u_input.d), ~vec4<u32>(4294967295u, 49015u, 4294967295u, 0u)), ~abs(vec4<u32>(10950u, 26914u, 4294967295u, u_input.c))), !arg_0), Struct_1(max(_wgslsmith_dot_vec2_u32(select(u_input.d.xw, vec2<u32>(1u, u_input.c), false), vec2<u32>(u_input.d.x, 4294967295u)), _wgslsmith_dot_vec3_u32(u_input.d.yzz, u_input.d.yww) << (_wgslsmith_dot_vec3_u32(u_input.d.zwz, u_input.d.yyx) % 32u)), !vec3<bool>(select(false, arg_0.x, true), true, true)), Struct_1(~u_input.d.x, select(!arg_0, select(!vec3<bool>(arg_1.b, arg_1.b, arg_1.b), vec3<bool>(true, arg_1.b, false), !arg_0.x), arg_1.b)), _wgslsmith_div_vec3_i32(abs(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_1.a.x, arg_1.a.x), vec3<i32>(-1i, -3160i, arg_1.a.x)))), ~vec3<i32>(~(-2147483647i), 23380i, arg_2)), arg_2);
    var var_1 = arg_2;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = array<vec2<f32>, 30>();
    var var_1 = func_6(vec3<bool>(func_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), reverseBits(min(u_input.b.x, u_input.e)), Struct_2(u_input.a ^ u_input.b.x, vec3<u32>(u_input.d.x, u_input.c, u_input.d.x) >> (vec3<u32>(56339u, u_input.d.x, u_input.d.x) % vec3<u32>(32u)), u_input.d.x, true)), !all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true)), any(vec3<bool>(true, true, true))), Struct_4(func_5(_wgslsmith_div_f32(711f, _wgslsmith_f_op_f32(f32(-1f) * -405f)), ~vec2<u32>(u_input.c, 1u), u_input.d.yw, func_4(func_2(), Struct_1(u_input.c, vec3<bool>(false, false, true)), true, firstLeadingBit(u_input.b.x))), ~u_input.e > u_input.e), -(1i & max(u_input.e << (1u % 32u), reverseBits(50588i))));
    let var_2 = global0[_wgslsmith_index_u32(u_input.c, 30u)];
    var_1 = Struct_1(firstTrailingBit(~u_input.c), !select(select(select(var_1.b, var_1.b, var_1.b.x), !var_1.b, var_1.b.x), var_1.b, false));
    global0 = array<vec2<f32>, 30>();
    let var_3 = _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(step(var_2.x, var_2.x)));
    var var_4 = -u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zx, vec2<u32>(4294967295u, var_1.a ^ ~var_1.a));
}

