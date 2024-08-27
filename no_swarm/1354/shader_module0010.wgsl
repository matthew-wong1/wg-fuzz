struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-580f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1197f, -1091f)) * -1121f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-769f, -1048f)))), -672f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(464f)), _wgslsmith_f_op_f32(f32(-1f) * -1452f), -515f)), false && !arg_2.x));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2020f, 103f, -626f))), vec3<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(ceil(var_0.x)), -385f)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_0.x, var_0.x, -351f, var_0.x))))), countOneBits(u_input.a.x), 960f), select(~(~(~u_input.b)), ~(~(~vec3<u32>(26071u, 14597u, arg_0))), !vec3<bool>(!arg_2.x, true, false)), 14103i, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -201f, 1342f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, 103f, var_0.x, var_0.x)))))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, u_input.a.x, arg_1.x), select(vec3<i32>(arg_1.x, -2147483647i, arg_1.x), u_input.a.yxz, arg_2.xzx)), var_0.x));
    var var_2 = -var_1.d.b;
    let var_3 = Struct_3(abs(abs(firstTrailingBit(firstLeadingBit(43511u)))));
    return -2147483647i;
}

fn func_2(arg_0: Struct_3) -> f32 {
    let var_0 = u_input.a.xx;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(851f)), -314f, -977f, -1553f) - vec4<f32>(-1359f, -240f, _wgslsmith_f_op_f32(158f - -371f), _wgslsmith_f_op_f32(min(-672f, -219f)))))), var_0.x, -636f);
    var var_2 = _wgslsmith_f_op_f32(-var_1.a.x);
    var_2 = 178f;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_1.a - var_1.a), vec4<f32>(1379f, 189f, var_1.c, var_1.c)))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(var_1.b, 2147483647i), func_3(20446u, vec2<i32>(u_input.a.x, -48127i), vec4<bool>(true, false, true, true)), abs(0i), 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b, 1i, 24983i, 5769i), vec4<i32>(var_0.x, -2147483647i, u_input.a.x, 4599i) ^ u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c, var_1.c))))), ~u_input.b, _wgslsmith_mult_i32(-43326i, _wgslsmith_sub_i32(var_0.x, ~(-5322i))) >> (u_input.b.x % 32u), Struct_1(var_1.a, u_input.a.x, var_1.c));
    return 608f;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = arg_2.yyx << (u_input.c % vec3<u32>(32u));
    var var_1 = _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(41996u)))))));
    var_0 = _wgslsmith_add_vec3_i32(u_input.a.wxx, _wgslsmith_sub_vec3_i32(-u_input.a.yzy << (arg_3.b % vec3<u32>(32u)), u_input.a.xzy));
    var var_2 = 58672i;
    var_0 = ~arg_2.yzw;
    return Struct_2(arg_3.d, ~vec3<u32>(min(firstTrailingBit(arg_3.b.x), 1u), reverseBits(arg_3.b.x), ~(68922u & arg_3.b.x)), reverseBits(-15049i), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(491f + 297f))), arg_1.a.x, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0)), -398f), -countOneBits(arg_1.b), _wgslsmith_f_op_f32(min(-136f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1000f))))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: u32, arg_3: u32) -> Struct_3 {
    var var_0 = !select(vec3<bool>(all(vec4<bool>(true, true, false, false)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), false), vec3<bool>(true, any(vec2<bool>(true, true)), any(vec2<bool>(true, true))), select(vec3<bool>(true, true, select(true, false, false)), vec3<bool>(true, true, true), select(false, false, false) || false));
    var var_1 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(arg_2, reverseBits(25510u), ~83702u, firstLeadingBit(arg_0.b.x))), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.b.x, arg_2, 0u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(24734u, 4294967295u, arg_0.b.x, 0u), vec4<u32>(arg_2, arg_0.b.x, 1u, arg_0.b.x))));
    return Struct_3(26989u);
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> f32 {
    var var_0 = vec3<i32>(u_input.a.x, 2147483647i, -4992i ^ arg_0);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1589f))));
    let var_2 = min(select(select(_wgslsmith_mod_vec2_u32(u_input.b.zx, u_input.b.xx) << (u_input.b.xy % vec2<u32>(32u)), func_1(var_1, func_1(var_1, Struct_1(vec4<f32>(var_1, 1527f, -810f, -298f), -397i, -694f), u_input.a, Struct_2(Struct_1(vec4<f32>(var_1, var_1, var_1, 1178f), 64350i, -995f), vec3<u32>(0u, 0u, arg_1.a), u_input.a.x, Struct_1(vec4<f32>(var_1, -216f, var_1, -544f), u_input.a.x, -573f))).a, ~u_input.a, func_1(-2318f, Struct_1(vec4<f32>(-2206f, var_1, var_1, 1763f), 4281i, -385f), u_input.a, Struct_2(Struct_1(vec4<f32>(-319f, -686f, var_1, 615f), -1i, var_1), vec3<u32>(4294967295u, u_input.c.x, 0u), 23067i, Struct_1(vec4<f32>(var_1, 411f, var_1, 2256f), 0i, var_1)))).b.yx, true), (u_input.b.xz ^ select(vec2<u32>(77398u, 9731u), u_input.c.yy, vec2<bool>(true, true))) >> (vec2<u32>(abs(0u), u_input.b.x) % vec2<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), u_input.b.zz);
    var_0 = ~(~(~vec3<i32>(~(-1i), -33723i, i32(-1i) * -2147483647i)));
    let var_3 = func_1(func_1(var_1, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1126f, -237f, var_1, var_1))), -19896i, -981f), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(1i, 0i, arg_0, 1i)) >> (~vec4<u32>(4179u, var_2.x, arg_1.a, 4294967295u) % vec4<u32>(32u)), vec4<i32>(i32(-1i) * -2147483647i, i32(-1i) * -1i, reverseBits(27549i), 1i)), func_1(-595f, func_1(_wgslsmith_f_op_f32(-var_1), func_1(1578f, Struct_1(vec4<f32>(1000f, -1531f, 424f, var_1), 2147483647i, var_1), vec4<i32>(u_input.a.x, 2197i, 72291i, u_input.a.x), Struct_2(Struct_1(vec4<f32>(-564f, var_1, -240f, 1000f), 1i, var_1), u_input.b, var_0.x, Struct_1(vec4<f32>(-166f, -986f, var_1, -1047f), u_input.a.x, var_1))).d, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, var_0.x, 0i, arg_0), u_input.a), func_1(var_1, Struct_1(vec4<f32>(-1324f, var_1, var_1, -1862f), u_input.a.x, var_1), vec4<i32>(arg_0, -1i, 15359i, arg_0), Struct_2(Struct_1(vec4<f32>(var_1, var_1, var_1, var_1), -3948i, var_1), vec3<u32>(0u, u_input.c.x, 1u), -10622i, Struct_1(vec4<f32>(1820f, -248f, -1212f, -625f), 1i, 692f)))).d, ~_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(2147483647i, arg_0, 78900i, -21691i)), Struct_2(Struct_1(vec4<f32>(1174f, var_1, 1032f, -810f), 2147483647i, 242f), abs(vec3<u32>(arg_1.a, var_2.x, u_input.b.x)), ~arg_0, Struct_1(vec4<f32>(var_1, var_1, var_1, 642f), 2147483647i, var_1)))).d.c, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 326f, var_1, -143f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -531f, var_1, -373f)) - vec4<f32>(var_1, -214f, var_1, var_1))), firstTrailingBit(firstLeadingBit(_wgslsmith_sub_i32(-42952i, -2394i))), var_1), vec4<i32>(~(-47093i), 0i, ~((-13053i & var_0.x) | _wgslsmith_sub_i32(-2147483647i, 1i)), -35838i), func_1(873f, Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1432f, var_1, -1226f, 692f) + vec4<f32>(var_1, 1020f, var_1, -261f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 430f, -883f, var_1) - vec4<f32>(271f, var_1, var_1, 259f)))), firstTrailingBit(arg_0) << (24040u % 32u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1)))), vec4<i32>(_wgslsmith_sub_i32(arg_0, -21727i) ^ _wgslsmith_div_i32(4933i, var_0.x), 0i, _wgslsmith_mod_i32(1i, u_input.a.x), u_input.a.x), func_1(_wgslsmith_f_op_f32(-var_1), Struct_1(vec4<f32>(-437f, 852f, -1082f, -553f), 0i, -1731f), vec4<i32>(arg_0 << (78633u % 32u), 35929i, _wgslsmith_sub_i32(arg_0, -2147483647i), var_0.x), func_1(-909f, Struct_1(vec4<f32>(var_1, var_1, 529f, var_1), var_0.x, var_1), vec4<i32>(14639i, var_0.x, -2147483647i, arg_0), Struct_2(Struct_1(vec4<f32>(var_1, var_1, var_1, -152f), var_0.x, var_1), u_input.b, 0i, Struct_1(vec4<f32>(-1666f, -233f, var_1, var_1), 2147483647i, -352f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * -986f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_mod_u32(~0u, ~42645u)), abs(u_input.c.x));
    var_0 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(20959u, 18621u), u_input.b.x, 1u << ((u_input.b.x & 4294967295u) % 32u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(724f + _wgslsmith_f_op_f32(-1076f + -153f))) * _wgslsmith_f_op_f32(func_5(0i, func_4(func_1(1411f, Struct_1(vec4<f32>(-544f, 477f, 832f, -2249f), u_input.a.x, 929f), u_input.a, Struct_2(Struct_1(vec4<f32>(2227f, -693f, -345f, -488f), u_input.a.x, 254f), vec3<u32>(u_input.b.x, 0u, 4294967295u), u_input.a.x, Struct_1(vec4<f32>(-740f, 1791f, 880f, 942f), -17736i, 764f))), ~u_input.a.zyw, u_input.c.x, u_input.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1227f))) + 945f), _wgslsmith_f_op_f32(2200f + _wgslsmith_f_op_f32(1028f + -280f)));
    let var_2 = _wgslsmith_mult_vec3_u32(u_input.b << (~vec3<u32>(u_input.b.x, 4294967295u, ~u_input.c.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(u_input.c, abs(~vec3<u32>(4294967295u, 40385u, u_input.c.x) >> (vec3<u32>(u_input.c.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), ~select(vec3<u32>(47249u, u_input.b.x, 14996u), vec3<u32>(u_input.b.x, u_input.c.x, u_input.b.x), false) ^ _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 8784u, 4294967295u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.b.x))));
    let var_3 = 692f;
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(var_1.x - -851f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3, var_3, var_3, 187f), vec4<f32>(847f, var_3, -762f, var_1.x)) + vec4<f32>(936f, 2190f, 2246f, var_3))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, -1179f, -1483f, var_1.x) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, var_1.x, var_3, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-562f, -441f, var_1.x, var_1.x))))), i32(-1i) * -abs(func_1(var_3, Struct_1(vec4<f32>(var_3, 914f, -1725f, -1111f), 1i, var_3), u_input.a, Struct_2(Struct_1(vec4<f32>(892f, var_3, var_1.x, var_1.x), u_input.a.x, -866f), u_input.c, u_input.a.x, Struct_1(vec4<f32>(var_1.x, var_1.x, var_1.x, 784f), 2147483647i, var_3))).c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1713f)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(reverseBits(~vec2<u32>(var_2.x, 53855u))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(firstTrailingBit(min(var_4.b, u_input.a.x)), _wgslsmith_sub_i32(var_4.b, u_input.a.x)), _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, -33622i), max(vec2<i32>(1i, -1i), u_input.a.yw)), var_4.b));
}

