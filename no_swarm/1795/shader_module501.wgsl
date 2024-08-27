struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(30432u, 29514u, 41556u, 1643u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<f32>) -> vec2<bool> {
    global0 = ~select(u_input.a, u_input.a, arg_0.x);
    let var_0 = ~reverseBits(vec4<i32>(1i >> (1u % 32u), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -859i, 0i, 22565i), vec4<i32>(2147483647i, -2147483647i, 30571i, -18162i)) | 1i, -1i));
    var var_1 = ~(abs(_wgslsmith_sub_vec3_u32(global0.yxy << (vec3<u32>(23088u, 1u, 1u) % vec3<u32>(32u)), u_input.a.xzz)) ^ _wgslsmith_add_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, 5800u, 51410u), u_input.a.zyy), abs(vec3<u32>(12610u, 4294967295u, 27235u)), true | arg_0.x), vec3<u32>(global0.x, 1u, 1u)));
    let var_2 = var_0.x;
    global0 = vec4<u32>(abs(~_wgslsmith_sub_u32(~var_1.x, u_input.a.x)), 56600u, global0.x, 39516u);
    return vec2<bool>(arg_0.x, !arg_0.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec2<f32>) -> i32 {
    let var_0 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(25469u, global0.x), 46400u), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 23751u), u_input.a.zz, u_input.a.yy), vec2<u32>(u_input.a.x, global0.x) ^ vec2<u32>(37336u, u_input.a.x))), u_input.a.zz);
    global0 = max(~(~abs(countOneBits(u_input.a))), firstLeadingBit(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 4294967295u, u_input.a.x, 1u), vec4<u32>(var_0.x, var_0.x, 32411u, u_input.a.x)), _wgslsmith_div_u32(~23106u, var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), firstTrailingBit(vec2<u32>(100413u, global0.x))), ~(~67266u))));
    let var_1 = Struct_1(!select(!vec4<bool>(false, false, true, arg_1.x), vec4<bool>(arg_2.x >= 481f, !arg_0.x, any(vec2<bool>(false, true)), false), func_3(vec4<bool>(true, arg_1.x, arg_1.x, arg_0.x), _wgslsmith_f_op_f32(225f + arg_2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-228f, -1245f, -1140f, arg_2.x) - vec4<f32>(868f, -1170f, arg_2.x, 140f))).x), !select(vec4<bool>(true, arg_1.x, all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), arg_0.x), !(!vec4<bool>(false, true, arg_1.x, arg_0.x)), false), 94561u, select(-1346i, abs(countOneBits(_wgslsmith_mod_i32(-1i, -2147483647i))), false), select(var_0, vec2<u32>(1u, 12951u), vec2<bool>(arg_0.x | arg_1.x, !(!arg_1.x))));
    let var_2 = vec3<i32>(_wgslsmith_add_i32(var_1.d | -1i, 2147483647i), 1i, _wgslsmith_mult_i32(-abs(16119i) << (1u % 32u), var_1.d));
    global0 = ~vec4<u32>(var_1.c, 54890u, 4294967295u, u_input.a.x);
    return reverseBits(_wgslsmith_dot_vec2_i32(var_2.xy, _wgslsmith_mult_vec2_i32(-abs(var_2.zx), _wgslsmith_add_vec2_i32(select(var_2.yx, var_2.yy, true), -vec2<i32>(-1i, var_1.d)))));
}

fn func_2() -> Struct_1 {
    global0 = vec4<u32>(4309u, global0.x, u_input.a.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x))), vec2<u32>(global0.x, ~0u | min(29741u, u_input.a.x))));
    var var_0 = vec3<i32>(abs(_wgslsmith_add_i32(func_4(vec2<bool>(true, true), func_3(vec4<bool>(true, true, true, false), 2143f, vec4<f32>(-202f, -128f, -990f, -587f)), vec2<f32>(2382f, -2075f)), 1i << (0u % 32u))), i32(-1i) * -47827i, func_4(func_3(vec4<bool>(true, true, true, true), 1862f, vec4<f32>(_wgslsmith_f_op_f32(1737f * -1060f), _wgslsmith_f_op_f32(step(-162f, 406f)), -709f, -1600f)), vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(698f, 1694f)), vec2<f32>(-1143f, -1079f), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(727f, 2186f), vec2<f32>(-1394f, -768f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-623f, 1000f))))));
    var_0 = vec3<i32>(firstLeadingBit(-var_0.x), _wgslsmith_sub_i32(var_0.x, var_0.x), firstTrailingBit(var_0.x));
    var_0 = ~max(_wgslsmith_div_vec3_i32(vec3<i32>(~var_0.x, _wgslsmith_sub_i32(1i, var_0.x), -1i), (vec3<i32>(var_0.x, -4240i, -2147483647i) | vec3<i32>(var_0.x, var_0.x, -15462i)) >> ((vec3<u32>(0u, u_input.a.x, 25167u) >> (u_input.a.zxy % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<i32>(-3513i ^ var_0.x, abs(var_0.x), _wgslsmith_sub_i32(-var_0.x, _wgslsmith_mod_i32(-2147483647i, -44736i))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1297f), -962f)) + -670f));
    return Struct_1(!(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))), !vec4<bool>(true, !(-178f <= var_1), any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), select(true, any(vec3<bool>(true, true, true)), true)), ~global0.x, 11429i, vec2<u32>(min(~0u, 29243u), firstLeadingBit(16662u)));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_div_f32(1412f, _wgslsmith_f_op_f32(abs(arg_0.x))));
    let var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_add_i32(27620i, countOneBits(var_0.d))), min(2147483647i, ~var_0.d | firstLeadingBit(54200i))), ~firstLeadingBit(vec2<i32>(var_0.d, var_0.d)));
    var var_3 = _wgslsmith_add_vec2_i32(-max(var_2, vec2<i32>(3564i << (var_0.c % 32u), _wgslsmith_add_i32(var_0.d, 54865i))), vec2<i32>(-18807i, firstLeadingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(19750i, 0i, var_2.x), vec3<i32>(var_2.x, var_2.x, var_2.x)))));
    let var_4 = _wgslsmith_mod_u32(~u_input.a.x | u_input.a.x, _wgslsmith_div_u32(reverseBits(27744u), ~u_input.a.x)) ^ u_input.a.x;
    return 8423u;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec4<u32> {
    global0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(~(~4294967295u), arg_0.e.x, 1u, abs(_wgslsmith_mult_u32(0u, 0u))), max(abs(_wgslsmith_mult_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(arg_2.x, arg_2.x, 1u, arg_0.e.x)))), vec4<u32>(~(u_input.a.x >> (u_input.a.x % 32u)), global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 86615u), vec2<u32>(arg_2.x, global0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(1u, 45260u)))));
    global0 = abs(~u_input.a);
    var var_0 = true;
    var_0 = arg_1.a.x;
    global0 = u_input.a;
    return vec4<u32>(_wgslsmith_mod_u32(34411u, ~min(arg_2.x, ~30221u)), arg_2.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(max(func_2().c, ~arg_0.e.x), ~(~arg_0.e.x)), abs(arg_1.e.x)), firstTrailingBit(16595u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(global0.x, 12453u, global0.x, 4294967295u)), u_input.a);
    var var_0 = func_5(Struct_1(vec4<bool>(select(false, false, true), func_1(vec3<f32>(550f, -684f, 1970f)) < 14139u, false, true), vec4<bool>(true, true, true, true), u_input.a.x, ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(4301i, 33813i, 24258i, 1i), vec4<i32>(30645i, 1i, 4049i, -16417i), vec4<bool>(true, false, false, true)), vec4<i32>(1i, 1i, 1i, 1i)), u_input.a.zy), func_2(), ~global0.xy, func_2().a.xzy);
    let var_1 = func_2();
    let var_2 = Struct_1(vec4<bool>(true, all(var_1.a.yw), var_1.a.x, var_1.b.x), var_1.a, u_input.a.x, var_1.d, abs(abs(var_1.e)));
    var var_3 = vec3<bool>(select(!(var_2.b.x | var_1.a.x) && true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) < -2962f, false | (_wgslsmith_f_op_f32(sign(1000f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1192f))), var_2.a.x, true);
    let var_4 = Struct_1(select(var_2.b, func_2().a, true), select(select(select(var_2.b, vec4<bool>(var_3.x, var_2.a.x, true, true), var_1.c >= var_2.c), func_2().b, var_2.c <= _wgslsmith_mod_u32(u_input.a.x, var_1.c)), var_2.b, !func_3(vec4<bool>(var_2.b.x, false, true, true), _wgslsmith_f_op_f32(-1647f - 930f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-693f, -1265f, 285f, 750f))).x), ~global0.x, select(_wgslsmith_clamp_i32(~(var_1.d >> (0u % 32u)), _wgslsmith_div_i32(~1i, select(var_2.d, 0i, var_1.b.x)), 0i), -1i, false), var_0.ww);
    let var_5 = select(false || (var_2.b.x || true), select(all(!select(vec3<bool>(var_1.b.x, var_3.x, var_1.b.x), vec3<bool>(var_4.b.x, var_3.x, true), true)), var_1.b.x, true), !any(func_2().a.zy) & true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, 21081u), 1u), -805f, ~var_4.d, 12805i);
}

