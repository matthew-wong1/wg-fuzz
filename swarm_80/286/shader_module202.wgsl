struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<f32>, 28>;

var<private> global2: Struct_3;

var<private> global3: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(-1i, -1i, 0i), vec3<i32>(-1466i, 41529i, -1i), vec3<i32>(38148i, 11002i, 0i), vec3<i32>(8527i, 63106i, 34933i), vec3<i32>(2147483647i, 88316i, 0i), vec3<i32>(1i, 0i, -1i), vec3<i32>(-1i, 2147483647i, 36086i), vec3<i32>(-43370i, -24230i, -7817i), vec3<i32>(-32218i, -10352i, 1i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(0i, i32(-2147483648), 49603i), vec3<i32>(i32(-2147483648), -31201i, -24053i), vec3<i32>(i32(-2147483648), -31625i, 0i), vec3<i32>(i32(-2147483648), -49741i, 23512i));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = global2.c.c.e.x;
    var var_1 = arg_1.a >> (arg_0 % 32u);
    var var_2 = vec2<bool>(global2.e.a.x, !global2.e.a.x);
    let var_3 = vec2<i32>(-abs(firstLeadingBit(~(-7169i))), global2.c.b);
    var_1 = u_input.a.x;
    return ~(~var_3.x) | global2.e.c.e.x;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(u_input.a.x | countOneBits(34180u), min(u_input.a.x, 3633u))), !all(select(!vec3<bool>(false, global2.e.a.x, global2.c.a.x), !vec3<bool>(false, true, global2.b), select(vec3<bool>(false, true, global2.e.a.x), vec3<bool>(true, global2.e.a.x, global2.e.a.x), false))), global2.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -386f))), _wgslsmith_f_op_f32(f32(-1f) * -635f)), global2.c);
    global3 = array<vec3<i32>, 14>();
    var var_1 = -3398i;
    let var_2 = global2.e.c.b.xwx;
    var var_3 = global2.e.c;
    return Struct_1(_wgslsmith_mod_u32(0u, var_0.c.c.a), _wgslsmith_div_vec4_i32(vec4<i32>(~(-var_3.b.x), 9821i, ~_wgslsmith_mod_i32(var_0.c.b, var_2.x), _wgslsmith_mod_i32(2147483647i, func_3(17924u, global2.c.c))), ~vec4<i32>(arg_0, global2.c.b, -1i, -8580i << (global2.c.c.c.x % 32u))), var_0.c.c.c, var_3.d, vec2<i32>(~var_2.x, -abs(func_3(29669u, Struct_1(u_input.a.x, vec4<i32>(0i, -5287i, var_3.b.x, 1i), vec3<u32>(58616u, 1u, global2.a), var_0.e.c.d, global2.c.c.e)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_div_u32(arg_3.c.c.x, arg_3.c.c.x);
    var var_1 = Struct_3(21734u, false, arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1175f + -198f)))) - arg_3.c.d), Struct_2(!vec2<bool>(arg_0 <= arg_3.c.b.x, select(arg_2, global2.c.a.x, true)), _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(arg_1.e.x, arg_0)), Struct_1(~reverseBits(10166u), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.b.x, 2784i, global2.c.c.b.x, 0i), arg_3.c.b), ~(~global2.e.c.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1662f)))), arg_1.e)));
    let var_2 = func_2(_wgslsmith_add_i32(-51868i, global2.c.c.b.x));
    let var_3 = Struct_3(~(89940u >> (~(~1u) % 32u)), any(vec2<bool>(all(vec3<bool>(arg_2, arg_3.a.x, arg_3.a.x)), var_1.c.a.x)), Struct_2(arg_3.a, _wgslsmith_clamp_i32(40463i, -func_3(var_2.a, arg_1), _wgslsmith_div_i32(~(-35028i), firstLeadingBit(0i))), var_2), _wgslsmith_f_op_f32(max(var_2.d, -2189f)), Struct_2(arg_3.a, var_1.e.b, Struct_1(~12548u, -vec4<i32>(var_1.e.c.e.x, 7601i, arg_1.b.x, -21758i), firstTrailingBit(~vec3<u32>(var_0, 24650u, 51539u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.e.c.d * global2.e.c.d))), -arg_3.c.b.xw)));
    return var_3;
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(_wgslsmith_add_i32(_wgslsmith_add_i32(global2.e.b, 1i), -5046i), func_2(global2.e.c.e.x), !(!global2.e.a.x), Struct_2(select(global2.c.a, global2.e.a, !select(true, true, global2.e.a.x)), _wgslsmith_sub_i32(global2.e.c.e.x, _wgslsmith_mult_i32(global2.e.c.e.x, global2.c.c.b.x)) | abs(countOneBits(-334i)), global2.e.c));
    var var_1 = Struct_3(global2.a, var_0.a < ~(global2.a >> (~global2.a % 32u)), Struct_2(var_0.c.a, var_0.c.b, Struct_1(0u, var_0.e.c.b, vec3<u32>(_wgslsmith_mult_u32(4294967295u, var_0.c.c.c.x), 20252u, _wgslsmith_div_u32(global2.a, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-761f))), vec2<i32>(global2.c.b, _wgslsmith_div_i32(28184i, global2.c.c.b.x)))), _wgslsmith_f_op_f32(global2.c.c.d - 402f), var_0.e);
    var_0 = Struct_3(33964u, false, Struct_2(func_4(-global2.c.c.b.x, var_1.c.c, true, Struct_2(!var_1.e.a, -26202i | global2.e.b, func_2(0i))).c.a, ~_wgslsmith_sub_i32(6330i, min(var_0.c.c.e.x, var_0.e.c.b.x)), func_4(15722i, global2.c.c, true, Struct_2(!vec2<bool>(global2.e.a.x, false), -var_1.e.c.b.x, func_4(var_1.e.b, var_0.c.c, var_1.b, var_0.c).e.c)).e.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.e.c.d, var_1.c.c.d)), _wgslsmith_f_op_f32(global2.d - var_0.e.c.d), var_0.e.a.x)) * 236f) * _wgslsmith_f_op_f32(-var_0.e.c.d)), Struct_2(select(vec2<bool>(true, var_1.c.a.x), !select(vec2<bool>(var_1.e.a.x, global2.c.a.x), global2.c.a, var_1.e.a), func_4(-6521i, global2.c.c, global2.c.a.x, Struct_2(global2.c.a, var_0.e.b, var_1.e.c)).e.a), _wgslsmith_mult_i32(~var_0.e.b << (select(21526u, global2.e.c.c.x, false) % 32u), var_1.e.c.b.x << (~var_0.c.c.c.x % 32u)), Struct_1(u_input.a.x, var_1.c.c.b, max(vec3<u32>(global2.e.c.a, var_0.e.c.c.x, 13353u), var_1.e.c.c), func_2(~var_0.c.b).d, global2.e.c.e)));
    global1 = array<vec4<f32>, 28>();
    var var_2 = Struct_3(abs(reverseBits(u_input.a.x)), func_4(reverseBits(_wgslsmith_add_i32(func_4(57532i, Struct_1(global2.c.c.a, vec4<i32>(0i, global2.c.b, global2.c.b, 2147483647i), vec3<u32>(global2.e.c.c.x, 4178u, var_1.e.c.a), var_0.c.c.d, var_0.c.c.e), false, Struct_2(vec2<bool>(global2.c.a.x, false), -2274i, var_1.c.c)).e.b, -7041i)), global2.e.c, true, Struct_2(global2.e.a, _wgslsmith_clamp_i32(44226i, firstTrailingBit(-2147483647i), func_4(var_1.e.c.e.x, var_0.e.c, true, Struct_2(var_1.e.a, var_1.c.c.e.x, Struct_1(global2.c.c.a, vec4<i32>(var_1.e.b, -2147483647i, global2.c.c.b.x, -1i), var_0.e.c.c, var_1.c.c.d, vec2<i32>(-719i, -1i)))).c.c.b.x), var_0.e.c)).b, var_1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d - -849f) - -402f) + _wgslsmith_f_op_f32(f32(-1f) * -227f))), Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), !var_1.c.a), var_0.e.c.e.x, Struct_1(firstLeadingBit(firstLeadingBit(var_1.c.c.c.x)), global2.c.c.b, global2.e.c.c, _wgslsmith_f_op_f32(var_1.d - -1652f), ~(-vec2<i32>(global2.e.c.e.x, 2147483647i)))));
    return Struct_2(select(vec2<bool>(true, !global2.e.a.x), !select(vec2<bool>(true, var_2.c.a.x), vec2<bool>(true, global2.c.a.x), var_1.b), any(var_1.c.a)), ~(-_wgslsmith_mod_i32(var_2.c.c.b.x, -2147483647i)), global2.e.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    global3 = array<vec3<i32>, 14>();
    var var_1 = global2.e;
    global2 = Struct_3(_wgslsmith_mod_u32(~(~1u), 4294967295u), !select(true, global2.e.a.x, !global2.c.a.x), func_1(), -136f, Struct_2(var_1.a, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(max(var_1.c.b.zw, global2.c.c.e), global2.e.c.e), 824i), func_2(select(var_1.c.b.x >> (66284u % 32u), 2147483647i, true))));
    global1 = array<vec4<f32>, 28>();
    var var_2 = 80198u;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1677f)), 1000f));
    var var_4 = global2.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1012f, -663f, var_4.c.d) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-186f, 176f, 1009f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -491f), var_3, _wgslsmith_f_op_f32(-global2.c.c.d)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.c.d, -138f, var_4.c.d)))))), vec4<i32>(var_4.c.e.x, global2.e.c.e.x, var_4.b, global2.e.b));
}

