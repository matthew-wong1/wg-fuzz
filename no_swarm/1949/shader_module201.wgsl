struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -37725i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = countOneBits(-arg_0.c);
    global0 = -1i;
    var var_0 = 0u;
    let var_1 = Struct_2(arg_0.a, Struct_1(arg_0.b.b, arg_0.b.b, arg_0.b.c), -51825i);
    let var_2 = var_1.b.a;
    return -(i32(-1i) * -_wgslsmith_div_i32(u_input.c.x, u_input.c.x)) < firstLeadingBit(u_input.e.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(arg_1.a, ~select(arg_1.b, firstTrailingBit(abs(vec2<i32>(arg_1.e.x, -36646i))), select(arg_1.d.a, arg_1.c.x | arg_1.a.b.a, arg_1.a.b.a)), !arg_1.a.a.xz, Struct_1(func_3(Struct_2(vec4<bool>(true, arg_1.c.x, arg_1.c.x, false), arg_1.d, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c))), arg_1.a.b.a, arg_1.d.c), arg_1.e);
    let var_1 = Struct_3(var_0.a, vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(5902i, arg_1.e.x, -29620i), u_input.a.wyy), ~vec3<i32>(arg_1.b.x, u_input.a.x, 12463i)), arg_0.x), select(!var_0.c, select(vec2<bool>(arg_1.a.c >= u_input.c.x, 61426i < var_0.e.x), vec2<bool>(var_0.d.b, !arg_1.c.x), var_0.d.b), 1i < _wgslsmith_clamp_i32(abs(2147483647i), _wgslsmith_mult_i32(var_0.b.x, var_0.a.c), ~var_0.e.x)), arg_1.a.b, reverseBits(_wgslsmith_add_vec3_i32(~firstTrailingBit(vec3<i32>(-1i, arg_1.a.c, -35255i)), arg_1.e)));
    global0 = _wgslsmith_add_i32(u_input.c.x, (arg_0.x >> (40253u % 32u)) & 34466i);
    global0 = ~_wgslsmith_mult_i32(reverseBits(min(u_input.c.x, i32(-1i) * -2147483647i)), arg_1.a.c);
    global0 = -20993i;
    return arg_1;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = !select(false, all(select(vec2<bool>(arg_1.a.b.a, false), arg_1.a.a.wz, all(vec3<bool>(arg_1.c.x, false, arg_1.a.b.a)))), arg_1.c.x);
    var var_1 = func_2(vec2<i32>(arg_1.a.c, ~62544i), arg_1);
    let var_2 = any(vec2<bool>(var_0, !(!all(vec2<bool>(true, true)))));
    var_1 = func_2(~arg_1.b, Struct_3(Struct_2(select(vec4<bool>(var_1.c.x, arg_0.c.x, false, var_0), vec4<bool>(arg_1.c.x, true, false, var_0), true), arg_1.d, select(67515i ^ var_1.e.x, 33986i, true)), var_1.e.xy, var_1.c, Struct_1(!arg_1.a.a.x, ~u_input.b <= u_input.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_0.d.c - arg_1.d.c)))), vec3<i32>(~min(arg_0.b.x, var_1.a.c), func_2(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.e.x, arg_0.a.c), arg_0.b), func_2(arg_1.b, arg_0)).b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, -1i, -40086i), vec4<i32>(arg_1.e.x, -1i, arg_1.a.c, 0i)), abs(u_input.a)))));
    let var_3 = func_2(_wgslsmith_div_vec2_i32(abs(vec2<i32>(2438i, -2147483647i)), ~(~min(u_input.e, vec2<i32>(arg_1.a.c, 0i)))), func_2(-_wgslsmith_mult_vec2_i32(var_1.b, vec2<i32>(u_input.e.x, -578i)) & ((u_input.c.ww & arg_0.b) >> (vec2<u32>(u_input.b, u_input.d.x) % vec2<u32>(32u))), arg_0));
    return !func_2(var_1.b, func_2(_wgslsmith_mod_vec2_i32(arg_1.e.zz, -u_input.a.zx), func_2(vec2<i32>(0i, arg_0.b.x), var_3))).a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), func_1(Struct_3(Struct_2(vec4<bool>(false, false, false, false), Struct_1(false, false, vec3<f32>(1545f, -1150f, 626f)), u_input.a.x), vec2<i32>(u_input.e.x, u_input.e.x), vec2<bool>(true, true), Struct_1(true, false, vec3<f32>(626f, 1053f, 1000f)), vec3<i32>(-35019i, -13382i, u_input.a.x)), Struct_3(Struct_2(vec4<bool>(true, false, false, false), Struct_1(false, false, vec3<f32>(-293f, -669f, 910f)), -2147483647i), u_input.e, vec2<bool>(false, true), Struct_1(false, true, vec3<f32>(-2149f, -1171f, -847f)), u_input.c.yxy))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_1(func_2(vec2<i32>(-12199i, 5585i), Struct_3(Struct_2(vec4<bool>(false, true, false, false), Struct_1(true, false, vec3<f32>(-613f, 701f, -774f)), u_input.c.x), vec2<i32>(u_input.a.x, u_input.e.x), vec2<bool>(false, false), Struct_1(false, false, vec3<f32>(-484f, -442f, -2402f)), u_input.c.yxz)).d.c.x > _wgslsmith_f_op_f32(356f * 1342f), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(701f, -1997f, 394f), vec3<f32>(475f, 1515f, 1000f))))), _wgslsmith_clamp_i32(min(~u_input.a.x, ~u_input.e.x), 0i, 71207i)), vec2<i32>(-1i, 0i), !func_1(Struct_3(func_2(vec2<i32>(u_input.a.x, 40596i), Struct_3(Struct_2(vec4<bool>(true, true, false, true), Struct_1(true, true, vec3<f32>(1283f, -1105f, -492f)), u_input.a.x), u_input.c.xy, vec2<bool>(true, true), Struct_1(false, false, vec3<f32>(-111f, 1000f, 1981f)), u_input.a.zxy)).a, _wgslsmith_mod_vec2_i32(vec2<i32>(-45720i, u_input.a.x), vec2<i32>(-76996i, 0i)), vec2<bool>(true, true), func_2(vec2<i32>(u_input.c.x, u_input.a.x), Struct_3(Struct_2(vec4<bool>(false, false, false, false), Struct_1(true, true, vec3<f32>(-148f, -469f, 153f)), u_input.e.x), u_input.c.xx, vec2<bool>(false, true), Struct_1(false, true, vec3<f32>(-1065f, -289f, -1367f)), vec3<i32>(-35153i, u_input.e.x, -16239i))).d, vec3<i32>(-9542i, u_input.c.x, u_input.a.x)), func_2(~u_input.a.yw, func_2(vec2<i32>(u_input.c.x, u_input.c.x), Struct_3(Struct_2(vec4<bool>(true, true, true, false), Struct_1(false, true, vec3<f32>(-1008f, -358f, -1236f)), 32228i), u_input.c.xx, vec2<bool>(true, false), Struct_1(false, false, vec3<f32>(727f, 1000f, 1000f)), u_input.c.xzx)))).yx, func_2(firstTrailingBit(-_wgslsmith_clamp_vec2_i32(u_input.a.xw, vec2<i32>(u_input.a.x, u_input.a.x), u_input.c.yw)), func_2(u_input.a.zy, func_2(abs(vec2<i32>(u_input.a.x, 1i)), func_2(vec2<i32>(55139i, -1i), Struct_3(Struct_2(vec4<bool>(true, false, false, false), Struct_1(false, false, vec3<f32>(655f, 1212f, -623f)), 1i), u_input.e, vec2<bool>(false, true), Struct_1(true, false, vec3<f32>(-715f, 301f, -578f)), u_input.c.xyz))))).d, -_wgslsmith_clamp_vec3_i32(~u_input.c.wyz, vec3<i32>(i32(-1i) * -1i, ~2147483647i, ~(-4027i)), min(u_input.a.wxx, abs(u_input.c.xzy))));
    var var_1 = vec2<i32>(firstLeadingBit(_wgslsmith_mult_i32(~1i, ~(-u_input.a.x))), i32(-1i) * -_wgslsmith_sub_i32(u_input.c.x, 0i));
    var var_2 = var_0.a.b;
    var_1 = min(vec2<i32>(var_0.e.x, max(-2147483647i, 64895i)), vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(16709i, var_0.a.c), abs(0i)), u_input.e.x));
    let var_3 = select((_wgslsmith_mod_u32(u_input.d.x, 7900u) >> (u_input.d.x % 32u)) < countOneBits(_wgslsmith_sub_u32(9038u, 1u)), true, all(!(!var_0.a.a))) || all(var_0.a.a);
    let var_4 = Struct_2(select(func_2(var_0.b, func_2(_wgslsmith_sub_vec2_i32(u_input.a.yy, var_0.b), func_2(vec2<i32>(var_0.e.x, 1i), Struct_3(Struct_2(vec4<bool>(var_2.a, var_0.a.a.x, true, var_2.b), var_0.d, var_1.x), vec2<i32>(-7424i, 2147483647i), vec2<bool>(true, true), Struct_1(var_0.c.x, var_2.b, vec3<f32>(-1057f, var_2.c.x, -1000f)), u_input.c.yyz)))).a.a, vec4<bool>(!var_3 || var_3, false, false, false), !vec4<bool>(false, false, all(vec2<bool>(false, false)), var_3)), func_2(vec2<i32>(-var_1.x, firstTrailingBit(11351i)), Struct_3(func_2(vec2<i32>(-1i, var_1.x), Struct_3(var_0.a, vec2<i32>(-44575i, 0i), var_0.c, Struct_1(false, var_3, var_2.c), var_0.e)).a, vec2<i32>(var_1.x, ~var_1.x), vec2<bool>(var_0.c.x & var_0.a.b.a, false), func_2(u_input.e, func_2(vec2<i32>(6377i, -2147483647i), Struct_3(var_0.a, vec2<i32>(-53034i, var_0.e.x), vec2<bool>(false, var_0.d.b), var_0.d, var_0.e))).a.b, vec3<i32>(u_input.a.x, -1i, var_1.x) ^ var_0.e)).a.b, 1i);
    let var_5 = 0u >> (u_input.b % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.x, -1739f, -1636f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c)))), _wgslsmith_dot_vec3_i32(u_input.c.xwx, vec3<i32>(~0i, ~u_input.c.x, func_2(vec2<i32>(var_1.x, 30983i), func_2(vec2<i32>(var_0.a.c, -26876i), Struct_3(var_4, u_input.e, var_0.c, Struct_1(var_2.b, var_2.b, vec3<f32>(var_4.b.c.x, 259f, 1023f)), u_input.c.xwz))).a.c)));
}

