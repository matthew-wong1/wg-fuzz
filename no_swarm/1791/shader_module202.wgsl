struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(43915u, 1u), vec2<u32>(51084u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 49488u), vec2<u32>(31181u, 20077u), vec2<u32>(1u, 100442u), vec2<u32>(33258u, 16007u), vec2<u32>(1u, 55396u), vec2<u32>(0u, 4294967295u), vec2<u32>(45609u, 4294967295u), vec2<u32>(22455u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(1u, 7825u), vec2<u32>(59999u, 0u), vec2<u32>(58805u, 52705u), vec2<u32>(110847u, 5476u), vec2<u32>(23042u, 1u), vec2<u32>(0u, 26255u), vec2<u32>(54644u, 32185u));

var<private> global1: Struct_2;

var<private> global2: array<vec4<bool>, 29>;

var<private> global3: array<vec4<i32>, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(545f, arg_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(286f, 1352f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, -637f)))))), vec2<f32>(-1064f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1353f, arg_0, all(vec3<bool>(arg_1, false, arg_1)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(135f)), -1000f))), !select(vec2<bool>(arg_1, true), select(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, true), arg_1), select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1)), !vec2<bool>(false, arg_1)), !vec2<bool>(arg_1, arg_1))));
    let var_1 = 1u << ((u_input.e & u_input.e) % 32u);
    let var_2 = countOneBits(u_input.b);
    var var_3 = Struct_4(firstLeadingBit(_wgslsmith_add_vec3_u32(~(~vec3<u32>(var_1, 69067u, var_1)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(1u, u_input.e, 1u)), vec3<u32>(var_1, 9880u, arg_2) ^ vec3<u32>(u_input.e, 63407u, u_input.e)))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.c.zwx, select(u_input.c.yzy, vec3<i32>(-2147483647i, 6862i, 2147483647i), vec3<bool>(arg_1, arg_1, true))), var_2), ~(-(-2147483647i & global1.a)), ~global1.a));
    var var_4 = vec4<i32>(var_3.b.x, var_2, ~22635i, 1i);
    return 1329f;
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -483f), -1925f)))), -1644f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(208f, 165f, true))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1811f, -828f))) - _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1030f))), true))));
    var var_1 = Struct_5(Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.wz) + _wgslsmith_f_op_vec2_f32(-var_0.wy)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(956f, var_0.x), var_0.zz)))), u_input.e, abs(-35093i) <= global1.a), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1888f, -1211f))))), !all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(func_3(var_0.x, true, _wgslsmith_dot_vec2_u32(~arg_0.xy, arg_0.wz)))));
    let var_2 = u_input.e;
    global0 = array<vec2<u32>, 21>();
    return reverseBits(71154u);
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = abs(~_wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(~42143u, 21u)] ^ (global0[_wgslsmith_index_u32(79043u, 21u)] | vec2<u32>(u_input.e, 4294967295u)), vec2<u32>(u_input.e ^ 36489u, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.e, 21u)], global0[_wgslsmith_index_u32(u_input.e, 21u)]))));
    let var_1 = var_0.x;
    var var_2 = any(!vec3<bool>(true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), !all(vec2<bool>(true, false))));
    let var_3 = !(abs(1i) == ((i32(-1i) * -arg_0.x) >> (8528u % 32u)));
    var var_4 = ~(global0[_wgslsmith_index_u32(min(max(_wgslsmith_add_u32(1u, var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 0u, 51610u), vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u))), var_0.x), 21u)] >> (vec2<u32>(min(u_input.e, var_0.x), func_2(vec4<u32>(var_0.x, u_input.e, 1u, 4278u))) % vec2<u32>(32u)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-667f, -722f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1272f, 125f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1325f, 1436f))), true))), ~var_0.x, false);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = min(firstTrailingBit(firstTrailingBit(vec2<u32>(7621u, 1u))), global0[_wgslsmith_index_u32(0u, 21u)]);
    let var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(~(-2147483647i), -_wgslsmith_clamp_i32(2147483647i, global1.a, u_input.c.x)), 9045i & global1.a) >= 1i;
    global1 = Struct_2(global1.a);
    global2 = array<vec4<bool>, 29>();
    let var_2 = Struct_3(arg_0.a, min(arg_1.b & ~_wgslsmith_clamp_u32(u_input.e, arg_1.b, 105387u), _wgslsmith_mult_u32(u_input.e, u_input.e)), !(!(!any(vec2<bool>(var_1, var_1)))));
    return StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(1011f, arg_1.c, arg_0.b)) - -1049f)), arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.yyw;
    let var_1 = false;
    global2 = array<vec4<bool>, 29>();
    let var_2 = _wgslsmith_f_op_f32(sign(1f));
    let var_3 = true;
    global0 = array<vec2<u32>, 21>();
    global2 = array<vec4<bool>, 29>();
    global2 = array<vec4<bool>, 29>();
    let x = u_input.a;
    s_output = func_4(func_1(min(vec2<i32>(-1i) * -var_0.xx, -(~var_0.zx))), Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2, -1345f)))))), 14866u, func_1(var_0.zx).c));
}

