struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: u32 = 31675u;

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    var var_0 = Struct_1(select(~_wgslsmith_add_vec2_u32(firstLeadingBit(arg_2.zx), arg_2.ww), vec2<u32>(arg_2.x, 14063u), global2.zz), vec3<f32>(497f, arg_1, 192f), _wgslsmith_sub_i32(u_input.a, arg_0), select(vec3<bool>(true, any(vec4<bool>(false, false, global0.x, false)), true), !vec3<bool>(global0.x & true, global2.x != true, true), true), ~firstLeadingBit(_wgslsmith_add_vec3_u32(arg_2.yyw, select(arg_2.zxz, arg_2.yyw, false))));
    var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(82876u, arg_2.x) & vec2<u32>(83219u, 0u)), vec2<u32>(arg_2.x & 1u, ~_wgslsmith_dot_vec2_u32(arg_2.xz, arg_2.yw)), arg_2.xz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_1, 594f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-717f, var_0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.x, 873f) + _wgslsmith_f_op_f32(abs(2238f))))), ~(-53145i), var_0.d, firstTrailingBit(reverseBits(vec3<u32>(arg_2.x, 4294967295u, arg_2.x)) | arg_2.wzx));
    var_0 = Struct_1(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.x, 49415u, 1u, var_0.a.x), vec4<u32>(1u, 1u, arg_2.x, 1u) & vec4<u32>(0u, 1u, 3812u, 11877u)), select(52812u, abs(arg_2.x), global2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.b))), _wgslsmith_f_op_vec3_f32(ceil(var_0.b))))), 1755i >> ((46055u | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 56729u), vec3<u32>(var_0.e.x, 19369u, 4294967295u))) % 32u), !vec3<bool>(!any(vec4<bool>(true, global2.x, true, global2.x)), !var_0.d.x, global2.x && !var_0.d.x), ~vec3<u32>(arg_2.x, 9579u, var_0.a.x));
    let var_1 = Struct_1(vec2<u32>(41853u | var_0.a.x, var_0.a.x), vec3<f32>(arg_1, 1303f, -1841f), arg_0, select(select(!vec3<bool>(var_0.d.x, false, true), !global0.wxz, var_0.d), vec3<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(u_input.a, u_input.a, arg_0)) != _wgslsmith_mult_i32(u_input.a, u_input.a), var_0.d.x, any(!global0.zxx)), vec3<bool>(any(!global0.xyx), !any(global0.xx), select(global2.x, global2.x && global0.x, any(global0.yxw)))), _wgslsmith_mult_vec3_u32(arg_2.wxz, var_0.e) >> (~arg_2.yyw % vec3<u32>(32u)));
    global1 = 4294967295u & arg_2.x;
    return _wgslsmith_dot_vec2_u32(~var_0.e.yy, vec2<u32>(63983u, arg_2.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>) -> bool {
    let var_0 = Struct_2(~u_input.a, Struct_1(abs(vec2<u32>(0u, _wgslsmith_mult_u32(70490u, arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.wyz, arg_1.zwx))), u_input.a, global0.wyy, arg_0.xzw), !(!vec4<bool>(arg_0.x > arg_0.x, true, true, true)));
    var var_1 = Struct_2(max(min(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.c, 11578i, u_input.a, -28173i) ^ vec4<i32>(var_0.b.c, 2147483647i, u_input.a, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(-2147483647i, u_input.a, var_0.b.c, u_input.a))), u_input.a), Struct_1(vec2<u32>(~4294967295u, firstTrailingBit(~1u)), arg_1.yyw, -2147483647i, select(global0.yzy, !var_0.b.d, var_0.b.d), ~select(_wgslsmith_sub_vec3_u32(var_0.b.e, vec3<u32>(var_0.b.a.x, arg_0.x, 580u)), vec3<u32>(var_0.b.e.x, var_0.b.e.x, var_0.b.e.x), global2.x)), vec4<bool>(true, var_0.b.d.x, var_0.c.x, !(!all(vec4<bool>(false, true, global0.x, global2.x)))));
    let var_2 = global2.xz;
    var var_3 = countOneBits(select(arg_0, ~arg_0 ^ vec4<u32>(40673u, ~4294967295u, _wgslsmith_mult_u32(var_1.b.e.x, 1u), 61078u), !(!any(global0.zw))));
    var var_4 = Struct_2(24422i, var_1.b, !(!(!(!var_1.c))));
    return !global0.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global2 = !select(vec3<bool>(!global0.x, global2.x, all(!global2.zx)), !vec3<bool>(!global2.x, true, false), vec3<bool>(global0.x, global2.x, false));
    global0 = vec4<bool>(select(!(global2.x || global0.x), global0.x, true) & func_4(vec4<u32>(func_3(1i, 165f, vec4<u32>(arg_0, arg_0, 50964u, 1u)), abs(arg_0), _wgslsmith_mod_u32(arg_0, arg_0), ~0u), vec4<f32>(-517f, 2187f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(-643f)))), select(~firstLeadingBit(arg_0), _wgslsmith_mult_u32(firstLeadingBit(7311u), firstTrailingBit(10510u)), global2.x) == arg_0, !any(global0.wwy), any(vec3<bool>(global0.x, u_input.a < (u_input.a & -1i), true)));
    global1 = 38484u;
    var var_0 = Struct_2(u_input.a, Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(~arg_0, 10820u), select(~vec2<u32>(4294967295u, arg_0), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 63798u), vec2<u32>(9650u, arg_0)), true), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, arg_0) ^ vec2<u32>(arg_0, 4294967295u), vec2<u32>(4294967295u, 140509u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-429f, 489f, 648f)), vec3<f32>(_wgslsmith_div_f32(947f, 581f), _wgslsmith_f_op_f32(ceil(-1178f)), _wgslsmith_f_op_f32(1492f + 271f)), true)), u_input.a, !vec3<bool>(any(vec4<bool>(false, global0.x, global0.x, false)), arg_0 <= 4294967295u, global2.x), _wgslsmith_div_vec3_u32(firstLeadingBit(~vec3<u32>(arg_0, 59277u, arg_0)), abs(vec3<u32>(1u, 32241u, arg_0)))), select(vec4<bool>(false, any(vec4<bool>(false, global0.x, global0.x, false)), func_4(vec4<u32>(arg_0, arg_0, arg_0, 39624u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-234f, -385f, 228f, 515f)))), !(!global2.x)), select(vec4<bool>(global0.x, global2.x, global2.x | true, global0.x), !select(vec4<bool>(global0.x, false, global2.x, false), vec4<bool>(true, global0.x, global2.x, true), vec4<bool>(global0.x, global2.x, global2.x, global0.x)), !(!global2.x)), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(true, global0.x, false, global0.x)), vec4<bool>(global0.x, true, global2.x, global0.x), vec4<bool>(global2.x, false, global2.x, global0.x))));
    global1 = _wgslsmith_dot_vec3_u32(select(firstTrailingBit(var_0.b.e), reverseBits(~(~vec3<u32>(0u, 4294967295u, var_0.b.e.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.b.x - -135f))) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.b.x)))), ~var_0.b.e);
    return var_0.b;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, -u_input.a), firstLeadingBit(max(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(u_input.a, u_input.a)))));
    let var_1 = firstTrailingBit(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(47524u, 0u), vec2<u32>(0u, 0u)), vec2<u32>(1u, 1u)) ^ max(~select(28387u, 5813u, global2.x), abs(~4294967295u)));
    var var_2 = func_2(0u);
    var_2 = func_2(_wgslsmith_sub_u32(var_2.a.x, _wgslsmith_clamp_u32(var_2.e.x, var_1 & 7589u, _wgslsmith_add_u32(var_1, 0u)) << (_wgslsmith_mod_u32(58510u, var_1) % 32u)));
    let var_3 = Struct_2(-arg_0, Struct_1(_wgslsmith_mult_vec2_u32(var_2.a, var_2.a), var_2.b, reverseBits(u_input.a) >> (_wgslsmith_div_u32(abs(var_1), ~var_2.a.x) % 32u), vec3<bool>(any(vec3<bool>(false, global2.x, true)) || true, true & func_4(vec4<u32>(0u, var_1, 0u, var_1), vec4<f32>(var_2.b.x, var_2.b.x, 1099f, 1378f)), any(vec2<bool>(true, false)) || global2.x), countOneBits(select(_wgslsmith_mod_vec3_u32(vec3<u32>(9454u, var_2.a.x, var_1), var_2.e), min(var_2.e, var_2.e), any(vec4<bool>(var_2.d.x, global2.x, false, true))))), select(!vec4<bool>(func_4(vec4<u32>(var_2.e.x, var_2.a.x, var_1, 8497u), vec4<f32>(var_2.b.x, -1000f, var_2.b.x, var_2.b.x)), global2.x | global0.x, !global2.x, true), vec4<bool>(true, !all(vec3<bool>(true, var_2.d.x, true)), var_2.d.x, true == var_2.d.x), func_2(_wgslsmith_mod_u32(var_1 >> (var_2.a.x % 32u), _wgslsmith_mod_u32(var_2.e.x, 0u))).d.x));
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~0i, func_1(select(i32(-1i) * -2147483647i, u_input.a, global0.x)), !(!select(vec4<bool>(true, global2.x, global2.x, false), select(vec4<bool>(global0.x, false, global0.x, global2.x), vec4<bool>(true, global2.x, global0.x, global0.x), global0.x), !vec4<bool>(false, global0.x, global2.x, true))));
    global2 = func_2(var_0.b.e.x).d;
    let var_1 = var_0;
    global1 = 1u;
    var var_2 = _wgslsmith_mult_i32(~(-21565i), 4206i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.b.b.x * _wgslsmith_f_op_f32(var_0.b.b.x - -1253f))))), _wgslsmith_f_op_f32(ceil(var_0.b.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-993f, 868f, 1000f, var_0.b.b.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(746f, 295f, 2102f, var_1.b.b.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-475f, _wgslsmith_f_op_f32(floor(-1352f)), _wgslsmith_f_op_f32(-1149f * var_1.b.b.x), -1521f) * vec4<f32>(-1271f, _wgslsmith_f_op_f32(-196f * 198f), 413f, 1000f))), min(func_2(func_1(-var_1.a).a.x).a, (~var_0.b.e.zy | var_1.b.e.zx) & _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(48343u, 0u), var_1.b.a), ~var_1.b.a)), var_0.b.b.x);
}

