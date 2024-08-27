struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_4(global0.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-655f - 411f), _wgslsmith_f_op_f32(abs(-407f)), -596f, _wgslsmith_f_op_f32(-2080f - -634f)) + vec4<f32>(-217f, _wgslsmith_f_op_f32(f32(-1f) * -1701f), -540f, -776f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-980f, 1130f, -382f, -1000f)), vec4<f32>(616f, 674f, -1041f, 913f), !vec4<bool>(arg_1.a, var_0.a.a, false, global0.a)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-299f, -219f, -1172f, 1871f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1247f, 959f, 767f, -1360f), vec4<f32>(856f, -2015f, -143f, 294f)))), vec4<bool>(any(!vec4<bool>(true, false, global0.a, false)), true, true, all(select(vec3<bool>(true, global0.a, true), vec3<bool>(global0.a, true, false), vec3<bool>(true, var_0.a.a, true)))))), true));
    var var_2 = arg_1;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(step(-200f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) - _wgslsmith_f_op_f32(exp2(var_1.x))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1697f, var_1.x)) * _wgslsmith_f_op_f32(var_1.x - 177f))))), 2202f);
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1), var_1);
    return 1000f;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2981f, -2298f, 750f, -239f))))));
    global0 = Struct_2(global0.b.a, global0.b, vec3<i32>(~global0.b.b.x, -11940i, ~_wgslsmith_add_i32(u_input.c, -39996i)));
    let var_1 = global0.b.a;
    var var_2 = Struct_3(vec4<f32>(-233f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -933f) + var_0.x), _wgslsmith_f_op_f32(var_0.x + -1000f)), var_0.x, _wgslsmith_f_op_f32(func_3(global0.a, Struct_2(arg_1.x >= global0.b.c.x, global0.b, global0.c & vec3<i32>(u_input.b.x, arg_2, -35277i))))), vec2<u32>(abs(arg_0), ~4294967295u));
    var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_2.a)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, 987f) + _wgslsmith_f_op_vec4_f32(step(var_2.a, var_0)))))), global0.b.c.xz);
    return countOneBits(~global0.b.c.x);
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1755f)), 1f)));
    var var_1 = vec3<u32>(func_2(~_wgslsmith_clamp_u32(~1u, _wgslsmith_add_u32(0u, global0.b.c.x), 4294967295u), arg_0.b.c.zzy, global0.b.b.x), abs(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(103484u, global0.b.c.x), u_input.e | 0u, _wgslsmith_clamp_u32(24139u, global0.b.c.x, arg_0.b.c.x)), _wgslsmith_mod_u32(select(4294967295u, 11499u, false), _wgslsmith_clamp_u32(0u, global0.b.c.x, 72122u)))), ~(92148u | arg_0.b.c.x));
    let var_2 = Struct_2(!(any(!vec4<bool>(arg_0.b.a, true, global0.b.a, global0.b.a)) == global0.a), global0.b, arg_0.c ^ (_wgslsmith_add_vec3_i32(~u_input.b.wyw, u_input.b.zzw | u_input.b.xxy) | vec3<i32>(0i, 0i, -u_input.d.x)));
    global0 = Struct_2(any(select(select(!vec3<bool>(var_2.a, true, var_2.a), vec3<bool>(true, global0.b.a, global0.a), !vec3<bool>(true, true, global0.b.a)), !select(vec3<bool>(true, false, arg_0.a), vec3<bool>(false, var_2.b.a, global0.a), var_2.b.a), !(!vec3<bool>(var_2.b.a, global0.a, false)))), Struct_1(true, u_input.b.xx, global0.b.c), firstLeadingBit(max(firstLeadingBit(u_input.b.xzy), select(_wgslsmith_clamp_vec3_i32(arg_0.c, vec3<i32>(-1i, 50848i, global0.c.x), u_input.b.wxz), abs(vec3<i32>(1i, var_2.c.x, 17400i)), select(vec3<bool>(global0.a, var_2.b.a, global0.a), vec3<bool>(true, true, false), false)))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1280f, var_0.x) - vec4<f32>(724f, var_0.x, var_0.x, -121f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 796f, -1217f, var_0.x) - vec4<f32>(var_0.x, var_0.x, 166f, var_0.x))))), vec2<u32>(~(~4294967295u), _wgslsmith_mod_u32(abs(4294967295u), ~(~var_1.x))));
    return Struct_4(Struct_1(all(select(!vec2<bool>(global0.b.a, true), vec2<bool>(arg_0.a, true), var_2.a || true)), reverseBits(vec2<i32>(-1i) * -arg_0.c.xy), max(firstLeadingBit(var_2.b.c | vec4<u32>(37955u, 1u, 29837u, 68841u)), vec4<u32>(0u, 48959u, var_2.b.c.x, var_1.x))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: Struct_4) -> u32 {
    global0 = Struct_2(arg_2.x, global0.b, vec3<i32>(min(select(_wgslsmith_div_i32(-41694i, 7962i), -1i >> (global0.b.c.x % 32u), true), _wgslsmith_sub_i32(-49899i, select(-2892i, 2147483647i, arg_3.a.a))), countOneBits(~_wgslsmith_dot_vec3_i32(u_input.b.wxz, vec3<i32>(2147483647i, 20852i, arg_1.x))), _wgslsmith_dot_vec4_i32(-arg_1, -(arg_1 >> (global0.b.c % vec4<u32>(32u))))));
    var var_0 = Struct_2(!any(vec3<bool>(true, true, true)), global0.b, _wgslsmith_mod_vec3_i32(~_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(global0.c, arg_1.yzz), abs(u_input.b.zzw)), _wgslsmith_clamp_vec3_i32(-(global0.c & u_input.b.zwy), ~select(global0.c, arg_1.xxy, global0.a), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global0.c.x, 1i) << (vec3<u32>(global0.b.c.x, global0.b.c.x, arg_3.a.c.x) % vec3<u32>(32u)), vec3<i32>(arg_1.x, -1i, arg_1.x)))));
    var_0 = Struct_2(arg_3.a.b.x != 2147483647i, var_0.b, u_input.b.zzz);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 1826f, -1000f)), vec4<f32>(185f, arg_0.x, 1162f, arg_0.x), all(vec4<bool>(var_0.b.a, arg_2.x, true, true))))))), vec2<u32>(var_0.b.c.x, ~arg_3.a.c.x));
    let var_2 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, 581f, false)))) <= _wgslsmith_f_op_f32(f32(-1f) * -751f), all(arg_2));
    return arg_3.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(u_input.b);
    var var_1 = reverseBits(global0.b.b.x) >> (global0.b.c.x % 32u);
    let var_2 = vec4<u32>(0u, func_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-511f, -868f, _wgslsmith_f_op_f32(f32(-1f) * -850f), 2223f))), var_0, select(vec4<bool>(global0.b.b.x == 0i, 11790i <= global0.b.b.x, true, all(vec4<bool>(global0.a, true, true, global0.a))), vec4<bool>(all(vec2<bool>(global0.a, global0.a)), global0.a, false, global0.b.a), global0.a), func_1(Struct_2(true, Struct_1(global0.b.a, vec2<i32>(16068i, var_0.x), global0.b.c), u_input.b.xyy))), global0.b.c.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.e, func_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(303f, -918f, -899f, 182f))), select(u_input.b, vec4<i32>(5708i, u_input.c, var_0.x, var_0.x), false), vec4<bool>(true, global0.a, global0.a, true), Struct_4(Struct_1(false, u_input.b.wx, global0.b.c)))), func_1(Struct_2(global0.a, Struct_1(global0.b.a, vec2<i32>(8110i, var_0.x), global0.b.c), min(global0.c, vec3<i32>(1i, 49077i, 0i)))).a.c.x));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1303f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(944f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-787f))), _wgslsmith_f_op_f32(sign(2592f))))), u_input.a.zx);
    var var_4 = ~firstTrailingBit(var_2.wx);
    var var_5 = Struct_1(global0.a, -var_0.zx, ~vec4<u32>(1u, u_input.a.x, 82675u, ~reverseBits(var_3.b.x)));
    let var_6 = var_3.a.xzw;
    var var_7 = 46491i;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_div_f32(468f, var_6.x), vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-6593i, u_input.d.x, var_5.b.x, 19163i), firstTrailingBit(vec4<i32>(u_input.c, global0.c.x, -2147483647i, u_input.c))), -2147483647i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, var_5.b.x, var_0.x, var_5.b.x) & vec4<i32>(-1i, var_0.x, 2147483647i, u_input.b.x)), u_input.b), ~u_input.c));
}

