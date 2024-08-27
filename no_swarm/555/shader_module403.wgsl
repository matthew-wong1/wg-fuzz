struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26>;

var<private> global1: u32 = 1u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_1(arg_2.a.a, -countOneBits(1i));
    global1 = ~(~_wgslsmith_div_u32(~u_input.b, firstTrailingBit(46660u)));
    let var_1 = var_0;
    var var_2 = u_input.d.xx & vec2<i32>(min(i32(-1i) * -14663i, -19478i), u_input.c.x);
    var_2 = u_input.a;
    return 1848f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(arg_1.a.wyz, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1693f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1287f - 514f))) - 767f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(905f)))))))));
    global1 = select(0u, u_input.b, 1u <= (_wgslsmith_add_u32(u_input.b, abs(13864u)) ^ abs(~4294967295u)));
    return -1459f;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_mod_i32(u_input.c.x, -2147483647i);
    var var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(299f + -791f), _wgslsmith_f_op_f32(func_2(-40108i ^ u_input.a.x, vec2<bool>(true, true), Struct_2(Struct_1(vec4<f32>(-680f, 996f, -351f, -155f), 0i), 1u))), 1f, _wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(795f, -1394f, 1000f, -1346f), 40874i), Struct_1(vec4<f32>(213f, 251f, -437f, -1146f), 24736i), _wgslsmith_div_vec2_u32(vec2<u32>(7678u, u_input.b), vec2<u32>(u_input.b, 6679u))))), select(u_input.d.x & select(u_input.c.x, -3785i, false), _wgslsmith_sub_i32(3407i, _wgslsmith_dot_vec3_i32(u_input.d.wxy, vec3<i32>(u_input.a.x, 1i, u_input.c.x))), _wgslsmith_mod_i32(u_input.c.x, 0i) >= -u_input.a.x)), firstTrailingBit(~99364u));
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_1.a.a.zz);
    var var_3 = Struct_1(var_1.a.a, ~(-_wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i, 30201i), -u_input.c.x)));
    var_2 = vec2<f32>(var_1.a.a.x, _wgslsmith_f_op_f32(-var_1.a.a.x));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(var_1.a.a + var_3.a), ~(~_wgslsmith_div_i32(var_1.a.b, -19288i))), ~(var_1.b | ~1u));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = func_1().a;
    let var_1 = func_1();
    let var_2 = vec4<bool>(select(!all(vec2<bool>(true, true)), true, select(true, true, arg_1) & arg_1), var_1.a.b > (67581i & _wgslsmith_dot_vec2_i32(-vec2<i32>(58735i, 20213i), u_input.d.zw << (vec2<u32>(arg_0.b, arg_2.x) % vec2<u32>(32u)))), arg_1, arg_1);
    global0 = array<vec3<u32>, 26>();
    var var_3 = true;
    return func_1();
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2;
    global0 = array<vec3<u32>, 26>();
    let var_1 = _wgslsmith_div_i32(~(-2147483647i ^ _wgslsmith_div_i32(43015i | u_input.c.x, 75714i)), -77434i);
    var var_2 = vec4<bool>(true & any(vec3<bool>(false, arg_1 != arg_2.b, true)), true, _wgslsmith_dot_vec4_u32(min(~vec4<u32>(arg_1, u_input.b, arg_2.b, 4294967295u), select(vec4<u32>(var_0.b, arg_1, 60309u, arg_1), vec4<u32>(u_input.b, u_input.b, 1u, var_0.b), vec4<bool>(true, true, true, true))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, 67875u, 0u, arg_1), abs(vec4<u32>(arg_2.b, 5211u, 0u, 36288u)))) != _wgslsmith_mod_u32(_wgslsmith_mod_u32(func_4(Struct_2(Struct_1(var_0.a.a, arg_2.a.b), 5819u), true, vec3<u32>(arg_1, u_input.b, u_input.b), var_0.a).b, 22104u), _wgslsmith_dot_vec4_u32(~vec4<u32>(30234u, arg_1, u_input.b, var_0.b), vec4<u32>(var_0.b, 0u, u_input.b, arg_1))), false);
    var_2 = vec4<bool>(any(vec4<bool>(select(false, true, true), var_2.x, var_0.b == var_0.b, u_input.b < 44232u)) | any(select(select(vec4<bool>(var_2.x, var_2.x, true, false), vec4<bool>(true, var_2.x, false, false), var_2.x), vec4<bool>(var_2.x, var_2.x, true, true), any(vec3<bool>(true, true, false)))), !any(select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), select(vec4<bool>(true, var_2.x, false, true), vec4<bool>(false, true, var_2.x, var_2.x), var_2.x))), !(!any(vec4<bool>(var_2.x, true, false, var_2.x))) | (var_2.x & true), any(var_2.wy) | all(vec4<bool>(any(var_2.yw), select(var_2.x, var_2.x, var_2.x), var_2.x, !var_2.x)));
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(Struct_1(vec4<f32>(1f, 1f, 1f, 1f), select(-21810i, u_input.c.x >> (u_input.b % 32u), true)), 1u, func_4(func_1(), any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), global0[_wgslsmith_index_u32(u_input.b, 26u)] ^ reverseBits(vec3<u32>(7215u, 0u, u_input.b)), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-407f, -1157f, -600f, -1179f))), 1i))), 906u);
    var_0 = func_1();
    let var_1 = Struct_2(Struct_1(var_0.a.a, (abs(u_input.c.x) | u_input.a.x) >> (~_wgslsmith_clamp_u32(18408u, var_0.b, u_input.b) % 32u)), 59211u);
    var var_2 = firstLeadingBit(~_wgslsmith_mult_u32(var_0.b, u_input.b >> (~50057u % 32u)));
    var_0 = Struct_2(var_0.a, firstLeadingBit(u_input.b));
    let var_3 = var_1.b;
    var var_4 = var_1.a;
    var var_5 = 681f;
    var var_6 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, 1000f, 1667f, var_0.a.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_4.a, vec4<f32>(var_1.a.a.x, 954f, var_1.a.a.x, -1396f)))), -select(var_1.a.b << (var_1.b % 32u), var_1.a.b, true)), _wgslsmith_sub_u32(~16934u & var_0.b, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b << (41487u % 32u), 4294967295u, u_input.d.xxz);
}

