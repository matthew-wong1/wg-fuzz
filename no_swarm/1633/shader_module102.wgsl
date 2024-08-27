struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> f32 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(round(480f));
    var var_2 = !any(vec3<bool>(true, true, true));
    var var_3 = var_1;
    var_3 = 357f;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-577f + var_1), var_1));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1476f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1000f)))))), _wgslsmith_f_op_f32(func_3(~max(vec2<i32>(-559i, -1i), vec2<i32>(2147483647i, 1i)), Struct_3(select(vec2<i32>(-24211i, 39539i), vec2<i32>(-5689i, -2147483647i), arg_2), i32(-1i) * -1173i, abs(u_input.a))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(183f, -550f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(142f, -1000f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1280f, 1000f), vec2<f32>(-1000f, -1509f)))))));
    var var_1 = ~arg_0.x;
    let var_2 = u_input.a.x;
    var_1 = 4294967295u;
    var var_3 = -484f;
    return select(select(select(vec2<bool>(true, 464f >= var_0.x), vec2<bool>(any(vec4<bool>(arg_2, arg_2, false, false)), true), vec2<bool>(arg_1, !arg_1)), select(!vec2<bool>(arg_2, arg_1), select(vec2<bool>(arg_1, false), select(vec2<bool>(arg_2, true), vec2<bool>(true, arg_1), vec2<bool>(arg_2, arg_1)), !arg_1), select(vec2<bool>(true, arg_2), vec2<bool>(arg_1, false), true)), !any(vec2<bool>(true, true))), select(!vec2<bool>(arg_2, arg_1 && arg_2), select(!(!vec2<bool>(true, arg_1)), !select(vec2<bool>(true, arg_1), vec2<bool>(arg_2, false), vec2<bool>(false, arg_2)), !arg_2 && !arg_1), vec2<bool>(!arg_1, all(!vec2<bool>(arg_1, arg_2)))), select(vec2<bool>(!arg_1, any(!vec4<bool>(arg_2, arg_1, arg_1, arg_1))), vec2<bool>(true, true), select(vec2<bool>(false, arg_2), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_2), arg_2), select(vec2<bool>(arg_2, arg_1), vec2<bool>(arg_2, false), true), vec2<bool>(true, true)), true)));
}

fn func_4(arg_0: Struct_4) -> f32 {
    var var_0 = Struct_3(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e.e.b.x, abs(2147483647i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-59455i, -2147483647i), vec2<i32>(1i, arg_0.d.e.b.x))), vec4<i32>(abs(1i), ~arg_0.d.d.b.x, ~0i, -12975i)), arg_0.e.d.b.x), _wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(arg_0.d.b.b.x, -32866i, arg_0.d.e.b.x, 70664i)) & _wgslsmith_sub_vec4_i32(min(vec4<i32>(2147483647i, arg_0.d.d.b.x, 5051i, arg_0.d.e.b.x), vec4<i32>(arg_0.d.d.b.x, arg_0.e.e.b.x, 2147483647i, arg_0.e.d.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -29103i, arg_0.e.d.b.x, arg_0.e.b.b.x), vec4<i32>(-13618i, 1i, arg_0.d.d.b.x, -1i))), max(firstTrailingBit(vec4<i32>(1i, arg_0.e.e.b.x, arg_0.e.e.b.x, arg_0.d.d.b.x)) << (u_input.a % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, arg_0.d.e.b.x, -21088i) & vec4<i32>(2147483647i, arg_0.d.e.b.x, arg_0.d.d.b.x, arg_0.d.b.b.x), ~vec4<i32>(arg_0.e.e.b.x, arg_0.e.e.b.x, 1i, 1i)))), u_input.a);
    var_0 = Struct_3(select((var_0.a >> (~vec2<u32>(u_input.a.x, arg_0.e.d.e.x) % vec2<u32>(32u))) >> (_wgslsmith_div_vec2_u32(vec2<u32>(10649u, 1u), abs(vec2<u32>(var_0.c.x, arg_0.c))) % vec2<u32>(32u)), vec2<i32>(var_0.a.x, var_0.a.x), select(select(select(arg_0.d.c.xw, arg_0.b, vec2<bool>(true, arg_0.d.c.x)), !vec2<bool>(arg_0.e.c.x, false), !arg_0.d.c.wz), vec2<bool>(false, false), arg_0.e.d.a)), -13034i, ~abs(vec4<u32>(19264u, u_input.a.x, u_input.a.x, u_input.a.x) ^ u_input.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1305f)), _wgslsmith_f_op_f32(trunc(1555f))), -1506f, 1f, 379f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(591f, 1926f, -496f, 219f)), vec4<f32>(-1752f, 1895f, -1510f, -483f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(917f, 417f, 452f, 289f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1997f, 1793f, 406f, -450f))))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1594f);
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -1i), ~vec2<i32>(var_0.a.x, var_0.b)), Struct_3(firstLeadingBit(vec2<i32>(arg_0.d.d.b.x, 7619i)), -var_0.a.x, firstLeadingBit(u_input.a))))) - 683f);
    return -374f;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(Struct_4(0u, func_2(u_input.a.yz, false, true), reverseBits(_wgslsmith_dot_vec3_u32(u_input.a.xyx, u_input.a.wwx)), Struct_2(vec4<bool>(false, false, false, true), Struct_1(false, vec3<i32>(1i, -12672i, 0i), u_input.a.xx, u_input.a.yxx, u_input.a.wy), vec4<bool>(true, true, true, true), Struct_1(false, vec3<i32>(1i, -2147483647i, 1i), vec2<u32>(u_input.a.x, 48745u), u_input.a.zzz, vec2<u32>(u_input.a.x, u_input.a.x)), Struct_1(true, vec3<i32>(2147483647i, 0i, -2147483647i), u_input.a.yw, vec3<u32>(1u, 4294967295u, 63215u), vec2<u32>(1u, 4294967295u))), Struct_2(vec4<bool>(true, true, false, false), Struct_1(true, vec3<i32>(-62418i, 0i, 0i), vec2<u32>(0u, 11909u), u_input.a.wxw, u_input.a.ww), vec4<bool>(true, true, true, true), Struct_1(false, vec3<i32>(-6169i, 1i, -1i), u_input.a.wy, u_input.a.yyw, u_input.a.zz), Struct_1(true, vec3<i32>(1i, 15586i, 1i), u_input.a.yx, u_input.a.wwx, vec2<u32>(u_input.a.x, 93343u))))))));
    var var_1 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 8763i, -2147483647i), vec3<i32>(2147483647i, 1i, -2147483647i), vec3<i32>(1i, -2147483647i, 26992i))), _wgslsmith_mod_vec3_i32(-vec3<i32>(41155i, 921i, 1i), vec3<i32>(904i, -8048i, 24973i))), max(reverseBits(vec3<i32>(1i, 8894i, -24746i)) | (vec3<i32>(-1i, 2147483647i, 60023i) << (vec3<u32>(1051u, u_input.a.x, 0u) % vec3<u32>(32u))), abs(max(vec3<i32>(44114i, 0i, 22520i), vec3<i32>(71913i, -1i, -59753i)))));
    let var_2 = Struct_2(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false)), Struct_1(var_0 == _wgslsmith_f_op_f32(min(-1006f, _wgslsmith_f_op_f32(trunc(var_0)))), _wgslsmith_div_vec3_i32(-vec3<i32>(-2147483647i, -2147483647i, -1i), select(vec3<i32>(0i, -30115i, 1i), vec3<i32>(12361i, 1i, 0i), vec3<bool>(true, false, false))) | vec3<i32>(1i, 1i, ~1i), ~vec2<u32>(1u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), u_input.a.xwz, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x ^ u_input.a.x, u_input.a.x), u_input.a.yx)), !select(vec4<bool>(any(vec4<bool>(false, false, true, true)), true, true, all(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), Struct_1(true, firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-11550i, 46351i, -2147483647i))), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.yyz, abs(u_input.a.ywy)), countOneBits(abs(u_input.a.x))), vec3<u32>(~40740u, _wgslsmith_clamp_u32(min(1u, 0u), u_input.a.x, u_input.a.x), u_input.a.x), ~min(vec2<u32>(0u, u_input.a.x), ~vec2<u32>(u_input.a.x, 1u))), Struct_1(~45369u < _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, -2147483647i, 2147483647i), ~(~vec3<i32>(-1i, 16161i, 70033i))), vec2<u32>(countOneBits(_wgslsmith_div_u32(u_input.a.x, 4294967295u)), ~(u_input.a.x << (u_input.a.x % 32u))), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 32814u, u_input.a.x)), vec3<u32>(max(u_input.a.x, u_input.a.x), ~u_input.a.x, u_input.a.x << (u_input.a.x % 32u))), vec2<u32>(0u, ~reverseBits(30413u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(502f, var_0, any(vec2<bool>(false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-1815f * var_0)))), var_0, _wgslsmith_f_op_f32(func_4(Struct_4(1u, var_2.c.yx, 57267u, var_2, var_2)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(var_0))))))));
    var_1 = var_2.e.b.x;
    return Struct_1(min(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-17370i, 1i, 5973i, var_2.e.b.x), vec4<i32>(var_2.b.b.x, var_2.d.b.x, -1i, 1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_2.d.b.x), vec2<i32>(var_2.e.b.x, 1i))), _wgslsmith_mod_i32(2147483647i << (u_input.a.x % 32u), 75725i)) <= _wgslsmith_sub_i32(~var_2.b.b.x, var_2.b.b.x), vec3<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d.b.x, var_2.d.b.x, var_2.e.b.x, var_2.d.b.x), vec4<i32>(2147483647i, 1i, -2147483647i, -19490i))) << (~(~4294967295u) % 32u), -1i, 1i), ~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~vec2<u32>(u_input.a.x, 4294967295u))), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.e.e.x, u_input.a.x, var_2.b.e.x), ~countOneBits(vec3<u32>(15012u, 0u, u_input.a.x))), ~((firstTrailingBit(u_input.a.xx) & ~var_2.b.c) & select(abs(vec2<u32>(var_2.b.c.x, 53768u)), var_2.b.d.xx, vec2<bool>(var_2.a.x, var_2.b.a))));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_2(select(vec4<bool>(true, ~0i > arg_0.b.x, true, false), vec4<bool>(var_0.x, -arg_0.b.x >= -1i, true, var_0.x), !any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, var_0.x, var_0.x, arg_0.a), vec4<bool>(var_0.x, false, arg_0.a, false)))), Struct_1(var_0.x, -(arg_0.b << (~vec3<u32>(arg_0.c.x, 1u, u_input.a.x) % vec3<u32>(32u))), firstLeadingBit(vec2<u32>(~arg_0.c.x, u_input.a.x)), firstLeadingBit(arg_0.d << (~vec3<u32>(54852u, 1u, arg_0.d.x) % vec3<u32>(32u))), ~u_input.a.ww), vec4<bool>(true, true, !(_wgslsmith_mult_u32(0u, u_input.a.x) == ~arg_0.e.x), false), func_1(), func_1());
    var var_2 = Struct_3(arg_0.b.xx, _wgslsmith_sub_i32(arg_0.b.x, reverseBits(-30759i ^ arg_1)), _wgslsmith_add_vec4_u32(min(firstTrailingBit(u_input.a), u_input.a >> (vec4<u32>(66258u, arg_0.d.x, arg_0.e.x, 0u) % vec4<u32>(32u))) ^ abs(vec4<u32>(var_1.e.c.x, 40617u, var_1.e.d.x, var_1.b.c.x)), u_input.a));
    let var_3 = Struct_1(var_1.d.a, var_1.b.b, select(vec2<u32>(16959u, var_2.c.x), max(var_2.c.zy, _wgslsmith_clamp_vec2_u32(~vec2<u32>(33447u, 1u), vec2<u32>(arg_0.d.x, arg_0.c.x), vec2<u32>(u_input.a.x, arg_0.e.x))), select(!(!var_0.x), !var_0.x, all(var_0) | false)), ~((_wgslsmith_add_vec3_u32(vec3<u32>(var_2.c.x, var_2.c.x, 0u), u_input.a.xxz) << (u_input.a.xww % vec3<u32>(32u))) >> ((_wgslsmith_div_vec3_u32(vec3<u32>(var_1.e.e.x, 36031u, 78880u), var_1.e.d) & vec3<u32>(u_input.a.x, var_1.b.e.x, var_1.e.c.x)) % vec3<u32>(32u))), _wgslsmith_add_vec2_u32(var_1.b.d.xz, var_2.c.yw));
    var var_4 = (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(var_3.c.x, var_2.c.x, var_1.d.e.x), ~var_2.c.x, min(3972u, var_3.c.x)), vec3<u32>(u_input.a.x, arg_0.c.x, var_2.c.x)) & reverseBits(1u)) | ~(var_1.e.d.x ^ arg_0.e.x);
    return _wgslsmith_add_i32(_wgslsmith_mult_i32(~(-1i), 1i), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(499f - 358f), _wgslsmith_f_op_f32(f32(-1f) * -683f)))), _wgslsmith_f_op_f32(1294f * 100f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2043f))), -1961f)));
    var var_1 = firstLeadingBit(_wgslsmith_clamp_vec3_i32(~vec3<i32>(47310i, 2147483647i, 696i), _wgslsmith_mod_vec3_i32(vec3<i32>(-39892i, 8286i, -29570i), vec3<i32>(-1311i, 2147483647i, -18586i)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 1i, 31788i), vec3<i32>(-2147483647i, 45408i, -1i))) & vec3<i32>(1i, 1i, 1i)) >> (u_input.a.zzw % vec3<u32>(32u));
    var_1 = vec3<i32>(-2147483647i, ~var_1.x, abs(19747i));
    var_1 = _wgslsmith_add_vec3_i32(~min(~(vec3<i32>(-1587i, var_1.x, 19663i) >> (vec3<u32>(u_input.a.x, u_input.a.x, 1u) % vec3<u32>(32u))), -vec3<i32>(var_1.x, -22367i, var_1.x)), vec3<i32>(-1i, var_1.x, func_5(func_1(), -var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-276f, vec2<u32>(_wgslsmith_add_u32(~abs(38456u), abs(15682u)), u_input.a.x), -vec2<i32>(-_wgslsmith_mult_i32(var_1.x, -31285i), ~var_1.x), 0i);
}

