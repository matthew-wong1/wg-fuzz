struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> bool {
    var var_0 = Struct_2(Struct_1(false || arg_1), select(global0[_wgslsmith_index_u32(select(abs(6631u), ~4294967295u | ~u_input.a.x, any(vec4<bool>(arg_1, true, true, arg_1))), 6u)], !vec4<bool>(all(arg_0.b.b.yw), 20955u == u_input.a.x, arg_1, arg_1 & true), !(!arg_0.c.b)), !vec4<bool>(!(u_input.c != u_input.c), false, 1i != _wgslsmith_div_i32(u_input.c, -13111i), arg_0.b.a.a));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1066f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * -1247f)), -220f)), -1148f));
    var_1 = arg_0.a;
    var var_2 = Struct_1(true);
    var var_3 = Struct_3(arg_0.d.c.x, _wgslsmith_clamp_vec2_u32(u_input.a.zy << (min(vec2<u32>(1532u, 44325u), ~vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), ~(~abs(u_input.a.yz)), u_input.a.xy >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 24246u), u_input.a.yy) % vec2<u32>(32u))), arg_0.d, Struct_2(var_0.a, vec4<bool>(true, var_2.a, false, false), select(!global0[_wgslsmith_index_u32(firstTrailingBit(84459u), 6u)], arg_0.b.c, vec4<bool>(var_0.b.x, all(arg_0.d.c.xz), false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1184f, _wgslsmith_f_op_f32(arg_0.a - 1241f))))));
    return !(~_wgslsmith_sub_u32(0u, u_input.a.x) != u_input.a.x);
}

fn func_2() -> vec4<f32> {
    var var_0 = ~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), u_input.a.x), ~vec2<u32>(u_input.a.x, 7074u) << ((u_input.a.zy << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_1 = select(vec3<bool>(false, func_3(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -927f), Struct_2(Struct_1(true), global0[_wgslsmith_index_u32(22893u, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)]), Struct_2(Struct_1(true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(true), global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)])), true), true), vec3<bool>(all(vec3<bool>(true, any(vec3<bool>(false, true, true)), true)), !(all(vec3<bool>(false, true, true)) & all(vec2<bool>(true, true))), select(true, true, true) || true), all(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))));
    let var_2 = select(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(~1u, min(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 36229u, 90327u, 0u), vec4<u32>(u_input.a.x, 1u, 7259u, 1u))))), 6u)], select(vec4<bool>(var_1.x & !var_1.x, var_1.x, !any(vec3<bool>(var_1.x, true, true)), all(select(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)], var_1.x))), global0[_wgslsmith_index_u32(108046u, 6u)], select(vec4<bool>(all(vec3<bool>(true, var_1.x, var_1.x)), !var_1.x, select(false, var_1.x, false), !var_1.x), select(select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true), global0[_wgslsmith_index_u32(128935u, 6u)]), global0[_wgslsmith_index_u32(u_input.a.x, 6u)], any(vec2<bool>(var_1.x, false))), global0[_wgslsmith_index_u32(~var_0.x, 6u)])), !vec4<bool>(false, !(!var_1.x), var_1.x, any(!global0[_wgslsmith_index_u32(u_input.a.x, 6u)])));
    let var_3 = Struct_1(true);
    let var_4 = Struct_5(var_2.wy, Struct_2(var_3, !(!vec4<bool>(true, true, var_1.x, false)), var_2));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1720f * 600f) + _wgslsmith_f_op_f32(f32(-1f) * -1242f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1620f) - _wgslsmith_f_op_f32(select(1848f, 1272f, false)))), _wgslsmith_f_op_f32(f32(-1f) * -830f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1217f, _wgslsmith_div_f32(536f, -380f), false)) + -368f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1781f, 870f, -1730f, -1927f) - vec4<f32>(-2686f, 254f, 501f, 250f))) + vec4<f32>(1f, 1f, 1f, 1f))));
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = 3218u;
    let var_1 = _wgslsmith_f_op_f32(arg_0.x - -251f);
    let var_2 = Struct_3(true, reverseBits(u_input.a.xy & ~_wgslsmith_sub_vec2_u32(u_input.a.yz, vec2<u32>(var_0, 4294967295u))), Struct_2(Struct_1((-1i & u_input.c) < _wgslsmith_dot_vec4_i32(vec4<i32>(-13320i, 0i, u_input.b, 0i), vec4<i32>(1i, u_input.c, 1i, u_input.b))), vec4<bool>(all(vec3<bool>(true, true, true)), true, false, !select(true, true, true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(max(u_input.a.x, u_input.a.x), ~var_0, var_0), abs(u_input.a)), 6u)]), Struct_2(Struct_1(all(vec4<bool>(true, false, true, false))), vec4<bool>(all(vec3<bool>(true, true, true)), false, !select(false, false, true), !any(vec3<bool>(true, false, false))), select(select(select(global0[_wgslsmith_index_u32(57780u, 6u)], vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), !global0[_wgslsmith_index_u32(var_0, 6u)], false), vec4<bool>(any(vec2<bool>(true, false)), true, true, true), (45548u >> (u_input.a.x % 32u)) == max(41858u, var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1, 1551f)))));
    let var_3 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1u, 16852u), var_0), countOneBits(vec2<u32>(var_0 >> (1u % 32u), u_input.a.x)));
    var var_4 = reverseBits(u_input.a.x | (~121705u >> (_wgslsmith_mult_u32(var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 51722u, 12883u), u_input.a)) % 32u)));
    return Struct_1(true);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec4<bool>, arg_3: u32) -> i32 {
    let var_0 = Struct_2(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2()))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(219f, 1184f, -266f, 286f))))), select(vec4<bool>(false, true, false, ~u_input.c >= -1i), arg_2, global0[_wgslsmith_index_u32(arg_3, 6u)]), !vec4<bool>(32467i < _wgslsmith_div_i32(1487i, u_input.c), true, false, any(!arg_2.wzy)));
    let var_1 = Struct_5(vec2<bool>(arg_1, !(!(u_input.b > -8826i))), var_0);
    var var_2 = Struct_5(!var_1.b.c.yx, Struct_2(Struct_1(arg_2.x), !vec4<bool>(all(vec2<bool>(true, false)), func_3(Struct_4(1019f, Struct_2(var_1.b.a, vec4<bool>(true, false, var_0.a.a, false), var_1.b.b), var_0, var_0), var_1.a.x), arg_1, false), var_1.b.b));
    var_2 = var_1;
    let var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(firstTrailingBit(arg_3)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3, 0u, 3503u), vec3<u32>(49842u, arg_3, u_input.a.x)), abs(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, arg_3, 4294967295u))))), u_input.a.yy);
    return ~(_wgslsmith_add_i32(u_input.b, 0i) >> (~countOneBits(1u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 6>();
    let var_0 = _wgslsmith_mod_vec3_i32(~(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 40576i, 1i), abs(vec3<i32>(29313i, 0i, u_input.b)))), _wgslsmith_add_vec3_i32(~vec3<i32>(func_1(false, false, vec4<bool>(false, true, false, false), 0u), u_input.c, countOneBits(2147483647i)), _wgslsmith_mult_vec3_i32(select(vec3<i32>(2147483647i, -1i, u_input.b), vec3<i32>(u_input.b, u_input.b, 9006i), false), vec3<i32>(u_input.c, -2147483647i, 9345i) | vec3<i32>(-1i, -13191i, u_input.b)) ^ select(~vec3<i32>(u_input.c, u_input.b, u_input.b), ~vec3<i32>(u_input.c, -48212i, -19652i), vec3<bool>(true, true, true))));
    let var_1 = u_input.a.x;
    let var_2 = Struct_5(!vec2<bool>(func_3(Struct_4(1000f, Struct_2(Struct_1(false), vec4<bool>(true, true, false, false), global0[_wgslsmith_index_u32(1u, 6u)]), Struct_2(Struct_1(false), vec4<bool>(false, false, true, false), global0[_wgslsmith_index_u32(1u, 6u)]), Struct_2(Struct_1(true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true))), false), true), Struct_2(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 240f, 1084f, 386f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -482f, 1163f, 2028f))))), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, 1u), var_1), 6u)]));
    let var_3 = Struct_4(_wgslsmith_div_f32(-262f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(564f, -839f, all(vec3<bool>(false, var_2.b.a.a, false)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(220f, 1614f)))))), var_2.b, var_2.b, var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(var_3.a, -502f), _wgslsmith_f_op_f32(max(1933f, var_3.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, 1321f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_3.a) + vec2<f32>(var_3.a, -1279f)))))));
}

