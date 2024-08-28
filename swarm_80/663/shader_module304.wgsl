struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec2<bool>,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-120f, -1554f, -1757f, -780f), vec3<bool>(true, true, true));

var<private> global2: Struct_2 = Struct_2(vec2<bool>(true, true), Struct_1(vec4<f32>(821f, -1037f, -1644f, -789f), vec3<bool>(false, false, true)), -3674i, Struct_1(vec4<f32>(-129f, -1953f, 595f, 1000f), vec3<bool>(false, true, true)), Struct_1(vec4<f32>(1914f, -1860f, -331f, 155f), vec3<bool>(true, false, false)));

var<private> global3: u32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    var var_0 = vec4<i32>(_wgslsmith_div_i32(-1i >> (~_wgslsmith_mult_u32(u_input.b.x, 4294967295u) % 32u), -_wgslsmith_dot_vec3_i32(-vec3<i32>(-23170i, global2.c, -8884i), vec3<i32>(global2.c, 13668i, global2.c))), -1i, firstLeadingBit(-18766i), arg_0.a.c);
    var var_1 = ~u_input.b.yy;
    return Struct_3(Struct_2(!arg_0.a.a, global2.e, u_input.a.x >> (var_1.x % 32u), arg_0.c, Struct_1(vec4<f32>(arg_0.c.a.x, global1.a.x, _wgslsmith_f_op_f32(global1.a.x + -415f), _wgslsmith_div_f32(global2.b.a.x, arg_0.c.a.x)), !arg_0.a.d.b)), abs(~abs(~vec4<i32>(-2147483647i, 1i, var_0.x, 32814i))), arg_0.c);
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    let var_0 = func_2(arg_0).c.b.zx;
    global1 = func_2(arg_0).c;
    var var_1 = 62597u;
    var var_2 = reverseBits(1u);
    var var_3 = arg_0.a.e.a.x;
    return firstTrailingBit(u_input.b.zz);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<i32>) -> i32 {
    var var_0 = global2.b.a.x;
    var var_1 = !global1.b.x;
    global3 = 0u;
    let var_2 = Struct_5(func_3(func_2(Struct_3(Struct_2(vec2<bool>(true, global1.b.x), Struct_1(vec4<f32>(global2.b.a.x, global1.a.x, -421f, -748f), vec3<bool>(arg_1.b.x, arg_1.b.x, true)), u_input.a.x, Struct_1(global1.a, vec3<bool>(arg_1.b.x, false, false)), Struct_1(global2.e.a, arg_1.b)), -vec4<i32>(-24736i, 2147483647i, 1i, 0i), global2.e))), Struct_3(func_2(func_2(func_2(Struct_3(Struct_2(vec2<bool>(global2.d.b.x, false), global2.b, global2.c, arg_1, arg_1), vec4<i32>(6690i, -20672i, 30804i, global2.c), arg_1)))).a, -_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, -42337i), ~vec4<i32>(2147483647i, -2147483647i, -13917i, -12287i)), global2.e), select(!(!vec2<bool>(arg_1.b.x, false)), global1.b.yz, global1.b.zy), ~(vec4<i32>(-1i) * -vec4<i32>(-35463i, global2.c, arg_2.x, global2.c)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(-1i, global2.c, -1i, _wgslsmith_mod_i32(-1i, 21437i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-204i, arg_2.x, 16380i, -29541i), vec4<i32>(2147483647i, arg_2.x, arg_2.x, arg_2.x))), func_2(Struct_3(Struct_2(global2.b.b.xz, func_2(Struct_3(Struct_2(global1.b.zx, global2.b, u_input.a.x, Struct_1(vec4<f32>(284f, -611f, 840f, arg_1.a.x), vec3<bool>(global2.b.b.x, global2.a.x, true)), Struct_1(vec4<f32>(arg_1.a.x, global2.e.a.x, global2.b.a.x, global2.e.a.x), arg_1.b)), vec4<i32>(0i, arg_2.x, 2147483647i, 0i), Struct_1(vec4<f32>(global2.e.a.x, -1000f, arg_1.a.x, 243f), global1.b))).c, -u_input.a.x, global2.e, func_2(Struct_3(Struct_2(arg_1.b.xx, Struct_1(vec4<f32>(-985f, global2.e.a.x, global1.a.x, -387f), vec3<bool>(true, global2.e.b.x, global1.b.x)), u_input.a.x, Struct_1(vec4<f32>(arg_1.a.x, -692f, 851f, global2.e.a.x), arg_1.b), Struct_1(vec4<f32>(global2.b.a.x, global1.a.x, global1.a.x, global2.b.a.x), arg_1.b)), vec4<i32>(arg_2.x, -37260i, u_input.a.x, arg_2.x), Struct_1(arg_1.a, vec3<bool>(true, arg_1.b.x, arg_1.b.x)))).c), -max(vec4<i32>(66295i, u_input.a.x, -72633i, u_input.a.x), vec4<i32>(global2.c, global2.c, 1i, u_input.a.x)), arg_1)).a);
    let var_3 = reverseBits(u_input.a.x);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~vec2<u32>(reverseBits(u_input.b.x), ~(~u_input.b.x)), global2.e, vec2<i32>(-11931i, global2.c));
    let var_1 = 12191u;
    let var_2 = -(_wgslsmith_mod_vec4_i32(vec4<i32>(~global2.c, _wgslsmith_add_i32(-1i, 1i), u_input.a.x, u_input.a.x), reverseBits(vec4<i32>(-6169i, var_0, global2.c, var_0))) | ~(~(vec4<i32>(20537i, 1i, u_input.a.x, -63048i) >> (vec4<u32>(78126u, var_1, 45248u, 81526u) % vec4<u32>(32u)))));
    let var_3 = Struct_3(Struct_2(select(vec2<bool>(all(global2.b.b), global2.a.x), select(select(vec2<bool>(global2.b.b.x, global1.b.x), global2.e.b.xz, vec2<bool>(global1.b.x, global2.b.b.x)), vec2<bool>(false, true), true), vec2<bool>(global2.e.b.x, all(global2.d.b.zy))), func_2(Struct_3(Struct_2(global2.a, global2.d, global2.c, Struct_1(vec4<f32>(613f, 238f, global2.d.a.x, 1209f), global2.e.b), Struct_1(vec4<f32>(global1.a.x, -1327f, global1.a.x, global1.a.x), global2.b.b)), -var_2, Struct_1(global1.a, global1.b))).c, -2147483647i, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1466f, 929f, global1.a.x, 542f))) - _wgslsmith_f_op_vec4_f32(global2.e.a + vec4<f32>(690f, -236f, -512f, -977f))), !func_2(Struct_3(Struct_2(global1.b.xz, Struct_1(vec4<f32>(-487f, global2.e.a.x, global2.b.a.x, -1579f), vec3<bool>(false, global1.b.x, true)), global2.c, global2.e, global2.e), var_2, Struct_1(vec4<f32>(-1194f, global1.a.x, -1491f, -562f), vec3<bool>(false, true, global1.b.x)))).c.b), global2.b), -(var_2 & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, global2.c, var_2.x, -27108i), min(vec4<i32>(var_2.x, -17284i, u_input.a.x, -38453i), var_2))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global2.b.a.x, -1000f, global2.b.a.x, 305f), global2.e.a))), func_2(func_2(Struct_3(Struct_2(vec2<bool>(true, false), global2.d, global2.c, global2.e, Struct_1(global2.e.a, global2.d.b)), vec4<i32>(8973i, 12010i, u_input.a.x, var_0), Struct_1(vec4<f32>(567f, global1.a.x, global1.a.x, global2.b.a.x), global2.d.b)))).c.b));
    global1 = func_2(Struct_3(var_3.a, vec4<i32>(2147483647i, var_0, global2.c, _wgslsmith_mod_i32(_wgslsmith_div_i32(global2.c, -16482i), _wgslsmith_div_i32(global2.c, 1i))), global2.e)).a.d;
    var var_4 = -_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_add_i32(global2.c, ~(-1i >> (0u % 32u))));
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.ww - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, -1020f)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(582f, 1500f))), vec2<f32>(-793f, -1463f)))));
    var var_6 = _wgslsmith_clamp_vec4_u32(vec4<u32>(max(var_1, _wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(57221u, u_input.b.x, 1u, 4294967295u))), max(u_input.b.x, _wgslsmith_div_u32(4294967295u, var_1)) ^ _wgslsmith_sub_u32(53960u, u_input.b.x), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(27156u, u_input.b.x, 819u, 0u)), vec4<u32>(u_input.b.x, u_input.b.x, var_1, u_input.b.x)), 39078u), _wgslsmith_mod_u32(firstLeadingBit(min(103381u, u_input.b.x)), 90236u)), u_input.b, ~(~vec4<u32>(u_input.b.x, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, u_input.b.x, u_input.b.x), vec3<u32>(98046u, var_1, 66786u)), 3388u ^ var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global2.e.a.x), vec3<f32>(1935f, _wgslsmith_f_op_f32(floor(-1041f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1367f + global1.a.x))))), _wgslsmith_f_op_f32(-global2.d.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(582f, global2.e.a.x) * 389f)));
}

