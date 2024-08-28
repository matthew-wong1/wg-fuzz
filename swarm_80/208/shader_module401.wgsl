struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<u32> = vec4<u32>(0u, 14505u, 1u, 1u);

var<private> global2: array<u32, 23> = array<u32, 23>(57501u, 33807u, 54900u, 39318u, 110357u, 4294967295u, 12775u, 0u, 1u, 0u, 4294967295u, 49522u, 4294967295u, 77141u, 0u, 19764u, 1u, 4294967295u, 4294967295u, 34501u, 1u, 1u, 79127u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    global0 = !(!vec2<bool>(all(vec2<bool>(global0.x, global0.x)) == true, false));
    let var_0 = vec4<i32>(min(-max(_wgslsmith_sub_i32(21272i, -16160i), ~(-36080i)), ~firstLeadingBit(-6853i >> (0u % 32u))), 0i, -1i, -10069i);
    global2 = array<u32, 23>();
    var var_1 = _wgslsmith_f_op_f32(sign(-724f));
    var var_2 = !(!all(vec3<bool>(global0.x, global0.x, false)) || false);
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -115f), any(select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true))))), 1000f, -290f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-370f, -1625f, -1033f), vec3<f32>(-1000f, 844f, 1735f), select(vec3<bool>(true, true, global0.x), vec3<bool>(false, false, true), vec3<bool>(false, false, global0.x))))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-495f, -1215f, _wgslsmith_f_op_f32(-132f - 1464f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2133f, -231f, 554f)))))), all(select(select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x)), !vec2<bool>(global0.x, true), vec2<bool>(false, global0.x))))));
    var var_1 = arg_0;
    var var_2 = Struct_4(~var_1.c.xy, Struct_2(var_1.a.x, vec2<bool>(!global0.x, global0.x), !(!select(vec4<bool>(false, true, global0.x, false), vec4<bool>(true, global0.x, true, false), global0.x)), -2147483647i), vec3<i32>(_wgslsmith_div_i32(-1i, _wgslsmith_add_i32(firstTrailingBit(6472i), 2147483647i & arg_0.a.x)), var_1.a.x, _wgslsmith_add_i32(min(1i, 28520i), _wgslsmith_mod_i32(arg_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_0.a.x), arg_0.a)))), !vec3<bool>(true, !all(vec4<bool>(global0.x, true, true, global0.x)), global0.x), ~(-(~(~var_1.a))));
    var var_3 = Struct_3(var_2.b.a | var_1.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(-113f)), _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(167f + -2202f), 1186f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1438f, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, -298f, var_0.x))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), true))), arg_0, Struct_2(arg_0.a.x, var_2.b.c.wx, var_2.b.c, -_wgslsmith_mod_i32(var_2.c.x, countOneBits(arg_0.a.x))));
    var var_4 = ~(~max(vec2<u32>(max(global2[_wgslsmith_index_u32(var_3.c.b, 23u)], 4294967295u), 1u), ~_wgslsmith_mod_vec2_u32(var_2.a, var_3.c.c.xx)));
    return var_3.d;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: f32) -> vec2<bool> {
    let var_0 = reverseBits(_wgslsmith_add_i32(-2147483647i, -1i));
    let var_1 = Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(0i), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1i, arg_1.a, -9713i, -55643i)), vec4<i32>(-1i, 19680i, -7428i, arg_1.d) & vec4<i32>(-1i, -1i, 2765i, arg_0))), _wgslsmith_mult_vec2_i32(select(vec2<i32>(var_0, arg_0), vec2<i32>(1i, arg_0), false) >> (global1.ww % vec2<u32>(32u)), abs(-vec2<i32>(25326i, -1i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_3, arg_3, arg_3) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3, 211f, arg_3, arg_3)))))), Struct_1(vec2<i32>(1991i, -37442i), ~u_input.a, _wgslsmith_mod_vec3_u32(vec3<u32>(108250u, select(global2[_wgslsmith_index_u32(1u, 23u)], 47397u, arg_1.b.x), firstLeadingBit(0u)), ~(~vec3<u32>(global1.x, global1.x, 4294967295u)))), func_2(Struct_1(vec2<i32>(-1i) * -vec2<i32>(arg_0, 2147483647i), 14133u, global1.ywz), vec4<u32>(4294967295u, global1.x, 21591u, _wgslsmith_dot_vec3_u32(~vec3<u32>(475u, u_input.a, 54034u), _wgslsmith_sub_vec3_u32(global1.yzx, vec3<u32>(u_input.a, global1.x, u_input.a))))));
    let var_2 = countOneBits(vec3<u32>(_wgslsmith_div_u32(global1.x, ~(~4294967295u)), _wgslsmith_mult_u32(global1.x & 32101u, u_input.a) & _wgslsmith_sub_u32(1478u, select(0u, 0u, true)), var_1.c.b));
    global2 = array<u32, 23>();
    let var_3 = max(abs(max(~min(vec4<i32>(22642i, arg_1.d, 17663i, arg_1.d), vec4<i32>(-1i, arg_1.d, 0i, -31081i)), max(countOneBits(vec4<i32>(8775i, 0i, 1i, 9209i)), vec4<i32>(arg_0, -15598i, arg_1.a, var_0) >> (vec4<u32>(91256u, global2[_wgslsmith_index_u32(global1.x, 23u)], u_input.a, var_2.x) % vec4<u32>(32u))))), abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, 0i, 2147483647i, -20926i), vec4<i32>(arg_1.d, 19324i, -40936i, 59325i) & vec4<i32>(var_1.a, var_1.c.a.x, -48135i, 0i)), ~abs(vec4<i32>(arg_0, var_1.d.d, arg_1.a, 1i)))));
    return !arg_2;
}

fn func_1() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(136f, 179f), vec2<f32>(-569f, 1460f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1193f, 1788f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-766f, -743f)))), vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, -1000f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1747f)))))));
    global0 = !(!func_4(-_wgslsmith_mult_i32(-1i, -1691i), func_2(Struct_1(vec2<i32>(-23540i, 0i), 13562u, vec3<u32>(37284u, global1.x, 1u)), vec4<u32>(88717u, 21932u, global1.x, global2[_wgslsmith_index_u32(4294967295u, 23u)])), select(vec2<bool>(global0.x, false), !vec2<bool>(true, global0.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x)));
    var var_1 = var_0;
    global2 = array<u32, 23>();
    let var_2 = Struct_4(min(global1.yw, _wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, global2[_wgslsmith_index_u32(u_input.a, 23u)]) | abs(vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(global1.x, 23u)])), global1.yz)), Struct_2(-1i, !(!func_2(Struct_1(vec2<i32>(74933i, -40464i), global2[_wgslsmith_index_u32(u_input.a, 23u)], vec3<u32>(u_input.a, global1.x, 0u)), vec4<u32>(u_input.a, 54392u, 4294967295u, 0u)).c.zx), func_2(Struct_1(select(vec2<i32>(1i, 1i), vec2<i32>(-19776i, 37085i), false), _wgslsmith_mod_u32(u_input.a, global1.x), global1.xzz), select(abs(vec4<u32>(0u, global2[_wgslsmith_index_u32(21091u, 23u)], 8204u, u_input.a)), vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], global1.x, 2016u, 1u) >> (vec4<u32>(21430u, global1.x, 170u, global1.x) % vec4<u32>(32u)), vec4<bool>(false, false, global0.x, true))).c, reverseBits(1i)), firstTrailingBit(vec3<i32>(firstTrailingBit(15843i), -(i32(-1i) * -2147483647i), -46110i)), !(!vec3<bool>(any(vec3<bool>(false, global0.x, global0.x)), false, func_2(Struct_1(vec2<i32>(-39867i, 1i), u_input.a, global1.wzy), vec4<u32>(4564u, global2[_wgslsmith_index_u32(1u, 23u)], global1.x, global2[_wgslsmith_index_u32(4294967295u, 23u)])).b.x)), _wgslsmith_mult_vec2_i32(~min(abs(vec2<i32>(-37364i, -2147483647i)), -vec2<i32>(-21097i, -1i)), min(vec2<i32>(1i, 1i), countOneBits(firstTrailingBit(vec2<i32>(53687i, -28321i))))));
    return ~(~select(vec4<u32>(~4294967295u, ~4294967295u, 0u, _wgslsmith_div_u32(1u, global2[_wgslsmith_index_u32(0u, 23u)])), vec4<u32>(min(1u, global1.x), global2[_wgslsmith_index_u32(1u, 23u)], ~59552u, firstTrailingBit(4294967295u)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 23>();
    let var_0 = ~select(~func_1(), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, 0u, 1u), firstLeadingBit(vec4<u32>(77278u, 0u, global2[_wgslsmith_index_u32(4870u, 23u)], 4315u)), ~vec4<u32>(0u, 37598u, 86292u, 2961u)), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, false, true, global0.x))));
    global0 = select(func_2(Struct_1(-reverseBits(vec2<i32>(35033i, -1i)), _wgslsmith_mod_u32(1u, ~0u), min(vec3<u32>(var_0.x, global2[_wgslsmith_index_u32(0u, 23u)], 4294967295u), _wgslsmith_mult_vec3_u32(var_0.wzx, vec3<u32>(4294967295u, var_0.x, 19599u)))), vec4<u32>(_wgslsmith_add_u32(0u, 46939u), global1.x, 64923u, abs(~100265u))).c.yy, vec2<bool>(true, all(func_2(Struct_1(vec2<i32>(0i, 6750i), 0u, vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(1u, 23u)], 0u)), firstLeadingBit(var_0)).c.zzx)), !vec2<bool>(any(func_2(Struct_1(vec2<i32>(2147483647i, 7079i), u_input.a, global1.ywz), var_0).b), all(select(vec2<bool>(true, true), vec2<bool>(global0.x, false), global0.x))));
    global2 = array<u32, 23>();
    let var_1 = select(!func_2(Struct_1(vec2<i32>(2147483647i, 2147483647i), 9187u, global1.www), ~vec4<u32>(global1.x, global2[_wgslsmith_index_u32(var_0.x, 23u)], 1u, 29332u)).c.xz, vec2<bool>(true, true), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 894f) + _wgslsmith_f_op_f32(-1052f * _wgslsmith_f_op_f32(select(577f, -295f, false))))));
}

