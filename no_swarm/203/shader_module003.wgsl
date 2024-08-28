struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1;

var<private> global3: array<i32, 25>;

var<private> global4: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(66600u, 16000u), vec2<u32>(9244u, 31696u), vec2<u32>(17012u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 15893u), vec2<u32>(57119u, 8052u), vec2<u32>(17427u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(1u, 74084u), vec2<u32>(13978u, 0u), vec2<u32>(4294967295u, 48974u), vec2<u32>(24063u, 66775u), vec2<u32>(0u, 46254u), vec2<u32>(17979u, 17780u), vec2<u32>(1u, 13762u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32) -> f32 {
    global4 = array<vec2<u32>, 15>();
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(max(select(vec4<u32>(21995u, 0u, 4294967295u, 52180u), vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(false, false, global0.c.c.x, arg_0.c.c.x), vec4<bool>(true, false, true, true), vec4<bool>(global0.c.c.x, false, true, false))), ~(~vec4<u32>(1u, 4294967295u, 1u, 58063u))), vec4<u32>(1u, min(abs(57767u), ~1u), countOneBits(1u), ~(~38987u))), 1u);
    var var_1 = _wgslsmith_add_i32(global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(0u, 25u)]);
    let var_2 = select(select(vec3<bool>(false, true, true), !select(!vec3<bool>(true, false, global0.a.c.x), select(vec3<bool>(true, true, global0.c.c.x), vec3<bool>(true, true, false), vec3<bool>(global0.a.c.x, true, arg_0.a.c.x)), vec3<bool>(true, global0.a.c.x, true)), !(_wgslsmith_f_op_f32(min(global1.x, -300f)) == _wgslsmith_f_op_f32(-874f - global1.x))), select(!vec3<bool>(!global0.a.c.x, arg_0.a.c.x, false), !vec3<bool>(true, any(vec4<bool>(global0.c.c.x, true, false, true)), arg_0.a.c.x | global2.c.x), arg_0.c.c.x), all(!global2.c));
    global3 = array<i32, 25>();
    return global0.a.a.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = global0.c;
    var var_1 = Struct_2(Struct_1(vec4<f32>(global0.a.a.x, _wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(-874f * global0.c.a.x)), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(global2.b.x + var_0.a.x))), global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.wwx))), select(var_0.c, !vec2<bool>(global0.a.c.x, true), global0.c.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<f32>(758f, global2.b.x, -722f, var_0.a.x), vec3<f32>(var_0.a.x, global2.a.x, -807f), vec2<bool>(false, true)), vec2<f32>(global0.b.x, global0.a.a.x), global0.c), global2.a.zzw, -565f)), _wgslsmith_div_f32(global2.b.x, 1512f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2461f, var_0.a.x))) * _wgslsmith_f_op_vec2_f32(step(var_0.b.yy, global2.a.zy)))))), global0.a);
    var var_2 = Struct_2(global0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yy), var_0.b.xy) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1483f, global1.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, global2.a.x) * vec2<f32>(-1520f, global2.a.x)))))), Struct_1(vec4<f32>(_wgslsmith_div_f32(1191f, _wgslsmith_f_op_f32(-2517f - 733f)), var_0.a.x, var_1.b.x, 834f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_1.c.b, var_0.a.wyy))) * var_1.a.a.xzy), select(select(vec2<bool>(arg_0, true), !var_1.a.c, !var_0.c.x), !(!vec2<bool>(global2.c.x, false)), var_1.a.c.x)));
    return var_2.c;
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    global2 = func_2(true);
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(min(min(-38584i, -21435i), _wgslsmith_mod_i32(-2147483647i, -2147483647i)), 1091i, _wgslsmith_add_i32(-29242i, u_input.a.x ^ -25829i)), firstTrailingBit(~(i32(-1i) * -2147483647i)), u_input.a.x) << (_wgslsmith_mult_vec3_u32(vec3<u32>(~(~15680u), _wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(~4294967295u, 15u)], firstTrailingBit(global4[_wgslsmith_index_u32(80191u, 15u)])), _wgslsmith_div_u32(_wgslsmith_add_u32(41946u, 86093u), _wgslsmith_clamp_u32(1u, 7146u, 32613u))), vec3<u32>(~(~1u), 6784u, 0u)) % vec3<u32>(32u));
    var var_1 = arg_1;
    var var_2 = min(vec3<u32>(reverseBits(~0u), 5617u, 4294967295u), firstTrailingBit(max(~vec3<u32>(68877u, 4294967295u, 4294967295u), max(vec3<u32>(3891u, 1u, 1u), vec3<u32>(4294967295u, 12561u, 0u)))) << (vec3<u32>(_wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(1u, 15u)] << (global4[_wgslsmith_index_u32(1u, 15u)] % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(global4[_wgslsmith_index_u32(54166u, 15u)], vec2<u32>(1u, 4294967295u))), 41195u, 0u) % vec3<u32>(32u)));
    return Struct_2(var_1.a, _wgslsmith_f_op_vec2_f32(round(global0.b)), global0.c);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_1 {
    global0 = Struct_2(arg_0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.yx - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1342f, -591f) + vec2<f32>(1191f, -425f)), _wgslsmith_f_op_vec2_f32(exp2(global1.yx)), arg_0.a.c.x))), _wgslsmith_f_op_vec2_f32(ceil(func_1(global0.a.c.x, Struct_2(Struct_1(vec4<f32>(-1270f, arg_2.c.b.x, -374f, arg_0.a.b.x), arg_0.a.b, vec2<bool>(false, arg_2.a.c.x)), vec2<f32>(669f, global1.x), Struct_1(global0.c.a, global0.a.a.xyw, global2.c))).c.b.xx))), func_2(func_2(global1.x >= func_1(false, arg_0).c.a.x).c.x));
    global3 = array<i32, 25>();
    global4 = array<vec2<u32>, 15>();
    global0 = func_1(all(vec3<bool>(true, true, arg_2.c.c.x)), Struct_2(Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_2.c.b + vec3<f32>(-2103f, global1.x, arg_0.b.x)), func_1(true, Struct_2(Struct_1(vec4<f32>(-1000f, -745f, global1.x, -529f), vec3<f32>(2149f, global1.x, -577f), vec2<bool>(true, true)), vec2<f32>(arg_2.b.x, -1357f), arg_0.a)).a.b)), vec2<bool>(false, arg_0.c.c.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.b.x, -1379f))), func_1(!select(arg_0.a.c.x, global0.a.c.x, arg_0.c.c.x), Struct_2(func_1(false, arg_0).a, _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, -129f) + vec2<f32>(-1000f, global1.x)), func_2(true))).c));
    var var_0 = Struct_1(arg_0.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.b.x, 341f, arg_2.a.a.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.b.x, -1363f, 154f), vec3<f32>(arg_2.c.b.x, arg_0.b.x, global2.b.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.a.b, vec3<f32>(global0.b.x, -399f, global2.a.x), true)) + _wgslsmith_f_op_vec3_f32(-arg_0.c.a.wyy))))), !func_2(_wgslsmith_f_op_f32(-global1.x) >= -987f).c);
    return Struct_1(global0.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_0.c.b - var_0.b)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a.b - vec3<f32>(arg_0.c.b.x, 718f, 1000f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a.yyw), var_0.b))), !(!vec2<bool>(false, -915f > var_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(true, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(global0.c.a, vec4<f32>(global2.a.x, global1.x, global0.a.a.x, global1.x), false)), global0.c.b, !global2.c), global1.xx, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1255f, -580f, global0.c.b.x, 1517f) * vec4<f32>(-245f, -2917f, global1.x, global0.b.x)), vec3<f32>(-937f, global1.x, 1031f), select(global0.c.c, vec2<bool>(true, global0.c.c.x), true)))), 1i, Struct_2(global0.c, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(287f)), -557f))), global0.a), ~max(vec4<i32>(u_input.a.x, global3[_wgslsmith_index_u32(36966u, 25u)] | 0i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1175u, 6647u, 4294967295u, 0u), vec4<u32>(51273u, 9754u, 4294967295u, 5441u)), 25u)], global3[_wgslsmith_index_u32(4294967295u, 25u)]), ~max(vec4<i32>(global3[_wgslsmith_index_u32(1u, 25u)], u_input.a.x, u_input.a.x, global3[_wgslsmith_index_u32(16456u, 25u)]), vec4<i32>(1i, global3[_wgslsmith_index_u32(48216u, 25u)], 1i, global3[_wgslsmith_index_u32(32797u, 25u)]))));
    var var_1 = global0.c;
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.a.a, func_4(Struct_2(Struct_1(global2.a, vec3<f32>(var_1.a.x, var_0.b.x, global1.x), vec2<bool>(false, true)), vec2<f32>(507f, global1.x), Struct_1(global0.a.a, vec3<f32>(var_1.b.x, global2.b.x, global0.a.a.x), global2.c)), 0i, Struct_2(Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, var_1.a.x, global1.x), global2.a.wxw, vec2<bool>(global0.a.c.x, var_0.c.x)), vec2<f32>(-401f, var_1.a.x), Struct_1(global2.a, var_1.a.yxw, global0.c.c)), vec4<i32>(global3[_wgslsmith_index_u32(18093u, 25u)], u_input.a.x, -1i, 2147483647i)).a, true)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, var_1.a.x, global1.x, -447f) + var_1.a), _wgslsmith_f_op_vec4_f32(select(global0.a.a, vec4<f32>(global2.b.x, 1000f, global0.c.b.x, var_1.a.x), vec4<bool>(false, false, false, false)))))), vec3<f32>(-1463f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.x, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -391f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.a.x - global0.a.a.x) - 1498f))), vec2<bool>(_wgslsmith_mod_i32(1i | global3[_wgslsmith_index_u32(0u, 25u)], 26496i) == u_input.a.x, any(!vec4<bool>(false, var_0.c.x, false, false))));
    global0 = func_1(true, func_1(all(vec3<bool>(true, global0.a.c.x, var_0.c.x)), func_1(any(vec4<bool>(true, false, false, var_0.c.x)), func_1(!global2.c.x, Struct_2(Struct_1(vec4<f32>(global0.c.a.x, 245f, 296f, global2.b.x), var_0.a.xzw, var_1.c), var_1.a.wx, global0.a)))));
    var_0 = global0.c;
    global3 = array<i32, 25>();
    let var_3 = func_1(!select(true, true, true) != true, Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-var_0.b), !select(vec2<bool>(false, global0.a.c.x), global0.c.c, global2.c.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -825f) + _wgslsmith_f_op_f32(f32(-1f) * -1687f)), -705f), global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.a.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-139f)), _wgslsmith_f_op_f32(-global0.a.a.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1632f))), _wgslsmith_f_op_f32(-672f * global1.x)), true)), vec4<u32>(~1u, 9085u << (0u % 32u), ~(~31542u), _wgslsmith_dot_vec3_u32(firstTrailingBit(countOneBits(vec3<u32>(108671u, 24409u, 61180u))), vec3<u32>(1u, 1u, 1u))), countOneBits(~(27058i | _wgslsmith_mult_i32(u_input.a.x, -30002i))), 4294967295u);
}

