struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: u32,
    d: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(0u, vec2<u32>(0u, 12247u), 61643i);

var<private> global1: vec2<bool>;

var<private> global2: i32 = 1i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_5(max(u_input.a.x, abs(u_input.a.x)), u_input.a.x, global0.b, Struct_2(Struct_1(abs(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)), 709f, -_wgslsmith_add_vec4_i32(vec4<i32>(global0.c, -2147483647i, 3266i, -22879i), vec4<i32>(-36170i, -2147483647i, u_input.a.x, u_input.a.x)), all(select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(global1.x, global1.x, false, false))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -338f), _wgslsmith_f_op_f32(min(-192f, -1000f)), _wgslsmith_f_op_f32(abs(-259f)), -142f)), 1i, Struct_1(countOneBits(min(vec3<i32>(u_input.a.x, 13578i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, global0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(191f)) + _wgslsmith_f_op_f32(-1122f + -1000f)), -(vec4<i32>(0i, global0.c, -38334i, -55279i) ^ vec4<i32>(global0.c, 49436i, u_input.a.x, -2147483647i)), global1.x & true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(942f, -847f, -1402f, -556f)), vec4<f32>(-840f, -193f, -101f, -773f), true)))), select(all(!vec4<bool>(false, true, global1.x, global1.x)), global1.x, true));
    let var_1 = ~(~select(vec3<u32>(var_0.c.x, 92161u, global0.a) << (_wgslsmith_div_vec3_u32(vec3<u32>(global0.a, global0.b.x, global0.a), vec3<u32>(4294967295u, var_0.c.x, global0.b.x)) % vec3<u32>(32u)), min(vec3<u32>(global0.b.x, 67198u, var_0.c.x) | vec3<u32>(global0.a, global0.a, var_0.c.x), _wgslsmith_mod_vec3_u32(vec3<u32>(global0.b.x, global0.b.x, global0.a), vec3<u32>(var_0.c.x, 4294967295u, var_0.c.x))), !vec3<bool>(false, false, global1.x)));
    var var_2 = _wgslsmith_f_op_f32(floor(552f));
    let var_3 = vec4<bool>(var_0.d.a.d, !((1u ^ (global0.a & global0.b.x)) <= (0u >> ((global0.a ^ global0.b.x) % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-307f * var_0.d.a.b)) >= var_0.d.a.b, false);
    let var_4 = all(!select(!(!vec4<bool>(false, false, false, var_3.x)), var_3, global1.x));
    return var_0.c.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = Struct_3(1u, vec2<u32>(~reverseBits(1u), _wgslsmith_div_u32(reverseBits(0u | global0.b.x), ~(~11051u))), reverseBits(i32(-1i) * -10049i));
    var var_0 = -u_input.a.x | _wgslsmith_div_i32(global0.c, u_input.a.x);
    var var_1 = Struct_4(1i, true, (~firstLeadingBit(60214u) ^ (func_3() | global0.b.x)) & ~(global0.b.x ^ 4294967295u), select(select(vec2<bool>(true, !global1.x), !select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), vec2<bool>(false, true)), false), select(select(vec2<bool>(global1.x, arg_0), vec2<bool>(arg_0, false), !arg_0), select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, arg_0), vec2<bool>(true, global1.x)), vec2<bool>(arg_0, true)), any(select(!vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(arg_0, false, global1.x), vec3<bool>(global1.x, true, arg_0), global1.x), select(vec3<bool>(false, true, false), vec3<bool>(false, arg_0, true), vec3<bool>(true, true, false))))));
    let var_2 = ~vec3<u32>(21739u << (var_1.c % 32u), (~var_1.c | 0u) & var_1.c, abs(global0.a));
    let var_3 = true;
    return Struct_1(u_input.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-273f)), _wgslsmith_f_op_f32(floor(-136f))) - _wgslsmith_f_op_f32(step(-693f, 1000f))))), abs(~(vec4<i32>(u_input.a.x, var_1.a, 1i, var_1.a) & (vec4<i32>(2147483647i, -2147483647i, 35138i, 1i) << (vec4<u32>(global0.b.x, var_1.c, var_1.c, 0u) % vec4<u32>(32u))))), all(select(!select(vec4<bool>(global1.x, global1.x, arg_0, false), vec4<bool>(true, arg_0, true, global1.x), true), vec4<bool>(-17520i >= u_input.a.x, false, 2147483647i < global0.c, all(var_1.d)), any(vec3<bool>(true, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(abs(1940f)), 1000f, _wgslsmith_f_op_f32(-1f), -517f));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec2<bool>) -> vec2<u32> {
    global2 = arg_1.a.a.x;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(172f, _wgslsmith_f_op_f32(-391f - _wgslsmith_f_op_f32(-arg_1.c.e.x)))) - 728f));
    var var_1 = select(select(select(!select(vec4<bool>(true, global1.x, arg_1.a.d, true), vec4<bool>(arg_0.c.d, global1.x, arg_0.a.d, false), arg_1.c.d), select(select(vec4<bool>(false, arg_3.x, false, arg_2.x), vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(arg_0.a.d, arg_1.c.d, true, global1.x)), !vec4<bool>(arg_2.x, arg_3.x, false, false), any(vec3<bool>(true, false, arg_3.x))), vec4<bool>(global0.c > 19907i, true, !global1.x, all(arg_3))), select(!select(vec4<bool>(global1.x, true, true, false), vec4<bool>(true, arg_3.x, arg_3.x, false), vec4<bool>(arg_2.x, true, true, arg_0.a.d)), vec4<bool>(global1.x, all(arg_2), all(vec2<bool>(false, arg_3.x)), true), !vec4<bool>(true, false, true, global1.x)), all(arg_3)), !vec4<bool>(true, (arg_1.c.d && false) && any(arg_3), any(vec4<bool>(arg_1.a.d, global1.x, true, arg_0.c.d)), arg_2.x), vec4<bool>(arg_1.c.d, !global1.x, true, any(!(!vec3<bool>(false, arg_3.x, true)))));
    global0 = Struct_3(global0.b.x << ((_wgslsmith_clamp_u32(firstLeadingBit(25132u), global0.b.x, _wgslsmith_add_u32(global0.b.x, global0.b.x)) << (select(global0.b.x >> (global0.b.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(109438u, global0.a), vec2<u32>(global0.b.x, 37400u)), true) % 32u)) % 32u), _wgslsmith_mult_vec2_u32(select(_wgslsmith_add_vec2_u32(global0.b, global0.b) | vec2<u32>(global0.b.x, 28731u), firstTrailingBit(vec2<u32>(global0.a, global0.a)), all(!vec4<bool>(arg_3.x, false, false, false))), ~min(reverseBits(global0.b), global0.b)), arg_0.c.a.x);
    var var_2 = arg_0.a;
    return global0.b;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: Struct_1) -> f32 {
    var var_0 = select(func_4(Struct_2(func_2(true), -(arg_1.x >> (global0.b.x % 32u)), func_2(false)), Struct_2(Struct_1(firstTrailingBit(vec3<i32>(global0.c, arg_2.a, arg_0.x)), _wgslsmith_div_f32(659f, arg_3.b), vec4<i32>(1i, 6668i, 61544i, u_input.a.x), any(vec2<bool>(global1.x, global1.x)), vec4<f32>(1500f, -555f, arg_3.e.x, arg_3.e.x)), -_wgslsmith_mult_i32(12022i, -3359i), Struct_1(vec3<i32>(arg_0.x, global0.c, 0i), 1537f, firstTrailingBit(vec4<i32>(-2147483647i, u_input.a.x, 11074i, arg_3.c.x)), false & arg_2.d.x, _wgslsmith_f_op_vec4_f32(arg_3.e * arg_3.e))), !select(!vec3<bool>(true, arg_3.d, true), select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(arg_2.d.x, false, false), arg_3.d), select(vec3<bool>(arg_3.d, false, arg_2.b), vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x), vec3<bool>(false, true, arg_3.d))), !(!arg_2.d)), firstTrailingBit(~global0.b), arg_2.d);
    global0 = Struct_3(var_0.x, global0.b, arg_3.a.x);
    let var_1 = any(arg_2.d);
    let var_2 = vec3<u32>(~arg_2.c, ~var_0.x << (~(~(~var_0.x)) % 32u), 1u);
    var_0 = vec2<u32>(max(49500u, func_4(Struct_2(func_2(arg_3.d), 2147483647i, arg_3), Struct_2(arg_3, 16309i, arg_3), !vec3<bool>(var_1, global1.x, false), !select(arg_2.d, arg_2.d, global1.x)).x), var_2.x);
    return _wgslsmith_f_op_f32(func_2(any(!(!vec2<bool>(var_1, true)))).b + -338f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1339f))), _wgslsmith_f_op_f32(f32(-1f) * -1729f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(func_1(u_input.a, vec4<i32>(u_input.a.x, global0.c, global0.c, global0.c), Struct_4(global0.c, true, 3638u, vec2<bool>(global1.x, global1.x)), Struct_1(u_input.a, 538f, vec4<i32>(global0.c, 17007i, global0.c, 0i), global1.x, vec4<f32>(448f, -828f, 108f, -1850f)))), _wgslsmith_f_op_f32(-1000f * 500f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-430f, 326f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1534f), vec2<f32>(1804f, 1134f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(662f, -416f) * vec2<f32>(808f, 408f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_1(u_input.a, vec4<i32>(-22968i, global0.c, global0.c, u_input.a.x), Struct_4(u_input.a.x, global1.x, global0.b.x, vec2<bool>(global1.x, false)), Struct_1(vec3<i32>(-1i, global0.c, -2147483647i), 296f, vec4<i32>(1i, global0.c, 2147483647i, u_input.a.x), global1.x, vec4<f32>(-387f, -1742f, 1692f, -169f)))), _wgslsmith_f_op_f32(f32(-1f) * -276f)))), _wgslsmith_f_op_vec2_f32(func_2(!global1.x).e.yz - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -194f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(673f, 888f))))), global1.x)), !vec2<bool>(all(vec4<bool>(true, false, global1.x, global1.x)), global1.x)));
    var var_2 = Struct_4(_wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(global0.c, -65642i) ^ global0.c) << (26691u % 32u), func_2(true).d, _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, ~(global0.a << (global0.a % 32u))), abs(global0.a | 122780u)), vec2<bool>(global1.x, all(select(vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x), global1.x))));
    let var_3 = 1u;
    let var_4 = Struct_5(abs(-9859i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global0.c, -_wgslsmith_clamp_i32(u_input.a.x, 35676i, u_input.a.x)), _wgslsmith_add_i32(firstTrailingBit(~u_input.a.x), func_2(all(vec4<bool>(true, false, var_2.d.x, false))).c.x), u_input.a.x), _wgslsmith_add_vec2_u32(vec2<u32>(~countOneBits(var_3), global0.b.x), global0.b | select(vec2<u32>(0u, 0u), global0.b, true)), Struct_2(Struct_1(_wgslsmith_div_vec3_i32(-u_input.a, ~vec3<i32>(62185i, -2147483647i, u_input.a.x)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1f) * -1171f)), vec4<i32>(u_input.a.x ^ 26481i, u_input.a.x, global0.c, global0.c), !all(var_2.d), vec4<f32>(_wgslsmith_f_op_f32(trunc(678f)), _wgslsmith_f_op_f32(f32(-1f) * -1712f), _wgslsmith_f_op_f32(150f + var_1.x), _wgslsmith_div_f32(var_1.x, -134f))), 19375i, Struct_1(vec3<i32>(u_input.a.x ^ u_input.a.x, global0.c, var_2.a), -1665f, vec4<i32>(_wgslsmith_sub_i32(35835i, 2147483647i), _wgslsmith_div_i32(var_2.a, global0.c), -u_input.a.x, 0i), func_2(all(vec3<bool>(global1.x, global1.x, false))).d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 788f, var_1.x, -641f) - vec4<f32>(431f, var_1.x, var_1.x, -512f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -424f))))), _wgslsmith_mod_i32(-17743i, _wgslsmith_mult_i32(u_input.a.x, ~var_2.a)) >= (u_input.a.x ^ global0.c));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_4.d.a.e + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-555f, var_1.x, var_1.x, 193f))) * _wgslsmith_f_op_vec4_f32(-var_4.d.a.e))), var_4.d.a.e, vec4<bool>(true, true, !global1.x, global1.x))), global0.c, ~var_4.c, var_4.d.a.e);
}

