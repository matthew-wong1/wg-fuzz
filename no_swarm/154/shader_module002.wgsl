struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: Struct_2) -> vec2<bool> {
    global0 = -(~arg_3.a.x);
    global0 = -1i >> (abs(~(_wgslsmith_mult_u32(1u, 105930u) << (~arg_0.c.b % 32u))) % 32u);
    global0 = 1i;
    global0 = (u_input.b | select(arg_0.a.x, -2147483647i, !arg_2.x)) | firstTrailingBit(max(~(arg_3.a.x | 4845i), _wgslsmith_mult_i32(-arg_0.a.x, -2147483647i)));
    global0 = _wgslsmith_add_i32(firstTrailingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -341i, 1i), arg_0.a.xwz) ^ -2147483647i), -(~_wgslsmith_dot_vec4_i32(arg_0.a, _wgslsmith_mult_vec4_i32(arg_3.a, vec4<i32>(arg_0.a.x, arg_0.a.x, 1i, arg_0.a.x)))));
    return !select(vec2<bool>(all(arg_2), any(!vec3<bool>(arg_2.x, arg_3.c.a.x, arg_3.e.a.x))), arg_2, select(select(select(vec2<bool>(true, true), vec2<bool>(false, arg_3.e.a.x), arg_3.d.x), arg_2, arg_0.e.a.xy), arg_0.c.a.yx, vec2<bool>(!arg_3.b.x, true)));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: i32, arg_3: i32) -> bool {
    var var_0 = ~_wgslsmith_add_i32(23490i, ~arg_2) << (4294967295u % 32u);
    let var_1 = Struct_2(~_wgslsmith_mod_vec4_i32(-(~vec4<i32>(-2147483647i, arg_2, arg_3, 26343i)), reverseBits(countOneBits(vec4<i32>(0i, arg_2, 0i, -1i)))), !(!func_3(Struct_2(vec4<i32>(12393i, 2147483647i, arg_1.x, 0i), vec2<bool>(false, false), Struct_1(vec3<bool>(false, true, true), 0u), vec2<bool>(true, false), Struct_1(vec3<bool>(true, false, true), 28650u)), vec2<f32>(-554f, -411f), vec2<bool>(true, true), Struct_2(vec4<i32>(-16224i, u_input.b, arg_3, -2147483647i), vec2<bool>(false, false), Struct_1(vec3<bool>(false, true, true), 57719u), vec2<bool>(true, true), Struct_1(vec3<bool>(true, true, false), arg_0)))), Struct_1(vec3<bool>(true, true, all(vec2<bool>(true, false))), u_input.a.x), vec2<bool>(true, true | !any(vec2<bool>(false, true))), Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(~11103u, 1u, true) >> (arg_0 % 32u)));
    var var_2 = ~max(firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(4294967295u, 4294967295u, 3818u, u_input.d.x))) >> (u_input.a.x % 32u), arg_0);
    let var_3 = ~u_input.c;
    var_2 = ~reverseBits(min(1u, abs(~var_1.c.b)));
    return var_1.b.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_1 {
    global0 = -2147483647i;
    var var_0 = arg_0.c;
    let var_1 = arg_0.a.zyy;
    var_0 = arg_0.c;
    let var_2 = select(vec3<bool>(arg_0.c.b != u_input.d.x, !any(vec3<bool>(var_0.a.x, false, true)) & true, false), select(select(vec3<bool>(arg_0.b.x, true, true), select(!arg_0.c.a, vec3<bool>(var_0.a.x, false, var_0.a.x), !vec3<bool>(arg_0.e.a.x, var_0.a.x, false)), true), select(vec3<bool>(arg_0.e.a.x || var_0.a.x, var_0.a.x, func_2(35006u, vec3<i32>(arg_0.a.x, -1i, -12418i), u_input.b, u_input.b)), select(!var_0.a, select(var_0.a, var_0.a, false), false), !any(vec4<bool>(false, false, arg_0.b.x, var_0.a.x))), _wgslsmith_add_i32(~u_input.b, _wgslsmith_add_i32(-2147483647i, u_input.b)) > _wgslsmith_dot_vec4_i32(-arg_0.a, vec4<i32>(var_1.x, var_1.x, 2147483647i, -2147483647i))), var_0.a);
    return arg_0.e;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = vec2<i32>(-(~(~(-2147483647i << (arg_0.x % 32u)))), firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, 2147483647i), -arg_3.a.yw))));
    var var_1 = abs(abs(vec4<i32>(2147483647i, firstTrailingBit(31061i), _wgslsmith_mod_i32(firstTrailingBit(55556i), min(-18705i, 0i)), arg_1.x)));
    let var_2 = 2147483647i;
    var var_3 = func_1(Struct_2(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, -29332i, -5209i), _wgslsmith_mult_i32(arg_1.x, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2, arg_1.x, u_input.b) ^ var_1.yyz, countOneBits(var_1.yzz)), -reverseBits(u_input.b)), !arg_3.c.a.zx, arg_2, select(!func_1(Struct_2(arg_3.a, arg_2.a.yy, Struct_1(arg_3.c.a, 1u), arg_3.c.a.yx, Struct_1(arg_3.c.a, arg_0.x)), vec4<u32>(arg_3.e.b, 9220u, 0u, 32661u)).a.yx, vec2<bool>(select(arg_2.a.x, arg_3.d.x, arg_2.a.x), arg_2.a.x), arg_3.e.a.zy), Struct_1(select(vec3<bool>(false, arg_2.a.x, arg_2.a.x), func_1(arg_3, vec4<u32>(4294967295u, arg_0.x, arg_2.b, 0u)).a, !vec3<bool>(arg_3.c.a.x, arg_2.a.x, arg_2.a.x)), ~firstLeadingBit(4591u))), ~u_input.d);
    global0 = 1i;
    return arg_2;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(arg_1.a, abs(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(u_input.a.xx, u_input.d.yx)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 0u), ~u_input.a.yz))));
    let var_1 = Struct_2(-_wgslsmith_add_vec4_i32(-vec4<i32>(0i, u_input.b, -34293i, 23436i) ^ (vec4<i32>(u_input.b, -57353i, 0i, u_input.b) >> (u_input.d % vec4<u32>(32u))), vec4<i32>(u_input.b, select(-2147483647i, u_input.b, true), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-1i, u_input.b, u_input.b)), _wgslsmith_mult_i32(27106i, 45893i))), arg_1.a.xy, func_4(u_input.d, select(vec4<i32>(2147483647i, 32912i, -39508i, u_input.b) ^ vec4<i32>(-32471i, -2147483647i, u_input.b, -2147483647i), vec4<i32>(0i, u_input.b, u_input.b, 0i), select(vec4<bool>(var_0.a.x, var_0.a.x, arg_1.a.x, arg_1.a.x), vec4<bool>(var_0.a.x, arg_1.a.x, var_0.a.x, false), vec4<bool>(true, var_0.a.x, true, arg_1.a.x))) ^ firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 1i), vec4<i32>(6610i, 0i, u_input.b, u_input.b))), arg_1, Struct_2(vec4<i32>(i32(-1i) * -1i, ~u_input.b, select(-1i, 0i, var_0.a.x), u_input.b | u_input.b), select(vec2<bool>(true, true), func_4(u_input.d, vec4<i32>(-30220i, u_input.b, -5354i, u_input.b), Struct_1(vec3<bool>(arg_1.a.x, var_0.a.x, arg_1.a.x), 77098u), Struct_2(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b), vec2<bool>(true, true), Struct_1(vec3<bool>(false, var_0.a.x, false), u_input.d.x), vec2<bool>(arg_1.a.x, arg_1.a.x), arg_1)).a.zy, var_0.a.x), func_4(~u_input.d, _wgslsmith_mod_vec4_i32(vec4<i32>(36554i, u_input.b, u_input.b, -9049i), vec4<i32>(1i, -2147483647i, 1i, u_input.b)), arg_1, Struct_2(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec2<bool>(var_0.a.x, arg_1.a.x), Struct_1(var_0.a, 36704u), vec2<bool>(false, var_0.a.x), Struct_1(arg_1.a, u_input.c.x))), select(!var_0.a.zz, var_0.a.yz, arg_1.a.yz), Struct_1(!vec3<bool>(false, var_0.a.x, arg_1.a.x), select(0u, 54074u, false)))), arg_1.a.yz, Struct_1(func_4(~vec4<u32>(44846u, arg_1.b, 26973u, 22037u), ~vec4<i32>(32986i, u_input.b, 18246i, -1i) ^ -vec4<i32>(u_input.b, -37740i, -1i, u_input.b), Struct_1(!var_0.a, u_input.e & 28084u), Struct_2(vec4<i32>(-17570i, 34335i, u_input.b, u_input.b) >> (u_input.d % vec4<u32>(32u)), !var_0.a.xz, func_4(vec4<u32>(arg_1.b, 1u, 1u, var_0.b), vec4<i32>(27945i, u_input.b, u_input.b, -57918i), arg_1, Struct_2(vec4<i32>(8184i, -31360i, u_input.b, u_input.b), arg_1.a.zx, Struct_1(vec3<bool>(true, false, true), u_input.e), vec2<bool>(arg_1.a.x, var_0.a.x), arg_1)), vec2<bool>(true, arg_1.a.x), Struct_1(var_0.a, arg_1.b))).a, 1u));
    var_0 = arg_1;
    let var_2 = Struct_1(func_1(Struct_2(~(~vec4<i32>(var_1.a.x, -20569i, 2147483647i, var_1.a.x)), var_0.a.zy, var_1.c, vec2<bool>(true, func_3(Struct_2(vec4<i32>(55277i, var_1.a.x, var_1.a.x, u_input.b), var_1.c.a.yz, Struct_1(var_0.a, 0u), vec2<bool>(var_1.e.a.x, false), Struct_1(var_0.a, 35950u)), vec2<f32>(-270f, 880f), vec2<bool>(false, arg_1.a.x), var_1).x), func_4(vec4<u32>(var_0.b, arg_1.b, var_1.e.b, 48913u), var_1.a ^ vec4<i32>(var_1.a.x, 20572i, -1i, -53372i), arg_1, var_1)), vec4<u32>(31027u, max(1u, arg_1.b) << (_wgslsmith_clamp_u32(106768u, 7687u, var_1.c.b) % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), var_0.b), abs(var_1.c.b) >> (~64988u % 32u))).a, 14240u);
    let var_3 = vec3<bool>((((-1i <= var_1.a.x) || all(vec2<bool>(arg_1.a.x, false))) | all(vec2<bool>(var_1.b.x, arg_1.a.x))) | true, !func_1(Struct_2(-var_1.a, vec2<bool>(false, true), Struct_1(var_1.e.a, var_0.b), vec2<bool>(var_1.c.a.x, true), Struct_1(var_1.c.a, 30457u)), vec4<u32>(var_1.e.b & 4294967295u, arg_1.b, ~u_input.e, u_input.a.x)).a.x, true);
    return select(!(!var_2.a), vec3<bool>(arg_1.a.x, var_1.d.x, func_1(Struct_2(-var_1.a, func_1(var_1, u_input.d).a.zx, var_1.c, vec2<bool>(false, var_2.a.x), var_2), ~vec4<u32>(var_2.b, u_input.c.x, 0u, u_input.c.x) ^ ~vec4<u32>(41873u, 1u, 2063u, 0u)).a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-189f - _wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1003f)) == -596f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.b << (4294967295u % 32u);
    var var_0 = !(!func_5(vec3<f32>(_wgslsmith_f_op_f32(1000f + 1050f), _wgslsmith_f_op_f32(-312f - 1000f), _wgslsmith_f_op_f32(min(947f, 462f))), func_4(vec4<u32>(u_input.e, u_input.d.x, 1u, u_input.e), ~vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i), func_1(Struct_2(vec4<i32>(1i, -1i, -1i, -1i), vec2<bool>(false, true), Struct_1(vec3<bool>(true, false, true), 65867u), vec2<bool>(true, true), Struct_1(vec3<bool>(false, true, false), 4294967295u)), vec4<u32>(u_input.d.x, u_input.c.x, u_input.e, 4294967295u)), Struct_2(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b), vec2<bool>(true, true), Struct_1(vec3<bool>(true, true, true), 4730u), vec2<bool>(false, true), Struct_1(vec3<bool>(true, false, false), 0u)))));
    var var_1 = Struct_1(vec3<bool>(true, _wgslsmith_add_u32(u_input.e, 13624u) > 1u, true), 0u);
    var var_2 = -1000f;
    let var_3 = Struct_2(firstTrailingBit(-vec4<i32>(reverseBits(-6836i), u_input.b & u_input.b, firstLeadingBit(-49742i), 13530i)), select(var_0.yz, vec2<bool>(any(vec3<bool>(var_0.x, true, var_1.a.x)), all(!vec4<bool>(var_1.a.x, false, true, var_0.x))), func_4(vec4<u32>(105174u, 10871u, min(8507u, u_input.e), 1u), select(~vec4<i32>(0i, 1i, u_input.b, u_input.b), ~vec4<i32>(-32285i, u_input.b, u_input.b, u_input.b), select(vec4<bool>(true, false, true, var_1.a.x), vec4<bool>(false, false, var_0.x, var_1.a.x), false)), func_4(~vec4<u32>(u_input.d.x, 4294967295u, u_input.a.x, 47926u), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, -17410i), vec4<i32>(u_input.b, u_input.b, u_input.b, 54384i)), func_4(u_input.d, vec4<i32>(u_input.b, -10213i, 1i, 0i), Struct_1(var_1.a, u_input.d.x), Struct_2(vec4<i32>(u_input.b, u_input.b, 16494i, u_input.b), var_0.xx, Struct_1(vec3<bool>(var_1.a.x, true, false), 10775u), vec2<bool>(var_1.a.x, false), Struct_1(var_1.a, var_1.b))), Struct_2(vec4<i32>(1i, 14272i, 2147483647i, -2147483647i), vec2<bool>(true, var_1.a.x), Struct_1(var_1.a, u_input.c.x), var_1.a.xz, Struct_1(vec3<bool>(false, true, false), 0u))), Struct_2(vec4<i32>(u_input.b, u_input.b, 0i, 0i), var_0.xy, func_1(Struct_2(vec4<i32>(u_input.b, 1i, u_input.b, 0i), var_0.yy, Struct_1(vec3<bool>(true, var_1.a.x, var_1.a.x), 0u), var_1.a.xx, Struct_1(vec3<bool>(true, var_0.x, true), var_1.b)), u_input.d), func_4(vec4<u32>(u_input.d.x, u_input.e, u_input.c.x, var_1.b), vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), Struct_1(vec3<bool>(true, var_0.x, var_0.x), u_input.d.x), Struct_2(vec4<i32>(-89795i, 24941i, 1i, 2147483647i), var_0.zx, Struct_1(var_1.a, 42667u), vec2<bool>(var_1.a.x, true), Struct_1(var_1.a, u_input.e))).a.yy, Struct_1(vec3<bool>(true, var_1.a.x, var_0.x), var_1.b))).a.xy), Struct_1(vec3<bool>(var_0.x, var_0.x, all(var_1.a)), 1u), vec2<bool>(any(select(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, false, false, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, false, true)), !vec4<bool>(false, var_0.x, true, var_0.x), !vec4<bool>(false, var_0.x, var_0.x, true))), true), func_1(Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b) | vec4<i32>(-29610i, u_input.b, -14108i, u_input.b), vec4<i32>(u_input.b, -2147483647i, -5189i, 0i)), var_1.a.yy, Struct_1(!var_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.c.x, 26875u, u_input.d.x), u_input.d)), vec2<bool>(true, !var_1.a.x), Struct_1(func_4(u_input.d, vec4<i32>(u_input.b, u_input.b, -2147483647i, -48454i), Struct_1(vec3<bool>(var_0.x, var_0.x, true), 27493u), Struct_2(vec4<i32>(-21659i, -2147483647i, -8322i, -42811i), vec2<bool>(var_1.a.x, var_0.x), Struct_1(var_1.a, 4294967295u), var_0.yx, Struct_1(var_1.a, 0u))).a, 82272u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(66590u, var_1.b, u_input.a.x), vec3<u32>(4294967295u, 4774u, 10041u)) & var_1.b, func_1(Struct_2(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec2<bool>(var_1.a.x, var_0.x), Struct_1(vec3<bool>(var_0.x, true, var_1.a.x), 10671u), var_0.xx, Struct_1(var_1.a, 76983u)), _wgslsmith_mod_vec4_u32(u_input.d, u_input.d)).b, 45381u, countOneBits(~0u))));
    let var_4 = !func_4(u_input.d, ~var_3.a, func_1(Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -48397i, var_3.a.x, u_input.b), var_3.a), var_1.a.yy, var_3.c, func_1(var_3, u_input.d).a.zx, func_1(var_3, vec4<u32>(4294967295u, u_input.a.x, var_1.b, 27340u))), min(~u_input.d, _wgslsmith_mult_vec4_u32(u_input.d, u_input.d))), Struct_2(var_3.a, select(vec2<bool>(true, var_1.a.x), func_3(var_3, vec2<f32>(-558f, 941f), vec2<bool>(var_1.a.x, var_1.a.x), var_3), any(vec2<bool>(var_1.a.x, false))), Struct_1(select(vec3<bool>(false, var_0.x, var_1.a.x), var_1.a, var_3.d.x), 1u), func_3(var_3, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1024f, -1035f)), vec2<bool>(var_1.a.x, var_0.x), Struct_2(vec4<i32>(48403i, -44079i, u_input.b, 9240i), var_3.c.a.xz, var_3.c, var_3.d, Struct_1(var_3.c.a, var_3.e.b))), Struct_1(func_4(vec4<u32>(4005u, 63762u, var_1.b, 19674u), var_3.a, var_3.c, var_3).a, func_1(var_3, vec4<u32>(47492u, 6199u, 0u, 16960u)).b))).a;
    var var_5 = reverseBits(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_3.a.x, 34588i) & 1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, var_3.a.x), var_3.a.x)), ~var_3.a.x, -13840i << (~(~var_3.c.b) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-57237i, _wgslsmith_clamp_i32(u_input.b, var_3.a.x, var_3.a.x), u_input.b << (46878u % 32u), 1i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), var_3.a.yz), u_input.b, _wgslsmith_mod_i32(1i, 46078i), 1i))));
    let var_6 = vec4<bool>(any(var_4), func_5(vec3<f32>(229f, _wgslsmith_f_op_f32(-355f - _wgslsmith_f_op_f32(sign(1899f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(378f, -1847f)) + _wgslsmith_f_op_f32(round(-1324f)))), var_3.c).x, all(vec3<bool>(var_4.x, func_2(var_3.c.b, ~var_3.a.zyz, _wgslsmith_dot_vec3_i32(var_3.a.yyw, var_5.zxx), ~u_input.b), all(func_5(vec3<f32>(-110f, -855f, -731f), Struct_1(vec3<bool>(true, true, var_3.b.x), var_1.b))))), func_2(44094u, vec3<i32>(_wgslsmith_dot_vec3_i32(var_5.zww ^ vec3<i32>(var_3.a.x, 44203i, -1i), ~vec3<i32>(49157i, -1i, 1i)), -var_3.a.x, _wgslsmith_dot_vec4_i32(-var_3.a, abs(vec4<i32>(-3353i, u_input.b, -61978i, -2147483647i)))), select(47522i, 2147483647i, all(vec3<bool>(var_1.a.x, true, var_3.c.a.x))), _wgslsmith_sub_i32(~_wgslsmith_div_i32(1i, var_3.a.x), _wgslsmith_mod_i32(-49582i, var_3.a.x) << (var_3.c.b % 32u))));
    var_2 = -843f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-236f)) - _wgslsmith_f_op_f32(f32(-1f) * -855f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(624f, 2651f, -950f) + vec3<f32>(474f, 368f, -115f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(336f, 751f, 428f) + vec3<f32>(-731f, -204f, -487f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -2004f, 697f) - vec3<f32>(1000f, 334f, 346f)))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-733f)))), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1569f, 266f)))))));
}

