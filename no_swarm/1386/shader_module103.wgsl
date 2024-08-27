struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(false, false, true, false, false, true, false, false, true, false, true, false, true, true, true, false, false, true, false);

var<private> global1: Struct_2;

var<private> global2: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(-614f, -726f, 222f, -154f), vec4<f32>(1069f, 1850f, -400f, -697f), vec4<f32>(-586f, -1861f, -977f, 958f), vec4<f32>(-1440f, -607f, -1000f, -1000f), vec4<f32>(-961f, 474f, 1437f, 265f), vec4<f32>(773f, -604f, -236f, -239f), vec4<f32>(-218f, 773f, 965f, 296f), vec4<f32>(-1036f, -977f, -1278f, -977f), vec4<f32>(192f, -1743f, 903f, 1568f), vec4<f32>(2605f, -2013f, 616f, -579f), vec4<f32>(1492f, 833f, -933f, 362f), vec4<f32>(972f, -346f, -986f, 2167f), vec4<f32>(-450f, 554f, -1001f, 431f), vec4<f32>(955f, -2076f, 1238f, -1000f), vec4<f32>(-175f, -101f, 1197f, 1608f), vec4<f32>(-1000f, -263f, 597f, -1584f), vec4<f32>(1000f, 953f, 1050f, 2058f), vec4<f32>(-1000f, 141f, 1328f, 2709f), vec4<f32>(293f, 1649f, 347f, 1890f), vec4<f32>(-1213f, 223f, -513f, 857f), vec4<f32>(1005f, -225f, 129f, 1650f));

var<private> global3: array<u32, 13> = array<u32, 13>(20633u, 1u, 4294967295u, 136592u, 25374u, 0u, 0u, 329u, 1987u, 28550u, 0u, 27165u, 1u);

var<private> global4: array<vec2<f32>, 6>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    global3 = array<u32, 13>();
    var var_0 = vec4<bool>(true, _wgslsmith_f_op_f32(global1.a.c - _wgslsmith_f_op_f32(arg_1 - arg_1)) <= arg_1, global0[_wgslsmith_index_u32(min(_wgslsmith_add_u32(u_input.b.x, 5406u), 47470u), 19u)], true);
    var var_1 = 1u >> (1u % 32u);
    let var_2 = Struct_1(_wgslsmith_mult_i32(~global1.c.a, -22752i & ~u_input.a) << (global1.a.e.x % 32u), -max(max(global1.c.a, -9854i) ^ reverseBits(-1i), -4251i << (_wgslsmith_dot_vec4_u32(global1.b, vec4<u32>(56385u, u_input.b.x, arg_2.x, 0u)) % 32u)), _wgslsmith_f_op_f32(abs(187f)), vec4<bool>(var_0.x, _wgslsmith_dot_vec4_u32(abs(u_input.b), ~vec4<u32>(arg_2.x, 1u, 4294967295u, u_input.b.x)) < (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(4294967295u, 13u)]), global1.c.e) << (~49663u % 32u)), all(select(select(global1.c.d.yz, var_0.zy, global0[_wgslsmith_index_u32(37062u, 19u)]), vec2<bool>(true, false), vec2<bool>(true, true))), global1.a.d.x && !all(global1.c.d.zxy)), vec2<u32>(select(18504u, _wgslsmith_mult_u32(~4294967295u, _wgslsmith_div_u32(arg_0, u_input.b.x)), !all(vec4<bool>(var_0.x, false, global1.c.d.x, var_0.x))), 38966u));
    let var_3 = Struct_2(var_2, vec4<u32>(_wgslsmith_add_u32(global1.a.e.x, select(14705u, u_input.b.x, var_2.d.x)) << (_wgslsmith_sub_u32(~var_2.e.x, 11144u >> (1u % 32u)) % 32u), 67048u << (~u_input.b.x % 32u), ~(35489u >> (_wgslsmith_div_u32(arg_0, arg_0) % 32u)), abs(max(max(u_input.b.x, global3[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(8363u, global3[_wgslsmith_index_u32(arg_0, 13u)], arg_2.x), vec3<u32>(0u, 4294967295u, 83680u))))), Struct_1(global1.c.a, global1.c.b ^ (var_2.a ^ 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2017f)), vec4<bool>(false, !any(vec4<bool>(false, var_2.d.x, true, true)), true, true), u_input.b.zx));
    return ~global1.c.e.x;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: f32) -> Struct_2 {
    global2 = array<vec4<f32>, 21>();
    global3 = array<u32, 13>();
    var var_0 = global1.b;
    var var_1 = false;
    var_1 = !arg_0;
    return Struct_2(Struct_1(abs(global1.a.b), u_input.a, 1016f, vec4<bool>(true || arg_0, !all(global1.c.d.zyz), arg_0, true & (global1.c.b == global1.a.b)), vec2<u32>(_wgslsmith_clamp_u32(global1.c.e.x, global3[_wgslsmith_index_u32(4294967295u, 13u)], 48529u), 25028u)), vec4<u32>(firstTrailingBit(~global1.c.e.x), _wgslsmith_mod_u32(~_wgslsmith_add_u32(4294967295u, global3[_wgslsmith_index_u32(var_0.x, 13u)]), 2345u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.e.x, 0u, _wgslsmith_mult_u32(var_0.x, u_input.b.x), func_3(u_input.b.x, 1105f, global1.b)), ~(~u_input.b)), global1.a.e.x), global1.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    global3 = array<u32, 13>();
    global4 = array<vec2<f32>, 6>();
    let var_0 = arg_1.a.d.wzw;
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~firstTrailingBit(1i), global1.c.a, _wgslsmith_add_i32(~(arg_0.a.a | arg_1.a.b), firstLeadingBit(u_input.a & 15519i)), arg_0.c.b), vec4<i32>(arg_0.a.a & ~u_input.a, ~arg_0.c.b, -reverseBits(_wgslsmith_add_i32(1i, global1.a.a)), arg_1.a.b << ((arg_0.b.x << (_wgslsmith_mult_u32(u_input.b.x, 72003u) % 32u)) % 32u)), vec4<i32>(-_wgslsmith_mod_i32(-2744i, -4281i), global1.c.a, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(20802i, 2147483647i), vec2<i32>(4890i, arg_0.c.a)), 0i ^ countOneBits(u_input.a)), ~2147483647i));
    var var_2 = global1.a;
    return func_2(true, !select(var_0.xz, vec2<bool>(global0[_wgslsmith_index_u32(1u, 19u)], true), !vec2<bool>(global1.a.d.x, false)), _wgslsmith_f_op_f32(-arg_0.a.c)).a.d.x;
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_2(Struct_1(15820i, i32(-1i) * -39463i, 124f, vec4<bool>(u_input.a > -u_input.a, all(vec2<bool>(global0[_wgslsmith_index_u32(650u, 19u)], true)), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25078u, 13u)], 13u)]), global1.a.e) >= 1u, !(global0[_wgslsmith_index_u32(u_input.b.x, 19u)] || global1.c.d.x)), u_input.b.wx), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 101740u, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.a.e.x), global1.c.e)), ~firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, global1.c.e.x, u_input.b.x, 45378u), vec4<u32>(0u, 20187u, u_input.b.x, 1u)))), Struct_1(~(~1i), min(u_input.a, 13394i), global1.a.c, vec4<bool>(!all(global1.a.d), (false && global1.a.d.x) & (global0[_wgslsmith_index_u32(27083u, 19u)] == false), func_4(Struct_2(global1.a, u_input.b, global1.a), func_2(global1.c.d.x, vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], false), global1.a.c)), any(!vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 19u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 19u)]))), global1.c.e));
    var var_1 = vec3<bool>(any(select(select(vec2<bool>(true, global1.c.d.x), !global1.c.d.yy, vec2<bool>(global1.c.d.x, global1.a.d.x)), global1.c.d.xw, false)), false, global1.c.d.x);
    let var_2 = select(max(-abs(vec4<i32>(global1.a.a, global1.a.b, global1.a.a, var_0.c.b)), -(~vec4<i32>(1i, u_input.a, 2147483647i, global1.a.b))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.b, u_input.a, var_0.c.b, 2147483647i), vec4<i32>(u_input.a, var_0.c.b, var_0.c.b, var_0.c.b)), min(vec4<i32>(u_input.a, var_0.c.b, 70255i, 339i), vec4<i32>(-14777i, var_0.a.b, -1i, global1.c.a))), abs(~global1.c.a), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_0.c.a, u_input.a, global1.c.b, 1i)), vec4<i32>(u_input.a, 2147483647i, u_input.a, global1.c.a)), -1i), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, -1i, -2147483647i, 52510i) ^ countOneBits(vec4<i32>(var_0.c.b, 0i, u_input.a, -2147483647i)), -(~vec4<i32>(2147483647i, u_input.a, 0i, 1i)))), vec4<bool>(!all(vec2<bool>(var_0.c.d.x, true)) & all(vec2<bool>(var_0.a.d.x, var_0.a.d.x)), true, all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], !global1.c.d.x, !global1.a.d.x)), !select(false, false, true)));
    let var_3 = vec2<f32>(global1.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a.c, 1728f, false))))));
    let var_4 = 1u;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_i32(abs(_wgslsmith_mult_vec4_i32(-(~vec4<i32>(u_input.a, 2147483647i, global1.a.a, 0i)), _wgslsmith_mult_vec4_i32(-vec4<i32>(-39918i, u_input.a, u_input.a, 22574i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -2147483647i, u_input.a), vec4<i32>(global1.a.b, -1i, -1i, u_input.a))))), min(-vec4<i32>(-13012i, 1i, 0i, -u_input.a), func_1()));
    var var_1 = _wgslsmith_dot_vec2_i32(-(~vec2<i32>(max(u_input.a, var_0.x), ~(-56280i))), abs(select(select(_wgslsmith_mod_vec2_i32(var_0.yz, var_0.xy), var_0.zx & vec2<i32>(global1.c.a, var_0.x), true), max(func_1().xx, _wgslsmith_div_vec2_i32(var_0.yx, vec2<i32>(var_0.x, -1i))), true)));
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~func_2(global0[_wgslsmith_index_u32(4294967295u, 19u)], global1.a.d.wz, global1.a.c).c.e.x, global3[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(u_input.b.x, 13u)]), 13u)], u_input.b.x), 1u, _wgslsmith_mult_u32(0u, global3[_wgslsmith_index_u32(~u_input.b.x, 13u)]), 19710u), vec4<u32>(17463u, ~114181u, ~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(~global1.a.e.x, 13u)], 1u), ~countOneBits(37731u & u_input.b.x)));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u >> ((countOneBits(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(1u, 13u)])) & reverseBits(global3[_wgslsmith_index_u32(~global1.b.x, 13u)])) % 32u), min(func_2(true, !vec2<bool>(global0[_wgslsmith_index_u32(94952u, 19u)], true), _wgslsmith_f_op_f32(exp2(global1.a.c))).b.x, 8026u)), 19u)];
    let var_4 = func_2(!global1.c.d.x, global1.c.d.yz, _wgslsmith_f_op_f32(global1.a.c - global1.c.c));
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-374f * -927f), _wgslsmith_f_op_f32(step(global1.a.c, 1325f)), select(var_5.c.d.x, false, true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1216f, var_4.c.c, _wgslsmith_f_op_f32(f32(-1f) * -337f), _wgslsmith_f_op_f32(trunc(-1200f))) * vec4<f32>(_wgslsmith_f_op_f32(floor(var_4.c.c)), _wgslsmith_f_op_f32(-1015f + 305f), -1189f, _wgslsmith_f_op_f32(-global1.c.c)))), _wgslsmith_div_vec3_u32(~abs(var_4.b.zzy), ~vec3<u32>(60467u, global3[_wgslsmith_index_u32(24999u, 13u)], var_4.c.e.x)) ^ (vec3<u32>(~var_5.a.e.x, 0u ^ var_5.b.x, global1.b.x) ^ ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 31626u, var_4.b.x), vec3<u32>(0u, 0u, 36477u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.a.c, global1.a.c, 871f, var_4.a.c) + vec4<f32>(-1368f, -484f, var_4.a.c, 2351f)))) + vec4<f32>(_wgslsmith_f_op_f32(sign(444f)), var_5.c.c, var_4.a.c, -1000f)) * vec4<f32>(_wgslsmith_f_op_f32(abs(var_4.c.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.c), _wgslsmith_f_op_f32(var_5.c.c + 492f)), var_4.a.c, 1554f)));
}

