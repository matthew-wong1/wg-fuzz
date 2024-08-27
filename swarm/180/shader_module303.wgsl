struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(false, vec4<u32>(35201u, 0u, 12896u, 0u), Struct_1(4294967295u, true)), Struct_5(true, vec4<u32>(90135u, 4294967295u, 4294967295u, 1u), Struct_1(1u, true)), Struct_5(false, vec4<u32>(23976u, 1u, 1u, 1u), Struct_1(87808u, false)), Struct_5(true, vec4<u32>(67546u, 0u, 51650u, 10292u), Struct_1(4294967295u, true)), Struct_5(true, vec4<u32>(0u, 1u, 1u, 65975u), Struct_1(0u, false)), Struct_5(false, vec4<u32>(46775u, 1u, 56241u, 1u), Struct_1(39604u, false)), Struct_5(true, vec4<u32>(1u, 18817u, 7933u, 60429u), Struct_1(14925u, false)), Struct_5(false, vec4<u32>(0u, 11680u, 82851u, 9064u), Struct_1(18775u, false)), Struct_5(true, vec4<u32>(14287u, 4255u, 42223u, 4294967295u), Struct_1(2658u, true)), Struct_5(true, vec4<u32>(0u, 1u, 0u, 1u), Struct_1(23731u, false)), Struct_5(true, vec4<u32>(36931u, 1u, 2365u, 41107u), Struct_1(4294967295u, true)), Struct_5(true, vec4<u32>(1u, 4294967295u, 0u, 1u), Struct_1(0u, true)), Struct_5(false, vec4<u32>(129839u, 13598u, 47847u, 0u), Struct_1(13737u, false)), Struct_5(false, vec4<u32>(84043u, 47310u, 4294967295u, 1u), Struct_1(32289u, false)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: vec3<f32>) -> vec4<f32> {
    let var_0 = vec4<bool>(global1.b, false, false, true);
    global1 = Struct_1(_wgslsmith_div_u32(u_input.a.x, (14335u | _wgslsmith_mod_u32(global1.a, arg_1.b.x)) << (u_input.a.x % 32u)), all(vec3<bool>(global1.b, true, any(!var_0))));
    global1 = arg_1.c;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1548f)));
    let var_2 = Struct_1(max(max(arg_1.c.a, global1.a), abs(~u_input.a.x)), false);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-206f, arg_2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -333f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -349f), 192f)))), _wgslsmith_f_op_f32(-arg_2.x), -774f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-424f - _wgslsmith_f_op_f32(-arg_2.x)) * _wgslsmith_f_op_f32(floor(296f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1268f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f) + _wgslsmith_f_op_f32(arg_2.x + arg_2.x)), true))));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = Struct_2(839f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1209f, -651f, -1302f, 867f) * vec4<f32>(1000f, -1337f, 1449f, -174f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(425f, 326f, -265f, -168f))), _wgslsmith_div_vec4_f32(vec4<f32>(119f, 1211f, -1485f, 2034f), vec4<f32>(1000f, 809f, 1564f, -954f))), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(568f, 1772f, -204f, 1176f)) * _wgslsmith_f_op_vec4_f32(func_3(0i, Struct_5(arg_0, vec4<u32>(u_input.d.x, u_input.a.x, global1.a, 49804u), Struct_1(global1.a, true)), vec3<f32>(-378f, -820f, 1198f)))))), Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(global1.a ^ 40189u, countOneBits(global1.a)), ~_wgslsmith_mod_u32(u_input.a.x, 41537u)), u_input.b <= 1i), select(select(!select(vec4<bool>(false, false, global1.b, global1.b), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), !select(vec4<bool>(arg_0, arg_0, false, global1.b), vec4<bool>(global1.b, true, arg_0, global1.b), true), true), vec4<bool>(global1.b, !global1.b, arg_0, any(select(vec4<bool>(true, true, false, global1.b), vec4<bool>(arg_0, arg_0, global1.b, true), vec4<bool>(arg_0, false, global1.b, arg_0)))), true));
    global1 = Struct_1(select(~(~(~0u)), 1u, false), true);
    global0 = u_input.c << (~(~_wgslsmith_add_u32(_wgslsmith_sub_u32(global1.a, global1.a), max(u_input.e, 5084u))) % 32u);
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(abs(vec4<i32>(-11582i, u_input.c, u_input.b, 38465i))), ~vec4<i32>(-1i, u_input.b, -1i, u_input.b)), _wgslsmith_add_i32(u_input.b, -u_input.b)), vec2<i32>(reverseBits(u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.c, u_input.b)), abs(u_input.b), firstTrailingBit(u_input.c)), vec3<i32>(u_input.c, firstTrailingBit(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(57826i, u_input.c, -2147483647i, -17659i), vec4<i32>(-28642i, u_input.b, 42736i, -2147483647i))))));
    global2 = array<Struct_5, 14>();
    return _wgslsmith_mult_u32(_wgslsmith_add_u32(abs(~44741u), var_0.c.a), global1.a);
}

fn func_4(arg_0: u32) -> Struct_2 {
    var var_0 = firstTrailingBit(0u);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1914f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1076f, -645f)))))), _wgslsmith_f_op_vec4_f32(func_3(~_wgslsmith_div_i32(u_input.b, 18271i) >> (17469u % 32u), Struct_5(all(vec2<bool>(false, false)), u_input.a << (u_input.a % vec4<u32>(32u)), Struct_1(~4294967295u, !global1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(-2147483647i, global2[_wgslsmith_index_u32(4294967295u, 14u)], vec3<f32>(-137f, 1210f, 1411f))).yyx) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-470f, -734f, -622f)))))))), Struct_1(~_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0, 4294967295u), global1.a), !global1.b), !(!select(!vec4<bool>(global1.b, global1.b, true, global1.b), select(vec4<bool>(global1.b, true, global1.b, true), vec4<bool>(true, global1.b, false, global1.b), vec4<bool>(false, global1.b, false, global1.b)), !vec4<bool>(false, false, global1.b, true))));
    let var_2 = all(!var_1.d.yyz);
    let var_3 = vec4<f32>(_wgslsmith_div_f32(var_1.a, var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1338f, var_1.b.x))))), var_1.b.x);
    let var_4 = vec2<i32>(~(-1i), select(-1i, u_input.b, true));
    return Struct_2(1465f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.x, var_3.x, -351f, var_1.a), var_1.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(243f, var_1.a, var_3.x, var_3.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b.x, var_3.x, var_3.x, var_3.x))))), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, var_4.x, 43359i), ~vec3<i32>(1i, 1i, var_4.x)), global2[_wgslsmith_index_u32(~3392u, 14u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(1586f, var_1.b.x, var_3.x))))), var_1.c, var_1.d);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = func_4(func_2(true));
    let var_1 = reverseBits(-firstTrailingBit(_wgslsmith_mult_i32(firstLeadingBit(u_input.b), 8574i << (0u % 32u))));
    global2 = array<Struct_5, 14>();
    var var_2 = var_0.d;
    var var_3 = Struct_1(global1.a, !all(func_4(arg_3.a).d));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_div_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, 78246u), select(u_input.d.x, global1.a, false)), 67048u ^ func_1(10262u & u_input.e, select(u_input.d.zx, u_input.d.yz, false), all(vec3<bool>(false, global1.b, global1.b)), Struct_1(59264u, global1.b))), global1.b);
    global0 = -min((43547i & u_input.b) >> ((11607u >> (global1.a % 32u)) % 32u), 2147483647i) << (func_1(_wgslsmith_mod_u32(func_2(!global1.b), func_2(global1.a > global1.a)), max(abs(min(vec2<u32>(global1.a, 1u), vec2<u32>(4294967295u, 23477u))), ~(~vec2<u32>(0u, u_input.e))), false || all(select(vec3<bool>(global1.b, false, global1.b), vec3<bool>(false, global1.b, global1.b), vec3<bool>(false, global1.b, false))), func_4(1u).c) % 32u);
    global0 = _wgslsmith_div_i32(max(u_input.c, 1i), 995i);
    global0 = _wgslsmith_add_i32(~_wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_clamp_i32(0i, 0i, u_input.b)), ~_wgslsmith_sub_i32(1i, 1i), (u_input.c >> (global1.a % 32u)) << (_wgslsmith_mult_u32(global1.a, u_input.d.x) % 32u)), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-2147483647i, u_input.c, u_input.b, -1i)), vec4<i32>(firstTrailingBit(u_input.c), 1i, max(-2147483647i, 42249i), u_input.b)) & -2147483647i);
    var var_0 = Struct_5(any(vec4<bool>(!global1.b, true && global1.b, false, !global1.b)) && (global1.a > 0u), select(vec4<u32>(37898u, 1u, _wgslsmith_mult_u32(countOneBits(26483u), func_4(13742u).c.a), ~_wgslsmith_clamp_u32(u_input.a.x, 0u, 0u)), abs(~abs(u_input.a)), vec4<bool>(true, global1.b, all(!vec3<bool>(global1.b, true, global1.b)), global1.b)), Struct_1(40945u, false));
    let var_1 = reverseBits(u_input.d.x | (var_0.c.a | _wgslsmith_sub_u32(1u, 1u)));
    var var_2 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(u_input.b, Struct_5(global1.b, var_0.b, var_0.c), vec3<f32>(-1475f, 178f, 185f))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(461f, -231f, -1801f, 1056f), _wgslsmith_f_op_vec4_f32(vec4<f32>(827f, -513f, 1551f, 787f) - vec4<f32>(-701f, -893f, 1863f, -759f)), !var_0.a))))));
}

