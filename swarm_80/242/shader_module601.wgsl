struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(vec3<i32>(2161i, -12559i, 19620i)), Struct_1(vec3<i32>(4436i, 29968i, -1i))), Struct_2(Struct_1(vec3<i32>(1i, 6890i, 1i)), Struct_1(vec3<i32>(20473i, -49542i, 32060i))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i)), Struct_1(vec3<i32>(i32(-2147483648), 19120i, 1i))), Struct_2(Struct_1(vec3<i32>(1i, -30037i, 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), 1i, 1i))), Struct_2(Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 743i)), Struct_1(vec3<i32>(-27171i, -6865i, i32(-2147483648)))), Struct_2(Struct_1(vec3<i32>(-18993i, 1i, -28647i)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 0i))), Struct_2(Struct_1(vec3<i32>(0i, 32426i, 1i)), Struct_1(vec3<i32>(-28307i, -7716i, -22627i))), Struct_2(Struct_1(vec3<i32>(1i, 26466i, 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), 0i, -1i))), Struct_2(Struct_1(vec3<i32>(1i, 2147483647i, -86456i)), Struct_1(vec3<i32>(0i, 2147483647i, 26002i))), Struct_2(Struct_1(vec3<i32>(39343i, -1039i, 2147483647i)), Struct_1(vec3<i32>(0i, -24577i, 57974i))), Struct_2(Struct_1(vec3<i32>(19370i, 12815i, 2147483647i)), Struct_1(vec3<i32>(2147483647i, 53791i, i32(-2147483648)))), Struct_2(Struct_1(vec3<i32>(2147483647i, 2147483647i, 2147483647i)), Struct_1(vec3<i32>(2147483647i, 1i, 0i))), Struct_2(Struct_1(vec3<i32>(-23643i, 0i, 10320i)), Struct_1(vec3<i32>(1i, i32(-2147483648), 1i))), Struct_2(Struct_1(vec3<i32>(1i, 1556i, 0i)), Struct_1(vec3<i32>(51394i, 1554i, -20768i))), Struct_2(Struct_1(vec3<i32>(-38620i, 2147483647i, -1786i)), Struct_1(vec3<i32>(-1i, 20237i, 1i))), Struct_2(Struct_1(vec3<i32>(1i, 1i, -23503i)), Struct_1(vec3<i32>(-1i, -19267i, 5343i))), Struct_2(Struct_1(vec3<i32>(-1277i, -1i, i32(-2147483648))), Struct_1(vec3<i32>(0i, -17312i, 1i))));

var<private> global2: i32 = 2147483647i;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: bool) -> i32 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x << ((u_input.d | 37447u) % 32u), _wgslsmith_clamp_i32(i32(-1i) * -39782i, 1i, 0i), i32(-1i) * -1i), global3.a, global3.a));
    global2 = max(-49840i, _wgslsmith_dot_vec3_i32(-(vec3<i32>(var_0.a.x, var_0.a.x, 17457i) & u_input.a) ^ global3.a, ~countOneBits(~vec3<i32>(-2147483647i, 3991i, var_0.a.x))));
    var var_1 = arg_1.x;
    var var_2 = !select(vec2<bool>(false, _wgslsmith_f_op_f32(select(-263f, -853f, arg_2)) < _wgslsmith_f_op_f32(abs(-335f))), arg_1.xx, select(true, arg_2, arg_2));
    var var_3 = Struct_1(vec3<i32>(0i | ~_wgslsmith_dot_vec4_i32(arg_0, arg_0), var_0.a.x, _wgslsmith_clamp_i32(u_input.c.x, u_input.e, 1i) & _wgslsmith_mult_i32(_wgslsmith_mod_i32(global3.a.x, 1i), global3.a.x ^ 0i)));
    return ~_wgslsmith_add_i32(_wgslsmith_div_i32(-1i, abs(-62599i)), 1i >> (1u % 32u));
}

fn func_2(arg_0: f32) -> i32 {
    global0 = countOneBits(~(-18596i));
    let var_0 = (u_input.d ^ _wgslsmith_sub_u32(u_input.d, 0u)) & 1u;
    global2 = ~u_input.e;
    let var_1 = all(vec2<bool>(true, arg_0 < 1488f));
    var var_2 = vec3<i32>(~(~func_3(abs(vec4<i32>(global3.a.x, 1i, -31890i, -4687i)), !vec3<bool>(true, true, var_1), all(vec2<bool>(true, false)))), i32(-1i) * -2147483647i, _wgslsmith_mult_i32(-10355i, -global3.a.x));
    return var_2.x & (max(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_2.x, u_input.b, 1i, 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.a.x, 39871i, 47896i), vec4<i32>(38288i, var_2.x, 0i, global3.a.x))), _wgslsmith_mult_i32(1i, -31772i | global3.a.x)) | _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-29550i, u_input.e, u_input.c.x) >> (~vec3<u32>(var_0, 1u, u_input.d) % vec3<u32>(32u))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(vec3<i32>(~1i, -u_input.b, u_input.a.x));
    global1 = array<Struct_2, 17>();
    var var_1 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(global3.a.x, -func_2(-510f)), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 34218i, -12990i), vec4<i32>(2147483647i, var_0.a.x, 74523i, global3.a.x))), u_input.b)), ~1i, u_input.e, ~_wgslsmith_clamp_i32(~(-26770i) ^ (u_input.b ^ global3.a.x), func_2(_wgslsmith_f_op_f32(501f + 1604f)), -1i));
    var var_2 = 92134u != _wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(16766u, u_input.d, 39819u, 19878u)) ^ ~vec4<u32>(4294967295u, 51102u, u_input.d, u_input.d)), ~reverseBits(vec4<u32>(u_input.d, u_input.d, u_input.d, 1u)));
    global1 = array<Struct_2, 17>();
    return Struct_2(Struct_1(vec3<i32>(-1i) * -(~u_input.c)), Struct_1(u_input.c));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-381f - -494f))));
    global0 = _wgslsmith_mult_i32(reverseBits(_wgslsmith_mod_i32(arg_0.a.a.x, var_0.b.a.x)), ~firstTrailingBit(firstLeadingBit(~(-2147483647i))));
    let var_2 = Struct_3(true);
    let var_3 = Struct_3(!(!(var_1 <= var_1)));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = _wgslsmith_clamp_i32(arg_0.a.x, 2147483647i, u_input.a.x);
    let var_1 = select(select(vec2<bool>(true & any(vec2<bool>(arg_2.a, true)), select(false, arg_2.a, arg_2.a) & true), vec2<bool>(false, true), arg_0.a.x == ~1i), vec2<bool>(arg_1.a, !(!arg_2.a)), arg_1.a);
    global3 = func_1().b;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-391f, -283f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-349f)) * 857f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1417f + -403f))) - -507f)));
    var var_3 = !(!(!select(!vec3<bool>(false, var_1.x, false), !vec3<bool>(arg_1.a, false, var_1.x), vec3<bool>(false, arg_2.a, arg_1.a))));
    return abs(abs(_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(61454u, 56545u, 0u, 69598u), vec4<u32>(u_input.d, u_input.d, 0u, 106488u)), (vec4<u32>(u_input.d, 0u, u_input.d, 8733u) ^ vec4<u32>(0u, 4294967295u, u_input.d, u_input.d)) << (~vec4<u32>(u_input.d, u_input.d, 52541u, u_input.d) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3.a.x;
    var var_0 = min(~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(45732u, 0u, u_input.d, u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.d, 0u), vec4<u32>(u_input.d, 30567u, 22669u, 31237u))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, u_input.d), vec4<u32>(u_input.d, u_input.d, 0u, 6843u), vec4<u32>(u_input.d, u_input.d, 0u, u_input.d))), _wgslsmith_add_vec4_u32(countOneBits(max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.d, 61926u, u_input.d), vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d)), ~vec4<u32>(u_input.d, 1u, u_input.d, 4294967295u))), func_5(Struct_1(global3.a), Struct_3(true), func_4(func_1(), ~vec2<u32>(u_input.d, 4294967295u)))));
    var var_1 = _wgslsmith_f_op_f32(1072f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1045f, 128f) + -729f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-722f)), _wgslsmith_f_op_f32(max(-1000f, -138f)))));
    var_0 = ~max(~vec4<u32>(106820u, var_0.x, u_input.d, u_input.d) ^ ~(~vec4<u32>(u_input.d, 16319u, var_0.x, u_input.d)), firstLeadingBit(~func_5(Struct_1(vec3<i32>(3653i, global3.a.x, 21370i)), Struct_3(false), Struct_3(false))));
    let var_2 = -1i;
    let var_3 = abs(_wgslsmith_mod_u32(28078u, ~_wgslsmith_dot_vec3_u32(var_0.zyx, var_0.wzz | vec3<u32>(u_input.d, 4616u, 55523u))));
    var var_4 = _wgslsmith_dot_vec4_u32(~(select(vec4<u32>(44092u, 9438u, var_0.x, var_3) ^ vec4<u32>(0u, var_0.x, 0u, 47813u), max(vec4<u32>(var_0.x, 19667u, var_0.x, 60997u), vec4<u32>(var_3, 0u, var_3, u_input.d)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))) | _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(15589u, var_0.x, u_input.d, u_input.d), vec4<u32>(var_3, var_0.x, var_0.x, var_0.x)), countOneBits(vec4<u32>(var_3, u_input.d, 4294967295u, u_input.d)), ~vec4<u32>(var_3, u_input.d, 1u, u_input.d))), abs(vec4<u32>(72818u, var_3, var_0.x, reverseBits(1u))) >> (firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(41115u, var_0.x), ~u_input.d, var_0.x, var_3)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1000f)))), -1145f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(353f, _wgslsmith_f_op_f32(-856f * _wgslsmith_f_op_f32(f32(-1f) * -209f)))), min(~vec4<u32>(_wgslsmith_add_u32(29251u, 0u), 87026u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(4294967295u, 0u))), ~select(vec4<u32>(4294967295u, u_input.d, var_0.x, 4294967295u), ~vec4<u32>(1605u, 24526u, u_input.d, 24911u), all(vec2<bool>(false, true)))));
}

