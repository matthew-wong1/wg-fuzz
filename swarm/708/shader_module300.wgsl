struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 12> = array<u32, 12>(4294967295u, 4294967295u, 4294967295u, 0u, 8494u, 0u, 1u, 34158u, 3982u, 123853u, 158495u, 0u);

var<private> global2: Struct_1;

var<private> global3: array<i32, 30>;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = !any(vec4<bool>(true, true, true, any(vec2<bool>(false, global4.b))));
    let var_1 = max(~63770u, 30989u);
    global1 = array<u32, 12>();
    var var_2 = 0u;
    var_2 = 28606u;
    return 55668u;
}

fn func_4(arg_0: i32) -> vec3<f32> {
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1205f, 796f))) - global2.a)), global2.b, -1322f);
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a) * vec2<f32>(-161f, 202f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(308f, -774f), global2.a, false != global4.b))))), ~(func_3() | ~0u) <= global1[_wgslsmith_index_u32(countOneBits(~4294967295u), 12u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(325f, global2.c))))));
    let var_0 = false;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global4.a.x, -1018f)))))))), true, -207f);
    let var_2 = var_1;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.a.x, global2.c), _wgslsmith_f_op_f32(1549f - var_2.c))), _wgslsmith_f_op_f32(f32(-1f) * -1555f), global4.c) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c, 1000f, var_2.c) * vec3<f32>(-1000f, global2.c, -275f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, global2.a.x, 633f) - vec3<f32>(-132f, global0.a.x, global0.c))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1521f, 1987f, global0.a.x), vec3<f32>(var_2.c, var_1.a.x, 1410f))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-534f, 321f, global4.c), vec3<f32>(var_2.c, 425f, 1293f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(369f, global2.a.x, var_1.c), vec3<f32>(-522f, var_2.c, -1000f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1474f), 1203f, _wgslsmith_f_op_f32(ceil(global2.a.x))))));
}

fn func_2() -> vec3<f32> {
    var var_0 = ~vec2<u32>(global1[_wgslsmith_index_u32(1u, 12u)], 26954u);
    let var_1 = Struct_1(global4.a, false, 1095f);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(abs(global3[_wgslsmith_index_u32(func_3(), 30u)]))));
    let var_3 = -971i;
    let var_4 = var_1;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, -477f, -1106f) + vec3<f32>(-1581f, global0.c, 443f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c, global0.c, -1000f)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(~max(u_input.b, 0i))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1632f, var_4.a.x, global4.c), vec3<f32>(var_4.c, 1126f, global2.c), vec3<bool>(false, true, false))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, -1230f, -1086f)))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> vec4<i32> {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(global0.a.x, global2.a.x), _wgslsmith_div_f32(-2815f, -1573f), 381f)))));
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(global4.a - arg_1.a), false, global4.a.x);
    global4 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c), -158f, 2611f, 396f));
    return arg_2;
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: f32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global2.a)) + _wgslsmith_f_op_vec2_f32(-global0.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1543f, -629f), vec2<f32>(-153f, 1365f), global0.b))))), global0.b, -710f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e.x >= u_input.c;
    let var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-127f * 1748f) * global0.c)), reverseBits(~max(func_1(vec3<bool>(false, global2.b, global0.b), Struct_1(global2.a, global0.b, global0.c), vec4<i32>(77808i, -11402i, 0i, global3[_wgslsmith_index_u32(4294967295u, 30u)]), global2.c), func_1(vec3<bool>(false, global4.b, false), Struct_1(vec2<f32>(global4.c, 1514f), true, -755f), vec4<i32>(u_input.b, global3[_wgslsmith_index_u32(0u, 30u)], -1i, u_input.d), global2.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-262f - global2.a.x), 597f));
    var var_2 = vec2<i32>(i32(-1i) * -u_input.b, -16195i);
    let var_3 = func_5(-372f, abs(_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(u_input.b, 2147483647i, -var_2.x, u_input.a))), _wgslsmith_f_op_f32(-1000f * 651f));
    let var_4 = var_1;
    var var_5 = func_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_4.c)))))), select(~(~select(vec4<i32>(-11478i, -12905i, var_2.x, global3[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<i32>(-4511i, u_input.a, 0i, -2147483647i), true)), min(vec4<i32>(var_2.x, -1i, global3[_wgslsmith_index_u32(u_input.c, 30u)], 30008i), vec4<i32>(22352i, 16410i, -8904i, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(0u, 30u)], -6152i))), select(!(!vec4<bool>(true, global0.b, true, true)), select(vec4<bool>(true, false, var_3.b, true), vec4<bool>(var_0, false, false, true), true), global4.b)), global4.c);
    var_5 = Struct_1(vec2<f32>(-1000f, _wgslsmith_f_op_f32(select(func_5(-1406f, ~vec4<i32>(2147483647i, global3[_wgslsmith_index_u32(4294967295u, 30u)], global3[_wgslsmith_index_u32(u_input.e.x, 30u)], global3[_wgslsmith_index_u32(1u, 30u)]), -567f).c, _wgslsmith_f_op_f32(-global0.c), global2.b))), all(!(!(!vec4<bool>(global2.b, false, false, false)))), -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec3<i32>(-1i) * -(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -2147483647i, global3[_wgslsmith_index_u32(u_input.c, 30u)]), vec3<i32>(global3[_wgslsmith_index_u32(1u, 30u)], 0i, u_input.d))), _wgslsmith_div_vec4_f32(vec4<f32>(179f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -236f))), global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-521f * var_5.c), global0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_5(var_1.c, vec4<i32>(2821i, -3526i, var_2.x, global3[_wgslsmith_index_u32(8220u, 30u)]), 533f).a.x, _wgslsmith_f_op_f32(abs(307f)), var_4.c, 351f))), vec3<u32>(1u, u_input.e.x & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.e.x, u_input.c), vec3<u32>(global1[_wgslsmith_index_u32(31939u, 12u)], 1u, 4294967295u)), func_3()));
}

