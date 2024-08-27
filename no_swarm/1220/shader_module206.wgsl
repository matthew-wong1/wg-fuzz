struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: f32 = 965f;

var<private> global2: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(-5920i, 27800i, -1i), vec3<i32>(i32(-2147483648), 1i, 1i), vec3<i32>(1i, 2147483647i, -54970i), vec3<i32>(0i, -1i, 0i), vec3<i32>(48278i, 0i, -1i), vec3<i32>(i32(-2147483648), 0i, 0i), vec3<i32>(2147483647i, -47614i, 2147483647i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(21169i, 0i, 7329i), vec3<i32>(9145i, 2147483647i, 25424i), vec3<i32>(-1i, 22493i, -12326i), vec3<i32>(1i, 3278i, 2519i), vec3<i32>(39889i, 2147483647i, 45399i), vec3<i32>(i32(-2147483648), 59808i, 1i), vec3<i32>(-1i, i32(-2147483648), -31188i), vec3<i32>(15635i, -1i, 33352i), vec3<i32>(-52758i, i32(-2147483648), 0i), vec3<i32>(-11811i, -6362i, 1i), vec3<i32>(19254i, 1i, 0i), vec3<i32>(1i, -31262i, 1i), vec3<i32>(1i, -10366i, 1i), vec3<i32>(-34372i, -67706i, 2147483647i), vec3<i32>(-29525i, -1i, -23i), vec3<i32>(i32(-2147483648), i32(-2147483648), -14749i), vec3<i32>(25045i, 3507i, 17329i), vec3<i32>(0i, -25743i, 12896i), vec3<i32>(-71799i, -50615i, 18079i), vec3<i32>(2147483647i, 23515i, 0i), vec3<i32>(27165i, 1i, 2147483647i), vec3<i32>(-1i, 2147483647i, 52260i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_mod_vec3_i32(select(countOneBits(~max(vec3<i32>(41880i, u_input.b.x, u_input.d.x), global2[_wgslsmith_index_u32(0u, 30u)])), global2[_wgslsmith_index_u32(24848u, 30u)], any(!(!vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x)))), select(vec3<i32>(-2147483647i, u_input.b.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 1i, u_input.d.x), global2[_wgslsmith_index_u32(arg_0.a.x, 30u)])), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.a.x, arg_3.a.x), 30u)], _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 0i, 1i), global2[_wgslsmith_index_u32(3456u, 30u)])), _wgslsmith_clamp_vec3_i32(global2[_wgslsmith_index_u32(arg_3.a.x, 30u)], global2[_wgslsmith_index_u32(u_input.a.x, 30u)], vec3<i32>(u_input.d.x, -2147483647i, -2147483647i)) ^ global2[_wgslsmith_index_u32(_wgslsmith_div_u32(17896u, arg_0.a.x), 30u)], _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.d.x)), -vec3<i32>(-7213i, -65519i, u_input.b.x))), select(arg_2.x, true, true)));
    let var_1 = Struct_1(~reverseBits(firstTrailingBit(arg_3.a) >> (vec3<u32>(0u, 10065u, 18933u) % vec3<u32>(32u))));
    let var_2 = -(~_wgslsmith_div_vec4_i32(select(-vec4<i32>(var_0.x, u_input.d.x, u_input.b.x, u_input.b.x), ~vec4<i32>(var_0.x, 1i, var_0.x, 1i), vec4<bool>(arg_2.x, global0.x, true, true)), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.d.x, var_0.x), vec4<i32>(30166i, var_0.x, -18778i, 23771i)))));
    let var_3 = arg_0;
    var var_4 = arg_0;
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - -1145f), -473f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(336f + 383f) - _wgslsmith_f_op_f32(-365f * -2113f))) - -592f), 1366f, -1442f);
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = global0.xx;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-853f, _wgslsmith_div_f32(-443f, 112f), 128f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(835f + 228f), -1444f))) + _wgslsmith_f_op_vec4_f32(func_3(Struct_1(u_input.a.yxx), Struct_1(~(~u_input.a.wxz)), !(!select(vec2<bool>(global0.x, var_0.x), vec2<bool>(false, global0.x), var_0.x)), Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(53653u, u_input.c), vec2<u32>(0u, 59909u)), select(4294967295u, 4294967295u, global0.x), _wgslsmith_add_u32(u_input.c, u_input.c))))));
    let var_2 = ~vec3<u32>(u_input.c, _wgslsmith_div_u32(~reverseBits(0u), u_input.a.x), 4294967295u);
    var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1728f - _wgslsmith_f_op_f32(-518f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) * _wgslsmith_div_f32(-1561f, _wgslsmith_f_op_f32(f32(-1f) * -593f))), -319f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(923f)), _wgslsmith_f_op_f32(select(-109f, -240f, false))))))), vec4<f32>(var_1.x, -340f, var_1.x, var_1.x));
    var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -403f)), _wgslsmith_f_op_f32(trunc(var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, -1000f)) - _wgslsmith_f_op_f32(exp2(var_1.x))) + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x - var_1.x)))))));
    return false;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec2<i32>(~(-24383i), -36376i);
    var var_1 = arg_3;
    var_0 = u_input.d;
    global1 = _wgslsmith_f_op_f32(round(-1036f));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(685f, -341f, -430f, _wgslsmith_div_f32(-615f, -640f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1459f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(796f - -488f), 602f), _wgslsmith_f_op_f32(f32(-1f) * -1008f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1175f)))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-326f, 2033f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_3(arg_3, arg_3, global0.xy, arg_3)).x, -709f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-182f, 3171f, arg_0)) - -639f) * -923f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -609f) + _wgslsmith_f_op_f32(-1352f - -1846f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -612f))), -145f));
    return arg_3;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: vec2<bool>) -> f32 {
    let var_0 = arg_0;
    global0 = vec3<bool>(all(!select(vec4<bool>(arg_0, arg_0, false, global0.x), !vec4<bool>(true, false, arg_3.x, true), any(vec2<bool>(true, arg_2)))), any(vec4<bool>(all(vec2<bool>(var_0, var_0)), !any(arg_3), u_input.b.x > 2147483647i, true)), arg_0);
    var var_1 = func_4(func_2(u_input.d.x), true, all(!(!vec4<bool>(false, false, false, arg_0))) & (u_input.d.x < -2147483647i), Struct_1(u_input.a.ywz));
    var var_2 = _wgslsmith_mult_vec4_i32(countOneBits(reverseBits(-vec4<i32>(u_input.d.x, u_input.b.x, u_input.d.x, 0i) & _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 0i, -24288i, u_input.b.x), vec4<i32>(-1i, u_input.b.x, -974i, u_input.b.x)))), firstLeadingBit(vec4<i32>(40252i, abs(1i), countOneBits(u_input.d.x) | _wgslsmith_mult_i32(-30329i, 5317i), abs(_wgslsmith_mult_i32(u_input.b.x, -1i)))));
    var var_3 = func_4(false, true | !any(!global0.xx), var_0, Struct_1(var_1.a));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(func_1(true, -1120f, global0.x, vec2<bool>(true, global0.x))), _wgslsmith_f_op_f32(549f * -348f))))), _wgslsmith_div_vec2_f32(vec2<f32>(547f, 1f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-438f, 435f), vec2<f32>(-626f, -856f)))))))), !(global0.x && true) || all(select(select(vec2<bool>(false, global0.x), global0.zx, vec2<bool>(false, false)), vec2<bool>(false, false), global0.yx))));
    let var_1 = func_4(false, false, false, Struct_1(abs(abs(~u_input.a.wxy))));
    global2 = array<vec3<i32>, 30>();
    let var_2 = global0.zy;
    let var_3 = false;
    var var_4 = Struct_1(vec3<u32>(10729u, 24555u, ~_wgslsmith_dot_vec2_u32(func_4(var_3, global0.x, true, var_1).a.xz, var_1.a.xx)));
    var var_5 = var_1;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1864f), var_0.x);
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1137f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a.yx, ~var_5.a.xx), reverseBits(_wgslsmith_sub_u32(141934u, ~66398u & abs(var_4.a.x))));
}

