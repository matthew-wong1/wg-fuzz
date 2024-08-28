struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    var var_0 = Struct_3(-u_input.a.x >> (_wgslsmith_add_u32(~u_input.b.x, abs(~1u)) % 32u), vec2<i32>(_wgslsmith_div_i32(arg_0 << (1u % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(-22716i, 22158i)), u_input.c.x)), -arg_0), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1333f) + vec2<f32>(-208f, 249f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(354f, 1000f))))), vec2<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-1166f * 242f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-645f, -680f))))), select(true, true, any(vec3<bool>(true, false, false))))), 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(322f, -986f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(538f, -1465f))))))));
    let var_1 = vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(round(var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-173f)), _wgslsmith_f_op_f32(-1f)))), 301f);
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_vec3_i32(-vec3<i32>(-2147483647i, var_0.d, u_input.c.x), _wgslsmith_mult_vec3_i32(u_input.a.yzx, vec3<i32>(var_0.d, 15110i, 2147483647i))) >> (firstLeadingBit(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)) % vec3<u32>(32u)), (false || all(vec3<bool>(false, true, false))) == true, ~1u), -409f, _wgslsmith_add_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(countOneBits(u_input.b.yx), abs(vec2<u32>(u_input.b.x, u_input.b.x))), ~37077u, u_input.b.x), reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(88389u, 0u, u_input.b.x, 60789u), u_input.b, u_input.b), u_input.b))));
    var_0 = Struct_3(-1i, var_2.a.a.yy, var_0.c, -_wgslsmith_dot_vec3_i32(abs(u_input.a.ywx) | ~var_2.a.a, u_input.a.xxy), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(var_0.e, vec2<f32>(1202f, -191f))))), var_0.e)));
    var var_3 = arg_0 != var_0.d;
    return vec3<i32>(select(var_2.a.a.x, -_wgslsmith_mult_i32(~var_0.d, 0i), true), -var_0.b.x, 29742i);
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = !any(select(vec3<bool>(1i > u_input.a.x, true, true), vec3<bool>(true, any(vec2<bool>(true, true)), -26441i > u_input.a.x), vec3<bool>(false, -662f <= arg_0, true)));
    var var_1 = Struct_1(-func_3(-7883i), any(select(vec3<bool>(true, true, true), vec3<bool>(0i != u_input.c.x, true, any(vec2<bool>(true, true))), vec3<bool>(true, u_input.b.x > u_input.b.x, any(vec3<bool>(false, true, false))))), u_input.b.x);
    var_1 = Struct_1(_wgslsmith_mult_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, var_1.a.x, var_1.a.x), countOneBits(vec3<i32>(-2147483647i, var_1.a.x, -2147483647i))), vec3<i32>(reverseBits(func_3(-1i).x), u_input.c.x, i32(-1i) * -7343i)), all(vec4<bool>(!select(var_1.b, true, var_1.b), true, false, any(!vec2<bool>(false, var_1.b)))), abs(var_1.c));
    let var_2 = vec4<bool>(!(0i == u_input.a.x), false, any(!(!select(vec2<bool>(true, false), vec2<bool>(var_1.b, false), false))), true);
    var var_3 = ~select(countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(var_1.c, 111379u, u_input.b.x, var_1.c)), reverseBits(var_1.c), 4294967295u << (0u % 32u), _wgslsmith_add_u32(var_1.c, 4294967295u))), u_input.b ^ firstTrailingBit(vec4<u32>(18150u, u_input.b.x, 4294967295u, 2352u)), vec4<bool>(countOneBits(4294967295u) < abs(var_1.c), var_1.b, var_2.x, true));
    return u_input.c.x;
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = min(~(~(i32(-1i) * -1i)), 1i);
    return Struct_3(arg_0.x, vec2<i32>(-2147483647i, ~reverseBits(var_0 & u_input.a.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(round(-491f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -419f))))), ~(-func_2(-1924f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-607f, -654f) + vec2<f32>(1133f, 1000f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-689f, _wgslsmith_f_op_f32(floor(696f))))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_1(vec3<i32>(arg_0.d, 1i, -arg_0.b.x), true, 62725u);
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), -vec3<i32>(-1i, var_0.a.x, 1i)), var_0.a, -var_0.a) & (_wgslsmith_div_vec3_i32(-u_input.a.xxw, abs(vec3<i32>(u_input.a.x, var_0.a.x, arg_0.d))) | _wgslsmith_add_vec3_i32(firstLeadingBit(u_input.a.yyz), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.d, -1i, var_0.a.x), u_input.a.wzy))), false, 1u);
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(min(703f, _wgslsmith_f_op_f32(arg_0.e.x * -1003f)))))), arg_0.c.x);
    let var_3 = max(~_wgslsmith_mult_u32(4294967295u << (var_0.c % 32u), select(5584u, 101216u, true)) << (abs(var_1.c) % 32u), ~u_input.b.x);
    let var_4 = ~vec2<u32>(max(~0u, var_0.c), _wgslsmith_div_u32(var_1.c, _wgslsmith_add_u32(~4294967295u, firstLeadingBit(31769u))));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = func_3(i32(-1i) * -28844i).xx;
    var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, arg_1.a.x), arg_1.a.yx, vec2<i32>(var_0.x, select(-8902i, arg_0.a.x, !arg_1.b)));
    let var_1 = ~(~u_input.b.x) << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(~arg_1.c, ~0u) | arg_0.c, ~(arg_0.c >> (4294967295u % 32u))) % 32u);
    let var_2 = !select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, arg_0.b), true), !vec2<bool>(arg_0.b, false)), true), vec2<bool>(abs(8881i) >= (arg_0.a.x >> (1u % 32u)), false), vec2<bool>(true, any(!vec4<bool>(arg_1.b, false, arg_1.b, false))));
    var_0 = -arg_1.a.zx;
    return Struct_2(Struct_1(vec3<i32>(arg_1.a.x, u_input.a.x, ~arg_0.a.x ^ _wgslsmith_div_i32(1i, -15029i)), var_2.x, ~(_wgslsmith_div_u32(55138u, 4294967295u) ^ _wgslsmith_clamp_u32(var_1, arg_0.c, arg_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -759f), 236f))))), countOneBits(vec4<u32>(_wgslsmith_clamp_u32(var_1, _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, arg_0.c), 4294967295u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(2212u, 1u, 1u), u_input.b.zwz), ~arg_0.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(25277u, 74015u), vec2<u32>(3965u, arg_0.c)))));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: bool) -> bool {
    var var_0 = u_input.a.wxw;
    let var_1 = func_5(arg_0.a, arg_0.a);
    let var_2 = vec3<f32>(-365f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(max(1002f, _wgslsmith_f_op_f32(arg_0.b + arg_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))))), _wgslsmith_f_op_f32(max(635f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_0.b))))))));
    let var_3 = arg_1.yx;
    var_0 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(~1i, -firstTrailingBit(arg_2.x)), -15301i), -22298i, -(~u_input.a.x));
    return any(!(!var_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a.yzw, func_6(func_5(func_4(func_1(vec3<i32>(3674i, 8035i, -2147483647i))), func_4(func_1(vec3<i32>(u_input.c.x, 1600i, 1i)))), vec4<bool>(all(vec4<bool>(false, true, true, false)), select(true, all(vec3<bool>(false, true, false)), true), true, true), (vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, 1i)) ^ reverseBits(vec2<i32>(u_input.a.x, u_input.a.x)), any(vec3<bool>(true, true, false))), countOneBits(u_input.b.x));
    var var_1 = Struct_3(firstLeadingBit(var_0.a.x), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xw, abs(vec2<i32>(35090i, u_input.a.x))), ~(-abs(u_input.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1257f, 1035f), vec2<f32>(435f, -736f), false)), vec2<f32>(-374f, 968f))) + vec2<f32>(_wgslsmith_f_op_f32(abs(-1607f)), _wgslsmith_f_op_f32(select(func_1(vec3<i32>(1i, 26614i, var_0.a.x)).e.x, -485f, true)))), abs(_wgslsmith_mult_i32(-13581i, ~1i) >> (1u % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-486f * -702f))), -635f)));
    let var_2 = var_1.c.x;
    var_1 = func_1(countOneBits(vec3<i32>(8411i, -u_input.c.x, func_4(Struct_3(var_0.a.x, vec2<i32>(0i, -1i), var_1.e, var_0.a.x, vec2<f32>(var_1.c.x, var_1.e.x))).a.x)));
    var var_3 = func_1(-reverseBits(firstTrailingBit(countOneBits(vec3<i32>(13316i, u_input.c.x, var_0.a.x)))));
    var_3 = func_1(func_4(func_1(vec3<i32>(abs(var_0.a.x), -66692i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, -1i), var_1.b)))).a);
    let var_4 = func_1(~vec3<i32>(var_3.d, 0i, i32(-1i) * -6815i));
    var var_5 = select(vec4<bool>(var_0.b, (max(1u, u_input.b.x) >= u_input.b.x) & true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-743f)) + -733f) <= func_1(vec3<i32>(40414i, 38283i, -1i)).c.x, true), vec4<bool>(var_0.b, false, var_3.e.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(128f))), any(select(vec4<bool>(var_0.b, var_0.b, var_0.b, true), vec4<bool>(true, var_0.b, false, var_0.b), !vec4<bool>(var_0.b, false, true, false)))), !(!vec4<bool>(true, var_1.e.x < var_3.e.x, false, true)));
    let var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~u_input.b.x))), func_4(var_4).a.x << (u_input.b.x % 32u), vec2<u32>(var_0.c & ~_wgslsmith_add_u32(var_0.c, u_input.b.x), u_input.b.x), u_input.b.yy << (_wgslsmith_mult_vec2_u32(u_input.b.yy, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.c, var_0.c), u_input.b.zw), vec2<u32>(u_input.b.x, 4294967295u))) % vec2<u32>(32u)));
}

