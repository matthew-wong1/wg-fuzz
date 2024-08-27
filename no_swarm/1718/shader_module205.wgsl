struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> f32 {
    var var_0 = Struct_1(vec2<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)), true), -609f, vec3<bool>(any(vec2<bool>(true, true)), true, select(false, true, all(vec3<bool>(true, false, true)) & true)), abs(vec3<i32>(63256i, 15088i, -41919i)));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, 625f))))), var_0.c, vec3<i32>(var_0.d.x & var_0.d.x, _wgslsmith_add_i32(0i, var_0.d.x & 1i), i32(-1i) * -27486i));
    var var_1 = 1i < _wgslsmith_clamp_i32(-firstTrailingBit(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, var_0.d.x)), var_0.d.x, ~(~select(var_0.d.x, 153i, var_0.c.x)));
    var_0 = Struct_1(!var_0.c.zy, _wgslsmith_f_op_f32(floor(arg_0.x)), select(select(vec3<bool>(false, false, true), vec3<bool>(35156i <= var_0.d.x, false, true), true || (var_0.d.x != 0i)), var_0.c, select(vec3<bool>(true, true, false), var_0.c, select(vec3<bool>(var_0.c.x, false, true), !var_0.c, any(vec2<bool>(var_0.a.x, var_0.c.x))))), var_0.d);
    let var_2 = Struct_3(Struct_1(!var_0.c.zz, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))), var_0.c, vec3<i32>(35679i, -_wgslsmith_dot_vec3_i32(var_0.d, vec3<i32>(var_0.d.x, var_0.d.x, -2147483647i)), countOneBits(~var_0.d.x))), Struct_2(~(vec2<u32>(u_input.a, arg_1) | vec2<u32>(u_input.b, arg_1)) ^ vec2<u32>(4294967295u | arg_1, arg_1 ^ 52658u), !var_0.c.x, Struct_1(var_0.c.xz, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b))), select(vec3<bool>(var_0.a.x, true, var_0.c.x), vec3<bool>(true, var_0.c.x, true), select(var_0.c, vec3<bool>(true, var_0.c.x, true), vec3<bool>(false, true, var_0.c.x))), var_0.d)));
    return _wgslsmith_f_op_f32(sign(-1192f));
}

fn func_2() -> Struct_1 {
    let var_0 = ~vec3<u32>(u_input.a, u_input.a, 1u);
    var var_1 = Struct_4(Struct_2(vec2<u32>(abs(4294967295u), 4294967295u), true, Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(857f, 496f, -901f)), ~u_input.a)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), _wgslsmith_clamp_vec3_i32(vec3<i32>(5516i, 1i, 22320i), vec3<i32>(-13640i, -9955i, 1i), vec3<i32>(-2147483647i, -6794i, 19850i)) << (_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, u_input.b), var_0) % vec3<u32>(32u)))), Struct_3(Struct_1(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(f32(-1f) * -1904f), vec3<bool>(true, all(vec4<bool>(false, false, true, true)), true), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -781i, 83833i), vec3<i32>(14894i, -2147483647i, -33886i)), ~(-2147483647i), _wgslsmith_mod_i32(1i, -1519i))), Struct_2(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(28495u, 12452u), var_0.xx), ~var_0.zx, vec2<u32>(50111u, 1u)), true, Struct_1(vec2<bool>(true, true), 530f, select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<i32>(1i, 1i, 1i)))), Struct_2(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, var_0.x), max(var_0.yx, var_0.yy), select(var_0.zy, vec2<u32>(var_0.x, 1u), vec2<bool>(false, false))), true, Struct_1(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, false), true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -938f, true)), vec3<bool>(true, all(vec3<bool>(true, false, false)), all(vec3<bool>(true, false, false))), vec3<i32>(-1i) * -vec3<i32>(28271i, -19006i, -8297i))), -2147483647i);
    var var_2 = var_1.c;
    var_2 = var_1.c;
    var_2 = var_1.b.b;
    return Struct_1(select(!var_1.b.b.c.a, var_2.c.a, !var_2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, var_1.a.c.b))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-277f * 751f) * var_1.b.b.c.b))), select(!var_1.b.a.c, var_2.c.c, var_1.b.a.a.x), _wgslsmith_div_vec3_i32(-vec3<i32>(-var_1.c.c.d.x, ~(-2147483647i), countOneBits(0i)), var_2.c.d));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = firstLeadingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, u_input.b, _wgslsmith_sub_u32(0u, u_input.b), var_0.a.x), ~firstTrailingBit(vec4<u32>(82433u, arg_1.a.x, arg_1.a.x, arg_1.a.x))));
    let var_2 = func_2();
    var var_3 = ~arg_2.d;
    let var_4 = select(var_2.a, !(!select(!arg_0.c.yy, select(vec2<bool>(true, false), vec2<bool>(arg_2.a.x, false), var_2.c.xz), vec2<bool>(var_2.c.x, true))), true);
    return var_2;
}

fn func_1(arg_0: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-629f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1769f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(710f * _wgslsmith_f_op_f32(select(985f, 476f, false)))), _wgslsmith_f_op_f32(trunc(1f))), select(arg_0.a.ww, vec2<bool>(arg_0.c.x, true), vec2<bool>(arg_0.c.x | false, all(select(arg_0.c, arg_0.c, arg_0.a.zz))))));
    let var_1 = ~vec2<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a, u_input.b, 35228u) >> (vec4<u32>(8747u, u_input.a, 1u, 1u) % vec4<u32>(32u)), vec4<u32>(109183u, u_input.a, u_input.a, u_input.a))), u_input.a);
    var var_2 = arg_0.b.zyx;
    var_2 = arg_0.b.yyz;
    var var_3 = func_4(func_2(), Struct_2(vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(67880u), 80051u), 0u), false, func_2()), func_2());
    return Struct_1(!var_3.c.zx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-949f * var_3.b) * _wgslsmith_f_op_f32(1000f + -609f)), arg_0.a.xwx, ~arg_0.b.wyy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_2(vec2<u32>(0u, 1u), any(vec3<bool>(true, true, false)) && select(all(vec2<bool>(true, false)), true, true), func_1(Struct_5(vec4<bool>(true, true, true, true), vec4<i32>(2147483647i, -17300i, 19180i, -6463i), vec2<bool>(false, false)))), Struct_3(func_4(func_4(Struct_1(vec2<bool>(true, true), 400f, vec3<bool>(false, false, true), vec3<i32>(72242i, -17206i, -1i)), Struct_2(vec2<u32>(4294967295u, u_input.b), false, Struct_1(vec2<bool>(true, true), 885f, vec3<bool>(true, false, true), vec3<i32>(1i, -1i, 2147483647i))), func_1(Struct_5(vec4<bool>(true, true, false, false), vec4<i32>(-42566i, 8292i, 0i, -33840i), vec2<bool>(true, true)))), Struct_2(~vec2<u32>(41560u, 3430u), true, Struct_1(vec2<bool>(false, false), 1503f, vec3<bool>(false, true, true), vec3<i32>(-19181i, 0i, 14032i))), func_2()), Struct_2(~select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(33419u, 60531u), vec2<bool>(false, false)), true, func_4(func_1(Struct_5(vec4<bool>(false, true, false, true), vec4<i32>(81210i, -15688i, -29536i, 10196i), vec2<bool>(false, false))), Struct_2(vec2<u32>(u_input.a, 1u), false, Struct_1(vec2<bool>(true, true), 789f, vec3<bool>(true, false, true), vec3<i32>(2147483647i, -1i, 39977i))), func_1(Struct_5(vec4<bool>(true, false, true, false), vec4<i32>(0i, -37163i, -6166i, -1i), vec2<bool>(true, true)))))), Struct_2(vec2<u32>(19602u ^ _wgslsmith_mod_u32(u_input.b, u_input.a), ~855u), true, Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -477f) * _wgslsmith_f_op_f32(f32(-1f) * -972f)), vec3<bool>(false, true, true), select(abs(vec3<i32>(0i, -10498i, 33320i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 32007i, 1i), vec3<i32>(0i, 1i, -11243i)), false))), 1i);
    var var_1 = Struct_3(var_0.b.b.c, var_0.b.b);
    var_1 = Struct_3(func_4(func_4(func_2(), Struct_2(_wgslsmith_clamp_vec2_u32(var_0.c.a, vec2<u32>(var_1.b.a.x, 1u), var_1.b.a), 1u != u_input.a, func_2()), var_0.b.a), Struct_2(_wgslsmith_div_vec2_u32(select(var_0.a.a, vec2<u32>(u_input.a, var_1.b.a.x), var_0.a.c.a.x), _wgslsmith_add_vec2_u32(vec2<u32>(var_1.b.a.x, var_0.a.a.x), vec2<u32>(4294967295u, var_0.a.a.x))), (var_0.b.a.a.x == var_1.a.c.x) | true, Struct_1(var_0.b.a.c.yy, -360f, var_1.b.c.c, vec3<i32>(8656i, 72276i, var_0.d) << (vec3<u32>(u_input.b, u_input.b, 4294967295u) % vec3<u32>(32u)))), func_4(func_4(var_0.a.c, Struct_2(vec2<u32>(69177u, u_input.a), false, Struct_1(var_0.b.b.c.a, -1369f, var_0.b.a.c, var_0.a.c.d)), Struct_1(vec2<bool>(false, var_1.a.c.x), 1263f, vec3<bool>(var_1.b.c.a.x, true, var_0.a.b), var_1.b.c.d)), var_1.b, func_2())), var_1.b);
    let var_2 = vec4<i32>(2147483647i, var_0.a.c.d.x, var_1.b.c.d.x, -1i);
    var var_3 = select(~_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(var_0.c.c.d.x, -20779i, var_2.x)), vec3<i32>(0i, 36422i, var_2.x), var_2.zxw), _wgslsmith_mod_vec3_i32(var_0.a.c.d << (vec3<u32>(var_0.a.a.x, var_1.b.a.x, 36696u) % vec3<u32>(32u)), -vec3<i32>(var_2.x, -7676i, 33170i))), _wgslsmith_div_vec3_i32(abs(_wgslsmith_add_vec3_i32(-vec3<i32>(var_1.a.d.x, var_0.d, -1i), select(vec3<i32>(var_0.a.c.d.x, var_1.b.c.d.x, 0i), var_0.c.c.d, false))), var_2.www), false);
    var_1 = var_0.b;
    var var_4 = firstTrailingBit(1u);
    let var_5 = ~(var_2 ^ var_2);
    let x = u_input.a;
    s_output = StorageBuffer(abs(9357i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c.b))), var_0.b.a.b), var_5.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(640f, var_1.b.c.b) - vec2<f32>(var_1.b.c.b, 1279f)), vec2<f32>(551f, var_1.b.c.b)) * vec2<f32>(_wgslsmith_f_op_f32(-333f + var_1.b.c.b), _wgslsmith_f_op_f32(var_0.c.c.b + 1000f))))), var_2 | vec4<i32>(44211i, 2147483647i, 5390i, -_wgslsmith_clamp_i32(var_1.b.c.d.x, -1i, -64998i)));
}

