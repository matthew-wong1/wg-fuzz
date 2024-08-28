struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_3,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-37116i, vec4<f32>(-1018f, 2017f, -151f, -390f)), Struct_1(1i, vec4<f32>(1509f, -917f, 1690f, 349f)), Struct_1(9954i, vec4<f32>(-2311f, 1002f, 956f, 507f)), Struct_1(i32(-2147483648), vec4<f32>(-562f, 645f, 1195f, -328f)), Struct_1(2147483647i, vec4<f32>(180f, 1179f, -1000f, -1621f)), Struct_1(-33373i, vec4<f32>(336f, -1637f, 815f, 924f)), Struct_1(53555i, vec4<f32>(-1116f, 599f, -516f, -208f)), Struct_1(14142i, vec4<f32>(801f, 306f, -1000f, -305f)), Struct_1(80606i, vec4<f32>(1331f, -1447f, -406f, -1000f)), Struct_1(1i, vec4<f32>(-129f, 665f, -840f, -1299f)), Struct_1(1i, vec4<f32>(-213f, 1000f, -603f, 2887f)), Struct_1(4701i, vec4<f32>(-220f, 1000f, -357f, 475f)), Struct_1(i32(-2147483648), vec4<f32>(-1000f, 1000f, -397f, 983f)), Struct_1(17567i, vec4<f32>(1088f, 536f, -1286f, 1517f)), Struct_1(-13092i, vec4<f32>(1108f, 302f, 1503f, 272f)), Struct_1(0i, vec4<f32>(317f, -312f, -287f, 239f)), Struct_1(2147483647i, vec4<f32>(1410f, -1000f, 1142f, 1510f)), Struct_1(-1i, vec4<f32>(-2736f, -1274f, 459f, -765f)), Struct_1(i32(-2147483648), vec4<f32>(-500f, 332f, 1200f, -321f)), Struct_1(-5914i, vec4<f32>(-242f, 517f, 363f, 1000f)));

var<private> global1: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 23071i), vec4<i32>(-14643i, -1i, 18338i, -15430i), vec4<i32>(1i, 0i, 21283i, 28875i), vec4<i32>(1i, -42896i, 8492i, -6483i), vec4<i32>(-32713i, 22535i, -16963i, 0i), vec4<i32>(-25013i, i32(-2147483648), -41035i, 0i), vec4<i32>(0i, 65086i, -1i, 8697i), vec4<i32>(-37026i, 17853i, 20647i, 23283i), vec4<i32>(109i, 14092i, -27861i, -19819i), vec4<i32>(-1i, -1i, 1i, 52589i), vec4<i32>(2147483647i, -1i, 0i, 0i), vec4<i32>(-1i, 40554i, 37169i, 10165i), vec4<i32>(-3251i, -1i, -4087i, i32(-2147483648)), vec4<i32>(-52226i, 10745i, 15700i, 1i), vec4<i32>(2147483647i, 0i, -1i, -605i), vec4<i32>(-24463i, i32(-2147483648), 1i, 42057i), vec4<i32>(-35511i, 1i, 1i, 22881i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -45908i), vec4<i32>(0i, 1i, 0i, -1i), vec4<i32>(i32(-2147483648), 46832i, 1i, 19678i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, -1i), vec4<i32>(-16333i, 2147483647i, i32(-2147483648), -20503i), vec4<i32>(-1i, -1i, -6255i, i32(-2147483648)), vec4<i32>(0i, 23421i, 41912i, i32(-2147483648)), vec4<i32>(-1i, 24721i, 31061i, 1i), vec4<i32>(3327i, -6345i, -1i, -1i));

var<private> global2: Struct_4 = Struct_4(false, Struct_2(4294967295u, true, vec3<f32>(1000f, 861f, 2760f), vec4<u32>(42068u, 30556u, 84767u, 2591u), vec4<u32>(0u, 16258u, 1u, 33133u)), Struct_3(vec3<i32>(-63179i, 1i, -14336i)), Struct_3(vec3<i32>(-42571i, 52702i, 2147483647i)));

var<private> global3: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = global2.c.a.yz;
    var var_1 = select(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(global2.b.e.yx), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 49897u), vec2<u32>(36980u, u_input.a.x))), ~(~arg_0.b.e.yx)), reverseBits(max(vec2<u32>(42891u, 43805u) ^ vec2<u32>(arg_1.x, 41930u), vec2<u32>(44278u, arg_1.x) & vec2<u32>(0u, 4294967295u)))), vec2<u32>(760u, arg_1.x), !vec2<bool>(!global3.x, true));
    let var_2 = arg_0.d;
    return global2.b.e.x;
}

fn func_2(arg_0: Struct_3) -> i32 {
    var var_0 = vec4<u32>(~4294967295u, _wgslsmith_mod_u32(25856u, ~abs(0u)) & (u_input.c ^ 1u), max(_wgslsmith_div_u32((global2.b.d.x >> (u_input.c % 32u)) | ~4294967295u, global2.b.d.x), abs(func_3(Struct_4(global3.x, global2.b, Struct_3(global2.d.a), Struct_3(global2.c.a)), ~global2.b.e, any(vec3<bool>(global3.x, global2.b.b, global3.x)), global0[_wgslsmith_index_u32(~43003u, 20u)]))), 4294967295u);
    global3 = vec2<bool>(true, !(false & global2.a));
    let var_1 = Struct_5(arg_0.a.xz, Struct_3(global2.c.a), global2.d.a.x <= ~9488i, true, global0[_wgslsmith_index_u32(global2.b.e.x, 20u)]);
    var var_2 = true;
    let var_3 = Struct_2(1u, all(select(vec2<bool>(true, true), !vec2<bool>(global3.x, global3.x), select(select(vec2<bool>(global2.b.b, var_1.c), vec2<bool>(var_1.c, global2.b.b), false), vec2<bool>(true, global3.x), vec2<bool>(var_1.d, global3.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1733f, -1382f, 510f)))))))), _wgslsmith_mod_vec4_u32(vec4<u32>(7817u, u_input.a.x, u_input.c, ~1u), abs(global2.b.e >> (select(u_input.a, u_input.a, vec4<bool>(false, false, global2.b.b, false)) % vec4<u32>(32u)))), ~(~_wgslsmith_mult_vec4_u32(max(vec4<u32>(1u, 4294967295u, 0u, u_input.c), u_input.a), global2.b.e)));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, arg_0.a.x), vec2<i32>(0i, ~(-firstTrailingBit(u_input.b.x))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_2 {
    global1 = array<vec4<i32>, 26>();
    var var_0 = global2.b;
    let var_1 = vec4<u32>(countOneBits(arg_1.x), _wgslsmith_div_u32(func_3(Struct_4(global2.b.c.x <= global2.b.c.x, arg_3, Struct_3(vec3<i32>(1i, global2.c.a.x, -1i)), global2.d), global2.b.d ^ (vec4<u32>(arg_1.x, 0u, var_0.d.x, arg_1.x) | arg_3.e), true, Struct_1(6208i | arg_2.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-758f, global2.b.c.x, -464f, -378f)))), 1u), var_0.d.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_0.zz, global2.b.d.yy), ~18004u));
    let var_2 = Struct_5(-select(abs(-global2.d.a.zx), _wgslsmith_mult_vec2_i32(-u_input.b, global2.c.a.zz), select(!vec2<bool>(arg_3.b, true), select(vec2<bool>(global3.x, global3.x), vec2<bool>(var_0.b, arg_3.b), arg_3.b), vec2<bool>(false, global2.b.b))), global2.c, true, !var_0.b & false, global0[_wgslsmith_index_u32(~32758u, 20u)]);
    var var_3 = Struct_4(any(vec4<bool>(true, false, arg_3.b, false)), global2.b, Struct_3(arg_2.zyx), global2.c);
    return Struct_2(arg_1.x & 1u, all(select(vec2<bool>(true, any(vec2<bool>(true, false))), !select(vec2<bool>(arg_3.b, global3.x), vec2<bool>(true, global3.x), false), !arg_3.b)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.e.b.x, _wgslsmith_f_op_f32(961f + 430f), _wgslsmith_f_op_f32(trunc(-712f))))), vec4<u32>(~_wgslsmith_clamp_u32(1u, var_3.b.e.x, 28908u & arg_0.x), _wgslsmith_dot_vec4_u32(arg_3.e, ~(~vec4<u32>(var_1.x, arg_0.x, 82846u, var_1.x))), _wgslsmith_add_u32(~arg_0.x, ~var_0.e.x), arg_0.x), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_3.e.x, 4294967295u, 4294967295u, 39106u), _wgslsmith_mod_vec4_u32(arg_0, var_0.d))));
}

fn func_1() -> Struct_5 {
    var var_0 = !select(any(vec3<bool>(any(vec4<bool>(true, true, false, false)), any(vec3<bool>(global2.a, false, global2.b.b)), true)), true, true);
    var var_1 = global2.b.c.x;
    var var_2 = vec2<f32>(-271f, _wgslsmith_f_op_f32(trunc(1000f)));
    let var_3 = func_4(vec4<u32>(u_input.a.x | 34548u, 4294967295u, ~global2.b.e.x, min(abs(0u) & (global2.b.d.x >> (u_input.a.x % 32u)), ~1u)), u_input.a.zx ^ firstTrailingBit(_wgslsmith_div_vec2_u32(u_input.a.xx, u_input.a.yw) | _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u))), global1[_wgslsmith_index_u32(4294967295u, 26u)] | abs(vec4<i32>(func_2(global2.d), -2147483647i, 0i, ~u_input.b.x)), Struct_2(global2.b.a, !(!all(vec4<bool>(false, global3.x, global2.b.b, true))), _wgslsmith_div_vec3_f32(vec3<f32>(global2.b.c.x, _wgslsmith_f_op_f32(-global2.b.c.x), _wgslsmith_f_op_f32(-var_2.x)), global2.b.c), vec4<u32>(53461u, _wgslsmith_add_u32(~global2.b.d.x, ~u_input.c), max(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.b.e.x, u_input.a.x), u_input.a.xww)), 43120u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, global2.b.d.x, ~4294967295u), vec4<u32>(1u, _wgslsmith_clamp_u32(global2.b.a, u_input.c, 1u), select(105101u, 4294967295u, true), 0u), ~u_input.a)));
    global0 = array<Struct_1, 20>();
    return Struct_5(vec2<i32>(i32(-1i) * -47196i, abs(firstLeadingBit(global2.d.a.x))) & vec2<i32>(reverseBits(-u_input.b.x), 11276i ^ abs(global2.c.a.x)), Struct_3(vec3<i32>(-(-23819i << (u_input.c % 32u)), u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.d.a.x, global2.c.a.x, global2.d.a.x), global2.d.a) | global2.d.a.x)), !global3.x, global3.x, Struct_1(global2.d.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.x + var_2.x), -1082f, _wgslsmith_f_op_f32(var_2.x * -780f), _wgslsmith_f_op_f32(-1602f - 1321f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.c.x, global2.b.c.x, var_2.x, global2.b.c.x) + vec4<f32>(2390f, var_2.x, var_3.c.x, 3283f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b.c.x, 779f, var_2.x, -720f), vec4<f32>(global2.b.c.x, -1362f, var_3.c.x, 577f), vec4<bool>(false, false, true, var_3.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_5(vec2<i32>(func_1().a.x, max(_wgslsmith_mult_i32(_wgslsmith_sub_i32(global2.c.a.x, global2.d.a.x), global2.d.a.x), reverseBits(~u_input.b.x))), Struct_3(_wgslsmith_mod_vec3_i32(var_0.b.a, abs(vec3<i32>(u_input.b.x, 1i, 1168i)))), !var_0.c, all(!(!vec4<bool>(var_0.c, global3.x, var_0.c, global3.x))), Struct_1(-2147483647i, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.e.b.x, global2.b.c.x, _wgslsmith_f_op_f32(-global2.b.c.x), _wgslsmith_div_f32(-1453f, global2.b.c.x))))));
    let var_1 = ~(~vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.wx), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, global2.b.e.x, 0u), vec3<u32>(global2.b.a, u_input.c, 89426u)), u_input.c), global2.b.a << (~51722u % 32u), min(u_input.c, _wgslsmith_div_u32(24363u, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(798f, var_0.e.b.x)) * global2.b.c.x)) * var_0.e.b.x));
}

