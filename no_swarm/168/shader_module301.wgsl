struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<f32>, 16>;

var<private> global2: Struct_1 = Struct_1(1u, vec3<i32>(0i, 2147483647i, 1i));

var<private> global3: i32;

var<private> global4: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(32722i, -51182i), global2.b.xy), global2.b.x, -2147483647i, _wgslsmith_dot_vec3_i32(global2.b, abs(global2.b))), vec4<i32>(reverseBits(~(-1i) << ((20706u ^ u_input.a.x) % 32u)), -1i >> (abs(0u) % 32u), _wgslsmith_div_i32(~(-74734i), _wgslsmith_mult_i32(-14229i, -21000i)), arg_2));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(-794f, -2509f)), 298f);
    let var_2 = 15595i;
    var var_3 = _wgslsmith_f_op_f32(var_1.x - var_1.x);
    return -12096i;
}

fn func_2(arg_0: bool) -> vec4<u32> {
    global2 = Struct_1(29935u, vec3<i32>(-5675i, global2.b.x, func_3(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global2.a, u_input.a.x, 111392u), vec4<u32>(u_input.a.x, 1u, 21121u, u_input.a.x)), ~(2147483647i & global2.b.x), -2147483647i)));
    let var_0 = global2.a;
    var var_1 = select(!(!vec2<bool>(true, !arg_0)), select(select(vec2<bool>(any(vec3<bool>(arg_0, true, true)), true), vec2<bool>(all(vec2<bool>(false, arg_0)), arg_0 | arg_0), !(true && arg_0)), vec2<bool>(any(vec2<bool>(arg_0, true)), _wgslsmith_f_op_f32(296f - -166f) <= _wgslsmith_f_op_f32(round(274f))), select(vec2<bool>(true, !arg_0), vec2<bool>(true, true), !(!vec2<bool>(arg_0, arg_0)))), !select(vec2<bool>(true != arg_0, all(vec2<bool>(arg_0, true))), vec2<bool>(true, true), true));
    let var_2 = !(!select(vec2<bool>(all(vec3<bool>(var_1.x, arg_0, false)), true), vec2<bool>(false, false), !select(vec2<bool>(true, var_1.x), vec2<bool>(false, var_1.x), arg_0)));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(global1[_wgslsmith_index_u32(73860u, 16u)], _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-961f, -1759f, -1175f, _wgslsmith_div_f32(-538f, -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(1u, 16u)]))), vec4<f32>(385f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1175f, -437f, true)), -731f, true)), 499f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-184f - 189f), _wgslsmith_f_op_f32(ceil(336f))))))));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(23505u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.a, 29929u, 41014u, u_input.a.x), vec4<u32>(global2.a, 1u, global2.a, 4294967295u)) & ~(~0u), _wgslsmith_add_u32(7181u, u_input.a.x), _wgslsmith_clamp_u32(countOneBits(u_input.a.x) & (u_input.a.x ^ 27570u), ~global2.a, u_input.a.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(global2.a, u_input.a.x, u_input.a.x, global2.a), vec4<u32>(4294967295u, global2.a, 1u, global2.a), var_2.x), vec4<u32>(global2.a, 4294967295u, max(global2.a, u_input.a.x), global2.a)), select(~vec4<u32>(4294967295u, u_input.a.x, global2.a, 4294967295u) | ~vec4<u32>(u_input.a.x, global2.a, u_input.a.x, 26664u), select(vec4<u32>(global2.a, global2.a, global2.a, global2.a), vec4<u32>(61591u, u_input.a.x, u_input.a.x, global2.a), arg_0) & ~vec4<u32>(global2.a, global2.a, 37292u, 4294967295u), var_1.x), ~(~(vec4<u32>(global2.a, u_input.a.x, global2.a, u_input.a.x) << (vec4<u32>(21400u, u_input.a.x, 8265u, u_input.a.x) % vec4<u32>(32u))))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> bool {
    global2 = Struct_1(19942u, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(global2.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(36481i, 0i, -4056i, -6956i), vec4<i32>(arg_2, global2.b.x, arg_0.a.b.x, 0i))), arg_0.a.b.x, _wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_add_i32(global2.b.x, arg_2))), vec3<i32>(1i ^ (arg_0.a.b.x | arg_2), _wgslsmith_dot_vec2_i32(-arg_0.a.b.yz, global2.b.zx), arg_2)));
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(~arg_0.b), ~vec4<u32>(global2.a, arg_0.a.a, 51575u, u_input.a.x)), (1u ^ select(0u, 1u, true)) ^ 4294967295u) << (34322u % 32u);
    global2 = Struct_1(~select(~abs(67555u), u_input.a.x, any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)))), arg_0.a.b);
    var var_1 = Struct_2(Struct_1(4294967295u, -(arg_0.a.b << (~arg_0.b.zyw % vec3<u32>(32u)))), arg_0.b);
    global3 = _wgslsmith_div_i32(-118346i, 6572i);
    return any(!vec2<bool>(true, arg_1 > arg_1)) && !(true | (arg_1 != arg_1));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(global2.a, vec3<i32>(global2.b.x, ~(-(~global2.b.x)), _wgslsmith_add_i32(global2.b.x, ~global2.b.x)));
    let var_1 = _wgslsmith_div_vec2_i32(global2.b.zx, firstLeadingBit(var_0.b.xx));
    global3 = ~var_0.b.x;
    var var_2 = func_4(Struct_2(Struct_1(4294967295u, ~(-vec3<i32>(0i, var_0.b.x, var_0.b.x))), func_2(true) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, 1u, 3242u, var_0.a), vec4<u32>(0u, 23119u, global2.a, 25660u))), -1387f, ~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(global2.b.x, global2.b.x), var_0.b.zx, true), -vec2<i32>(global2.b.x, -45751i)), _wgslsmith_div_i32(var_0.b.x, -var_0.b.x)));
    var var_3 = Struct_3(vec4<i32>(_wgslsmith_clamp_i32(1i, -2147483647i, var_1.x), func_3(4294967295u >> (u_input.a.x % 32u), reverseBits(-6116i), var_0.b.x), global2.b.x, -(~(-1i))) ^ vec4<i32>(global2.b.x, var_1.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global2.b.x, global2.b.x), vec2<i32>(25879i, var_1.x)), abs(global2.b.x)), (0i ^ var_1.x) <= (8529i & global2.b.x));
    return Struct_2(Struct_1(max(u_input.a.x, 1u), var_0.b), vec4<u32>(u_input.a.x, ~_wgslsmith_clamp_u32(var_0.a, min(var_0.a, var_0.a), ~global2.a), 1u, ~(~(~95283u))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-593f, 116f, _wgslsmith_f_op_f32(f32(-1f) * -1195f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-216f, -1611f, -462f) + vec3<f32>(1129f, 948f, -181f)) * vec3<f32>(893f, 772f, -123f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2131f, -885f, 2003f))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-924f, -266f, 637f) + vec3<f32>(-467f, -983f, 910f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -737f, -109f)), true))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-1450f - 801f), _wgslsmith_f_op_f32(select(1149f, -1389f, false)), -963f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-150f, 378f, 1652f), vec3<f32>(-1279f, 1000f, -1261f))))))));
    var var_1 = _wgslsmith_f_op_f32(trunc(var_0.x));
    var var_2 = 1i;
    let var_3 = var_0.yy;
    global1 = array<vec4<f32>, 16>();
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1429f), _wgslsmith_f_op_f32(floor(-1052f))) - -1549f));
    var var_1 = func_5(func_1(), func_1(), !any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))));
    var var_2 = vec2<bool>(global2.a == _wgslsmith_mult_u32(u_input.a.x, u_input.a.x & (1u & var_1.a)), reverseBits(~37181u) != _wgslsmith_dot_vec4_u32(max(vec4<u32>(28285u, 0u, u_input.a.x, var_1.a) >> (vec4<u32>(36463u, u_input.a.x, global2.a, 1u) % vec4<u32>(32u)), ~vec4<u32>(0u, 34326u, u_input.a.x, 0u)), ~(~vec4<u32>(var_1.a, 39814u, 41462u, u_input.a.x))));
    global3 = -14795i;
    global3 = _wgslsmith_sub_i32(6741i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-40220i, var_1.b.x, global2.b.x, var_1.b.x) ^ vec4<i32>(global2.b.x, 13978i, 15222i, global2.b.x), vec4<i32>(global2.b.x, global2.b.x, global2.b.x, -1i) >> (vec4<u32>(4294967295u, 9080u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), 302i)));
    var_2 = select(vec2<bool>(false == !any(vec2<bool>(var_2.x, var_2.x)), true), !select(!(!vec2<bool>(false, var_2.x)), vec2<bool>(!var_2.x, true), var_2.x), !select(vec2<bool>(true, func_4(Struct_2(Struct_1(global2.a, global2.b), vec4<u32>(global2.a, 2806u, global2.a, u_input.a.x)), var_0, global2.b.x)), vec2<bool>(!var_2.x, all(vec2<bool>(false, true))), !(var_2.x & var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~35379u, countOneBits(0u), var_1.a, _wgslsmith_f_op_f32(step(-473f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
}

