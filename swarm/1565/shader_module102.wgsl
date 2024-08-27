struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<i32>(-13058i, 27593i, 50440i, 2147483647i)), Struct_1(vec4<i32>(-25659i, 0i, i32(-2147483648), i32(-2147483648))), Struct_1(vec4<i32>(-1i, i32(-2147483648), -24187i, 0i)), Struct_1(vec4<i32>(2147483647i, 13750i, 2147483647i, 10488i)), Struct_1(vec4<i32>(2147483647i, 1i, -41086i, -5635i)), Struct_1(vec4<i32>(-19927i, -1i, 2147483647i, 2147483647i)), Struct_1(vec4<i32>(-79285i, 2273i, 11893i, -50367i)), Struct_1(vec4<i32>(0i, 1667i, 0i, -19580i)), Struct_1(vec4<i32>(-1584i, 1i, 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(-71088i, 49214i, 2147483647i, -4420i)), Struct_1(vec4<i32>(-8703i, 2147483647i, i32(-2147483648), 2147483647i)), Struct_1(vec4<i32>(-1i, 29792i, 2147483647i, 12256i)), Struct_1(vec4<i32>(-1i, 13407i, -13728i, -1i)));

var<private> global2: u32 = 4294967295u;

var<private> global3: array<bool, 20> = array<bool, 20>(true, true, true, true, false, true, true, true, false, true, true, true, false, false, true, false, true, false, false, true);

var<private> global4: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f), -618f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global3[_wgslsmith_index_u32(4294967295u, 20u)])) - 310f)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = -736f;
    let var_1 = Struct_1(_wgslsmith_div_vec4_i32(firstTrailingBit(global4.a), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 2147483647i & u_input.b, -2147483647i, 2147483647i), -global4.a << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))));
    global4 = Struct_1(countOneBits(global4.a & vec4<i32>(_wgslsmith_div_i32(global4.a.x, u_input.b), ~global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(1154u, 7u)] ^ 0i, _wgslsmith_clamp_i32(31921i, 22717i, u_input.b))));
    let var_2 = u_input.a.x;
    global3 = array<bool, 20>();
    return -1012f;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: u32) -> vec3<bool> {
    let var_0 = vec3<f32>(369f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<i32>(arg_0, 6961i, arg_1, -1i), global1[_wgslsmith_index_u32(1u, 13u)])) + _wgslsmith_f_op_f32(func_3(true))))), _wgslsmith_div_f32(2186f, _wgslsmith_f_op_f32(-682f - -599f)))), 204f);
    global2 = ~arg_3;
    global3 = array<bool, 20>();
    global3 = array<bool, 20>();
    global0 = array<i32, 7>();
    return !vec3<bool>(var_0.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -887f)), arg_2, true);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: bool) -> u32 {
    global0 = array<i32, 7>();
    global3 = array<bool, 20>();
    var var_0 = arg_3 | (!select(false, any(arg_0.zz), arg_1.x) | true);
    let var_1 = global1[_wgslsmith_index_u32(~arg_2.x ^ 64759u, 13u)];
    var var_2 = ~(~min(max(~1754u, ~39996u), arg_2.x >> (~arg_2.x % 32u)));
    return max(arg_2.x, ~(~arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(select(!func_1(-26374i, global4.a.x, true, 18773u), vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 9245u), vec2<u32>(31674u, 47658u)), 20u)], all(vec3<bool>(global3[_wgslsmith_index_u32(74515u, 20u)], global3[_wgslsmith_index_u32(50581u, 20u)], false)), global3[_wgslsmith_index_u32(12365u, 20u)]), any(!vec4<bool>(global3[_wgslsmith_index_u32(14594u, 20u)], global3[_wgslsmith_index_u32(0u, 20u)], false, true))), !func_1(global0[_wgslsmith_index_u32(~0u, 7u)], _wgslsmith_sub_i32(1i, -11254i), false, ~53438u), global3[_wgslsmith_index_u32(0u, 20u)] || (~86202u >= _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 20146u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u)))), vec2<bool>(all(select(select(vec4<bool>(false, global3[_wgslsmith_index_u32(5728u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<bool>(global3[_wgslsmith_index_u32(39873u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)], true, global3[_wgslsmith_index_u32(4294967295u, 20u)]), true), vec4<bool>(global3[_wgslsmith_index_u32(60919u, 20u)], global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(1u, 20u)], global3[_wgslsmith_index_u32(16411u, 20u)]), true)), global3[_wgslsmith_index_u32(reverseBits(abs(max(0u, 45917u))), 20u)]), ~firstTrailingBit(~select(vec4<u32>(1u, 40173u, 1u, 0u), vec4<u32>(1u, 43147u, 0u, 4294967295u), vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 20u)], true, false))), all(!select(vec3<bool>(false, false, true), vec3<bool>(global3[_wgslsmith_index_u32(78182u, 20u)], false, global3[_wgslsmith_index_u32(46654u, 20u)]), vec3<bool>(global3[_wgslsmith_index_u32(10364u, 20u)], true, global3[_wgslsmith_index_u32(30707u, 20u)]))) == all(select(select(vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(29467u, 20u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(0u, 20u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 20u)], false, global3[_wgslsmith_index_u32(52701u, 20u)])), !vec4<bool>(global3[_wgslsmith_index_u32(34292u, 20u)], global3[_wgslsmith_index_u32(33214u, 20u)], global3[_wgslsmith_index_u32(53866u, 20u)], true), u_input.a.x > global4.a.x)));
    global3 = array<bool, 20>();
    global4 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(max(u_input.a.x, u_input.b), -global4.a.x), -global0[_wgslsmith_index_u32(4294967295u, 7u)] | -global0[_wgslsmith_index_u32(var_0, 7u)], u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-global4.a.x, -u_input.b, i32(-1i) * -34810i, 0i), abs(vec4<i32>(-19793i, 63641i, global4.a.x, 0i)))));
    let var_1 = Struct_2(vec4<u32>(var_0, 0u, ~(var_0 & ~1u), ~61649u), global1[_wgslsmith_index_u32(113937u, 13u)], _wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(~vec2<u32>(var_0, 83412u), ~vec2<u32>(var_0, 43651u)), max(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0, 41028u), vec2<u32>(var_0, var_0)), ~(~vec2<u32>(var_0, 0u)))), abs(vec2<u32>(func_4(vec3<bool>(global3[_wgslsmith_index_u32(var_0, 20u)], global3[_wgslsmith_index_u32(1u, 20u)], global3[_wgslsmith_index_u32(63016u, 20u)]), vec2<bool>(false, false), vec4<u32>(12786u, 18413u, 0u, var_0), global3[_wgslsmith_index_u32(var_0, 20u)]) >> (~46987u % 32u), 44759u >> (var_0 % 32u))), -151f);
    var var_2 = global1[_wgslsmith_index_u32(~func_4(!vec3<bool>(global3[_wgslsmith_index_u32(~42771u, 20u)], !global3[_wgslsmith_index_u32(0u, 20u)], !global3[_wgslsmith_index_u32(var_1.d.x, 20u)]), select(vec2<bool>(true, func_1(global4.a.x, global0[_wgslsmith_index_u32(0u, 7u)], global3[_wgslsmith_index_u32(43347u, 20u)], 0u).x), !(!vec2<bool>(global3[_wgslsmith_index_u32(var_0, 20u)], global3[_wgslsmith_index_u32(var_1.c.x, 20u)])), vec2<bool>(true, true)), _wgslsmith_mod_vec4_u32(~var_1.a, firstTrailingBit(vec4<u32>(48601u, 73857u, 40770u, var_1.a.x))), !(~var_1.a.x >= var_1.c.x)), 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.zyy, vec3<i32>(abs(global0[_wgslsmith_index_u32(34543u, 7u)]) ^ global0[_wgslsmith_index_u32(4294967295u, 7u)], _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, global4.a.x, -2147483647i), global4.a.yww), global4.a.x));
}

