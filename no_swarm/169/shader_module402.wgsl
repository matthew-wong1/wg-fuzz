struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23>;

var<private> global1: vec3<i32> = vec3<i32>(0i, 0i, 40068i);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<i32> {
    global0 = array<vec4<u32>, 23>();
    global1 = _wgslsmith_div_vec3_i32(u_input.b.ywy, vec3<i32>(-(_wgslsmith_mult_i32(-22858i, u_input.b.x) & global1.x), global1.x, u_input.b.x));
    var var_0 = Struct_4(Struct_2(select(vec4<bool>(true, true, any(vec2<bool>(true, true)), select(false, false, false)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)), (vec3<i32>(36261i, u_input.a.x, global1.x) ^ u_input.b.yww) & vec3<i32>(0i, -global1.x, ~u_input.b.x), u_input.a.xz, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-451f, _wgslsmith_f_op_f32(select(1435f, 1498f, true)), _wgslsmith_f_op_f32(447f * 1107f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1807f, 1619f, 351f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-597f, 746f, 1002f) - vec3<f32>(-1000f, -1310f, -181f))))), vec3<f32>(_wgslsmith_f_op_f32(-245f + _wgslsmith_f_op_f32(f32(-1f) * -872f)), 184f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-806f * -1228f))))), Struct_3(~(~(~71321u)), _wgslsmith_f_op_f32(sign(-872f)), u_input.b.wwx & reverseBits(u_input.b.zzx), _wgslsmith_div_i32(u_input.b.x, global1.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1332f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.d.x, var_0.c.b)) + -2018f), 1060f))));
    global0 = array<vec4<u32>, 23>();
    return u_input.a;
}

fn func_2(arg_0: Struct_2) -> Struct_5 {
    let var_0 = vec2<u32>(4294967295u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(71506u, 26982u, 7999u), vec3<u32>(41999u, 25498u, 21103u)) >> (1u % 32u)));
    var var_1 = Struct_5(33360u, Struct_2(!select(arg_0.a, arg_0.a, !arg_0.a.x), firstTrailingBit(~vec3<i32>(arg_0.b.x, global1.x, arg_0.c.x)), -u_input.b.zz, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), 655f, _wgslsmith_div_f32(arg_0.d.x, 216f)) - vec3<f32>(arg_0.d.x, -371f, -1773f))), arg_0, _wgslsmith_mult_u32(1581u, var_0.x) | _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, var_0.x), 11543u));
    var var_2 = var_0.x;
    global1 = _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 1i, _wgslsmith_sub_i32(i32(-1i) * -arg_0.b.x, var_1.b.b.x)), select(func_3(), arg_0.b, all(vec3<bool>(any(vec2<bool>(arg_0.a.x, arg_0.a.x)), var_1.b.b.x >= 0i, true))));
    let var_3 = -27253i;
    return Struct_5(((~var_0.x ^ _wgslsmith_div_u32(var_1.d, var_1.a)) & firstTrailingBit(1u)) & min(var_1.d, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(var_1.a, 23u)], vec4<u32>(0u, 4382u, 0u, 1u)), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(var_1.a, 23u)], vec4<u32>(4294967295u, 44231u, var_0.x, 7493u)))), Struct_2(!vec4<bool>(any(vec4<bool>(var_1.c.a.x, false, arg_0.a.x, true)), !arg_0.a.x, any(vec3<bool>(var_1.b.a.x, true, false)), true), var_1.b.b, func_3().yx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-231f, arg_0.d.x, var_1.b.d.x)) + vec3<f32>(var_1.b.d.x, arg_0.d.x, var_1.b.d.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.d.x, arg_0.d.x, -107f)))))), var_1.b, ~(var_0.x >> (var_1.a % 32u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: Struct_5) -> Struct_4 {
    global1 = select(vec3<i32>(_wgslsmith_div_i32(-2147483647i, u_input.a.x), reverseBits(0i), func_2(arg_3.b).b.c.x), u_input.b.xzz, arg_3.b.a.x) >> (~vec3<u32>(arg_3.d, 4294967295u, ~(~arg_3.d)) % vec3<u32>(32u));
    let var_0 = arg_3.c.a.x;
    let var_1 = Struct_1(reverseBits(func_3()), arg_3.d, -_wgslsmith_div_i32(arg_3.b.c.x >> (arg_3.a % 32u), -2147483647i), arg_3.c.d);
    var var_2 = false;
    var_2 = var_0;
    return Struct_4(func_2(arg_3.b).c, _wgslsmith_f_op_vec3_f32(exp2(var_1.d)), arg_0);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: i32) -> Struct_5 {
    var var_0 = Struct_1(arg_0.a.b, min(1u, _wgslsmith_mod_u32(firstTrailingBit(arg_0.c.a), 9354u)), 12614i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), 688f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -195f) + 771f))));
    var var_1 = var_0.b;
    global0 = array<vec4<u32>, 23>();
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(13647u, var_0.b)) | (vec2<u32>(arg_0.c.a, arg_0.c.a) ^ vec2<u32>(52739u, arg_0.c.a)), _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, arg_0.c.a), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.c.a, 27320u), vec2<u32>(var_0.b, var_0.b)))), _wgslsmith_mult_u32(1u | arg_0.c.a, var_0.b) << (0u % 32u), var_0.b, ~(~(~13563u))), global0[_wgslsmith_index_u32(arg_0.c.a, 23u)]);
    let var_3 = countOneBits(func_4(Struct_3(~(~0u), _wgslsmith_div_f32(func_4(arg_0.c, global1.yx, arg_0.c.c.zx, Struct_5(11095u, arg_0.a, Struct_2(vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), arg_0.a.b, global1.yz, vec3<f32>(-1064f, 1647f, arg_1.x)), 0u)).a.d.x, _wgslsmith_f_op_f32(var_0.d.x * arg_0.b.x)), ~var_0.a, arg_0.a.c.x), arg_0.c.c.zy, func_3().yx, func_2(func_2(func_4(arg_0.c, u_input.a.xx, global1.xy, Struct_5(var_0.b, Struct_2(vec4<bool>(true, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), vec3<i32>(-12257i, 1i, 1338i), global1.xx, arg_0.a.d), Struct_2(vec4<bool>(false, arg_0.a.a.x, false, false), vec3<i32>(0i, 23646i, u_input.b.x), global1.yy, var_0.d), arg_0.c.a)).a).b)).c.a);
    return Struct_5(~(_wgslsmith_sub_u32(var_3, 1u) | _wgslsmith_mod_u32(31301u, 1u)), arg_0.a, Struct_2(!(!select(arg_0.a.a, arg_0.a.a, arg_0.a.a)), func_2(arg_0.a).c.b, ~(arg_0.a.c ^ vec2<i32>(arg_0.a.b.x, -1i)) ^ vec2<i32>(-var_0.a.x, abs(arg_0.c.c.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_0.a.d.x)))))), arg_0.c.a);
}

fn func_6(arg_0: bool, arg_1: Struct_5, arg_2: vec4<bool>) -> u32 {
    global0 = array<vec4<u32>, 23>();
    global1 = u_input.b.xyz >> (reverseBits(reverseBits(abs(~vec3<u32>(arg_1.d, arg_1.d, arg_1.d)))) % vec3<u32>(32u));
    global1 = u_input.b.xyw;
    global0 = array<vec4<u32>, 23>();
    var var_0 = _wgslsmith_f_op_f32(sign(arg_1.c.d.x));
    return min(0u, 0u);
}

fn func_1(arg_0: bool) -> i32 {
    global0 = array<vec4<u32>, 23>();
    global0 = array<vec4<u32>, 23>();
    var var_0 = ~func_6(arg_0, func_5(func_4(Struct_3(0u, -881f, u_input.b.wyw, -1i), ~global1.xx, vec2<i32>(2147483647i, 24556i) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)), func_2(Struct_2(vec4<bool>(arg_0, arg_0, false, arg_0), vec3<i32>(-22467i, u_input.b.x, -17612i), u_input.b.wx, vec3<f32>(-190f, 765f, 1100f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1698f, 202f, -783f) - vec3<f32>(-226f, -1000f, -566f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1076f, 2252f, 479f), vec3<f32>(-723f, 268f, -588f))), -_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, 12621i), global1.zx)), vec4<bool>(true, true, arg_0, func_5(func_4(Struct_3(4294967295u, -305f, u_input.a, 1i), vec2<i32>(0i, global1.x), global1.xx, Struct_5(66437u, Struct_2(vec4<bool>(false, true, arg_0, arg_0), u_input.b.zzw, global1.xz, vec3<f32>(-820f, -605f, 1421f)), Struct_2(vec4<bool>(arg_0, false, arg_0, arg_0), vec3<i32>(u_input.b.x, global1.x, u_input.a.x), global1.zz, vec3<f32>(-111f, -611f, 477f)), 0u)), vec3<f32>(-221f, -1000f, 1838f), func_3().x).b.a.x));
    global0 = array<vec4<u32>, 23>();
    let var_1 = ~reverseBits(4993u) << (func_6(global1.x <= _wgslsmith_dot_vec2_i32(func_2(Struct_2(vec4<bool>(true, true, arg_0, true), u_input.a, u_input.a.xx, vec3<f32>(3066f, -952f, 1295f))).c.b.xy, ~global1.xx), Struct_5(~0u, func_5(func_4(Struct_3(4294967295u, 465f, vec3<i32>(global1.x, 2147483647i, 20539i), u_input.b.x), global1.xx, global1.yy, Struct_5(1u, Struct_2(vec4<bool>(arg_0, true, arg_0, true), vec3<i32>(u_input.a.x, global1.x, -1i), vec2<i32>(u_input.a.x, -1i), vec3<f32>(768f, -722f, 226f)), Struct_2(vec4<bool>(false, arg_0, arg_0, false), u_input.a, u_input.a.zy, vec3<f32>(-537f, -826f, -183f)), 71094u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1590f, 265f, -434f) - vec3<f32>(-1000f, -900f, -465f)), global1.x).b, func_4(Struct_3(4294967295u, -1481f, vec3<i32>(0i, u_input.b.x, u_input.a.x), u_input.b.x), vec2<i32>(7763i, 2147483647i) | global1.zx, vec2<i32>(u_input.a.x, -2147483647i), Struct_5(27880u, Struct_2(vec4<bool>(false, arg_0, arg_0, true), u_input.b.xyz, vec2<i32>(-1i, u_input.a.x), vec3<f32>(2000f, 626f, 635f)), Struct_2(vec4<bool>(arg_0, false, arg_0, false), vec3<i32>(1666i, 20247i, -1i), u_input.b.yy, vec3<f32>(-253f, -787f, 929f)), 0u)).a, ~19066u), vec4<bool>(false, arg_0, func_2(func_2(Struct_2(vec4<bool>(true, true, true, arg_0), u_input.a, global1.xz, vec3<f32>(-633f, 716f, 1118f))).b).c.a.x, !arg_0)) % 32u);
    return firstTrailingBit(~_wgslsmith_mod_i32(global1.x, 50587i) << ((min(10475u, 4294967295u) >> (~var_1 % 32u)) % 32u)) & -_wgslsmith_sub_i32(func_3().x, _wgslsmith_sub_i32(firstTrailingBit(2147483647i), u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    var var_1 = func_4(func_4(func_4(func_4(func_4(Struct_3(0u, 722f, u_input.b.zyw, u_input.a.x), global1.xz, vec2<i32>(global1.x, -6835i), Struct_5(1u, Struct_2(vec4<bool>(false, true, false, false), vec3<i32>(global1.x, var_0, global1.x), vec2<i32>(u_input.a.x, 0i), vec3<f32>(1446f, -1053f, 1824f)), Struct_2(vec4<bool>(false, false, true, true), vec3<i32>(-2147483647i, -2147483647i, global1.x), u_input.a.yx, vec3<f32>(-745f, 247f, -865f)), 30559u)).c, abs(vec2<i32>(global1.x, var_0)), vec2<i32>(-34186i, 39523i), Struct_5(5532u, Struct_2(vec4<bool>(true, true, true, true), vec3<i32>(-56113i, -1044i, -23333i), u_input.a.xy, vec3<f32>(-1538f, 637f, 1912f)), Struct_2(vec4<bool>(false, true, false, true), u_input.a, u_input.a.yy, vec3<f32>(-675f, 566f, -336f)), 0u)).c, u_input.b.yw, vec2<i32>(firstTrailingBit(var_0), -46509i), func_2(Struct_2(vec4<bool>(true, false, false, false), u_input.b.yyz, global1.yx, vec3<f32>(283f, -1009f, -1000f)))).c, ~(u_input.b.zy ^ abs(global1.zy)), _wgslsmith_div_vec2_i32(~(~vec2<i32>(global1.x, var_0)), ~vec2<i32>(u_input.a.x, -3067i) << (~vec2<u32>(5745u, 4294967295u) % vec2<u32>(32u))), func_2(Struct_2(vec4<bool>(true, true, true, true), _wgslsmith_sub_vec3_i32(u_input.b.yyx, u_input.b.xwz), _wgslsmith_div_vec2_i32(u_input.a.zx, vec2<i32>(-1i, -1i)), vec3<f32>(-169f, 289f, 512f)))).c, global1.xy | vec2<i32>(-1i, -func_2(Struct_2(vec4<bool>(true, false, false, false), vec3<i32>(u_input.a.x, 270i, -1i), global1.zx, vec3<f32>(-1000f, -1994f, -1221f))).c.b.x), u_input.b.xy, Struct_5(1u, Struct_2(func_4(Struct_3(55001u, -685f, vec3<i32>(var_0, var_0, 46770i), var_0), func_5(Struct_4(Struct_2(vec4<bool>(true, true, false, true), vec3<i32>(-29863i, var_0, u_input.a.x), vec2<i32>(1i, 11644i), vec3<f32>(-1165f, 767f, 529f)), vec3<f32>(-674f, 432f, -266f), Struct_3(18088u, 831f, vec3<i32>(global1.x, 47047i, u_input.a.x), 0i)), vec3<f32>(662f, -598f, 137f), var_0).b.b.zz, _wgslsmith_mod_vec2_i32(vec2<i32>(54377i, u_input.b.x), global1.xx), func_5(Struct_4(Struct_2(vec4<bool>(true, true, false, true), u_input.b.yyx, vec2<i32>(-4171i, global1.x), vec3<f32>(-440f, 828f, 218f)), vec3<f32>(861f, -488f, -333f), Struct_3(65538u, -346f, u_input.a, u_input.a.x)), vec3<f32>(-619f, 762f, -826f), -8527i)).a.a, firstTrailingBit(vec3<i32>(var_0, var_0, -2147483647i)) & u_input.a, vec2<i32>(abs(-15298i), var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(256f, 1327f, -1000f))), Struct_2(func_5(func_4(Struct_3(4294967295u, -1199f, u_input.a, var_0), vec2<i32>(u_input.a.x, -25926i), u_input.a.yy, Struct_5(9267u, Struct_2(vec4<bool>(true, true, true, true), vec3<i32>(u_input.b.x, u_input.a.x, 2147483647i), global1.zx, vec3<f32>(-638f, -342f, -925f)), Struct_2(vec4<bool>(false, false, false, true), u_input.a, u_input.a.yz, vec3<f32>(798f, -195f, 849f)), 1u)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(683f, -384f, -610f))), i32(-1i) * -26654i).c.a, u_input.a, select(vec2<i32>(2147483647i, global1.x), ~vec2<i32>(0i, -40143i), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(238f, -345f, -179f), vec3<f32>(-694f, -602f, 1028f)))), ~_wgslsmith_add_u32(~4294967295u, 5413u))).a;
    var var_2 = vec4<i32>(abs(1i), -43711i, func_3().x ^ 1i, var_0);
    var var_3 = -26862i;
    var var_4 = ~(max(var_2.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(46629i, -40725i), func_4(Struct_3(1u, -934f, vec3<i32>(2147483647i, u_input.b.x, -9613i), global1.x), var_2.yx, vec2<i32>(-2147483647i, u_input.a.x), Struct_5(4602u, Struct_2(var_1.a, vec3<i32>(global1.x, var_1.b.x, u_input.b.x), vec2<i32>(var_0, u_input.a.x), var_1.d), Struct_2(var_1.a, vec3<i32>(2147483647i, 2147483647i, 0i), vec2<i32>(-1i, u_input.b.x), vec3<f32>(var_1.d.x, var_1.d.x, var_1.d.x)), 128u)).c.c.x)) & ~global1.x);
    let var_5 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~(~global0[_wgslsmith_index_u32(0u, 23u)]))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(263f + var_1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -212f), _wgslsmith_f_op_f32(-978f * var_1.d.x))))), ~_wgslsmith_div_u32(~reverseBits(1u), ~40210u), var_1.d.x);
}

