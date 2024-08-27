struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(!arg_0.a, arg_0.c, Struct_1(arg_0.c.a, arg_0.b.b, ~u_input.c.xw & arg_2.c, vec4<f32>(_wgslsmith_f_op_f32(select(-1045f, _wgslsmith_f_op_f32(f32(-1f) * -1401f), !arg_0.c.a)), arg_0.c.d.x, -286f, 177f)), arg_0.a.zy);
    var var_1 = vec4<i32>(_wgslsmith_div_i32(-1i, 1i), select(-arg_2.b.x, ~min(-3803i & arg_2.b.x, -9708i), false), 0i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(49937i, _wgslsmith_dot_vec4_i32(vec4<i32>(-6305i, 1i, -1i, 2147483647i), vec4<i32>(2147483647i, 0i, arg_0.c.b.x, 14873i)), _wgslsmith_clamp_i32(arg_2.b.x, arg_2.b.x, 11695i), var_0.b.b.x), select(-vec4<i32>(arg_2.b.x, 11904i, 38308i, arg_0.c.b.x), arg_2.b, false && arg_0.b.a)), ~(~7072i)));
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(~1u, ~var_0.c.c.x & arg_2.c.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.b.c.x, arg_0.c.c.x, arg_2.c.x)), vec3<u32>(40865u, arg_2.c.x, 1u))), u_input.c.x), 0u, 1u);
    let var_3 = !select(vec4<bool>(true, true, true, true), select(!arg_0.a, var_0.a, var_0.b.a), true);
    var_1 = vec4<i32>(0i, min(~firstTrailingBit(10748i), arg_0.c.b.x) & 6590i, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(arg_2.b.x), _wgslsmith_mod_i32(arg_2.b.x, 40313i)), var_1.xy)), 69425i & min(~(i32(-1i) * -21859i), -31227i >> ((u_input.b ^ 1u) % 32u)));
    return -max(reverseBits(var_0.c.b.x), max(-var_1.x, min(arg_2.b.x, -1401i)) ^ -(~21554i));
}

fn func_2() -> Struct_2 {
    global0 = 0u;
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-(~(-1i) << (1u % 32u)), abs(-49907i), _wgslsmith_mult_i32(5129i, -1i)), vec3<i32>(-firstTrailingBit(-1i), firstLeadingBit(20423i) | reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(4521i, 2147483647i, -1i))), _wgslsmith_mod_i32(25162i << (0u % 32u), 1i) & -func_3(Struct_2(vec4<bool>(true, true, false, false), Struct_1(false, vec4<i32>(-26983i, 33793i, -2147483647i, 0i), u_input.a.yz, vec4<f32>(-328f, -1000f, -819f, -137f)), Struct_1(false, vec4<i32>(66513i, -5790i, -12997i, 2147483647i), u_input.a.yx, vec4<f32>(-1000f, -1000f, -2109f, 117f)), vec2<bool>(true, false)), -955f, Struct_1(false, vec4<i32>(1i, 0i, 2147483647i, 73848i), vec2<u32>(u_input.b, u_input.c.x), vec4<f32>(130f, -1176f, 1095f, -1351f)))));
    let var_1 = select(_wgslsmith_dot_vec4_u32(~u_input.c, u_input.c), firstTrailingBit(~_wgslsmith_dot_vec3_u32(abs(u_input.a), u_input.c.zyy)), !any(vec4<bool>(true, true, true, all(vec2<bool>(false, false)))));
    var var_2 = abs(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-4887i, -1i, _wgslsmith_sub_i32(var_0.x, -2147483647i)), _wgslsmith_div_i32(1i, 2147483647i) ^ var_0.x), -countOneBits(-vec2<i32>(var_0.x, -1i))));
    var var_3 = var_0.yy;
    return Struct_2(vec4<bool>(_wgslsmith_add_u32(abs(var_1), 28356u) < (var_1 | 0u), false, (any(vec3<bool>(true, true, false)) == all(vec3<bool>(false, false, true))) | any(vec4<bool>(true, true, true, true)), true), Struct_1(true, _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-27035i, 17250i, var_3.x, var_0.x), vec4<i32>(13201i, var_3.x, var_3.x, var_3.x), vec4<i32>(var_0.x, var_3.x, 17568i, var_3.x)) | vec4<i32>(26794i, var_3.x, -1i, 1i), min(select(vec4<i32>(var_3.x, 0i, var_0.x, var_3.x), vec4<i32>(var_3.x, var_0.x, var_3.x, var_0.x), true), _wgslsmith_div_vec4_i32(vec4<i32>(var_3.x, var_3.x, -1i, 0i), vec4<i32>(-8440i, var_3.x, 2147483647i, var_3.x)))), u_input.c.yz, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-488f, 933f, 1715f, 2181f))))))), Struct_1(!(reverseBits(u_input.a.x) != _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 85285u), u_input.c.zz)), reverseBits(~vec4<i32>(-2147483647i, -1i, -1i, var_3.x) << (select(u_input.c, vec4<u32>(0u, u_input.b, var_1, u_input.a.x), true) % vec4<u32>(32u))), vec2<u32>(~41501u << ((u_input.a.x | 8928u) % 32u), u_input.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1482f, _wgslsmith_f_op_f32(f32(-1f) * -572f), 268f, _wgslsmith_div_f32(297f, -265f)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1123f), _wgslsmith_f_op_f32(f32(-1f) * -1095f), _wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_f32(2250f * -1293f)))), vec2<bool>(true, ((34883i | var_3.x) >= (0i >> (var_1 % 32u))) || all(vec2<bool>(true, true))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_2 {
    global0 = u_input.b;
    let var_0 = Struct_1(true, max(arg_3.b.b, ~vec4<i32>(_wgslsmith_mod_i32(-1i, arg_1), min(31421i, arg_3.b.b.x), func_2().b.b.x, ~arg_1)), _wgslsmith_sub_vec2_u32(~vec2<u32>(97547u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.c.x, 1u))), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.wx, u_input.a.zz), countOneBits(41008u)) << (vec2<u32>(countOneBits(4294967295u), ~87332u) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.b.d) + vec4<f32>(546f, arg_3.c.d.x, arg_2.x, _wgslsmith_f_op_f32(1369f - arg_2.x))));
    let var_1 = vec2<bool>(arg_3.b.a && var_0.a, arg_3.c.a);
    var var_2 = var_0.b.wwz;
    let var_3 = var_0.d.x;
    return Struct_2(vec4<bool>(1i == _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, -2147483647i), arg_3.c.b.xz), var_0.b.x), false, !(false & var_1.x) && true, var_0.a), func_2().b, arg_3.c, arg_3.d);
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = func_4(2147483647i, ~(~(firstTrailingBit(arg_3.c.b.x) << (max(24288u, 0u) % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.b.d - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3.c.d.x, arg_2.b.d.x, arg_2.c.d.x, arg_2.b.d.x)))) - vec4<f32>(1405f, 397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c.d.x + arg_2.b.d.x)), func_2().b.d.x)), arg_2).b.a;
    var var_1 = ~(~(~arg_2.c.c.x & (arg_2.c.c.x | (1u >> (arg_2.b.c.x % 32u)))));
    var var_2 = Struct_1(arg_3.d.x, -(abs(vec4<i32>(arg_2.b.b.x, -2147483647i, 2147483647i, -25997i)) << (~(vec4<u32>(arg_3.b.c.x, u_input.b, 35554u, 0u) ^ u_input.c) % vec4<u32>(32u))), ~vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(0u, arg_2.c.c.x)), 61119u), vec4<f32>(-380f, _wgslsmith_f_op_f32(f32(-1f) * -556f), 1373f, 372f));
    var_2 = Struct_1(true, -vec4<i32>(func_2().c.b.x, 42808i, -arg_1, 1i) << (abs(~vec4<u32>(arg_3.b.c.x, 1u, 4294967295u, 99201u) & vec4<u32>(1u, arg_2.b.c.x, 93908u, 1u)) % vec4<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(min(1u, arg_3.b.c.x), ~27792u, 68920u), _wgslsmith_clamp_vec3_u32(u_input.c.zxy, reverseBits(vec3<u32>(0u, 1u, 0u)), ~vec3<u32>(7690u, u_input.b, 0u))), u_input.c.x), vec4<f32>(var_2.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_2.d.x, _wgslsmith_f_op_f32(round(1199f)))))), arg_2.c.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-347f + 1702f)) * func_4(firstLeadingBit(-1i), ~(-2147483647i), vec4<f32>(arg_3.c.d.x, arg_3.b.d.x, arg_2.b.d.x, 1016f), arg_3).b.d.x)));
    var var_3 = u_input.c.yx;
    return func_4(func_3(func_2(), _wgslsmith_f_op_f32(-1000f * -622f), arg_3.c), -countOneBits(0i), arg_2.c.d, func_2()).b;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<f32>(898f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1105f))) * -292f));
    let var_1 = func_5(true, ~((i32(-1i) * -1i) & reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-22163i, -38430i, 0i, -18648i), vec4<i32>(35201i, -2147483647i, 27783i, -24461i)))), func_4(firstLeadingBit(-1i), reverseBits(2147483647i) << (1u % 32u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -359f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 478f, -776f, var_0.x)))))), func_2()), func_2());
    var var_2 = (~var_1.b.x | -12634i) | abs(var_1.b.x | -2147483647i);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, var_1.d.x, var_1.d.x, -550f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 824f, var_1.d.x, var_1.d.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.d, var_1.d, true)))) * _wgslsmith_f_op_vec4_f32(func_5(var_1.a, -var_1.b.x, func_4(var_1.b.x, -10149i, vec4<f32>(var_1.d.x, 1802f, var_1.d.x, var_0.x), Struct_2(vec4<bool>(true, var_1.a, false, var_1.a), Struct_1(true, var_1.b, vec2<u32>(u_input.a.x, 48592u), var_1.d), Struct_1(false, vec4<i32>(34416i, -2147483647i, -1i, var_1.b.x), vec2<u32>(4294967295u, 0u), var_1.d), vec2<bool>(var_1.a, var_1.a))), Struct_2(vec4<bool>(true, var_1.a, var_1.a, true), var_1, Struct_1(var_1.a, var_1.b, vec2<u32>(0u, u_input.c.x), vec4<f32>(var_1.d.x, var_1.d.x, 1207f, var_0.x)), vec2<bool>(false, var_1.a))).d * vec4<f32>(-237f, _wgslsmith_f_op_f32(f32(-1f) * -671f), _wgslsmith_div_f32(-1448f, 584f), -584f))) - _wgslsmith_f_op_vec4_f32(-func_2().b.d));
    let var_4 = Struct_2(func_4(2147483647i, _wgslsmith_clamp_i32(-2147483647i, firstLeadingBit(1i), -2147483647i & (var_1.b.x << (u_input.a.x % 32u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1287f, 502f, var_1.d.x, -141f) - var_3)))), func_2()).a, var_1, Struct_1(var_1.a == var_1.a, -(~(~vec4<i32>(var_1.b.x, 3362i, 1i, -9055i))), ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4294967295u), u_input.c.ywy), func_2().c.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3 + var_3) * var_1.d) * var_1.d)), func_2().d);
    return Struct_1(all(select(var_4.a.zzy, !func_2().a.zyy, vec3<bool>(var_1.a || var_1.a, true, false))), _wgslsmith_sub_vec4_i32(var_1.b, var_1.b ^ abs(vec4<i32>(var_4.b.b.x, var_4.c.b.x, -1i, var_4.c.b.x))), ~u_input.c.xx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(259f, var_4.c.d.x, var_1.d.x, 1149f))) - _wgslsmith_f_op_vec4_f32(-var_1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f))), 1021f)), var_0.d.x));
    let var_2 = 1i;
    global0 = var_0.c.x;
    global0 = _wgslsmith_sub_u32(max(func_4(-var_2 ^ var_2, countOneBits(var_0.b.x), vec4<f32>(_wgslsmith_f_op_f32(abs(516f)), _wgslsmith_f_op_f32(select(var_0.d.x, var_0.d.x, false)), var_0.d.x, _wgslsmith_f_op_f32(-3079f - 1258f)), Struct_2(func_4(-13672i, var_0.b.x, vec4<f32>(-1072f, var_1, var_1, -157f), Struct_2(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), Struct_1(true, var_0.b, vec2<u32>(var_0.c.x, 1u), vec4<f32>(-640f, -295f, -1006f, var_1)), var_0, vec2<bool>(true, false))).a, Struct_1(var_0.a, vec4<i32>(var_2, var_0.b.x, 0i, 50342i), vec2<u32>(8643u, u_input.b), var_0.d), func_4(var_0.b.x, var_0.b.x, var_0.d, Struct_2(vec4<bool>(var_0.a, true, true, true), Struct_1(false, var_0.b, var_0.c, vec4<f32>(var_1, var_0.d.x, var_0.d.x, 227f)), Struct_1(var_0.a, var_0.b, u_input.c.xw, var_0.d), vec2<bool>(false, var_0.a))).c, vec2<bool>(true, true))).c.c.x, 8232u), u_input.c.x);
    global0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, ~abs(4294967295u), 0u, ~(var_0.c.x >> (u_input.a.x % 32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(~var_0.c.x, _wgslsmith_mult_u32(0u, var_0.c.x), ~var_0.c.x, abs(var_0.c.x)), vec4<u32>(0u, ~0u, 5533u, var_0.c.x)));
    var var_3 = var_0.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d.zzw)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d.x * 1711f))))), _wgslsmith_f_op_f32(step(145f, var_0.d.x))), 4294967295u);
}

