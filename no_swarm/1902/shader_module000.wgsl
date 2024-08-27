struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 18> = array<i32, 18>(2147483647i, -1i, -17143i, 1i, -47051i, 0i, 2147483647i, -54452i, -48156i, 19392i, 11136i, 1i, 1i, i32(-2147483648), 75954i, 2147483647i, 34128i, 1i);

var<private> global2: array<Struct_1, 19>;

var<private> global3: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> bool {
    global1 = array<i32, 18>();
    global3 = array<vec4<bool>, 25>();
    global1 = array<i32, 18>();
    var var_0 = Struct_1(any(!vec3<bool>(true, global0.a, true)), vec3<i32>(~(~(~global1[_wgslsmith_index_u32(5158u, 18u)])), -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-19085i, u_input.a, global1[_wgslsmith_index_u32(1u, 18u)], -1i), vec4<i32>(u_input.a, -66211i, global0.b.x, global0.b.x)), -vec4<i32>(u_input.a, global0.b.x, 1i, 8978i)), global1[_wgslsmith_index_u32(~countOneBits(1u), 18u)]));
    var var_1 = max(_wgslsmith_clamp_vec4_i32(vec4<i32>(~0i, _wgslsmith_sub_i32(~(-1i), u_input.a >> (53435u % 32u)), var_0.b.x, 1i), vec4<i32>(u_input.a, ~0i, select(u_input.a, 0i, false), -var_0.b.x) << (reverseBits(vec4<u32>(112135u, 0u, 28673u, 4294967295u)) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-36808i, -2147483647i, var_0.b.x, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(-31167i, u_input.a, var_0.b.x, u_input.a), vec4<i32>(-1i, u_input.a, global0.b.x, 35339i)))), abs(-vec4<i32>(global1[_wgslsmith_index_u32(7745u, 18u)], var_0.b.x, global0.b.x, 0i) & -vec4<i32>(1i, 1i, 26394i, var_0.b.x)));
    return all(vec3<bool>(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))) <= arg_1, var_0.a));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<f32> {
    global2 = array<Struct_1, 19>();
    global2 = array<Struct_1, 19>();
    global1 = array<i32, 18>();
    global0 = arg_0;
    var var_0 = vec2<bool>(false, any(select(!vec3<bool>(arg_0.a, false, arg_3.a), select(select(vec3<bool>(false, global0.a, arg_3.a), vec3<bool>(false, arg_0.a, false), vec3<bool>(true, arg_3.a, false)), vec3<bool>(true, true, true), !vec3<bool>(global0.a, arg_3.a, arg_0.a)), !(!arg_0.a))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-424f, -842f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + -167f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(853f)) + 1141f))), _wgslsmith_f_op_f32(482f - 1f));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: vec3<i32>) -> Struct_1 {
    global3 = array<vec4<bool>, 25>();
    var var_0 = _wgslsmith_sub_vec4_i32(-vec4<i32>(-arg_0.b.x, u_input.a, ~(-1i), firstLeadingBit(1i)), vec4<i32>(~(-1i), -u_input.a, u_input.a, ~_wgslsmith_add_i32(arg_0.b.x, global0.b.x))) << (select(vec4<u32>(~49332u, _wgslsmith_div_u32(1u, 35373u & arg_1), select(25349u, ~0u, arg_2.x), ~10760u), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 1u, arg_1, arg_1), vec4<u32>(65992u, 17548u, arg_1, 1u))), arg_0.a == !func_2(vec3<f32>(-226f, -1050f, 779f), 236f)) % vec4<u32>(32u));
    var var_1 = Struct_2(vec4<bool>(arg_0.a, true && arg_2.x, true, true), Struct_1(!(!(!arg_0.a)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 1i, _wgslsmith_div_i32(-1i, 5683i)), (vec3<i32>(1i, 2147483647i, 0i) | global0.b) << (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, 0u, 1u), vec3<u32>(arg_1, 4294967295u, arg_1)) % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(true, -vec3<i32>(var_0.x, -25864i, u_input.a)), arg_1, reverseBits(firstTrailingBit(vec2<u32>(arg_1, 29242u))), arg_0)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(656f, -971f, -979f, -516f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1269f, -1210f, -1932f, -1870f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-798f, 822f, 2403f, 194f)), vec4<f32>(-1644f, 764f, -1000f, 121f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2114f, 495f, -620f, 848f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-706f, 506f, -337f, 279f)))))));
    global3 = array<vec4<bool>, 25>();
    return Struct_1(select(true && (_wgslsmith_clamp_u32(35772u, arg_1, 13980u) > arg_1), any(!(!var_1.a.xxx)), false), arg_3);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> u32 {
    let var_0 = !select(select(arg_2.a, select(arg_2.a, !global3[_wgslsmith_index_u32(44835u, 25u)], vec4<bool>(true, true, true, true)), true), arg_2.a, select(arg_2.a, !(!arg_2.a), !arg_2.a));
    let var_1 = firstLeadingBit(~(~(~select(77704u, 0u, false))));
    global3 = array<vec4<bool>, 25>();
    global0 = Struct_1(true | global0.a, vec3<i32>(~arg_0.b.x, func_1(func_1(Struct_1(true, arg_2.b.b), ~29230u, vec2<bool>(true, var_0.x), -vec3<i32>(1i, u_input.a, arg_2.b.b.x)), 1u, vec2<bool>(arg_0.a && false, !global0.a), abs(global0.b)).b.x, u_input.a));
    var var_2 = !(!(!vec4<bool>(false & var_0.x, arg_0.a == arg_2.b.a, all(vec3<bool>(arg_2.a.x, true, global0.a)), global0.a)));
    return _wgslsmith_mult_u32(var_1, _wgslsmith_div_u32(min(reverseBits(var_1), 1u), 0u)) >> (var_1 % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1254f, _wgslsmith_div_f32(-1549f, -674f)), 879f)) * -164f), 313f);
    var var_1 = Struct_2(global3[_wgslsmith_index_u32(func_4(func_1(Struct_1(global0.a, global0.b | global0.b), firstLeadingBit(~0u), select(!vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, false), global0.a), abs(_wgslsmith_clamp_vec3_i32(global0.b, global0.b, vec3<i32>(global0.b.x, global1[_wgslsmith_index_u32(71749u, 18u)], 35407i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x)))), Struct_2(global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 14930u, 72429u), vec4<u32>(4294967295u, 4294967295u, 42038u, 1u))), 25u)], Struct_1(true, vec3<i32>(global1[_wgslsmith_index_u32(0u, 18u)], global0.b.x, global0.b.x)))), 25u)], Struct_1(true, vec3<i32>(-31906i, ~u_input.a >> ((0u << (1u % 32u)) % 32u), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~35476u, 1u), 18u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~max(~vec4<u32>(4294967295u, 68751u, 0u, 69956u), ~vec4<u32>(28763u, 2759u, 41566u, 1u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~select(vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(4294967295u, 46128u, 32729u, 44979u), true), vec4<u32>(1u, 1u, 1u, 1u))), ~(var_1.b.b ^ vec3<i32>(-global0.b.x, 10303i >> (1u % 32u), _wgslsmith_div_i32(global0.b.x, 1i))));
}

