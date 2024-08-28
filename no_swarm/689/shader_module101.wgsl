struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 71994i), true, vec3<i32>(2147483647i, -41628i, 1i), -811f, i32(-2147483648));

var<private> global1: array<vec3<f32>, 13>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>) -> bool {
    global0 = Struct_1(max(u_input.b.xy, vec2<i32>(43038i & u_input.b.x, 2147483647i)), all(select(arg_1.yx, select(!arg_1.wz, arg_1.xy, true), select(vec2<bool>(arg_1.x, global0.b), arg_1.xy, !vec2<bool>(true, global0.b)))), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(global0.c, u_input.b), -vec3<i32>(-2147483647i, 14379i, global0.c.x)), countOneBits(select(max(vec3<i32>(arg_0.x, u_input.b.x, -20489i), global0.c), u_input.b, select(global0.b, arg_1.x, arg_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1801f, -182f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1124f * -2213f) + global0.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, global0.d, true)) - _wgslsmith_f_op_f32(trunc(global0.d))))), max(-15462i, u_input.b.x));
    var var_0 = min(u_input.c.x, ~abs(32489u));
    global0 = Struct_1(arg_0, !(u_input.a < _wgslsmith_clamp_u32(~u_input.a, ~u_input.c.x, u_input.a)), abs(vec3<i32>(0i, -_wgslsmith_clamp_i32(-2147483647i, 551i, -78245i), _wgslsmith_dot_vec4_i32(-vec4<i32>(global0.a.x, u_input.b.x, 0i, u_input.b.x), ~vec4<i32>(-4281i, arg_0.x, 1i, -1i)))), _wgslsmith_f_op_f32(ceil(250f)), -select(0i, -(arg_0.x << (1u % 32u)), arg_1.x));
    let var_1 = Struct_2(-625f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-1360f, 771f), vec2<f32>(global0.d, global0.d)), vec2<f32>(global0.d, global0.d))) * vec2<f32>(-1659f, global0.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-847f, global0.d), vec2<f32>(1616f, -2344f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-898f, global0.d) - vec2<f32>(-551f, global0.d)))), arg_1.ww)), ~(~1u), _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(-2351f, global0.d)), -1923f);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-global0.d))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(118f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))))));
    return arg_1.x & (countOneBits(_wgslsmith_add_i32(-20021i, reverseBits(arg_0.x))) >= -(~global0.c.x));
}

fn func_2() -> i32 {
    global0 = Struct_1(vec2<i32>(-1i) * -vec2<i32>(firstLeadingBit(-51720i), -1i), func_3(vec2<i32>(-1i, min(-u_input.b.x, 14979i)), !(!select(vec4<bool>(true, global0.b, global0.b, global0.b), vec4<bool>(global0.b, global0.b, global0.b, false), vec4<bool>(true, global0.b, false, global0.b)))), vec3<i32>(2147483647i, _wgslsmith_clamp_i32(1i, -(~u_input.b.x), global0.e), 58624i), _wgslsmith_f_op_f32(-global0.d), -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(-1i, -1i)), u_input.b.xz << (vec2<u32>(0u, 17507u) % vec2<u32>(32u))), u_input.b.xy));
    let var_0 = Struct_1(reverseBits(~(vec2<i32>(-1i) * -vec2<i32>(28873i, u_input.b.x))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d, -613f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d))), global0.c & reverseBits(countOneBits(vec3<i32>(53674i, u_input.b.x, 0i))), 765f, _wgslsmith_mod_i32(u_input.b.x, 1i));
    var var_1 = vec2<bool>(global0.b, false);
    var var_2 = Struct_1(reverseBits(abs(firstTrailingBit(global0.a << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))))), all(vec4<bool>(true, all(vec2<bool>(false, true)), !any(vec3<bool>(global0.b, true, var_1.x)), _wgslsmith_f_op_f32(-var_0.d) == -1391f)), -(~vec3<i32>(-59873i, _wgslsmith_div_i32(0i, 12271i), var_0.a.x)), -153f, _wgslsmith_div_i32(var_0.e, 34837i));
    var var_3 = ~u_input.c.yz;
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-global0.c.x ^ ~var_0.e, var_0.c.x, global0.e, firstTrailingBit(-1i)), vec4<i32>(firstLeadingBit(18817i), reverseBits(var_0.e), _wgslsmith_div_i32(var_2.c.x, -8757i), max(-25511i, -12930i)) << (vec4<u32>(u_input.c.x, ~var_3.x, var_3.x << (var_3.x % 32u), ~24709u) % vec4<u32>(32u))), -firstTrailingBit(-abs(var_0.a.x)));
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    global1 = array<vec3<f32>, 13>();
    var var_0 = (abs(func_2()) & abs(global0.c.x)) >> (_wgslsmith_mod_u32(~(arg_0 | 4294967295u), 1u) % 32u);
    var var_1 = global0.c;
    global0 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(-(~global0.c), vec3<i32>(~2147483647i, var_1.x, select(global0.e, u_input.b.x, global0.b))), 1124i), global0.b, vec3<i32>(u_input.b.x, i32(-1i) * -2147483647i, abs(~(i32(-1i) * -1i))), -398f, 1i);
    let var_2 = _wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_clamp_vec4_u32(u_input.c, _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~u_input.c, vec4<u32>(arg_1, 1u, 4294967295u, arg_0) | u_input.c), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(arg_0, 1u, arg_1, arg_0)), select(u_input.c, u_input.c, global0.b))), abs(firstTrailingBit(vec4<u32>(arg_0, arg_1, arg_0, arg_1)))));
    return Struct_1(u_input.b.zz, global0.b, global0.c, global0.d, select(max(-global0.c.x, u_input.b.x), -var_1.x, all(!(!vec2<bool>(global0.b, true)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(-firstTrailingBit(-arg_3.c.yz), arg_0.x, -arg_3.c << (u_input.c.wyz % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(429f, _wgslsmith_f_op_f32(max(-491f, -231f))) - _wgslsmith_f_op_f32(arg_2.x + -1373f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(-arg_1.d)))), _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(arg_3.c, u_input.b, global0.c) ^ vec3<i32>(-10377i, -1803i, ~68343i), _wgslsmith_div_vec3_i32(vec3<i32>(min(-1i, arg_3.e), arg_3.c.x, global0.a.x), vec3<i32>(reverseBits(45646i), _wgslsmith_add_i32(arg_3.e, u_input.b.x), 0i << (u_input.a % 32u)))));
    var var_1 = _wgslsmith_f_op_f32(-global0.d);
    let var_2 = any(arg_0.wx);
    let var_3 = _wgslsmith_mult_u32(~(~u_input.a ^ firstTrailingBit(14408u)), reverseBits(u_input.c.x) & abs(_wgslsmith_mult_u32(~4294967295u, u_input.c.x)));
    global1 = array<vec3<f32>, 13>();
    return 19291u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, true, select(u_input.b, -(-vec3<i32>(1i, 51022i, u_input.b.x) >> (~vec3<u32>(4018u, u_input.c.x, 4294967295u) % vec3<u32>(32u))), !select(select(vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(false, true, global0.b), true), vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(global0.b, true, global0.b))), _wgslsmith_f_op_f32(-global0.d), _wgslsmith_div_i32(-13478i, u_input.b.x));
    global0 = Struct_1(-(~(~u_input.b.zx) ^ -u_input.b.zx), global0.b, u_input.b, _wgslsmith_f_op_f32(-global0.d), 0i ^ (~u_input.b.x >> (~(~4294967295u) % 32u)));
    let var_0 = vec3<u32>(~(~26959u), 1u, _wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(func_4(select(vec4<bool>(true, global0.b, global0.b, true), vec4<bool>(false, global0.b, global0.b, global0.b), global0.b), Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), global0.b, vec3<i32>(global0.e, -44326i, -7423i), global0.d, global0.c.x), _wgslsmith_div_vec4_f32(vec4<f32>(global0.d, global0.d, global0.d, -1072f), vec4<f32>(global0.d, global0.d, -832f, 1304f)), func_1(61652u, u_input.c.x)), ~firstLeadingBit(u_input.c.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(1163u, 37184u), 14395u))));
    var var_1 = func_1(func_4(vec4<bool>(true, global0.b, 25169u >= _wgslsmith_mult_u32(u_input.a, 32685u), true), Struct_1(global0.a, false, _wgslsmith_clamp_vec3_i32(vec3<i32>(21872i, 39334i, global0.c.x), vec3<i32>(1i, 0i, u_input.b.x), u_input.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1692f * 1175f), _wgslsmith_f_op_f32(f32(-1f) * -2259f))), ~5613i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(392f, 410f, global0.d, -426f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, -302f, -1000f, -228f) - vec4<f32>(global0.d, global0.d, 401f, -103f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, global0.d, global0.d, global0.d) * vec4<f32>(-1132f, -554f, 2057f, 1326f)), vec4<f32>(global0.d, global0.d, global0.d, global0.d)))), Struct_1(abs(global0.c.yx), false, u_input.b, -1100f, ~2147483647i)), _wgslsmith_mult_u32(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(93198u, var_0.x, 1u, 10161u), vec4<u32>(1u, 0u, var_0.x, 4294967295u))), ~u_input.c.x & var_0.x));
    global1 = array<vec3<f32>, 13>();
    var var_2 = select(!select(select(vec2<bool>(true, var_1.b), select(vec2<bool>(true, false), vec2<bool>(true, global0.b), true), any(vec2<bool>(var_1.b, global0.b))), !select(vec2<bool>(global0.b, var_1.b), vec2<bool>(true, true), vec2<bool>(false, var_1.b)), !global0.b), vec2<bool>(var_1.b, var_1.b), func_1(u_input.a, (var_0.x | u_input.a) | u_input.c.x).b);
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec4<u32>(4294967295u, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_0.x, u_input.a, 0u), u_input.c), u_input.a), ~u_input.c), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.xz, ~(~vec2<u32>(u_input.a, 26143u))), var_0.xy), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) + global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(369f)) - _wgslsmith_f_op_f32(-var_1.d))), vec2<f32>(_wgslsmith_f_op_f32(select(-791f, func_1(var_0.x, u_input.a).d, -2687f >= var_1.d)), 1668f))));
}

