struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-55043i, -1i);

var<private> global1: array<Struct_1, 8>;

var<private> global2: array<Struct_2, 21>;

var<private> global3: array<i32, 20>;

var<private> global4: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(-316f, 1456f, -617f, 1335f), vec4<f32>(229f, 698f, 1935f, 3234f), vec4<f32>(-1097f, -1304f, 1025f, 315f), vec4<f32>(976f, -1604f, -654f, -1000f), vec4<f32>(-167f, -953f, -143f, -883f), vec4<f32>(766f, 158f, 702f, -788f), vec4<f32>(-837f, 903f, 1320f, -207f), vec4<f32>(-374f, 782f, 183f, -778f), vec4<f32>(-932f, -588f, 1256f, -1060f), vec4<f32>(-1509f, 911f, -736f, -1467f), vec4<f32>(-873f, 1000f, 391f, -864f), vec4<f32>(-220f, 706f, -172f, -955f), vec4<f32>(544f, -302f, 1000f, -188f), vec4<f32>(-337f, -1650f, -645f, 599f), vec4<f32>(-1593f, 695f, 1082f, 702f), vec4<f32>(-391f, -1309f, 1474f, -1404f), vec4<f32>(1043f, -188f, 1077f, 785f), vec4<f32>(-1000f, 1055f, -1623f, 367f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global4 = array<vec4<f32>, 18>();
    var var_0 = any(vec2<bool>(false, true));
    global4 = array<vec4<f32>, 18>();
    var_0 = !(all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)) | true) & false;
    let var_1 = ~abs(_wgslsmith_mult_i32(1i, global3[_wgslsmith_index_u32(1u, 20u)]));
    return ~1u;
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(func_3(), 8u)];
    let var_1 = _wgslsmith_mod_i32(global0.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(130i, global0.x), global0.x << ((u_input.d.x ^ u_input.d.x) % 32u)), 13113i));
    var var_2 = vec3<u32>(_wgslsmith_clamp_u32(min(u_input.d.x, u_input.d.x) >> (u_input.d.x % 32u), u_input.d.x >> (4880u % 32u), ~_wgslsmith_dot_vec2_u32(u_input.d, ~u_input.d)), ~4294967295u, reverseBits(u_input.d.x));
    global4 = array<vec4<f32>, 18>();
    var var_3 = global1[_wgslsmith_index_u32(var_2.x, 8u)];
    return Struct_2(var_1, abs(u_input.c.x | _wgslsmith_dot_vec2_i32(var_3.a, vec2<i32>(-2147483647i, var_3.b))) ^ -(_wgslsmith_clamp_i32(u_input.c.x, 1i, -2147483647i) & -2147483647i), all(!vec4<bool>(any(vec3<bool>(arg_0, false, true)), true, arg_0 & true, arg_0 | arg_0)), Struct_1(vec2<i32>(-(~var_1), ~global0.x), (firstLeadingBit(u_input.e) | -u_input.a) >> ((var_2.x << (u_input.d.x % 32u)) % 32u)), _wgslsmith_sub_i32(1i, u_input.e & var_3.a.x) << (~38755u % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> bool {
    var var_0 = func_2(select((u_input.d.x != _wgslsmith_clamp_u32(1u, u_input.d.x, u_input.d.x)) != arg_0.c, true, arg_0.c));
    global4 = array<vec4<f32>, 18>();
    global0 = vec2<i32>(u_input.b, _wgslsmith_clamp_i32(-var_0.a, _wgslsmith_sub_i32(51686i, 2147483647i >> (u_input.d.x % 32u)) ^ 20268i, abs(var_0.e) & (-2147483647i >> (~u_input.d.x % 32u))));
    global2 = array<Struct_2, 21>();
    return true;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> vec4<f32> {
    let var_0 = -193f;
    let var_1 = vec2<bool>(any(vec3<bool>(true, false, !arg_1.c)), false);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1811f);
    var var_3 = ~u_input.d;
    let var_4 = _wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.d), ~u_input.d), 18u)]);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1741f, -1000f, arg_2, 441f) + vec4<f32>(-540f, _wgslsmith_f_op_f32(round(324f)), _wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(select(var_4.x, arg_2, true)))), global4[_wgslsmith_index_u32(0u, 18u)], !arg_1.c)) - vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -164f)))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(vec2<i32>(~global0.x, -firstLeadingBit(global3[_wgslsmith_index_u32(arg_0, 20u)])), _wgslsmith_mod_i32(reverseBits(~u_input.a) & -73640i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, 2147483647i), u_input.c.xx), vec2<i32>(global3[_wgslsmith_index_u32(0u, 20u)], -2147483647i)) >> (~47117u % 32u)));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-551f - 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -629f) * -841f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1212f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1059f - -2365f) - -250f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-425f * _wgslsmith_f_op_f32(f32(-1f) * -748f)), 1296f, true))), _wgslsmith_f_op_vec4_f32(func_5(10394u, Struct_2(~min(20678i, global3[_wgslsmith_index_u32(0u, 20u)]), (global3[_wgslsmith_index_u32(0u, 20u)] >> (10944u % 32u)) ^ (40170i << (0u % 32u)), func_4(func_2(true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), global1[_wgslsmith_index_u32(~(u_input.d.x >> (4294967295u % 32u)), 8u)], var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-416f)) - -2838f)))));
    var var_2 = arg_0;
    var var_3 = any(vec2<bool>(any(vec2<bool>(true, true)), true));
    var_0 = func_2(true).d;
    return func_2(false).d;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~48917u, 8u)];
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(247f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f + -1795f))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1250f), -849f)), 114f));
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, abs(global3[_wgslsmith_index_u32(75278u, 20u)]) << ((4294967295u | u_input.d.x) % 32u)), vec2<i32>(reverseBits(max(global3[_wgslsmith_index_u32(u_input.d.x, 20u)], 4578i)), global0.x)), vec2<i32>(var_0.a.x << (1u % 32u), max(min(44198i, countOneBits(-2147483647i)), global0.x)));
    let var_3 = Struct_2(~_wgslsmith_div_i32(-(~(-35948i)), ~max(var_0.b, var_0.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d.x, 23955u) & abs(0u), 20u)], 19101i), u_input.c), true, Struct_1(arg_0.a, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(4294967295u, 20u)], -abs(-44893i))), i32(-1i) * -15314i);
    global0 = vec2<i32>(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~firstLeadingBit(u_input.d), u_input.d), 20u)], u_input.c.x);
    return func_2(true).d;
}

fn func_7(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(~u_input.d.x, 21u)];
    global4 = array<vec4<f32>, 18>();
    let var_1 = u_input.d.x;
    global4 = array<vec4<f32>, 18>();
    var var_2 = global2[_wgslsmith_index_u32(abs(firstTrailingBit(u_input.d.x)), 21u)];
    return global2[_wgslsmith_index_u32(var_1, 21u)];
}

fn func_8(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = max(~(~vec3<u32>(1u, 4294967295u, 4294967295u)) ^ select(firstLeadingBit(vec3<u32>(u_input.d.x, u_input.d.x, 0u)), ~countOneBits(vec3<u32>(8960u, u_input.d.x, 12584u)), (u_input.d.x >> (u_input.d.x % 32u)) == _wgslsmith_dot_vec2_u32(vec2<u32>(62134u, u_input.d.x), u_input.d)), vec3<u32>(firstLeadingBit(u_input.d.x), countOneBits(_wgslsmith_sub_u32(abs(u_input.d.x), select(42886u, 51387u, true))), firstLeadingBit(0u)));
    let var_1 = _wgslsmith_div_vec4_f32(global4[_wgslsmith_index_u32(~12745u, 18u)], vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1342f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1555f, -278f)) - -960f)), _wgslsmith_div_f32(195f, -746f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_f_op_f32(sign(-1105f))))));
    global3 = array<i32, 20>();
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    return Struct_1(vec2<i32>(-1i) * -func_6(Struct_1(vec2<i32>(arg_0.d.a.x, -2876i), 1i)).a, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_7(func_6(func_1(~15615u)), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true))), func_4(global2[_wgslsmith_index_u32(~(~u_input.d.x), 21u)], vec2<bool>(false, 1i < global3[_wgslsmith_index_u32(u_input.d.x, 20u)])));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~min(u_input.d, u_input.d), u_input.d | u_input.d), min(u_input.d.x, u_input.d.x << (u_input.d.x % 32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -113f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1238f), -164f)))) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(186f, -1633f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-937f, -348f))), 1000f, true)));
    var var_3 = func_1(_wgslsmith_mod_u32(37528u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, u_input.d.x), reverseBits(vec2<u32>(27968u, 41806u)))) ^ 0u);
    let var_4 = !vec2<bool>(all(!select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, true), vec2<bool>(true, false))), u_input.d.x != ~reverseBits(4294967295u));
    let var_5 = -1072f;
    var var_6 = ~firstLeadingBit(77651u);
    var var_7 = Struct_2(func_8(global2[_wgslsmith_index_u32(35802u, 21u)], max(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(u_input.d.x, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)]), 2147483647i) >= firstLeadingBit(global0.x)).a.x, -2449i, select(var_4.x, false, var_2), Struct_1(-func_6(global1[_wgslsmith_index_u32(u_input.d.x, 8u)]).a, _wgslsmith_dot_vec2_i32(vec2<i32>(func_6(Struct_1(vec2<i32>(-1i, global0.x), var_0.a.x)).a.x, global0.x), u_input.c.xy)), -u_input.c.x);
    let var_8 = vec4<i32>(1i, 0i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, var_0.a.x, global0.x), _wgslsmith_mult_i32(func_8(global2[_wgslsmith_index_u32(u_input.d.x | u_input.d.x, 21u)], func_4(Struct_2(var_3.a.x, 1575i, true, var_7.d, -2147483647i), var_4)).b, var_3.a.x)), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_5, -352f, var_5) + global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, 14151u), 18u)]))), vec3<f32>(_wgslsmith_f_op_f32(-567f * var_5), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_5, -185f)), -1000f, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_5, var_5)), var_4.x)), -942f));
}

