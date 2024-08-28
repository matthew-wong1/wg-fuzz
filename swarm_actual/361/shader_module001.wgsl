struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false));

var<private> global1: vec4<u32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> u32 {
    global0 = array<vec4<bool>, 30>();
    global0 = array<vec4<bool>, 30>();
    return global1.x;
}

fn func_3() -> vec2<u32> {
    let var_0 = global0[_wgslsmith_index_u32(~countOneBits(global1.x), 30u)];
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(161f * -348f), _wgslsmith_f_op_f32(trunc(-485f))))), _wgslsmith_f_op_f32(round(1399f))), ~1u, 1i, ~_wgslsmith_mod_i32(max(u_input.a.x, -1i) << (_wgslsmith_clamp_u32(global1.x, global1.x, global1.x) % 32u), -1480i), ~(1i << (global1.x % 32u)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1556f * _wgslsmith_f_op_f32(abs(var_1.a)))), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a))));
    let var_3 = vec3<u32>(3570u, ~(~48819u ^ ~var_1.b) << (max(111308u, var_1.b) % 32u), 1u);
    var_2 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(select(-1563f, var_1.a, !(!any(vec4<bool>(true, var_0.x, false, true))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(var_2.x - 1145f)), 1000f, var_0.x)));
    return countOneBits(global1.yz);
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: i32) -> vec4<u32> {
    var var_0 = global0[_wgslsmith_index_u32(~38689u, 30u)];
    var var_1 = max(~_wgslsmith_sub_u32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(665f, 917f, -1526f) * vec3<f32>(2042f, 1366f, -667f)), !var_0.x), 53897u), _wgslsmith_dot_vec2_u32(global1.yx, ~arg_1.zy));
    let var_2 = var_0.zwx;
    let var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(arg_1.xy, _wgslsmith_add_vec2_u32(~arg_1.zy, func_3())), global1.zw) | _wgslsmith_mult_vec2_u32(~max(reverseBits(global1.wy), countOneBits(vec2<u32>(1u, arg_1.x))), _wgslsmith_mult_vec2_u32(global1.yz, vec2<u32>(~global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 102928u, 4294967295u), arg_1))));
    global0 = array<vec4<bool>, 30>();
    return vec4<u32>(~abs(func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-412f, 241f, 1029f), vec3<f32>(582f, -1000f, -371f))), true)), global1.x, ~arg_1.x, ~(var_3.x & 4294967295u));
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = vec4<bool>(max(u_input.a.x, ~(~0i)) != abs(_wgslsmith_dot_vec2_i32(~u_input.a, _wgslsmith_mult_vec2_i32(vec2<i32>(46513i, u_input.a.x), u_input.a))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.zyy, vec3<u32>(arg_0.x, 18461u, 25153u), vec3<u32>(13077u, arg_0.x, global1.x)), _wgslsmith_mult_vec3_u32(arg_0.xzz, global1.zxx)) <= max(arg_0.x, arg_0.x), all(vec2<bool>(true, true)), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1581f)))), -1167f)));
    global0 = array<vec4<bool>, 30>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(274f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.x, var_1.x), var_1.x)))), arg_0.x, -(i32(-1i) * -_wgslsmith_mod_i32(u_input.a.x, 2147483647i)), _wgslsmith_sub_i32(-54429i, -1i), firstTrailingBit(0i));
    var var_3 = Struct_1(var_1.x, ~(~95831u), _wgslsmith_dot_vec2_i32(firstLeadingBit(~(u_input.a & u_input.a)), u_input.a), var_2.d, 14115i);
    return Struct_1(_wgslsmith_f_op_f32(var_3.a - 385f), _wgslsmith_add_u32(func_3().x, 1u), -var_2.e, ~1i, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(select(var_2.c, abs(u_input.a.x), any(global0[_wgslsmith_index_u32(global1.x, 30u)])), i32(-1i) * -25745i)));
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = -1i;
    let var_1 = !vec4<bool>(true, all(global0[_wgslsmith_index_u32(arg_0.b, 30u)]), true, true);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(181f)) - -731f), 681f, _wgslsmith_f_op_f32(arg_0.a * arg_0.a)))));
    global0 = array<vec4<bool>, 30>();
    let var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~(~(-1i)), var_0, -5912i, u_input.a.x), ~vec4<i32>(-24179i, -7557i, u_input.a.x, var_0) << ((reverseBits(vec4<u32>(arg_0.b, arg_0.b, global1.x, global1.x)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(26976u, arg_0.b, global1.x, 81060u), vec4<u32>(4294967295u, arg_0.b, 4294967295u, global1.x), vec4<u32>(arg_0.b, arg_0.b, global1.x, arg_0.b)) % vec4<u32>(32u))) % vec4<u32>(32u))), ~(i32(-1i) * -8977i), ~(~_wgslsmith_dot_vec2_i32(u_input.a, ~u_input.a)));
    return _wgslsmith_sub_i32(~reverseBits(select(firstTrailingBit(var_3.x), i32(-1i) * -1i, true)), select(reverseBits(arg_0.e), _wgslsmith_sub_i32(i32(-1i) * -6994i, ~firstLeadingBit(var_3.x)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(countOneBits(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(36495i, -23636i, u_input.a.x, 1i)), vec4<i32>(0i, u_input.a.x, u_input.a.x, -2147483647i) & _wgslsmith_sub_vec4_i32(vec4<i32>(49105i, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -3869i, u_input.a.x, u_input.a.x)))), func_5(func_4(~func_1(u_input.a.x, vec3<u32>(global1.x, global1.x, global1.x), u_input.a.x))));
    global1 = _wgslsmith_mult_vec4_u32(min(vec4<u32>(_wgslsmith_mod_u32(80180u, 4294967295u), ~global1.x, 54192u, 0u) << (~countOneBits(vec4<u32>(43333u, 55418u, 1u, global1.x)) % vec4<u32>(32u)), firstLeadingBit(~firstTrailingBit(vec4<u32>(global1.x, global1.x, global1.x, global1.x)))), ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(4294967295u, global1.x, 34070u, 68007u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(global1.x, global1.x, 0u, global1.x)), reverseBits(vec4<u32>(1u, 13938u, global1.x, global1.x)))));
    var var_1 = func_4(~(~select(vec4<u32>(global1.x, global1.x, 7807u, global1.x), vec4<u32>(31490u, 1u, global1.x, global1.x), vec4<bool>(false, true, true, false))) >> (_wgslsmith_add_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, global1.x, 1u, 4294967295u), vec4<u32>(global1.x, 40260u, 1u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 9803u, global1.x, global1.x), vec4<u32>(34962u, 1u, global1.x, global1.x)), false), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global1.x, 0u, global1.x) ^ vec4<u32>(global1.x, 0u, 6090u, global1.x), _wgslsmith_mod_vec4_u32(vec4<u32>(4370u, 1u, global1.x, 26010u), vec4<u32>(global1.x, global1.x, 36688u, 0u)))) % vec4<u32>(32u)));
    var var_2 = func_4(~(vec4<u32>(~var_1.b, global1.x, min(var_1.b, 0u), ~global1.x) ^ (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b, global1.x, global1.x, 20589u), vec4<u32>(7634u, 17017u, global1.x, var_1.b), vec4<u32>(global1.x, var_1.b, 41112u, 37300u)) & vec4<u32>(25518u, 4294967295u, 1u, 1u))));
    var var_3 = -37237i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_1.a, _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(func_2(vec3<f32>(-1053f, -1918f, var_1.a), true), global1.x, global1.x), abs(var_1.b) << (func_2(vec3<f32>(var_1.a, -138f, -594f), false) % 32u)) << (global1.x % 32u), 5510u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.a, 878f))) + _wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(func_4(vec4<u32>(var_2.b, global1.x, var_1.b, 4294967295u) & vec4<u32>(global1.x, 94u, 30427u, 1u)).a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-135f)))))));
}

