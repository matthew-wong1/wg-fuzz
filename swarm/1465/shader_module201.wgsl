struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(true, true, true, false, false, true, false, true, true, true, true, true, true, true, false, true, false, false, false, true, true, false, true, true, true, false, true);

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 1714f, 148f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(421f, arg_2, -2369f) + vec3<f32>(518f, 1000f, arg_2))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(339f, var_0.x, 1569f) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_2, 871f, arg_2), vec3<f32>(-779f, -948f, -431f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -703f, arg_2) - vec3<f32>(arg_2, 432f, -101f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, arg_2, arg_2), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -1226f, arg_2), vec3<f32>(var_0.x, -1127f, var_0.x)))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1239f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    var var_1 = _wgslsmith_add_vec2_i32(-vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, -50561i, arg_1.a), abs(u_input.a.x)) ^ vec2<i32>(2147483647i, i32(-1i) * -2147483647i), u_input.a.xy);
    var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(countOneBits(i32(-1i) * -9408i), u_input.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(1i ^ select(var_1.x, 22660i, arg_1.e), u_input.a.x), ~(~(u_input.a.yy & u_input.a.yx))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(-min(u_input.a.xz, u_input.a.zx), u_input.a.zx), ~(~_wgslsmith_mult_vec2_i32(u_input.a.yz, vec2<i32>(var_1.x, 22994i)))));
    let var_2 = 32276i > _wgslsmith_div_i32(arg_1.a, ~(-var_1.x) >> (countOneBits(firstTrailingBit(arg_1.b)) % 32u));
    return arg_0.x || false;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = vec4<bool>(true, arg_1.x, false, arg_1.x);
    let var_1 = arg_0;
    global1 = vec3<bool>(global1.x, true, true);
    var var_2 = abs(_wgslsmith_mod_vec2_u32(~(~(vec2<u32>(arg_2.d, 0u) << (vec2<u32>(arg_2.d, 1u) % vec2<u32>(32u)))), min(~(~vec2<u32>(arg_2.d, 74896u)), vec2<u32>(4294967295u, 779u ^ arg_2.d))));
    let var_3 = true;
    return !(var_0.x == (false & !(u_input.a.x >= 24386i)));
}

fn func_2() -> Struct_1 {
    return Struct_1(u_input.a.x, ~0u, all(vec3<bool>(global1.x, true, true)) || func_4(_wgslsmith_mult_i32(u_input.a.x, i32(-1i) * -3366i), select(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 27u)], true), vec2<bool>(global1.x, global1.x), func_3(vec3<bool>(global1.x, global0[_wgslsmith_index_u32(1u, 27u)], false), Struct_1(-19576i, 53804u, true, 4294967295u, global0[_wgslsmith_index_u32(13049u, 27u)]), 856f)), Struct_1(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), ~0u, -1988i == u_input.a.x, min(0u, 0u), true), -u_input.a.x), 0u, !any(vec3<bool>(true, global1.x | global0[_wgslsmith_index_u32(2863u, 27u)], true)));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<f32>) -> f32 {
    var var_0 = func_2();
    let var_1 = arg_1.x & (var_0.e && arg_1.x);
    let var_2 = func_3(vec3<bool>(func_2().c, func_2().e, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_0.d, var_0.d), 27u)]), Struct_1(-var_0.a, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(68816u, var_0.d, var_0.b), vec3<u32>(4294967295u, var_0.d, var_0.b))), !global1.x, max(5353u, 69799u), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x)))) & (any(vec3<bool>(!arg_1.x, all(arg_1), var_0.c)) && any(select(!vec4<bool>(var_1, false, false, true), vec4<bool>(var_0.e, var_1, global1.x, arg_1.x), true)));
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    return _wgslsmith_f_op_f32(f32(-1f) * -131f);
}

fn func_5(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = global1.xx;
    var var_1 = u_input.a.x;
    var var_2 = vec4<i32>(-1i) * -vec4<i32>(2147483647i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x) >> (_wgslsmith_mult_u32(arg_1.x, arg_1.x) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) >> (_wgslsmith_sub_u32(arg_1.x, 0u) % 32u), u_input.a.x);
    let var_3 = !select(!vec3<bool>(!var_0.x, any(vec4<bool>(global1.x, global0[_wgslsmith_index_u32(2305u, 27u)], false, true)), var_2.x != u_input.a.x), !select(select(vec3<bool>(global1.x, false, false), vec3<bool>(var_0.x, false, global0[_wgslsmith_index_u32(0u, 27u)]), vec3<bool>(var_0.x, false, false)), !vec3<bool>(var_0.x, false, global0[_wgslsmith_index_u32(arg_1.x, 27u)]), true), select(select(vec3<bool>(global0[_wgslsmith_index_u32(37237u, 27u)], false, global0[_wgslsmith_index_u32(4294967295u, 27u)]), select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, true, global0[_wgslsmith_index_u32(110299u, 27u)]), vec3<bool>(global1.x, false, true)), select(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 27u)], true), vec3<bool>(global1.x, var_0.x, false), vec3<bool>(true, true, true))), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u | arg_1.x, 27u)], false, all(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 27u)], global0[_wgslsmith_index_u32(10746u, 27u)], global1.x, var_0.x))), all(!global1.xy)));
    let var_4 = ~(~_wgslsmith_sub_i32(2147483647i, var_2.x));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(~u_input.a.x), _wgslsmith_mod_i32(abs(0i), ~(-27030i)), reverseBits(1i), -u_input.a.x), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-70101i, -1i, 58430i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x)), reverseBits(vec4<i32>(35003i, 0i, 4328i, -2147483647i))) | ~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, -30897i, u_input.a.x), vec4<i32>(u_input.a.x, -4284i, 1i, 1i))), reverseBits(_wgslsmith_div_i32(18327i, -53642i)), abs(-2147483647i));
    let var_1 = global0[_wgslsmith_index_u32(20206u, 27u)];
    var var_2 = func_5(_wgslsmith_f_op_f32(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(568f)), _wgslsmith_f_op_f32(-512f + -645f)), vec3<bool>(global1.x, all(!vec3<bool>(true, false, global1.x)), any(select(vec4<bool>(global1.x, global1.x, false, global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(35910u, 27u)], true, true), global1.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-1074f - -948f), _wgslsmith_f_op_f32(min(1078f, 310f)), _wgslsmith_f_op_f32(round(191f)), -474f))))), ~(vec2<u32>(1u, 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    let var_3 = var_2.b;
    global0 = array<bool, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1155f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-347f - 925f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(337f, -2156f) + -1833f), global1.x))), _wgslsmith_mod_vec4_u32(abs(~firstLeadingBit(vec4<u32>(var_2.b, var_2.b, var_2.d, var_2.b))), vec4<u32>(1u, 27186u, ~(~var_2.b), _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_2.b, var_2.b), ~var_2.d))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-819f, _wgslsmith_f_op_f32(func_1(142f, !vec3<bool>(true, true, var_2.c), vec4<f32>(-1134f, 666f, -641f, -828f))), _wgslsmith_f_op_f32(floor(-1495f)), _wgslsmith_f_op_f32(func_1(-1286f, vec3<bool>(false, global0[_wgslsmith_index_u32(var_2.b, 27u)], global0[_wgslsmith_index_u32(var_2.b, 27u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1640f, -1010f, -381f, 1514f))))))), vec4<u32>(1u, var_2.b, 46248u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.d, 11802u), vec2<u32>(var_2.b, 18804u)) << (_wgslsmith_clamp_u32(1u, 1u, var_2.b) % 32u)));
}

