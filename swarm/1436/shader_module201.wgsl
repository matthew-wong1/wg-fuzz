struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec2<bool>(false, false), false), Struct_2(vec2<bool>(true, true), true), Struct_2(vec2<bool>(true, true), true), Struct_2(vec2<bool>(false, false), true), Struct_2(vec2<bool>(true, false), false), Struct_2(vec2<bool>(false, false), true), Struct_2(vec2<bool>(true, false), false), Struct_2(vec2<bool>(false, true), false), Struct_2(vec2<bool>(true, false), true), Struct_2(vec2<bool>(true, true), true), Struct_2(vec2<bool>(false, true), false), Struct_2(vec2<bool>(false, false), false), Struct_2(vec2<bool>(false, false), true), Struct_2(vec2<bool>(false, true), false), Struct_2(vec2<bool>(true, true), false), Struct_2(vec2<bool>(false, false), false), Struct_2(vec2<bool>(true, true), true), Struct_2(vec2<bool>(false, true), false), Struct_2(vec2<bool>(false, true), true), Struct_2(vec2<bool>(true, false), false), Struct_2(vec2<bool>(false, true), true), Struct_2(vec2<bool>(false, false), true), Struct_2(vec2<bool>(true, false), false), Struct_2(vec2<bool>(false, false), true), Struct_2(vec2<bool>(true, true), true), Struct_2(vec2<bool>(true, false), false), Struct_2(vec2<bool>(false, false), false), Struct_2(vec2<bool>(false, false), false), Struct_2(vec2<bool>(true, false), true), Struct_2(vec2<bool>(false, true), false), Struct_2(vec2<bool>(false, true), true), Struct_2(vec2<bool>(true, false), false));

var<private> global2: vec2<u32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> f32 {
    global2 = arg_2;
    let var_0 = select(!select(select(select(vec3<bool>(false, arg_0.x, true), vec3<bool>(true, arg_0.x, false), arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !arg_0.x), select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, true, arg_0.x), false), all(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))), vec3<bool>(arg_0.x, any(vec3<bool>(arg_0.x, true, true)), false)), select(select(select(vec3<bool>(true, arg_0.x, true), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, arg_0.x, true)), select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, true, false), !vec3<bool>(arg_0.x, false, true)), true), vec3<bool>(arg_0.x, !(arg_0.x | arg_0.x), any(!vec3<bool>(arg_0.x, false, false))), arg_0.x), all(select(arg_0, vec2<bool>(true, all(vec3<bool>(true, arg_0.x, false))), arg_0)));
    return _wgslsmith_div_f32(-253f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec2<f32>, arg_3: vec3<u32>) -> bool {
    var var_0 = Struct_4(vec2<i32>(min(39694i, (arg_0 | arg_1) | 2147483647i), -arg_0), 112f, Struct_1(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, true), arg_2, vec2<u32>(44234u, 1u)))))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(48845u, 0u, u_input.a), vec3<u32>(u_input.a, global2.x, global2.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 770f)))), firstLeadingBit(~vec4<u32>(global2.x, u_input.a, 84345u, 38782u) | countOneBits(vec4<u32>(16050u, global2.x, 0u, 4294967295u))), false), vec3<bool>(select(select(arg_0 != -71276i, true, any(vec2<bool>(true, true))), true, true), !(arg_1 != countOneBits(-13089i)), true), ~global2.x >> (abs(43990u) % 32u));
    var var_1 = -_wgslsmith_sub_vec3_i32(abs(reverseBits(vec3<i32>(var_0.a.x, 39664i, arg_1)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(arg_0, var_0.a.x, -2147483647i), vec3<i32>(var_0.a.x, 5448i, -25021i))), ~_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, -1281i, 1i), vec3<i32>(58329i, var_0.a.x, -2147483647i)));
    var var_2 = Struct_3(reverseBits(var_0.c.d.x), Struct_1(_wgslsmith_f_op_f32(arg_2.x - 1324f), arg_3.x, -1401f, ~var_0.c.d, min(40514i, -32124i) <= arg_0));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.a, var_0.c.c)));
    var var_4 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.x, 4390u), ~(~vec2<u32>(var_2.a, u_input.a)));
    return true;
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: f32, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = 34232i;
    global0 = -_wgslsmith_dot_vec3_i32(-vec3<i32>(~2147483647i, 1i, i32(-1i) * -1i), vec3<i32>(abs(i32(-1i) * -2147483647i), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-17738i, -82761i, 22463i), vec3<i32>(-1i, 1i, 2147483647i))), _wgslsmith_add_i32(~0i, firstTrailingBit(-2147483647i))));
    global0 = 2147483647i;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1202f, -1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -726f), 704f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1018f)), _wgslsmith_f_op_f32(-arg_2))));
    let var_2 = Struct_1(arg_2, arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1196f) + _wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_mult_vec4_u32(~min(max(vec4<u32>(39944u, 4294967295u, 44204u, arg_0.x), vec4<u32>(1u, u_input.a, arg_0.x, 4294967295u)), abs(vec4<u32>(arg_0.x, u_input.a, u_input.a, u_input.a))), ~vec4<u32>(78034u, _wgslsmith_mult_u32(20910u, 0u), u_input.a, global2.x)), arg_3.x);
    return var_2;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(119600u, global2.x)), vec2<u32>(global2.x, global2.x | ~28501u));
    let var_1 = vec3<u32>(u_input.a, 29063u, min(global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global2.x, u_input.a, 0u), ~vec4<u32>(44559u, 2995u, u_input.a, 0u)))) | ~(~_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(61894u, global2.x, 51964u)), vec3<u32>(4294967295u, 1u, u_input.a)));
    global0 = 1i;
    let var_2 = func_4(reverseBits(select(~var_1, ~vec3<u32>(40470u, var_1.x, 25170u), vec3<bool>(true, true, func_2(arg_0, -1507i, vec2<f32>(855f, 108f), vec3<u32>(global2.x, u_input.a, 0u))))), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(249f, -1212f))) - _wgslsmith_f_op_f32(trunc(-564f))) * _wgslsmith_f_op_f32(1029f + -580f)), select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), vec3<bool>(u_input.a > 12027u, true, func_2(_wgslsmith_sub_i32(0i, 27213i), arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-297f, 454f)), countOneBits(vec3<u32>(4294967295u, global2.x, var_1.x))))));
    var var_3 = Struct_4(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, arg_0), ~(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, 7780i)) >> (vec2<u32>(var_1.x, 22668u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-162f + var_2.a), 1695f)), var_2, !(!(!vec3<bool>(var_2.e, var_2.e, var_2.e))), abs(func_4(func_4(var_2.d.xzz, false, _wgslsmith_f_op_f32(-var_2.a), !vec3<bool>(true, var_2.e, var_2.e)).d.zxz, !(var_2.e & var_2.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a, 899f, true))), !(!vec3<bool>(var_2.e, var_2.e, var_2.e))).b));
    return var_3.c;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_dot_vec2_u32(arg_1.c.d.yw, ~arg_1.c.d.yx);
    global1 = array<Struct_2, 32>();
    global2 = arg_1.c.d.zy;
    var var_1 = Struct_2(vec2<bool>(true, all(!select(vec4<bool>(arg_1.d.x, arg_1.c.e, arg_1.d.x, arg_1.c.e), vec4<bool>(arg_1.d.x, true, arg_1.c.e, arg_1.c.e), arg_1.c.e))), arg_1.d.x);
    let var_2 = Struct_2(vec2<bool>(func_1(590i).c == _wgslsmith_f_op_f32(min(2417f, arg_1.b)), func_4(vec3<u32>(46943u, max(arg_1.e, global2.x), ~var_0), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1605f))), select(vec3<bool>(var_1.a.x, false, true), arg_1.d, true)).e), false);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 40708i;
    var var_0 = -(5136i ^ -_wgslsmith_clamp_i32(~19852i, ~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(41790i, 0i, -54801i), vec3<i32>(-2147483647i, 26543i, -24799i))));
    let var_1 = func_5(vec3<i32>(reverseBits(-40986i | select(-21583i, 0i, true)), ~1i, ~1i), Struct_4(vec2<i32>(1i, ~(-1i << (global2.x % 32u))), 1080f, func_1(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-4588i, 32680i, -1i)), abs(vec3<i32>(-2147483647i, 2147483647i, -2147483647i)))), vec3<bool>(true, true, true), u_input.a));
    var var_2 = min((abs(var_1.a & var_1.a) | min(-vec2<i32>(var_1.a.x, -16723i), var_1.a << (var_1.c.d.zx % vec2<u32>(32u)))) << (~(~(vec2<u32>(1u, 4294967295u) & var_1.c.d.xw)) % vec2<u32>(32u)), var_1.a);
    let var_3 = Struct_3(var_1.e, var_1.c);
    let var_4 = Struct_2(var_1.d.yy, func_5((vec3<i32>(var_2.x, 24653i, var_2.x) | vec3<i32>(-2147483647i, var_2.x, var_2.x)) ^ _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(26152i, 33067i, var_2.x), vec3<i32>(var_1.a.x, var_2.x, var_1.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(13679i, 30470i, var_1.a.x), vec3<i32>(-2317i, -1i, var_2.x))), func_5(vec3<i32>(_wgslsmith_clamp_i32(var_1.a.x, -7108i, var_2.x), 1i, ~var_1.a.x), Struct_4(-var_1.a, _wgslsmith_f_op_f32(select(-1051f, var_3.b.a, var_3.b.e)), func_5(vec3<i32>(-32353i, var_1.a.x, var_2.x), Struct_4(var_1.a, var_1.c.c, Struct_1(466f, 0u, -802f, vec4<u32>(var_3.b.d.x, 0u, 0u, 0u), true), var_1.d, 4294967295u)).c, !vec3<bool>(var_1.d.x, false, var_1.d.x), ~364u))).d.x);
    global2 = vec2<u32>(~global2.x, ~(~func_1(abs(2147483647i)).d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(func_1(var_1.a.x).d.wy, ~func_1(var_1.a.x).d.wx), vec2<u32>(~global2.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_1.c.d.zx, vec2<u32>(4294967295u, var_3.b.d.x)), ~37214u))), global2.x, _wgslsmith_f_op_f32(func_3(!func_5(~vec3<i32>(var_2.x, -18677i, var_2.x), var_1).d.zz, vec2<f32>(var_1.c.a, 1592f), var_3.b.d.yx)), countOneBits(vec4<u32>(64254u, ~65497u, (global2.x & var_1.c.b) | 0u, global2.x)), _wgslsmith_mult_i32(var_1.a.x, ~(-31649i)));
}

