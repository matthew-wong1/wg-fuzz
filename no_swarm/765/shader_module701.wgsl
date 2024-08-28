struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 28081u);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = u_input.a;
    var var_1 = select(var_0.x, 1i, true) >= _wgslsmith_clamp_i32(u_input.a.x, -_wgslsmith_add_i32(-var_0.x, min(-2147483647i, u_input.a.x)), _wgslsmith_mult_i32(reverseBits(_wgslsmith_sub_i32(arg_0, arg_0)), _wgslsmith_add_i32(_wgslsmith_sub_i32(17812i, 14730i), u_input.a.x ^ 44446i)));
    var var_2 = ~(~countOneBits(~vec3<u32>(5590u, 19798u, global0.x)));
    var var_3 = Struct_2(Struct_1(~select(var_2.zx, vec2<u32>(var_2.x, var_2.x), var_0.x > var_0.x), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), true)), Struct_1(var_2.zz, vec2<bool>(true, true)), select(vec4<bool>(true, true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(all(vec2<bool>(true, false)), true, select(false, false, false), any(vec2<bool>(true, true)))), vec4<i32>(51023i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, var_0.x, var_0.x, 86995i), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, u_input.a.x, var_0.x, 1i), vec4<i32>(var_0.x, -52530i, arg_0, -2147483647i))), arg_0, -6444i) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, var_2.x, global0.x, var_2.x), select(vec4<u32>(var_2.x, global0.x, 58824u, var_2.x), vec4<u32>(var_2.x, global0.x, global0.x, 0u), true)) % vec4<u32>(32u)), Struct_1(_wgslsmith_add_vec2_u32(var_2.xz, firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, global0.x), var_2.zx))), vec2<bool>(true, false)));
    var_3 = Struct_2(Struct_1(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(17709u, 4294967295u), ~vec2<u32>(459u, 1u), var_3.b.a), var_3.a.b), Struct_1(~max(~vec2<u32>(var_2.x, global0.x), vec2<u32>(global0.x, global0.x)), select(vec2<bool>(true, true), var_3.e.b, var_3.b.b)), select(var_3.c, select(select(select(var_3.c, var_3.c, var_3.c.x), var_3.c, var_3.b.b.x), var_3.c, true), !(!(!var_3.a.b.x))), var_3.d, var_3.b);
    return countOneBits(select(abs(firstLeadingBit(_wgslsmith_mod_i32(var_0.x, var_0.x))), (~arg_0 & (-1i >> (var_3.e.a.x % 32u))) | u_input.a.x, abs(-30020i) != _wgslsmith_dot_vec4_i32(vec4<i32>(1082i, var_0.x, -1i, 1i), var_3.d)));
}

fn func_2(arg_0: bool) -> vec4<i32> {
    let var_0 = vec4<bool>(true, true, true, true);
    global0 = min(vec2<u32>(89121u & _wgslsmith_div_u32(global0.x, global0.x), ~4294967295u), _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(global0.x, 41013u) | ~vec2<u32>(4294967295u, global0.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(23086u, global0.x, 4294967295u, global0.x), vec4<u32>(global0.x, 0u, global0.x, global0.x)) | abs(4294967295u), 4234u)));
    var var_1 = ~(~_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(global0.x, 15293u, 0u)), vec3<u32>(global0.x, 4294967295u, 63713u)) | _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 4294967295u, global0.x), vec3<u32>(global0.x, global0.x, 10680u)) >> (~vec3<u32>(1u, 1u, 58794u) % vec3<u32>(32u)), firstTrailingBit(abs(vec3<u32>(8371u, 6423u, 40620u))), abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, global0.x, 44675u), vec3<u32>(24665u, global0.x, 13632u)))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_add_vec2_u32(var_1.yx, ~(~vec2<u32>(19606u, global0.x))), !vec2<bool>(true, arg_0)), Struct_1(var_1.yx >> (var_1.yx % vec2<u32>(32u)), !select(vec2<bool>(arg_0, false), vec2<bool>(false, true), 49831u == var_1.x)), var_0, vec4<i32>(-(1i << (1u % 32u)), _wgslsmith_div_i32(~(-18311i), _wgslsmith_dot_vec2_i32(~vec2<i32>(4399i, -11195i), vec2<i32>(0i, u_input.a.x))), ~(~u_input.a.x), _wgslsmith_div_i32(abs(-u_input.a.x), firstTrailingBit(u_input.a.x) << (_wgslsmith_clamp_u32(1u, var_1.x, global0.x) % 32u))), Struct_1(~_wgslsmith_clamp_vec2_u32(firstLeadingBit(var_1.xx), firstTrailingBit(vec2<u32>(global0.x, 0u)), select(var_1.zz, vec2<u32>(var_1.x, 18739u), arg_0)), select(select(!var_0.ww, vec2<bool>(arg_0, true), !vec2<bool>(true, arg_0)), vec2<bool>(select(false, arg_0, true), true), true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-468f, _wgslsmith_div_f32(355f, 987f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(-2435f, 1338f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1189f, 557f, -370f)), vec3<f32>(583f, -1000f, 2484f))))));
    return firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(17572i, -func_3(var_2.d.x), ~1i), u_input.a.x, _wgslsmith_sub_i32(var_2.d.x, u_input.a.x), 1i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    let var_0 = select(!arg_3.c, arg_0.c, vec4<bool>(!arg_3.e.b.x, arg_2, arg_0.e.b.x, true));
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(~1u, abs(16351u)), _wgslsmith_div_vec2_u32(vec2<u32>(18853u, global0.x), ~arg_3.a.a)), select(select(vec2<bool>(true, true), !var_0.xy, !var_0.wy), vec2<bool>(any(vec3<bool>(false, false, arg_3.b.b.x)), !arg_3.b.b.x), !all(arg_1.b.b))), arg_1.b, var_0, arg_3.d, arg_1.e);
    return Struct_1(abs(vec2<u32>(arg_1.b.a.x, arg_0.e.a.x)), select(vec2<bool>(any(select(var_0.xxw, arg_0.c.www, var_0.xxw)), true), select(!select(var_1.c.yy, vec2<bool>(true, true), var_1.b.b.x), select(!vec2<bool>(var_1.e.b.x, true), var_1.b.b, vec2<bool>(arg_1.b.b.x, arg_3.b.b.x)), select(select(var_1.e.b, vec2<bool>(true, arg_3.c.x), arg_3.e.b), !var_1.a.b, true)), !arg_0.c.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = abs(arg_1.a);
    global0 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(min(global0.x, arg_1.a.x), 0u), ~arg_1.a), 41554u), (arg_1.a.x | 48511u) >> (reverseBits(4294967295u) % 32u));
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-2941i, -1i, countOneBits(max(0i, reverseBits(43087i)))), -(~countOneBits(~vec3<i32>(2147483647i, u_input.a.x, u_input.a.x))));
    var_0 = -1i;
    var_0 = -abs(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, -2147483647i), vec3<i32>(u_input.a.x, -1i, -2147483647i)), _wgslsmith_add_i32(43535i, -27643i)), -(~4934i)));
    return arg_0;
}

fn func_1(arg_0: vec4<u32>) -> bool {
    let var_0 = func_5(Struct_1(arg_0.xy, vec2<bool>(true, true)), func_4(Struct_2(Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global0.x, arg_0.x)), vec2<bool>(true, true)), Struct_1(arg_0.wz, select(vec2<bool>(true, false), vec2<bool>(false, false), false)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), true), func_2(true), Struct_1(arg_0.zx, vec2<bool>(false, true))), Struct_2(Struct_1(vec2<u32>(global0.x, arg_0.x), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), Struct_1(vec2<u32>(10642u, 33088u), vec2<bool>(true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), true), vec4<i32>(u_input.a.x, 14351i, u_input.a.x, u_input.a.x) << (vec4<u32>(1u, 1u, arg_0.x, global0.x) % vec4<u32>(32u)), Struct_1(max(vec2<u32>(arg_0.x, 0u), vec2<u32>(global0.x, global0.x)), select(vec2<bool>(true, true), vec2<bool>(true, false), true))), any(vec3<bool>(true, true, true)), Struct_2(Struct_1(select(vec2<u32>(global0.x, 1u), arg_0.wy, false), vec2<bool>(true, true)), Struct_1(~arg_0.wz, vec2<bool>(false, true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, false, false))), (vec4<i32>(u_input.a.x, -17424i, -57189i, -8947i) << (arg_0 % vec4<u32>(32u))) ^ abs(vec4<i32>(u_input.a.x, 39238i, -18516i, 7727i)), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_0.x), vec2<u32>(global0.x, 18095u)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))))));
    var var_1 = func_4(Struct_2(var_0, Struct_1(reverseBits(~var_0.a), vec2<bool>(var_0.b.x || true, var_0.b.x)), vec4<bool>(_wgslsmith_mod_i32(5294i, u_input.a.x) >= ~u_input.a.x, all(func_4(Struct_2(Struct_1(vec2<u32>(arg_0.x, 4294967295u), var_0.b), Struct_1(var_0.a, vec2<bool>(true, var_0.b.x)), vec4<bool>(var_0.b.x, var_0.b.x, false, true), vec4<i32>(u_input.a.x, u_input.a.x, -29932i, -10677i), Struct_1(vec2<u32>(global0.x, 18971u), vec2<bool>(var_0.b.x, var_0.b.x))), Struct_2(var_0, var_0, vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x), vec4<i32>(u_input.a.x, -35582i, 1i, -24397i), var_0), true, Struct_2(Struct_1(vec2<u32>(var_0.a.x, arg_0.x), var_0.b), var_0, vec4<bool>(var_0.b.x, false, var_0.b.x, true), vec4<i32>(8960i, u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(arg_0.yy, var_0.b))).b), -2050f <= _wgslsmith_f_op_f32(select(-519f, 2360f, false)), !all(vec4<bool>(true, false, var_0.b.x, true))), func_2(!var_0.b.x), Struct_1(vec2<u32>(func_4(Struct_2(var_0, Struct_1(arg_0.yw, var_0.b), vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), vec4<i32>(88438i, u_input.a.x, u_input.a.x, 0i), Struct_1(var_0.a, vec2<bool>(false, var_0.b.x))), Struct_2(Struct_1(vec2<u32>(var_0.a.x, var_0.a.x), var_0.b), Struct_1(var_0.a, var_0.b), vec4<bool>(false, true, true, false), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), var_0), var_0.b.x, Struct_2(var_0, var_0, vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x), vec4<i32>(2147483647i, 45291i, u_input.a.x, u_input.a.x), Struct_1(arg_0.xx, vec2<bool>(var_0.b.x, false)))).a.x, _wgslsmith_clamp_u32(62509u, global0.x, 4294967295u)), vec2<bool>(true, true))), Struct_2(var_0, Struct_1(vec2<u32>(1u, 1u), select(vec2<bool>(var_0.b.x, true), var_0.b, var_0.b.x)), select(vec4<bool>(true, false, all(vec3<bool>(true, false, true)), true), select(!vec4<bool>(true, false, var_0.b.x, false), !vec4<bool>(true, var_0.b.x, var_0.b.x, true), true), vec4<bool>(true, var_0.b.x, select(var_0.b.x, false, true), false)), vec4<i32>(min(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 2147483647i), u_input.a.x), -(~u_input.a.x), 1i << (arg_0.x % 32u), func_2(var_0.b.x).x), func_4(Struct_2(func_4(Struct_2(var_0, var_0, vec4<bool>(var_0.b.x, false, true, var_0.b.x), vec4<i32>(27506i, -2147483647i, u_input.a.x, -1i), var_0), Struct_2(var_0, Struct_1(arg_0.ww, vec2<bool>(true, var_0.b.x)), vec4<bool>(var_0.b.x, true, var_0.b.x, true), vec4<i32>(26379i, u_input.a.x, u_input.a.x, u_input.a.x), var_0), true, Struct_2(var_0, var_0, vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), var_0)), Struct_1(arg_0.yw, var_0.b), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x)), var_0), Struct_2(func_5(Struct_1(arg_0.xz, vec2<bool>(false, var_0.b.x)), var_0), Struct_1(arg_0.xx, var_0.b), !vec4<bool>(true, var_0.b.x, true, var_0.b.x), -vec4<i32>(u_input.a.x, 1i, u_input.a.x, -1378i), var_0), true, Struct_2(var_0, func_4(Struct_2(var_0, var_0, vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x), vec4<i32>(27772i, u_input.a.x, 1i, 1i), var_0), Struct_2(var_0, var_0, vec4<bool>(false, var_0.b.x, true, var_0.b.x), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 14881i), Struct_1(var_0.a, vec2<bool>(var_0.b.x, true))), var_0.b.x, Struct_2(var_0, var_0, vec4<bool>(var_0.b.x, true, var_0.b.x, true), vec4<i32>(u_input.a.x, -27431i, u_input.a.x, -2147483647i), var_0)), !vec4<bool>(var_0.b.x, true, var_0.b.x, true), select(vec4<i32>(u_input.a.x, u_input.a.x, -1i, 5790i), vec4<i32>(-67233i, 1i, 0i, u_input.a.x), true), Struct_1(var_0.a, vec2<bool>(true, true))))), var_0.a.x >= abs(reverseBits(func_5(Struct_1(arg_0.wz, var_0.b), Struct_1(vec2<u32>(var_0.a.x, 0u), vec2<bool>(var_0.b.x, true))).a.x)), Struct_2(Struct_1(~(~var_0.a), vec2<bool>(true, all(vec3<bool>(false, var_0.b.x, var_0.b.x)))), var_0, vec4<bool>(false == func_5(var_0, Struct_1(arg_0.yw, var_0.b)).b.x, var_0.b.x, !var_0.b.x, false), vec4<i32>(abs(u_input.a.x), -abs(-68541i), ~(-u_input.a.x), u_input.a.x), var_0));
    global0 = var_0.a;
    global0 = select(~(~(_wgslsmith_mult_vec2_u32(var_1.a, vec2<u32>(4294967295u, arg_0.x)) << ((var_1.a << (vec2<u32>(var_1.a.x, var_1.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)))), abs(~func_4(Struct_2(var_0, var_0, vec4<bool>(false, false, var_1.b.x, var_1.b.x), vec4<i32>(u_input.a.x, 47050i, u_input.a.x, 2147483647i), var_0), Struct_2(var_0, Struct_1(vec2<u32>(var_0.a.x, var_0.a.x), vec2<bool>(false, true)), vec4<bool>(var_1.b.x, false, false, var_1.b.x), vec4<i32>(28296i, 23702i, u_input.a.x, u_input.a.x), Struct_1(arg_0.ww, var_1.b)), !var_0.b.x, Struct_2(Struct_1(var_0.a, var_1.b), var_0, vec4<bool>(false, var_1.b.x, true, var_0.b.x), vec4<i32>(u_input.a.x, 1i, 1i, -82303i), Struct_1(vec2<u32>(var_0.a.x, 17500u), vec2<bool>(var_1.b.x, false)))).a), _wgslsmith_dot_vec2_u32(var_1.a >> (~vec2<u32>(var_1.a.x, arg_0.x) % vec2<u32>(32u)), (var_1.a & var_1.a) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) < ~var_0.a.x);
    global0 = vec2<u32>(~_wgslsmith_add_u32(_wgslsmith_add_u32(21293u, arg_0.x), 1u) | 5123u, ~1u);
    return false;
}

fn func_6(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec2<u32>) -> u32 {
    let var_0 = vec2<bool>(false, !all(vec2<bool>(any(arg_0), arg_0.x)));
    var var_1 = -1000f;
    var var_2 = Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(~1u, countOneBits(21143u)), countOneBits(~arg_1.yy)), arg_0.xy), func_5(Struct_1(~arg_2 & abs(arg_1.zz), arg_0.xz), func_4(Struct_2(func_5(Struct_1(vec2<u32>(4294967295u, arg_1.x), var_0), Struct_1(vec2<u32>(0u, arg_2.x), var_0)), func_4(Struct_2(Struct_1(arg_1.xz, vec2<bool>(false, false)), Struct_1(vec2<u32>(31878u, global0.x), vec2<bool>(true, var_0.x)), vec4<bool>(arg_0.x, true, false, false), vec4<i32>(-35522i, -27513i, u_input.a.x, -11059i), Struct_1(vec2<u32>(arg_1.x, 48330u), vec2<bool>(false, var_0.x))), Struct_2(Struct_1(arg_2, vec2<bool>(true, false)), Struct_1(vec2<u32>(arg_1.x, arg_2.x), vec2<bool>(arg_0.x, var_0.x)), vec4<bool>(false, false, var_0.x, true), vec4<i32>(2147483647i, u_input.a.x, -20606i, u_input.a.x), Struct_1(arg_2, vec2<bool>(var_0.x, var_0.x))), false, Struct_2(Struct_1(vec2<u32>(31810u, 0u), vec2<bool>(arg_0.x, arg_0.x)), Struct_1(arg_1.yz, vec2<bool>(false, arg_0.x)), vec4<bool>(false, true, true, false), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -41697i), Struct_1(arg_1.xx, vec2<bool>(true, false)))), !vec4<bool>(true, var_0.x, false, false), vec4<i32>(u_input.a.x, 48578i, u_input.a.x, -51923i), func_5(Struct_1(vec2<u32>(41708u, global0.x), arg_0.zy), Struct_1(arg_2, vec2<bool>(true, arg_0.x)))), Struct_2(func_4(Struct_2(Struct_1(arg_1.yz, vec2<bool>(var_0.x, var_0.x)), Struct_1(arg_1.xy, vec2<bool>(arg_0.x, true)), vec4<bool>(var_0.x, true, true, true), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(arg_1.zy, vec2<bool>(true, false))), Struct_2(Struct_1(arg_1.yx, vec2<bool>(true, arg_0.x)), Struct_1(arg_1.zz, vec2<bool>(true, var_0.x)), vec4<bool>(var_0.x, var_0.x, true, false), vec4<i32>(0i, u_input.a.x, 12270i, u_input.a.x), Struct_1(vec2<u32>(arg_2.x, global0.x), vec2<bool>(var_0.x, true))), var_0.x, Struct_2(Struct_1(vec2<u32>(10653u, 0u), var_0), Struct_1(arg_1.yy, var_0), vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<i32>(33007i, u_input.a.x, u_input.a.x, -1i), Struct_1(arg_1.xx, arg_0.xx))), func_4(Struct_2(Struct_1(arg_2, arg_0.xz), Struct_1(arg_2, arg_0.xy), vec4<bool>(arg_0.x, true, var_0.x, true), vec4<i32>(u_input.a.x, u_input.a.x, 35676i, 46824i), Struct_1(vec2<u32>(1u, 1u), vec2<bool>(arg_0.x, false))), Struct_2(Struct_1(arg_1.xx, arg_0.yx), Struct_1(vec2<u32>(global0.x, 0u), vec2<bool>(var_0.x, true)), vec4<bool>(false, false, true, true), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(vec2<u32>(1u, arg_1.x), arg_0.zz)), arg_0.x, Struct_2(Struct_1(vec2<u32>(arg_1.x, arg_1.x), arg_0.zz), Struct_1(arg_2, arg_0.yy), vec4<bool>(var_0.x, true, arg_0.x, var_0.x), vec4<i32>(u_input.a.x, -12173i, -2147483647i, u_input.a.x), Struct_1(arg_2, var_0))), select(vec4<bool>(var_0.x, var_0.x, arg_0.x, var_0.x), vec4<bool>(false, arg_0.x, true, false), vec4<bool>(arg_0.x, true, false, true)), vec4<i32>(u_input.a.x, u_input.a.x, -7241i, u_input.a.x), func_4(Struct_2(Struct_1(arg_2, vec2<bool>(var_0.x, true)), Struct_1(vec2<u32>(arg_1.x, arg_2.x), vec2<bool>(false, arg_0.x)), vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<i32>(u_input.a.x, -17328i, u_input.a.x, u_input.a.x), Struct_1(arg_1.zy, arg_0.xy)), Struct_2(Struct_1(vec2<u32>(4294967295u, global0.x), arg_0.yz), Struct_1(arg_2, vec2<bool>(false, arg_0.x)), vec4<bool>(var_0.x, true, false, false), vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), Struct_1(vec2<u32>(arg_1.x, arg_2.x), vec2<bool>(true, false))), false, Struct_2(Struct_1(vec2<u32>(0u, 76514u), var_0), Struct_1(arg_1.xz, arg_0.yy), vec4<bool>(var_0.x, true, arg_0.x, arg_0.x), vec4<i32>(-2147483647i, u_input.a.x, -1i, 1i), Struct_1(vec2<u32>(68993u, 0u), arg_0.yx)))), any(select(vec4<bool>(false, var_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, true), arg_0.x)), Struct_2(Struct_1(vec2<u32>(global0.x, arg_2.x), vec2<bool>(false, arg_0.x)), Struct_1(arg_2, vec2<bool>(var_0.x, arg_0.x)), vec4<bool>(true, var_0.x, false, var_0.x), select(vec4<i32>(-1i, u_input.a.x, 1i, u_input.a.x), vec4<i32>(2147483647i, 29573i, u_input.a.x, -36241i), vec4<bool>(false, true, var_0.x, false)), func_4(Struct_2(Struct_1(vec2<u32>(global0.x, 28887u), arg_0.yy), Struct_1(vec2<u32>(53583u, arg_2.x), vec2<bool>(false, false)), vec4<bool>(arg_0.x, false, false, true), vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, -2147483647i), Struct_1(arg_2, vec2<bool>(false, false))), Struct_2(Struct_1(arg_2, arg_0.zz), Struct_1(vec2<u32>(0u, 1u), arg_0.zy), vec4<bool>(var_0.x, arg_0.x, var_0.x, true), vec4<i32>(u_input.a.x, -5444i, u_input.a.x, 50157i), Struct_1(vec2<u32>(67774u, 5036u), vec2<bool>(false, true))), true, Struct_2(Struct_1(arg_1.xy, arg_0.xz), Struct_1(arg_1.zz, var_0), vec4<bool>(false, arg_0.x, arg_0.x, var_0.x), vec4<i32>(u_input.a.x, 1i, -1i, u_input.a.x), Struct_1(vec2<u32>(4294967295u, global0.x), vec2<bool>(false, arg_0.x))))))), vec4<bool>(arg_0.x, select(arg_0.x, false, any(select(vec4<bool>(arg_0.x, var_0.x, arg_0.x, false), vec4<bool>(false, false, false, false), vec4<bool>(false, var_0.x, arg_0.x, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2543f, -231f, var_0.x)), -133f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -859f) - -1145f), var_0.x), ~(~vec4<i32>(_wgslsmith_sub_i32(0i, -1i), _wgslsmith_div_i32(2147483647i, u_input.a.x), ~0i, 23634i)), func_4(Struct_2(func_4(Struct_2(Struct_1(arg_1.zz, vec2<bool>(var_0.x, arg_0.x)), Struct_1(vec2<u32>(global0.x, 4294967295u), arg_0.zy), vec4<bool>(var_0.x, var_0.x, false, true), vec4<i32>(u_input.a.x, 2430i, u_input.a.x, -2147483647i), Struct_1(vec2<u32>(global0.x, arg_2.x), arg_0.xz)), Struct_2(Struct_1(arg_1.zx, vec2<bool>(false, arg_0.x)), Struct_1(vec2<u32>(arg_2.x, 4294967295u), vec2<bool>(false, var_0.x)), vec4<bool>(arg_0.x, true, arg_0.x, var_0.x), vec4<i32>(u_input.a.x, 8775i, -2147483647i, -1i), Struct_1(vec2<u32>(global0.x, global0.x), vec2<bool>(var_0.x, false))), all(vec2<bool>(arg_0.x, true)), Struct_2(Struct_1(arg_2, vec2<bool>(arg_0.x, true)), Struct_1(arg_1.zz, vec2<bool>(false, false)), vec4<bool>(var_0.x, arg_0.x, false, arg_0.x), vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<bool>(arg_0.x, false)))), Struct_1(countOneBits(vec2<u32>(global0.x, arg_1.x)), vec2<bool>(var_0.x, var_0.x)), vec4<bool>(var_0.x, true, arg_0.x, true), vec4<i32>(-2147483647i >> (arg_2.x % 32u), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), _wgslsmith_div_i32(12646i, u_input.a.x), -8248i), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(global0.x, 33144u)), arg_0.xz)), Struct_2(func_4(Struct_2(Struct_1(arg_2, var_0), Struct_1(arg_1.zy, vec2<bool>(var_0.x, arg_0.x)), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<i32>(-1i, u_input.a.x, 2147483647i, -13816i), Struct_1(arg_2, arg_0.xx)), Struct_2(Struct_1(arg_1.zz, vec2<bool>(true, var_0.x)), Struct_1(vec2<u32>(global0.x, global0.x), vec2<bool>(true, var_0.x)), vec4<bool>(true, arg_0.x, var_0.x, true), vec4<i32>(1i, u_input.a.x, u_input.a.x, -12384i), Struct_1(arg_2, arg_0.xy)), global0.x == 44881u, Struct_2(Struct_1(vec2<u32>(4294967295u, 75953u), var_0), Struct_1(arg_2, vec2<bool>(true, false)), vec4<bool>(var_0.x, true, arg_0.x, arg_0.x), vec4<i32>(7982i, 1i, 53473i, 1i), Struct_1(arg_2, arg_0.yx))), Struct_1(~arg_1.zz, select(vec2<bool>(false, var_0.x), vec2<bool>(false, true), vec2<bool>(var_0.x, var_0.x))), !(!vec4<bool>(true, var_0.x, false, arg_0.x)), -firstLeadingBit(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)), func_5(func_5(Struct_1(vec2<u32>(90507u, 1u), arg_0.xy), Struct_1(arg_2, arg_0.zy)), Struct_1(arg_2, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(215f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1447f) - -274f), Struct_2(Struct_1(vec2<u32>(24413u, arg_2.x), select(var_0, vec2<bool>(true, var_0.x), var_0)), Struct_1(arg_2, arg_0.yz), select(vec4<bool>(arg_0.x, false, true, true), select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(true, arg_0.x, var_0.x, arg_0.x), false), vec4<bool>(true, arg_0.x, true, arg_0.x)), select(vec4<i32>(0i, 0i, 30075i, u_input.a.x) << (vec4<u32>(arg_2.x, 1u, 60327u, arg_2.x) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(0i, 1i, u_input.a.x, u_input.a.x)), true), func_4(Struct_2(Struct_1(vec2<u32>(arg_2.x, global0.x), vec2<bool>(arg_0.x, arg_0.x)), Struct_1(arg_1.zx, vec2<bool>(arg_0.x, true)), vec4<bool>(var_0.x, true, arg_0.x, arg_0.x), vec4<i32>(32667i, 27539i, 18971i, 22947i), Struct_1(vec2<u32>(arg_2.x, arg_2.x), var_0)), Struct_2(Struct_1(arg_2, vec2<bool>(false, true)), Struct_1(vec2<u32>(39746u, 4294967295u), vec2<bool>(var_0.x, var_0.x)), vec4<bool>(true, var_0.x, var_0.x, arg_0.x), vec4<i32>(41414i, -22187i, u_input.a.x, 7235i), Struct_1(arg_1.yz, arg_0.xx)), any(vec4<bool>(var_0.x, false, false, var_0.x)), Struct_2(Struct_1(arg_2, vec2<bool>(true, arg_0.x)), Struct_1(vec2<u32>(global0.x, global0.x), arg_0.zx), vec4<bool>(false, false, arg_0.x, var_0.x), vec4<i32>(-1i, u_input.a.x, -2147483647i, u_input.a.x), Struct_1(arg_2, vec2<bool>(false, var_0.x)))))));
    var_1 = _wgslsmith_f_op_f32(floor(-224f));
    var var_3 = select(arg_0.x == all(vec3<bool>(!var_0.x, true, all(vec2<bool>(arg_0.x, true)))), true, true);
    return ~(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true & (any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true)) || true);
    global0 = vec2<u32>(1u, ~global0.x);
    var var_1 = select(firstTrailingBit(firstLeadingBit(vec3<u32>(global0.x, global0.x, 48913u) >> (vec3<u32>(global0.x, global0.x, 1u) % vec3<u32>(32u)))), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, global0.x, global0.x), ~vec3<u32>(global0.x, 84241u, 35679u)) << (_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(24985u, global0.x, 22163u), vec3<u32>(31789u, 13058u, 0u)), ~vec3<u32>(global0.x, 333u, 21039u)) % vec3<u32>(32u)), false) ^ ~countOneBits(vec3<u32>(_wgslsmith_mult_u32(0u, 26902u), _wgslsmith_mod_u32(28764u, global0.x), global0.x));
    let var_2 = func_6(select(vec3<bool>(all(vec4<bool>(true, true, true, true)), func_1(vec4<u32>(54851u, 1u, 5500u, 0u)), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), false), any(vec2<bool>(false, true))), _wgslsmith_add_vec3_u32(~(abs(vec3<u32>(72125u, global0.x, 35566u)) & vec3<u32>(43382u, 0u, global0.x)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 4294967295u, 17415u), vec3<u32>(var_1.x, 85260u, global0.x)), vec3<u32>(global0.x << (global0.x % 32u), _wgslsmith_mod_u32(var_1.x, var_1.x), var_1.x | 32361u), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), 4294967295u < global0.x))), vec2<u32>(~4294967295u, min(~1u, 87500u)));
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a.x >> (0u % 32u), -u_input.a.x, 1i), vec3<i32>(34426i, _wgslsmith_sub_i32(u_input.a.x & u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), countOneBits(u_input.a.x))), ~(var_1.xx >> (vec2<u32>(36778u, 6510u) % vec2<u32>(32u))), -u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2481f, 1010f))), var_2);
}

