struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(1659f, 1000f, 1278f, 731f, 363f, 1093f, 827f, 263f, -289f, 1000f, 1779f, 315f, 1438f, -1139f, 1844f, -1768f, -1000f, 254f, 421f);

var<private> global1: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-182f, -101f), vec2<f32>(1533f, 319f), vec2<f32>(-973f, -327f), vec2<f32>(-1171f, 162f), vec2<f32>(792f, -1794f));

var<private> global2: array<vec3<bool>, 8>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: f32) -> f32 {
    var var_0 = Struct_2(Struct_1(vec2<i32>(0i, i32(-1i) * -56215i), 4294967295u, -210f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -967f)))), abs(25219u) >= _wgslsmith_clamp_u32(4248u, 1u, firstLeadingBit(u_input.b))), abs(-_wgslsmith_mult_i32(-1i, -2147483647i)), Struct_1(vec2<i32>(~_wgslsmith_mult_i32(2147483647i, 1i), 1i), ~(~u_input.a), -583f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 19u)]), true & !any(vec2<bool>(false, false))));
    global2 = array<vec3<bool>, 8>();
    global1 = array<vec2<f32>, 5>();
    let var_1 = Struct_2(var_0.a, ~2147483647i, var_0.a);
    global0 = array<f32, 19>();
    return arg_1;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(max(vec2<i32>(1i, 1i), vec2<i32>(-19799i >> (u_input.a % 32u), -53958i)), ~4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(61306u, 19u)])) - 348f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)])), -212f)), global0[_wgslsmith_index_u32(~u_input.a, 19u)]), !any(vec2<bool>(true, true))), max(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, -44673i, -2147483647i, 20455i), -vec4<i32>(2150i, -2147483647i, 12894i, 0i)) | select(_wgslsmith_sub_i32(14491i, 34096i), firstTrailingBit(-1i), true), 39785i), Struct_1(~_wgslsmith_clamp_vec2_i32(-vec2<i32>(23593i, 37026i), vec2<i32>(-1i, 0i), vec2<i32>(0i, 2147483647i)), _wgslsmith_mod_u32(1u, ~u_input.a), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(firstLeadingBit(4714u)), 19u)] - _wgslsmith_f_op_f32(f32(-1f) * -913f)), 932f, true));
    var var_1 = select(!(!var_0.a.e), true, true);
    var var_2 = !(select(~(u_input.a & var_0.c.b), 8695u, all(!global2[_wgslsmith_index_u32(u_input.b, 8u)])) >= ~select(var_0.c.b, var_0.c.b, !var_0.c.e));
    var_2 = var_0.c.e == !(!var_0.a.e);
    var var_3 = 872f;
    return Struct_2(Struct_1(firstTrailingBit(-vec2<i32>(var_0.c.a.x, 19526i) | (vec2<i32>(37406i, var_0.c.a.x) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)))), (_wgslsmith_sub_u32(var_0.c.b, 1u) & _wgslsmith_mult_u32(1u, 959u)) >> (1u % 32u), global0[_wgslsmith_index_u32(var_0.a.b & u_input.b, 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.d)), true & (select(var_0.a.b, 4294967295u, var_0.a.e) != var_0.c.b)), -39553i, Struct_1(var_0.a.a, 1u, -266f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_0.c.b, 0u), 19u)])), false));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2393f, arg_2.c.d, -539f, global0[_wgslsmith_index_u32(u_input.b, 19u)])))))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(54724u, 19u)], 321f))), _wgslsmith_f_op_f32(round(arg_2.a.d)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.yy, arg_1.zz), 19u)]))), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.c.d), arg_2.a.c)))), _wgslsmith_f_op_f32(arg_2.a.d * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(24269u, 19u)] - -737f))));
    let var_1 = ~(-1i);
    let var_2 = Struct_1(vec2<i32>(-(~1i), -countOneBits(arg_3)), ~(60606u | _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(6753u, 56598u), arg_1.zy), select(vec2<u32>(arg_1.x, arg_0), vec2<u32>(arg_1.x, 1u), true))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(countOneBits(arg_2.c.b), 19u)] * _wgslsmith_f_op_f32(-839f * arg_2.a.d)), -249f, arg_2.a.e);
    let var_3 = any(!select(vec4<bool>(true, select(true, false, arg_2.a.e), arg_2.a.e == true, true), !vec4<bool>(false, false, var_2.e, arg_2.a.e), vec4<bool>(true, !var_2.e, all(vec3<bool>(false, false, arg_2.c.e)), arg_2.c.a.x <= 51656i)));
    global0 = array<f32, 19>();
    return arg_2.a.e;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = select(vec3<bool>(arg_1.e, func_4(u_input.b, ~(~vec3<u32>(0u, u_input.b, 14483u)), func_2(), -(54987i | arg_1.a.x)), arg_1.e), global2[_wgslsmith_index_u32(arg_1.b, 8u)], arg_1.e);
    var var_1 = Struct_4(func_2().a, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-910f, 1474f, -1164f) - vec3<f32>(759f, -208f, -334f)) * vec3<f32>(arg_0, arg_1.c, 1586f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], 450f, global0[_wgslsmith_index_u32(4294967295u, 19u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], 650f, global0[_wgslsmith_index_u32(arg_1.b, 19u)])))), _wgslsmith_f_op_f32(floor(332f)))), abs(~(-2147483647i)));
    let var_2 = vec3<u32>(~(~reverseBits(u_input.a)), 6198u >> (~(~arg_1.b >> (arg_1.b % 32u)) % 32u), var_1.a.b);
    let var_3 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_mult_i32(0i, -arg_1.a.x), 0i), countOneBits(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, 4573u, arg_1.b, var_2.x)), vec4<u32>(var_2.x, u_input.b, 21713u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(select(20261u, 0u, false), 0u), 19u)], _wgslsmith_f_op_f32(1864f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 19u)])) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c * -185f))), -_wgslsmith_mult_i32(~select(-7328i, var_1.c, true), var_1.a.a.x), func_2().c);
    return firstTrailingBit(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(global0[_wgslsmith_index_u32(11455u, 19u)] > _wgslsmith_f_op_f32(ceil(-114f)));
    var var_1 = Struct_1(firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-17254i, 1i, -48072i, -1i), vec4<i32>(-1i, -69742i, -2147483647i, 2147483647i)) >> (u_input.b % 32u), 1i)), 0u, 554f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-150f, global0[_wgslsmith_index_u32(u_input.b, 19u)])), (i32(-1i) * -2147483647i) < _wgslsmith_sub_i32(firstTrailingBit(-5060i), func_1(-1237f, Struct_1(vec2<i32>(-1i, -11630i), 32025u, global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)], var_0)) ^ _wgslsmith_clamp_i32(-1i, -2147483647i, -20956i)));
    var var_2 = select(-_wgslsmith_sub_vec3_i32(~(vec3<i32>(-49484i, var_1.a.x, -7159i) >> (vec3<u32>(76417u, 0u, var_1.b) % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, 10009i), vec3<i32>(var_1.a.x, var_1.a.x, var_1.a.x))), -firstLeadingBit(vec3<i32>(10597i, -66847i, 2147483647i)), var_1.e);
    var var_3 = func_2();
    let var_4 = func_2().c;
    global1 = array<vec2<f32>, 5>();
    let var_5 = Struct_4(var_3.c, _wgslsmith_f_op_f32(-525f - 1000f), -13985i);
    global1 = array<vec2<f32>, 5>();
    let var_6 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(reverseBits(var_1.b), 5u)], vec2<f32>(var_3.a.c, 718f)), vec2<f32>(var_1.d, _wgslsmith_f_op_f32(func_3(vec3<f32>(var_3.a.c, -246f, var_1.d), var_4.d))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(var_1.b, 5u)] - vec2<f32>(var_4.c, var_1.d)) + global1[_wgslsmith_index_u32(4294967295u, 5u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, i32(-1i) * -var_4.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(100f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_6.x * var_6.x))))));
}

