struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<i32, 30> = array<i32, 30>(-9742i, 10157i, -55962i, 1i, -1i, -1i, 2403i, -1247i, 2147483647i, -7452i, -33041i, i32(-2147483648), 1i, 48090i, -55219i, i32(-2147483648), -13859i, -16717i, -7647i, 1i, 2095i, 1i, i32(-2147483648), -103363i, 15335i, 13616i, -55122i, 9777i, 2147483647i, 1419i);

var<private> global2: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(28853i, 63139i, 20030i, -73176i), vec4<i32>(-44422i, i32(-2147483648), 35122i, 4214i), vec4<i32>(-10039i, -10862i, 5707i, 2147483647i), vec4<i32>(41085i, -38810i, 2147483647i, -1i), vec4<i32>(-1i, 81525i, 1i, 32745i), vec4<i32>(-46386i, 0i, i32(-2147483648), 0i), vec4<i32>(48584i, -62180i, 1i, -1i), vec4<i32>(2446i, 48270i, i32(-2147483648), 0i), vec4<i32>(-2690i, -3928i, -18777i, 2147483647i), vec4<i32>(i32(-2147483648), -40285i, 0i, -3007i), vec4<i32>(i32(-2147483648), -69436i, 2147483647i, -27797i), vec4<i32>(-28547i, 57652i, 1i, -1i), vec4<i32>(i32(-2147483648), 2147483647i, 1i, -2158i), vec4<i32>(i32(-2147483648), 1i, 0i, 16700i), vec4<i32>(-1i, 2147483647i, 2147483647i, -30894i), vec4<i32>(-4668i, 2147483647i, 15779i, 0i), vec4<i32>(-1i, 0i, 31803i, -44219i), vec4<i32>(2147483647i, 1i, -27047i, 1i), vec4<i32>(1i, -30354i, 29781i, 2147483647i));

var<private> global3: vec2<u32> = vec2<u32>(35378u, 32926u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: f32) -> vec4<i32> {
    var var_0 = select(select(vec4<bool>(2155u == firstLeadingBit(u_input.c), true, !all(vec4<bool>(false, true, true, false)), select(false, true, true) | true), vec4<bool>(false, false, true, false), vec4<bool>(false, any(vec2<bool>(false, true)) & true, ~global0[_wgslsmith_index_u32(u_input.c, 27u)] != -global0[_wgslsmith_index_u32(10180u, 27u)], select(true, true, true))), !(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)))), vec4<bool>(any(vec4<bool>(true, true, true, true)), -294f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + arg_2) + 171f), (-1i ^ _wgslsmith_clamp_i32(-22479i, -30627i, 22577i)) <= abs(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(global3.x, 30u)], -2147483647i)), false));
    let var_1 = true;
    var var_2 = Struct_2(Struct_1(-(vec4<i32>(-1i) * -global2[_wgslsmith_index_u32(27428u, 19u)]), _wgslsmith_f_op_f32(f32(-1f) * -140f), arg_2, u_input.d), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-237f, 919f)) * _wgslsmith_f_op_f32(f32(-1f) * -593f)), arg_2))), (-abs(global0[_wgslsmith_index_u32(42177u, 27u)]) << (_wgslsmith_mult_u32(~arg_1, 4294967295u) % 32u)) != arg_0);
    let var_3 = -23144i;
    global0 = array<i32, 27>();
    return var_2.a.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> vec4<i32> {
    let var_0 = Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(907f * 360f), arg_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(534f, 685f), vec2<f32>(arg_0.c, 599f))))))), all(vec3<bool>(arg_2.x, true, arg_2.x)));
    global0 = array<i32, 27>();
    let var_1 = select(arg_1, any(!arg_2.xy), true) | !(!(var_0.c | false) | !(!var_0.c));
    global0 = array<i32, 27>();
    global3 = firstLeadingBit(u_input.a << (select(u_input.a, vec2<u32>(~u_input.b, u_input.b ^ 48338u), false) % vec2<u32>(32u)));
    return ~arg_0.a;
}

fn func_2() -> vec2<bool> {
    global0 = array<i32, 27>();
    let var_0 = Struct_1(func_4(Struct_1(~func_3(u_input.d, 1u, 878f), -870f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -666f) + _wgslsmith_f_op_f32(sign(505f))), -global0[_wgslsmith_index_u32(u_input.a.x | global3.x, 27u)]), true, vec3<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))), true, any(vec4<bool>(false, false, false, true)))), -1781f, -1000f, 0i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(115f, var_0.b))) * var_0.b);
    global1 = array<i32, 30>();
    let var_2 = !(any(vec3<bool>(true, true, false)) || select(4294967295u < global3.x, var_0.c < var_0.b, true)) & (global1[_wgslsmith_index_u32(u_input.b, 30u)] > min(u_input.d, var_0.a.x << (global3.x % 32u)));
    return select(vec2<bool>(true, all(select(!vec3<bool>(false, var_2, var_2), !vec3<bool>(var_2, true, var_2), vec3<bool>(true, false, true)))), select(select(!select(vec2<bool>(var_2, var_2), vec2<bool>(true, var_2), vec2<bool>(true, true)), select(select(vec2<bool>(var_2, true), vec2<bool>(var_2, var_2), vec2<bool>(var_2, true)), select(vec2<bool>(false, var_2), vec2<bool>(var_2, var_2), true), vec2<bool>(var_2, true)), select(select(vec2<bool>(true, var_2), vec2<bool>(false, false), var_2), vec2<bool>(true, true), select(var_2, var_2, var_2))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false & var_2)), vec2<bool>(any(vec4<bool>(var_2, var_2, var_2, true)), false)), (false && all(select(vec4<bool>(true, var_2, var_2, true), vec4<bool>(true, var_2, false, false), var_2))) & true);
}

fn func_1() -> vec3<bool> {
    var var_0 = select((any(vec2<bool>(true, true)) && (_wgslsmith_clamp_i32(-11063i, -29336i, -24502i) < (i32(-1i) * -2147483647i))) && !any(vec2<bool>(true, true)), !(!all(vec3<bool>(false, false, true))), true);
    var var_1 = 1597f;
    var_1 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2203f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1095f)) + _wgslsmith_f_op_f32(-438f * 502f))))));
    global3 = _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, ~global3.x, 0u, 54327u), vec4<u32>(_wgslsmith_mult_u32(u_input.b, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3.x, 7377u, u_input.a.x), vec4<u32>(4294967295u, 90622u, 24547u, 0u)), _wgslsmith_div_u32(u_input.c, u_input.a.x), ~u_input.b))), u_input.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-360f)));
    return vec3<bool>(any(!vec3<bool>(true, any(vec2<bool>(false, false)), true)), any(select(vec2<bool>(true, any(vec2<bool>(true, true))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), func_2(), true), vec2<bool>(true, true))), true);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -605f)), -1061f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -656f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-142f, -446f, 735f)))))));
    var_0 = Struct_4(var_0.a);
    let var_1 = vec4<bool>(all(!func_1()), arg_1.x, arg_1.x, arg_1.x);
    global1 = array<i32, 30>();
    var var_2 = reverseBits(~(_wgslsmith_add_vec2_u32(max(vec2<u32>(global3.x, 86189u), vec2<u32>(u_input.b, global3.x)), firstTrailingBit(vec2<u32>(u_input.b, u_input.c))) << (vec2<u32>(u_input.b, u_input.a.x) % vec2<u32>(32u))));
    return Struct_1(vec4<i32>(-1i) * -vec4<i32>(-1i, -global0[_wgslsmith_index_u32(1u, 27u)], min(global0[_wgslsmith_index_u32(27306u, 27u)], arg_2), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_2.x, 27u)], global0[_wgslsmith_index_u32(53322u, 27u)])), _wgslsmith_f_op_f32(select(-444f, -320f, var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(421f, var_0.a.x))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!vec4<bool>(true, true, false, (2147483647i << (global3.x % 32u)) == (2147483647i & global0[_wgslsmith_index_u32(u_input.b, 27u)])));
    let var_1 = func_5(~(~vec2<i32>(-2147483647i, 2147483647i)), vec4<bool>(!(true == select(true, true, true)), true, any(select(func_1(), vec3<bool>(true, false, true), true)), ((-11258i <= u_input.d) || true) | true), max(firstTrailingBit(countOneBits(global0[_wgslsmith_index_u32(u_input.a.x, 27u)]) | 1i), global1[_wgslsmith_index_u32(~u_input.b, 30u)] << (4294967295u % 32u)));
    var_0 = !(!(u_input.a.x <= _wgslsmith_clamp_u32(~7733u, ~global3.x, ~global3.x)));
    let var_2 = Struct_3(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, _wgslsmith_sub_u32(reverseBits(0u), _wgslsmith_add_u32(global3.x, 4294967295u)), firstTrailingBit(reverseBits(51453u)), 43640u >> (_wgslsmith_add_u32(0u, global3.x) % 32u)), vec4<u32>(min(global3.x, 14084u), _wgslsmith_add_u32(0u, 1u), abs(0u), ~58638u) | (vec4<u32>(73911u, u_input.a.x, 29378u, u_input.b) | ~vec4<u32>(u_input.b, global3.x, u_input.b, 40081u))), vec2<bool>(false, false), vec3<u32>(firstTrailingBit(~(4294967295u | global3.x)), 4294967295u, reverseBits(_wgslsmith_mod_u32(_wgslsmith_mod_u32(33375u, 1u), u_input.a.x))), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), global3.x == global3.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), select(true, true, true)), !vec4<bool>(true, true, func_1().x, true), !func_1().x));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-275f + _wgslsmith_f_op_f32(min(723f, 300f))), 1074f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), var_1.b)) * vec3<f32>(-618f, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)))), _wgslsmith_mod_vec3_u32(vec3<u32>(abs(_wgslsmith_div_u32(69112u, 93415u)), ~(~u_input.a.x), ~var_2.c.x), countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(11532u, 0u, 8881u), var_2.a.zxx)) | (vec3<u32>(var_2.c.x, u_input.b, 4294967295u) << (min(vec3<u32>(global3.x, 24807u, 1u), vec3<u32>(0u, 4294967295u, 33529u)) % vec3<u32>(32u)))), ~abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(global3.x, 81712u, var_2.c.x), vec3<u32>(var_3.a.x, 4294967295u, 41916u))));
}

