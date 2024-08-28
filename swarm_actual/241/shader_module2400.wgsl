struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = 2644f;
    var var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -601f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1666f)))) < arg_0.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(arg_0));
    return countOneBits(241i);
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> Struct_1 {
    var var_0 = -u_input.a;
    var var_1 = u_input.b << (_wgslsmith_mod_u32(~4294967295u, abs(~u_input.b)) % 32u);
    var var_2 = ~(~0u);
    var var_3 = ~(~(~firstTrailingBit(max(vec2<u32>(49263u, u_input.b), vec2<u32>(u_input.c, u_input.b)))));
    let var_4 = ~vec3<u32>(~8285u, 95345u, 22269u);
    return Struct_1(4294967295u, select(vec2<bool>(true, true), select(select(arg_2.zy, select(arg_2.xx, vec2<bool>(arg_1, false), vec2<bool>(arg_2.x, arg_1)), !arg_1), arg_2.yx, !arg_2.zx), !arg_2.xz), vec3<i32>(arg_0.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(func_3(vec2<f32>(-202f, -209f)), 0i), select(max(arg_0.x, arg_0.x), -23789i, true)), u_input.a), 0i);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    let var_0 = Struct_3(-2147483647i, vec2<i32>(-41688i, ~func_3(_wgslsmith_f_op_vec2_f32(step(arg_1.e.ww, arg_1.e.zz)))), _wgslsmith_f_op_f32(-arg_1.e.x));
    var var_1 = firstLeadingBit(-2147483647i);
    let var_2 = reverseBits(~_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 4294967295u), abs(_wgslsmith_sub_vec2_u32(arg_0.xz, arg_0.wy))));
    var_1 = arg_1.a.c.x;
    var_1 = min(var_0.b.x, -29610i) ^ 1i;
    return var_0;
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: Struct_5) -> Struct_4 {
    let var_0 = -2147483647i;
    return Struct_4(arg_3.a.a, _wgslsmith_mod_vec2_u32(~countOneBits(vec2<u32>(arg_3.a.d, 1u) & vec2<u32>(arg_3.a.c.a, u_input.b)), ~(~min(vec2<u32>(30053u, u_input.b), vec2<u32>(77700u, u_input.b)))));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_4) -> Struct_2 {
    let var_0 = false;
    var var_1 = arg_1.a.c.yz;
    return Struct_2(func_5(-1000f, Struct_3(27238i, arg_1.a.c.zz, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(2043f)), 1000f))), arg_0.x, Struct_5(Struct_2(Struct_1(u_input.b, arg_0.yw, arg_1.a.c, 61132i), select(vec4<bool>(true, arg_0.x, arg_0.x, true), arg_0, vec4<bool>(true, true, var_0, true)), Struct_1(arg_1.b.x, vec2<bool>(true, false), vec3<i32>(2147483647i, var_1.x, arg_1.a.c.x), arg_1.a.d), min(0u, 23008u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-663f, 1081f, -1466f, -693f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1167f, -2587f, -352f)))))).a, select(vec4<bool>(func_2(-vec4<i32>(u_input.a, arg_1.a.d, -2147483647i, -16031i), !arg_1.a.b.x, vec3<bool>(true, true, var_0), countOneBits(0i)).b.x, true, all(func_2(vec4<i32>(2147483647i, u_input.a, -1274i, u_input.a), true, vec3<bool>(false, arg_1.a.b.x, false), var_1.x).b), countOneBits(arg_1.b.x) >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.c, 4294967295u), vec3<u32>(1u, 35359u, 1u))), arg_0, select(arg_0, arg_0, func_5(_wgslsmith_f_op_f32(-1527f - -993f), func_4(vec4<u32>(arg_1.a.a, 4294967295u, u_input.b, u_input.b), Struct_2(Struct_1(arg_1.b.x, arg_1.a.b, vec3<i32>(var_1.x, -4101i, 32561i), 176i), arg_0, arg_1.a, u_input.c, vec4<f32>(721f, 212f, 1000f, -328f)), Struct_1(32537u, vec2<bool>(false, false), arg_1.a.c, 1i)), true, Struct_5(Struct_2(arg_1.a, arg_0, arg_1.a, 0u, vec4<f32>(-778f, -877f, 245f, 1467f)), vec3<f32>(-1136f, 1026f, -510f))).a.b.x)), Struct_1(8435u ^ ~(~arg_1.a.a), select(arg_1.a.b, select(arg_0.zz, select(arg_1.a.b, arg_0.xw, arg_0.x), func_2(vec4<i32>(-2147483647i, 2147483647i, -2147483647i, u_input.a), true, arg_0.xxz, u_input.a).b.x), func_5(_wgslsmith_f_op_f32(f32(-1f) * -1408f), Struct_3(u_input.a, vec2<i32>(arg_1.a.d, -2147483647i), -794f), false, Struct_5(Struct_2(arg_1.a, vec4<bool>(var_0, true, false, true), arg_1.a, 14044u, vec4<f32>(-101f, -288f, 746f, 1444f)), vec3<f32>(-330f, -611f, 1694f))).a.b), _wgslsmith_mod_vec3_i32(-_wgslsmith_mult_vec3_i32(arg_1.a.c, arg_1.a.c), vec3<i32>(countOneBits(arg_1.a.d), min(258i, -2147483647i), func_2(vec4<i32>(-20597i, u_input.a, u_input.a, -21570i), var_0, arg_0.zxw, u_input.a).c.x)), -_wgslsmith_dot_vec3_i32(arg_1.a.c, select(vec3<i32>(u_input.a, 5444i, u_input.a), vec3<i32>(arg_1.a.c.x, 1i, 4871i), true))), ~arg_1.a.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(100f, 447f, 1991f, -949f), _wgslsmith_f_op_vec4_f32(vec4<f32>(468f, -1780f, -1503f, -382f) + vec4<f32>(-665f, 182f, 1000f, -358f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), !(true && var_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2079f * -324f), -236f, _wgslsmith_f_op_f32(f32(-1f) * -736f), _wgslsmith_f_op_f32(sign(432f))))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_6(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, !(u_input.b > u_input.c), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)), false)), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -299f) + _wgslsmith_f_op_f32(f32(-1f) * -335f)), func_4(vec4<u32>(u_input.c >> (u_input.b % 32u), u_input.b, 32289u, ~0u), Struct_2(Struct_1(1u, vec2<bool>(true, false), vec3<i32>(u_input.a, u_input.a, 2147483647i), 1i), vec4<bool>(true, true, true, true), Struct_1(u_input.b, vec2<bool>(true, false), vec3<i32>(u_input.a, -2147483647i, 10119i), u_input.a), _wgslsmith_mult_u32(u_input.c, u_input.b), vec4<f32>(-578f, 797f, -869f, -1080f)), func_2(min(vec4<i32>(u_input.a, -3234i, u_input.a, u_input.a), vec4<i32>(25320i, -37036i, 36595i, -22965i)), true, vec3<bool>(false, false, true), firstLeadingBit(-24780i))), false, Struct_5(Struct_2(func_2(vec4<i32>(-8874i, 1i, u_input.a, 2147483647i), true, vec3<bool>(false, false, true), u_input.a), vec4<bool>(true, true, true, true), func_2(vec4<i32>(2147483647i, -1i, -13308i, u_input.a), false, vec3<bool>(true, true, true), u_input.a), _wgslsmith_sub_u32(u_input.b, u_input.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1009f, -1279f, 621f, 114f) + vec4<f32>(-1658f, -1791f, 623f, -106f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1527f, -699f, -1794f))))));
    var_0 = Struct_2(var_0.a, vec4<bool>(false && var_0.b.x, var_0.b.x, any(select(select(vec4<bool>(false, var_0.b.x, false, var_0.b.x), var_0.b, var_0.b), func_6(var_0.b, Struct_4(Struct_1(6483u, var_0.c.b, var_0.a.c, 1i), vec2<u32>(u_input.b, var_0.d))).b, var_0.a.b.x)), true), var_0.a, u_input.b >> (var_0.d % 32u), vec4<f32>(_wgslsmith_f_op_f32(var_0.e.x - _wgslsmith_f_op_f32(-var_0.e.x)), var_0.e.x, -1000f, var_0.e.x));
    var var_1 = func_5(_wgslsmith_f_op_f32(round(-170f)), func_4(reverseBits(~abs(vec4<u32>(0u, var_0.c.a, var_0.c.a, var_0.d))), Struct_2(var_0.c, var_0.b, Struct_1(1u ^ u_input.b, var_0.b.zx, -vec3<i32>(-2147483647i, u_input.a, -1i), reverseBits(-35970i)), abs(19111u) << (1u % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.e.x, var_0.e.x, -1829f, 970f), var_0.e)) * _wgslsmith_f_op_vec4_f32(-var_0.e))), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d, 0u), vec2<u32>(1u, 0u)), vec2<bool>(func_6(vec4<bool>(true, var_0.c.b.x, var_0.b.x, var_0.c.b.x), Struct_4(var_0.a, vec2<u32>(var_0.d, 8190u))).a.b.x, all(vec2<bool>(false, false))), func_2(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), select(true, var_0.a.b.x, false), vec3<bool>(var_0.a.b.x, var_0.a.b.x, true), var_0.a.d).c, _wgslsmith_add_i32(~var_0.c.d, 1i))), var_0.b.x | select(true, (var_0.e.x != var_0.e.x) && (var_0.c.b.x && true), true), Struct_5(func_6(!var_0.b, func_5(-423f, Struct_3(var_0.a.c.x, var_0.a.c.xy, -718f), func_6(vec4<bool>(var_0.a.b.x, false, var_0.a.b.x, true), Struct_4(Struct_1(u_input.b, vec2<bool>(false, true), vec3<i32>(2147483647i, -16033i, -1i), 2147483647i), vec2<u32>(0u, u_input.b))).b.x, Struct_5(Struct_2(Struct_1(533u, var_0.a.b, var_0.a.c, 1i), vec4<bool>(var_0.a.b.x, var_0.c.b.x, true, var_0.c.b.x), Struct_1(u_input.b, vec2<bool>(var_0.c.b.x, var_0.b.x), vec3<i32>(1i, 15742i, var_0.c.c.x), u_input.a), u_input.b, var_0.e), vec3<f32>(var_0.e.x, var_0.e.x, var_0.e.x)))), _wgslsmith_f_op_vec3_f32(var_0.e.yxw + vec3<f32>(-750f, 146f, _wgslsmith_f_op_f32(-var_0.e.x)))));
    let var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, func_6(vec4<bool>(var_0.b.x, true, var_1.a.b.x, false), Struct_4(Struct_1(var_1.a.a, var_1.a.b, var_1.a.c, 0i), var_1.b)).a.c.x, countOneBits(u_input.a), func_6(var_0.b, Struct_4(var_0.a, var_1.b)).a.c.x), _wgslsmith_div_vec4_i32(~vec4<i32>(var_0.a.c.x, var_0.a.c.x, 0i, 1i), vec4<i32>(-41126i, -27235i, -2147483647i, u_input.a)), !(!vec4<bool>(true, var_1.a.b.x, true, var_1.a.b.x))), -(vec4<i32>(-1i) * -vec4<i32>(var_0.a.c.x, 2147483647i, var_1.a.c.x, 27933i))), ~1i);
    var_1 = func_5(_wgslsmith_f_op_f32(trunc(-654f)), Struct_3(-2147483647i, min(vec2<i32>(u_input.a, var_2.x), var_0.c.c.xx) ^ ((var_2 | vec2<i32>(2147483647i, -61976i)) ^ var_1.a.c.yx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.e.x)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e.x, var_0.e.x) * -448f))), _wgslsmith_f_op_f32(var_0.e.x + 1000f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1035f) - -966f), Struct_5(Struct_2(Struct_1(var_0.a.a, select(var_1.a.b, var_1.a.b, var_1.a.b), vec3<i32>(var_2.x, var_0.a.d, -54831i), _wgslsmith_add_i32(var_1.a.c.x, var_2.x)), vec4<bool>(false, true, true, true), var_1.a, _wgslsmith_div_u32(0u << (var_1.a.a % 32u), 4294967295u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.e * var_0.e) + vec4<f32>(var_0.e.x, -644f, -716f, 1214f))), vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(var_0.e.x * func_6(var_0.b, Struct_4(var_0.a, var_1.b)).e.x), func_6(!vec4<bool>(var_0.b.x, var_0.c.b.x, false, false), Struct_4(Struct_1(u_input.c, var_0.a.b, var_0.a.c, -1i), vec2<u32>(98043u, u_input.b))).e.x)));
    return func_6(!func_6(!(!var_0.b), Struct_4(func_2(vec4<i32>(1690i, 27011i, var_0.a.d, -94368i), var_1.a.b.x, vec3<bool>(var_1.a.b.x, false, true), 0i), firstLeadingBit(vec2<u32>(1u, 1u)))).b, func_5(_wgslsmith_f_op_f32(func_4(vec4<u32>(var_0.a.a, 1u, var_0.c.a, u_input.c), Struct_2(Struct_1(var_1.b.x, vec2<bool>(true, false), vec3<i32>(var_1.a.c.x, -1i, -41694i), -2147483647i), var_0.b, Struct_1(var_1.b.x, vec2<bool>(false, true), var_0.c.c, 10350i), 19078u, var_0.e), var_1.a).c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(427f, var_0.e.x, var_0.b.x)) + _wgslsmith_div_f32(-659f, var_0.e.x))), Struct_3(2147483647i, var_2 << (select(vec2<u32>(1u, u_input.c), var_1.b, false) % vec2<u32>(32u)), 141f), true, Struct_5(Struct_2(func_5(897f, Struct_3(var_0.c.d, vec2<i32>(u_input.a, u_input.a), 2284f), var_1.a.b.x, Struct_5(Struct_2(var_1.a, var_0.b, var_1.a, var_1.a.a, vec4<f32>(var_0.e.x, -989f, 2115f, var_0.e.x)), vec3<f32>(-1000f, var_0.e.x, 1084f))).a, var_0.b, func_2(vec4<i32>(-49973i, var_2.x, 40135i, -2147483647i), false, vec3<bool>(var_0.c.b.x, true, true), u_input.a), ~4294967295u, var_0.e), var_0.e.yyw)));
}

fn func_7(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-arg_3.e);
    var_0 = _wgslsmith_f_op_vec4_f32(-arg_3.e);
    let var_1 = Struct_5(arg_3, var_0.xzz);
    let var_2 = -392f;
    var var_3 = !any(arg_1.b.yww);
    return ~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(73468u, var_1.a.d, 0u), vec3<u32>(u_input.b, arg_3.a.a, 34601u)) & ~firstTrailingBit(vec3<u32>(21589u, 1u, 24380u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, _wgslsmith_mult_i32(-12809i, -36363i), 1i), -(min(vec3<i32>(u_input.a, 0i, 9404i), vec3<i32>(u_input.a, u_input.a, u_input.a)) & vec3<i32>(1i, -18524i, u_input.a)));
    let var_1 = vec3<u32>(4294967295u, ~(_wgslsmith_mult_u32(u_input.c, 4294967295u) << (u_input.b % 32u)), u_input.c) | func_7(true || (6430i != firstTrailingBit(3407i)), func_1(), _wgslsmith_mult_u32(countOneBits(85308u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(u_input.c, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, u_input.b), vec2<u32>(100446u, 0u)))), func_6(func_6(func_6(vec4<bool>(false, true, false, true), Struct_4(Struct_1(4294967295u, vec2<bool>(true, true), vec3<i32>(-40643i, -44174i, 1i), 38737i), vec2<u32>(u_input.c, u_input.b))).b, func_5(449f, Struct_3(15640i, vec2<i32>(var_0, -9642i), 1392f), true, Struct_5(Struct_2(Struct_1(u_input.c, vec2<bool>(false, false), vec3<i32>(u_input.a, u_input.a, -11123i), u_input.a), vec4<bool>(false, true, false, false), Struct_1(6878u, vec2<bool>(true, false), vec3<i32>(1i, -2147483647i, u_input.a), var_0), 4294967295u, vec4<f32>(-1204f, -884f, -658f, -634f)), vec3<f32>(-442f, 504f, 1113f)))).b, func_5(_wgslsmith_div_f32(-210f, -318f), func_4(vec4<u32>(u_input.b, 4294967295u, 84220u, u_input.c), Struct_2(Struct_1(1217u, vec2<bool>(false, false), vec3<i32>(-24516i, 29341i, -96795i), 22598i), vec4<bool>(true, true, false, true), Struct_1(0u, vec2<bool>(true, true), vec3<i32>(var_0, u_input.a, u_input.a), u_input.a), 0u, vec4<f32>(-245f, 114f, 1623f, -905f)), Struct_1(54877u, vec2<bool>(false, false), vec3<i32>(26217i, u_input.a, var_0), 3406i)), true, Struct_5(Struct_2(Struct_1(u_input.c, vec2<bool>(true, false), vec3<i32>(19268i, -9692i, u_input.a), var_0), vec4<bool>(true, false, false, true), Struct_1(u_input.c, vec2<bool>(true, true), vec3<i32>(-1i, var_0, -2147483647i), 2178i), 19410u, vec4<f32>(278f, 160f, 1253f, -398f)), vec3<f32>(1295f, -2025f, -176f)))));
    var var_2 = Struct_5(func_6(!vec4<bool>(false, true, true, all(vec4<bool>(true, false, true, true))), func_5(_wgslsmith_f_op_f32(f32(-1f) * -1699f), func_4(reverseBits(vec4<u32>(1u, var_1.x, var_1.x, 0u)), func_1(), func_5(-541f, Struct_3(u_input.a, vec2<i32>(var_0, u_input.a), -1226f), true, Struct_5(Struct_2(Struct_1(65065u, vec2<bool>(false, true), vec3<i32>(-6410i, -49221i, -1i), -2147483647i), vec4<bool>(true, true, false, true), Struct_1(u_input.c, vec2<bool>(false, true), vec3<i32>(u_input.a, 1i, var_0), 0i), 0u, vec4<f32>(-489f, -1855f, -1000f, 324f)), vec3<f32>(-2131f, 1441f, -967f))).a), true, Struct_5(func_6(vec4<bool>(true, true, false, false), Struct_4(Struct_1(u_input.b, vec2<bool>(false, true), vec3<i32>(var_0, 2147483647i, 0i), -2147483647i), var_1.yz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2172f, -1454f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-440f, 560f, 1816f) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-832f, 1000f, -874f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-283f, 821f, -368f)) + vec3<f32>(-1046f, 1365f, 473f))))));
    let var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(3144u, var_2.a.c.a, 4294967295u, _wgslsmith_mult_u32(var_2.a.d, ~var_2.a.d)), vec4<u32>(7691u | _wgslsmith_add_u32(var_2.a.c.a, 1u), var_2.a.c.a, 28469u, var_2.a.c.a << (firstTrailingBit(28398u) % 32u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 16062u, var_2.a.c.a, _wgslsmith_mod_u32(34786u, 4294967295u)), select(~vec4<u32>(1923u, 0u, 1u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, var_1.x, 4294967295u, var_2.a.c.a), vec4<u32>(var_1.x, u_input.c, var_2.a.c.a, u_input.b), vec4<u32>(u_input.b, 54711u, 0u, 43858u)), false))) | ((_wgslsmith_add_vec4_u32(min(vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(1u, 4294967295u, 43272u, var_2.a.a.a)), select(vec4<u32>(var_2.a.c.a, 0u, 96191u, u_input.c), vec4<u32>(10231u, var_1.x, var_1.x, var_1.x), true)) & max(~vec4<u32>(var_2.a.c.a, 4294967295u, u_input.b, 0u), vec4<u32>(var_1.x, 96769u, 25345u, 0u))) >> (reverseBits(abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, u_input.b, 1u, 41932u), vec4<u32>(101671u, 3315u, 85171u, var_1.x)))) % vec4<u32>(32u)));
    var_2 = Struct_5(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_2.b))));
    var var_4 = func_2(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-14768i, -22912i), 0i) & var_0, 18403i, var_0, _wgslsmith_dot_vec4_i32(min(~vec4<i32>(-32999i, 16354i, var_0, u_input.a), select(vec4<i32>(0i, var_2.a.c.c.x, var_0, var_2.a.c.d), vec4<i32>(13779i, var_0, 2147483647i, 17549i), var_2.a.b.x)), vec4<i32>(u_input.a, var_0, _wgslsmith_clamp_i32(-12796i, -2147483647i, u_input.a), ~(-13776i)))), func_6(!var_2.a.b, func_5(var_2.b.x, func_4(var_3, var_2.a, var_2.a.a), true, Struct_5(var_2.a, var_2.a.e.zwx))).a.b.x && (var_2.a.c.b.x | ((var_1.x ^ var_2.a.c.a) >= min(var_2.a.d, 4294967295u))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) - _wgslsmith_f_op_f32(433f * -1000f)) < var_2.a.e.x, var_2.a.b.x, all(var_2.a.b.zzx)), u_input.a);
    var var_5 = firstLeadingBit(1i | _wgslsmith_mod_i32(u_input.a, var_4.c.x));
    var_5 = 1i;
    var_5 = -var_2.a.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, func_5(var_2.b.x, Struct_3(func_5(-858f, Struct_3(var_4.d, var_2.a.a.c.xx, -1320f), true, Struct_5(var_2.a, var_2.b)).a.d, _wgslsmith_mult_vec2_i32(var_4.c.xz, ~var_2.a.c.c.zx), var_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -726f) == var_2.b.x, Struct_5(func_6(var_2.a.b, Struct_4(var_2.a.a, var_1.zx)), func_1().e.yzz)).b.x, var_2.a.c.c.zy | select(abs(vec2<i32>(var_0, u_input.a) << (var_1.yx % vec2<u32>(32u))), vec2<i32>(~2147483647i, -33807i), !(true != var_2.a.c.b.x)));
}

