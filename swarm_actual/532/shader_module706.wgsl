struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<bool, 15>;

var<private> global2: array<bool, 20> = array<bool, 20>(false, true, false, true, true, false, false, false, false, true, true, false, false, true, false, false, false, true, true, false);

var<private> global3: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>) -> vec3<u32> {
    global2 = array<bool, 20>();
    global1 = array<bool, 15>();
    global2 = array<bool, 20>();
    return firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.a, 1u, u_input.a)), _wgslsmith_div_u32(u_input.a, u_input.c.x)) | 746u, 0u, abs(_wgslsmith_clamp_u32(67715u, 12678u, 4294967295u) >> (_wgslsmith_mod_u32(0u, u_input.a) % 32u))));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_add_u32(global0.x | 37619u, countOneBits(global0.x)), -(~u_input.d) == arg_0, ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, ~u_input.c.x, firstTrailingBit(u_input.a)), ~func_3(vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(81928u, 20u)]), vec4<i32>(u_input.d, u_input.d, u_input.d, -2147483647i))), select(!select(global3[_wgslsmith_index_u32(countOneBits(global0.x), 23u)], select(global3[_wgslsmith_index_u32(u_input.a, 23u)], vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], global1[_wgslsmith_index_u32(1u, 15u)], false, global1[_wgslsmith_index_u32(97981u, 15u)]), true), 0u > u_input.b), !(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(global0.x, 20u)], true, global2[_wgslsmith_index_u32(1u, 20u)]))), !select(select(global3[_wgslsmith_index_u32(u_input.c.x, 23u)], global3[_wgslsmith_index_u32(93801u, 23u)], global2[_wgslsmith_index_u32(0u, 20u)]), select(global3[_wgslsmith_index_u32(u_input.c.x, 23u)], vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b, 15u)], true), global1[_wgslsmith_index_u32(36137u, 15u)]), global2[_wgslsmith_index_u32(max(6749u, global0.x), 20u)])), _wgslsmith_dot_vec4_i32(vec4<i32>(-54224i, _wgslsmith_clamp_i32(20506i, -arg_0, ~10595i), max(30090i, -arg_0), 18861i), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.d, arg_0, -1i, u_input.d), -vec4<i32>(27606i, arg_0, u_input.d, 23064i))));
    var var_1 = var_0.b;
    let var_2 = select(var_0.d.zyw, vec3<bool>(true & any(!vec3<bool>(global2[_wgslsmith_index_u32(9448u, 20u)], var_0.d.x, global2[_wgslsmith_index_u32(4294967295u, 20u)])), var_0.b, true), select(!var_0.d.zzy, var_0.d.yzx, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(16806u, var_0.c.x), 89930u), 20u)]));
    var var_3 = vec4<bool>(var_2.x, false, !global2[_wgslsmith_index_u32(global0.x, 20u)], ((_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.xx) < _wgslsmith_div_u32(1u, u_input.b)) | !global2[_wgslsmith_index_u32(1u, 20u)]) && (true | global1[_wgslsmith_index_u32(22732u, 15u)]));
    let var_4 = var_2.x;
    return -(reverseBits(-vec3<i32>(14685i, -2147483647i, -2147483647i)) ^ vec3<i32>(max(u_input.d, 2147483647i), -var_0.e, -47259i));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec4<bool>(true, true, false, arg_3.d.x);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(219f + -986f))), 333f)));
    var var_2 = 9373u & arg_3.a;
    global0 = vec3<u32>(~firstLeadingBit(~(32107u >> (0u % 32u))), ~func_3(!vec4<bool>(true, var_0.x, false, false), -vec4<i32>(arg_3.e, u_input.d, -1i, 0i)).x << (0u % 32u), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4294967295u, _wgslsmith_mod_u32(55202u, 39453u), arg_3.c.x ^ 22967u)), ~u_input.c));
    var var_3 = Struct_1(_wgslsmith_sub_u32(arg_3.c.x, ~(arg_3.a | ~global0.x)), var_0.x, u_input.c, vec4<bool>(arg_1, arg_1, !any(!var_0.xzx), true), u_input.d);
    return Struct_2(arg_3, vec2<bool>(all(select(!var_0.yyx, !vec3<bool>(global2[_wgslsmith_index_u32(56115u, 20u)], var_3.b, false), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_3.c.x), arg_3.c.yy), 20u)])), _wgslsmith_mult_i32(var_3.e & u_input.d, 23751i) == arg_3.e), Struct_1(var_3.a, !all(select(global3[_wgslsmith_index_u32(u_input.a, 23u)], vec4<bool>(true, var_0.x, false, global2[_wgslsmith_index_u32(0u, 20u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(var_3.a, 20u)], var_3.d.x, false))), u_input.c, !(!select(vec4<bool>(var_0.x, false, true, false), arg_3.d, false)), -(-2147483647i & u_input.d)), abs(max(_wgslsmith_div_vec2_u32(u_input.c.yx, vec2<u32>(178u, 0u)) & vec2<u32>(var_3.a, var_3.a), min(~u_input.c.xy, ~global0.xz))), select(max(vec4<i32>(~28429i, u_input.d, _wgslsmith_div_i32(-2147483647i, arg_3.e), u_input.d), ~(~vec4<i32>(50247i, arg_2.x, 16567i, arg_2.x))), abs(-(vec4<i32>(2147483647i, 1i, -2147483647i, var_3.e) << (vec4<u32>(29770u, arg_3.a, 4294967295u, 1u) % vec4<u32>(32u)))), select(select(select(arg_3.d, vec4<bool>(var_0.x, false, false, global2[_wgslsmith_index_u32(16852u, 20u)]), arg_3.d), var_3.d, select(arg_3.d, arg_3.d, global1[_wgslsmith_index_u32(u_input.c.x, 15u)])), vec4<bool>(!var_0.x, var_3.d.x || false, false, all(vec2<bool>(var_3.b, true))), var_3.d)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec4<bool>) -> bool {
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * 837f) + _wgslsmith_f_op_f32(abs(-417f)))), arg_2.x, select(firstTrailingBit(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.d, -15639i, u_input.d), ~vec3<i32>(u_input.d, 21915i, u_input.d))), func_2(abs(abs(44224i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(436f, arg_0.x, -1337f, -143f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-611f, arg_0.x, arg_0.x, arg_0.x) + arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(arg_0.x, arg_0.x, -1148f, -787f)) + _wgslsmith_f_op_vec4_f32(floor(arg_0)))), !select(-1406f >= arg_0.x, global2[_wgslsmith_index_u32(1u, 20u)], !arg_1.x)), Struct_1(_wgslsmith_sub_u32(~global0.x, u_input.a) << (1250u % 32u), all(vec2<bool>(true, true)), _wgslsmith_sub_vec3_u32(u_input.c, u_input.c) << (min(u_input.c, ~u_input.c) % vec3<u32>(32u)), vec4<bool>(true, arg_2.x, any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], true)), false), 1i));
    let var_1 = Struct_1(var_0.d.x, !global2[_wgslsmith_index_u32(~(abs(global0.x) << ((var_0.d.x | var_0.a.a) % 32u)), 20u)], vec3<u32>(_wgslsmith_mod_u32(var_0.a.a, ~56516u), func_4(_wgslsmith_f_op_f32(2192f * arg_0.x), false, ~vec3<i32>(u_input.d, -58953i, u_input.d), var_0.c).c.c.x, abs(func_4(-1010f, var_0.a.b & true, -var_0.e.zwx, var_0.a).d.x)), arg_2, _wgslsmith_dot_vec2_i32(-func_2(-u_input.d, _wgslsmith_f_op_vec4_f32(-arg_0), arg_0).xz, abs(func_2(-var_0.a.e, _wgslsmith_f_op_vec4_f32(step(arg_0, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -489f))), _wgslsmith_f_op_vec4_f32(-arg_0)).xy)));
    let var_2 = var_1;
    global3 = array<vec4<bool>, 23>();
    var var_3 = firstTrailingBit(vec4<u32>(~12596u, var_2.c.x, ~(~(~4294967295u)), var_1.a));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~12629i;
    global3 = array<vec4<bool>, 23>();
    var var_1 = func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-846f, -293f, -1688f, 484f)) - vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-279f, -150f, -470f, 125f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(756f, -606f, -208f, -698f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-458f, 1273f, 867f, 2316f), vec4<f32>(810f, 1382f, -309f, 718f), false)))), !vec4<bool>(all(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(u_input.a, 20u)])), true, global1[_wgslsmith_index_u32(firstLeadingBit(global0.x), 15u)], !global1[_wgslsmith_index_u32(31699u, 15u)]))), !select(select(select(vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 20u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 15u)]), global1[_wgslsmith_index_u32(global0.x, 15u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 20u)], global1[_wgslsmith_index_u32(u_input.a, 15u)]), global1[_wgslsmith_index_u32(global0.x, 15u)]), select(!vec2<bool>(global1[_wgslsmith_index_u32(0u, 15u)], false), vec2<bool>(false, global2[_wgslsmith_index_u32(40692u, 20u)]), vec2<bool>(true, true)), !global2[_wgslsmith_index_u32(~1u, 20u)]), !(!global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), u_input.c)), 23u)]));
    let var_2 = abs(~select(vec4<u32>(global0.x, 41468u, 22690u, 17478u), abs(vec4<u32>(global0.x, 1u, 38255u, global0.x)), select(global3[_wgslsmith_index_u32(10464u, 23u)], vec4<bool>(global2[_wgslsmith_index_u32(29938u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)], true, false), global1[_wgslsmith_index_u32(u_input.b, 15u)]))) >> (_wgslsmith_sub_vec4_u32(reverseBits(~vec4<u32>(0u, 1u, global0.x, 2127u) ^ ~vec4<u32>(14360u, 9713u, u_input.b, u_input.a)), vec4<u32>(1u, ~firstLeadingBit(21196u), min(_wgslsmith_sub_u32(51969u, 31541u), firstLeadingBit(0u)), ~global0.x)) % vec4<u32>(32u));
    let var_3 = Struct_1(countOneBits(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.b, 0u, 4294967295u)) ^ var_2.x), global2[_wgslsmith_index_u32(0u, 20u)], ~var_2.wwy, vec4<bool>(_wgslsmith_f_op_f32(max(1302f, _wgslsmith_f_op_f32(f32(-1f) * -871f))) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(300f)), -451f)), false, any(!select(global3[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(var_2.x, 23u)], global1[_wgslsmith_index_u32(var_2.x, 15u)])), global1[_wgslsmith_index_u32(1u, 15u)]), (~func_4(-1000f, global1[_wgslsmith_index_u32(var_2.x, 15u)], vec3<i32>(-17298i, 12845i, -28156i), Struct_1(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 15u)], var_2.xxy, global3[_wgslsmith_index_u32(global0.x, 23u)], 1i)).c.e << (u_input.b % 32u)) >> (select(u_input.a, _wgslsmith_add_u32(global0.x, 0u) >> ((global0.x ^ 4294967295u) % 32u), select(true, true, global1[_wgslsmith_index_u32(~32092u, 15u)])) % 32u));
    let var_4 = !((_wgslsmith_f_op_f32(min(-1000f, -209f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1132f)))) != global2[_wgslsmith_index_u32((_wgslsmith_dot_vec3_u32(var_2.zyx, var_3.c) << (~1u % 32u)) >> (_wgslsmith_mod_u32(var_2.x, var_3.c.x) % 32u), 20u)]);
    global0 = ~_wgslsmith_mod_vec3_u32(u_input.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(~4294967295u, abs(var_3.c.x), ~var_3.a), vec3<u32>(4294967295u, ~var_3.c.x, 1u), vec3<u32>(~global0.x, global0.x, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_2.wzx) & ~(~select(var_3.c, var_2.ywy, var_3.d.xyz)), var_2.x, 42064i, -_wgslsmith_sub_i32(0i, 11981i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -269f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f))))));
}

