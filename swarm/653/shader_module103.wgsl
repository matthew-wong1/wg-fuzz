struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<bool>, 17>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = 533f;
    let var_1 = !(!vec4<bool>(arg_0, reverseBits(arg_1.a.c) > ~(-1i), false, -1246f < _wgslsmith_f_op_f32(2623f + var_0)));
    var var_2 = Struct_3(Struct_1(~select(_wgslsmith_mod_vec2_u32(arg_1.a.e.xy, u_input.a), ~vec2<u32>(arg_1.b, 4294967295u), !var_1.yz), true, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-30625i), firstLeadingBit(arg_1.a.c), abs(0i), _wgslsmith_mod_i32(-45296i, -1i)), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(arg_1.a.c, arg_1.a.c, arg_1.a.c, -1i)), -vec4<i32>(arg_1.a.c, 7065i, -17352i, 1i))), any(!vec2<bool>(true, arg_1.a.b)), ~(~(~vec3<u32>(52722u, 14036u, 64514u)))), Struct_2(arg_1.a, _wgslsmith_mod_u32(~select(62686u, arg_1.b, true), u_input.a.x)));
    var var_3 = Struct_3(var_2.a, Struct_2(var_2.a, ~abs(_wgslsmith_sub_u32(arg_1.a.a.x, 49903u))));
    var_3 = Struct_3(Struct_1(var_3.b.a.e.yy, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(471f)))) > -843f, var_3.a.c, all(select(!vec2<bool>(true, var_2.b.a.d), var_1.ww, any(vec3<bool>(false, arg_1.a.d, true)))), ~(vec3<u32>(1u, var_3.b.a.a.x, var_3.a.a.x) | ~var_3.a.e)), Struct_2(Struct_1(var_2.a.e.yz, true, abs(arg_1.a.c), true & any(vec3<bool>(arg_1.a.b, false, true)), _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(arg_1.a.a.x, var_3.a.e.x, u_input.d))), _wgslsmith_sub_u32(arg_1.a.a.x, 1u)));
    return arg_1.a.e;
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_3 {
    global0 = all(global1[_wgslsmith_index_u32(u_input.c.x, 17u)]);
    let var_0 = Struct_4(Struct_1(countOneBits(u_input.c.xy), arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(2147483647i, 13106i, 62743i, 24474i)) >> (~(~u_input.c.x) % 32u), true, func_3(arg_1, Struct_2(Struct_1(vec2<u32>(u_input.b, u_input.b), false, 0i, arg_1, u_input.c), _wgslsmith_div_u32(arg_0, 27620u)))), Struct_2(Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(14730u, 30241u, 1u)), 1u), true, reverseBits(~(-3975i)), func_3(arg_1, Struct_2(Struct_1(vec2<u32>(arg_0, u_input.c.x), arg_1, -1i, false, vec3<u32>(26344u, 1u, 1u)), u_input.a.x)).x <= arg_0, ~vec3<u32>(0u, 4294967295u, u_input.b) | (u_input.c & vec3<u32>(u_input.d, 19788u, arg_0))), u_input.b), vec4<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) - _wgslsmith_f_op_f32(f32(-1f) * -2095f)), 919f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(858f * 1000f))))));
    var var_1 = Struct_3(var_0.a, var_0.b);
    var var_2 = Struct_3(var_0.a, var_0.b);
    var var_3 = ~vec4<i32>(-_wgslsmith_mod_i32(var_0.b.a.c, 39228i), 1i, -var_1.a.c, -_wgslsmith_mod_i32(var_0.a.c, var_1.b.a.c)) & (_wgslsmith_clamp_vec4_i32(select(max(vec4<i32>(var_0.b.a.c, var_2.b.a.c, var_0.a.c, -2147483647i), vec4<i32>(2147483647i, -32318i, -3328i, 8051i)), vec4<i32>(var_0.b.a.c, var_1.a.c, var_1.b.a.c, var_2.b.a.c) ^ vec4<i32>(var_2.a.c, var_2.b.a.c, var_0.a.c, -2147483647i), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(8806u, u_input.b), 17u)]), ~min(vec4<i32>(var_1.b.a.c, 49778i, var_2.b.a.c, var_0.b.a.c), vec4<i32>(-1i, var_1.b.a.c, var_0.b.a.c, 15938i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(-18914i, 2147483647i, var_1.b.a.c, var_1.a.c), vec4<i32>(2147483647i, var_0.b.a.c, var_2.a.c, var_1.a.c))) | ~(min(vec4<i32>(39418i, 2836i, var_2.b.a.c, var_0.a.c), vec4<i32>(var_0.b.a.c, 2402i, var_2.a.c, var_0.a.c)) << (~vec4<u32>(10388u, var_1.b.b, 78607u, arg_0) % vec4<u32>(32u))));
    return Struct_3(Struct_1(var_2.b.a.a, select(var_1.a.b && (var_0.c.x <= -1503f), all(vec2<bool>(true, false)), true), var_0.a.c, false, vec3<u32>(0u, var_2.a.a.x, 1u)), var_1.b);
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: u32, arg_3: i32) -> Struct_1 {
    global0 = false;
    var var_0 = func_2(u_input.d, true);
    let var_1 = ~_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(46534u, 1u)) ^ u_input.d, var_0.a.e.x);
    var var_2 = Struct_4(Struct_1(_wgslsmith_add_vec2_u32(var_0.a.e.yz << (vec2<u32>(u_input.b, var_1) % vec2<u32>(32u)), ~_wgslsmith_add_vec2_u32(u_input.c.xy, vec2<u32>(u_input.d, var_0.a.a.x))), any(arg_0.yxz) | all(arg_0.xx), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, var_0.b.a.c, arg_3), vec3<i32>(2147483647i, var_0.a.c, arg_3)), true, vec3<u32>(firstTrailingBit(1u) >> (1u % 32u), ~53332u, 4294967295u)), var_0.b, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(406f, 918f)), 1477f, _wgslsmith_f_op_f32(sign(1965f)), _wgslsmith_f_op_f32(f32(-1f) * -1252f)), vec4<f32>(_wgslsmith_f_op_f32(max(-218f, _wgslsmith_f_op_f32(ceil(-815f)))), -600f, -1000f, -1267f)));
    var_0 = Struct_3(Struct_1(select(func_3(var_0.b.a.d, var_0.b).zy, func_2(11421u, all(arg_0.zw)).b.a.e.xy, !arg_0.wz), false, _wgslsmith_clamp_i32(-1i, firstLeadingBit(-2147483647i), _wgslsmith_add_i32(2147483647i, _wgslsmith_mod_i32(21190i, arg_1))), any(vec3<bool>(all(global1[_wgslsmith_index_u32(u_input.d, 17u)]), -1153f <= var_2.c.x, false)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, max(4294967295u, arg_2), firstTrailingBit(var_1)), vec3<u32>(min(0u, 55707u), u_input.a.x, var_1))), var_2.b);
    return Struct_1(var_2.a.a, arg_0.x & arg_0.x, var_2.a.c, all(vec4<bool>(false, !any(vec4<bool>(true, var_0.a.b, arg_0.x, var_2.b.a.d)), arg_0.x, !(!var_2.a.b))), _wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(var_0.b.a.e, ~u_input.c), firstLeadingBit(~vec3<u32>(1u, arg_2, 44980u)), _wgslsmith_mult_vec3_u32(vec3<u32>(34553u, 1u, u_input.b), func_3(arg_0.x, var_2.b)) & var_2.a.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(all(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.d, 0u)), 17u)]), -2235f != _wgslsmith_f_op_f32(floor(-575f)), true));
    global1 = array<vec4<bool>, 17>();
    global0 = var_0.x;
    var var_1 = var_0.zx;
    global0 = var_1.x;
    let var_2 = Struct_3(func_1(!(!global1[_wgslsmith_index_u32(~u_input.b, 17u)]), abs(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-1i, 65308i, -2147483647i), vec3<i32>(55828i, -11036i, -728i)), ~vec3<i32>(35488i, 27634i, -2147483647i))), 30623u, firstTrailingBit(-1i)), func_2(17677u, true).b);
    global1 = array<vec4<bool>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec3<u32>(min(64227u, var_2.b.a.e.x), u_input.d, 1u)), ~u_input.a.x, 1241f, abs(reverseBits(func_3(any(vec2<bool>(false, var_1.x)), func_2(u_input.c.x, true).b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-242f * _wgslsmith_f_op_f32(sign(2444f)))), -819f)));
}

