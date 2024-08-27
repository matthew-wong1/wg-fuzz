struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec3<u32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = Struct_2(select(global0[_wgslsmith_index_u32(75527u, 8u)], select(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_1.a.x, arg_0.a.x), vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x)), countOneBits(global0[_wgslsmith_index_u32(arg_1.a.x, 8u)] << (vec3<u32>(0u, 4465u, 4197u) % vec3<u32>(32u))), vec3<bool>(true, true, true)), -2007f == _wgslsmith_f_op_f32(sign(var_0))), arg_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, var_0))), var_0) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -139f) * _wgslsmith_f_op_f32(746f - -737f)), var_0)), Struct_1(~arg_0.a));
    global0 = array<vec3<u32>, 8>();
    let var_2 = 71714u;
    return arg_1;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: vec4<bool>) -> Struct_5 {
    global0 = array<vec3<u32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(-arg_0.c.x);
    let var_1 = select(vec2<bool>(arg_0.c.x > -1685f, all(vec2<bool>(true, true))), !(!vec2<bool>(!arg_3.x, 1u >= arg_2)), arg_3.x);
    var var_2 = Struct_1(abs(arg_0.b.a));
    var var_3 = arg_0;
    return Struct_5(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(207f, var_3.c.x, _wgslsmith_f_op_f32(1193f * -1000f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-921f, -1817f, arg_0.c.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.x, var_3.c.x, arg_1.c.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(619f, 1106f, -379f) + vec3<f32>(189f, var_3.c.x, 616f))))))), _wgslsmith_sub_vec4_i32(u_input.b, ~(~firstLeadingBit(vec4<i32>(u_input.b.x, 0i, u_input.c, 90215i)))));
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    var var_0 = u_input.b.yx;
    var var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 22504u, 0u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), ~countOneBits(vec4<u32>(4294967295u, 11397u, 0u, 1u)), select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 4294967295u, 0u, 87808u), vec4<bool>(true, true, true, true))) | ~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~(~max(0u, 4294967295u)), 4294967295u, 0u, 4294967295u));
    let var_2 = _wgslsmith_add_u32(~var_1.x, var_1.x);
    global0 = array<vec3<u32>, 8>();
    var_1 = (vec4<u32>(~(~var_2), countOneBits(var_2 & var_1.x), func_2(func_2(Struct_1(vec4<u32>(4294967295u, var_1.x, 1u, 4294967295u)), Struct_1(vec4<u32>(51139u, var_2, 79812u, 16632u))), func_2(Struct_1(vec4<u32>(var_1.x, 3648u, var_1.x, 38459u)), Struct_1(vec4<u32>(var_1.x, var_1.x, var_2, var_2)))).a.x, ~(~1u)) ^ ~vec4<u32>(_wgslsmith_mod_u32(0u, var_2), _wgslsmith_div_u32(var_1.x, 13219u), _wgslsmith_sub_u32(var_2, var_2), 48545u)) << (vec4<u32>(~(~(~var_1.x)), _wgslsmith_add_u32(var_1.x >> (_wgslsmith_add_u32(var_2, var_1.x) % 32u), firstTrailingBit(var_2)), 74475u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 42521u, var_1.x, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(34695u, var_2, var_2, 1u), vec4<u32>(var_1.x, 4294967295u, 61444u, 38265u))) % 32u), _wgslsmith_add_u32(var_2, _wgslsmith_sub_u32(1u, firstTrailingBit(95719u)))) % vec4<u32>(32u));
    return Struct_1(_wgslsmith_sub_vec4_u32(~(vec4<u32>(var_2, 4294967295u, var_2, var_2) ^ (vec4<u32>(1u, 38701u, var_2, var_2) & vec4<u32>(var_2, var_1.x, 61329u, 1u))), vec4<u32>(min(~var_1.x, _wgslsmith_mod_u32(57820u, var_2)), ~(48228u | var_1.x), var_2, 46005u)));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_3(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(51463u, 77564u, 0u, 4294967295u)) ^ select(~vec4<u32>(1u, 39232u, 16731u, 13599u), vec4<u32>(1u, 1u, 23164u, 4294967295u), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_u32(vec4<u32>(~1u, 1u, 4294967295u, 1u), vec4<u32>(3757u, 1u, ~1u, 883u))), func_4(func_3(Struct_2(~global0[_wgslsmith_index_u32(1u, 8u)], func_2(Struct_1(vec4<u32>(1u, 0u, 23285u, 32005u)), Struct_1(vec4<u32>(0u, 100647u, 52524u, 4294967295u))), vec2<f32>(-864f, 1544f), Struct_1(vec4<u32>(0u, 1u, 78304u, 3299u))), Struct_2(global0[_wgslsmith_index_u32(25115u, 8u)] | global0[_wgslsmith_index_u32(4294967295u, 8u)], Struct_1(vec4<u32>(1u, 9275u, 1u, 0u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-371f, -264f) + vec2<f32>(665f, 1224f)), Struct_1(vec4<u32>(1u, 15161u, 90988u, 0u))), 1u, select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true)))), vec4<f32>(-160f, _wgslsmith_f_op_f32(574f + _wgslsmith_f_op_f32(579f * _wgslsmith_f_op_f32(max(1896f, -259f)))), _wgslsmith_div_f32(func_3(Struct_2(vec3<u32>(4294967295u, 51448u, 25594u), Struct_1(vec4<u32>(0u, 43256u, 25256u, 60743u)), vec2<f32>(-1676f, -646f), Struct_1(vec4<u32>(21341u, 96186u, 1u, 50476u))), Struct_2(global0[_wgslsmith_index_u32(0u, 8u)], Struct_1(vec4<u32>(1u, 54915u, 0u, 1u)), vec2<f32>(-633f, -2302f), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 0u))), 1u, select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))).a.x, -184f), 1000f), true);
    let var_1 = func_4(Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -546f))), vec4<i32>(~0i, u_input.c, -_wgslsmith_sub_i32(u_input.b.x, 19474i), u_input.a & firstLeadingBit(u_input.a))));
    let var_2 = firstLeadingBit(_wgslsmith_sub_i32(0i, -u_input.c & _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c, -50262i), ~u_input.c)));
    let var_3 = _wgslsmith_f_op_f32(sign(-950f));
    var_0 = Struct_3(abs(12787u), func_4(Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1453f, var_3, -379f), vec3<f32>(-468f, 191f, -781f)))), u_input.b)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, -1907f, var_0.c.x) - _wgslsmith_f_op_vec4_f32(-var_0.c)), _wgslsmith_div_vec4_f32(var_0.c, var_0.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_3)), -209f, _wgslsmith_f_op_f32(-var_0.c.x), -349f)))), any(vec3<bool>(true, all(!vec4<bool>(var_0.d, true, var_0.d, var_0.d)), true)));
    return Struct_4(vec3<i32>(var_2, -26877i, select(17455i, -1i, true) & ((i32(-1i) * -3895i) << (var_1.a.x % 32u))), !select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(var_0.d, false)), !vec2<bool>(false, var_0.d), false));
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    global0 = array<vec3<u32>, 8>();
    let var_0 = arg_0;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-952f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.c.x, 828f, false)), -1787f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1368f), -1075f)));
    global0 = array<vec3<u32>, 8>();
    var var_2 = reverseBits(reverseBits(arg_2.d.a.x));
    return arg_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1096u;
    let var_1 = _wgslsmith_f_op_f32(115f * -614f);
    global0 = array<vec3<u32>, 8>();
    global0 = array<vec3<u32>, 8>();
    let var_2 = func_5(func_1(), any(vec2<bool>(select(true, true, true), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)))), Struct_2(reverseBits(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(0u, 24952u, 1u)), ~global0[_wgslsmith_index_u32(53153u, 8u)])), Struct_1(~select(vec4<u32>(53948u, 0u, 60616u, 4294967295u), vec4<u32>(4294967295u, 27343u, 0u, 47481u), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1, var_1)))))), Struct_1(vec4<u32>(1u, _wgslsmith_mod_u32(0u, 62279u), _wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u), ~0u))), var_1);
    var var_3 = -1475f;
    var_0 = func_2(func_5(Struct_4(~vec3<i32>(u_input.a, -1i, -1i), func_1().b), func_3(Struct_2(var_2.a.wyw, var_2, vec2<f32>(var_1, -1691f), var_2), Struct_2(vec3<u32>(4088u, 32833u, var_2.a.x), var_2, vec2<f32>(var_1, -1000f), var_2), _wgslsmith_dot_vec4_u32(var_2.a, vec4<u32>(var_2.a.x, var_2.a.x, 33269u, 21782u)), vec4<bool>(true, true, true, false)).b.x != select(max(u_input.b.x, -15330i), ~u_input.c, true), Struct_2(vec3<u32>(4002u, var_2.a.x, 1u) ^ max(vec3<u32>(var_2.a.x, var_2.a.x, var_2.a.x), global0[_wgslsmith_index_u32(0u, 8u)]), var_2, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(122f, var_1), vec2<f32>(var_1, var_1)))), Struct_1(_wgslsmith_clamp_vec4_u32(var_2.a, vec4<u32>(var_2.a.x, var_2.a.x, 4980u, var_2.a.x), vec4<u32>(0u, var_2.a.x, 1u, var_2.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(748f))) * -1851f)), func_4(Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -102f, 956f)), u_input.b))).a.x;
    global0 = array<vec3<u32>, 8>();
    var_3 = _wgslsmith_f_op_f32(-899f - _wgslsmith_f_op_f32(-var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~vec4<u32>(abs(4294967295u), ~122488u, ~var_2.a.x, reverseBits(30246u)), var_2.a >> (~(~vec4<u32>(18701u, var_2.a.x, 0u, 1u)) % vec4<u32>(32u))), reverseBits(var_2.a.yzy), var_1);
}

