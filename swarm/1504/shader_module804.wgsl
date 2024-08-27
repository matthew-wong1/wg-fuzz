struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 8>;

var<private> global2: i32;

var<private> global3: array<Struct_1, 27>;

var<private> global4: array<Struct_1, 20>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(~arg_0.c, max(-24776i, 0i)) << (~global0.a % 32u), ~_wgslsmith_clamp_i32(-39676i, u_input.d.x, 1i) | 16230i), abs(select(-13486i, _wgslsmith_dot_vec4_i32(u_input.d, max(u_input.d, vec4<i32>(u_input.b, arg_2, arg_0.c, 4966i))), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 8u)])) != global1[_wgslsmith_index_u32(firstTrailingBit(1u), 8u)])));
    global1 = array<f32, 8>();
    global0 = global3[_wgslsmith_index_u32(~(35885u & global0.a), 27u)];
    let var_1 = global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(u_input.a, 89356u)), 20u)];
    global0 = Struct_1(1697u, any(vec2<bool>(select(var_1.b, true, all(vec3<bool>(false, false, global0.b))), var_1.b)), _wgslsmith_add_i32(-18223i, ~reverseBits(0i)));
    return 0u;
}

fn func_2() -> Struct_1 {
    global4 = array<Struct_1, 20>();
    var var_0 = ~u_input.c.wwy;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(global0.a, 8u)], 378f, 1554f)), vec3<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(39198u, 8u)])), global1[_wgslsmith_index_u32(global0.a, 8u)], -195f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1034f, -678f, global1[_wgslsmith_index_u32(var_0.x, 8u)]) + vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 8u)], -1344f, global1[_wgslsmith_index_u32(109155u, 8u)]))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(15986u, 8u)], 579f, global1[_wgslsmith_index_u32(global0.a, 8u)]), vec3<f32>(global1[_wgslsmith_index_u32(global0.a, 8u)], -1000f, global1[_wgslsmith_index_u32(var_0.x, 8u)])) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(484f, global1[_wgslsmith_index_u32(78590u, 8u)], -1511f), vec3<f32>(-703f, global1[_wgslsmith_index_u32(global0.a, 8u)], -278f)))))));
    global2 = -33588i;
    var var_2 = Struct_1(var_0.x, false, -2147483647i);
    return Struct_1(~reverseBits(func_3(Struct_1(var_0.x, false, global0.c), var_0.x >> (var_0.x % 32u), firstTrailingBit(global0.c))), false, 1i);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = func_2();
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(72431u, ~arg_1.a), 20u)];
    var var_2 = Struct_1(_wgslsmith_mod_u32((firstLeadingBit(4294967295u) << (u_input.a % 32u)) & _wgslsmith_div_u32(~var_1.a, func_2().a), 93788u), true, min(var_1.c, -(~_wgslsmith_clamp_i32(var_0.c, -1i, 56279i))));
    var var_3 = vec3<bool>(any(select(vec2<bool>(false, any(vec3<bool>(true, var_2.b, false))), select(!vec2<bool>(var_1.b, false), vec2<bool>(true, true), vec2<bool>(true, var_2.b)), true)), !(var_0.b & arg_1.b), false);
    return max(_wgslsmith_dot_vec3_u32(~select(u_input.c.zzz, firstLeadingBit(u_input.c.wxy), any(vec2<bool>(var_3.x, false))), u_input.c.yxx), arg_1.a);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: vec3<f32>) -> i32 {
    let var_0 = global3[_wgslsmith_index_u32(11351u, 27u)];
    global0 = global4[_wgslsmith_index_u32(32627u, 20u)];
    global1 = array<f32, 8>();
    global4 = array<Struct_1, 20>();
    var var_1 = _wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.d.zy), (vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 18901i), vec2<i32>(arg_1, 40918i))) ^ vec2<i32>(arg_1, arg_1));
    return 1i;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    var var_0 = func_2();
    global4 = array<Struct_1, 20>();
    global4 = array<Struct_1, 20>();
    var var_1 = Struct_1(67564u, var_0.b, 3443i);
    let var_2 = u_input.d;
    return u_input.d.wxz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = !vec2<bool>(!global0.b, global0.b);
    global4 = array<Struct_1, 20>();
    let var_2 = ~((select(_wgslsmith_mod_u32(75590u, u_input.a), ~global0.a, select(false, var_1.x, global0.b)) >> (~(~93456u) % 32u)) & abs(min(~34117u, u_input.a)));
    var var_3 = global1[_wgslsmith_index_u32(global0.a, 8u)];
    var var_4 = vec4<i32>(global0.c, _wgslsmith_clamp_i32(_wgslsmith_add_i32(firstLeadingBit(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.d.x, 21634i, -23278i), u_input.d | u_input.d)), ~13549i, 1i ^ _wgslsmith_dot_vec4_i32(u_input.d, _wgslsmith_div_vec4_i32(u_input.d, vec4<i32>(51821i, -1i, 2147483647i, -14422i)))), 1i, -(~5131i));
    let var_5 = 129f;
    let var_6 = func_5(Struct_1(1u, global0.b, -2147483647i), ~func_4(var_5, var_4.x << (func_1(vec4<f32>(var_5, global1[_wgslsmith_index_u32(21724u, 8u)], global1[_wgslsmith_index_u32(global0.a, 8u)], -1161f), Struct_1(global0.a, var_1.x, var_4.x)) % 32u), -(~u_input.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(568f, 1303f, global1[_wgslsmith_index_u32(66061u, 8u)]) + vec3<f32>(576f, global1[_wgslsmith_index_u32(30694u, 8u)], 308f)), vec3<f32>(-639f, 1000f, var_5))));
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_5, var_5, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(var_2, 8u)]))))), _wgslsmith_f_op_f32(f32(-1f) * -214f)), vec3<i32>(_wgslsmith_dot_vec3_i32(reverseBits(var_6), u_input.d.zxy), func_5(func_2(), u_input.d.x << (64439u % 32u)).x, var_4.x) << (vec3<u32>(_wgslsmith_mod_u32(global0.a, 1u) ^ 0u, min(4294967295u, ~4294967295u), _wgslsmith_mod_u32(u_input.a, 0u) ^ 0u) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-724f, global1[_wgslsmith_index_u32(var_2, 8u)], global0.b)) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(9336u, 8u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 8u)]) + 976f))), _wgslsmith_mod_vec3_u32(vec3<u32>(~(~35214u), ~reverseBits(1u), _wgslsmith_sub_u32(_wgslsmith_div_u32(28628u, u_input.a), var_2)), u_input.c.wxw), global1[_wgslsmith_index_u32(max(func_2().a, 1u), 8u)]);
}

