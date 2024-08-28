struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = ~(~select(vec4<u32>(_wgslsmith_sub_u32(u_input.e, 85231u), 21052u, u_input.e, ~u_input.e), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 19190u, u_input.b.x, u_input.e), vec4<u32>(u_input.e, 4294967295u, u_input.e, u_input.e))), vec4<bool>(true, select(false, false, true), true, true)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1129f, -1000f) + -478f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_2 = true & any(vec4<bool>(!all(vec3<bool>(false, true, true)), true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), all(vec2<bool>(true, true))));
    let var_3 = ~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.e, 4294967295u, var_0.x, u_input.e)), min(vec4<u32>(52798u, var_0.x, u_input.e, 54663u), vec4<u32>(0u, 1u, var_0.x, 67671u)) ^ ~vec4<u32>(var_0.x, u_input.b.x, 4294967295u, 3878u)) << (vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(22577u, u_input.b.x, u_input.b.x, var_0.x), vec4<u32>(0u, var_0.x, 21480u, u_input.b.x) ^ vec4<u32>(u_input.e, 68084u, 4294967295u, 0u)), ~103695u), 20429u, firstTrailingBit(countOneBits(_wgslsmith_mult_u32(12505u, 77367u))), 1u | _wgslsmith_add_u32(abs(var_0.x), 1u)) % vec4<u32>(32u));
    let var_4 = _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, ~0u, var_0.x), _wgslsmith_sub_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0.x, 1u, 0u), var_3), ~var_3)), var_3));
    return !select(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(!any(vec3<bool>(true, true, false)), abs(var_4.x) <= _wgslsmith_sub_u32(u_input.e, var_0.x), u_input.e > reverseBits(52944u), all(vec3<bool>(false, true, false))), false);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_3) -> i32 {
    var var_0 = vec3<i32>(arg_0.b.x, 1i, u_input.a) ^ _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.b, arg_0.b), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 7016i, arg_0.b.x), arg_0.b)), -vec3<i32>(u_input.d, 15807i, _wgslsmith_add_i32(arg_0.b.x, -19444i)));
    let var_1 = Struct_1(arg_0.a.x, _wgslsmith_f_op_vec4_f32(arg_3.c.b * arg_3.c.b), abs(_wgslsmith_sub_u32(arg_3.c.c, u_input.e | abs(u_input.b.x))), select(all(arg_1.xx), arg_0.a.x && arg_1.x, any(select(vec3<bool>(false, arg_2.x, arg_3.b), !vec3<bool>(arg_2.x, arg_1.x, false), true))));
    let var_2 = -arg_0.b.x;
    var_0 = arg_0.b | vec3<i32>(var_2, -_wgslsmith_clamp_i32(1110i, 1i, _wgslsmith_mod_i32(u_input.a, var_0.x)), ~_wgslsmith_sub_i32(u_input.a, _wgslsmith_add_i32(-2147483647i, 2147483647i)));
    global1 = -u_input.a;
    return abs(-_wgslsmith_sub_i32(countOneBits(-53048i), 0i));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec4<bool>, arg_3: u32) -> Struct_3 {
    let var_0 = vec3<i32>(_wgslsmith_div_i32(21051i, _wgslsmith_add_i32(-(~1i), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a, -1i), 67725i))), u_input.c, _wgslsmith_clamp_i32(-8254i, _wgslsmith_div_i32(u_input.c, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-39093i, u_input.c, u_input.d), vec3<i32>(u_input.c, -1i, -1i)), u_input.a >> (75270u % 32u))), 0i));
    let var_1 = Struct_2(vec2<bool>(!all(arg_0.e.yyx), !(68729u < arg_3)), vec3<i32>(var_0.x, ~abs(var_0.x) << (0u % 32u), _wgslsmith_clamp_i32(-1i, 11974i, func_4(Struct_2(arg_2.wx, vec3<i32>(u_input.c, var_0.x, 0i)), func_3(), func_3().wy, global0[_wgslsmith_index_u32(12635u, 10u)]))));
    var var_2 = arg_1;
    var var_3 = arg_0.c.b.x;
    global0 = array<Struct_3, 10>();
    return Struct_3(~vec4<u32>(arg_3, ~(~84492u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.b.x, arg_3, 4294967295u), arg_0.a), 34589u), ~u_input.b.x == _wgslsmith_mult_u32(firstTrailingBit(70652u), arg_0.a.x), arg_0.c, arg_2.x, select(arg_0.e, vec4<bool>(false, any(select(vec3<bool>(true, arg_0.b, arg_0.c.d), arg_0.e.zzy, vec3<bool>(true, arg_0.b, arg_2.x))), !(false & var_1.a.x), all(select(vec4<bool>(false, var_1.a.x, var_1.a.x, false), vec4<bool>(true, arg_0.c.a, arg_2.x, false), arg_0.c.a))), arg_0.c.d));
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> bool {
    let var_0 = func_2(Struct_3(arg_0.a, all(arg_0.e.zwz), func_2(global0[_wgslsmith_index_u32(39407u, 10u)], arg_0.c.b.x, func_2(Struct_3(arg_0.a, false, arg_0.c, true, arg_0.e), arg_0.c.b.x, vec4<bool>(arg_0.c.d, arg_0.b, arg_0.d, arg_0.c.d), ~arg_1).e, abs(18088u)).c, arg_0.e.x, vec4<bool>(all(func_2(Struct_3(vec4<u32>(0u, arg_1, u_input.e, 68644u), true, Struct_1(false, arg_0.c.b, 0u, arg_0.b), arg_0.b, arg_0.e), arg_0.c.b.x, vec4<bool>(false, arg_0.e.x, arg_0.c.d, arg_0.b), u_input.b.x).e.yzw), !all(vec4<bool>(arg_0.c.a, arg_0.b, true, arg_0.e.x)), true, false)), 581f, vec4<bool>(all(arg_0.e.wxw), arg_0.b || arg_0.d, all(vec3<bool>(arg_0.c.a, true, arg_0.b)), any(func_3())), ~(~(~(~9120u))));
    var var_1 = func_2(Struct_3(max(vec4<u32>(80715u, _wgslsmith_add_u32(4294967295u, arg_0.c.c), ~var_0.c.c, arg_0.a.x & 765u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.x, u_input.b.x, var_0.c.c, 1u), vec4<u32>(u_input.b.x, 28721u, 29646u, var_0.a.x), arg_0.a) & _wgslsmith_mult_vec4_u32(var_0.a, vec4<u32>(arg_0.c.c, arg_0.a.x, arg_1, 103928u))), arg_0.c.b.x == _wgslsmith_div_f32(_wgslsmith_f_op_f32(1491f * 273f), -1486f), arg_0.c, abs(_wgslsmith_mult_i32(u_input.a, u_input.a)) >= -u_input.a, arg_0.e), _wgslsmith_f_op_f32(var_0.c.b.x - 683f), arg_0.e, ~_wgslsmith_div_u32(4294967295u, 43726u)).e;
    let var_2 = (_wgslsmith_mult_i32(~(-19104i), u_input.d) & 0i) >> (~arg_0.c.c % 32u);
    global0 = array<Struct_3, 10>();
    var var_3 = Struct_2(arg_0.e.wx, abs(vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(u_input.d, var_2, -47902i))));
    return false;
}

fn func_6(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: u32) -> Struct_1 {
    var var_0 = (arg_0.a.xz | ~_wgslsmith_clamp_vec2_u32(arg_0.a.xz, vec2<u32>(1u, arg_0.a.x), vec2<u32>(arg_3, arg_3))) >> (~vec2<u32>(u_input.b.x, reverseBits(u_input.b.x)) % vec2<u32>(32u));
    let var_1 = Struct_2(vec2<bool>(_wgslsmith_f_op_f32(1731f + -1256f) == _wgslsmith_f_op_f32(-arg_0.c.b.x), all(!arg_0.e.xy) | false), vec3<i32>(1i, -u_input.d, u_input.c));
    var_0 = ~_wgslsmith_mod_vec2_u32(abs(arg_0.a.wy), vec2<u32>(var_0.x & max(u_input.b.x, 43737u), _wgslsmith_div_u32(4294967295u, var_0.x)));
    let var_2 = -_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.d, var_1.b.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, arg_3, 4294967295u, 24304u), arg_0.a) % 32u), ~u_input.a | -var_1.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(23043i, -2147483647i, -1i, 0i), vec4<i32>(1i, -9862i, u_input.a, 1i), abs(max(vec4<i32>(2147483647i, 12606i, u_input.c, u_input.c), vec4<i32>(var_1.b.x, 1i, 69946i, u_input.c)))));
    var_0 = ~_wgslsmith_add_vec2_u32(arg_0.a.zy << (abs(arg_0.a.zz) % vec2<u32>(32u)), arg_0.a.wx);
    return Struct_1((_wgslsmith_sub_u32(73812u, max(34208u, arg_3)) <= (~arg_3 << (26866u % 32u))) != !func_3().x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_0.c.b), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1347f, -965f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.c.b.x, 296f, arg_1, 462f), arg_0.c.b))))))), u_input.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -342f))) < _wgslsmith_f_op_f32(-arg_0.c.b.x));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0;
    var_0 = func_6(Struct_3(~abs(vec4<u32>(36807u, var_0.c, var_0.c, var_0.c)) << (firstTrailingBit(~vec4<u32>(var_0.c, arg_0.c, 35054u, arg_0.c)) % vec4<u32>(32u)), var_0.a || func_5(func_2(global0[_wgslsmith_index_u32(arg_0.c, 10u)], 760f, vec4<bool>(var_0.a, true, false, var_0.a), arg_0.c), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0.c, 1u), vec4<u32>(1u, 1u, var_0.c, var_0.c))), func_2(global0[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1649f, -1308f))), vec4<bool>(true, true, var_0.a, true), u_input.e).c, false, func_2(Struct_3(vec4<u32>(1u, arg_0.c, var_0.c, arg_0.c), true, func_2(Struct_3(vec4<u32>(u_input.e, 90746u, 34146u, 0u), true, Struct_1(true, arg_0.b, 1u, arg_0.d), false, vec4<bool>(false, true, false, false)), 672f, vec4<bool>(false, false, false, var_0.d), var_0.c).c, var_0.d, !vec4<bool>(false, true, arg_0.a, true)), _wgslsmith_f_op_f32(floor(-129f)), !vec4<bool>(var_0.a, true, var_0.d, var_0.d), ~(~u_input.e)).e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x - 523f))) + _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x))), true, 0u);
    var var_1 = var_0.c;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1979f))))) + arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.x))));
    global0 = array<Struct_3, 10>();
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    global1 = -_wgslsmith_add_i32(var_0, -17770i);
    var var_1 = ~(u_input.e >> (_wgslsmith_mod_u32(6708u ^ func_1(Struct_1(false, vec4<f32>(258f, 825f, -170f, -1672f), u_input.e, false)), 1u) % 32u));
    global1 = _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-41664i, var_0), firstTrailingBit(vec2<i32>(var_0, u_input.a))), ~vec2<i32>(u_input.a, -1i)), 1i);
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_div_u32(~(~(~u_input.b.x)), ~_wgslsmith_mult_u32(u_input.e << (u_input.e % 32u), ~u_input.e)), _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.e), vec2<u32>(12754u, u_input.e), u_input.b), u_input.b), ~(~(u_input.b.x ^ u_input.b.x))));
    var var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(u_input.e), 10u)];
    var_1 = u_input.e;
    var var_4 = Struct_1(true, var_3.c.b, 57535u, var_3.b);
    var var_5 = -36947i ^ u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, firstTrailingBit(_wgslsmith_add_i32(33530i, 0i))), _wgslsmith_mod_vec2_i32(vec2<i32>(50326i, var_0), vec2<i32>(_wgslsmith_div_i32(var_0, 5235i), ~var_0))), vec3<u32>(~(~0u), countOneBits(4294967295u), func_1(var_3.c)), _wgslsmith_f_op_f32(-var_4.b.x), ~vec3<i32>(-u_input.c, 33336i, ~(-2147483647i)) & max(vec3<i32>(u_input.a, -1i, var_0 >> (u_input.b.x % 32u)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -59088i, var_0), vec3<i32>(1i, var_0, u_input.a))), firstLeadingBit(_wgslsmith_dot_vec4_u32(var_3.a | vec4<u32>(75849u, 355u, 4294967295u, var_4.c), _wgslsmith_mult_vec4_u32(var_3.a, var_3.a)) & 23232u));
}

