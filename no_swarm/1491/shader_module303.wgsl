struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> bool {
    let var_0 = -1203f;
    let var_1 = Struct_2(~(~u_input.d) >> (~(~44498u) % 32u), Struct_1(reverseBits(vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, arg_0.x), -12953i, ~arg_0.x, -2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, -134f, -250f, var_0)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 646f, var_0, -1073f))), firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(8556i, u_input.b.x, arg_0.x) ^ vec3<i32>(-40003i, -6444i, -6449i), -vec3<i32>(arg_0.x, -2147483647i, 43364i))), !all(vec4<bool>(true, false, true, false))));
    let var_2 = -48486i;
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))));
    var var_4 = var_0;
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    let var_0 = select(!vec3<bool>(!(arg_0.a < 13564u), false, arg_0.b.d), select(!vec3<bool>(1557f > arg_0.b.b.x, arg_3 || true, true), !vec3<bool>(arg_1.b.b.d, all(vec2<bool>(arg_0.b.d, arg_2.b.b.d)), 9206u > u_input.c.x), arg_1.b.b.d), func_3(~vec2<i32>(0i, max(arg_0.b.a.x, u_input.b.x)), arg_2.d));
    var var_1 = !(!func_3(select(vec2<i32>(arg_1.a.x, 87184i), vec2<i32>(-1i, u_input.b.x), any(var_0.xy)), _wgslsmith_add_u32(arg_0.a, arg_1.d)));
    var_1 = var_0.x;
    let var_2 = u_input.c;
    var_1 = arg_0.b.d;
    return arg_0;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~41466u, _wgslsmith_add_u32(u_input.c.x, 0u), arg_0.x), abs(~vec3<u32>(arg_0.x, 41290u, 1u))), ~_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(23649u, u_input.c.x, arg_0.x)), ~vec3<u32>(u_input.c.x, 44916u, arg_3.a))), reverseBits(arg_0));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x));
    var var_2 = func_2(Struct_2(36649u, func_2(arg_3, Struct_3(firstTrailingBit(vec2<i32>(arg_3.b.c.x, arg_3.b.a.x)), Struct_2(arg_3.a, arg_3.b), Struct_1(arg_3.b.a, arg_3.b.b, arg_1.c, false), reverseBits(var_0)), Struct_3(_wgslsmith_sub_vec2_i32(arg_1.a.yz, arg_3.b.a.zz), Struct_2(29770u, Struct_1(vec4<i32>(arg_3.b.a.x, -3259i, arg_1.a.x, -3645i), vec4<f32>(1228f, arg_1.b.x, var_1, arg_3.b.b.x), vec3<i32>(-22943i, 2147483647i, 54329i), true)), arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.a, arg_0.x, 11282u), vec3<u32>(1879u, 117444u, 0u))), func_3(firstTrailingBit(vec2<i32>(u_input.b.x, u_input.b.x)), 0u)).b), Struct_3(func_2(Struct_2(countOneBits(arg_3.a), Struct_1(vec4<i32>(-92231i, arg_1.a.x, arg_1.a.x, -25928i), arg_1.b, arg_3.b.c, arg_2.x)), Struct_3(vec2<i32>(u_input.b.x, u_input.b.x), Struct_2(var_0, Struct_1(vec4<i32>(u_input.b.x, 0i, arg_1.a.x, u_input.b.x), vec4<f32>(var_1, -2173f, 293f, arg_3.b.b.x), vec3<i32>(arg_3.b.c.x, arg_3.b.a.x, arg_3.b.a.x), arg_1.d)), arg_1, arg_0.x), Struct_3(vec2<i32>(arg_3.b.a.x, 1i), Struct_2(35905u, Struct_1(arg_3.b.a, arg_1.b, arg_3.b.c, arg_2.x)), arg_3.b, var_0), arg_1.d).b.c.xy, func_2(func_2(Struct_2(4294967295u, arg_3.b), Struct_3(vec2<i32>(30943i, u_input.b.x), Struct_2(0u, Struct_1(arg_1.a, vec4<f32>(var_1, 445f, 1203f, -176f), vec3<i32>(arg_1.c.x, -45566i, arg_3.b.a.x), arg_1.d)), Struct_1(vec4<i32>(8568i, arg_3.b.a.x, u_input.b.x, arg_3.b.a.x), arg_3.b.b, vec3<i32>(-2147483647i, arg_1.c.x, u_input.b.x), false), arg_3.a), Struct_3(arg_3.b.a.yy, Struct_2(arg_3.a, arg_3.b), arg_3.b, arg_3.a), true), Struct_3(vec2<i32>(22329i, arg_1.c.x), Struct_2(1u, arg_3.b), Struct_1(arg_3.b.a, vec4<f32>(-174f, var_1, arg_3.b.b.x, -422f), vec3<i32>(u_input.b.x, 7435i, 2147483647i), true), min(var_0, arg_0.x)), Struct_3(-vec2<i32>(1i, arg_3.b.c.x), Struct_2(arg_3.a, arg_3.b), Struct_1(vec4<i32>(2147483647i, arg_1.c.x, arg_3.b.a.x, u_input.b.x), arg_1.b, vec3<i32>(u_input.b.x, -1i, 26033i), false), countOneBits(47182u)), true), Struct_1(max(vec4<i32>(0i, u_input.b.x, arg_3.b.a.x, 24663i), arg_1.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.b.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(253f, arg_1.b.x, 730f, arg_1.b.x))), _wgslsmith_mult_vec3_i32(arg_1.c, arg_3.b.c), false), arg_3.a), Struct_3(~arg_3.b.c.zx, arg_3, Struct_1(firstLeadingBit(vec4<i32>(u_input.b.x, -2147483647i, -7784i, arg_3.b.a.x) << (vec4<u32>(94972u, 17003u, 1u, 59128u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1558f, arg_1.b.x, arg_3.b.b.x, -427f)), arg_1.a.wxz, any(select(vec3<bool>(arg_2.x, false, true), vec3<bool>(arg_2.x, false, false), vec3<bool>(true, false, true)))), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 21297u), abs(17637u))), arg_1.d);
    let var_3 = 19440i >= u_input.b.x;
    var_2 = arg_3;
    return Struct_3(~vec2<i32>(-39747i, abs(-1i) ^ arg_1.a.x), Struct_2(66274u & arg_0.x, func_2(Struct_2(26864u, Struct_1(vec4<i32>(u_input.b.x, arg_3.b.c.x, var_2.b.a.x, -35257i), arg_1.b, var_2.b.a.ywy, arg_3.b.d)), Struct_3(arg_3.b.c.xy, func_2(arg_3, Struct_3(arg_1.c.xx, Struct_2(u_input.c.x, arg_3.b), var_2.b, 0u), Struct_3(arg_1.c.xy, arg_3, var_2.b, var_0), arg_3.b.d), Struct_1(arg_3.b.a, var_2.b.b, vec3<i32>(u_input.b.x, 43420i, var_2.b.a.x), arg_2.x), ~1u), Struct_3(u_input.b, arg_3, var_2.b, 0u), !(var_2.a < 72019u)).b), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(var_2.b.c.x), -40537i, arg_3.b.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, var_2.b.c.x), var_2.b.a.wzz)), ~(-vec4<i32>(0i, u_input.b.x, arg_1.a.x, 25077i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.b.x, -212f, 1267f, 1095f))))), _wgslsmith_mult_vec3_i32(vec3<i32>(11339i, -1i, countOneBits(u_input.b.x)), vec3<i32>(arg_3.b.a.x, -26950i, ~arg_3.b.c.x)), var_2.b.d), var_0);
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = func_4(vec3<u32>(arg_1, firstLeadingBit(func_2(Struct_2(36132u, arg_2.c), Struct_3(arg_2.c.c.zx, Struct_2(arg_1, arg_2.b.b), Struct_1(arg_2.b.b.a, vec4<f32>(1000f, arg_2.b.b.b.x, -572f, arg_2.c.b.x), vec3<i32>(u_input.b.x, arg_2.b.b.c.x, arg_2.b.b.c.x), arg_2.b.b.d), u_input.c.x), arg_2, false).a), u_input.c.x), Struct_1(arg_2.b.b.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_2.c.b))), arg_2.b.b.b), ~abs(vec3<i32>(u_input.b.x, u_input.b.x, 29779i)), true), arg_0.zy, arg_2.b).b;
    let var_1 = Struct_1(var_0.b.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-582f))), _wgslsmith_f_op_f32(var_0.b.b.x + var_0.b.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(565f, var_0.b.b.x)) - _wgslsmith_f_op_f32(ceil(arg_2.b.b.b.x))))), -207f), arg_2.c.a.zxy, !(u_input.b.x > abs(var_0.b.a.x)));
    let var_2 = func_2(Struct_2(~_wgslsmith_dot_vec4_u32(~vec4<u32>(45848u, arg_1, var_0.a, 1u), vec4<u32>(arg_1, u_input.d, 47142u, var_0.a)), var_0.b), arg_2, func_4(_wgslsmith_div_vec3_u32(~(~vec3<u32>(arg_1, 25774u, 68469u)), abs(vec3<u32>(arg_1, 4294967295u, arg_2.b.a))), arg_2.c, select(arg_0.wx, arg_0.wy, 48746u > arg_1), Struct_2(20985u << (var_0.a % 32u), Struct_1(max(vec4<i32>(4655i, arg_2.c.a.x, 10520i, u_input.b.x), vec4<i32>(-1i, var_0.b.a.x, var_0.b.c.x, -6025i)), var_1.b, ~vec3<i32>(var_1.a.x, var_0.b.c.x, u_input.b.x), !arg_2.b.b.d))), false);
    var var_3 = select(~(-arg_2.c.a), ~abs(~_wgslsmith_mod_vec4_i32(arg_2.c.a, var_1.a)), true);
    var var_4 = arg_2.b;
    return _wgslsmith_f_op_vec4_f32(var_0.b.b * _wgslsmith_div_vec4_f32(vec4<f32>(-776f, -454f, -678f, _wgslsmith_div_f32(var_4.b.b.x, _wgslsmith_f_op_f32(max(arg_2.c.b.x, 1012f)))), _wgslsmith_f_op_vec4_f32(arg_2.b.b.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_4.b.b, var_2.b.b)))));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_1(~(-(~abs(vec4<i32>(0i, u_input.b.x, 47548i, u_input.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(vec4<bool>(true, true, true, true), abs(_wgslsmith_div_u32(u_input.c.x, u_input.d)), func_4(firstLeadingBit(vec3<u32>(0u, 4294967295u, u_input.c.x)), Struct_1(vec4<i32>(2147483647i, -48590i, -51204i, 48010i), vec4<f32>(-915f, 564f, 475f, 122f), vec3<i32>(-20621i, u_input.b.x, 30027i), false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), func_2(Struct_2(u_input.a, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 2147483647i), vec4<f32>(-400f, 348f, 1000f, -1072f), vec3<i32>(u_input.b.x, -1i, -4203i), true)), Struct_3(vec2<i32>(-2147483647i, u_input.b.x), Struct_2(u_input.a, Struct_1(vec4<i32>(u_input.b.x, -14322i, u_input.b.x, u_input.b.x), vec4<f32>(-835f, -675f, 223f, -599f), vec3<i32>(34397i, -2147483647i, u_input.b.x), false)), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<f32>(-1490f, -769f, -324f, -1148f), vec3<i32>(u_input.b.x, u_input.b.x, 1i), false), 4294967295u), Struct_3(u_input.b, Struct_2(u_input.c.x, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, -33431i, u_input.b.x), vec4<f32>(1698f, -1000f, -854f, 802f), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), false)), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<f32>(-291f, -1096f, 1341f, 1360f), vec3<i32>(1i, -58978i, u_input.b.x), false), 30904u), false)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1454f, 1233f, -1363f, 1063f), vec4<f32>(-134f, -957f, 514f, -139f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(663f, -1814f, -478f, -749f) * vec4<f32>(401f, 387f, 463f, 1965f))))), max(firstTrailingBit(func_4(vec3<u32>(21713u, 111409u, u_input.a), func_4(vec3<u32>(10111u, 4294967295u, u_input.a), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, -1i, 7181i), vec4<f32>(-1898f, 168f, 190f, -1711f), vec3<i32>(4881i, 20569i, 7864i), true), vec2<bool>(false, true), Struct_2(7185u, Struct_1(vec4<i32>(-25699i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<f32>(-423f, 1212f, 803f, -663f), vec3<i32>(-21860i, u_input.b.x, u_input.b.x), true))).b.b, select(vec2<bool>(false, false), vec2<bool>(false, false), false), Struct_2(58836u, Struct_1(vec4<i32>(-2147483647i, -1i, u_input.b.x, u_input.b.x), vec4<f32>(1000f, 703f, -644f, -1228f), vec3<i32>(-4743i, u_input.b.x, 35537i), false))).b.b.a.yzz), max(vec3<i32>(_wgslsmith_div_i32(u_input.b.x, 0i), u_input.b.x, reverseBits(-1099i)), vec3<i32>(-1277i, u_input.b.x, u_input.b.x) >> (min(vec3<u32>(u_input.d, u_input.d, u_input.c.x), vec3<u32>(1u, u_input.a, 0u)) % vec3<u32>(32u)))), any(vec3<bool>(true, true, false)) | true);
    let var_1 = Struct_2(min(1u, max(1u, u_input.d ^ u_input.d)) ^ func_2(func_2(func_2(Struct_2(u_input.d, var_0), Struct_3(vec2<i32>(var_0.c.x, u_input.b.x), Struct_2(u_input.a, var_0), Struct_1(var_0.a, vec4<f32>(745f, 1000f, var_0.b.x, var_0.b.x), var_0.a.wwy, false), u_input.d), Struct_3(vec2<i32>(0i, -22422i), Struct_2(45593u, var_0), Struct_1(var_0.a, vec4<f32>(var_0.b.x, var_0.b.x, 207f, var_0.b.x), var_0.a.wxy, true), u_input.a), var_0.d), Struct_3(vec2<i32>(var_0.c.x, u_input.b.x), Struct_2(u_input.c.x, var_0), var_0, 1u), Struct_3(vec2<i32>(-39765i, 37759i), Struct_2(u_input.a, Struct_1(var_0.a, vec4<f32>(1594f, 340f, var_0.b.x, var_0.b.x), var_0.c, var_0.d)), var_0, 1u), all(vec3<bool>(false, true, false))), Struct_3(vec2<i32>(u_input.b.x, var_0.c.x), func_2(Struct_2(u_input.d, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, 15904i, -939i), var_0.b, vec3<i32>(10277i, u_input.b.x, 2148i), var_0.d)), Struct_3(vec2<i32>(1i, var_0.a.x), Struct_2(15192u, var_0), Struct_1(vec4<i32>(u_input.b.x, var_0.a.x, 2147483647i, 6619i), var_0.b, vec3<i32>(var_0.a.x, 2147483647i, var_0.a.x), false), u_input.d), Struct_3(var_0.c.xx, Struct_2(4294967295u, Struct_1(vec4<i32>(u_input.b.x, 0i, 2147483647i, -35199i), var_0.b, vec3<i32>(var_0.a.x, -11963i, var_0.c.x), false)), Struct_1(var_0.a, var_0.b, vec3<i32>(0i, -22798i, 0i), true), u_input.d), true), var_0, max(59107u, u_input.c.x)), Struct_3(vec2<i32>(1i, 3503i), Struct_2(12904u, Struct_1(vec4<i32>(u_input.b.x, 2147483647i, 1i, -1i), vec4<f32>(1730f, var_0.b.x, var_0.b.x, var_0.b.x), var_0.a.wxy, var_0.d)), func_4(vec3<u32>(u_input.d, 58029u, u_input.c.x), var_0, vec2<bool>(var_0.d, true), Struct_2(u_input.d, Struct_1(vec4<i32>(0i, 6430i, 1i, -2147483647i), vec4<f32>(-1279f, var_0.b.x, var_0.b.x, -100f), var_0.c, false))).b.b, firstLeadingBit(50499u)), all(vec2<bool>(false, var_0.d)) != all(vec2<bool>(false, false))).a, var_0);
    var var_2 = select(0i, 13830i, var_1.b.d);
    let var_3 = var_0;
    var var_4 = Struct_3(vec2<i32>(-42426i, var_3.c.x), func_2(var_1, func_4(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a, u_input.d, u_input.d), vec3<u32>(var_1.a, 26959u, var_1.a)), vec3<u32>(u_input.d, u_input.a, 1u)), var_3, select(select(vec2<bool>(false, var_0.d), vec2<bool>(false, false), var_1.b.d), !vec2<bool>(var_0.d, true), !var_0.d), var_1), Struct_3(func_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.d, u_input.d), vec3<u32>(12909u, 82487u, 4294967295u), vec3<u32>(u_input.c.x, var_1.a, var_1.a)), var_1.b, !vec2<bool>(var_1.b.d, var_3.d), var_1).b.b.c.yx, var_1, func_2(func_2(Struct_2(var_1.a, var_3), Struct_3(var_3.a.ww, var_1, Struct_1(vec4<i32>(2147483647i, u_input.b.x, var_0.c.x, -9978i), var_3.b, var_3.c, true), 0u), Struct_3(vec2<i32>(u_input.b.x, u_input.b.x), var_1, var_3, u_input.c.x), var_1.b.d), func_4(vec3<u32>(21271u, 106017u, var_1.a), var_0, vec2<bool>(var_0.d, true), Struct_2(u_input.a, var_3)), Struct_3(vec2<i32>(0i, -50597i), Struct_2(1u, Struct_1(var_1.b.a, var_3.b, vec3<i32>(u_input.b.x, -2147483647i, var_1.b.c.x), var_1.b.d)), var_1.b, u_input.a), false).b, abs(_wgslsmith_div_u32(var_1.a, 1u))), all(!(!vec2<bool>(false, var_1.b.d)))), Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + _wgslsmith_f_op_vec4_f32(floor(var_0.b)))), -(vec3<i32>(-26433i, 0i, u_input.b.x) | select(var_0.c, var_3.c, var_1.b.d)), false), func_4(~vec3<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, u_input.d, u_input.c.x), vec3<u32>(68260u, u_input.a, var_1.a)), 16699u), func_2(var_1, func_4(vec3<u32>(4294967295u, 1u, 37499u) & vec3<u32>(u_input.a, u_input.d, u_input.d), func_2(Struct_2(u_input.c.x, var_1.b), Struct_3(vec2<i32>(u_input.b.x, var_1.b.a.x), var_1, var_1.b, var_1.a), Struct_3(vec2<i32>(4401i, u_input.b.x), Struct_2(u_input.a, Struct_1(var_1.b.a, var_1.b.b, var_3.a.ywz, var_1.b.d)), Struct_1(var_1.b.a, var_0.b, var_3.a.zxx, var_0.d), u_input.d), true).b, select(vec2<bool>(var_0.d, true), vec2<bool>(var_1.b.d, true), var_1.b.d), var_1), func_4(vec3<u32>(0u, 1u, 62957u), var_3, vec2<bool>(true, true), var_1), var_3.d).b, vec2<bool>(var_0.d, all(vec2<bool>(true, var_3.d)) | true), var_1).b.a);
    return func_4(vec3<u32>(4294967295u, 4294967295u, 1u) | ~(~(~vec3<u32>(4294967295u, 37146u, var_1.a))), func_2(Struct_2(var_1.a, Struct_1(reverseBits(var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(613f, var_0.b.x, -2313f, var_1.b.b.x)), vec3<i32>(-60337i, 2147483647i, -64733i), var_1.b.d)), func_4((vec3<u32>(55253u, 4294967295u, 126195u) >> (vec3<u32>(4294967295u, 4294967295u, u_input.d) % vec3<u32>(32u))) ^ ~vec3<u32>(4294967295u, 4294967295u, var_1.a), func_4(~vec3<u32>(100559u, var_4.d, var_4.d), func_2(var_1, Struct_3(vec2<i32>(2147483647i, 0i), Struct_2(var_1.a, var_0), Struct_1(var_4.b.b.a, var_3.b, var_3.a.xwz, true), var_1.a), Struct_3(vec2<i32>(var_3.a.x, var_0.c.x), var_4.b, var_1.b, var_4.b.a), var_1.b.d).b, vec2<bool>(var_0.d, var_0.d), Struct_2(53896u, var_4.c)).b.b, select(select(vec2<bool>(true, var_0.d), vec2<bool>(var_3.d, var_3.d), vec2<bool>(var_4.b.b.d, false)), !vec2<bool>(var_4.b.b.d, false), true), func_4(countOneBits(vec3<u32>(u_input.d, 36640u, 27135u)), Struct_1(vec4<i32>(var_0.c.x, var_1.b.a.x, -18587i, var_4.b.b.a.x), var_4.b.b.b, var_0.c, var_1.b.d), !vec2<bool>(var_3.d, true), func_4(vec3<u32>(0u, 4294967295u, 42806u), Struct_1(var_4.b.b.a, vec4<f32>(var_1.b.b.x, 194f, -1095f, -872f), vec3<i32>(var_0.c.x, var_0.a.x, 1i), false), vec2<bool>(var_1.b.d, var_3.d), Struct_2(u_input.c.x, Struct_1(vec4<i32>(var_4.b.b.a.x, -1i, -4222i, var_0.a.x), var_4.c.b, vec3<i32>(2147483647i, 1i, -2147483647i), false))).b).b), func_4(min(~vec3<u32>(var_1.a, var_1.a, u_input.d), vec3<u32>(3843u, 0u, var_4.b.a)), var_3, vec2<bool>(func_2(var_1, Struct_3(var_4.a, var_1, var_1.b, u_input.d), Struct_3(var_0.a.wx, Struct_2(26159u, Struct_1(vec4<i32>(1i, var_4.c.a.x, var_0.a.x, 2147483647i), var_1.b.b, var_0.a.wzw, false)), var_4.c, 836u), var_3.d).b.d, true), var_1), var_0.d).b, vec2<bool>(var_0.d & var_3.d, true), func_2(Struct_2(~_wgslsmith_mod_u32(32228u, var_1.a), var_0), func_4(vec3<u32>(var_4.d, 41866u, _wgslsmith_sub_u32(1u, u_input.a)), func_2(var_1, Struct_3(vec2<i32>(var_4.b.b.c.x, var_0.c.x), var_1, var_4.c, 1u), func_4(vec3<u32>(var_1.a, 30544u, var_4.d), var_3, vec2<bool>(var_4.b.b.d, false), Struct_2(u_input.d, var_0)), var_3.d).b, vec2<bool>(select(false, var_0.d, var_0.d), func_4(vec3<u32>(0u, var_1.a, 4294967295u), Struct_1(var_1.b.a, vec4<f32>(-1164f, var_4.b.b.b.x, var_4.b.b.b.x, 1017f), vec3<i32>(var_4.c.a.x, -1i, var_0.c.x), true), vec2<bool>(var_4.b.b.d, var_3.d), Struct_2(12405u, var_1.b)).c.d), Struct_2(_wgslsmith_clamp_u32(var_1.a, 123897u, 4294967295u), var_0)), func_4(select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_4.d, var_1.a), vec3<u32>(4294967295u, u_input.c.x, 7178u)), abs(vec3<u32>(24829u, 10985u, u_input.c.x)), vec3<bool>(true, false, false)), func_2(Struct_2(var_4.d, Struct_1(vec4<i32>(-19349i, 1i, var_4.c.a.x, -2147483647i), vec4<f32>(212f, var_4.c.b.x, 1411f, -235f), var_3.a.zxw, true)), func_4(vec3<u32>(11187u, 35259u, var_1.a), Struct_1(var_4.c.a, vec4<f32>(-200f, var_0.b.x, -1000f, var_3.b.x), var_4.b.b.a.yxw, false), vec2<bool>(var_0.d, var_4.b.b.d), Struct_2(18172u, Struct_1(var_1.b.a, var_1.b.b, var_1.b.a.wxy, var_4.b.b.d))), func_4(vec3<u32>(11464u, 25723u, 0u), Struct_1(vec4<i32>(-23893i, 22521i, var_4.c.a.x, -41455i), vec4<f32>(-580f, -513f, var_4.c.b.x, -458f), vec3<i32>(var_0.a.x, 2147483647i, -29371i), var_3.d), vec2<bool>(true, false), Struct_2(var_4.d, var_4.b.b)), false).b, vec2<bool>(var_1.b.d & true, func_4(vec3<u32>(var_1.a, var_1.a, var_1.a), var_3, vec2<bool>(false, false), Struct_2(24654u, Struct_1(var_0.a, vec4<f32>(-505f, 3111f, var_4.b.b.b.x, var_4.b.b.b.x), vec3<i32>(var_1.b.a.x, var_3.a.x, u_input.b.x), false))).c.d), Struct_2(_wgslsmith_div_u32(35164u, 9670u), func_2(var_4.b, Struct_3(vec2<i32>(-1i, -2525i), var_1, Struct_1(var_3.a, vec4<f32>(var_4.c.b.x, 1000f, -909f, 758f), vec3<i32>(-30761i, var_4.c.a.x, u_input.b.x), var_0.d), 4294967295u), Struct_3(var_0.c.zy, var_4.b, Struct_1(var_1.b.a, var_0.b, vec3<i32>(var_3.c.x, 368i, u_input.b.x), true), u_input.a), true).b)), 4989u >= min(u_input.c.x, 4294967295u)));
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = true;
    let var_1 = _wgslsmith_dot_vec4_u32(select(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 79342u, 4294967295u, 31768u) << (vec4<u32>(0u, u_input.c.x, 27150u, arg_0.b.a) % vec4<u32>(32u)), max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 64899u, arg_0.b.a, u_input.d), vec4<u32>(29056u, arg_0.b.a, 4294967295u, u_input.d)), ~vec4<u32>(38683u, 0u, arg_0.d, 4294967295u))), ~_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.c.x, 1u, 1u, u_input.a)), ~vec4<u32>(u_input.c.x, arg_0.d, 0u, u_input.c.x)), func_4(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), arg_0.d >> (u_input.c.x % 32u), u_input.d), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.c.a.x, 0i, arg_0.c.a.x, u_input.b.x), vec4<i32>(arg_0.b.b.a.x, 2147483647i, 38582i, -57897i)), _wgslsmith_f_op_vec4_f32(select(arg_0.b.b.b, vec4<f32>(arg_2, 1141f, arg_0.b.b.b.x, -207f), vec4<bool>(var_0, var_0, var_0, arg_1))), arg_0.c.a.xwx << (vec3<u32>(65072u, u_input.d, arg_0.b.a) % vec3<u32>(32u)), true), vec2<bool>(true, any(vec4<bool>(true, false, arg_1, false))), func_1().b).c.d), ~(~(~(~vec4<u32>(arg_0.b.a, 34088u, arg_0.d, 9574u)))));
    var var_2 = Struct_3(countOneBits(select(arg_0.b.b.c.yy, vec2<i32>(-1i) * -vec2<i32>(arg_0.c.c.x, 8527i), vec2<bool>(true, true))), Struct_2(29398u, Struct_1(~(-vec4<i32>(u_input.b.x, arg_0.c.a.x, -8983i, u_input.b.x)), _wgslsmith_f_op_vec4_f32(func_5(!vec4<bool>(arg_1, true, arg_0.c.d, false), _wgslsmith_add_u32(48641u, 26190u), arg_0)), arg_0.b.b.c, true)), arg_0.c, ~_wgslsmith_add_u32(10209u, func_1().d));
    var_2 = arg_0;
    let var_3 = arg_0;
    return select(min(arg_0.d, min(~4294967295u, 1u ^ var_1)) & arg_0.b.a, ~var_2.d, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(43582u, 1u);
    var var_1 = u_input.c.x;
    var_0 = func_6(func_1(), !(-(~8460i) <= u_input.b.x), func_1().c.b.x);
    var_1 = func_1().d;
    let var_2 = true;
    let var_3 = select(vec4<bool>(false, var_2, func_3(~u_input.b, 36837u), !var_2), vec4<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), var_2), !vec2<bool>(var_2, var_2), !var_2)), var_2, true, all(vec4<bool>(true, var_2 && var_2, true, var_2))), func_4(~select(vec3<u32>(u_input.c.x, 0u, u_input.c.x), ~vec3<u32>(73390u, 1u, u_input.d), select(vec3<bool>(false, var_2, var_2), vec3<bool>(false, var_2, true), true)), Struct_1(~(vec4<i32>(u_input.b.x, -1i, u_input.b.x, -1i) >> (vec4<u32>(u_input.d, 36840u, u_input.a, u_input.d) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-267f, 222f, -209f, -2618f), vec4<f32>(-1691f, -872f, 650f, 705f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-936f, 1021f, -1738f, 366f))), vec3<i32>(firstLeadingBit(85158i), u_input.b.x, 1i), func_1().a.x < u_input.b.x), select(!vec2<bool>(var_2, var_2), select(select(vec2<bool>(var_2, var_2), vec2<bool>(true, false), var_2), vec2<bool>(var_2, true), true), var_2), Struct_2(u_input.d, func_2(Struct_2(7833u, Struct_1(vec4<i32>(678i, u_input.b.x, u_input.b.x, 61115i), vec4<f32>(-779f, 1248f, 720f, 1601f), vec3<i32>(2147483647i, 17630i, -50754i), var_2)), func_4(vec3<u32>(19532u, 103168u, u_input.d), Struct_1(vec4<i32>(11083i, u_input.b.x, u_input.b.x, 39986i), vec4<f32>(-332f, 1746f, 779f, -570f), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), true), vec2<bool>(var_2, var_2), Struct_2(55544u, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i), vec4<f32>(-162f, 630f, 335f, 947f), vec3<i32>(14723i, -8710i, u_input.b.x), var_2))), func_4(vec3<u32>(u_input.c.x, 39336u, u_input.d), Struct_1(vec4<i32>(u_input.b.x, 15846i, u_input.b.x, u_input.b.x), vec4<f32>(472f, -675f, -244f, 544f), vec3<i32>(0i, u_input.b.x, 2147483647i), true), vec2<bool>(var_2, var_2), Struct_2(u_input.a, Struct_1(vec4<i32>(-1i, -2147483647i, 0i, 1i), vec4<f32>(-1000f, 1986f, 518f, -858f), vec3<i32>(-26631i, u_input.b.x, u_input.b.x), var_2))), var_2).b)).b.b.d);
    var_1 = _wgslsmith_sub_u32(min(~_wgslsmith_add_u32(14004u, countOneBits(u_input.a)), u_input.a), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.d, u_input.a) << (vec3<u32>(~15294u, 4294967295u, _wgslsmith_add_u32(4294967295u, u_input.a)) % vec3<u32>(32u)), countOneBits(select(min(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.c.x, 9148u, u_input.c.x)), vec3<u32>(1u, 17215u, u_input.c.x), false | var_3.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(224f, -1307f, 1816f, -1465f) * vec4<f32>(598f, 796f, 1052f, -409f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-450f, -907f, -164f, 1022f))), !select(vec4<bool>(false, true, false, var_2), vec4<bool>(var_2, var_3.x, false, var_2), true))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(846f * -1088f), _wgslsmith_f_op_f32(f32(-1f) * -547f), _wgslsmith_f_op_f32(1069f * 567f), -682f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1095f, -1214f, 1277f, -1329f)))))), vec2<u32>(func_4(~vec3<u32>(u_input.a, u_input.c.x, u_input.d), func_1().b.b, !vec2<bool>(var_2, var_2), func_2(Struct_2(1u, Struct_1(vec4<i32>(1i, -1i, u_input.b.x, u_input.b.x), vec4<f32>(472f, -170f, 285f, -223f), vec3<i32>(1i, 18991i, 2147483647i), var_3.x)), Struct_3(u_input.b, Struct_2(5525u, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<f32>(-956f, -1000f, -281f, 916f), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), var_3.x)), Struct_1(vec4<i32>(2147483647i, -2147483647i, 0i, 2147483647i), vec4<f32>(251f, 134f, 224f, 1433f), vec3<i32>(-1i, u_input.b.x, 2147483647i), var_3.x), 65253u), Struct_3(vec2<i32>(1i, u_input.b.x), Struct_2(u_input.a, Struct_1(vec4<i32>(3250i, 1i, -1i, 32499i), vec4<f32>(-863f, -108f, -890f, 552f), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), var_2)), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<f32>(-1451f, 1026f, 1578f, 1247f), vec3<i32>(0i, -1i, u_input.b.x), true), u_input.d), false)).d, 4294967295u) << (~_wgslsmith_sub_vec2_u32(~u_input.c, vec2<u32>(29922u, u_input.c.x)) % vec2<u32>(32u)));
}

