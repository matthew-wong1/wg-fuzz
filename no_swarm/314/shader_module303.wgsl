struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 1i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<i32> {
    var var_0 = select(max(~u_input.d ^ u_input.d, vec4<u32>(u_input.d.x, 908u, 0u, u_input.b)) ^ ~(~u_input.d << (firstLeadingBit(vec4<u32>(u_input.b, u_input.d.x, u_input.b, 30615u)) % vec4<u32>(32u))), ~u_input.d, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1, arg_1, false, false), true), select(vec4<bool>(false, false, arg_1, arg_1), select(vec4<bool>(arg_1, true, true, arg_0.c), vec4<bool>(false, false, false, arg_0.c), vec4<bool>(true, arg_0.c, arg_1, arg_0.c)), true), true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(457f, -205f, 571f, -990f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1750f, 1668f, -1777f, -422f) * vec4<f32>(676f, -576f, 477f, -279f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1245f, -549f, 2749f, 772f) - vec4<f32>(-986f, -409f, -838f, -847f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(310f, -733f, 1000f, 479f))) - vec4<f32>(-1000f, -434f, -776f, 1363f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-2648f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1124f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(365f))), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(351f)), _wgslsmith_f_op_f32(-1091f - 1716f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(774f, -449f)))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-798f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -535f))))));
    return -abs(u_input.c.yy);
}

fn func_2() -> vec4<i32> {
    global0 = func_3(Struct_1(true, _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, 1i), -25232i), all(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false))), false);
    global0 = max(_wgslsmith_mod_vec2_i32(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(0i, global0.x), vec2<i32>(1i, 1i))) & reverseBits(u_input.c.yz), func_3(Struct_1(any(vec4<bool>(true, false, true, false)), global0.x, true), true)), vec2<i32>(-1i) * -(~u_input.c.zz));
    var var_0 = Struct_1(u_input.d.x == 1u, global0.x, -298f >= _wgslsmith_f_op_f32(-568f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1578f, -497f))))));
    global0 = u_input.c.wx;
    var var_1 = Struct_1(true, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, global0.x), vec2<i32>(9647i, global0.x)) & u_input.a, max(max(u_input.c.x, -1i), 1i)), var_0.a);
    return vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, global0.x))), ~(-vec2<i32>(u_input.a, u_input.c.x))), ~(~(~u_input.c.xz))), 2147483647i, 2147483647i, ~408i);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = !(-985f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1161f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(564f, 737f), _wgslsmith_f_op_f32(f32(-1f) * -2103f)))));
    return Struct_1(select(!(!(!arg_1.x)), true, !arg_1.x), -_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-1411i, -54620i, u_input.a, arg_0.x)), vec4<i32>(1i, -10843i, 9044i, 1i)) << (25798u % 32u), false);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = func_4(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, arg_0.x, arg_0.x, ~u_input.a), func_2(), vec4<i32>(arg_0.x, arg_2.x | arg_2.x, firstLeadingBit(-40031i), ~arg_2.x)), select(vec4<bool>(false, arg_1.c, all(vec3<bool>(false, arg_1.c, arg_1.a)), !(arg_1.a | arg_1.c)), vec4<bool>(true, !any(vec2<bool>(true, arg_1.a)), !(57217u <= u_input.b), !arg_1.c), vec4<bool>(select(false, arg_1.c | arg_1.c, true), true, true, false)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-117f - _wgslsmith_div_f32(792f, _wgslsmith_f_op_f32(-156f + -650f))), -736f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(321f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(794f + -1280f))), 920f));
    var var_2 = Struct_1(true, arg_0.x, var_0.a);
    let var_3 = arg_1;
    var_0 = func_4(vec4<i32>(306i, var_2.b, arg_0.x, 2147483647i), vec4<bool>(!select(true, !var_3.a, any(vec2<bool>(true, true))), !select(var_3.a || var_0.a, var_0.a, true), any(vec2<bool>(var_3.a, true)), true));
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> vec3<u32> {
    var var_0 = !select(true, !arg_2.c, !func_1(max(u_input.c, vec4<i32>(u_input.a, arg_2.b, arg_2.b, -66043i)), arg_2, vec2<i32>(-1i, -50274i)).c);
    let var_1 = _wgslsmith_mult_i32(global0.x, select(func_2().x, 1i, !(all(vec4<bool>(true, arg_2.a, false, arg_2.c)) && all(vec2<bool>(true, arg_2.c)))));
    let var_2 = Struct_1(false, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)) <= -2274f);
    let var_3 = var_2;
    let var_4 = -972f;
    return countOneBits(vec3<u32>(_wgslsmith_sub_u32(u_input.b, ~57036u), ~u_input.d.x, ~(u_input.d.x & u_input.b)) >> (~(min(u_input.d.wyx, u_input.d.wyz) << (~u_input.d.yyy % vec3<u32>(32u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, firstTrailingBit(2147483647i) >> (_wgslsmith_dot_vec3_u32(~(u_input.d.www & u_input.d.zwx), func_5(_wgslsmith_f_op_f32(floor(299f)), _wgslsmith_f_op_f32(f32(-1f) * -103f), func_1(u_input.c, Struct_1(true, u_input.c.x, true), u_input.c.wx), -1981f)) % 32u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-654f)) - _wgslsmith_div_f32(2445f, -996f)))) >= _wgslsmith_f_op_f32(-1539f * _wgslsmith_f_op_f32(-817f - _wgslsmith_div_f32(1000f, -409f))));
    global0 = countOneBits(select(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c.xxx, vec3<i32>(global0.x, -2147483647i, 1i)), -u_input.c.x), _wgslsmith_sub_vec2_i32(u_input.c.wy, func_2().wy), vec2<bool>(!var_0.c, var_0.c)) ^ _wgslsmith_div_vec2_i32(-vec2<i32>(1i, var_0.b), abs(~vec2<i32>(var_0.b, u_input.c.x))));
    global0 = _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, func_2().x), -abs(vec2<i32>(global0.x, -2147483647i) >> (u_input.d.wy % vec2<u32>(32u))) >> (u_input.d.xy % vec2<u32>(32u)));
    global0 = u_input.c.wx;
    global0 = ~vec2<i32>(15075i, -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, 0i, u_input.a), u_input.c.wzx) << (_wgslsmith_add_u32(u_input.d.x, u_input.b) % 32u));
    global0 = ~vec2<i32>(21876i & (u_input.a | ~u_input.c.x), ~(-_wgslsmith_add_i32(var_0.b, var_0.b)));
    var var_1 = var_0;
    let var_2 = var_0;
    var var_3 = func_1(u_input.c, Struct_1(var_2.c, select(_wgslsmith_mult_i32(i32(-1i) * -31000i, -1i), ~(-1i), true), true & (_wgslsmith_f_op_f32(select(-150f, -1278f, var_1.c)) > -1722f)), _wgslsmith_add_vec2_i32(u_input.c.wz, u_input.c.xw));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(u_input.b, 1u)), 21017u, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-188f)))) + 1435f), u_input.c ^ u_input.c);
}

