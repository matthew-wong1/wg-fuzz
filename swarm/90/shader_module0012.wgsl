struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec2<u32> {
    global1 = array<vec2<bool>, 25>();
    global0 = array<bool, 14>();
    let var_0 = ~_wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(1i, 67862i, 20857i))), _wgslsmith_div_vec3_i32(-vec3<i32>(-1i, arg_0.c, u_input.b), ~vec3<i32>(u_input.b, 65959i, u_input.b))) >> (abs(~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(1u, arg_0.a)) ^ 8434u) % 32u);
    let var_1 = vec4<bool>(any(!global1[_wgslsmith_index_u32(u_input.a.x ^ 1u, 25u)]), any(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]))), any(vec3<bool>(global0[_wgslsmith_index_u32(select(28608u, u_input.a.x, false) >> (~arg_0.a % 32u), 14u)], global0[_wgslsmith_index_u32(reverseBits(~21614u), 14u)], all(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.b.a.x, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], true), global0[_wgslsmith_index_u32(u_input.a.x, 14u)])))), global0[_wgslsmith_index_u32(arg_0.a, 14u)]);
    let var_2 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 110624u), arg_0.b.a)), ~arg_0.b.a), 0u), Struct_1(vec2<u32>(u_input.a.x, countOneBits(arg_0.b.a.x) & ~arg_0.a)), u_input.b);
    return ~(arg_0.b.a << (countOneBits(~u_input.a) % vec2<u32>(32u)));
}

fn func_2() -> Struct_2 {
    var var_0 = true;
    var var_1 = Struct_3(Struct_2(_wgslsmith_sub_u32(firstTrailingBit(u_input.a.x), min(~4294967295u, u_input.a.x & 1542u)), Struct_1(func_3(Struct_2(80243u, Struct_1(vec2<u32>(1u, 0u)), u_input.b), -207f)), u_input.b), func_3(Struct_2(39180u, Struct_1(abs(u_input.a)), 0i), -921f).x, Struct_1(~u_input.a), Struct_2(u_input.a.x, Struct_1(vec2<u32>(~u_input.a.x, ~14060u)), ~u_input.b));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(784f, 1f, _wgslsmith_f_op_f32(step(-320f, 914f)), _wgslsmith_f_op_f32(floor(109f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -865f)), _wgslsmith_f_op_f32(max(-931f, -683f)), _wgslsmith_f_op_f32(f32(-1f) * -846f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1315f * -1470f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(540f, -2189f)) + _wgslsmith_f_op_f32(ceil(-953f))), -577f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(699f, -515f)))), _wgslsmith_f_op_f32(f32(-1f) * -1747f)), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(Struct_2(u_input.a.x, var_1.c, var_1.a.c), _wgslsmith_f_op_f32(f32(-1f) * -2823f)).x, 4294967295u), 14u)], false, all(select(vec3<bool>(false, true, false), select(vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.c.a.x, 14u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(var_1.d.b.a.x, 14u)]), global0[_wgslsmith_index_u32(var_1.d.a, 14u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(var_1.b, 14u)]))), true)));
    let var_3 = Struct_3(var_1.a, 17468u, Struct_1(firstLeadingBit(abs(abs(var_1.c.a)))), var_1.a);
    var_1 = var_3;
    return Struct_2(u_input.a.x, Struct_1(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 11868u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 34569u), u_input.a))), select(-13789i, -reverseBits(-u_input.b), false));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_3 {
    global1 = array<vec2<bool>, 25>();
    global1 = array<vec2<bool>, 25>();
    let var_0 = true;
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_3 {
    global1 = array<vec2<bool>, 25>();
    global0 = array<bool, 14>();
    global1 = array<vec2<bool>, 25>();
    global0 = array<bool, 14>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -444f), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(334f + 750f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -817f) * -884f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1317f)), _wgslsmith_f_op_f32(-365f * 723f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1057f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-2554f, 372f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -702f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1412f, -1361f) + _wgslsmith_f_op_f32(f32(-1f) * -355f)))));
    return arg_0;
}

fn func_1(arg_0: i32) -> vec2<i32> {
    global1 = array<vec2<bool>, 25>();
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(489f, -1158f, 1255f, -335f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-385f, 498f, -953f, -862f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-263f, -1418f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -203f), _wgslsmith_f_op_f32(f32(-1f) * -333f))), 1f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-498f, 1000f, 1078f, 1708f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1745f, -2412f, 1402f, -2152f))))));
    let var_2 = func_5(func_4(Struct_3(func_2(), _wgslsmith_div_u32(u_input.a.x, 56058u), func_2().b, Struct_2(reverseBits(u_input.a.x), func_2().b, arg_0)), _wgslsmith_add_vec2_u32(u_input.a | vec2<u32>(u_input.a.x, u_input.a.x), abs(vec2<u32>(4294967295u, u_input.a.x)))), !(!select(vec2<bool>(true, true), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(32102u, 3682u), 25u)], vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], true))), Struct_3(func_2(), 1u, Struct_1(max(u_input.a, reverseBits(vec2<u32>(u_input.a.x, 40129u)))), Struct_2(func_2().a, func_2().b, _wgslsmith_sub_i32(arg_0, -u_input.b))), select(select(vec2<bool>(true, true), vec2<bool>(all(global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), global0[_wgslsmith_index_u32(1u, 14u)]), any(vec3<bool>(global0[_wgslsmith_index_u32(74699u, 14u)], false, true))), global1[_wgslsmith_index_u32(0u >> (~u_input.a.x % 32u), 25u)], all(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 14u)], true, global0[_wgslsmith_index_u32(151664u, 14u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 14u)], true), select(vec4<bool>(global0[_wgslsmith_index_u32(21003u, 14u)], true, global0[_wgslsmith_index_u32(1u, 14u)], true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 14u)], false, false, true), false)))));
    return min(vec2<i32>(firstTrailingBit(u_input.b), -2147483647i ^ var_2.a.c), firstLeadingBit(-(vec2<i32>(85802i, u_input.b) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))) >> (~min(vec2<u32>(4294967295u, 0u), ~u_input.a) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-409f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(245f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(460f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(231f + -655f))) + -270f))));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 3079f, -718f, -2099f) + vec4<f32>(var_0.x, -889f, var_0.x, 773f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1226f, 588f, -945f, var_0.x), vec4<f32>(1795f, 522f, -1000f, 1117f)), vec4<f32>(var_0.x, -1388f, 434f, var_0.x), true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(597f, -977f, -244f, 945f)))))))));
    let var_1 = func_1(firstLeadingBit((u_input.b >> (1u % 32u)) ^ (_wgslsmith_sub_i32(u_input.b, u_input.b) << (abs(31451u) % 32u))));
    let var_2 = var_0.x;
    var var_3 = -abs(i32(-1i) * -var_1.x);
    var_0 = vec4<f32>(var_0.x, -1828f, -175f, 1429f);
    var var_4 = func_4(Struct_3(func_2(), ~(u_input.a.x << (1u % 32u)), func_2().b, Struct_2(_wgslsmith_mod_u32(~u_input.a.x, u_input.a.x), Struct_1(~vec2<u32>(u_input.a.x, 60879u)), -reverseBits(1i))), vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 0u), ~1u)).d.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.b | _wgslsmith_sub_i32(~(-15178i), var_1.x), _wgslsmith_mod_i32(i32(-1i) * -12338i, abs(var_1.x))), ~(41143u << (~func_5(Struct_3(Struct_2(55905u, Struct_1(var_4.a), 52537i), 0u, Struct_1(vec2<u32>(4294967295u, 15522u)), Struct_2(var_4.a.x, Struct_1(u_input.a), u_input.b)), global1[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_3(Struct_2(u_input.a.x, Struct_1(var_4.a), -2147483647i), 0u, Struct_1(var_4.a), Struct_2(u_input.a.x, Struct_1(u_input.a), u_input.b)), global1[_wgslsmith_index_u32(9566u, 25u)]).c.a.x % 32u)));
}

