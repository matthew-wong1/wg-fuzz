struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(4294967295u, 1u, 0u), 49262u);

var<private> global1: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(-1i, 1i), vec2<i32>(12933i, -1i), vec2<i32>(13032i, 87758i), vec2<i32>(i32(-2147483648), -15573i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, -2664i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, 44009i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-23846i, 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(i32(-2147483648), -55092i), vec2<i32>(i32(-2147483648), 19522i), vec2<i32>(29059i, -1i), vec2<i32>(36807i, 0i), vec2<i32>(i32(-2147483648), -22048i), vec2<i32>(0i, 75977i), vec2<i32>(-1i, -48615i), vec2<i32>(-50050i, -23813i), vec2<i32>(1i, 0i), vec2<i32>(1i, -55630i), vec2<i32>(-1i, -30160i), vec2<i32>(-34696i, -24395i), vec2<i32>(0i, -76671i), vec2<i32>(12819i, i32(-2147483648)), vec2<i32>(4885i, i32(-2147483648)), vec2<i32>(2147483647i, 1i), vec2<i32>(30634i, -60971i), vec2<i32>(-6741i, 14339i), vec2<i32>(2147483647i, 2147483647i));

var<private> global2: array<vec2<f32>, 20>;

var<private> global3: array<i32, 5>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec3<i32> {
    global1 = array<vec2<i32>, 31>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global2[_wgslsmith_index_u32(4294967295u, 20u)], vec2<f32>(477f, -550f)))) * global2[_wgslsmith_index_u32(1u, 20u)])), vec3<i32>(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(12933u, 5u)], select(_wgslsmith_sub_i32(u_input.a, -58531i), -2837i, all(vec4<bool>(true, true, true, false))), _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(global0.a.x, 31u)] & vec2<i32>(25229i, 23182i), -global1[_wgslsmith_index_u32(u_input.b.x, 31u)])), 1i, _wgslsmith_div_i32((-32766i & u_input.a) >> (_wgslsmith_mult_u32(53607u, global0.b) % 32u), -14297i)));
    global1 = array<vec2<i32>, 31>();
    var var_1 = _wgslsmith_mod_u32(~24115u, u_input.b.x);
    global3 = array<i32, 5>();
    return vec3<i32>(firstTrailingBit(-(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(global0.a.x, 50145u)), 5u)] ^ _wgslsmith_add_i32(global3[_wgslsmith_index_u32(global0.b, 5u)], 2147483647i))), u_input.a, min(-(i32(-1i) * -28322i) & reverseBits(~var_0.b.x), reverseBits(countOneBits(u_input.a | u_input.a))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> bool {
    let var_0 = !(!select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))));
    let var_1 = !vec2<bool>(true, !(arg_0.a.x == 967f));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(arg_3.b.yy)), _wgslsmith_mod_vec3_i32(vec3<i32>(23686i, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, ~arg_1.b, max(u_input.b.x, u_input.b.x)), 5u)], countOneBits(-1i)), firstLeadingBit(vec3<i32>(40881i, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(25776u, 31u)]), arg_0.b.x))));
    var var_3 = countOneBits(arg_0.b.x);
    var_3 = var_2.b.x;
    return !var_1.x;
}

fn func_2() -> Struct_3 {
    global3 = array<i32, 5>();
    global3 = array<i32, 5>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(381f, 765f)))), _wgslsmith_f_op_f32(-622f + _wgslsmith_f_op_f32(1470f + 420f))));
    let var_1 = vec2<bool>(func_4(Struct_3(vec2<f32>(var_0, _wgslsmith_f_op_f32(f32(-1f) * -376f)), _wgslsmith_mult_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(27023u, 5u)], u_input.a, -1i), vec3<i32>(1i, global3[_wgslsmith_index_u32(u_input.b.x, 5u)], global3[_wgslsmith_index_u32(25836u, 5u)])) & func_3()), Struct_2(~abs(global0.a), firstTrailingBit(40073u)), u_input.a ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-48506i, global3[_wgslsmith_index_u32(global0.b, 5u)]), global1[_wgslsmith_index_u32(0u, 31u)] >> (vec2<u32>(36935u, global0.a.x) % vec2<u32>(32u))), Struct_1(_wgslsmith_mult_vec2_u32(abs(global0.a.xz), _wgslsmith_clamp_vec2_u32(vec2<u32>(31573u, 0u), vec2<u32>(27335u, 1u), u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -675f, -1482f) * vec3<f32>(1000f, var_0, var_0))))), any(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true), all(vec2<bool>(true, false)))));
    var var_2 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-14409i), abs(u_input.a), func_3().x, 1i), -(vec4<i32>(u_input.a, u_input.a, global3[_wgslsmith_index_u32(59396u, 5u)], u_input.a) & vec4<i32>(-1i, 0i, u_input.a, 2147483647i))), max(1i, firstTrailingBit(1i & u_input.a)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0)))), vec3<i32>(~abs(0i), -_wgslsmith_add_i32(-u_input.a, ~(-2147483647i)), ~global3[_wgslsmith_index_u32(min(4294967295u, 92978u), 5u)] | _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(abs(u_input.b.x), 5u)], u_input.a << (u_input.b.x % 32u))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec4<f32>) -> vec4<i32> {
    let var_0 = func_2();
    global0 = Struct_2(vec3<u32>(countOneBits(arg_1 >> (6045u % 32u)), 1u, ~613u ^ _wgslsmith_mod_u32(_wgslsmith_div_u32(global0.b, u_input.b.x), global0.b ^ u_input.b.x)), 7319u);
    global3 = array<i32, 5>();
    var var_1 = ~vec4<u32>(23281u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_mod_u32(u_input.b.x, 55322u)), global0.b), _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(16078u, 1u), ~(~u_input.b.x), u_input.b.x), 1u);
    global1 = array<vec2<i32>, 31>();
    return ~(-reverseBits(vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, -2147483647i) << (countOneBits(vec4<u32>(22356u, 0u, 94781u, var_1.x)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 5>();
    let var_0 = u_input.a;
    global1 = array<vec2<i32>, 31>();
    var var_1 = _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(countOneBits(_wgslsmith_add_i32(-17501i, global3[_wgslsmith_index_u32(6476u, 5u)])), min(var_0, u_input.a ^ -1i), _wgslsmith_clamp_i32(firstLeadingBit(-2147483647i), ~global3[_wgslsmith_index_u32(u_input.b.x, 5u)], _wgslsmith_clamp_i32(var_0, u_input.a, -82121i)), var_0)), reverseBits(func_1(!any(vec3<bool>(true, false, false)), global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(216f, 917f, 2273f, -1714f)))))));
    global1 = array<vec2<i32>, 31>();
    global2 = array<vec2<f32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

