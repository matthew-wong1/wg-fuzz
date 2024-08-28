struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true));

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(4294967295u, 0u, -558f, false)), Struct_2(Struct_1(41548u, 38174u, -174f, true)), Struct_2(Struct_1(0u, 1u, -255f, false)), Struct_2(Struct_1(4294967295u, 1u, 2620f, false)), Struct_2(Struct_1(1u, 58621u, -182f, false)), Struct_2(Struct_1(4947u, 11913u, 1000f, false)), Struct_2(Struct_1(28197u, 0u, 749f, true)), Struct_2(Struct_1(585u, 1u, -518f, false)), Struct_2(Struct_1(1u, 0u, -1794f, true)), Struct_2(Struct_1(4294967295u, 4294967295u, 423f, false)), Struct_2(Struct_1(44723u, 0u, -548f, false)), Struct_2(Struct_1(4294967295u, 1u, -421f, false)), Struct_2(Struct_1(4294967295u, 92174u, 160f, false)), Struct_2(Struct_1(84960u, 0u, 213f, true)));

var<private> global3: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec2<bool>(true, false), -337f), Struct_3(vec2<bool>(false, true), 2111f), Struct_3(vec2<bool>(true, false), 1672f), Struct_3(vec2<bool>(true, false), 518f), Struct_3(vec2<bool>(false, false), 173f), Struct_3(vec2<bool>(false, false), -264f));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> u32 {
    var var_0 = arg_1.a.d;
    global0 = array<vec3<bool>, 30>();
    global1 = vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-2075f + arg_1.a.c))), _wgslsmith_f_op_f32(min(-1442f, arg_0.x)), _wgslsmith_f_op_f32(sign(global1.x)));
    var var_1 = arg_1.a;
    var_0 = !(arg_0.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))));
    return u_input.d.x;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<f32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_2 - arg_2)))))));
    global1 = arg_2;
    let var_0 = u_input.d;
    global2 = array<Struct_2, 14>();
    global0 = array<vec3<bool>, 30>();
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~select(vec4<u32>(4294967295u, 4294967295u, 32567u, 17966u), countOneBits(vec4<u32>(var_0.x, 0u, 4294967295u, 1u)), select(vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(false, true, false, true), vec4<bool>(arg_0, false, arg_0, false))), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.d.x, var_0.x, 34861u, u_input.d.x)), ~(~vec4<u32>(52746u, u_input.d.x, 1u, u_input.d.x))), vec4<u32>(4294967295u, _wgslsmith_add_u32(u_input.d.x, func_3(vec3<f32>(-481f, global1.x, 1556f), Struct_2(Struct_1(u_input.d.x, u_input.d.x, global1.x, true)))), ~4294967295u, ~4294967295u)), max(vec4<u32>(50652u, min(u_input.d.x, min(0u, 0u)), ~7544u, ~(~1u)), vec4<u32>(u_input.d.x, countOneBits(reverseBits(0u)), ~(58061u >> (1u % 32u)), u_input.d.x | 26477u))), 14u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: i32, arg_3: Struct_4) -> Struct_4 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(580f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + func_2(arg_0.a.d, arg_1.a.a.x, vec3<f32>(429f, 713f, 103f)).a.c))), arg_1.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-101f * _wgslsmith_f_op_f32(min(arg_0.a.c, _wgslsmith_f_op_f32(min(-392f, 508f))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(543f + -959f) - -402f), 965f))));
    global2 = array<Struct_2, 14>();
    global3 = array<Struct_3, 6>();
    global2 = array<Struct_2, 14>();
    var var_1 = ~vec4<u32>(_wgslsmith_div_u32(arg_0.a.b, _wgslsmith_dot_vec2_u32(u_input.d << (vec2<u32>(1u, arg_3.a) % vec2<u32>(32u)), vec2<u32>(u_input.d.x, arg_1.c.b) >> (u_input.d % vec2<u32>(32u)))), ~(~(~11250u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.a.a, 45407u, ~arg_0.a.a), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, arg_0.a.a), vec3<u32>(1u, arg_3.a, 22200u)) ^ abs(vec3<u32>(u_input.d.x, arg_3.a, arg_1.c.a))), 31472u);
    return arg_3;
}

fn func_5(arg_0: Struct_4) -> Struct_2 {
    var var_0 = global1.x;
    global3 = array<Struct_3, 6>();
    global2 = array<Struct_2, 14>();
    var var_1 = vec4<u32>(func_4(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, arg_0.a, arg_0.a), vec3<u32>(arg_0.a, 41674u, 4294967295u)), arg_0.a)), 14u)], Struct_5(global3[_wgslsmith_index_u32(u_input.d.x, 6u)], vec4<i32>(-1i) * -u_input.b, func_2(true, false, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) * vec3<f32>(global1.x, -1000f, 953f))).a), 0i, func_4(global2[_wgslsmith_index_u32(abs(299u), 14u)], Struct_5(global3[_wgslsmith_index_u32(4294967295u, 6u)], vec4<i32>(u_input.a.x, -13980i, u_input.b.x, u_input.a.x), Struct_1(0u, u_input.d.x, 179f, true)), -3860i << (0u % 32u), func_4(global2[_wgslsmith_index_u32(~arg_0.a, 14u)], Struct_5(Struct_3(vec2<bool>(false, true), global1.x), u_input.b, Struct_1(u_input.d.x, 1u, 1000f, false)), ~(-1i), arg_0))).a, ~_wgslsmith_add_u32(arg_0.a, func_2(true, func_2(true, false, vec3<f32>(-1267f, global1.x, -407f)).a.d, vec3<f32>(716f, -1530f, -336f)).a.a), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(select(arg_0.a, u_input.d.x, false), u_input.d.x), _wgslsmith_add_u32(1u << (u_input.d.x % 32u), ~35466u)), ~(~u_input.d) ^ _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d, u_input.d), u_input.d)), ~_wgslsmith_clamp_u32(reverseBits(_wgslsmith_div_u32(1u, 65237u)), ~func_3(vec3<f32>(1089f, -269f, 1746f), global2[_wgslsmith_index_u32(arg_0.a, 14u)]), func_2(true, any(vec4<bool>(true, false, true, false)), vec3<f32>(global1.x, global1.x, -666f)).a.a));
    let var_2 = _wgslsmith_add_i32(countOneBits(u_input.a.x << ((select(1u, arg_0.a, false) & 1u) % 32u)), 2147483647i);
    return func_2(true, false, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(global1.x, 680f), global1.x, _wgslsmith_f_op_f32(global1.x + global1.x)))))));
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> Struct_5 {
    let var_0 = Struct_4(~(~arg_0));
    let var_1 = select(vec2<bool>(false, !(!arg_1.a.d)), select(select(!vec2<bool>(false, arg_1.a.d), !select(vec2<bool>(false, arg_1.a.d), vec2<bool>(arg_1.a.d, arg_1.a.d), vec2<bool>(arg_1.a.d, true)), !select(vec2<bool>(arg_1.a.d, arg_1.a.d), vec2<bool>(arg_1.a.d, arg_1.a.d), arg_1.a.d)), vec2<bool>(true, all(!vec4<bool>(arg_1.a.d, false, arg_1.a.d, arg_1.a.d))), select(vec2<bool>(true, true), !vec2<bool>(arg_1.a.d, false), select(select(vec2<bool>(false, arg_1.a.d), vec2<bool>(false, false), false), !vec2<bool>(arg_1.a.d, false), arg_1.a.d))), vec2<bool>(arg_1.a.d, true));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.a.c, -432f, global1.x))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.a.c, arg_1.a.c, 855f))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, -578f, -503f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, -101f, -1793f), vec3<f32>(336f, -340f, 956f)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(526f, 612f, 1019f)))))));
    var var_2 = _wgslsmith_clamp_i32(~(-4060i) >> (_wgslsmith_div_u32(~42829u << (var_0.a % 32u), 1u) % 32u), -u_input.b.x, u_input.c.x);
    var var_3 = 61437u;
    return Struct_5(Struct_3(select(var_1, vec2<bool>(!var_1.x, arg_1.a.d), any(select(vec4<bool>(arg_1.a.d, false, true, var_1.x), vec4<bool>(arg_1.a.d, true, var_1.x, var_1.x), vec4<bool>(false, true, false, var_1.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global1.x))))), vec4<i32>(arg_2, _wgslsmith_mod_i32(-arg_2, _wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(arg_2, u_input.a.x))), arg_2, u_input.c.x) & -(reverseBits(u_input.b) << (~vec4<u32>(arg_1.a.a, u_input.d.x, arg_1.a.b, 51518u) % vec4<u32>(32u))), Struct_1(arg_0, func_2(!var_1.x, arg_1.a.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.c, 269f, -2090f)) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.c, arg_1.a.c, global1.x), vec3<f32>(global1.x, arg_1.a.c, arg_1.a.c)))).a.a, _wgslsmith_f_op_f32(arg_1.a.c * -325f), any(var_1) || arg_1.a.d));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>) -> u32 {
    let var_0 = func_6(4294967295u, func_5(func_4(func_2(false, true, vec3<f32>(532f, global1.x, global1.x)), Struct_5(global3[_wgslsmith_index_u32(8185u, 6u)], vec4<i32>(-1i, arg_1.x, 2147483647i, -25740i), Struct_1(4294967295u, 4294967295u, global1.x, false)), select(1i, u_input.c.x << (u_input.d.x % 32u), true), Struct_4(_wgslsmith_sub_u32(u_input.d.x, 4294967295u)))), ~2147483647i);
    let var_1 = reverseBits(max(4294967295u, ~u_input.d.x));
    global3 = array<Struct_3, 6>();
    global2 = array<Struct_2, 14>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-767f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c.c))), var_0.a.b, var_0.a.b));
    return func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_2.yww, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c.c, -1000f, var_0.c.c))))))), global2[_wgslsmith_index_u32(var_1, 14u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 30>();
    var var_0 = Struct_4(max(~u_input.d.x, u_input.d.x));
    let var_1 = u_input.c;
    let var_2 = vec3<u32>(9877u, firstTrailingBit(~42729u), _wgslsmith_div_u32(func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.d.x <= u_input.d.x), vec4<i32>(u_input.b.x | u_input.b.x, _wgslsmith_sub_i32(-44522i, -22667i), ~(-1909i), var_1.x)), _wgslsmith_mod_u32(u_input.d.x, ~1u)));
    var var_3 = Struct_5(func_6(u_input.d.x, global2[_wgslsmith_index_u32(u_input.d.x, 14u)], -2147483647i).a, u_input.b, Struct_1(_wgslsmith_add_u32(countOneBits(_wgslsmith_mult_u32(u_input.d.x, 0u)), func_1(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true), -u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.x, 21319u), var_2), var_0.a, ~0u, ~11878u), countOneBits(~vec4<u32>(var_2.x, var_2.x, 1u, 46725u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x * -576f), _wgslsmith_f_op_f32(global1.x - global1.x)))), func_2(all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), false, vec3<f32>(_wgslsmith_div_f32(194f, global1.x), 180f, func_5(Struct_4(0u)).a.c)).a.d));
    var_3 = func_6(_wgslsmith_div_u32(_wgslsmith_mult_u32(6332u, 0u), 50369u & _wgslsmith_div_u32(var_3.c.b, u_input.d.x)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~func_6(var_2.x, global2[_wgslsmith_index_u32(var_2.x & var_3.c.b, 14u)], var_1.x).c.a, var_0.a), 14u)], _wgslsmith_sub_i32(1i, min(var_3.b.x, 88285i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(var_3.b.x, abs(_wgslsmith_clamp_i32(var_3.b.x, 68061i, var_1.x)), -var_3.b.x, u_input.a.x), vec4<i32>(-13546i, var_3.b.x, func_6(var_3.c.b, global2[_wgslsmith_index_u32(var_0.a, 14u)], var_1.x).b.x, 4783i)), var_1.x);
}

