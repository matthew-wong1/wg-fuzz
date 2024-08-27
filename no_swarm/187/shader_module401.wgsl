struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(31547u, 10688u, 4294967295u, 85504u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: vec4<i32>) -> u32 {
    let var_0 = Struct_2(select(vec4<bool>(any(select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(true, arg_2, true, true), vec4<bool>(arg_1.x, arg_1.x, false, true))), all(arg_1), true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_2, arg_1.x, true), !arg_1.x), vec4<bool>(true, arg_2, true, global0.x > 103726u), vec4<bool>(arg_2, arg_2, arg_1.x, arg_2)), arg_1.x), select(vec3<bool>(_wgslsmith_mod_i32(u_input.a.x, -2147483647i) != countOneBits(-22396i), true, !any(vec4<bool>(false, arg_1.x, false, false))), vec3<bool>(arg_2, true, false), any(!vec4<bool>(true, true, arg_1.x, false))), u_input.a.x, vec2<i32>(u_input.a.x, ~2147483647i));
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, 1001f, arg_0.a.x, arg_0.a.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_0.a.x, arg_0.a.x, 862f) + vec4<f32>(-582f, arg_0.e, arg_0.a.x, -1000f)))), arg_0.a), ~vec3<u32>(~arg_0.b.x, ~21640u, max(~global0.x, max(4294967295u, global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(850f - -287f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c, _wgslsmith_f_op_f32(-arg_0.e))))), _wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_0.d, arg_0.b.x, global0.x, 25287u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 0u, 0u, 4294967295u), vec4<u32>(30778u, arg_0.d, 4294967295u, global0.x), vec4<u32>(1u, arg_0.b.x, arg_0.d, 20610u))), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_0.b.x, arg_0.b.x, arg_0.d), vec4<u32>(arg_0.b.x, 6001u, 18124u, 1u))) | global0.x, arg_0.e);
    var var_2 = _wgslsmith_mult_vec3_u32(arg_0.b, ~global0.xzx);
    let var_3 = (vec3<i32>(-1i) * -u_input.b.zww) ^ arg_3.zyz;
    global0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(global0.x, var_1.d, 1u), 24842u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1.d, var_2.x), ~10841u), ~arg_0.b.x), vec4<u32>(_wgslsmith_div_u32(0u, global0.x), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d, arg_0.d, 0u), arg_0.b)), _wgslsmith_clamp_u32(~global0.x, 10065u, abs(global0.x)), global0.x));
    return arg_0.d;
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-666f, -583f, 288f, 550f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(340f, 737f, -2212f, 216f)))))), vec3<u32>(min(global0.x | 1u, 0u), func_3(Struct_1(vec4<f32>(110f, -226f, -2013f, -1108f), global0.zzx, -1000f, global0.x, 645f), !vec2<bool>(true, arg_0), all(vec2<bool>(arg_0, true)), u_input.b) >> (global0.x % 32u), 17697u), 405f, global0.x, _wgslsmith_f_op_f32(ceil(-113f)));
    let var_1 = Struct_3(var_0, var_0.a.zzx, vec2<i32>(u_input.a.x, _wgslsmith_div_i32(-2147483647i, _wgslsmith_mult_i32(~27561i, 25429i))), Struct_2(select(select(select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(true, true, arg_0, arg_0)), !vec4<bool>(arg_0, arg_0, false, true), u_input.a.x < -46009i), select(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(false, arg_0, arg_0, false), arg_0), !vec4<bool>(arg_0, false, true, false), vec4<bool>(false, arg_0, arg_0, true)), !select(arg_0, true, true)), vec3<bool>(arg_0, all(!vec3<bool>(false, arg_0, false)), !arg_0), -u_input.b.x, u_input.a.xx));
    var var_2 = 30065u;
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(-_wgslsmith_mod_i32(-2147483647i, -u_input.a.x), firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))) & var_1.d.c), ~vec2<i32>(reverseBits(u_input.b.x), -firstTrailingBit(var_1.c.x)));
    var var_4 = var_1.a.a;
    return ~7568u;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    global0 = vec4<u32>(1u, global0.x & (func_2(true) | _wgslsmith_mult_u32(1u, 4294967295u)), global0.x, global0.x);
    global0 = vec4<u32>(4294967295u & ~(~(~global0.x)), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.x), vec2<u32>(global0.x, 86846u) << (vec2<u32>(global0.x, 1u) % vec2<u32>(32u))), _wgslsmith_dot_vec2_u32(~global0.zx, global0.xw << (global0.ww % vec2<u32>(32u)))), min(1u, abs(global0.x) & 0u) >> (global0.x % 32u), ~(~_wgslsmith_clamp_u32(global0.x, 0u, 1u << (global0.x % 32u))));
    var var_0 = _wgslsmith_mod_vec2_i32(arg_0 & vec2<i32>(_wgslsmith_mult_i32(arg_0.x, firstLeadingBit(-6019i)), _wgslsmith_mod_i32(-7496i, -3935i)), ~_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.b.x, u_input.a.x), vec2<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -2147483647i, arg_0.x, 2514i))), ~(~u_input.a.yz)));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(669f, 2409f, 1359f, 2198f))), global0.xyw, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1157f * -719f) * _wgslsmith_div_f32(-558f, 1584f)))), 25896u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1633f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-173f, -253f, 1014f) + vec3<f32>(-277f, -1040f, -1272f))))), abs(vec2<i32>(u_input.a.x, ~u_input.a.x)), Struct_2(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false)), vec4<bool>(select(true, false, false), true, true, true), vec4<bool>(global0.x >= global0.x, true, true, select(false, false, false))), vec3<bool>(false, any(vec4<bool>(true, true, true, true)), true), var_0.x, vec2<i32>(~arg_0.x, arg_0.x >> (global0.x % 32u)) ^ max(vec2<i32>(1i, -486i), vec2<i32>(2147483647i, var_0.x) | u_input.a.yx)));
    var_0 = vec2<i32>(u_input.b.x, -1i);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = func_1(~u_input.b.zy << (~(select(vec2<u32>(global0.x, 4294967295u), global0.xz, true) << (countOneBits(vec2<u32>(global0.x, global0.x)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global0 = ~firstLeadingBit(vec4<u32>(~abs(2690u), global0.x, ~65578u >> (global0.x % 32u), 1u));
    global0 = _wgslsmith_mult_vec4_u32(abs(vec4<u32>(82400u, func_2(-10842i < u_input.b.x), ~1u, 8558u)), vec4<u32>(global0.x, 14185u, 1u, select(_wgslsmith_dot_vec3_u32(global0.yyw | global0.yzy, vec3<u32>(global0.x, 1u, global0.x)), ~min(global0.x, 45020u), global0.x > global0.x)));
    var var_2 = Struct_2(!(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)))), !vec3<bool>(all(vec4<bool>(true, true, true, true)), !all(vec2<bool>(true, false)), all(vec2<bool>(false, true))), firstTrailingBit(u_input.b.x), -u_input.b.yw);
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-397f, -977f, 500f, 1573f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-769f, -532f, -138f, -265f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(473f, -1341f, -1268f, 571f)) - vec4<f32>(1645f, 1000f, 1609f, -1379f)))), vec3<u32>(global0.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(global0.x, global0.x), global0.x, ~10722u), global0.x), -1576f, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 9211u, global0.x, global0.x), vec4<u32>(global0.x, global0.x, 0u, global0.x)), abs(firstLeadingBit(global0.x))), -648f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -365f), _wgslsmith_f_op_f32(876f + 299f)))), _wgslsmith_div_vec2_i32(var_2.d, abs(~var_2.d)), Struct_2(vec4<bool>(all(var_2.a), max(var_2.c, var_2.d.x) == _wgslsmith_add_i32(var_2.c, 2147483647i), select(any(var_2.a), select(var_2.a.x, false, false), any(var_2.a)), true), vec3<bool>(any(var_2.a), !all(var_2.b.zz), (2147483647i & var_2.c) == u_input.b.x), firstLeadingBit(48522i), var_2.d));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, 1788f, -379f, -280f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, -224f, var_3.b.x, 186f)))));
    let var_5 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, countOneBits(643u)), vec2<u32>(global0.x ^ 41382u, global0.x)), var_3.a.d) ^ ~_wgslsmith_clamp_vec2_u32(select(var_3.a.b.yy, _wgslsmith_clamp_vec2_u32(var_3.a.b.zx, vec2<u32>(4294967295u, 4294967295u), global0.xz), var_2.b.yz), vec2<u32>(func_1(vec2<i32>(-5682i, -12746i)), ~4294967295u), vec2<u32>(4294967295u, func_2(var_2.b.x)));
    var_0 = ~var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(~((u_input.b.x & 10182i) ^ select(var_2.d.x, countOneBits(var_2.d.x), !var_3.d.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(203f, var_4.x, _wgslsmith_f_op_f32(round(465f)), var_3.a.a.x)), _wgslsmith_div_vec4_u32(~(~(vec4<u32>(4294967295u, 0u, var_3.a.b.x, var_3.a.d) >> (vec4<u32>(15706u, 969u, 18506u, 35858u) % vec4<u32>(32u)))), ~(~(~vec4<u32>(var_3.a.d, 0u, 1u, 0u)))));
}

