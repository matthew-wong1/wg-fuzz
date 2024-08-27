struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2769f;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-16257i, i32(-2147483648)), true, -4923i, vec3<i32>(-4529i, -48833i, 0i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> i32 {
    global0 = arg_2;
    var var_0 = vec2<u32>(min(~select(0u, u_input.b, all(vec4<bool>(false, arg_0.b, false, false))), abs(abs(1u))), 4783u);
    var_0 = (min(vec2<u32>(var_0.x ^ 4294967295u, 94046u & u_input.a), ~vec2<u32>(u_input.a, 45448u) ^ (vec2<u32>(var_0.x, 17870u) | vec2<u32>(u_input.a, u_input.a))) | vec2<u32>(~min(var_0.x, 4294967295u), (u_input.b | var_0.x) ^ ~u_input.a)) ^ vec2<u32>(_wgslsmith_add_u32(~(37965u ^ var_0.x), var_0.x), u_input.b);
    global0 = arg_1;
    global0 = arg_1;
    return 2147483647i;
}

fn func_2() -> vec2<bool> {
    var var_0 = !(!select(select(!vec3<bool>(global1.b, global1.b, false), !vec3<bool>(global1.b, global1.b, global1.b), select(vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(global1.b, false, global1.b), vec3<bool>(global1.b, true, true))), select(vec3<bool>(true, global1.b, true), vec3<bool>(true, true, true), true), true));
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_div_i32(func_3(Struct_1(u_input.c.zy, false, -79594i, vec3<i32>(0i, u_input.c.x, -60446i)), -255f, -332f), global1.a.x), 7746i), any(vec2<bool>(_wgslsmith_f_op_f32(ceil(-2049f)) <= -1158f, !var_0.x)), global1.a.x, -global1.d);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(153f * _wgslsmith_f_op_f32(floor(119f)))))), -101f);
    var var_2 = _wgslsmith_mod_vec4_u32(abs(vec4<u32>(~(~0u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 12311u, 16904u), vec3<u32>(1u, 1u, 31026u)), _wgslsmith_dot_vec4_u32(vec4<u32>(43407u, 4014u, 4294967295u, u_input.a), vec4<u32>(u_input.b, 53534u, u_input.a, u_input.b))), ~0u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(max(40609u, 60104u), ~4294967295u, u_input.b, _wgslsmith_clamp_u32(17390u & u_input.a, u_input.a | u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(96737u, u_input.a)))), ~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 32208u, u_input.a, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(27092u, 110657u, 4294967295u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 40431u)))));
    var_0 = select(select(vec3<bool>(any(vec3<bool>(true, var_1.b, var_0.x)), false, var_0.x), !vec3<bool>(11287u <= u_input.b, any(vec4<bool>(var_0.x, var_0.x, false, true)), true & var_1.b), select(select(select(vec3<bool>(var_0.x, global1.b, true), vec3<bool>(false, false, global1.b), vec3<bool>(false, false, true)), !vec3<bool>(global1.b, false, global1.b), select(vec3<bool>(true, false, true), vec3<bool>(global1.b, true, var_0.x), false)), vec3<bool>(true, true, true), var_1.b)), !(!vec3<bool>(global1.b, false, true)), var_1.b);
    return select(select(var_0.yy, var_0.xz, var_0.x), var_0.zz, all(vec3<bool>(var_0.x, true, true)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: i32) -> vec3<bool> {
    global0 = -1727f;
    let var_0 = Struct_1(u_input.c.zx, all(!func_2()), func_3(arg_0, 2541f, 1691f), select(~_wgslsmith_sub_vec3_i32(global1.d, vec3<i32>(-1i, 23228i, -2147483647i)), -vec3<i32>(arg_3, 25077i, 0i), !arg_1.x & false) & abs(vec3<i32>(abs(27483i), arg_0.c, _wgslsmith_mod_i32(arg_2.c, u_input.c.x))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-717f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2468f, -138f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 447f) * _wgslsmith_div_f32(1476f, 1000f)) + _wgslsmith_div_f32(-298f, _wgslsmith_f_op_f32(step(963f, 157f)))))));
    global1 = Struct_1(-(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.a, vec2<i32>(-1i, arg_3)), vec2<i32>(0i, 1i), ~arg_2.d.yy) << (vec2<u32>(u_input.a | u_input.b, u_input.a) % vec2<u32>(32u))), false, firstTrailingBit(~(~2147483647i)), _wgslsmith_clamp_vec3_i32((vec3<i32>(-1i) * -arg_2.d) ^ max(vec3<i32>(arg_3, global1.d.x, 62903i), ~global1.d), ~_wgslsmith_add_vec3_i32(global1.d << (vec3<u32>(0u, u_input.a, 28747u) % vec3<u32>(32u)), global1.d), arg_2.d));
    let var_1 = arg_2.b;
    return arg_1;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -211f));
    var var_0 = Struct_1(reverseBits(-vec2<i32>(global1.c, u_input.c.x)) << (vec2<u32>(select(11727u, u_input.b, arg_2.x), 0u | ~u_input.a) % vec2<u32>(32u)), !global1.b, global1.d.x, vec3<i32>(-2147483647i, max(i32(-1i) * -2147483647i, -11947i), 2147483647i));
    var var_1 = reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(~arg_1, u_input.a, ~u_input.b, u_input.a), vec4<u32>(33909u, 1u, _wgslsmith_mult_u32(4294967295u, u_input.a), min(6510u, arg_1))));
    return Struct_1(_wgslsmith_mod_vec2_i32(abs(firstLeadingBit(vec2<i32>(u_input.c.x, 2147483647i))), select(~(global1.d.yx & u_input.c.xz), var_0.a, !arg_2)), true, _wgslsmith_dot_vec2_i32(global1.d.zx, reverseBits(vec2<i32>(12955i, global1.c))), _wgslsmith_sub_vec3_i32(vec3<i32>(max(10743i >> (u_input.a % 32u), global1.d.x), -firstLeadingBit(0i), ~2147483647i << (~var_1.x % 32u)), countOneBits(-countOneBits(var_0.d))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = select(select(vec4<bool>(true, true, !arg_1.b | any(vec2<bool>(global1.b, true)), true), vec4<bool>(false, arg_1.b, true | !global1.b, select(all(vec4<bool>(true, false, true, true)), global1.b, !global1.b)), vec4<bool>(func_2().x, global1.b, any(select(vec4<bool>(false, true, global1.b, true), vec4<bool>(global1.b, global1.b, true, false), vec4<bool>(false, arg_1.b, false, true))), true)), select(!vec4<bool>(global1.b, false, any(vec3<bool>(arg_1.b, true, arg_1.b)), u_input.a >= arg_0.x), !(!(!vec4<bool>(global1.b, true, arg_1.b, arg_1.b))), select(select(!vec4<bool>(true, false, global1.b, false), !vec4<bool>(global1.b, false, false, true), global1.b), !(!vec4<bool>(arg_1.b, true, arg_1.b, global1.b)), true)), all(vec3<bool>(any(!vec3<bool>(false, true, global1.b)), !(arg_0.x >= 47679u), true)));
    var var_1 = var_0.x;
    global1 = Struct_1(vec2<i32>(global1.d.x, countOneBits(-2147483647i)), var_0.x, global1.a.x, u_input.c);
    var_0 = select(select(select(select(select(vec4<bool>(false, global1.b, arg_1.b, arg_1.b), vec4<bool>(false, arg_1.b, global1.b, true), true), select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(global1.b, false, var_0.x, var_0.x)), !vec4<bool>(global1.b, true, true, true)), select(vec4<bool>(var_0.x, true, false, false), !vec4<bool>(arg_1.b, arg_1.b, false, global1.b), vec4<bool>(false, global1.b, true, false)), !(!vec4<bool>(global1.b, arg_1.b, false, false))), !select(!vec4<bool>(true, false, var_0.x, false), select(vec4<bool>(arg_1.b, false, var_0.x, arg_1.b), vec4<bool>(global1.b, global1.b, true, true), vec4<bool>(global1.b, true, false, false)), func_2().x), false), vec4<bool>(true, true, !(func_1(arg_1, var_0.yyw, Struct_1(vec2<i32>(arg_3, 24604i), true, u_input.c.x, arg_1.d), -2147483647i).x | func_2().x), select(true, true, global1.b)), true);
    let var_2 = arg_1;
    return Struct_1(var_2.a, select(!select(var_2.b, true, arg_1.b) | var_0.x, false, false), global1.a.x, _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(0i, arg_1.c, -55767i), global1.d.x >> (35202u % 32u), -u_input.c.x) >> (reverseBits(vec3<u32>(arg_2, 9472u, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_add_i32(-global1.c, 0i), ~arg_1.c, min(var_2.a.x, _wgslsmith_mod_i32(var_2.a.x, 2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 800f;
    global1 = func_5(vec2<u32>(u_input.a, ~_wgslsmith_sub_u32(1u >> (u_input.a % 32u), ~u_input.b)), func_4((-1i | firstLeadingBit(global1.a.x)) << (~(~u_input.a) % 32u), 0u, vec2<bool>(all(func_1(Struct_1(global1.d.yy, false, u_input.c.x, global1.d), vec3<bool>(false, true, true), Struct_1(global1.d.zz, global1.b, -41611i, global1.d), -29982i)), true)), reverseBits(select(_wgslsmith_sub_u32(u_input.b, 0u), u_input.a & 1u, true)), countOneBits(-(countOneBits(u_input.c.x) & u_input.c.x)));
    let var_0 = vec4<bool>(func_5(abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(6834u, u_input.a))), func_4(~_wgslsmith_sub_i32(global1.d.x, 0i), u_input.b, func_2()), ~(~(~u_input.b)), global1.c).b, true, true, func_5(~max(vec2<u32>(u_input.a, u_input.b) | vec2<u32>(u_input.b, u_input.b), vec2<u32>(55556u, 4294967295u)), func_5(~(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, 30514u)), Struct_1(min(u_input.c.xz, vec2<i32>(-26277i, u_input.c.x)), true, func_4(-2147483647i, 0u, vec2<bool>(true, global1.b)).a.x, ~vec3<i32>(global1.a.x, global1.c, global1.a.x)), u_input.b, -11448i), max(firstTrailingBit(firstLeadingBit(u_input.b)), _wgslsmith_sub_u32(52345u, 35037u)), _wgslsmith_mod_i32(-2147483647i ^ min(-27084i, u_input.c.x), ~abs(-57459i))).b);
    let var_1 = min(~(~(~vec2<u32>(1u, u_input.a))), abs(vec2<u32>(28348u, u_input.b)) >> ((_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, 73251u)), ~vec2<u32>(0u, 41665u)) << (~min(vec2<u32>(u_input.b, u_input.a), vec2<u32>(u_input.b, 92957u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global1 = Struct_1(-_wgslsmith_mod_vec2_i32(-vec2<i32>(-1i, 78222i) ^ -global1.d.yy, global1.a), func_2().x, u_input.c.x, u_input.c);
    global1 = Struct_1(global1.a, true, -2147483647i, ~max(~(-global1.d), vec3<i32>(-21919i, -1i, ~u_input.c.x)));
    let var_2 = select(u_input.c, reverseBits(select(-(~vec3<i32>(0i, global1.d.x, global1.d.x)), vec3<i32>(global1.a.x, 0i, 26000i), var_0.x)), vec3<bool>(global1.b, true, var_0.x));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(468f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1040f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1034f, -371f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-627f, _wgslsmith_f_op_f32(1789f - -603f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1377f + -464f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(822f, 503f, -272f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-202f, -463f, -1569f, 981f)))))))), global1.c, vec2<i32>(global1.c, 1i), min(firstTrailingBit(~(-vec4<i32>(var_2.x, u_input.c.x, var_2.x, u_input.c.x))), _wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, global1.d.x, 2147483647i, global1.a.x), abs(firstLeadingBit(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, global1.a.x))))));
}

