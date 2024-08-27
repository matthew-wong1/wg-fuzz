struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec3<i32>, 21>;

var<private> global2: u32 = 1u;

var<private> global3: array<f32, 31>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<f32> {
    let var_0 = select(u_input.c, ~u_input.c, select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), true)), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), false)));
    var var_1 = 1u;
    return vec4<f32>(444f, -919f, _wgslsmith_f_op_f32(679f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -717f) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 31u)])) - -1000f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~(1u ^ var_0.x), 31u)]));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()));
    let var_1 = Struct_3(Struct_2(u_input.c.x, select(vec3<u32>(~4294967295u, ~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(1075u, 103441u, u_input.d, 53963u), vec4<u32>(u_input.c.x, 1u, 4294967295u, 23024u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(49018u, u_input.d, 4294967295u), ~vec3<u32>(u_input.c.x, 0u, 61532u), _wgslsmith_div_vec3_u32(vec3<u32>(12616u, u_input.c.x, u_input.d), vec3<u32>(4294967295u, 1u, u_input.d))), -439f >= var_0.x), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * -594f), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_u32(u_input.c.x ^ 1u, 40583u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 0u, 57880u), vec4<u32>(u_input.c.x, u_input.d, 29423u, u_input.c.x)), ~vec2<u32>(40389u, u_input.c.x))), !vec3<bool>(true, true, true && (-2147483647i <= global0.x)), ~select(~(vec3<u32>(u_input.d, 18410u, u_input.c.x) ^ vec3<u32>(u_input.c.x, 30328u, u_input.c.x)), ~(vec3<u32>(u_input.c.x, 4294967295u, 1u) << (vec3<u32>(1u, u_input.d, u_input.d) % vec3<u32>(32u))), any(vec3<bool>(true, true, true))), ~global0.x, ~_wgslsmith_mod_i32(~firstLeadingBit(1i), countOneBits(-global0.x)));
    global3 = array<f32, 31>();
    var var_2 = var_1.a.c;
    global3 = array<f32, 31>();
    return var_1.a.c;
}

fn func_1() -> vec2<i32> {
    var var_0 = min(1i, 1i);
    let var_1 = func_2();
    var var_2 = 1i;
    global0 = ~(-(vec4<i32>(-1i) * -select(u_input.b, vec4<i32>(-2147483647i, 2147483647i, -36797i, global0.x), vec4<bool>(false, false, false, false))));
    var_0 = -3454i;
    return _wgslsmith_sub_vec2_i32(u_input.b.zw, -(u_input.b.xy | vec2<i32>(~2147483647i, u_input.a)));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_mod_vec2_u32(vec2<u32>(40844u, max(23674u, 0u)), firstTrailingBit(~vec2<u32>(arg_1, u_input.c.x)))) << (0u % 32u);
    let var_1 = select(vec2<bool>(!(var_0 == u_input.d) & true, !(all(vec2<bool>(true, true)) | false)), !vec2<bool>(any(vec2<bool>(false, true)) && true, !(global3[_wgslsmith_index_u32(var_0, 31u)] > -120f)), select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec2<bool>(true, true))), vec2<bool>(true, true)));
    global1 = array<vec3<i32>, 21>();
    global3 = array<f32, 31>();
    var var_2 = (~_wgslsmith_mod_u32(75404u, arg_1) >> ((~_wgslsmith_div_u32(u_input.c.x, 10512u) ^ 37829u) % 32u)) << (~_wgslsmith_dot_vec3_u32(~select(vec3<u32>(u_input.c.x, 1u, u_input.c.x), vec3<u32>(4294967295u, 42877u, 9459u), vec3<bool>(var_1.x, true, var_1.x)), ~(~vec3<u32>(0u, 43094u, var_0))) % 32u);
    return Struct_3(Struct_2(max(firstLeadingBit(4294967295u), _wgslsmith_clamp_u32(var_0, 1u, 1u)) >> (20523u % 32u), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.d, 37276u, 4294967295u), vec3<u32>(54144u, u_input.c.x, u_input.c.x)), func_2()), vec3<bool>(false, !var_1.x, var_1.x), select(~vec3<u32>(51123u, arg_1, u_input.c.x), abs(vec3<u32>(27275u, arg_1, 11474u)), !(!vec3<bool>(false, var_1.x, false))) << (_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(33104u, arg_1, u_input.c.x), ~vec3<u32>(u_input.d, var_0, var_0)), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(1u, 4294967295u, var_0)), vec3<u32>(var_0, 21175u, var_0))) % vec3<u32>(32u)), ~abs(global0.x), _wgslsmith_add_i32(-1i, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), ~1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(576f, 202f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1145f, global3[_wgslsmith_index_u32(u_input.d, 31u)]) * vec2<f32>(-570f, global3[_wgslsmith_index_u32(u_input.c.x, 31u)])))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(14772u, 31u)], 539f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -736f))) * vec2<f32>(_wgslsmith_div_f32(-301f, global3[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c.x, 31u)] - global3[_wgslsmith_index_u32(u_input.c.x, 31u)])))));
    var var_1 = func_4(abs(vec2<i32>(firstLeadingBit(global0.x ^ var_0.e), u_input.a ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-22127i, 13664i, -2147483647i, u_input.b.x), vec4<i32>(u_input.a, global0.x, 44638i, 37420i)))), var_0.c.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.c.a, 657f) * vec2<f32>(global3[_wgslsmith_index_u32(var_0.c.x, 31u)], -278f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(873f, var_0.a.c.a))))))));
    global3 = array<f32, 31>();
    let var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b ^ vec4<i32>(var_0.e, min(-1i, var_0.e), _wgslsmith_add_i32(22500i, global0.x), var_0.e), u_input.b), select(_wgslsmith_div_i32(-countOneBits(var_1.d), -2147483647i | ~var_0.d), firstTrailingBit(2147483647i ^ u_input.a), (true | all(vec2<bool>(var_1.b.x, var_1.b.x))) & var_0.b.x), 1i);
    var var_3 = var_0.a;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_div_f32(790f, _wgslsmith_f_op_f32(f32(-1f) * -400f)))) * _wgslsmith_f_op_vec4_f32(func_3()).yz);
    let var_5 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.c.zx | vec2<u32>(4294967295u, ~48634u), select(vec2<u32>(~var_0.a.c.d.x, var_0.a.c.b), func_4(abs(vec2<i32>(var_1.d, u_input.a)), ~var_1.c.x, vec2<f32>(-1029f, -287f)).c.zy, !(!var_1.b.zx))), firstLeadingBit(~var_3.c.d));
    var var_6 = ~0i;
    var var_7 = Struct_3(Struct_2(~u_input.c.x, vec3<u32>(~min(42422u, var_1.c.x), 62876u, _wgslsmith_mult_u32(abs(22557u), ~var_5)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -792f), -1046f), var_0.a.c.d.x, vec4<u32>(max(59506u, var_1.c.x), var_0.a.b.x, ~0u, 2673u | var_1.c.x), _wgslsmith_div_vec2_u32(vec2<u32>(59688u, 11596u), var_3.c.c.yy))), func_4(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(-1i, var_0.e)), select(vec2<i32>(2147483647i, global0.x), global0.wy, false)), select(~vec2<i32>(global0.x, 69193i), var_2.yx, var_1.b.xz), ~global0.zy), u_input.c.x, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(var_3.c.a, 242f)), _wgslsmith_div_f32(var_4.x, var_3.c.a)), vec2<f32>(_wgslsmith_f_op_f32(trunc(var_3.c.a)), _wgslsmith_div_f32(var_0.a.c.a, var_4.x))))).b, abs((var_1.a.c.c.yyz << (vec3<u32>(var_1.c.x, 12742u, 52100u) % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(abs(var_3.b), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u))), (var_2.x << (min(u_input.c.x >> (var_5 % 32u), max(u_input.d, u_input.c.x)) % 32u)) << (_wgslsmith_sub_u32(115472u, ~_wgslsmith_mult_u32(var_5, 1u)) % 32u), ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(41418i, -2147483647i, var_0.d), var_2) << (var_1.a.b % vec3<u32>(32u)), vec3<i32>(~var_1.e, var_1.d, 2147483647i << (var_3.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(1u, func_2().b), -48299i, var_1.a.c.a, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.c.a * var_4.x), _wgslsmith_f_op_f32(-var_4.x))))), var_1.a.c.a, -992f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

