struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20>;

var<private> global1: Struct_2 = Struct_2(false);

var<private> global2: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(38298u, 0u, 4294967295u), vec3<u32>(1u, 18983u, 1u));

var<private> global3: Struct_2 = Struct_2(true);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_1) -> vec4<i32> {
    global0 = array<vec2<f32>, 20>();
    global0 = array<vec2<f32>, 20>();
    var var_0 = countOneBits(-(-min(vec4<i32>(arg_2.b.b, u_input.c.x, u_input.c.x, 73799i), vec4<i32>(2147483647i, arg_3.b, arg_1.a, -2147483647i)) ^ vec4<i32>(~arg_3.b, arg_3.b ^ arg_0.a, arg_1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, -1i, -2147483647i), vec3<i32>(-2147483647i, 2147483647i, 2147483647i)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_2.b.c)));
    let var_2 = Struct_1(!select(!select(vec2<bool>(false, false), arg_3.a, arg_3.a), vec2<bool>(true, true), true), -arg_1.a, vec4<f32>(_wgslsmith_f_op_f32(779f * 413f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-388f * -927f), var_1.x), -528f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-649f, var_1.x, global1.a))) - _wgslsmith_f_op_f32(-var_1.x))));
    return countOneBits(min(abs(vec4<i32>(u_input.c.x, arg_1.a, 1i, var_2.b)) | (_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a, var_2.b, arg_1.a, arg_2.c), vec4<i32>(42431i, var_2.b, arg_0.a, 1i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_2.d.x, u_input.b, u_input.d), vec4<u32>(1u, 10336u, u_input.b, 1u)) % vec4<u32>(32u))), vec4<i32>(-reverseBits(16114i), -54062i, countOneBits(-u_input.c.x), (var_2.b << (arg_2.d.x % 32u)) & arg_1.a)));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_mod_vec4_i32(max(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, arg_0, -32694i, 38500i), vec4<i32>(-1i, 1i, arg_0, -2147483647i), vec4<i32>(arg_0, u_input.c.x, -2147483647i, arg_0)), ~vec4<i32>(-33006i, 33843i, arg_0, arg_0)) ^ vec4<i32>(_wgslsmith_div_i32(0i, u_input.c.x), _wgslsmith_mult_i32(u_input.c.x, arg_0), ~u_input.c.x, u_input.c.x), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(arg_0, u_input.c.x, 18416i, u_input.c.x)), func_3(Struct_3(u_input.c.x), Struct_3(1i), Struct_4(vec3<bool>(true, true, false), Struct_1(vec2<bool>(global3.a, global1.a), 2147483647i, vec4<f32>(258f, 394f, -1069f, -2036f)), u_input.c.x, arg_1.zxx, vec2<f32>(-432f, 471f)), Struct_1(vec2<bool>(global3.a, true), -1i, vec4<f32>(-1000f, 1000f, -1109f, 1000f))))), max(vec4<i32>(-22486i, _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, 1i)), 3427i, ~(-16051i)), min(firstTrailingBit(-vec4<i32>(u_input.c.x, u_input.c.x, -81579i, arg_0)), max(-vec4<i32>(arg_0, arg_0, 49459i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, -1i, u_input.c.x, arg_0), vec4<i32>(arg_0, u_input.c.x, -16166i, -1i))))));
    let var_1 = Struct_4(select(!(!(!vec3<bool>(global3.a, false, false))), vec3<bool>(!arg_2.a || true, false, false), true), Struct_1(!vec2<bool>(-1i > var_0.x, true), var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-445f, 813f, 1198f, -236f), vec4<f32>(1287f, 827f, 801f, 1529f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1083f, 1000f, -592f, -1292f))), !vec4<bool>(true, true, false, global1.a))))), -var_0.x, vec3<u32>(1u >> (arg_1.x % 32u), 89464u, _wgslsmith_dot_vec2_u32(abs(u_input.a ^ u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(39021u, 4294967295u), _wgslsmith_mult_vec2_u32(arg_1.zz, vec2<u32>(arg_1.x, 68510u)), ~vec2<u32>(arg_1.x, 30054u)))), global0[_wgslsmith_index_u32(abs(abs(arg_1.x)), 20u)]);
    let var_2 = select(!vec2<bool>(any(select(vec4<bool>(false, arg_2.a, var_1.a.x, false), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, global1.a), vec4<bool>(false, false, var_1.a.x, arg_2.a))), true), !vec2<bool>(global1.a, !any(vec4<bool>(true, true, true, false))), any(select(!vec4<bool>(true, true, global1.a, global3.a), vec4<bool>(global3.a, true, false, all(var_1.b.a)), select(vec4<bool>(arg_2.a, false, false, true), vec4<bool>(false, var_1.a.x, global1.a, false), vec4<bool>(true, true, true, true)))));
    global1 = arg_2;
    var var_3 = 33925u;
    return _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-51980i, abs(arg_0), u_input.c.x), -1i) <= 2147483647i;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + -394f)), -1000f)) - -1084f), -543f));
    let var_2 = !select(vec3<bool>(func_2(2147483647i, select(vec4<u32>(u_input.a.x, 83261u, u_input.a.x, 0u), vec4<u32>(34088u, u_input.d, u_input.a.x, 4294967295u), vec4<bool>(global1.a, arg_3.a.x, false, false)), Struct_2(global1.a)), global1.a, false), !(!select(vec3<bool>(true, false, true), vec3<bool>(global1.a, arg_3.a.x, false), vec3<bool>(false, true, false))), any(!select(vec3<bool>(global1.a, true, global1.a), vec3<bool>(global1.a, global3.a, true), vec3<bool>(true, true, true))));
    global3 = Struct_2(true);
    let var_3 = Struct_4(var_2, arg_3, firstLeadingBit(_wgslsmith_sub_i32(9461i, 2147483647i)), select(vec3<u32>(10797u, u_input.d, _wgslsmith_mod_u32(u_input.b, ~u_input.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, u_input.b), vec3<u32>(0u, u_input.b, 20376u) << (global2[_wgslsmith_index_u32(u_input.d, 3u)] % vec3<u32>(32u))) ^ ~global2[_wgslsmith_index_u32(min(u_input.b, 51430u), 3u)], func_2(~arg_3.b | abs(18028i), vec4<u32>(u_input.a.x, 80017u, u_input.d, u_input.b) << (vec4<u32>(u_input.d, 30699u, 4294967295u, 0u) % vec4<u32>(32u)), Struct_2(any(vec4<bool>(true, var_2.x, global3.a, global3.a))))), vec2<f32>(arg_3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(572f + arg_3.c.x))))));
    return -(~arg_2.x);
}

fn func_4(arg_0: i32, arg_1: i32) -> Struct_3 {
    let var_0 = -1158f;
    var var_1 = ~u_input.a;
    var var_2 = Struct_3(u_input.c.x);
    let var_3 = Struct_4(!(!select(!vec3<bool>(global1.a, false, true), select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(false, global3.a, true), vec3<bool>(false, global3.a, global3.a)), var_1.x <= var_1.x)), Struct_1(vec2<bool>(any(vec2<bool>(true, global1.a)), !global1.a), max(-u_input.c.x, ~27125i), vec4<f32>(309f, 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), -2147483647i, ~(~(global2[_wgslsmith_index_u32(min(var_1.x, u_input.d), 3u)] & vec3<u32>(0u, 0u, u_input.d))), vec2<f32>(_wgslsmith_f_op_f32(var_0 * var_0), 991f));
    let var_4 = vec4<u32>(_wgslsmith_div_u32(abs(_wgslsmith_mult_u32(1u, var_3.d.x)), _wgslsmith_add_u32(var_1.x, ~1u)), firstTrailingBit(var_1.x), _wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(0u ^ u_input.d, 1u)), min(~1u, 26782u)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_1.x, 6865u) << (~var_3.d.xy % vec2<u32>(32u))), ~vec2<u32>(54514u, 1u)));
    return Struct_3(_wgslsmith_clamp_i32(var_3.c, -arg_0, arg_1));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_4 {
    global3 = Struct_2(!(-_wgslsmith_sub_i32(u_input.c.x, -2147483647i) >= ~func_1(u_input.c.x, vec4<i32>(u_input.c.x, arg_1, -25803i, u_input.c.x), vec3<i32>(-2147483647i, 0i, u_input.c.x), Struct_1(vec2<bool>(false, global3.a), 75409i, vec4<f32>(739f, 1140f, -698f, 1000f)))));
    global0 = array<vec2<f32>, 20>();
    global0 = array<vec2<f32>, 20>();
    let var_0 = Struct_1(vec2<bool>(global3.a, all(!select(vec3<bool>(false, false, true), vec3<bool>(true, global1.a, false), vec3<bool>(true, global1.a, global3.a)))), _wgslsmith_add_i32(-arg_0.a, -27097i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1505f, 135f, 1000f, 527f), vec4<f32>(1667f, 1508f, -956f, -802f)))))));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_u32(~(u_input.a << (u_input.a % vec2<u32>(32u))), u_input.a) <= u_input.b);
    return Struct_4(select(select(vec3<bool>(all(vec4<bool>(var_1.a, false, global3.a, var_0.a.x)), !var_0.a.x, true), vec3<bool>(true, true, true), any(vec3<bool>(true, false, var_1.a))), select(vec3<bool>(true, any(vec3<bool>(false, var_0.a.x, var_0.a.x)), any(vec4<bool>(false, global3.a, false, false))), !select(vec3<bool>(false, var_0.a.x, false), vec3<bool>(global1.a, global3.a, false), true), select(!vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(false, var_1.a, true), !vec3<bool>(false, global1.a, var_0.a.x))), !(!vec3<bool>(var_0.a.x, true, true))), var_0, 0i, firstLeadingBit(global2[_wgslsmith_index_u32(101416u, 3u)]), vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(ceil(-699f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(u_input.c.x, func_1(-2147483647i, ~vec4<i32>(-2147483647i, -14892i, 1i, 2147483647i) & max(vec4<i32>(u_input.c.x, 0i, 73024i, -50909i), vec4<i32>(-1i, -1i, 1i, -15012i)), vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, 33860i, 43994i), Struct_1(!vec2<bool>(false, global1.a), u_input.c.x, vec4<f32>(-1214f, 682f, -154f, 299f)))), min(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(30357i, 0i, -18128i), vec3<i32>(0i, -6414i, u_input.c.x)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, u_input.c.x), vec3<i32>(1i, u_input.c.x, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-31218i, 2147483647i, u_input.c.x), vec3<i32>(349i, 34404i, 24506i))), ~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), 1i));
    let var_1 = _wgslsmith_f_op_vec4_f32(var_0.b.c - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.b.c), vec4<f32>(994f, -108f, var_0.e.x, -1359f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 206f, -873f, 543f) + var_0.b.c), false))));
    let var_2 = func_5(func_4(i32(-1i) * -18594i, reverseBits(i32(-1i) * -1i)), -1i).b;
    let var_3 = func_5(func_4(-56550i, _wgslsmith_mod_i32(firstLeadingBit(1i), -var_0.c)), -2147483647i);
    let var_4 = Struct_2(global3.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_2.b, _wgslsmith_div_i32((var_2.b ^ -2147483647i) & abs(-8471i), -(~u_input.c.x)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_2.b | 24748i, 0i), var_2.b, 1i), firstTrailingBit(1i)));
}

