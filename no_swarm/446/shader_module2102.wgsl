struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(614f, -967f, -293f), vec3<f32>(-1365f, 114f, -312f), vec3<f32>(300f, -922f, -388f), vec3<f32>(-852f, 775f, 758f), vec3<f32>(-690f, -1486f, 165f), vec3<f32>(-1192f, -674f, -225f), vec3<f32>(1089f, 1127f, 992f), vec3<f32>(1000f, -811f, -2508f), vec3<f32>(-1615f, -1000f, 1671f), vec3<f32>(1972f, 1195f, 976f), vec3<f32>(-1142f, 1012f, -423f), vec3<f32>(-2497f, 718f, -933f), vec3<f32>(2752f, 1000f, 1000f), vec3<f32>(1000f, -384f, -1000f), vec3<f32>(360f, 438f, -1199f), vec3<f32>(-2598f, 1512f, 873f), vec3<f32>(-2624f, 518f, 209f), vec3<f32>(-146f, 1585f, -586f), vec3<f32>(-411f, -748f, -911f), vec3<f32>(1350f, 1000f, -1169f), vec3<f32>(-258f, -1469f, -152f), vec3<f32>(-534f, 201f, 554f), vec3<f32>(822f, 1472f, 1009f), vec3<f32>(-1000f, -1690f, -400f), vec3<f32>(-1207f, -606f, 317f), vec3<f32>(-572f, -608f, 289f), vec3<f32>(407f, -116f, 177f), vec3<f32>(-1428f, 424f, 496f), vec3<f32>(547f, 602f, 364f), vec3<f32>(150f, -362f, 2318f));

var<private> global1: array<vec2<f32>, 1>;

var<private> global2: bool = false;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>) -> vec4<f32> {
    let var_0 = ~vec2<u32>(4294967295u, _wgslsmith_add_u32(countOneBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.a, 1u) >> (vec4<u32>(50519u, 57898u, u_input.a, u_input.b.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, u_input.a, 50195u, 26472u))));
    global0 = array<vec3<f32>, 30>();
    global1 = array<vec2<f32>, 1>();
    global1 = array<vec2<f32>, 1>();
    let var_1 = vec4<u32>(~u_input.a, 4294967295u, ~30609u, var_0.x);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1420f, 603f, 1437f, 856f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1021f, 1313f, 764f, -1064f) * vec4<f32>(-1153f, 2236f, -664f, 789f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(934f, -977f, -418f, -270f) - vec4<f32>(642f, 243f, 305f, 507f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1330f, -979f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f, -1070f))));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(false, true, any(vec2<bool>(true, false)))))));
    var var_1 = vec2<bool>(true, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 1u, u_input.a, 1u), vec4<u32>(u_input.a, 1498u, 0u, 37570u)) <= arg_0);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(157f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) + -1640f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, 806f)))), var_0.zx, !any(vec4<bool>(false, var_1.x, var_1.x, var_1.x)))) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_div_f32(var_0.x, var_0.x)))));
    global0 = array<vec3<f32>, 30>();
    global0 = array<vec3<f32>, 30>();
    return -250f;
}

fn func_1() -> f32 {
    global2 = ~min(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, -1i, u_input.c), ~vec3<i32>(2147483647i, -4027i, -33275i)), min(~(-23065i), -1i)) <= -2147483647i;
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2433f, -855f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(0u)), _wgslsmith_f_op_f32(f32(-1f) * -339f))), 1f, 168f, _wgslsmith_f_op_f32(f32(-1f) * -148f)), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, -66041i, 0i, u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 2147483647i, 39741i, u_input.c), vec4<i32>(1i, u_input.c, 1i, u_input.c))), firstTrailingBit(countOneBits(vec4<i32>(22278i, u_input.c, u_input.c, -1i)))), -vec4<i32>(_wgslsmith_div_i32(-23633i, 1i), -33516i, 12298i << (u_input.b.x % 32u), 2147483647i)), Struct_1(true, ~(u_input.b.x ^ ~u_input.a), reverseBits(-vec4<i32>(u_input.c, u_input.c, u_input.c, 1i)) ^ vec4<i32>(u_input.c, u_input.c, 14823i >> (u_input.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(24445i, 10763i), vec2<i32>(0i, 1i))), !select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, false, true))));
    var var_1 = var_0.d.c.wxw;
    let var_2 = Struct_5(1u, 1u, Struct_3(_wgslsmith_dot_vec4_i32(var_0.d.c, _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, var_1.x, 2147483647i, var_0.c), vec4<i32>(var_1.x, u_input.c, -21732i, 2147483647i))) >> (0u % 32u), abs(abs(var_0.d.c.yx | var_0.d.c.yy)), select(select(vec2<bool>(true, true), select(var_0.d.d.zz, vec2<bool>(true, true), vec2<bool>(false, false)), var_0.d.d.yy), vec2<bool>(select(var_0.b, true, true), !var_0.b), var_0.d.d.zx)));
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(var_2.a)), -620f)), var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-330f - -180f))))));
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-585f - 811f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-302f, -939f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-817f + 655f), _wgslsmith_f_op_f32(-574f + -1786f))) + -839f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -688f));
    let var_1 = Struct_1(all(select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(false, false), false))), ~max(_wgslsmith_div_u32(u_input.a, 7632u), ~0u) ^ _wgslsmith_mod_u32(select(33519u, 1u, true), firstTrailingBit(u_input.a) & _wgslsmith_sub_u32(u_input.a, u_input.a)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~(-vec4<i32>(0i, u_input.c, u_input.c, u_input.c)), _wgslsmith_mod_vec4_i32(~vec4<i32>(0i, u_input.c, u_input.c, 1i), select(vec4<i32>(-7177i, -9168i, u_input.c, u_input.c), vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c), false))), -vec4<i32>(1i, u_input.c, -2147483647i, 22273i)), select(vec3<bool>(_wgslsmith_f_op_f32(-var_0) != 211f, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true)), select(false, false, false) != false), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), true));
    let var_2 = Struct_3(reverseBits(countOneBits(40777i)), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(var_1.c.x, u_input.c), -2147483647i), -vec2<i32>(var_1.c.x, 28193i) & (vec2<i32>(u_input.c, u_input.c) >> (u_input.b % vec2<u32>(32u)))), firstLeadingBit(var_1.c.wz)), !select(select(!var_1.d.zy, select(var_1.d.xx, vec2<bool>(var_1.a, true), var_1.d.zx), true), var_1.d.zy, var_1.d.x));
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, ~(~0u)), abs(u_input.a) & ~u_input.a), 1u);
    var var_4 = Struct_3(var_2.a, var_1.c.zz, var_2.c);
    let var_5 = var_2.b.x;
    var_4 = Struct_3(-reverseBits(reverseBits(var_1.c.x)) >> (4294967295u % 32u), _wgslsmith_clamp_vec2_i32(reverseBits(var_2.b), abs((var_1.c.yw >> (u_input.b % vec2<u32>(32u))) | firstLeadingBit(var_4.b)), var_1.c.wz & ~vec2<i32>(var_2.b.x, var_5)), !(!var_2.c));
    global0 = array<vec3<f32>, 30>();
    global0 = array<vec3<f32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)) + -578f), var_4.c.x)), ~((~vec4<u32>(u_input.a, u_input.b.x, u_input.a, u_input.b.x) | ~vec4<u32>(36741u, 52367u, 4294967295u, 4294967295u)) ^ ~vec4<u32>(var_1.b, u_input.a, u_input.b.x, 0u)), ~max(abs(abs(24748u)), 0u), vec3<u32>(var_1.b, 9714u >> (u_input.a % 32u), u_input.b.x), firstTrailingBit(_wgslsmith_mod_vec2_u32((u_input.b ^ u_input.b) >> (vec2<u32>(27702u, 42012u) % vec2<u32>(32u)), u_input.b)));
}

