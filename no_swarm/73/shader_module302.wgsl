struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_4) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_3.b.b)));
    var var_1 = !(!select(!select(vec4<bool>(arg_3.c.x, true, arg_3.c.x, arg_3.c.x), vec4<bool>(false, arg_3.c.x, arg_3.c.x, arg_3.c.x), vec4<bool>(arg_3.c.x, false, true, arg_3.c.x)), select(vec4<bool>(arg_3.c.x, arg_3.c.x, arg_3.c.x, true), vec4<bool>(true, true, true, true), false), vec4<bool>(arg_3.c.x, arg_2.x <= 32650i, true, true)));
    let var_2 = _wgslsmith_dot_vec2_u32(arg_3.b.c.a.zz, ~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(7676u, arg_1), abs(arg_1)), abs(select(vec2<u32>(arg_1, 4294967295u), arg_3.b.c.a.yy, arg_3.c.x))));
    var_0 = arg_3.b.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.a, -1000f, _wgslsmith_f_op_f32(-348f + var_0.x), arg_3.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 542f)))))));
    return _wgslsmith_sub_vec4_u32(select(arg_3.b.c.a, _wgslsmith_mult_vec4_u32(~select(vec4<u32>(arg_3.b.d.a, 1u, 0u, 3096u), vec4<u32>(var_2, arg_3.b.a.a, 1u, arg_3.b.d.a), vec4<bool>(arg_3.c.x, true, false, false)), ~_wgslsmith_div_vec4_u32(vec4<u32>(8193u, 1u, arg_1, 6559u), arg_3.b.c.a)), !select(select(vec4<bool>(true, var_1.x, arg_3.c.x, var_1.x), vec4<bool>(var_1.x, true, arg_3.c.x, var_1.x), arg_3.c.x), !vec4<bool>(true, true, arg_3.c.x, false), vec4<bool>(arg_3.c.x, var_1.x, false, false))), arg_3.b.c.a);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<bool>) -> Struct_2 {
    return Struct_2(func_3(-abs(-u_input.a), ~1u, vec3<i32>(24428i, 0i, ~u_input.a.x), Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * -194f))), Struct_3(Struct_1(1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1290f, arg_0, -272f)), Struct_2(vec4<u32>(29851u, 1u, 95783u, 30728u), arg_0, Struct_1(4294967295u), Struct_1(8662u), Struct_1(42341u)), Struct_1(1u)), arg_2.zx)), arg_0, Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(16293u, 43581u, 40212u), vec3<u32>(43956u, 76305u, 9242u)) ^ 1u, _wgslsmith_div_u32(func_3(u_input.a, 1u, vec3<i32>(arg_1.x, u_input.a.x, u_input.a.x), Struct_4(-201f, Struct_3(Struct_1(1u), vec3<f32>(-280f, 1295f, -257f), Struct_2(vec4<u32>(13031u, 4294967295u, 1u, 31886u), arg_0, Struct_1(4294967295u), Struct_1(17216u), Struct_1(0u)), Struct_1(52828u)), arg_2.wx)).x, ~4294967295u))), Struct_1(_wgslsmith_div_u32(1u, min(1u, ~21773u))), Struct_1(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 1u, 4294967295u)), vec3<u32>(1u, 1u, 1u))));
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    var var_0 = Struct_1(~arg_0.e.a);
    let var_1 = _wgslsmith_sub_vec2_i32(u_input.a.zy, firstLeadingBit(countOneBits(vec2<i32>(-2147483647i, 0i))));
    var var_2 = Struct_4(1147f, Struct_3(arg_0.d, vec3<f32>(arg_0.b, arg_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1306f)))), arg_0, arg_0.d), select(vec2<bool>(all(vec4<bool>(true, true, true, true)), !select(false, true, false)), select(vec2<bool>(true, arg_0.e.a >= var_0.a), vec2<bool>(all(vec4<bool>(false, true, false, true)), any(vec3<bool>(false, false, true))), vec2<bool>(true, true)), vec2<bool>(true, true)));
    var var_3 = Struct_5(!any(vec2<bool>(!var_2.c.x, var_2.c.x)), var_2.c.x, ~(~vec4<u32>(var_2.b.d.a, var_2.b.c.d.a, 26408u ^ var_0.a, ~23293u)), arg_0.e, ~_wgslsmith_sub_i32(u_input.a.x, var_1.x));
    let var_4 = _wgslsmith_f_op_f32(-1616f * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(-var_2.a)))));
    return Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1036f * _wgslsmith_f_op_f32(trunc(-2502f))) - 191f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_4)) - _wgslsmith_f_op_f32(f32(-1f) * -605f)), -142f)), !all(!vec3<bool>(true, false, var_2.c.x)))), var_2.b, !select(!select(var_2.c, vec2<bool>(true, var_3.a), var_3.a), vec2<bool>(true, var_3.b), 1000f != _wgslsmith_f_op_f32(-177f * var_2.b.b.x)));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_4) -> u32 {
    let var_0 = firstLeadingBit(min(4294967295u, 14u));
    var var_1 = arg_0.x;
    let var_2 = _wgslsmith_add_u32(arg_1.b.d.a, ~(~0u));
    var var_3 = ~vec2<u32>(~var_2, 32584u);
    var_3 = ~arg_1.b.c.a.yx;
    return ~firstLeadingBit(var_3.x);
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_div_i32(abs(_wgslsmith_mult_i32(1i, u_input.a.x)) & -1i, 16862i), 30651i);
    let var_1 = firstTrailingBit(vec4<i32>(var_0, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-32339i, 1i, var_0)), u_input.a.wzx), (383i << (arg_2 % 32u)) & u_input.a.x, firstLeadingBit(-31127i)) << (vec4<u32>(min(arg_2 | arg_2, 15256u), ~(~4294967295u), ~arg_2, min(arg_2 | arg_2, _wgslsmith_clamp_u32(64902u, arg_2, arg_2))) % vec4<u32>(32u)));
    let var_2 = Struct_1(_wgslsmith_div_u32(3863u, func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, 475f) - vec3<f32>(352f, arg_3, arg_3))), func_4(func_2(arg_1.x, vec2<i32>(var_0, 1145i), vec4<bool>(false, true, arg_0, true))))));
    let var_3 = _wgslsmith_mod_vec3_i32(u_input.a.zyw, ~vec3<i32>(u_input.a.x, 2147483647i, -22775i));
    let var_4 = func_4(func_2(arg_1.x, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(26095i, var_0), vec2<i32>(-6168i, var_1.x)), var_1.xw | var_3.xz), ~var_3.zy, reverseBits(vec2<i32>(-42532i, var_0))), vec4<bool>((arg_0 || arg_0) & arg_0, false, !arg_0, false))).b.c;
    return Struct_1(~_wgslsmith_clamp_u32(var_4.a.x, 31153u, func_3(u_input.a, var_2.a, -var_1.xzy, Struct_4(420f, Struct_3(Struct_1(var_4.c.a), vec3<f32>(arg_3, arg_3, arg_3), Struct_2(var_4.a, var_4.b, Struct_1(var_2.a), var_2, Struct_1(var_4.a.x)), var_4.d), vec2<bool>(arg_0, arg_0))).x));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: f32) -> Struct_3 {
    let var_0 = u_input.a.yz;
    let var_1 = _wgslsmith_mult_vec2_u32(~arg_1.c.xx, func_3(_wgslsmith_mod_vec4_i32(-u_input.a, u_input.a ^ select(u_input.a, u_input.a, false)), ~arg_0.a, -u_input.a.yzx, Struct_4(func_4(func_2(arg_3, vec2<i32>(-11203i, 73178i), vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a))).a, Struct_3(func_2(arg_3, var_0, vec4<bool>(arg_1.a, true, arg_1.b, arg_1.b)).d, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(2707f, 1346f, arg_3), vec3<f32>(908f, arg_3, -474f))), Struct_2(arg_1.c, 828f, Struct_1(83289u), arg_0, arg_1.d), func_4(Struct_2(vec4<u32>(arg_2.x, arg_1.d.a, 4294967295u, 42099u), 1000f, arg_0, Struct_1(arg_2.x), arg_0)).b.c.d), !func_4(Struct_2(vec4<u32>(51670u, arg_1.c.x, 58630u, 69213u), arg_3, Struct_1(18453u), Struct_1(21602u), Struct_1(arg_0.a))).c)).yw);
    var var_2 = arg_1.a;
    var var_3 = _wgslsmith_add_u32(0u, 0u);
    var_2 = false;
    return func_4(func_4(Struct_2(reverseBits(func_3(vec4<i32>(u_input.a.x, 1i, u_input.a.x, arg_1.e), 10150u, u_input.a.xwx, Struct_4(arg_3, Struct_3(Struct_1(119626u), vec3<f32>(arg_3, 805f, -419f), Struct_2(vec4<u32>(var_1.x, arg_1.c.x, 4294967295u, 11766u), 796f, arg_1.d, Struct_1(arg_2.x), Struct_1(45262u)), Struct_1(27640u)), vec2<bool>(arg_1.b, true)))), arg_3, func_4(Struct_2(arg_1.c, 1202f, arg_0, Struct_1(arg_1.c.x), Struct_1(arg_1.c.x))).b.d, func_1(arg_1.a && arg_1.b, func_4(Struct_2(vec4<u32>(arg_1.d.a, arg_0.a, arg_0.a, 13143u), arg_3, arg_0, Struct_1(arg_2.x), arg_1.d)).b.b.xx, _wgslsmith_mult_u32(0u, arg_2.x), _wgslsmith_f_op_f32(ceil(arg_3))), arg_1.d)).b.c).b;
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_5) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x)));
    var var_1 = ~vec2<u32>(func_3(vec4<i32>(-arg_2.e, u_input.a.x << (arg_1.a.a % 32u), 1i, -arg_2.e), ~_wgslsmith_dot_vec4_u32(arg_1.c.a, vec4<u32>(arg_1.a.a, 97954u, 0u, 4294967295u)), select(vec3<i32>(arg_2.e, u_input.a.x, u_input.a.x), max(u_input.a.xyw, u_input.a.zwz), true), func_4(arg_1.c)).x, abs(~(arg_2.c.x >> (arg_1.a.a % 32u))));
    var var_2 = func_4(arg_1.c).b.c.d;
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i | _wgslsmith_div_i32(min(-70127i, u_input.a.x), 1i), abs(~(~u_input.a.x))), _wgslsmith_div_vec2_i32(u_input.a.yy, -countOneBits(vec2<i32>(u_input.a.x, arg_2.e))));
    var var_4 = -55033i;
    return firstTrailingBit(~min(arg_2.c, vec4<u32>(68794u, 33200u, 10247u, 4294967295u))) ^ vec4<u32>(1u, var_2.a, ~var_2.a, arg_2.d.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(-_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -14733i), ~u_input.a.wx), 53951i));
    var var_1 = ~_wgslsmith_dot_vec4_u32(func_7(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(560f, -480f, 117f, -1065f), _wgslsmith_div_vec4_f32(vec4<f32>(-253f, 621f, 801f, 1214f), vec4<f32>(-765f, -423f, 249f, 806f)), true)), func_6(func_1(true, vec2<f32>(972f, 763f), 35607u, -583f), Struct_5(true, false, vec4<u32>(4294967295u, 21230u, 1u, 35169u), Struct_1(1u), u_input.a.x), vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(select(-528f, -1530f, false))), Struct_5(all(vec3<bool>(true, true, true)), false, vec4<u32>(0u, 70123u, 4294967295u, 1u), func_2(-1104f, vec2<i32>(36649i, var_0), vec4<bool>(false, false, true, false)).d, var_0)), vec4<u32>(77968u, _wgslsmith_clamp_u32(41608u, 19967u, abs(9411u)), 73777u, 1u));
    var_1 = ~_wgslsmith_mod_u32(13351u, ~39494u);
    let var_2 = func_4(Struct_2(vec4<u32>(_wgslsmith_mod_u32(4294967295u, ~81801u), 4294967295u, func_5(vec3<f32>(-1338f, 1190f, 422f), Struct_4(-1629f, Struct_3(Struct_1(32740u), vec3<f32>(340f, 700f, -1000f), Struct_2(vec4<u32>(0u, 10572u, 4294967295u, 23535u), 1755f, Struct_1(26165u), Struct_1(0u), Struct_1(8497u)), Struct_1(39832u)), vec2<bool>(true, false))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(49893u, 1u), abs(0u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(793f + 694f) - _wgslsmith_f_op_f32(f32(-1f) * -562f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-154f, 156f))), false)), func_6(Struct_1(19468u), Struct_5(true, false, vec4<u32>(1u, 1u, 1u, 1u), func_6(Struct_1(35706u), Struct_5(false, false, vec4<u32>(61808u, 1u, 10467u, 0u), Struct_1(27806u), 0i), vec3<u32>(1u, 4294967295u, 1u), 409f).c.e, u_input.a.x ^ 2147483647i), vec3<u32>(~3742u, func_7(vec4<f32>(1116f, -918f, 826f, -1926f), Struct_3(Struct_1(1u), vec3<f32>(184f, 301f, -131f), Struct_2(vec4<u32>(12760u, 4294967295u, 1u, 4294967295u), 135f, Struct_1(1u), Struct_1(0u), Struct_1(0u)), Struct_1(1u)), Struct_5(true, true, vec4<u32>(38922u, 1u, 1u, 4294967295u), Struct_1(0u), 9670i)).x, _wgslsmith_add_u32(1u, 6883u)), 361f).a, Struct_1(_wgslsmith_clamp_u32(~47508u, _wgslsmith_add_u32(46511u, 17634u), 36881u)), Struct_1(func_6(Struct_1(24179u), Struct_5(true, false, vec4<u32>(68752u, 38943u, 0u, 115062u), Struct_1(0u), 15032i), vec3<u32>(1u, 1u, 1u), -136f).d.a))).b;
    var var_3 = func_4(var_2.c).b;
    var_3 = Struct_3(func_4(var_3.c).b.c.d, var_2.b, var_3.c, func_4(Struct_2(reverseBits(vec4<u32>(var_3.c.e.a, var_2.a.a, var_2.a.a, 52044u)) << (~vec4<u32>(4294967295u, var_3.d.a, var_3.c.c.a, 43158u) % vec4<u32>(32u)), func_6(Struct_1(var_2.d.a), Struct_5(true, false, vec4<u32>(var_3.a.a, 92307u, 4294967295u, var_2.a.a), var_3.c.c, var_0), vec3<u32>(var_2.a.a, 4294967295u, var_2.a.a), _wgslsmith_f_op_f32(min(var_2.c.b, var_2.c.b))).c.b, Struct_1(30647u), func_1(any(vec2<bool>(true, true)), vec2<f32>(-253f, var_2.c.b), _wgslsmith_sub_u32(var_2.a.a, var_3.d.a), _wgslsmith_f_op_f32(floor(var_2.b.x))), var_3.a)).b.a);
    let var_4 = Struct_4(-1291f, var_2, vec2<bool>(!all(vec2<bool>(true, true)), !all(vec4<bool>(true, true, true, true))));
    let var_5 = var_2.b.xx;
    let var_6 = Struct_1(abs(var_3.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-480f + _wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_4.b.b.x)) - _wgslsmith_f_op_f32(-235f + _wgslsmith_div_f32(var_4.a, var_2.b.x))), var_4.b.b.x, _wgslsmith_f_op_f32(-1093f * _wgslsmith_f_op_f32(-var_5.x))), vec4<u32>(var_3.d.a, var_6.a, (~var_2.a.a ^ ~var_3.c.d.a) << (14510u % 32u), ~0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_4.b.b - vec3<f32>(var_2.b.x, var_4.a, var_4.b.c.b)), _wgslsmith_f_op_vec3_f32(max(var_2.b, var_2.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-219f, -431f, var_3.b.x)) * vec3<f32>(var_2.b.x, -356f, var_4.b.b.x)))) - var_3.b), _wgslsmith_mult_u32(var_3.c.a.x & _wgslsmith_mult_u32(func_1(true, vec2<f32>(var_2.b.x, var_4.b.b.x), var_2.c.e.a, var_4.b.c.b).a, ~32627u), firstTrailingBit(var_2.d.a)));
}

