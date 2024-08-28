struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(1528f, 257f, 1000f, -898f, 708f, -1000f, -651f, 467f, -339f, -514f);

var<private> global1: vec2<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>) -> bool {
    let var_0 = ~(~firstTrailingBit(vec4<u32>(~0u, 23524u, _wgslsmith_div_u32(4294967295u, global1.x), 27849u)));
    let var_1 = 484f;
    let var_2 = Struct_2(Struct_1(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(select(true, false, true), true, all(vec3<bool>(false, true, true))), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-483f, 679f) + vec2<f32>(-1000f, -2431f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1595f, global0[_wgslsmith_index_u32(var_0.x, 10u)])))), _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(0u, global1.x), vec2<u32>(var_0.x, var_0.x))), max(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 42699u), var_0.yy), vec2<u32>(global1.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0, arg_0, select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1)))));
    var var_3 = var_2.a;
    global1 = vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.zyw, vec3<u32>(10305u, ~var_3.c, ~u_input.a.x) >> (~u_input.a % vec3<u32>(32u))), var_3.c);
    return !var_2.a.a.x;
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_1(vec3<bool>(select(func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], 1133f, global0[_wgslsmith_index_u32(global1.x, 10u)], 1312f), vec4<f32>(-1060f, global0[_wgslsmith_index_u32(27584u, 10u)], -430f, global0[_wgslsmith_index_u32(1u, 10u)]), false))), !all(vec4<bool>(true, false, false, false)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), !(!all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(19067u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]) + vec2<f32>(-855f, global0[_wgslsmith_index_u32(global1.x, 10u)])))), vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a.x, 10u)] * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 10u)] - global0[_wgslsmith_index_u32(global1.x, 10u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 10u)] - global0[_wgslsmith_index_u32(4294967295u, 10u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(65656u, 10u)]), global0[_wgslsmith_index_u32(53577u, 10u)] == global0[_wgslsmith_index_u32(1u, 10u)]))), ~_wgslsmith_add_u32(1711u, u_input.a.x) <= ~u_input.a.x)), ~(~0u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.xx), 1u, ~u_input.a.x), vec3<u32>(abs(0u), global1.x, 0u)) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(43619u, 10u)], global0[_wgslsmith_index_u32(global1.x, 10u)]) - vec4<f32>(-420f, -566f, -158f, global0[_wgslsmith_index_u32(28686u, 10u)])))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 10u)], -580f, 679f, global0[_wgslsmith_index_u32(u_input.a.x, 10u)])) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(26831u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], 518f, global0[_wgslsmith_index_u32(global1.x, 10u)])))))), 1272f);
    var var_1 = countOneBits(vec3<u32>(reverseBits(global1.x), u_input.a.x, var_0.c));
    var var_2 = u_input.b.x & _wgslsmith_mult_i32(u_input.b.x, -40681i);
    var_2 = _wgslsmith_mod_i32(~u_input.b.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(min(-8208i, u_input.b.x) ^ (i32(-1i) * -44341i), _wgslsmith_sub_i32(~0i, -30870i)), u_input.b.x >> (33624u % 32u), -_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, -1i))));
    let var_3 = var_0.a.zy;
    return vec2<u32>(_wgslsmith_clamp_u32(73509u, global1.x, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global1.x, var_1.x, var_0.c), vec4<u32>(var_0.c, 44756u, var_1.x, global1.x)) ^ ~var_1.x)), ~_wgslsmith_mod_u32(firstTrailingBit(var_0.c ^ 4294967295u), 96514u));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<bool>, arg_3: vec4<i32>) -> Struct_2 {
    global1 = ~(func_2() & u_input.a.xz);
    global0 = array<f32, 10>();
    global1 = max(~vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(34008u ^ arg_0, ~arg_0)), ~abs(u_input.a.yz) | ~u_input.a.zx);
    return Struct_2(Struct_1(!arg_2.zzw, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(global1.x, 10u)], 411f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(530f, global0[_wgslsmith_index_u32(1u, 10u)]), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)])))), vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, 1u), 10u)], -702f))), 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 10u)], 802f, global0[_wgslsmith_index_u32(4294967295u, 10u)], -1000f)))), 1161f));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> bool {
    var var_0 = Struct_3(36840u, vec3<i32>(_wgslsmith_sub_i32(arg_0, u_input.b.x), arg_0, reverseBits(-27001i) | _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-2147483647i, -15396i, -1i)), vec3<i32>(arg_0, arg_0, arg_0))));
    var_0 = Struct_3(1u, vec3<i32>(var_0.b.x << (4294967295u % 32u), var_0.b.x | _wgslsmith_add_i32(~0i, 55278i), -53809i));
    global1 = _wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.a.xz, select(~u_input.a.zz, ~vec2<u32>(21414u, var_0.a), vec2<bool>(arg_1.a.a.x, true))), _wgslsmith_mod_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(u_input.a.zy, u_input.a.zz, vec2<u32>(1u, arg_1.a.c))), firstLeadingBit(~(~vec2<u32>(1u, 0u)))));
    var var_1 = Struct_3(~(~(~func_2().x)), vec3<i32>(firstTrailingBit(-(i32(-1i) * -1i)), var_0.b.x >> (reverseBits(u_input.a.x) % 32u), 1i));
    var var_2 = vec3<u32>(1u, reverseBits(~_wgslsmith_mult_u32(1u, 35090u)), _wgslsmith_clamp_u32(arg_1.a.c, ~global1.x, ~(~(var_1.a >> (u_input.a.x % 32u)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec3<bool>(true, all(vec2<bool>(true, false)) & true, true), select(vec3<bool>(false, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), !func_4(u_input.b.x, func_1(22096u, -1i, vec4<bool>(true, true, false, true), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.x, 11527u), 10u)])), 1489f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(32653u, 10u)]), vec2<f32>(-830f, global0[_wgslsmith_index_u32(37211u, 10u)]), vec2<bool>(false, false))))))), _wgslsmith_clamp_u32(select(~46306u, 45672u, false == all(vec3<bool>(false, false, true))), 1u, firstTrailingBit(firstLeadingBit(40345u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(global1.x, 10u)]) * -909f) - global0[_wgslsmith_index_u32(72780u, 10u)]), _wgslsmith_f_op_f32(1000f - 586f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(min(~8227u, 0u), 10u)], 293f), global0[_wgslsmith_index_u32(global1.x, 10u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) + global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 10u)])));
    global0 = array<f32, 10>();
    let var_1 = _wgslsmith_sub_i32(u_input.b.x, 1i);
    let var_2 = select(vec4<bool>(var_0.a.x, all(select(var_0.a, var_0.a, all(vec2<bool>(true, var_0.a.x)))), var_0.a.x, true), vec4<bool>(true, var_0.a.x, var_0.a.x, !(!any(vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x)))), vec4<bool>(!(!all(var_0.a)), firstTrailingBit(~var_1) != _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 0i, -10591i), vec3<i32>(31686i, var_1, u_input.b.x)), !any(!var_0.a.xy), all(vec3<bool>(u_input.b.x != -1i, true, true))));
    let var_3 = func_1(_wgslsmith_clamp_u32(global1.x, u_input.a.x, ~_wgslsmith_clamp_u32(~global1.x, _wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(var_0.c, u_input.a.x)), ~global1.x)), u_input.b.x, !vec4<bool>(!any(var_0.a), !(41440u >= global1.x), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(1u, 10u)])) != _wgslsmith_f_op_f32(step(520f, var_0.e)), !(var_0.c > 4294967295u)), vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(53782i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, -2147483647i, -23963i)) | abs(0i), -var_1, abs(~(-var_1)), -var_1 >> (abs(abs(26684u)) % 32u))).a;
    var_0 = Struct_1(vec3<bool>(false, false, var_3.a.x), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-788f, var_3.d.x)) - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 10u)], var_0.b.x)), _wgslsmith_f_op_f32(floor(2738f))), -291f), 17425u, var_3.d, _wgslsmith_f_op_f32(trunc(var_0.e)));
    let var_4 = u_input.b & reverseBits(vec2<i32>(_wgslsmith_div_i32(21234i, u_input.b.x) >> ((global1.x | global1.x) % 32u), u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a.yy), min(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(21528u, 1u, var_3.c)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(36758u, 1u, 29530u), u_input.a, ~vec3<u32>(u_input.a.x, 4294967295u, 0u)), vec3<u32>(u_input.a.x, 44216u << (var_0.c % 32u), 48420u))));
}

