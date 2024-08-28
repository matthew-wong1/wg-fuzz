struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: array<vec4<u32>, 31>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: vec3<u32>) -> vec4<u32> {
    var var_0 = countOneBits(u_input.a);
    global0 = array<Struct_2, 14>();
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(step(arg_0.yx, arg_0.xz));
    var var_3 = Struct_4(Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x * 422f))))), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.a, -2147483647i), vec3<i32>(u_input.a, u_input.a, -1i) & vec3<i32>(u_input.a, -61030i, 0i), -vec3<i32>(14086i, u_input.a, -4418i)), _wgslsmith_mod_vec3_i32(~vec3<i32>(1i, -4244i, -26290i), vec3<i32>(u_input.a, 35589i, -1i))), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(35370u, arg_2.x, 1u, 1u), vec4<u32>(95351u, arg_1.a.x, 0u, arg_2.x)), vec4<u32>(1u, ~1u, arg_1.a.x, arg_2.x), min(vec3<i32>(u_input.a, -3696i, u_input.a) ^ vec3<i32>(15214i, -1i, u_input.a), max(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(33231i, -2887i, -1i))), true, var_2.x), _wgslsmith_sub_i32(~abs(-13240i), ~u_input.a & u_input.a)), !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(486f, var_2.x)))) <= _wgslsmith_f_op_f32(max(-2378f, _wgslsmith_f_op_f32(arg_0.x * -529f)))));
    return ~(var_3.a.c.a >> (~vec4<u32>(1u << (arg_1.a.x % 32u), ~var_3.a.c.a.x, firstLeadingBit(102745u), arg_1.a.x) % vec4<u32>(32u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> f32 {
    global1 = array<vec4<u32>, 31>();
    let var_0 = Struct_2(~4294967295u, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, 997f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, -608f))), arg_0.x))), vec2<f32>(arg_1, arg_1))), all(vec2<bool>(any(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 0i)) != u_input.a)), Struct_1(global1[_wgslsmith_index_u32(~1u, 31u)], func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 772f, -593f)) + vec3<f32>(arg_1, arg_1, arg_1)), Struct_5(~vec2<u32>(80237u, 52898u)), _wgslsmith_div_vec3_u32(~vec3<u32>(9241u, 37718u, 1669u), countOneBits(vec3<u32>(13505u, 14020u, 1u)))), abs(_wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, -6037i, u_input.a), vec3<i32>(u_input.a, u_input.a, 17490i))), !arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 2569f) + _wgslsmith_f_op_f32(-arg_1))))));
    global1 = array<vec4<u32>, 31>();
    var var_1 = u_input.a;
    let var_2 = Struct_5(min(~vec2<u32>(var_0.e.a.x, var_0.a), _wgslsmith_sub_vec2_u32(vec2<u32>(~1u, var_0.a << (var_0.e.b.x % 32u)), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-992f, -1617f, var_0.e.e) - vec3<f32>(913f, var_0.b, var_0.e.e)), Struct_5(vec2<u32>(var_0.e.a.x, 6092u)), abs(var_0.e.a.ywy)).wz)));
    return arg_1;
}

fn func_1() -> vec2<f32> {
    let var_0 = ~12177u;
    var var_1 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(any(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), true, true), -1517f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1364f + 1255f) - _wgslsmith_f_op_f32(-1230f + -295f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-161f, -1610f))))));
    let var_3 = _wgslsmith_sub_u32(50181u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(75270u, var_0, 66284u) & vec3<u32>(var_0, var_0, var_0), ~vec3<u32>(var_0, 1u, 0u)) ^ vec3<u32>(var_0, reverseBits(0u), 24278u), _wgslsmith_add_vec3_u32(vec3<u32>(~var_0, ~13961u, var_0), vec3<u32>(~var_0, _wgslsmith_div_u32(var_0, var_0), var_0))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(select(vec3<bool>(true, true, var_1.x), vec3<bool>(true, true, true), vec3<bool>(var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -193f))) * _wgslsmith_f_op_f32(-964f - -1010f)) * _wgslsmith_f_op_f32(-774f - 881f)) - _wgslsmith_f_op_f32(-702f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1758f)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 402f) - vec2<f32>(-2313f, 286f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-317f, _wgslsmith_f_op_f32(select(-1125f, 1076f, false))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -845f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(617f, 468f), vec2<f32>(-224f, 1000f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(vec2<f32>(124f, 792f) * vec2<f32>(-737f, 389f)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), all(vec2<bool>(true, true))))), any(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), true)), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 31u)], _wgslsmith_clamp_vec4_u32(vec4<u32>(8058u, 4294967295u, 16937u, 0u), ~vec4<u32>(1u, 0u, 37657u, 0u), global1[_wgslsmith_index_u32(1u, 31u)] & global1[_wgslsmith_index_u32(90168u, 31u)]) & vec4<u32>(~16868u, reverseBits(0u), 0u, _wgslsmith_mult_u32(0u, 4294967295u)), vec3<i32>(u_input.a, firstTrailingBit(~u_input.a), _wgslsmith_sub_i32(15114i, ~0i)), all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))), -585f));
    let var_1 = ~70647u;
    let var_2 = var_0.c.x;
    global0 = array<Struct_2, 14>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -278f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(246f * 1015f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e.e, var_0.e.e))))));
    var var_4 = vec2<bool>(!((u_input.a << (_wgslsmith_div_u32(18752u, 1u) % 32u)) != _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.e.c.x, -1i, 34171i, var_0.e.c.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.e.c.x, var_0.e.c.x, var_0.e.c.x, u_input.a), vec4<i32>(var_0.e.c.x, 1i, u_input.a, 34434i)))), all(vec3<bool>(!all(vec3<bool>(var_0.d, var_0.d, var_0.e.d)), all(select(vec3<bool>(var_0.e.d, var_0.d, true), vec3<bool>(false, var_0.e.d, var_0.d), vec3<bool>(var_0.d, var_0.d, true))), var_0.e.d)));
    var var_5 = Struct_2(_wgslsmith_add_u32(1u, ~func_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.e.e, var_3, -917f), vec3<f32>(var_0.c.x, var_3, var_3))), Struct_5(vec2<u32>(var_0.e.a.x, var_1)), vec3<u32>(20336u, 8663u, var_1)).x), var_3, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(265f, var_0.e.e) + vec2<f32>(-1438f, 1000f)))))), true, Struct_1(vec4<u32>(~_wgslsmith_mult_u32(0u, 71850u), 48972u, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(399f, var_3, -612f)), Struct_5(vec2<u32>(431u, 4294967295u)), _wgslsmith_add_vec3_u32(var_0.e.b.wxx, vec3<u32>(var_1, var_1, var_1))).x, ~1u), ~vec4<u32>(var_0.e.a.x << (38715u % 32u), 1u, ~0u, firstLeadingBit(var_1)), vec3<i32>(~(~0i), _wgslsmith_clamp_i32(1i, 2147483647i, _wgslsmith_clamp_i32(-1i, -2147483647i, 26772i)), 8513i), var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
    var var_6 = ~var_0.e.c.zz;
    global0 = array<Struct_2, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~_wgslsmith_mod_u32(4430u, 4294967295u)), min(var_0.a ^ 0u, 91764u) << (((var_0.a & var_5.a) << (var_5.e.a.x % 32u)) % 32u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-998f, -1000f, var_3), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_5.e.e, 1172f, 286f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, -1477f, -373f) * vec3<f32>(-308f, 387f, var_0.e.e)), _wgslsmith_div_vec3_f32(vec3<f32>(var_3, var_0.c.x, var_5.c.x), vec3<f32>(340f, 3561f, -1827f)), select(vec3<bool>(var_4.x, var_0.d, var_5.d), vec3<bool>(false, var_0.d, var_5.d), true)))))), func_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * -637f)), var_0.e.e, -1793f), Struct_5(_wgslsmith_sub_vec2_u32(max(var_5.e.a.wx, vec2<u32>(45735u, var_0.e.b.x)), max(var_5.e.a.xw, vec2<u32>(1u, var_1)))), vec3<u32>(~var_5.a, var_5.e.a.x ^ ~82836u, var_0.a << (75785u % 32u))), var_0.e.c.xz, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1031f, var_3, 508f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.e.e, var_0.c.x)), _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(var_0.c.x + -1207f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_5.c.x) + _wgslsmith_f_op_f32(-var_3))), !select(select(vec3<bool>(var_0.d, var_5.e.d, true), vec3<bool>(var_0.e.d, var_5.e.d, true), vec3<bool>(true, true, var_0.e.d)), select(vec3<bool>(var_0.e.d, var_4.x, var_0.e.d), vec3<bool>(true, var_5.e.d, false), var_5.d), !vec3<bool>(false, var_0.d, true)))));
}

