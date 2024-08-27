struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: array<u32, 3>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<f32> {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-208f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-666f, -1227f, true)))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-589f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1445f), -1000f))));
    global0 = array<i32, 3>();
    var var_2 = select(vec3<bool>(!var_0, all(vec3<bool>(true, true, !var_0)), var_0), select(select(select(!vec3<bool>(true, true, var_0), select(vec3<bool>(false, var_0, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), !(!vec3<bool>(true, false, var_0)), select(!vec3<bool>(var_0, var_0, false), select(vec3<bool>(true, true, var_0), vec3<bool>(var_0, false, var_0), var_0), var_0)), vec3<bool>(var_0 || !var_0, select(true, true, var_0 || false), max(global0[_wgslsmith_index_u32(u_input.a, 3u)], 1i) != -25012i), select(vec3<bool>(var_0 != var_0, var_0, false), select(vec3<bool>(false, false, var_0), vec3<bool>(false, var_0, var_0), false), false)), !select(select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, true), false), vec3<bool>(false, true, var_0), true), vec3<bool>(!var_0, true, global1[_wgslsmith_index_u32(u_input.a, 3u)] >= u_input.a), select(vec3<bool>(var_0, false, true), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, true, false), vec3<bool>(var_0, false, var_0)), select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, true, var_0)))));
    var var_3 = Struct_2(vec3<u32>(max(~(u_input.a << (u_input.a % 32u)), ~global1[_wgslsmith_index_u32(~27907u, 3u)]), global1[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(u_input.a, 20870u, global1[_wgslsmith_index_u32(11349u, 3u)]), ~global1[_wgslsmith_index_u32(u_input.a, 3u)]), 3u)] << (global1[_wgslsmith_index_u32(8618u, 3u)] % 32u), u_input.a), u_input.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -1856f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1396f, var_1) + vec2<f32>(240f, 1482f)))))), all(!select(vec3<bool>(var_2.x, var_0, var_0), vec3<bool>(true, var_0, false), false)) || !var_0, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -1000f) * vec2<f32>(232f, var_1)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1151f, -1020f) * vec2<f32>(-1000f, 1000f)))), max(u_input.a << (_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 1u, global1[_wgslsmith_index_u32(u_input.a, 3u)]) % 32u), u_input.a)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -404f, 655f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(553f, var_3.e.a.x, 533f))), vec3<f32>(var_1, -449f, var_1), vec3<bool>(var_3.d, var_0, var_0))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(308f, -967f, -1580f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_3.c.x) * vec3<f32>(-1192f, 1000f, var_1)))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-143f, -1744f, -204f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-601f, 1304f, -1624f)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(var_1)), 1072f, 1055f)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>) -> vec2<f32> {
    var var_0 = Struct_1(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(110f))))), u_input.a);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), -1077f), _wgslsmith_div_vec2_f32(arg_0.xx, var_0.a)))), ~_wgslsmith_sub_u32(select(~24877u, countOneBits(61661u), all(vec4<bool>(false, true, true, true))), 4294967295u));
    let var_2 = Struct_2(firstLeadingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b, global1[_wgslsmith_index_u32(var_0.b, 3u)], 1u) ^ vec3<u32>(72489u, var_0.b, var_1.b), vec3<u32>(72197u, 1u, global1[_wgslsmith_index_u32(var_0.b, 3u)]) ^ vec3<u32>(4294967295u, var_1.b, global1[_wgslsmith_index_u32(49863u, 3u)]))), abs(18838u), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(995f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)))))), false, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(681f, _wgslsmith_f_op_f32(arg_0.x * -229f))), 0u));
    var var_3 = 0u;
    var var_4 = select(select(select(vec3<bool>(var_2.d, var_2.a.x < u_input.a, var_2.d), !select(vec3<bool>(true, var_2.d, false), vec3<bool>(var_2.d, true, var_2.d), vec3<bool>(var_2.d, var_2.d, var_2.d)), select(vec3<bool>(var_2.d, false, true), vec3<bool>(false, true, false), vec3<bool>(false, var_2.d, false))), !(!(!vec3<bool>(true, var_2.d, true))), select(select(!vec3<bool>(var_2.d, var_2.d, var_2.d), vec3<bool>(true, false, var_2.d), vec3<bool>(var_2.d, var_2.d, var_2.d)), !(!vec3<bool>(var_2.d, true, true)), select(vec3<bool>(var_2.d, false, true), select(vec3<bool>(true, var_2.d, false), vec3<bool>(true, true, true), true), false))), vec3<bool>(false, !var_2.d, false), select(select(!select(vec3<bool>(true, var_2.d, false), vec3<bool>(true, var_2.d, var_2.d), var_2.d), !vec3<bool>(var_2.d, true, var_2.d), vec3<bool>(var_2.d, var_2.d, true | var_2.d)), select(vec3<bool>(var_2.d, false, var_2.a.x <= 32208u), !(!vec3<bool>(false, var_2.d, var_2.d)), vec3<bool>(var_2.d, var_2.d, true)), select(select(vec3<bool>(true, false, var_2.d), select(vec3<bool>(var_2.d, false, var_2.d), vec3<bool>(false, var_2.d, false), var_2.d), true), !select(vec3<bool>(false, false, false), vec3<bool>(var_2.d, false, var_2.d), vec3<bool>(false, var_2.d, false)), vec3<bool>(select(var_2.d, false, var_2.d), true, any(vec4<bool>(false, var_2.d, var_2.d, var_2.d))))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x - var_0.a.x)), _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x))), 1282f);
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(-1174f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(992f + -1683f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-957f, -113f, false)))));
    let var_1 = Struct_2(abs(vec3<u32>(max(global1[_wgslsmith_index_u32(u_input.a, 3u)], _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)], u_input.a)), 31164u, _wgslsmith_sub_u32(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 3u)]))), ~1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3()))), abs(select(vec4<i32>(6683i, global0[_wgslsmith_index_u32(13202u, 3u)], 1i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a, 3u)], -51264i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], 3u)], 3u)], 3u)]), false))))), any(vec4<bool>(true, select(true, true, false), true, global0[_wgslsmith_index_u32(u_input.a, 3u)] >= -69697i)) | true, Struct_1(var_0.zz, global1[_wgslsmith_index_u32(u_input.a, 3u)]));
    global1 = array<u32, 3>();
    let var_2 = Struct_2(vec3<u32>(min(global1[_wgslsmith_index_u32(0u >> (_wgslsmith_mult_u32(26654u, global1[_wgslsmith_index_u32(5341u, 3u)]) % 32u), 3u)], 1u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 44533u, 1u, 0u), vec4<u32>(1u, var_1.a.x, 6549u, u_input.a), vec4<bool>(var_1.d, false, var_1.d, var_1.d)), ~vec4<u32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 3u)], 4294967295u)) ^ ~_wgslsmith_clamp_u32(5897u, 120983u, 56022u), _wgslsmith_dot_vec2_u32(var_1.a.zz, ~countOneBits(var_1.a.yz))), (global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~u_input.a, ~11045u), 3u)] >> (_wgslsmith_dot_vec3_u32(select(var_1.a, vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 3u)], var_1.e.b, 1u), vec3<bool>(false, var_1.d, var_1.d)), ~var_1.a) % 32u)) ^ ~(global1[_wgslsmith_index_u32(~0u, 3u)] & 61663u), var_0.xx, all(vec4<bool>(!all(vec4<bool>(var_1.d, false, false, var_1.d)), true, true, select(var_1.d || var_1.d, true, !var_1.d))), var_1.e);
    var var_3 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_1.c.x, var_1.e.a.x))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(var_0, vec3<f32>(-2481f, 1000f, -2450f)))))), vec4<i32>(global0[_wgslsmith_index_u32(abs(reverseBits(var_2.e.b)), 3u)], firstLeadingBit(global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(56234u, 3u)], 3u)]), _wgslsmith_dot_vec2_i32(-vec2<i32>(11968i, global0[_wgslsmith_index_u32(1u, 3u)]), vec2<i32>(0i, 4038i)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(25802u, 3u)], global0[_wgslsmith_index_u32(8194u, 3u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], -57356i), vec4<i32>(-38420i, global0[_wgslsmith_index_u32(141336u, 3u)], 6055i, -73353i)), ~748i)))).x > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(469f * 453f)));
    return var_1;
}

fn func_1() -> Struct_1 {
    global0 = array<i32, 3>();
    var var_0 = func_2();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(577f, -372f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.a.x * var_0.c.x)), var_0.e.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1568f - var_0.c.x), 2344f, var_0.d))));
    var var_2 = select(!select(!select(vec2<bool>(true, false), vec2<bool>(var_0.d, var_0.d), false), !vec2<bool>(var_0.d, var_0.d), !select(vec2<bool>(true, true), vec2<bool>(var_0.d, var_0.d), false)), vec2<bool>(u_input.a == 25053u, ~u_input.a == 44184u), vec2<bool>(!(!(false | var_0.d)), true));
    global0 = array<i32, 3>();
    return Struct_1(vec2<f32>(var_1.x, var_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(15833u, var_0.a.x, firstTrailingBit(abs(81480u)), 4294967295u), ~max(~vec4<u32>(var_0.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(82592u, 3u)], 3u)], var_0.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12435u, 3u)], 3u)]), abs(vec4<u32>(u_input.a, 94292u, global1[_wgslsmith_index_u32(var_0.b, 3u)], 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~global1[_wgslsmith_index_u32(1u, 3u)]);
    global1 = array<u32, 3>();
    let var_1 = vec2<i32>(-abs(~(i32(-1i) * -27072i)), (i32(-1i) * -15064i) ^ max(2147483647i, firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0, global1[_wgslsmith_index_u32(0u, 3u)], u_input.a), 3u)])));
    let var_2 = func_1();
    var var_3 = !select(!vec2<bool>(true, u_input.a != global1[_wgslsmith_index_u32(var_0, 3u)]), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), select(false, true, !all(vec4<bool>(false, false, true, false))));
    var var_4 = ~vec2<i32>(min(-(global0[_wgslsmith_index_u32(25645u, 3u)] ^ var_1.x), ~var_1.x), 38281i);
    var var_5 = abs(~_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(33802i, -2147483647i, 6348i, 2147483647i)), vec4<i32>(var_4.x, var_4.x, 57690i, 0i)));
    global1 = array<u32, 3>();
    var var_6 = select(!(!vec2<bool>(var_3.x | var_3.x, false)), select(!vec2<bool>(!var_3.x, var_3.x), !select(vec2<bool>(false, false), select(vec2<bool>(true, var_3.x), vec2<bool>(true, var_3.x), vec2<bool>(true, true)), 52478u <= var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.a.x)), 2088f) != var_2.a.x), select(vec2<bool>((var_3.x && var_3.x) & !var_3.x, !(var_4.x == 1i)), !vec2<bool>(all(vec3<bool>(true, var_3.x, false)), var_3.x), !select(!vec2<bool>(var_3.x, var_3.x), !vec2<bool>(var_3.x, true), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.a.x)) + _wgslsmith_f_op_f32(min(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, 1000f))))), abs(~vec4<u32>(_wgslsmith_add_u32(var_0, u_input.a), _wgslsmith_sub_u32(var_2.b, 40085u), global1[_wgslsmith_index_u32(4294967295u, 3u)] ^ 0u, countOneBits(var_0))), vec2<f32>(1174f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3()).x * -132f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -412f), _wgslsmith_f_op_f32(min(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-123f + var_2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2068f, _wgslsmith_f_op_f32(round(var_2.a.x))))), vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.a.x, -1148f), func_1().a.x, select(false, true, false))) + 790f), 270f));
}

