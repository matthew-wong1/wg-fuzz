struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: i32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec2<bool>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(4294967295u, 1u), vec2<u32>(60989u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 38263u), vec2<u32>(0u, 88587u), vec2<u32>(66660u, 33797u), vec2<u32>(0u, 11608u), vec2<u32>(0u, 22049u), vec2<u32>(6655u, 4294967295u), vec2<u32>(4294967295u, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(-405f, 1367f), _wgslsmith_div_f32(-698f, 1462f), _wgslsmith_div_f32(137f, -1000f)))))));
    global0 = array<vec2<u32>, 10>();
    var var_1 = ~abs(abs(_wgslsmith_sub_u32(1u, 0u >> (1u % 32u))));
    let var_2 = Struct_2(Struct_1(18282i, _wgslsmith_sub_vec3_u32(reverseBits(countOneBits(vec3<u32>(27894u, 29010u, 1u))), vec3<u32>(1u, _wgslsmith_add_u32(1u, 15959u), 1u)), vec3<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false)), true, any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))))));
    var var_3 = Struct_1(1i, _wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(var_2.a.b << (var_2.a.b % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.a.b.x, 11091u, var_2.a.b.x), var_2.a.b)), _wgslsmith_clamp_vec3_u32(countOneBits(firstLeadingBit(var_2.a.b)), ~(vec3<u32>(4294967295u, var_2.a.b.x, 6517u) & vec3<u32>(1u, 24711u, var_2.a.b.x)), var_2.a.b)), var_2.a.c);
    return -861f;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: Struct_2, arg_3: bool) -> vec3<u32> {
    var var_0 = select(_wgslsmith_add_vec4_i32(firstLeadingBit((vec4<i32>(arg_1.d, -2147483647i, arg_1.b.a.a, arg_1.b.a.a) | vec4<i32>(2014i, -16308i, 1i, -2147483647i)) << (arg_1.a % vec4<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(1458i, -21607i, arg_2.a.a, arg_2.a.a)), countOneBits(select(-vec4<i32>(-1i, arg_2.a.a, -2147483647i, u_input.a), firstLeadingBit(vec4<i32>(arg_2.a.a, arg_1.b.a.a, 28759i, u_input.a)), select(vec4<bool>(arg_2.a.c.x, arg_3, true, arg_1.e.c.x), vec4<bool>(true, arg_2.a.c.x, true, true), vec4<bool>(arg_2.a.c.x, arg_1.c.x, arg_2.a.c.x, false))) >> (arg_1.a % vec4<u32>(32u))), select(select(!select(vec4<bool>(arg_3, arg_3, arg_2.a.c.x, true), vec4<bool>(false, false, arg_3, arg_3), vec4<bool>(true, false, arg_1.c.x, true)), vec4<bool>(true, !arg_1.c.x, false, true), vec4<bool>(any(vec4<bool>(true, true, arg_2.a.c.x, true)), arg_3, false, arg_3)), !vec4<bool>(true, arg_1.c.x, arg_2.a.c.x && false, arg_1.b.a.c.x || false), !(!(!vec4<bool>(arg_3, false, arg_1.e.c.x, true)))));
    let var_1 = ~(arg_1.a | _wgslsmith_div_vec4_u32(arg_1.a, ~_wgslsmith_div_vec4_u32(arg_1.a, vec4<u32>(arg_2.a.b.x, arg_1.a.x, 20258u, 4294967295u))));
    let var_2 = var_1.xzx >> (firstTrailingBit(var_1.wwz) % vec3<u32>(32u));
    global0 = array<vec2<u32>, 10>();
    var var_3 = arg_1.d;
    return vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_1.x, _wgslsmith_div_u32(56202u, arg_1.a.x)), arg_1.b.a.b.x), ~var_1.zw), 67847u, ~0u);
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> Struct_2 {
    global0 = array<vec2<u32>, 10>();
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1559f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1336f, 136f)) + 231f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -217f)) - _wgslsmith_f_op_f32(-778f - -426f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1017f, -907f))), _wgslsmith_f_op_f32(f32(-1f) * -511f)))));
    global0 = array<vec2<u32>, 10>();
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -801f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_0.x + -533f)))))), 329f, -569f, 425f);
    let var_1 = ~(~1u);
    return Struct_2(Struct_1(-(~u_input.a) >> (~4294967295u % 32u), max(~reverseBits(vec3<u32>(var_1, 4294967295u, var_1)), _wgslsmith_div_vec3_u32(vec3<u32>(var_1, 4294967295u, var_1), func_3(vec4<f32>(-1122f, 868f, -1835f, var_0.x), Struct_5(vec4<u32>(47970u, 41816u, 1u, 4294967295u), Struct_2(Struct_1(-8326i, vec3<u32>(58448u, var_1, var_1), vec3<bool>(false, arg_0.x, arg_0.x))), vec2<bool>(false, arg_0.x), arg_1, Struct_1(arg_1, vec3<u32>(var_1, 86543u, var_1), vec3<bool>(false, arg_0.x, arg_0.x))), Struct_2(Struct_1(-2147483647i, vec3<u32>(var_1, var_1, var_1), vec3<bool>(arg_0.x, arg_0.x, false))), arg_0.x))), !(!select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, true, true), vec3<bool>(true, arg_0.x, true)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32, arg_3: i32) -> Struct_2 {
    let var_0 = arg_1.a.e.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-904f, -909f, 210f, -243f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-567f, 1865f, 455f, -3153f), vec4<f32>(-534f, 815f, 1000f, 958f), arg_0.a.c.x)))) * vec4<f32>(114f, -462f, _wgslsmith_f_op_f32(abs(-227f)), -379f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-178f, 1000f, -1000f, 388f), vec4<f32>(-398f, -134f, 325f, -1076f), vec4<bool>(arg_1.a.c.c.x, arg_1.a.e.x, arg_0.a.c.x, false)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-211f, _wgslsmith_f_op_f32(trunc(-324f)), _wgslsmith_f_op_f32(abs(1293f)), _wgslsmith_f_op_f32(ceil(358f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, -1823f, -1272f) - vec4<f32>(-1179f, 286f, 1499f, -1583f))))), !select(select(vec4<bool>(arg_1.a.e.x, var_0, var_0, true), vec4<bool>(true, var_0, arg_0.a.c.x, arg_0.a.c.x), true), vec4<bool>(arg_1.a.e.x, arg_0.a.c.x, var_0, arg_0.a.c.x), true))), false));
    let var_2 = arg_1.a;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1154f, var_1.x))))) - vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -122f), -486f, _wgslsmith_f_op_f32(f32(-1f) * -582f))));
    var var_3 = !(!(!arg_0.a.c));
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_5(_wgslsmith_mult_vec4_u32(~(vec4<u32>(18046u, 47947u, 0u, 9325u) | reverseBits(vec4<u32>(arg_0, 752u, arg_1.a.b.x, 4443u))), abs(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_0, 42683u, 1u), vec4<u32>(arg_0, arg_1.a.b.x, arg_0, 1u))))), arg_1, func_1(select(!func_1(vec2<bool>(arg_1.a.c.x, arg_1.a.c.x), u_input.a).a.c.yy, arg_1.a.c.zx, vec2<bool>(arg_1.a.c.x, arg_1.a.c.x)), reverseBits(-71750i)).a.c.zz, _wgslsmith_add_i32(u_input.b, firstTrailingBit(_wgslsmith_add_i32(u_input.a, ~0i))), func_1(!func_4(func_1(vec2<bool>(false, arg_1.a.c.x), 0i), Struct_4(Struct_3(vec3<i32>(u_input.a, 2147483647i, 1i), arg_0, arg_1.a, arg_1.a.a, arg_1.a.c)), ~23937u, ~(-43924i)).a.c.xx, 1i).a);
    var var_1 = func_1(var_0.b.a.c.xx, -12126i).a;
    let var_2 = Struct_4(Struct_3(vec3<i32>(-arg_2, -1i, ~(arg_2 | u_input.a)), arg_1.a.b.x, arg_1.a, arg_2, select(!select(vec3<bool>(false, true, true), vec3<bool>(true, var_1.c.x, var_1.c.x), vec3<bool>(true, false, var_1.c.x)), arg_1.a.c, func_4(Struct_2(Struct_1(arg_2, var_0.e.b, var_0.b.a.c)), Struct_4(Struct_3(vec3<i32>(-77556i, -11764i, 0i), arg_0, Struct_1(2147483647i, vec3<u32>(1u, var_0.e.b.x, 84047u), var_0.e.c), 1i, vec3<bool>(arg_1.a.c.x, true, false))), 0u, var_0.d).a.c.x == (2147483647i > u_input.b))));
    let var_3 = -_wgslsmith_add_vec3_i32(var_2.a.a, var_2.a.a);
    let var_4 = var_1.c.x;
    return func_4(func_4(Struct_2(Struct_1(~2147483647i, vec3<u32>(arg_0, 5320u, var_1.b.x), var_2.a.c.c)), var_2, abs(~func_3(vec4<f32>(-365f, 1000f, 1000f, -397f), Struct_5(var_0.a, var_0.b, var_0.b.a.c.yx, var_2.a.d, Struct_1(arg_1.a.a, var_0.a.zzx, vec3<bool>(true, false, false))), var_0.b, true).x), -1i), var_2, ~min(~1u, firstLeadingBit(min(21271u, var_0.e.b.x))), firstLeadingBit(var_2.a.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~252u, func_4(func_1(vec2<bool>(true, true), _wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(u_input.a, -24802i))), Struct_4(Struct_3(firstTrailingBit(vec3<i32>(20597i, u_input.b, u_input.a)), _wgslsmith_mult_u32(0u, 4294967295u), Struct_1(-2147483647i, vec3<u32>(28845u, 22123u, 65279u), vec3<bool>(false, false, false)), u_input.a, vec3<bool>(true, true, true))), 1u, -32829i), -2147483647i);
    global0 = array<vec2<u32>, 10>();
    var var_1 = -max(var_0.a.a, ~(-2147483647i));
    let var_2 = 0i;
    let var_3 = var_0.a.b.x;
    global0 = array<vec2<u32>, 10>();
    global0 = array<vec2<u32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.b.x, vec2<f32>(-731f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(419f, 480f) + _wgslsmith_f_op_f32(-812f * -312f)))), -select(vec3<i32>(-var_0.a.a, -8357i, ~u_input.b), vec3<i32>(firstLeadingBit(-3856i), 1i, _wgslsmith_sub_i32(-18399i, var_2)), !(!var_0.a.c)));
}

