struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-1i, -62888i), 19028u, -1582f);

var<private> global2: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32, arg_3: vec3<f32>) -> vec4<bool> {
    var var_0 = all(vec4<bool>(true, true, true, true)) || true;
    global2 = any(!select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(false, false)), true), ~arg_0.b != _wgslsmith_add_u32(arg_1.x, 1u)));
    let var_1 = !vec2<bool>(true, (true & any(vec3<bool>(false, true, true))) & (arg_3.x > -545f));
    let var_2 = Struct_1(vec2<i32>(abs(firstTrailingBit(11067i)), countOneBits(_wgslsmith_mod_i32(u_input.d.x, 20608i))) | u_input.d.zy, arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1624f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1524f * arg_3.x)))))));
    var var_3 = _wgslsmith_f_op_f32(-arg_3.x);
    return !vec4<bool>(all(!select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(true, var_1.x, true, true), vec4<bool>(false, false, var_1.x, false))), !var_1.x, var_1.x, true);
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    let var_0 = ~(~min(~firstTrailingBit(vec4<u32>(50695u, global1.b, 11554u, global1.b)), ~vec4<u32>(23915u, 54249u, 51352u, 1u)));
    var var_1 = 818f;
    global2 = all(!func_3(Struct_1(global1.a, global1.b, global1.c), ~vec4<u32>(global1.b, 1u, global1.b, 29158u), global1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(317f, global1.c, global1.c)))) == all(vec4<bool>(func_3(Struct_1(vec2<i32>(1i, 2147483647i), 16697u, 781f), var_0, global1.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, 773f, global1.c) * vec3<f32>(1607f, global1.c, 1000f))).x, -674f != _wgslsmith_f_op_f32(-global1.c), true, true));
    let var_2 = Struct_1(-min(u_input.d.zx, vec2<i32>(1i, global1.a.x ^ arg_0.x)), _wgslsmith_dot_vec4_u32(var_0, _wgslsmith_clamp_vec4_u32(var_0, var_0, vec4<u32>(1u, 0u & global1.b, global1.b, _wgslsmith_clamp_u32(u_input.e, 4294967295u, u_input.a)))), _wgslsmith_f_op_f32(522f * _wgslsmith_f_op_f32(f32(-1f) * -475f)));
    var var_3 = vec2<bool>(true, (_wgslsmith_f_op_f32(round(var_2.c)) <= _wgslsmith_f_op_f32(ceil(630f))) == (select(-1i, -2147483647i, true) != 8665i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: i32) -> Struct_1 {
    let var_0 = global1.a.x;
    let var_1 = select(min(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.e, 3810u), vec3<u32>(u_input.c, u_input.c, 4294967295u)), min(u_input.e, 0u), u_input.a), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(84075u, global1.b, 19491u), vec3<u32>(global1.b, u_input.c, global1.b), vec3<u32>(global1.b, 1u, 4330u))), ~max(vec3<u32>(104448u, u_input.a, 4294967295u) | vec3<u32>(global1.b, 0u, global1.b), countOneBits(vec3<u32>(4149u, u_input.c, 32912u)))), vec3<u32>(~_wgslsmith_add_u32(~u_input.a, ~9380u), abs(~reverseBits(0u)), 4294967295u), !(!select(vec3<bool>(arg_1, arg_1, arg_0), vec3<bool>(true, true, arg_1), vec3<bool>(arg_1, arg_1, false))));
    var var_2 = Struct_1(global1.a, ~0u, global1.c);
    var var_3 = Struct_1(~vec2<i32>(_wgslsmith_mult_i32(u_input.b, _wgslsmith_clamp_i32(-50782i, -49296i, -2147483647i)), 0i), var_1.x, global1.c);
    let var_4 = Struct_1(vec2<i32>(global1.a.x, -68989i), 6411u, -353f);
    return var_4;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = arg_0;
    global0 = false;
    global1 = Struct_1(-u_input.d.zz, global1.b, -584f);
    let var_1 = -select(u_input.d.x, 2147483647i, !any(vec2<bool>(true, true)) && (~global1.b > u_input.e));
    var var_2 = ~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(select(-vec4<i32>(var_1, arg_2.x, 1i, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 852i, global1.a.x, -8618i), vec4<i32>(-49964i, -2147483647i, var_1, 1i)), vec4<bool>(true, true, true, true)), ~(vec4<i32>(-2147483647i, var_1, 0i, -30123i) & vec4<i32>(17594i, -19468i, var_1, global1.a.x))), countOneBits(-26043i));
    return func_4(!(_wgslsmith_f_op_f32(func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, var_1, global1.a.x, -35549i), vec4<i32>(2147483647i, 13784i, u_input.d.x, var_1)))) == -213f), !(!any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true))), _wgslsmith_div_i32(~(~(~(-20466i))), -7153i));
}

fn func_5(arg_0: Struct_1) -> f32 {
    global1 = func_1(global1.c, select(18875u, 4294967295u, min(~u_input.a, ~0u) == _wgslsmith_dot_vec2_u32(vec2<u32>(60736u, global1.b), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 35481u), vec2<u32>(35795u, global1.b)))), vec2<i32>(_wgslsmith_sub_i32(global1.a.x, func_1(630f, 87323u, ~arg_0.a).a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-global1.a.x, -25069i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, -19434i, global1.a.x, global1.a.x), vec4<i32>(global1.a.x, -1i, global1.a.x, -1i)), i32(-1i) * -1i), vec4<i32>(arg_0.a.x | -68396i, arg_0.a.x & u_input.b, -3630i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, arg_0.a.x), vec3<i32>(-9015i, -2147483647i, global1.a.x))))));
    let var_0 = -2147483647i;
    var var_1 = func_1(global1.c, abs(firstTrailingBit(_wgslsmith_clamp_u32(1u, u_input.c, ~global1.b))), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0, 2147483647i), _wgslsmith_sub_vec2_i32(-arg_0.a, _wgslsmith_sub_vec2_i32(arg_0.a, -u_input.d.zy))));
    global2 = false;
    var var_2 = func_4(all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true)), vec3<bool>(true, 52819u != arg_0.b, all(vec2<bool>(true, false))))), _wgslsmith_div_f32(530f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-108f - -146f))) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-811f + -1252f), arg_0.c) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c)))), -var_0);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-315f + var_2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1422f - var_1.c), var_2.c))));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(-select(_wgslsmith_add_vec2_i32(abs(vec2<i32>(13425i, -2147483647i)), reverseBits(vec2<i32>(-8723i, -1i))), -(arg_3.a ^ vec2<i32>(1i, 0i)), arg_3.b > ~42186u), 12816u | ~func_1(_wgslsmith_div_f32(-930f, arg_0.c), _wgslsmith_div_u32(arg_1, arg_0.b), -u_input.d.zy).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c * -295f) - global1.c) * _wgslsmith_f_op_f32(min(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c + 1161f) + _wgslsmith_f_op_f32(arg_0.c + -141f))))));
    let var_1 = Struct_1(vec2<i32>(1i, firstTrailingBit(_wgslsmith_dot_vec2_i32(min(var_0.a, u_input.d.yx), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, arg_3.a.x), var_0.a)))), u_input.e, 1179f);
    var var_2 = func_3(arg_3, countOneBits(~vec4<u32>(max(4294967295u, arg_3.b), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.b, 13507u, 37977u, 66665u), vec4<u32>(var_1.b, arg_0.b, var_0.b, arg_0.b)), u_input.c, 29260u)), -216f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, 836f, var_0.c) - vec3<f32>(931f, var_0.c, -1099f))))))).ywy;
    let var_3 = var_2.yx;
    var var_4 = vec2<f32>(global1.c, _wgslsmith_f_op_f32(var_0.c - var_0.c));
    return _wgslsmith_f_op_f32(func_5(arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = false;
    let var_0 = _wgslsmith_f_op_f32(func_6(Struct_1(-(~select(global1.a, vec2<i32>(26150i, u_input.d.x), true)), global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c + -655f), _wgslsmith_f_op_f32(func_5(func_1(1645f, 0u, vec2<i32>(1i, global1.a.x)))))), _wgslsmith_clamp_u32(global1.b, 1u, 0u), all(vec4<bool>(true, true, true, true)) | any(vec4<bool>(false, all(vec4<bool>(true, false, true, false)), true, true)), func_4(false & ((global1.a.x < 20930i) | true), false, _wgslsmith_add_i32(func_1(_wgslsmith_f_op_f32(round(global1.c)), global1.b, -global1.a).a.x, global1.a.x << (min(4294967295u, global1.b) % 32u)))));
    let var_1 = -24387i;
    global0 = !any(func_3(func_4(false, true, -6754i), _wgslsmith_add_vec4_u32(~vec4<u32>(global1.b, 0u, 0u, 46343u), vec4<u32>(4294967295u, 1u, u_input.e, 12223u) | vec4<u32>(u_input.e, global1.b, global1.b, 0u)), 1461f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, var_0, -950f), vec3<f32>(585f, var_0, global1.c)))))).ww);
    var var_2 = vec2<bool>(!(true || !(global1.c <= global1.c)), !select(true, true, true) || select(!(global1.a.x != u_input.d.x), var_1 < firstLeadingBit(var_1), select(any(vec2<bool>(true, false)), true, all(vec4<bool>(true, true, true, false)))));
    var var_3 = !func_3(func_1(997f, ~u_input.c | u_input.a, _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.d.xz, global1.a), u_input.d.zx)), ~vec4<u32>(global1.b ^ 4294967295u, ~0u, 4294967295u, global1.b), global1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, global1.c, var_0), vec3<f32>(804f, -385f, var_0), var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, global1.c, 1000f)), select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, var_2.x, false)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 421f, global1.c)))))).x;
    let var_4 = _wgslsmith_f_op_f32(-var_0);
    let var_5 = ~vec2<i32>(_wgslsmith_div_i32(~(-1i), _wgslsmith_add_i32(u_input.b, -1742i)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, u_input.e, global1.b, 15221u), vec4<u32>(35986u, u_input.e, u_input.a, 0u)) % 32u), max(func_1(var_0, global1.b, global1.a).a.x | -34198i, ~func_4(true, false, -12807i).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1529f, -138f, var_0)))), ~1u, ~abs(vec4<u32>(u_input.a, global1.b, 1u, u_input.a)) << ((vec4<u32>(global1.b ^ 46157u, func_4(var_2.x, false, var_5.x).b, ~4294967295u, _wgslsmith_clamp_u32(u_input.a, 41793u, 1u)) | ~abs(vec4<u32>(0u, 15581u, 1u, 19945u))) % vec4<u32>(32u)), abs(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(49195u, global1.b, 0u, 4294967295u), abs(vec4<u32>(u_input.e, 1u, global1.b, global1.b))))));
}

