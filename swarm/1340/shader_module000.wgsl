struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: bool,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 2>;

var<private> global1: Struct_2;

var<private> global2: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> i32 {
    let var_0 = Struct_5(Struct_1(vec3<bool>(arg_0, !arg_0, arg_2)), abs(~_wgslsmith_div_u32(abs(u_input.a), global1.b.x)), 0i);
    global1 = Struct_2(global1.a, vec2<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(global1.b, global1.b)), vec2<u32>(~u_input.a, ~global1.b.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 1u, u_input.a, 0u) | vec4<u32>(var_0.b, 0u, 1u, var_0.b), _wgslsmith_add_vec4_u32(vec4<u32>(1u, global1.b.x, u_input.a, var_0.b) >> (vec4<u32>(global1.b.x, global1.b.x, var_0.b, var_0.b) % vec4<u32>(32u)), vec4<u32>(u_input.a, 43871u, u_input.a, 4294967295u) << (vec4<u32>(71974u, global1.b.x, global1.b.x, 0u) % vec4<u32>(32u))))));
    let var_1 = vec3<i32>(-countOneBits(arg_3), _wgslsmith_clamp_i32(_wgslsmith_add_i32(abs(~u_input.b), var_0.c), 1i << (0u % 32u), -(~(-u_input.b))), _wgslsmith_dot_vec2_i32(firstTrailingBit(select(vec2<i32>(17654i, u_input.b) ^ vec2<i32>(var_0.c, var_0.c), vec2<i32>(u_input.b, arg_3) | vec2<i32>(u_input.b, u_input.b), select(true, false, var_0.a.a.x))), -countOneBits(reverseBits(vec2<i32>(u_input.b, u_input.b)))));
    var var_2 = Struct_2(!vec4<bool>(any(vec2<bool>(true, true)), true, true, arg_2), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(global1.b, min(vec2<u32>(var_0.b, var_0.b), vec2<u32>(global1.b.x, 49789u))) | (~vec2<u32>(14328u, global1.b.x) ^ select(global1.b, global1.b, arg_1.a.zz)), vec2<u32>(_wgslsmith_div_u32(39513u, abs(18917u)), ~var_0.b), vec2<u32>(~(~38104u), select(global1.b.x, 0u, true) ^ _wgslsmith_mod_u32(u_input.a, var_0.b))));
    var var_3 = Struct_2(!var_2.a, vec2<u32>(~global1.b.x, var_0.b));
    return u_input.b;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<f32>, arg_3: i32) -> Struct_2 {
    global2 = arg_2.x;
    var var_0 = abs(select(vec3<i32>(min(-arg_3, func_3(false, Struct_1(global1.a.yzy), false, -11702i)), ~63519i, -1i), vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(26228i, 1i, 15548i)), _wgslsmith_div_i32(~(-1i), arg_3)), !(!global1.a.zzy)));
    var var_1 = arg_2.x;
    var var_2 = ~vec3<i32>(reverseBits(-var_0.x), -33322i << (_wgslsmith_add_u32(_wgslsmith_clamp_u32(53498u, arg_0.x, 1283u), 4294967295u << (global1.b.x % 32u)) % 32u), ~min(u_input.b, _wgslsmith_mult_i32(0i, u_input.b)));
    var_0 = global0[_wgslsmith_index_u32(u_input.a, 2u)];
    return Struct_2(vec4<bool>(all(select(select(vec4<bool>(arg_1, global1.a.x, global1.a.x, arg_1), global1.a, true), global1.a, select(false, global1.a.x, true))), false, all(global1.a.zyw), true), vec2<u32>(~(~reverseBits(38352u)), (firstLeadingBit(global1.b.x) & 36669u) ^ arg_0.x));
}

fn func_1(arg_0: Struct_4) -> u32 {
    global1 = func_2(vec2<u32>(~firstTrailingBit(~0u), u_input.a), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-276f, -372f, -864f, 1170f) * vec4<f32>(-1399f, -161f, 1000f, 290f)) - vec4<f32>(652f, -322f, -1421f, -259f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(434f, -1725f, 722f, 1812f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-164f, -422f, -681f, -597f)))))), 1i);
    global1 = Struct_2(vec4<bool>(any(global1.a.ywz), false || !(!global1.a.x), global1.a.x, true == global1.a.x), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u & u_input.a, ~8936u), ~(~global1.b)));
    global0 = array<vec3<i32>, 2>();
    global0 = array<vec3<i32>, 2>();
    var var_0 = arg_0;
    return ~firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global1.b >> (vec2<u32>(u_input.a, global1.b.x) % vec2<u32>(32u)), ~vec2<u32>(12969u, 27454u)), ~global1.b | ~vec2<u32>(24061u, 34307u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-581f - _wgslsmith_f_op_f32(-1f));
    global0 = array<vec3<i32>, 2>();
    var var_0 = firstLeadingBit(0i);
    let var_1 = _wgslsmith_mult_i32(-u_input.b << ((_wgslsmith_clamp_u32(_wgslsmith_add_u32(global1.b.x, global1.b.x), 0u, global1.b.x) << (u_input.a % 32u)) % 32u), ~(-1i));
    global0 = array<vec3<i32>, 2>();
    let var_2 = ~vec4<i32>(-var_1, _wgslsmith_div_i32(min(50573i, -1i), u_input.b & -19203i), 1i, 2147483647i) | ~vec4<i32>(1i, select(1i, _wgslsmith_mult_i32(1i, var_1), true), _wgslsmith_dot_vec3_i32(abs(global0[_wgslsmith_index_u32(global1.b.x, 2u)]), ~vec3<i32>(u_input.b, 2147483647i, -34330i)), abs(-2147483647i));
    global2 = -504f;
    var var_3 = vec4<u32>(abs(func_1(Struct_4(var_2.x)) ^ ~_wgslsmith_dot_vec2_u32(global1.b, vec2<u32>(u_input.a, 4294967295u))), 1u, min(_wgslsmith_div_u32(~(global1.b.x & u_input.a), ~0u), _wgslsmith_div_u32(u_input.a, ~u_input.a)), _wgslsmith_dot_vec2_u32(global1.b, vec2<u32>(~(~82214u), min(4294967295u, func_1(Struct_4(var_1))))));
    let var_4 = Struct_5(Struct_1(select(vec3<bool>(false, true, true), !(!global1.a.yxz), true)), ~_wgslsmith_clamp_u32(~reverseBits(var_3.x), firstTrailingBit(global1.b.x), ~(~22561u)), ~(_wgslsmith_dot_vec3_i32(min(var_2.wyw, vec3<i32>(var_1, var_1, -18674i)), var_2.xxx | global0[_wgslsmith_index_u32(global1.b.x, 2u)]) | firstLeadingBit(u_input.b ^ var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~countOneBits(var_3.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(364f, -654f), vec2<f32>(1000f, 1724f), global1.a.ww))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(190f, 703f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1668f, -1504f) + vec2<f32>(-686f, 1000f)), !var_4.a.a.xx)), vec2<f32>(_wgslsmith_f_op_f32(floor(-1387f)), -1291f)))), vec3<u32>(max(30497u ^ u_input.a, abs(var_3.x)), ~1u, func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(var_4.b, var_4.b), var_3.xw), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-595f, 652f, -313f, -1188f)), ~u_input.b).b.x) | _wgslsmith_sub_vec3_u32(var_3.xxx, var_3.xwx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-253f + -1497f)) + -271f) + _wgslsmith_f_op_f32(min(450f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(697f)))))), _wgslsmith_f_op_f32(f32(-1f) * -2610f));
}

