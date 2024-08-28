struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<f32, 15> = array<f32, 15>(182f, -356f, -1310f, 2563f, 652f, 1164f, -1000f, 161f, -489f, -393f, 1285f, 840f, -1000f, -1157f, 128f);

var<private> global2: array<vec3<i32>, 18>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    global2 = array<vec3<i32>, 18>();
    global0 = vec3<i32>(_wgslsmith_dot_vec3_i32(-global2[_wgslsmith_index_u32(86204u, 18u)] ^ vec3<i32>(global0.x, 12216i, global0.x), ~vec3<i32>(-8467i, 0i, -2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 20576i, global0.x), firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a, 18u)]), vec3<i32>(global0.x, global0.x, -59770i)), _wgslsmith_div_vec3_i32(global2[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global0.x, 0i), vec3<i32>(global0.x, 25173i, 0i)))), ~abs(0i)) ^ abs(vec3<i32>(1i | _wgslsmith_sub_i32(global0.x, 0i), -1i, _wgslsmith_mult_i32(-3779i, -global0.x)));
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(135f))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1978f);
    global2 = array<vec3<i32>, 18>();
    return ~u_input.a >= ~(~(~u_input.a));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(!vec3<bool>(func_3(), !any(vec2<bool>(true, true)), true));
    var var_1 = vec3<i32>(global0.x, select(11899i, -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-3446i, 29505i), global0.x, 1i), var_0.a.x || !(global0.x >= -9346i)), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(1i), -1i, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), global0.zz)), ~vec4<i32>(-8105i, global0.x, global0.x, global0.x) ^ min(vec4<i32>(1i, global0.x, 36148i, 1i), vec4<i32>(-9580i, 1i, global0.x, global0.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)], 1792f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(13669u, 15u)], global1[_wgslsmith_index_u32(89270u, 15u)], -731f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(41564u, 15u)], -1396f, global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)])))))));
    let var_3 = countOneBits(firstTrailingBit(u_input.a));
    var_1 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, (global0.x & -16160i) >> (1u % 32u), 1i & var_1.x), global2[_wgslsmith_index_u32(0u, 18u)] >> (vec3<u32>(_wgslsmith_sub_u32(23095u, 0u), 26060u, _wgslsmith_add_u32(var_3, u_input.a)) % vec3<u32>(32u)));
    return !(!select(!var_0.a, select(var_0.a, select(vec3<bool>(false, false, var_0.a.x), var_0.a, var_0.a.x), all(vec2<bool>(true, var_0.a.x))), select(select(var_0.a, var_0.a, vec3<bool>(var_0.a.x, true, false)), var_0.a, !var_0.a)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = 3450u;
    global1 = array<f32, 15>();
    var var_1 = !(!func_2());
    var var_2 = 6861u;
    var var_3 = select(var_1.zy, vec2<bool>(false, any(vec2<bool>(true, !var_1.x))), arg_0.x <= _wgslsmith_f_op_f32(select(-872f, _wgslsmith_f_op_f32(max(-2008f, global1[_wgslsmith_index_u32(~u_input.a, 15u)])), true)));
    return Struct_2(Struct_1(!vec3<bool>(true, false, 689f == arg_0.x)), Struct_1(!(!func_2())));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = vec2<bool>(!arg_3.a.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(arg_1.xww), arg_1.wyy), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(arg_1, arg_1), ~21143u)) != (arg_2.x | reverseBits(arg_2.x)));
    global0 = -countOneBits(_wgslsmith_sub_vec3_i32(global2[_wgslsmith_index_u32(~4294967295u, 18u)], vec3<i32>(_wgslsmith_mod_i32(-80620i, 9858i), -17065i, _wgslsmith_dot_vec4_i32(vec4<i32>(12805i, arg_0, global0.x, -1i), vec4<i32>(global0.x, -11111i, 180i, global0.x)))));
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(4294967295u), _wgslsmith_div_u32(u_input.a, ~(countOneBits(0u) >> (_wgslsmith_dot_vec2_u32(arg_1.zz, vec2<u32>(25242u, 12760u)) % 32u)))), 18u)];
    let var_1 = Struct_2(func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(374f, global1[_wgslsmith_index_u32(64487u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)], -1048f)), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], -164f, -195f, _wgslsmith_f_op_f32(min(652f, 114f))), any(func_2().zy)))).b, arg_3.a);
    return Struct_1(!var_1.b.a);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = Struct_3(4294967295u, 904f, Struct_1(func_4(1i, vec4<u32>(8669u, min(27365u, u_input.a), ~u_input.a, 10075u >> (u_input.a % 32u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 4294967295u, u_input.a), ~vec3<u32>(0u, u_input.a, 17301u)), arg_0).a), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a, 54393u, u_input.a, 4294967295u)) >> (vec4<u32>(0u, u_input.a << (u_input.a % 32u), u_input.a, ~u_input.a) % vec4<u32>(32u)), vec4<u32>(~_wgslsmith_div_u32(u_input.a, 4294967295u), ~1u, abs(4294967295u << (0u % 32u)), 82110u), vec4<u32>(u_input.a, _wgslsmith_sub_u32(_wgslsmith_mult_u32(15126u, u_input.a), firstLeadingBit(4294967295u)), ~u_input.a & firstTrailingBit(1u), 0u)));
    global0 = global2[_wgslsmith_index_u32(abs(~(~u_input.a) >> (4294967295u % 32u)), 18u)];
    global2 = array<vec3<i32>, 18>();
    return min(-global0.zy, vec2<i32>(37639i, ~global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, true);
    var var_1 = vec2<i32>(-_wgslsmith_add_i32(-_wgslsmith_mod_i32(2147483647i, -1i), -global0.x), ~64821i);
    var_1 = func_5(Struct_2(func_4(-max(global0.x, -11226i), ~vec4<u32>(u_input.a, 79082u, u_input.a, u_input.a), vec3<u32>(15250u, _wgslsmith_div_u32(u_input.a, 0u), 26832u | u_input.a), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2373f, global1[_wgslsmith_index_u32(u_input.a, 15u)], 1000f, global1[_wgslsmith_index_u32(u_input.a, 15u)])))), Struct_1(vec3<bool>(true | var_0.x, true, func_1(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], 429f, global1[_wgslsmith_index_u32(u_input.a, 15u)], 1000f)).a.a.x))), Struct_1(vec3<bool>(false, var_0.x, false)));
    global0 = vec3<i32>(-_wgslsmith_div_i32(var_1.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, -1i), -50561i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global0.xz, global0.zy), vec2<i32>(0i, -80626i)), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, global0.x)) ^ firstTrailingBit(~global0.x), 70522i);
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-683f, global1[_wgslsmith_index_u32(0u, 15u)], 550f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1221f, 492f, global1[_wgslsmith_index_u32(88599u, 15u)])))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 15u)]), _wgslsmith_f_op_f32(min(-598f, global1[_wgslsmith_index_u32(u_input.a, 15u)])), _wgslsmith_f_op_f32(select(-1001f, global1[_wgslsmith_index_u32(u_input.a, 15u)], var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(73026u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)])), vec3<f32>(1000f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(56548u, 15u)] + 214f), _wgslsmith_f_op_f32(f32(-1f) * -548f)))))));
    global2 = array<vec3<i32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, -938f)))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(45643u, 15u)])), abs(abs(firstTrailingBit(-2147483647i)) >> (u_input.a % 32u)), 6612i, abs(firstTrailingBit(vec4<i32>(79784i, global0.x, 32425i, -2475i) ^ select(vec4<i32>(global0.x, -1i, 1i, 430i), vec4<i32>(-3293i, -20392i, 1i, 0i), vec4<bool>(false, var_0.x, var_0.x, var_0.x)))));
}

