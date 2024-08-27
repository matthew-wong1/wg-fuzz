struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<f32, 4> = array<f32, 4>(-1000f, 596f, 114f, -747f);

var<private> global2: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> bool {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(31054u, 4294967295u)), max(max(vec2<u32>(0u, 0u), vec2<u32>(36085u, 0u)), ~vec2<u32>(1u, 867u)), ~vec2<u32>(1u, 1u)), ~(~vec2<u32>(81726u, 12826u))), 4u)], vec4<f32>(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(min(~30016u, ~66092u), 4u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(5562u, 4u)]))) - _wgslsmith_f_op_f32(1070f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(63168u, 4u)] + -688f))), -834f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f - global1[_wgslsmith_index_u32(40411u, 4u)]))))), u_input.a, -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d | 1i, ~46461i, -u_input.a.x, ~38731i), vec4<i32>(1i, 1i, 1i, 1i)), true);
    global2 = select(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(reverseBits(26100u), _wgslsmith_dot_vec4_u32(vec4<u32>(35853u, 4294967295u, 30955u, 0u), vec4<u32>(1u, 4294967295u, 1u, 22127u)), ~1u, ~59705u)), ~select(vec4<u32>(62904u, 54161u, 20716u, 0u), vec4<u32>(1u, 1u, 1u, 1u), !vec4<bool>(false, false, true, var_0.e))), 121282u, !(575f < global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(46123u, 84882u, 19022u, 0u), vec4<u32>(4294967295u, 83309u, 1706u, 1u)), 4u)]));
    global1 = array<f32, 4>();
    var var_1 = select(select(vec4<i32>(_wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(u_input.b, 14056i, 14800i, var_0.c.x)), 1i, 0i, select(-2147483647i, 7290i, var_0.e)), var_0.d, !var_0.e), _wgslsmith_mult_vec4_i32(select(vec4<i32>(3035i, u_input.d, 1i, var_0.d.x), var_0.d, all(vec3<bool>(true, var_0.e, var_0.e))), vec4<i32>(var_0.d.x, -22786i, u_input.b, var_0.d.x) << (select(vec4<u32>(46960u, 4350u, 24254u, 1u), vec4<u32>(37608u, 1u, 0u, 0u), var_0.e) % vec4<u32>(32u))), vec4<bool>(all(vec2<bool>(true, true)), (false || var_0.e) && (u_input.d <= -33822i), !var_0.e | var_0.e, var_0.e)) >> (_wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, 4294967295u, 13212u, 4294967295u)), vec4<u32>(_wgslsmith_sub_u32(15544u >> (0u % 32u), 1u), 1u ^ firstTrailingBit(4294967295u), 1u, 36767u)) % vec4<u32>(32u));
    var var_2 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.b.x, global1[_wgslsmith_index_u32(9025u, 4u)]))) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(32428u, 4u)])) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(59410u, 4u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(23611u, 4u)]) + var_0.a))), 1u <= firstTrailingBit(firstTrailingBit(29381u)), all(vec3<bool>(false, var_1.x <= abs(var_0.c.x), true)));
    return any(var_2.yz);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec3<i32>) -> vec2<bool> {
    global2 = ~abs(1u);
    global1 = array<f32, 4>();
    global2 = max(~72307u | (1u ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(2185u, 27227u), vec2<u32>(39383u, 4294967295u)) ^ 12633u)), _wgslsmith_mod_u32(abs(0u), ~1u));
    global1 = array<f32, 4>();
    let var_0 = any(vec3<bool>(true, arg_1.e, arg_0));
    return !(!vec2<bool>(true, arg_1.e));
}

fn func_2() -> Struct_3 {
    global2 = ~(~6268u);
    var var_0 = select(func_4(!func_3(), Struct_2(1438f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1400f, 247f, 1351f, global1[_wgslsmith_index_u32(39116u, 4u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(392f, global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], 164f)))), ~(~u_input.a), -vec4<i32>(0i, -1i, -1i, 26109i), true), max(abs(vec2<i32>(-1i, 0i) ^ vec2<i32>(14234i, u_input.d)), ~min(vec2<i32>(1i, u_input.c), u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 1i, 1i), (vec3<i32>(1i, u_input.a.x, -1i) | vec3<i32>(u_input.c, -25847i, u_input.b)) & _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.b), vec3<i32>(u_input.a.x, -20751i, -1i)))), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(!(u_input.c <= -595i), true));
    return Struct_3(!vec3<bool>(true, any(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, var_0.x, false), false)), false), Struct_2(-1562f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1111f, global1[_wgslsmith_index_u32(8975u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]) + _wgslsmith_div_vec4_f32(vec4<f32>(-610f, -775f, global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(60253u, 4u)]), vec4<f32>(893f, -456f, -488f, 2500f))), vec4<f32>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(44075u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)])), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(49382u, 4u)])), -445f, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(55333u, 4u)]))))), u_input.a, -vec4<i32>(u_input.c >> (24378u % 32u), firstLeadingBit(u_input.d), u_input.b >> (48135u % 32u), u_input.b), true));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> vec2<bool> {
    global0 = reverseBits(1u);
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-func_2().b.b)));
    global1 = array<f32, 4>();
    let var_1 = func_2().b;
    var var_2 = u_input.c;
    return vec2<bool>(arg_2.b.b.x >= global1[_wgslsmith_index_u32(firstLeadingBit(23742u << (_wgslsmith_dot_vec3_u32(vec3<u32>(11450u, 0u, 1u), vec3<u32>(0u, 26194u, 4294967295u)) % 32u)), 4u)], arg_0);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: bool) -> vec3<f32> {
    var var_0 = func_5(arg_3, Struct_1(6316i), func_2(), Struct_1(abs(_wgslsmith_sub_i32(u_input.c, ~u_input.a.x))));
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~reverseBits(~20961u), 805u, arg_0, ~arg_2), countOneBits(vec4<u32>(0u, arg_2, ~_wgslsmith_div_u32(arg_0, 54658u), abs(arg_0))));
    let var_1 = vec3<i32>(2147483647i, -2147483647i, abs(-1i));
    global2 = ~(~countOneBits(~0u));
    global2 = 36679u;
    return vec3<f32>(-322f, _wgslsmith_f_op_f32(427f + _wgslsmith_f_op_f32(-arg_1)), global1[_wgslsmith_index_u32(firstLeadingBit(0u), 4u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], 1585f, -137f), vec3<f32>(1789f, global1[_wgslsmith_index_u32(1u, 4u)], 159f), false))) - _wgslsmith_f_op_vec3_f32(func_1(~86924u, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]), abs(4294967295u), true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-519f, global1[_wgslsmith_index_u32(54647u, 4u)], 842f), vec3<f32>(850f, -213f, global1[_wgslsmith_index_u32(34293u, 4u)]))) * vec3<f32>(global1[_wgslsmith_index_u32(48537u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(20490u, 4u)])))));
    var var_1 = func_2();
    var_1 = Struct_3(!func_2().a, var_1.b);
    let var_2 = Struct_1(u_input.c);
    var var_3 = var_2;
    global1 = array<f32, 4>();
    let var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1444u), vec2<u32>(0u, 83926u))), reverseBits(~vec3<u32>(1u, 0u, 0u))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)), 0u, 1u), ~(~vec4<u32>(~4294967295u, ~1u, 1u, 82775u >> (0u % 32u))));
    global0 = var_4.x;
    var var_5 = Struct_1(abs(func_2().b.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, 2147483647i, _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(abs(-8885i), abs(1i), 1i, var_2.a)), _wgslsmith_mult_vec4_i32(select(~var_1.b.d, abs(vec4<i32>(-2147483647i, -2147483647i, 1i, 0i)), !vec4<bool>(false, var_1.a.x, false, false)), -vec4<i32>(-13907i, 9425i, var_5.a, var_5.a) ^ var_1.b.d)), firstLeadingBit(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_4.x), vec2<u32>(var_4.x, var_4.x)))) >> (reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(var_4.x, var_4.x) & vec2<u32>(var_4.x, var_4.x), var_4.xy)) % vec2<u32>(32u)));
}

