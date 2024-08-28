struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> u32 {
    var var_0 = !vec4<bool>(false, true, !(!all(vec2<bool>(false, true))), true);
    var_0 = !(!select(select(!vec4<bool>(false, false, var_0.x, false), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false), var_0.x), true), vec4<bool>(true, true, var_0.x, !var_0.x), var_0.x));
    global0 = var_0.x;
    global0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(913f - 685f), -263f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -305f) * _wgslsmith_div_f32(-1433f, 465f)), 896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-616f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1255f, 586f, -641f, 1788f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(178f, 374f, -576f, 512f) - vec4<f32>(1200f, -1327f, -1000f, 878f)), vec4<f32>(-119f, 1031f, 1271f, -967f), !var_0.x)))));
    return 1u >> (u_input.a.x % 32u);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> i32 {
    var var_0 = func_3();
    let var_1 = abs(arg_1.d.a.x);
    global0 = true;
    let var_2 = -680f;
    let var_3 = arg_1;
    return -47213i;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = 1890i;
    var var_1 = arg_0.d.d;
    var var_2 = Struct_2(select(select(select(!arg_0.a, arg_0.a, vec3<bool>(true, arg_0.c, false)), vec3<bool>(true, true, select(false, arg_0.c, arg_1)), all(!vec4<bool>(arg_0.b.c.x, true, true, arg_1))), arg_0.a, select(all(arg_0.b.c), any(select(vec4<bool>(false, arg_0.a.x, true, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1), false)), arg_3.x <= arg_3.x)), arg_0.b, true, arg_0.d);
    let var_3 = Struct_1(countOneBits(select(~_wgslsmith_mod_vec2_i32(var_2.d.a, vec2<i32>(arg_2, -62006i)), arg_0.d.a, !(!arg_0.a.yx))), arg_0.d.b, vec2<bool>(false, arg_0.d.c.x), _wgslsmith_dot_vec3_u32(min(select(countOneBits(vec3<u32>(var_2.d.d, 15928u, u_input.a.x)), firstLeadingBit(vec3<u32>(54652u, 46293u, 20155u)), true), countOneBits(~vec3<u32>(4294967295u, arg_0.b.d, u_input.a.x))), vec3<u32>(var_2.d.d, max(_wgslsmith_div_u32(1u, 85105u), arg_0.b.d), _wgslsmith_sub_u32(var_2.b.d, arg_0.d.d))));
    global0 = true;
    return var_2.d;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 4294967295u;
    let var_1 = func_4(Struct_2(!vec3<bool>(false, !arg_2.b, arg_2.b), arg_2, any(arg_2.c), arg_2), !(((true && arg_2.c.x) | true) | true), ~func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(600f, 526f, 1907f, 365f), vec4<f32>(-318f, 746f, 267f, -1406f), false))), Struct_2(select(vec3<bool>(arg_2.c.x, false, false), vec3<bool>(false, arg_2.b, arg_2.c.x), arg_2.c.x), Struct_1(arg_2.a, false, vec2<bool>(true, arg_2.b), arg_2.d), true, arg_2)), vec4<f32>(1f, -174f, _wgslsmith_f_op_f32(-485f - -753f), 2252f));
    let var_2 = Struct_1(select(var_1.a, firstTrailingBit(abs(select(vec2<i32>(arg_1, -1i), vec2<i32>(arg_2.a.x, -13853i), vec2<bool>(true, false)))), var_1.b), false || var_1.b, vec2<bool>(false, true && arg_2.b), arg_2.d);
    var var_3 = 0u;
    var var_4 = _wgslsmith_clamp_vec3_i32(vec3<i32>(5865i, -var_1.a.x, abs(~(~(-1033i)))), -max(vec3<i32>(var_1.a.x, 2147483647i, 20279i), vec3<i32>(var_2.a.x, arg_0, arg_1)) | ~(~(vec3<i32>(arg_1, arg_1, 0i) ^ vec3<i32>(arg_2.a.x, 13432i, arg_1))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(arg_0, 27783i), 1i, arg_2.a.x), min(vec3<i32>(func_2(vec4<f32>(1505f, -209f, 1473f, 630f), Struct_2(vec3<bool>(false, var_2.c.x, true), Struct_1(var_2.a, var_2.b, arg_2.c, u_input.a.x), var_2.c.x, Struct_1(var_2.a, true, var_1.c, 4294967295u))), _wgslsmith_mult_i32(46540i, arg_1), firstLeadingBit(-12647i)), ~(vec3<i32>(-2147483647i, 0i, -15712i) ^ vec3<i32>(-14381i, var_1.a.x, var_1.a.x)))));
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_add_vec4_i32(abs(vec4<i32>(arg_0.d.a.x, 26920i, firstTrailingBit(-21373i), arg_0.b.a.x)) >> (vec4<u32>(reverseBits(12504u), arg_2.b.d, arg_2.b.d, 0u) % vec4<u32>(32u)), max(_wgslsmith_add_vec4_i32(~vec4<i32>(arg_1.a.x, -63619i, arg_0.b.a.x, 0i), vec4<i32>(-1i) * -vec4<i32>(2147483647i, 0i, 32964i, 8545i)), vec4<i32>(arg_2.b.a.x ^ 2147483647i, ~46229i, ~(-22566i), abs(_wgslsmith_div_i32(arg_2.b.a.x, 0i)))));
    global0 = !(true && (any(vec3<bool>(true, false, arg_2.b.b)) & arg_2.b.c.x));
    var var_1 = !arg_0.d.c;
    var var_2 = true;
    var var_3 = func_4(Struct_2(select(vec3<bool>(arg_1.b, var_1.x, arg_1.b), arg_2.a, !select(arg_2.a, vec3<bool>(true, false, false), arg_2.b.b)), Struct_1(arg_0.d.a, true, vec2<bool>(all(vec2<bool>(arg_2.d.b, arg_1.c.x)), true), arg_2.d.d), _wgslsmith_f_op_f32(floor(-254f)) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1450f, 1240f)), func_4(arg_2, var_1.x, _wgslsmith_clamp_i32(func_4(arg_2, false, arg_0.d.a.x, vec4<f32>(543f, 1607f, -905f, -286f)).a.x, arg_3, 2147483647i), vec4<f32>(-112f, -361f, _wgslsmith_f_op_f32(f32(-1f) * -152f), 217f))), any(!select(select(vec4<bool>(true, false, false, arg_0.b.c.x), vec4<bool>(arg_1.b, true, arg_2.b.c.x, arg_1.c.x), vec4<bool>(false, var_1.x, false, arg_0.a.x)), select(vec4<bool>(arg_2.d.b, arg_2.b.b, arg_0.a.x, true), vec4<bool>(false, false, arg_1.b, arg_2.a.x), vec4<bool>(false, arg_1.b, arg_0.b.b, arg_1.b)), !vec4<bool>(arg_2.d.b, false, false, var_1.x))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-max(vec2<i32>(arg_1.a.x, -1i), arg_1.a), -arg_2.d.a ^ (vec2<i32>(21097i, arg_2.b.a.x) << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)))), arg_2.d.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(827f, -1000f, -564f, -189f))), vec4<f32>(106f, -245f, -1000f, -413f), true)))));
    return !vec3<bool>(false, func_4(Struct_2(arg_2.a, Struct_1(arg_2.d.a, false, arg_1.c, 79316u), true, func_4(Struct_2(arg_2.a, arg_2.b, true, Struct_1(arg_0.b.a, false, vec2<bool>(false, arg_0.d.c.x), 38558u)), arg_0.c, var_3.a.x, vec4<f32>(791f, -2380f, 1753f, -740f))), func_4(arg_2, true, reverseBits(arg_3), vec4<f32>(-844f, 380f, 1444f, 1307f)).c.x, firstTrailingBit(_wgslsmith_mod_i32(-53404i, 1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(353f, 559f, -1214f, 277f)) - vec4<f32>(200f, -996f, -504f, -1525f))).c.x, !arg_0.b.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-2028f, -2491f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-659f + -917f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1419f + 683f)))));
    var var_1 = -64674i;
    var var_2 = select(!func_5(Struct_2(vec3<bool>(true, true, true), func_1(53029i, -45430i, Struct_1(vec2<i32>(46325i, 5963i), false, vec2<bool>(false, false), u_input.a.x)), var_0.x >= var_0.x, func_1(0i, 1i, Struct_1(vec2<i32>(-1i, -40276i), true, vec2<bool>(true, true), u_input.a.x))), func_4(Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<i32>(1i, -1i), false, vec2<bool>(true, false), u_input.a.x), true, Struct_1(vec2<i32>(87179i, -1i), false, vec2<bool>(false, true), u_input.a.x)), false, ~0i, vec4<f32>(var_0.x, 320f, var_0.x, var_0.x)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<i32>(18099i, 0i), false, vec2<bool>(true, true), 52556u), func_1(2147483647i, -28985i, Struct_1(vec2<i32>(1353i, 55120i), true, vec2<bool>(true, false), 0u)).b, func_1(2147483647i, 16188i, Struct_1(vec2<i32>(1i, 1i), false, vec2<bool>(false, false), u_input.a.x))), 0i), vec3<bool>(true, false, func_4(Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<i32>(-31051i, -2147483647i), true, vec2<bool>(false, true), u_input.a.x), true, Struct_1(vec2<i32>(-34858i, -7316i), true, vec2<bool>(false, false), u_input.a.x)), all(vec4<bool>(false, true, true, false)), i32(-1i) * -18524i, vec4<f32>(-892f, -1250f, var_0.x, var_0.x)).b), true);
    var_2 = !vec3<bool>(!(!(!var_2.x)), !var_2.x, true);
    let var_3 = -_wgslsmith_div_vec2_i32(max(select(-vec2<i32>(-7691i, -13735i), reverseBits(vec2<i32>(1i, -1i)), !var_2.xx), vec2<i32>(1i, 1i)), select(_wgslsmith_mod_vec2_i32(vec2<i32>(-2227i, 37068i), vec2<i32>(2147483647i, 1i)), ~abs(vec2<i32>(9685i, 26067i)), vec2<bool>(true, true)));
    let var_4 = !(!(!select(vec3<bool>(var_2.x, false, var_2.x), func_5(Struct_2(vec3<bool>(var_2.x, false, var_2.x), Struct_1(var_3, true, vec2<bool>(var_2.x, var_2.x), u_input.a.x), false, Struct_1(vec2<i32>(2147483647i, var_3.x), true, var_2.xz, 39760u)), Struct_1(vec2<i32>(2147483647i, 11668i), var_2.x, vec2<bool>(true, false), 4294967295u), Struct_2(vec3<bool>(false, var_2.x, true), Struct_1(var_3, var_2.x, vec2<bool>(true, true), 63753u), var_2.x, Struct_1(var_3, var_2.x, var_2.xz, 1u)), 0i), var_3.x <= var_3.x)));
    var_1 = _wgslsmith_mod_i32(~(abs(var_3.x) | 0i), ~func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, -318f, var_0.x, var_0.x))))), Struct_2(!vec3<bool>(false, false, var_2.x), func_4(Struct_2(var_4, Struct_1(vec2<i32>(var_3.x, -1i), false, vec2<bool>(false, true), 1u), true, Struct_1(var_3, false, var_4.zy, 1u)), true, -6927i, vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f)), !var_4.x, Struct_1(vec2<i32>(var_3.x, var_3.x), var_4.x, vec2<bool>(var_2.x, true), u_input.a.x))));
    let var_5 = _wgslsmith_sub_u32(~u_input.a.x, 82983u);
    let var_6 = Struct_2(var_4, Struct_1(abs(abs(vec2<i32>(1i, var_3.x))), func_1(abs(var_3.x), var_3.x, func_4(Struct_2(vec3<bool>(false, true, var_2.x), Struct_1(var_3, var_2.x, var_4.xx, 46236u), true, Struct_1(var_3, var_2.x, vec2<bool>(false, var_2.x), var_5)), var_2.x, _wgslsmith_sub_i32(1i, 0i), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, 1095f, var_0.x))))).b, var_2.xx, abs(max(var_5, ~u_input.a.x))), true, func_4(Struct_2(select(select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_4.x, true, var_2.x), var_4), var_4, true), Struct_1(var_3, false || var_4.x, select(var_2.xx, var_4.yz, var_4.x), ~79365u), all(!vec4<bool>(var_2.x, false, true, true)), func_4(Struct_2(vec3<bool>(var_2.x, true, false), Struct_1(vec2<i32>(var_3.x, var_3.x), var_2.x, var_4.zy, 4294967295u), var_2.x, Struct_1(var_3, false, var_4.xz, 0u)), var_2.x, var_3.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(536f, var_0.x, var_0.x, -196f) * vec4<f32>(var_0.x, -741f, -698f, var_0.x)))), !(var_3.x != var_3.x), _wgslsmith_mod_i32(~(var_3.x ^ var_3.x), ~(var_3.x & -1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 616f, var_0.x, -822f) + vec4<f32>(-997f, var_0.x, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(565f, 833f, var_0.x, -744f) * vec4<f32>(867f, -1497f, -1980f, var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1766f), _wgslsmith_mod_i32(abs(var_3.x ^ ~(-1i)), ~_wgslsmith_mult_i32(0i, _wgslsmith_mult_i32(var_3.x, var_6.b.a.x))), -2147483647i);
}

