struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<f32>, 6>;

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(7107i, 2815i, 18160i), 1u), true, 1i, false, vec3<bool>(false, false, true)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(-8680i, -1i, 34629i), 1u), false, 9226i, false, vec3<bool>(false, false, false)), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(42745i, 1i, -1i), 51513u), false, -1i, false, vec3<bool>(true, false, true)), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(28868i, 1i, 0i), 4294967295u), false, 0i, false, vec3<bool>(false, true, false)), Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(1i, 16205i, 0i), 10822u), false, 1i, false, vec3<bool>(false, true, false)), Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(i32(-2147483648), 25472i, 26177i), 35560u), false, 4133i, true, vec3<bool>(false, false, true)), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(-80295i, -23040i, 0i), 42475u), false, -18432i, true, vec3<bool>(false, true, false)), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(0i, 1180i, i32(-2147483648)), 1u), true, -1i, false, vec3<bool>(true, false, true)));

var<private> global3: vec3<i32> = vec3<i32>(-6000i, 20416i, -40606i);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<bool> {
    var var_0 = !vec3<bool>(true, true, any(vec4<bool>(any(vec4<bool>(false, false, false, true)), true, true, true)));
    let var_1 = Struct_1(var_0.yx, firstLeadingBit(~vec3<i32>(18508i, u_input.a.x, -30331i) << ((vec3<u32>(1u, 35357u, u_input.b.x) & vec3<u32>(46501u, 0u, u_input.b.x)) % vec3<u32>(32u))) & u_input.a.xxw, _wgslsmith_add_u32(abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), u_input.b.yz)), countOneBits(35958u)));
    let var_2 = countOneBits(-var_1.b.x);
    let var_3 = !all(select(!select(vec3<bool>(false, var_1.a.x, var_0.x), vec3<bool>(true, true, var_1.a.x), var_0.x), select(select(vec3<bool>(true, true, false), vec3<bool>(var_0.x, var_0.x, true), var_0.x), vec3<bool>(true, true, true), select(vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_1.a.x, var_0.x), var_0.x)), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_2, var_1.b.x, 22703i, 0i)) > 2147483647i));
    var var_4 = var_1;
    return vec3<bool>(any(select(!(!vec2<bool>(var_4.a.x, var_0.x)), !(!var_4.a), vec2<bool>(all(vec3<bool>(true, var_0.x, var_0.x)), true))), select(true & var_1.a.x, !any(vec2<bool>(var_1.a.x, var_1.a.x)), var_3), var_3);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: bool) -> u32 {
    let var_0 = all(select(select(!vec3<bool>(arg_2, false, true), func_3(), vec3<bool>(true, true, true)), select(!func_3(), !vec3<bool>(false, arg_0.x, arg_2), !(!vec3<bool>(arg_2, false, arg_2))), select(vec3<bool>(arg_2, arg_2, select(arg_0.x, arg_2, false)), vec3<bool>(!arg_0.x, arg_0.x, all(arg_0)), !arg_0.x)));
    var var_1 = select(vec4<bool>(arg_2, arg_2, ~(-32635i) == ~firstLeadingBit(global3.x), !arg_0.x), !vec4<bool>(true, var_0, ~1u == reverseBits(u_input.b.x), arg_0.x & arg_0.x), !arg_0.x | ((all(arg_0) & !var_0) && arg_0.x));
    let var_2 = Struct_3(Struct_2(Struct_1(arg_0, vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x ^ 1i), ~(~u_input.b.x)), !(!var_0), -_wgslsmith_clamp_i32(~global3.x, -global3.x, -18413i), func_3().x, var_1.wxw), Struct_1(select(!var_1.wz, vec2<bool>(true, true), vec2<bool>(select(var_0, var_1.x, true), !arg_0.x)), vec3<i32>(~10574i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a >> (vec4<u32>(12922u, 100644u, 58018u, u_input.b.x) % vec4<u32>(32u))), 17941i), firstLeadingBit(u_input.b.x)));
    let var_3 = global2[_wgslsmith_index_u32(52139u, 8u)];
    var var_4 = var_2;
    return _wgslsmith_mod_u32(_wgslsmith_mod_u32(~(52111u >> (0u % 32u)), var_3.a.c), firstTrailingBit(var_3.a.c)) << (0u % 32u);
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.b.x;
    let var_1 = Struct_1(vec2<bool>(!all(vec2<bool>(true, false)), true), _wgslsmith_div_vec3_i32(vec3<i32>(9097i, 0i, 0i) >> (_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(1u, u_input.b.x, u_input.b.x)), ~u_input.b) % vec3<u32>(32u)), vec3<i32>(-1i) * -u_input.a.wyy), firstLeadingBit(_wgslsmith_div_u32(select(u_input.b.x | 58935u, _wgslsmith_dot_vec4_u32(vec4<u32>(7723u, 14914u, u_input.b.x, 30974u), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 4294967295u)), all(vec3<bool>(true, true, true))), 81412u)));
    var var_2 = vec3<bool>(var_1.a.x, !(false | all(select(vec4<bool>(false, true, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x), true))), !(!var_1.a.x | false));
    var var_3 = vec3<u32>(max(27389u, 0u), 4294967295u, ~1u);
    var var_4 = countOneBits(~vec4<u32>(_wgslsmith_div_u32(4294967295u, var_3.x), func_2(var_2.yy, vec2<f32>(-1616f, -842f), true) ^ _wgslsmith_div_u32(24839u, 1u), 1u, 0u));
    return Struct_3(Struct_2(Struct_1(var_2.zy, u_input.a.yxz, ~70566u), true, -77932i | _wgslsmith_mult_i32(var_1.b.x, global3.x), var_2.x, vec3<bool>(u_input.a.x > -global3.x, false, all(select(vec4<bool>(true, false, var_2.x, var_1.a.x), vec4<bool>(false, var_1.a.x, var_1.a.x, true), vec4<bool>(var_2.x, var_2.x, var_1.a.x, var_1.a.x))))), var_1);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(arg_3.a, !all(func_3().xx), reverseBits(-(~arg_3.a.b.x)), true, func_3()), Struct_1(vec2<bool>(false, true), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.c, global3.x, arg_3.c) << (u_input.b % vec3<u32>(32u)), -(~vec3<i32>(33085i, 1i, u_input.a.x)), _wgslsmith_add_vec3_i32(abs(u_input.a.yzx), _wgslsmith_mod_vec3_i32(arg_3.a.b, arg_2.a.a.b))), arg_2.a.a.c));
    let var_1 = func_1().a;
    var var_2 = ~(~(~_wgslsmith_sub_vec2_u32(u_input.b.zz, vec2<u32>(var_0.a.a.c, arg_3.a.c))) ^ u_input.b.xy);
    let var_3 = 15390i;
    global0 = !select(any(select(select(vec4<bool>(arg_3.a.a.x, true, false, var_0.b.a.x), vec4<bool>(arg_2.a.b, var_0.b.a.x, false, false), vec4<bool>(arg_3.b, var_0.a.d, true, true)), vec4<bool>(arg_2.a.a.a.x, arg_2.b.a.x, arg_3.e.x, arg_3.b), true)), arg_3.b, arg_2.a.b);
    return func_1().a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1469f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(262f, 589f, true)) * _wgslsmith_f_op_f32(-759f * -196f)))));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(~16771u, u_input.b.x, u_input.b.x >> (u_input.b.x % 32u), 31894u) | vec4<u32>(u_input.b.x, countOneBits(u_input.b.x) >> (0u % 32u), 1u, ~(~u_input.b.x)), vec4<u32>(~7501u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 1u)), select(select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), true), _wgslsmith_mult_vec4_u32(vec4<u32>(80913u, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true))), _wgslsmith_mod_u32(35482u, ~10178u), ~_wgslsmith_mult_u32(~u_input.b.x, 1u)));
    var var_2 = Struct_3(Struct_2(func_4(var_0, 1i >> (_wgslsmith_dot_vec3_u32(var_1.wyy, vec3<u32>(u_input.b.x, 41659u, var_1.x)) % 32u), func_1(), global2[_wgslsmith_index_u32(1546u, 8u)]), any(func_3()), 2147483647i ^ -_wgslsmith_add_i32(-1i, u_input.a.x), !func_4(2508f, -19032i, Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), u_input.a.xzy, 49979u), false, global3.x, false, vec3<bool>(false, false, false)), Struct_1(vec2<bool>(false, true), vec3<i32>(10514i, global3.x, global3.x), u_input.b.x)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(-7555i, 52162i, global3.x), 0u), true, -2147483647i, false, vec3<bool>(true, true, true))).a.x, vec3<bool>(true, true, true)), Struct_1(func_1().b.a, u_input.a.wxw, u_input.b.x));
    var var_3 = Struct_2(Struct_1(func_1().a.e.yz, _wgslsmith_div_vec3_i32(var_2.b.b, countOneBits(vec3<i32>(var_2.a.a.b.x, 0i, var_2.b.b.x))) & vec3<i32>(0i, _wgslsmith_div_i32(2147483647i, u_input.a.x), ~(-12511i)), 75948u), true, max(-firstTrailingBit(u_input.a.x), global3.x), !var_2.b.a.x, select(func_3(), select(var_2.a.e, !func_1().a.e, true), vec3<bool>(true, true, any(select(vec4<bool>(false, var_2.b.a.x, var_2.b.a.x, var_2.b.a.x), vec4<bool>(var_2.b.a.x, false, var_2.a.e.x, var_2.a.a.a.x), vec4<bool>(true, var_2.a.b, true, true))))));
    var var_4 = false;
    let var_5 = func_1().a;
    var var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.wy ^ u_input.b.xy, ~u_input.b.xy), countOneBits(vec2<u32>(4294967295u, 9888u))) << ((~vec2<u32>(var_5.a.c, var_6.b.c) >> (~vec2<u32>(0u, var_1.x) % vec2<u32>(32u))) % vec2<u32>(32u)), var_2.b.b.zz, var_0, u_input.a, var_0);
}

