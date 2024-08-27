struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, -804f);

var<private> global1: vec2<f32>;

var<private> global2: vec2<u32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = arg_1.d;
    global2 = ~(~(u_input.a.xz | ~(~vec2<u32>(global2.x, global2.x))));
    let var_1 = -805f;
    var var_2 = _wgslsmith_div_i32(-1i, -1i);
    let var_3 = max(global2.x, ~(~(~u_input.a.x)));
    return _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32((u_input.a & u_input.a) << (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global2.x, 0u), vec3<u32>(34959u, 29067u, 37939u)) % vec3<u32>(32u)), (vec3<u32>(0u, 0u, var_3) & u_input.a) << (u_input.a % vec3<u32>(32u))) ^ select(vec3<u32>(abs(global2.x), abs(0u), 57507u), ~u_input.a & countOneBits(u_input.a), true), vec3<u32>(~arg_1.e.x, global2.x, global2.x));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>) -> vec4<bool> {
    let var_0 = u_input.a;
    let var_1 = 13055u;
    var var_2 = ~0u;
    global2 = vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, firstLeadingBit(32319u)), u_input.a.xy) << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(~global2.x, var_1), _wgslsmith_mod_u32(global2.x, u_input.a.x) << (~u_input.a.x % 32u)) % 32u));
    let var_3 = Struct_2(i32(-1i) * -(-arg_0.c.x ^ (arg_0.b.x & arg_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(101f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-arg_0.a))), -539f))), vec2<u32>(50642u, u_input.a.x), arg_0, _wgslsmith_mult_vec2_u32(~(~func_3(arg_0.b.x, Struct_2(-37465i, global1.x, var_0.yz, arg_0, var_0.yx), Struct_1(-3045f, arg_0.c.xzx, arg_0.c)).yx), vec2<u32>(218u, abs(var_1 | 32499u))));
    return !select(!(!select(vec4<bool>(arg_2.x, false, arg_2.x, true), vec4<bool>(arg_2.x, false, false, false), vec4<bool>(arg_2.x, true, true, arg_2.x))), vec4<bool>(true, select(all(arg_2), arg_2.x && false, true), !arg_2.x, arg_2.x), !select(!vec4<bool>(true, arg_2.x, arg_2.x, true), !vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), all(vec3<bool>(arg_2.x, arg_2.x, arg_2.x))));
}

fn func_2() -> Struct_1 {
    global2 = vec2<u32>(reverseBits(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(global2.x, 1u), 1u))), u_input.a.x);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(abs(global1.x)), 897f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -247f), vec2<f32>(261f, global1.x))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), vec2<f32>(global1.x, global1.x), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global1.x))))))));
    let var_0 = -vec4<i32>(-49357i, -20235i, 65895i, _wgslsmith_div_i32(abs(-2147483647i), -(i32(-1i) * -17428i)));
    var var_1 = func_4(Struct_1(_wgslsmith_div_f32(global0.x, global0.x), ~abs(var_0.xzz ^ var_0.wyx), vec4<i32>(~(-17770i), ~(-168i), countOneBits(abs(-1894i)), (var_0.x << (global2.x % 32u)) ^ -var_0.x)), reverseBits(var_0.x) >> (_wgslsmith_dot_vec3_u32(u_input.a, func_3(~var_0.x, Struct_2(var_0.x, global1.x, u_input.a.yy, Struct_1(global0.x, vec3<i32>(0i, var_0.x, 0i), var_0), vec2<u32>(u_input.a.x, global2.x)), Struct_1(global1.x, var_0.yzz, var_0))) % 32u), select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true), select(vec3<bool>(any(vec4<bool>(true, true, true, true)), select(false, true, false), true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), select(all(vec4<bool>(true, true, false, false)), select(true, true, false), true))));
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(815f)) - _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -272f)), vec3<i32>(-var_0.x, -35992i, -var_0.x) ^ vec3<i32>(_wgslsmith_mult_i32(var_0.x, 26821i), 39181i, -43590i), ~var_0 | var_0), _wgslsmith_clamp_i32(var_0.x << (~1u % 32u), -1i, -(~var_0.x)), !func_4(Struct_1(global1.x, _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 29546i, 1i), var_0.zyw), ~var_0), 1i, !var_1.wzw).zzy);
    return Struct_1(-987f, var_0.xzw, var_0);
}

fn func_1() -> i32 {
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1160f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(188f, 1503f) * vec2<f32>(167f, 573f))))))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(round(-127f)), -1743f);
    global2 = vec2<u32>(65155u, ~0u);
    var var_0 = func_2();
    var var_1 = vec3<f32>(989f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -749f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1781f, _wgslsmith_f_op_f32(-var_0.a)))));
    return _wgslsmith_clamp_i32(var_0.c.x, -24976i, -1i);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> i32 {
    global2 = arg_1.e;
    global2 = ~arg_1.c;
    let var_0 = arg_2;
    global2 = func_3(28616i, Struct_2(~abs(-1i), _wgslsmith_f_op_f32(-1031f + _wgslsmith_f_op_f32(ceil(1559f))), vec2<u32>(3676u, 49382u) << (~u_input.a.yx % vec2<u32>(32u)), Struct_1(1f, ~arg_3.b, arg_1.d.c), vec2<u32>(~0u, firstTrailingBit(46494u))), func_2()).xz ^ ~(~(vec2<u32>(global2.x, 31208u) | ~arg_1.c));
    var var_1 = _wgslsmith_add_vec3_i32(~arg_3.c.yzy, countOneBits(~(-arg_1.d.b))) >> (vec3<u32>(~(select(1u, 40045u, var_0) << (arg_1.e.x % 32u)), countOneBits(21735u), func_3((i32(-1i) * -51985i) & (arg_1.d.b.x & arg_3.c.x), arg_1, func_2()).x) % vec3<u32>(32u));
    return 2147483647i;
}

fn func_6(arg_0: vec3<i32>, arg_1: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(global1.x, 445f), _wgslsmith_f_op_f32(global0.x * 2143f)), vec2<f32>(global0.x, -1279f), vec2<bool>(true, true)))))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.x - -112f), -1268f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -338f), global0.x))) - vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -943f));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), 622f, false)), _wgslsmith_f_op_f32(max(550f, _wgslsmith_div_f32(248f, global0.x))))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2259f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 590f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, global1.x))) - vec2<f32>(_wgslsmith_div_f32(global0.x, var_0), func_2().a)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-446f, var_0), vec2<f32>(global0.x, 1166f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, global0.x) * vec2<f32>(global0.x, -132f)))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-3211f, global0.x) - vec2<f32>(-1404f, 1776f)), vec2<f32>(-1379f, 430f), true)))))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec3<i32>(1i, 1i, 1i), func_5(vec4<bool>(true, true, true, true), Struct_2(countOneBits(func_1()), 1000f, _wgslsmith_mult_vec2_u32(u_input.a.xx ^ u_input.a.xx, ~u_input.a.zy), Struct_1(643f, -vec3<i32>(0i, 1i, 0i), -vec4<i32>(-1i, 0i, -1i, 26765i)), vec2<u32>(firstLeadingBit(4294967295u), 4294967295u)), true, Struct_1(_wgslsmith_f_op_f32(-func_2().a), _wgslsmith_div_vec3_i32(~vec3<i32>(1i, 2147483647i, 34394i), -vec3<i32>(-1i, -1i, -1i)), vec4<i32>(1i, 1i, 1i, 1i) << (~vec4<u32>(u_input.a.x, 20972u, 22572u, u_input.a.x) % vec4<u32>(32u)))));
    global2 = _wgslsmith_mult_vec2_u32(abs(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global2.x, global2.x), vec4<u32>(u_input.a.x, 71562u, 58068u, u_input.a.x) >> (vec4<u32>(u_input.a.x, 28754u, global2.x, 1u) % vec4<u32>(32u))), _wgslsmith_div_u32(~global2.x, 445u))), _wgslsmith_clamp_vec2_u32(u_input.a.xz, firstTrailingBit(firstTrailingBit(min(vec2<u32>(31106u, u_input.a.x), vec2<u32>(0u, 68096u)))), ~u_input.a.yy));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-591f, _wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, 541f), vec2<f32>(global0.x, global0.x)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(173f)), -vec3<i32>(select(~(-25423i), ~5809i, false), 1i, _wgslsmith_div_i32(var_0.b.x, countOneBits(var_0.b.x))), ~var_0.c);
    let var_2 = 205f;
    var var_3 = func_6(countOneBits(var_1.c.ywz), -1i | _wgslsmith_clamp_i32(firstTrailingBit(1i), 18513i, 1i));
    var_1 = var_0;
    let var_4 = vec2<bool>(false || (any(vec4<bool>(true, true, true, true)) & func_4(var_0, _wgslsmith_mod_i32(-1i, -41554i), vec3<bool>(false, true, true)).x), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.a.x | abs(_wgslsmith_mod_u32(60294u, global2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-150f, var_1.a, var_2)))))) - vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-996f * _wgslsmith_f_op_f32(ceil(var_0.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.a, 488f, var_4.x)))))));
}

