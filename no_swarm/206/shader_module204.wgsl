struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: Struct_1;

var<private> global2: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = !select(!vec4<bool>(any(vec4<bool>(false, true, true, true)), false, true, any(vec4<bool>(false, false, true, true))), vec4<bool>(true, select(true, true, all(vec2<bool>(true, true))), false, 0u < u_input.c.x), vec4<bool>(false, true || all(vec3<bool>(false, true, false)), true, true));
    let var_1 = arg_1.a;
    let var_2 = ~_wgslsmith_clamp_vec4_u32(select(~vec4<u32>(27786u, u_input.c.x, u_input.c.x, 4294967295u), ~vec4<u32>(u_input.e, u_input.c.x, u_input.c.x, 17971u), !vec4<bool>(var_0.x, var_0.x, var_0.x, true)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.e, 1u) << (vec4<u32>(u_input.c.x, 6757u, 4294967295u, u_input.c.x) % vec4<u32>(32u)), min(vec4<u32>(u_input.e, 14004u, 1u, u_input.e), vec4<u32>(u_input.b.x, 68994u, 10675u, 0u))), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b.x, u_input.e), vec4<u32>(11339u, u_input.c.x, 8288u, u_input.b.x)))) << (vec4<u32>(u_input.e, max(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 7838u, u_input.b.x, u_input.e), vec4<u32>(u_input.b.x, u_input.e, 96316u, 43641u)), _wgslsmith_mod_u32(u_input.e, u_input.c.x)), _wgslsmith_sub_u32(~u_input.c.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.c.x, 4294967295u), u_input.e)), firstTrailingBit(_wgslsmith_mult_u32(u_input.c.x, ~u_input.b.x))) % vec4<u32>(32u));
    let var_3 = ~vec2<u32>(~abs(_wgslsmith_sub_u32(var_2.x, 50817u)), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.b.x, var_2.x), firstTrailingBit(~1u)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.c.x)) * _wgslsmith_f_op_f32(step(arg_0.d.x, arg_0.c.x)))), -932f, _wgslsmith_f_op_f32(step(-407f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(min(-154f, 1818f))))))));
    return (~(~(-vec4<i32>(arg_0.b, global1.e.x, 1i, 1i))) << (max(vec4<u32>(var_3.x, var_3.x, var_3.x, select(24177u, 0u, true)), var_2) % vec4<u32>(32u))) & ((~vec4<i32>(u_input.d.x, 2147483647i, global1.e.x, arg_0.e.x) | vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(8056i, arg_1.e.x), vec2<i32>(arg_1.b, global1.e.x)), 2147483647i, global1.b, -21768i)) & (-(vec4<i32>(global1.b, 2147483647i, 9411i, -1i) | vec4<i32>(2147483647i, arg_1.b, arg_0.b, u_input.a.x)) | (-vec4<i32>(-10938i, -2147483647i, arg_0.b, 0i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(18352u, var_2.x, 28657u, 1u), var_2, var_2) % vec4<u32>(32u)))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-143f - -612f), ~firstTrailingBit(0i), vec3<f32>(global1.a, global1.a, _wgslsmith_f_op_f32(floor(global1.c.x))), global1.c, global1.e);
    var var_1 = Struct_1(520f, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(global1.e.x), 2147483647i, ~53600i, _wgslsmith_mult_i32(51408i, global1.e.x)) ^ func_3(Struct_1(1092f, -24633i, var_0.c, global1.d, vec2<i32>(arg_0.x, var_0.e.x)), Struct_1(global1.a, 51641i, vec3<f32>(global1.c.x, 740f, 271f), vec3<f32>(162f, var_0.d.x, -1232f), vec2<i32>(var_0.e.x, u_input.a.x))), arg_0), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(var_0.d, vec3<f32>(_wgslsmith_f_op_f32(global1.c.x - global1.d.x), _wgslsmith_f_op_f32(select(var_0.a, 175f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1263f)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-443f, 407f, var_0.c.x), vec3<f32>(var_0.a, -641f, 1000f))))))), vec2<i32>(~2147483647i, _wgslsmith_div_i32(~_wgslsmith_sub_i32(1i, u_input.d.x), _wgslsmith_clamp_i32(-60584i, u_input.a.x << (34313u % 32u), 32735i))));
    return Struct_1(1051f, var_1.e.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_1.c))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1505f, var_1.a, global1.c.x)))))), _wgslsmith_mult_vec2_i32(u_input.a, min(vec2<i32>(-3099i, var_1.e.x), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.e.x, 1i), var_1.e))));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> vec4<f32> {
    global1 = Struct_1(1014f, 28009i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-218f, _wgslsmith_f_op_f32(global1.d.x - 893f), _wgslsmith_f_op_f32(floor(294f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-412f, _wgslsmith_f_op_f32(-557f + -314f), _wgslsmith_f_op_f32(-358f * -604f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, global1.c.x, 391f))))), vec3<f32>(1409f, _wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1000f))))), 1060f), -global1.e);
    var var_0 = func_2(min(max(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(global1.e.x, -2147483647i, arg_2.e.x, 0i), vec4<i32>(u_input.d.x, -2147483647i, arg_2.e.x, u_input.a.x), true), -vec4<i32>(u_input.d.x, arg_2.e.x, global1.e.x, global1.b), countOneBits(vec4<i32>(global1.b, u_input.d.x, u_input.d.x, -2147483647i))), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, arg_2.e.x, 62445i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, -3918i, 20403i))), ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -13161i), global1.e), ~global1.e.x, u_input.a.x >> (90536u % 32u), ~(-1i))));
    global2 = array<vec2<bool>, 32>();
    var var_1 = u_input.b.x;
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(-min(_wgslsmith_mod_i32(global1.e.x, -2147483647i), -u_input.a.x), 12506i), vec2<i32>(-var_0.e.x, ~2101i));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1576f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-239f, -571f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * _wgslsmith_f_op_f32(max(var_0.d.x, 246f))), _wgslsmith_f_op_f32(func_2(vec4<i32>(-1i, 2147483647i, 26514i, 1i)).d.x - arg_2.c.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(func_2(vec4<i32>(global1.e.x, arg_2.b, 1i, -94223i)).a, _wgslsmith_f_op_f32(f32(-1f) * -177f), -629f, _wgslsmith_f_op_f32(min(-1339f, arg_2.c.x)))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1f), 969f, global1.d.x, func_2(vec4<i32>(2147483647i, 14752i, var_0.b, global1.e.x)).c.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 682f, -761f, -222f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1297f, var_0.c.x, -2262f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, arg_2.d.x, -775f, var_0.a)))), vec4<bool>(~u_input.e > 28762u, any(vec2<bool>(false, true)), true, true))));
}

fn func_1(arg_0: f32, arg_1: u32) -> vec4<bool> {
    let var_0 = ~vec2<u32>(u_input.b.x, 37243u);
    var var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(1224f - _wgslsmith_f_op_f32(f32(-1f) * -921f))) - _wgslsmith_div_f32(arg_0, 1f)), u_input.c.x | 0u, func_2(vec4<i32>(global1.b, u_input.d.x, u_input.d.x, reverseBits(global1.b)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 4294967295u, 0u, arg_1), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 26071u, u_input.e, u_input.e), vec4<u32>(0u, arg_1, arg_1, u_input.b.x))) % vec4<u32>(32u))), arg_1));
    let var_3 = !select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, true, false, false)) || (20334u < u_input.e), select(false, global1.d.x <= -1346f, any(vec4<bool>(true, false, false, true))), true), 1i >= u_input.a.x);
    global2 = array<vec2<bool>, 32>();
    return !select(select(select(vec4<bool>(false, var_3.x, var_3.x, true), vec4<bool>(false, var_3.x, true, var_3.x), var_3.x), vec4<bool>(true, true, true, true), all(select(var_3, var_3, var_3))), vec4<bool>(any(!global2[_wgslsmith_index_u32(u_input.b.x, 32u)]), true, any(!vec3<bool>(var_3.x, var_3.x, false)), var_3.x), select(!select(vec4<bool>(var_3.x, var_3.x, false, var_3.x), vec4<bool>(var_3.x, false, var_3.x, true), false), select(select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(true, false, var_3.x, true), false), vec4<bool>(true, var_3.x, var_3.x, var_3.x), true), var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 32>();
    let var_0 = func_1(1428f, ~21995u);
    var var_1 = false;
    global0 = array<vec2<bool>, 11>();
    var var_2 = func_2(min(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.a.x, 43599i), -vec4<i32>(u_input.a.x, -45211i, 17724i, 0i)), vec4<i32>(u_input.a.x, global1.b, -36000i, u_input.a.x)));
    let var_3 = func_2(countOneBits(-(~_wgslsmith_div_vec4_i32(vec4<i32>(-36132i, -2147483647i, var_2.e.x, global1.e.x), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, var_2.e.x)))));
    var var_4 = var_3;
    let var_5 = firstLeadingBit(_wgslsmith_mod_vec2_i32(u_input.d, vec2<i32>(~var_2.b, countOneBits(-5167i))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.e.x, var_3.e.x, var_5.x, var_5.x), -vec4<i32>(global1.b, var_2.e.x, var_3.e.x, var_5.x)), -vec4<i32>(var_5.x, var_5.x, var_2.b, 2147483647i)), select(vec4<i32>(14360i, -global1.e.x, _wgslsmith_mult_i32(24318i, var_5.x), ~(-37799i)), vec4<i32>(~var_2.b, var_3.e.x, var_2.e.x, countOneBits(2147483647i)), all(vec4<bool>(var_0.x, var_0.x, false, true)) & any(vec3<bool>(var_0.x, var_0.x, var_0.x))), !var_0), -62252i, global1.a, vec2<u32>(u_input.e, _wgslsmith_mod_u32(u_input.e, _wgslsmith_mult_u32(4294967295u, u_input.b.x) << (8208u % 32u))), reverseBits(~vec3<u32>(u_input.c.x, ~25516u, ~33268u)));
}

