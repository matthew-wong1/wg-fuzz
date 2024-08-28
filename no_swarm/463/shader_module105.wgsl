struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec4<bool>,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_4,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, false, true, true, true, false, false, true, false, false, true, false, true, true, false, false, false, false, true, false, true, false, false, false, false, false, true, false, false, true, true);

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec2<u32>(1u, 1838u), true, vec4<bool>(false, true, true, true), false, -1000f), Struct_2(vec2<u32>(1u, 35874u), true, vec4<bool>(true, false, false, true), false, 802f), Struct_2(vec2<u32>(2236u, 48834u), false, vec4<bool>(false, false, true, true), false, 1308f), Struct_2(vec2<u32>(4294967295u, 0u), true, vec4<bool>(true, false, true, true), false, 1000f), Struct_2(vec2<u32>(4013u, 9458u), false, vec4<bool>(false, false, false, true), true, 1289f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_u32(30825u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u)));
    let var_1 = Struct_1(515f, select(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(var_0, 31u)], global0[_wgslsmith_index_u32(5571u, 31u)], global0[_wgslsmith_index_u32(var_0, 31u)]), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0, 31u)], true), global0[_wgslsmith_index_u32(var_0 << (var_0 % 32u), 31u)]), !(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(36968u, 31u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(11422u, 31u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0, 31u)], false, false))), true));
    var var_2 = vec3<i32>(firstTrailingBit(~(u_input.a & u_input.a) | u_input.a), u_input.a, 2147483647i);
    var_2 = countOneBits(-(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 2147483647i, var_2.x)))) | vec3<i32>(firstLeadingBit(reverseBits(-1i)), u_input.a, ~countOneBits(var_2.x));
    global0 = array<bool, 31>();
    return true;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -819f), -135f)) * -1000f)), !vec4<bool>(true, all(vec3<bool>(true, true, true)), false, func_3()));
    var var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(select(select(_wgslsmith_mod_vec2_i32(vec2<i32>(33265i, 26514i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, u_input.a)), var_0.b.wz), select(~vec2<i32>(15432i, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -32517i), vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a)), var_0.b.wx), var_0.b.yw), vec2<i32>(1i, u_input.a)), vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-47060i, 32647i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(4249i, 31946i), vec2<i32>(u_input.a, u_input.a))) >> (~min(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(0u, 35137u))) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(1i, 44319i), u_input.a));
    let var_2 = _wgslsmith_mod_i32(-4810i, _wgslsmith_sub_i32(var_1.x, -1i));
    var_1 = _wgslsmith_mod_vec2_i32(-(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, 0i), -vec2<i32>(var_2, 1i)) & (max(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(var_2, -45708i)) << (vec2<u32>(64732u, 4294967295u) % vec2<u32>(32u)))), vec2<i32>(33859i | -var_2, 0i) & vec2<i32>(_wgslsmith_add_i32(var_2, 1i), var_2));
    let var_3 = vec3<i32>(abs(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, var_2), vec3<i32>(-2147483647i, -17068i, 53086i)), var_2 & u_input.a, min(_wgslsmith_mod_i32(var_2, u_input.a), 1i))), _wgslsmith_add_i32(0i, reverseBits(var_2)), ~var_2);
    return vec3<bool>(select(var_0.b.x && true, global0[_wgslsmith_index_u32(1u, 31u)], !func_3()), select(!((u_input.a & 28572i) <= max(var_2, -2147483647i)), any(!select(var_0.b.wyw, vec3<bool>(global0[_wgslsmith_index_u32(79422u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], true), global0[_wgslsmith_index_u32(15595u, 31u)])), var_0.b.x), var_0.a <= -738f);
}

fn func_1() -> Struct_4 {
    global0 = array<bool, 31>();
    global1 = array<Struct_2, 5>();
    var var_0 = select(select(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(22074u, 31u)]), vec3<bool>(global0[_wgslsmith_index_u32(26252u, 31u)], global0[_wgslsmith_index_u32(16080u, 31u)], false))), !select(vec3<bool>(global0[_wgslsmith_index_u32(33183u, 31u)], false, global0[_wgslsmith_index_u32(0u, 31u)]), vec3<bool>(global0[_wgslsmith_index_u32(29777u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]), !global0[_wgslsmith_index_u32(6909u, 31u)]), true), !func_2(), !(false | global0[_wgslsmith_index_u32(2467u, 31u)]) || true);
    let var_1 = Struct_4(-354f, max(1i, u_input.a));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) - vec2<f32>(-1141f, 2391f)), vec2<f32>(-1267f, var_1.a), false)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -431f), var_1.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.a, 530f))) * vec2<f32>(_wgslsmith_f_op_f32(var_1.a * 597f), _wgslsmith_f_op_f32(step(-1144f, var_1.a))))));
    return Struct_4(var_1.a, u_input.a);
}

fn func_4(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: f32) -> Struct_3 {
    var var_0 = firstTrailingBit(-2147483647i & ~func_1().b);
    var var_1 = Struct_3(vec4<u32>(~(61308u << (0u % 32u)), ~4294967295u, arg_2.a.x, 40135u) ^ vec4<u32>(~arg_0.a.x >> (29268u % 32u), 4294967295u, 4294967295u >> (arg_2.a.x % 32u), firstLeadingBit(arg_0.a.x)));
    var var_2 = Struct_2(~firstTrailingBit(_wgslsmith_clamp_vec2_u32(~arg_2.a, arg_0.a.zx, abs(vec2<u32>(arg_2.a.x, arg_0.a.x)))), true, arg_1, any(select(arg_1, vec4<bool>(any(vec3<bool>(arg_1.x, arg_0.d.b.x, arg_2.b)), true && arg_2.b, !arg_0.d.b.x, any(arg_1.zxw)), true)), _wgslsmith_f_op_f32(sign(2018f)));
    var var_3 = all(var_2.c);
    let var_4 = Struct_3(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.a, var_1.a) ^ var_1.a, vec4<u32>(28830u, var_1.a.x, ~0u, ~arg_0.a.x), ~(~var_1.a)));
    return Struct_3(var_4.a);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_5 {
    var var_0 = Struct_4(arg_1.a, u_input.a);
    var var_1 = arg_2.x;
    return Struct_5(~arg_0.a.xxw >> (~arg_0.a.zyx % vec3<u32>(32u)), vec4<bool>(!global0[_wgslsmith_index_u32(select(countOneBits(arg_0.a.x), ~14157u, any(arg_1.b.yxw)), 31u)], !(arg_0.a.x <= min(arg_0.a.x, arg_0.a.x)), true, true), func_1(), Struct_1(_wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, arg_1.a) * _wgslsmith_f_op_f32(-var_0.a)), global0[_wgslsmith_index_u32(arg_0.a.x << (4294967295u % 32u), 31u)])), !select(arg_1.b, !arg_1.b, vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(arg_0.a.x, 31u)]))), Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0.a)))), ~0i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 31>();
    global1 = array<Struct_2, 5>();
    let var_0 = func_5(func_4(Struct_5(vec3<u32>(1u, 1u, 1u), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(27997u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(35158u, 31u)], true, global0[_wgslsmith_index_u32(0u, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(86778u, 31u)], false, true, false)), vec4<bool>(global0[_wgslsmith_index_u32(247u, 31u)], false, global0[_wgslsmith_index_u32(38417u, 31u)], global0[_wgslsmith_index_u32(81930u, 31u)]), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(27501u, 31u)], global0[_wgslsmith_index_u32(95016u, 31u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(25567u, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], false, true, false))), func_1(), Struct_1(933f, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(11017u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(11011u, 31u)])), func_1()), !vec4<bool>(any(vec2<bool>(false, false)), false, !global0[_wgslsmith_index_u32(4294967295u, 31u)], true), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 37595u), countOneBits(54032u)), _wgslsmith_div_u32(~1933u, _wgslsmith_sub_u32(77315u, 1u))), 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-524f + 1504f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_1(148f, !vec4<bool>(func_3(), true, global0[_wgslsmith_index_u32(~28522u, 31u)], false)), vec3<i32>(countOneBits(-1i), firstTrailingBit(9339i), -u_input.a));
    global1 = array<Struct_2, 5>();
    var var_1 = func_2().x;
    var_1 = !all(vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.a.x >> (4294967295u % 32u), var_0.a.x), 31u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(-(vec4<i32>(-2505i, var_0.e.b, var_0.e.b, -36899i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 31903u, 1u, 73413u), vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 0u)) % vec4<u32>(32u))), vec4<i32>(u_input.a, u_input.a, ~1i, firstLeadingBit(func_1().b))), vec4<u32>(var_0.a.x, var_0.a.x, 1u, var_0.a.x), ~firstLeadingBit(_wgslsmith_mult_u32(var_0.a.x, ~4294967295u)));
}

