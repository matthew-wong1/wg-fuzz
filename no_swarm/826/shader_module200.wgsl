struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: bool) -> i32 {
    var var_0 = all(select(select(!select(vec4<bool>(true, arg_2, false, false), vec4<bool>(true, true, false, true), arg_2), !vec4<bool>(arg_2, false, false, global0[_wgslsmith_index_u32(arg_1.a.x, 1u)]), !select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_1.a.x, 1u)], false), vec4<bool>(arg_2, false, true, global0[_wgslsmith_index_u32(103176u, 1u)]), vec4<bool>(arg_2, true, true, global0[_wgslsmith_index_u32(u_input.b.x, 1u)]))), select(vec4<bool>(false, arg_2 | false, false, any(vec4<bool>(false, global0[_wgslsmith_index_u32(44014u, 1u)], false, true))), vec4<bool>(global0[_wgslsmith_index_u32(22290u >> (1u % 32u), 1u)], true, true, !arg_2), !global0[_wgslsmith_index_u32(arg_1.a.x, 1u)] && true), vec4<bool>(false, arg_2, !(!arg_2), global0[_wgslsmith_index_u32(32027u, 1u)])));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_0) + vec2<f32>(arg_0, arg_0))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 999f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-549f, arg_0) - vec2<f32>(1076f, arg_0)))), _wgslsmith_div_vec2_f32(vec2<f32>(-267f, arg_0), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, 676f))))), arg_2 && !(!(!global0[_wgslsmith_index_u32(u_input.b.x, 1u)]))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(605f + var_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), arg_0, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(705f, 1299f))))))));
    let var_2 = _wgslsmith_f_op_f32(-1755f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_3 = 1162f;
    return firstTrailingBit(-(((u_input.a.x >> (u_input.b.x % 32u)) ^ u_input.a.x) >> (60448u % 32u)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: u32) -> bool {
    var var_0 = Struct_4(Struct_3(~select(vec2<i32>(arg_1.c.b.x, 76776i), vec2<i32>(-15557i, arg_1.c.b.x), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, 704f)), _wgslsmith_f_op_f32(-arg_0.c)), Struct_2(arg_2, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 0u, arg_2.x), vec4<u32>(arg_1.a.x, arg_1.c.a, arg_1.b.x, u_input.b.x)) | (u_input.b.x << (24419u % 32u)), ~(~arg_2.x), 18082u & _wgslsmith_dot_vec3_u32(arg_1.b, vec3<u32>(arg_1.c.a, u_input.b.x, arg_1.a.x))), Struct_1(arg_2.x, vec4<i32>(-40504i, abs(arg_0.a.x), _wgslsmith_div_i32(2147483647i, u_input.a.x), arg_1.c.b.x))), arg_1, -(func_3(_wgslsmith_f_op_f32(arg_0.c + 1000f), Struct_5(arg_2), select(global0[_wgslsmith_index_u32(57858u, 1u)], true, global0[_wgslsmith_index_u32(arg_2.x, 1u)])) ^ _wgslsmith_dot_vec3_i32(arg_1.c.b.zzw >> (arg_1.b % vec3<u32>(32u)), vec3<i32>(2147483647i, 1828i, arg_1.c.b.x))));
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    var_0 = Struct_4(var_0.a, arg_1, arg_1, var_0.a.a.x >> (1u % 32u));
    var var_1 = var_0.a;
    return any(select(select(vec2<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], false, true, global0[_wgslsmith_index_u32(u_input.b.x, 1u)])), true & global0[_wgslsmith_index_u32(arg_1.b.x, 1u)]), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.a.x, 1u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.c.b.x, 1u)], false), vec2<bool>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)])), false), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.b.b.x, u_input.b.x | arg_2.x, 6453u), 1u)]), !vec2<bool>(all(vec2<bool>(false, false)), false), false));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: f32) -> Struct_1 {
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    let var_0 = Struct_2(firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(arg_2.xwx, _wgslsmith_sub_vec3_u32(arg_2.zzw, vec3<u32>(u_input.b.x, 59045u, arg_2.x))), arg_2.zxy << (arg_2.zwx % vec3<u32>(32u)))), ~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(arg_2.wyw, select(vec3<u32>(0u, arg_2.x, arg_2.x), arg_2.yxx, arg_1.xxw)), ~vec3<u32>(u_input.b.x, arg_2.x, 1u)), Struct_1(1u, -select(u_input.a, _wgslsmith_div_vec4_i32(u_input.a, u_input.a), vec4<bool>(true, false, arg_1.x, global0[_wgslsmith_index_u32(31755u, 1u)]))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)))), _wgslsmith_f_op_f32(arg_0.x * 1000f)));
    return Struct_1(27534u, -reverseBits(min(vec4<i32>(var_0.c.b.x, u_input.a.x, u_input.a.x, var_0.c.b.x) ^ var_0.c.b, -u_input.a)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(30998u, 1u)];
    let var_1 = Struct_2(select(vec3<u32>(~u_input.b.x, 1u, arg_1.a.x), _wgslsmith_div_vec3_u32(countOneBits(arg_1.a), vec3<u32>(1771u, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), abs(arg_3.a.x))), !vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.b.x, 1u)], true, true, global0[_wgslsmith_index_u32(u_input.b.x, 1u)])), -1i <= u_input.a.x, any(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_1.a.x, 1u)], global0[_wgslsmith_index_u32(66576u, 1u)], false)))), ~((vec3<u32>(32843u, 22236u, u_input.b.x) | _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b.x, 9832u, 48684u), arg_0.a, vec3<u32>(arg_1.c.a, 4294967295u, 43083u))) & _wgslsmith_clamp_vec3_u32(~arg_1.a, vec3<u32>(arg_0.b.x, arg_1.a.x, arg_0.a.x), vec3<u32>(1u, arg_1.a.x, u_input.b.x))), Struct_1(firstLeadingBit(~u_input.b.x), ~vec4<i32>(reverseBits(arg_2), -2147483647i, ~arg_3.c.b.x, arg_0.c.b.x)));
    var var_2 = 1000f;
    var var_3 = !(global0[_wgslsmith_index_u32(min(u_input.b.x, arg_1.c.a), 1u)] | true);
    var var_4 = select(!(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], false, true), vec3<bool>(true, true, global0[_wgslsmith_index_u32(24258u, 1u)]), global0[_wgslsmith_index_u32(arg_1.c.a, 1u)]))), !(!select(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 1u)], false, global0[_wgslsmith_index_u32(var_1.a.x, 1u)]), vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(22988u, 1u)], false, false)), vec3<bool>(global0[_wgslsmith_index_u32(0u, 1u)], true, true), select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(61278u, 1u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_3.a.x, 1u)], global0[_wgslsmith_index_u32(var_1.c.a, 1u)], true), global0[_wgslsmith_index_u32(1u, 1u)]))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.b, arg_3.a), 1u)]);
    return select(!vec3<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(17068u, 1u)], true, global0[_wgslsmith_index_u32(22263u, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)])), false), !select(vec3<bool>(all(vec3<bool>(false, var_4.x, true)), global0[_wgslsmith_index_u32(arg_0.a.x, 1u)] & var_4.x, all(vec4<bool>(false, true, true, var_4.x))), !(!vec3<bool>(var_4.x, global0[_wgslsmith_index_u32(4294967295u, 1u)], var_4.x)), true | all(vec4<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 1u)], var_4.x, var_4.x, true))), true);
}

fn func_1(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = ~_wgslsmith_div_vec2_i32(vec2<i32>(~41948i, u_input.a.x), -(~(-vec2<i32>(-4064i, u_input.a.x))));
    var var_1 = arg_0.x || arg_0.x;
    var_1 = true;
    var var_2 = -45492i;
    var var_3 = arg_0.yyw;
    return func_5(Struct_2(vec3<u32>(~abs(u_input.b.x), 4294967295u, reverseBits(84428u & u_input.b.x)), vec3<u32>(_wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x)), u_input.b.x, u_input.b.x), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1393f, 508f, 988f), vec4<f32>(-1469f, -912f, -829f, 1000f)) + vec4<f32>(-147f, 803f, 356f, -1930f)), vec4<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 1u)], func_2(Struct_3(var_0, vec2<f32>(-749f, -1000f), 130f), Struct_2(vec3<u32>(u_input.b.x, 4294967295u, 20354u), vec3<u32>(29656u, u_input.b.x, 2388u), Struct_1(42746u, u_input.a)), vec3<u32>(u_input.b.x, 0u, u_input.b.x), u_input.b.x), var_3.x & arg_0.x, true), ~(vec4<u32>(38991u, u_input.b.x, u_input.b.x, 68826u) << (vec4<u32>(0u, 0u, u_input.b.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1960f), _wgslsmith_f_op_f32(select(2365f, 407f, global0[_wgslsmith_index_u32(4829u, 1u)])), true && global0[_wgslsmith_index_u32(73320u, 1u)])))), Struct_2(~(~vec3<u32>(u_input.b.x, 23918u, u_input.b.x) & select(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global0[_wgslsmith_index_u32(69853u, 1u)]))), vec3<u32>(abs(23904u), u_input.b.x, ~(~u_input.b.x)), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1266f, -411f, -2221f, -525f) - vec4<f32>(1569f, 1499f, 354f, 1252f))), select(!vec4<bool>(false, arg_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 1u)], false), vec4<bool>(var_3.x, var_3.x, false, arg_0.x), !vec4<bool>(true, var_3.x, true, false)), vec4<u32>(min(4294967295u, 50891u), _wgslsmith_clamp_u32(63154u, 1u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(27225u, 52942u, 62147u), vec3<u32>(u_input.b.x, u_input.b.x, 0u)), ~u_input.b.x), 1f)), u_input.a.x, Struct_2(vec3<u32>(~_wgslsmith_mod_u32(u_input.b.x, 0u), ~min(0u, 45467u), u_input.b.x), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 54138u, 4294967295u) << (vec3<u32>(0u, 1u, 111594u) % vec3<u32>(32u)), ~vec3<u32>(1u, u_input.b.x, 18741u)), Struct_1(u_input.b.x, ~vec4<i32>(u_input.a.x, 22415i, 0i, -46655i) ^ firstLeadingBit(u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(12845i);
    let var_1 = select(vec3<bool>(!(!(false || global0[_wgslsmith_index_u32(u_input.b.x, 1u)])), global0[_wgslsmith_index_u32(u_input.b.x, 1u)] && global0[_wgslsmith_index_u32(~u_input.b.x, 1u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(_wgslsmith_add_u32(u_input.b.x, u_input.b.x)), u_input.b.x), 1u)]), !select(func_1(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 1u)], true, global0[_wgslsmith_index_u32(1u, 1u)])), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], true, global0[_wgslsmith_index_u32(88741u, 1u)]), u_input.b.x >= ~u_input.b.x), true);
    global0 = array<bool, 1>();
    var var_2 = Struct_4(Struct_3(reverseBits(-vec2<i32>(1i, 1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -316f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2287f, 1347f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-291f, 1046f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1363f, -812f) - vec2<f32>(-1057f, 188f)), any(vec3<bool>(var_1.x, false, global0[_wgslsmith_index_u32(u_input.b.x, 1u)]))))), 340f), Struct_2(~vec3<u32>(u_input.b.x, u_input.b.x << (u_input.b.x % 32u), firstTrailingBit(1u)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), ~vec3<u32>(1u, u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.b.x, u_input.b.x, 1u)), ~vec3<u32>(4294967295u, u_input.b.x, 4661u))), Struct_1(u_input.b.x, abs(-u_input.a))), Struct_2(select(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) >> (vec3<u32>(4294967295u, 23370u, u_input.b.x) % vec3<u32>(32u)), ~vec3<u32>(37243u, 36982u, 0u), true == var_1.x) << ((_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, 0u, 4294967295u)) >> (firstLeadingBit(vec3<u32>(u_input.b.x, 0u, u_input.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(firstTrailingBit(vec3<u32>(u_input.b.x, 96014u, u_input.b.x))), Struct_1(~firstTrailingBit(u_input.b.x), u_input.a)), u_input.a.x);
    var_0 = max(_wgslsmith_div_i32(max(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) << (~1u % 32u), u_input.a.x), u_input.a.x), var_2.a.a.x);
    global0 = array<bool, 1>();
    var_2 = Struct_4(Struct_3(var_2.c.c.b.wx, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.a.c, _wgslsmith_f_op_f32(var_2.a.b.x + -458f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(295f)))), var_2.c, var_2.b, _wgslsmith_mod_i32(var_2.c.c.b.x, var_2.a.a.x));
    global0 = array<bool, 1>();
    var_0 = _wgslsmith_mult_i32(i32(-1i) * -var_2.d, min(_wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, 18838i), _wgslsmith_mult_i32(-10761i, abs(1i))), ~(i32(-1i) * -u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~1u >> (u_input.b.x % 32u), var_2.c.b.x, 92824u));
}

