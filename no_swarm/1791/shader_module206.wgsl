struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: vec3<f32>) -> u32 {
    global0 = vec4<bool>(all(!vec2<bool>(true, true && global0.x)), true, (_wgslsmith_mod_u32(0u, u_input.d.x) ^ ~40278u) <= arg_1.x, arg_3.x >= -1938f);
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec4_u32(~abs(arg_1), arg_1));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(max(arg_3.yx, arg_3.yz)), select(-(firstLeadingBit(vec4<i32>(41854i, u_input.a, -2147483647i, u_input.a)) | _wgslsmith_div_vec4_i32(arg_2, vec4<i32>(u_input.b.x, 1i, -1i, 15587i))), abs(~vec4<i32>(arg_2.x, 41844i, 2603i, u_input.c)) & vec4<i32>(reverseBits(1i), _wgslsmith_clamp_i32(-57223i, arg_2.x, -66806i), _wgslsmith_mult_i32(arg_2.x, -1i), arg_2.x), vec4<bool>(all(vec4<bool>(false, arg_0.x, false, true)), true, true, false | arg_0.x)), -45599i, Struct_2(Struct_1(global0.yyx, _wgslsmith_sub_vec3_i32(select(vec3<i32>(12480i, arg_2.x, arg_2.x), vec3<i32>(-1i, u_input.c, arg_2.x), vec3<bool>(false, arg_0.x, arg_0.x)), select(vec3<i32>(arg_2.x, u_input.b.x, -1i), vec3<i32>(-5555i, u_input.b.x, 43520i), vec3<bool>(global0.x, true, false))), -_wgslsmith_mod_vec4_i32(arg_2, arg_2), vec2<u32>(_wgslsmith_div_u32(u_input.d.x, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 72385u), arg_1.xw)), !select(vec2<bool>(true, false), global0.zy, global0.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -840f), -31177i >= u_input.c)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1195f, -1435f)), _wgslsmith_f_op_f32(min(arg_3.x, arg_3.x))))), 1285f, 255f));
    var var_2 = u_input.c;
    let var_3 = Struct_1(var_1.d.a.a, vec3<i32>(select(countOneBits(2147483647i >> (var_1.d.a.d.x % 32u)), arg_2.x, false), _wgslsmith_dot_vec3_i32(u_input.b.wwz, arg_2.yxx), _wgslsmith_sub_i32(var_1.b.x, 3084i)), var_1.d.a.c, vec2<u32>(~(~1u) ^ u_input.d.x, 4294967295u), select(arg_0, select(arg_0, global0.xz, !(var_1.d.a.d.x != u_input.e)), vec2<bool>(!select(true, true, false), global0.x)));
    return 34722u;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(306f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1612f) - _wgslsmith_f_op_f32(369f * -200f)))), vec4<i32>(u_input.c, ~(~(-10867i)), -1i, _wgslsmith_clamp_i32(i32(-1i) * -1i, u_input.a, ~u_input.c)) >> (select(vec4<u32>(_wgslsmith_add_u32(u_input.e, 47333u), u_input.e, u_input.d.x, func_3(global0.yw, vec4<u32>(4294967295u, u_input.e, u_input.e, u_input.e), u_input.b, vec3<f32>(171f, 875f, -149f))), vec4<u32>(_wgslsmith_mult_u32(u_input.d.x, 91818u), ~u_input.d.x, select(u_input.d.x, u_input.d.x, false), abs(94313u)), select(select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(true, true, false, true), false), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(false, global0.x, global0.x, true)), all(vec2<bool>(global0.x, true)))) % vec4<u32>(32u)), u_input.c, Struct_2(Struct_1(!global0.xwy, _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b.xyx, vec3<i32>(u_input.b.x, 1i, -7542i)), ~vec3<i32>(u_input.c, u_input.b.x, -17385i), u_input.b.ywy), -vec4<i32>(u_input.a, 33620i, -67087i, -16430i), vec2<u32>(reverseBits(u_input.e), min(u_input.e, u_input.d.x)), global0.zx)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(496f, _wgslsmith_f_op_f32(max(546f, -171f)), _wgslsmith_f_op_f32(1000f * -1179f)), vec3<f32>(_wgslsmith_f_op_f32(1081f * -1427f), _wgslsmith_f_op_f32(min(1000f, 1101f)), _wgslsmith_div_f32(-722f, 930f)), !vec3<bool>(true, global0.x, global0.x))))));
    var var_1 = Struct_1(vec3<bool>(global0.x, !(!global0.x) | true, false), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -1i, ~var_0.c), min(vec3<i32>(var_0.b.x, -var_0.b.x, u_input.a >> (u_input.e % 32u)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 1i, 2147483647i), -var_0.b.wzw))), var_0.b & min(countOneBits(-vec4<i32>(var_0.c, 1690i, 2147483647i, u_input.b.x)), vec4<i32>(u_input.a | u_input.a, u_input.c, _wgslsmith_mult_i32(u_input.c, -611i), -18619i)), vec2<u32>(~1u, _wgslsmith_sub_u32(~(~6719u), countOneBits(1u))), select(var_0.d.a.a.zz, vec2<bool>(!any(global0.yy), global0.x), var_0.d.a.a.x && true));
    let var_2 = select(var_0.d.a.a, vec3<bool>(all(select(select(var_1.a.yy, var_1.e, var_0.d.a.a.x), var_0.d.a.e, true)), false, any(!vec3<bool>(false, false, var_1.e.x))), var_1.a);
    let var_3 = _wgslsmith_sub_i32(-(~(-49040i >> (abs(var_0.d.a.d.x) % 32u))), _wgslsmith_dot_vec3_i32(-(vec3<i32>(var_1.b.x, 1i, u_input.a) | u_input.b.xyz) << (vec3<u32>(4128u, 157u << (1u % 32u), _wgslsmith_clamp_u32(var_0.d.a.d.x, 0u, u_input.e)) % vec3<u32>(32u)), vec3<i32>(~reverseBits(var_1.b.x), ~29729i, 33020i)));
    let var_4 = var_0.d.a;
    return var_0.d;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> bool {
    global0 = select(!vec4<bool>(any(vec3<bool>(true, true, arg_2.a.e.x)), all(vec4<bool>(arg_2.a.e.x, false, false, true)), true, !(!global0.x)), !vec4<bool>(true, true, arg_0.a.a.x, arg_0.a.a.x), any(vec4<bool>(select(global0.x, true, false), !select(false, arg_2.a.e.x, arg_2.a.e.x), false && all(vec3<bool>(false, true, true)), all(arg_2.a.a))));
    global0 = !vec4<bool>(arg_2.a.b.x > ~select(2147483647i, arg_0.a.b.x, global0.x), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.b.x, arg_0.a.b.x), u_input.b.yy)) > _wgslsmith_sub_i32(~u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.b.x, u_input.c, arg_0.a.c.x, 59462i), u_input.b)), arg_2.a.a.x, global0.x);
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(arg_1 + 368f), -695f)))), arg_0.a.c, ~(-_wgslsmith_dot_vec2_i32(arg_2.a.b.xx, arg_0.a.c.zy)) << (76643u % 32u), Struct_2(Struct_1(!vec3<bool>(true, arg_2.a.a.x, arg_0.a.a.x), _wgslsmith_add_vec3_i32(arg_2.a.c.wzy ^ vec3<i32>(-2147483647i, arg_0.a.b.x, -2746i), _wgslsmith_clamp_vec3_i32(arg_2.a.c.zxw, arg_0.a.c.wyy, vec3<i32>(1i, -8581i, 16364i))), vec4<i32>(0i, -38980i, firstLeadingBit(1i), func_2().a.c.x), ~vec2<u32>(arg_0.a.d.x, arg_0.a.d.x), !(!vec2<bool>(false, arg_0.a.e.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(335f)), _wgslsmith_f_op_f32(-797f * arg_1), _wgslsmith_f_op_f32(-arg_1)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 2350f, arg_1)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, -1296f, arg_1)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)))));
    let var_1 = reverseBits(arg_2.a.b);
    let var_2 = ~var_0.d.a.d.x;
    return !(arg_2.a.b.x >= 0i);
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = vec4<bool>(58772u >= u_input.d.x, func_4(Struct_2(Struct_1(!arg_0.a, vec3<i32>(u_input.c, arg_0.b.x, 1i) << (vec3<u32>(1u, 0u, u_input.e) % vec3<u32>(32u)), ~vec4<i32>(42654i, 10192i, -1i, 1i), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.d.x, 38464u), arg_0.d, u_input.d), vec2<bool>(true, false))), 147f, func_2()), select(true, false, global0.x), true);
    let var_0 = vec4<u32>(1u, ~(~0u), _wgslsmith_mod_u32(19884u, ~1u), ~(arg_0.d.x << (u_input.d.x % 32u)));
    global0 = !(!select(select(vec4<bool>(true, false, arg_0.e.x, false), select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(false, arg_0.e.x, global0.x, global0.x), arg_0.a.x), vec4<bool>(global0.x, false, false, true)), vec4<bool>(global0.x, select(arg_0.e.x, true, false), global0.x, false), !vec4<bool>(global0.x, true, global0.x, false)));
    var var_1 = firstTrailingBit(_wgslsmith_mod_i32(-u_input.b.x, 1i)) >= arg_0.c.x;
    global0 = vec4<bool>((func_2().a.d.x ^ _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.d.x, 7995u, 0u, u_input.e), vec4<u32>(arg_0.d.x, var_0.x, u_input.e, u_input.e)), vec4<u32>(var_0.x, u_input.e, 1u, 11233u))) != var_0.x, !any(vec2<bool>(global0.x, arg_0.e.x)) & any(global0.xww), false, select(false, any(select(select(vec4<bool>(arg_0.a.x, global0.x, global0.x, true), vec4<bool>(arg_0.a.x, true, global0.x, global0.x), vec4<bool>(arg_0.a.x, false, arg_0.e.x, true)), vec4<bool>(true, true, true, true), true)), func_2().a.a.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -402f) + _wgslsmith_f_op_f32(f32(-1f) * -1204f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-354f, 581f))))) * _wgslsmith_f_op_f32(floor(780f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true | !(-425f != _wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(false, global0.x, global0.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.a), u_input.b, u_input.d, vec2<bool>(global0.x, global0.x))))));
    global0 = select(!vec4<bool>(false, any(!vec3<bool>(var_0.x, true, global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1125f) != _wgslsmith_f_op_f32(func_1(Struct_1(global0.wxy, u_input.b.yzy, u_input.b, vec2<u32>(u_input.e, 1u), global0.zw))), false), select(select(!vec4<bool>(true, true, false, global0.x), vec4<bool>(func_4(Struct_2(Struct_1(vec3<bool>(var_0.x, global0.x, var_0.x), u_input.b.zzw, vec4<i32>(u_input.b.x, 12534i, u_input.a, -11196i), vec2<u32>(8481u, 4294967295u), global0.xy)), 1606f, Struct_2(Struct_1(vec3<bool>(var_0.x, var_0.x, global0.x), u_input.b.wyw, vec4<i32>(-1i, 1i, u_input.a, u_input.c), vec2<u32>(u_input.e, 0u), vec2<bool>(true, true)))), global0.x, any(vec2<bool>(false, true)), global0.x), vec4<bool>(true, func_2().a.a.x, true, var_0.x | true)), vec4<bool>(true, select(true, global0.x, true), any(vec2<bool>(global0.x, false)), any(vec4<bool>(var_0.x, false, true, global0.x))), global0.x), false);
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(476f, -1000f, global0.x))))), _wgslsmith_f_op_f32(-835f - 339f)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(5856i, u_input.c) >> (vec2<u32>(39650u, u_input.e) % vec2<u32>(32u))), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-18045i, u_input.b.x, 1i, u_input.a) & vec4<i32>(-1i, u_input.c, u_input.c, u_input.a)), -23249i, 2147483647i), u_input.b), -1i, Struct_2(func_2().a), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-671f, _wgslsmith_f_op_f32(step(883f, 595f)))), -208f), _wgslsmith_f_op_f32(f32(-1f) * -323f), -733f));
    global0 = select(select(select(vec4<bool>(any(vec4<bool>(global0.x, var_0.x, false, var_0.x)), var_1.b.x > u_input.b.x, func_4(var_1.d, var_1.e.x, Struct_2(var_1.d.a)), true), !vec4<bool>(false, var_1.d.a.e.x, true, false), vec4<bool>(all(vec3<bool>(false, false, var_1.d.a.e.x)), var_1.d.a.e.x || false, !global0.x, any(global0.zxy))), vec4<bool>(1u <= _wgslsmith_mult_u32(u_input.d.x, var_1.d.a.d.x), !global0.x, false, !any(vec2<bool>(false, true))), true), vec4<bool>(any(select(!vec4<bool>(false, var_1.d.a.a.x, false, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, var_1.d.a.e.x))), true, false, var_1.d.a.e.x), !(!var_1.d.a.e.x));
    let var_2 = var_1.d.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~9669i) >> (~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.e, 43327u, 1u), vec4<u32>(6906u, 72724u, var_2.d.x, 45362u)) | ~0u) % 32u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.d.a.d.x, 22617u, 57679u, ~(u_input.e >> (18905u % 32u))), min((vec4<u32>(var_1.d.a.d.x, var_2.d.x, var_1.d.a.d.x, var_1.d.a.d.x) | vec4<u32>(var_1.d.a.d.x, var_1.d.a.d.x, var_2.d.x, 4294967295u)) >> (vec4<u32>(0u, 0u, var_2.d.x, 27371u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 37299u, 73425u, var_1.d.a.d.x), ~vec4<u32>(4294967295u, u_input.e, 4376u, var_1.d.a.d.x))), abs(min(vec4<u32>(16677u, 0u, var_2.d.x, var_1.d.a.d.x), ~vec4<u32>(1u, var_2.d.x, var_2.d.x, 4294967295u)))));
}

