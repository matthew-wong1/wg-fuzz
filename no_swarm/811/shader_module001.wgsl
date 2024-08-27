struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<i32> {
    let var_0 = !arg_2.e.yyw;
    global0 = vec3<i32>(u_input.a, firstTrailingBit(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 30468i, -2147483647i, global0.x), vec4<i32>(u_input.a, -1i, -1i, -1i)))), abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_2.b, 16753i), vec3<i32>(1i, 16393i, u_input.a)), u_input.a, 51661i)) ^ _wgslsmith_mod_i32(u_input.a, -u_input.a));
    var var_1 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, ~(~91452u), arg_1 >> (_wgslsmith_div_u32(u_input.c, arg_2.d.x) % 32u)), abs(~_wgslsmith_mult_vec3_u32(u_input.b.yyy, vec3<u32>(0u, arg_2.d.x, 52068u))));
    return firstTrailingBit(abs(vec3<i32>(-17555i, ~(~17673i), (arg_3.x ^ 0i) ^ reverseBits(arg_3.x))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>) -> i32 {
    global0 = _wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(81815i, u_input.a, u_input.a) | _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, u_input.a, global0.x), vec3<i32>(-1i, u_input.a, 1i)), min(vec3<i32>(u_input.a, global0.x, u_input.a), vec3<i32>(global0.x, -33565i, 1i)) & -vec3<i32>(0i, global0.x, -2147483647i)), 0i), countOneBits(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(612f, -498f, -1043f) + vec3<f32>(-215f, -1876f, -885f)), 1u, Struct_1(vec3<u32>(u_input.e, arg_0.x, 40467u), u_input.a, 352f, arg_0, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), min(vec3<i32>(-28981i, 2147483647i, u_input.a), vec3<i32>(global0.x, global0.x, 2147483647i)))) << (min(~_wgslsmith_mod_vec3_u32(u_input.d, u_input.d), ~vec3<u32>(arg_0.x, arg_0.x, u_input.d.x)) % vec3<u32>(32u)));
    let var_0 = global0.x;
    var var_1 = reverseBits(u_input.a);
    var var_2 = ~(~(~select(arg_0.x, u_input.c, true))) << (~_wgslsmith_add_u32(_wgslsmith_mod_u32(13247u, abs(1u)), arg_0.x) % 32u);
    var_2 = ~2994u;
    return global0.x;
}

fn func_1() -> i32 {
    global0 = vec3<i32>(u_input.a, _wgslsmith_div_i32(~func_2(vec2<u32>(35704u, u_input.c), vec3<bool>(true, true, true)) ^ ~(-7224i), 35894i), firstLeadingBit(global0.x));
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(346f, -462f), vec2<f32>(1828f, -788f))))), vec2<f32>(_wgslsmith_f_op_f32(524f - -128f), _wgslsmith_f_op_f32(f32(-1f) * -558f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-318f, -1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1311f, 1078f))) - vec2<f32>(_wgslsmith_f_op_f32(-301f * 1000f), -2007f))), ~(-1234i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_f_op_f32(122f - -346f)))), _wgslsmith_f_op_f32(abs(-1901f)))), ~(~u_input.b.yx));
    let var_1 = global0.xx;
    let var_2 = Struct_5(var_0);
    var var_3 = -vec3<i32>(_wgslsmith_mult_i32(abs(~(-60222i)), u_input.a), _wgslsmith_mult_i32(var_0.b, -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_2.a.b, var_0.b, var_2.a.b), vec4<i32>(-41350i, var_2.a.b, -7734i, var_1.x))), ~_wgslsmith_mult_i32(~34216i, -60794i));
    return abs(_wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_1.x, -1i), vec3<i32>(var_0.b, 4012i, -11166i), vec3<i32>(var_2.a.b, -2147483647i, var_3.x)), ~vec3<i32>(1i, var_2.a.b, var_3.x)), i32(-1i) * -reverseBits(-32753i)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: i32) -> vec2<f32> {
    global0 = -_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a | arg_2, -2147483647i, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(12338i, 10110i, arg_2), select(vec3<i32>(u_input.a, -8875i, -44857i), vec3<i32>(1i, -2147483647i, 30247i), vec3<bool>(false, false, true)))), min(abs(vec3<i32>(78792i, global0.x, -2147483647i)), vec3<i32>(0i, -1519i, u_input.a)) >> (max(select(u_input.b.wwx, u_input.b.yyy, vec3<bool>(true, false, false)), ~vec3<u32>(27585u, 24506u, 1u)) % vec3<u32>(32u)));
    var var_0 = !vec2<bool>(false, any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)) && any(vec4<bool>(true, true, true, true)));
    var var_1 = vec2<u32>(1u, ~abs(1u)) & ~u_input.d.yx;
    var_1 = arg_0.yx;
    let var_2 = -2147483647i;
    return vec2<f32>(-817f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-245f, _wgslsmith_f_op_f32(f32(-1f) * -2576f)))))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_2) -> Struct_4 {
    let var_0 = 4892u;
    global0 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(arg_2.b.b, 1i), abs(select(global0.x, 1i, arg_1.e.x)), u_input.a), ~_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(-14748i, -18548i, 0i)), -vec3<i32>(arg_2.b.b, arg_2.b.b, arg_0.a.b)));
    let var_1 = ~(vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(69440u, 24756u), arg_0.a.d)) << (vec2<u32>(_wgslsmith_mult_u32(arg_0.a.d.x, arg_0.a.d.x & arg_0.a.d.x), ~arg_1.a.x) % vec2<u32>(32u)));
    var var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_2.b.c)) + -192f), -905f), func_2(max(~(~vec2<u32>(arg_2.a.x, arg_1.a.x)), vec2<u32>(_wgslsmith_mod_u32(6571u, var_0), _wgslsmith_add_u32(u_input.d.x, 42066u))), !select(!vec3<bool>(false, arg_2.b.e.x, true), select(arg_2.b.e.yyy, arg_1.e.wwz, false), !arg_2.b.e.zyx)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1002f - _wgslsmith_f_op_f32(1000f - arg_2.b.c)), arg_1.c))), var_1);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a.a.x, arg_1.c, 1928f), _wgslsmith_f_op_vec3_f32(vec3<f32>(443f, -1583f, 1221f) * vec3<f32>(arg_2.b.c, arg_1.c, 127f)))), vec3<f32>(arg_2.b.c, _wgslsmith_f_op_f32(-545f + arg_0.a.c), _wgslsmith_f_op_f32(sign(692f))), vec3<bool>(all(vec2<bool>(false, false)), all(arg_1.e), all(vec3<bool>(false, arg_1.e.x, arg_1.e.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(390f, 1519f, var_2.c)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.b.c, 563f, arg_0.a.c), vec3<f32>(var_2.a.x, 1387f, -369f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(262f, 1977f, 148f), vec3<f32>(253f, 2201f, -739f), arg_2.b.e.x)) + vec3<f32>(var_2.a.x, -566f, 750f)))));
    return Struct_4(~max(-16319i, ~arg_2.b.b), select(~abs(vec2<u32>(44927u, var_2.d.x)), vec2<u32>(~(~arg_1.a.x), arg_1.d.x), !(!(!vec2<bool>(false, arg_2.b.e.x)))), vec3<i32>(countOneBits(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, -744f)), max(4294967295u, arg_2.a.x), Struct_1(vec3<u32>(1u, 1u, 17433u), u_input.a, -1380f, vec2<u32>(var_0, arg_1.a.x), arg_1.e), _wgslsmith_mod_vec3_i32(vec3<i32>(-35713i, -2969i, -26237i), vec3<i32>(-14913i, global0.x, -2147483647i))).x), max(_wgslsmith_mod_i32(~(-54364i), u_input.a), -1i), -arg_2.b.b), Struct_3(var_3.zx, arg_2.b.b, -1150f, vec2<u32>(max(max(20737u, var_1.x), 1u), ~_wgslsmith_add_u32(0u, 73381u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_5(Struct_3(_wgslsmith_f_op_vec2_f32(func_4(u_input.b, ~global0.zy, func_1())), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), max(vec2<u32>(u_input.c, 4294967295u), firstTrailingBit(vec2<u32>(4294967295u, u_input.e))))), Struct_1(~u_input.d, _wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 17051i, -1i, 2147483647i), vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(u_input.a, u_input.a, -675i, -2147483647i))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(32674i, u_input.a, 0i, 1i), vec4<i32>(u_input.a, global0.x, 27528i, 0i)), vec4<i32>(51114i, global0.x, 1i, 33470i) | vec4<i32>(u_input.a, global0.x, global0.x, -40624i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -970f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(957f + -950f))), select(u_input.b.wz, ~u_input.b.zy, true), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(false, true, true, select(false, true, true)), all(vec4<bool>(true, false, true, false)))), Struct_2(~countOneBits(abs(vec2<u32>(8183u, 4294967295u))), Struct_1(vec3<u32>(42524u, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), u_input.d.zx)), -(u_input.a >> (4294967295u % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-219f)), _wgslsmith_f_op_f32(182f - 489f)), _wgslsmith_mod_vec2_u32(~u_input.b.xx, vec2<u32>(1u, 4294967295u)), vec4<bool>(true, true, true, true))));
    let var_1 = var_0.c;
    global0 = vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.c, vec3<i32>(var_1.x, 15141i, u_input.a) ^ var_1), vec3<i32>(-23770i, _wgslsmith_sub_i32(var_0.c.x, global0.x), u_input.a));
    global0 = vec3<i32>(abs(2147483647i), -(i32(-1i) * -18298i), -2147483647i) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_add_vec4_u32(u_input.b, u_input.b)) << (u_input.e % 32u), firstLeadingBit(0u << (_wgslsmith_add_u32(var_0.d.d.x, 90460u) % 32u)), firstLeadingBit(select(~var_0.d.d.x, 1u, all(vec3<bool>(false, false, true))))) % vec3<u32>(32u));
    var var_2 = vec2<i32>(var_1.x >> (1u % 32u), ~16510i);
    global0 = abs(select(_wgslsmith_mod_vec3_i32(~reverseBits(vec3<i32>(u_input.a, -24341i, var_2.x)), firstTrailingBit(~var_0.c)), vec3<i32>(-(~(-2147483647i)), -func_5(Struct_5(Struct_3(vec2<f32>(-1010f, var_0.d.c), var_2.x, var_0.d.c, u_input.d.yy)), Struct_1(vec3<u32>(4294967295u, 0u, 28977u), 2147483647i, var_0.d.a.x, u_input.b.xy, vec4<bool>(true, true, false, false)), Struct_2(u_input.d.zz, Struct_1(vec3<u32>(u_input.d.x, 4294967295u, 4294967295u), u_input.a, 347f, vec2<u32>(var_0.d.d.x, 8886u), vec4<bool>(false, false, true, false)))).c.x, global0.x), vec3<bool>(false, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 29089u, 64593u), u_input.d) <= ~u_input.b.x, var_0.d.a.x > var_0.d.c)));
    var_2 = var_1.zy;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_vec3_i32(var_0.c, var_1), ~var_0.c), 0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.d.c, _wgslsmith_f_op_f32(-var_0.d.c)), 584f, _wgslsmith_f_op_f32(var_0.d.a.x * _wgslsmith_f_op_f32(exp2(var_0.d.a.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.c, -1000f, _wgslsmith_f_op_f32(-765f * 528f)))));
}

