struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> bool {
    var var_0 = arg_0.a;
    var var_1 = -arg_0.a;
    global0 = 1i;
    let var_2 = Struct_3(~(-arg_0.a), u_input.a.zzy);
    var_1 = vec3<i32>(-2147483647i & var_0.x, u_input.b, _wgslsmith_clamp_i32(u_input.b, 1i, _wgslsmith_add_i32(var_1.x, i32(-1i) * -u_input.b)));
    return ~(~arg_0.b.x) <= _wgslsmith_div_u32(firstTrailingBit(firstLeadingBit(arg_1 ^ 7350u)), ~(_wgslsmith_add_u32(1u, 1u) << (_wgslsmith_sub_u32(arg_1, 0u) % 32u)));
}

fn func_2(arg_0: i32, arg_1: Struct_4) -> vec3<i32> {
    let var_0 = vec4<bool>(func_3(Struct_3(_wgslsmith_div_vec3_i32(vec3<i32>(-73461i, -22874i, u_input.b), vec3<i32>(u_input.b, 37334i, -30307i)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 40174u, u_input.a.x), u_input.a.xzx)), _wgslsmith_div_u32(4294967295u, countOneBits(~20247u))), 4294967295u <= ~_wgslsmith_add_u32(u_input.c >> (1u % 32u), u_input.c | 4172u), (-303f != arg_1.b.x) & any(vec3<bool>(true, true, true)), (firstLeadingBit(-2147483647i ^ u_input.b) ^ 13736i) < _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b ^ arg_0, -arg_0), _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, arg_0, 0i), vec3<i32>(arg_0, -1i, u_input.b) >> (vec3<u32>(u_input.a.x, 4294967295u, u_input.c) % vec3<u32>(32u)))));
    let var_1 = i32(-1i) * -49318i;
    global0 = _wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 46031i), vec2<i32>(-firstTrailingBit(arg_0), arg_0)));
    global0 = _wgslsmith_sub_i32(31884i >> (u_input.c % 32u), i32(-1i) * -2147483647i) & _wgslsmith_div_i32(arg_0 | u_input.b, -6038i);
    var var_2 = firstTrailingBit(59854u | firstLeadingBit(firstTrailingBit(u_input.c))) == select(0u ^ ~(~u_input.a.x), u_input.c, true);
    return -vec3<i32>(select(-40173i, 1414i, true), ~u_input.b, select(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, -2147483647i), vec4<i32>(-1i, 0i, 2147483647i, arg_0)), arg_0, 1242f <= arg_1.b.x)) ^ _wgslsmith_add_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(var_1, 4415i, 1i)), _wgslsmith_clamp_vec3_i32(reverseBits(-vec3<i32>(-37220i, -2074i, 15813i)), reverseBits(firstTrailingBit(vec3<i32>(-73119i, arg_0, u_input.b))), vec3<i32>(-2147483647i, var_1, u_input.b)));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    global0 = abs(firstTrailingBit(_wgslsmith_mod_i32(7858i, u_input.b)));
    var var_0 = Struct_5(_wgslsmith_add_i32(arg_2.a.x, arg_2.a.x), arg_2, _wgslsmith_clamp_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(arg_2.a.xy, vec2<i32>(0i, -3027i))) & (arg_2.a.yy & _wgslsmith_add_vec2_i32(arg_2.a.xx, arg_2.a.xz)), func_2(_wgslsmith_mult_i32(u_input.b, ~u_input.b), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1466f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-103f, 170f, -1033f, -643f))))).yz, vec2<i32>(~(-2147483647i) << (~arg_3.x % 32u), arg_2.a.x)), _wgslsmith_add_i32(1i, ~_wgslsmith_dot_vec2_i32(arg_2.a.yx, arg_2.a.zz | arg_2.a.xz)));
    var var_1 = all(arg_2.b);
    var_1 = false;
    var var_2 = select(18932i, var_0.d, all(arg_2.b.yzw));
    return var_0.b;
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    global0 = u_input.b;
    global0 = 0i;
    let var_0 = 15430i;
    global0 = 0i;
    global0 = -18842i;
    return Struct_3(vec3<i32>(32124i ^ _wgslsmith_mult_i32(var_0, var_0 << (96617u % 32u)), _wgslsmith_dot_vec3_i32(arg_0.a, -_wgslsmith_div_vec3_i32(arg_0.a, arg_0.a)), ~_wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0, -1i, var_0), vec4<i32>(2147483647i, var_0, -2147483647i, var_0)))), u_input.a.xxx);
}

fn func_1(arg_0: Struct_5) -> Struct_3 {
    global0 = arg_0.d;
    var var_0 = firstLeadingBit(vec4<i32>(i32(-1i) * -(~u_input.b), u_input.b, _wgslsmith_clamp_i32(-57711i ^ arg_0.a, arg_0.b.a.x, countOneBits(arg_0.a)), ~arg_0.b.a.x));
    var var_1 = -28783i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1011f, _wgslsmith_f_op_f32(1442f - -1319f), _wgslsmith_f_op_f32(step(671f, -171f)), _wgslsmith_f_op_f32(max(773f, 1005f))), vec4<f32>(-839f, _wgslsmith_div_f32(968f, 172f), -469f, _wgslsmith_f_op_f32(step(1441f, 351f)))))));
    let var_3 = func_5(func_4(86489u, !vec2<bool>(u_input.b <= -1i, true), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(47035i, var_0.x, -1i), vec3<i32>(-2147483647i, var_0.x, arg_0.b.a.x), func_2(-7087i, Struct_4(vec2<f32>(1000f, 750f), vec4<f32>(var_2.x, -186f, var_2.x, var_2.x)))), arg_0.b.b), ~vec2<u32>(u_input.c, u_input.a.x) ^ firstTrailingBit(~vec2<u32>(1u, u_input.c))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_5(u_input.b, Struct_1(vec3<i32>(29382i, 2147483647i, u_input.b) & ~vec3<i32>(0i, u_input.b, u_input.b), vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true)), vec2<i32>(-1i, -31917i), u_input.b));
    var var_1 = !vec2<bool>(!all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), true);
    var_1 = func_4(countOneBits(u_input.a.x), vec2<bool>(all(vec2<bool>(true, var_1.x)), true), func_4(max(~1u, firstTrailingBit(18708u)), select(!select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x), var_1.x), func_4(u_input.a.x, vec2<bool>(var_1.x, var_1.x), func_4(42576u, vec2<bool>(var_1.x, true), Struct_1(var_0.a, vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), vec2<u32>(u_input.a.x, 26015u)), max(var_0.b.xy, vec2<u32>(27857u, u_input.c))).b.wy, !func_4(var_0.b.x, vec2<bool>(false, true), Struct_1(vec3<i32>(2147483647i, 2147483647i, var_0.a.x), vec4<bool>(var_1.x, true, var_1.x, true)), var_0.b.zy).b.yx), func_4(min(var_0.b.x, var_0.b.x | u_input.a.x), !vec2<bool>(var_1.x, true), Struct_1(var_0.a, vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec2_u32(u_input.a.xz, u_input.a.zz & vec2<u32>(0u, 17783u), ~vec2<u32>(32678u, var_0.b.x))), vec2<u32>(var_0.b.x, 48563u)), vec2<u32>(abs(abs(var_0.b.x)), 1u)).b.zy;
    var_0 = func_5(func_4(74445u, func_4(8036u, func_4(1u, select(vec2<bool>(true, true), vec2<bool>(false, var_1.x), false), func_4(60040u, vec2<bool>(false, var_1.x), Struct_1(vec3<i32>(var_0.a.x, u_input.b, -1i), vec4<bool>(true, var_1.x, var_1.x, true)), vec2<u32>(u_input.a.x, u_input.c)), u_input.a.yw).b.yy, Struct_1(var_0.a, vec4<bool>(false, var_1.x, var_1.x, true)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 1u) << (var_0.b.yx % vec2<u32>(32u)), vec2<u32>(78369u, 57824u))).b.xw, func_4(~(~1u), vec2<bool>(!var_1.x, !var_1.x), func_4(u_input.a.x << (0u % 32u), vec2<bool>(true, var_1.x), func_4(0u, vec2<bool>(true, var_1.x), Struct_1(vec3<i32>(-52321i, -2147483647i, -1i), vec4<bool>(var_1.x, var_1.x, false, true)), vec2<u32>(77475u, 81570u)), firstTrailingBit(vec2<u32>(u_input.a.x, var_0.b.x))), u_input.a.yx), select(vec2<u32>(1u, var_0.b.x), ~_wgslsmith_sub_vec2_u32(u_input.a.xw, vec2<u32>(16801u, var_0.b.x)), vec2<bool>(var_1.x, all(vec3<bool>(false, true, true))))));
    let var_2 = Struct_5(func_2(-15867i, Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -672f), vec2<f32>(-548f, -696f))) + vec2<f32>(1277f, -975f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1329f), _wgslsmith_f_op_f32(f32(-1f) * -1584f), _wgslsmith_div_f32(-182f, 797f), -1084f))).x, Struct_1(select(vec3<i32>(var_0.a.x, var_0.a.x << (var_0.b.x % 32u), -68713i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 0i, u_input.b), vec3<i32>(u_input.b, -2147483647i, u_input.b), _wgslsmith_sub_vec3_i32(var_0.a, var_0.a)), !vec3<bool>(var_1.x, var_1.x, false)), select(!vec4<bool>(var_1.x, var_1.x, false, var_1.x), select(!vec4<bool>(true, var_1.x, var_1.x, false), select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, false)), any(vec4<bool>(var_1.x, false, true, true))), select(!vec4<bool>(true, true, true, var_1.x), !vec4<bool>(var_1.x, true, var_1.x, true), !vec4<bool>(var_1.x, true, var_1.x, true)))), vec2<i32>(-_wgslsmith_sub_i32(1i << (0u % 32u), -30200i), firstLeadingBit(~_wgslsmith_mult_i32(u_input.b, -1i))), firstTrailingBit(var_0.a.x));
    var_0 = func_5(Struct_1(var_0.a, select(func_4(_wgslsmith_mod_u32(u_input.a.x, 31881u), select(var_2.b.b.wx, var_2.b.b.zx, var_1.x), func_4(u_input.c, vec2<bool>(true, var_1.x), Struct_1(var_2.b.a, vec4<bool>(true, var_1.x, false, true)), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(36394u, 4294967295u)).b, !vec4<bool>(var_2.b.b.x, true, var_1.x, var_1.x), !var_2.b.b.x)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-717f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -659f)))))), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_sub_i32(var_0.a.x, _wgslsmith_sub_i32(var_0.a.x, 25443i)), -1i, ~19490i), firstTrailingBit(abs(vec4<i32>(-43683i, 1i, var_0.a.x, var_2.b.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b, _wgslsmith_div_f32(var_3.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-3057f))))), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.xx, var_0.b.xx)));
}

