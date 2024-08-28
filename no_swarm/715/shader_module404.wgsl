struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: array<vec4<f32>, 8>;

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(-412f, 814f), Struct_1(2984f, 1000f), Struct_1(635f, 1442f), Struct_1(1393f, 1583f), Struct_1(-369f, -175f), Struct_1(322f, -481f), Struct_1(2137f, 610f), Struct_1(2013f, -695f), Struct_1(-747f, -181f), Struct_1(-1339f, -197f), Struct_1(475f, 1606f), Struct_1(-509f, 711f), Struct_1(-1019f, -316f), Struct_1(-1529f, -1535f), Struct_1(130f, 179f), Struct_1(-1092f, 111f), Struct_1(-869f, 917f), Struct_1(-100f, 678f), Struct_1(-275f, -871f));

var<private> global3: vec4<f32> = vec4<f32>(-578f, 1619f, -131f, -691f);

var<private> global4: vec4<i32> = vec4<i32>(1i, i32(-2147483648), 0i, 1i);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    global0 = array<Struct_2, 8>();
    var var_0 = vec3<bool>(true, true, all(vec2<bool>(!all(vec2<bool>(false, false)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))))));
    var_0 = select(vec3<bool>(false, false, !(!var_0.x)), !vec3<bool>(var_0.x, all(vec3<bool>(false, var_0.x, var_0.x)), var_0.x), all(!(!select(vec2<bool>(true, false), var_0.xz, true))));
    var_0 = vec3<bool>(all(select(vec3<bool>(all(vec3<bool>(var_0.x, true, var_0.x)), var_0.x, var_0.x), vec3<bool>(var_0.x, true, select(var_0.x, false, true)), select(vec3<bool>(var_0.x, var_0.x, true), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, var_0.x, false)), vec3<bool>(false, var_0.x, var_0.x)))), var_0.x, any(!vec3<bool>(all(vec3<bool>(var_0.x, false, var_0.x)), false, !var_0.x)));
    global0 = array<Struct_2, 8>();
    return global3.x;
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3())));
    let var_1 = global0[_wgslsmith_index_u32(41477u, 8u)];
    let var_2 = !(!vec4<bool>(true, false, any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), true));
    global4 = _wgslsmith_mod_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(firstLeadingBit(u_input.a), u_input.a));
    global3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(var_1.a.yzy), var_1.a.zwz), 8u)])), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(var_1.a.x, 8u)], global1[_wgslsmith_index_u32(var_1.a.x, 8u)]), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, var_0, -420f, global3.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global1[_wgslsmith_index_u32(var_1.a.x, 8u)])) * vec4<f32>(1097f, global3.x, 212f, var_0))))), _wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(~4294967295u, 8u)], _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 239f, global3.x, global3.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(429f, global3.x, global3.x, global3.x) + vec4<f32>(global3.x, -990f, var_0, -115f))))), select(select(vec4<bool>(var_2.x || false, true, true, all(var_2.zyx)), select(!var_2, !var_2, !vec4<bool>(false, var_2.x, false, false)), var_2.x), select(!(!vec4<bool>(false, var_2.x, var_2.x, var_2.x)), var_2, select(!var_2, vec4<bool>(true, var_2.x, false, var_2.x), var_2.x)), !vec4<bool>(u_input.b.x >= u_input.b.x, all(var_2.zzx), true, !var_2.x))));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3.zzw, global3.wxy)) + global3.zwy)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(func_3()), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(711f * 287f) - -264f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1006f, var_0)))), _wgslsmith_f_op_vec3_f32(-global3.yyw))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -290f), global3.x)), _wgslsmith_f_op_f32(-global3.x));
    global1 = array<vec4<f32>, 8>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(657f, 650f, _wgslsmith_f_op_f32(572f + -1164f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - global3.www)))));
    global4 = u_input.a;
    global2 = array<Struct_1, 19>();
    return Struct_1(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(floor(var_1.x))))), var_1.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_2) -> f32 {
    var var_0 = firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-8824i, arg_0.x, u_input.b.x, -1i), u_input.a) >> (~(~arg_3.a.x) % 32u), u_input.a.x, _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(arg_0.x, u_input.b.x, -16277i, global4.x)), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)), max(u_input.a, vec4<i32>(global4.x, u_input.b.x, -1993i, u_input.a.x)))), arg_0.x));
    var var_1 = select(vec2<bool>(arg_2.x, select(true, !arg_2.x, all(!vec4<bool>(arg_2.x, arg_2.x, false, false)))), select(arg_2.zy, !vec2<bool>(arg_2.x && true, select(false, arg_2.x, arg_2.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(global4.x, global4.x), ~vec2<i32>(-1i, var_0.x)) != global4.x), _wgslsmith_f_op_f32(-global3.x) == -347f);
    var_0 = u_input.a;
    var var_2 = !all(select(vec4<bool>(arg_2.x, all(arg_2.yy), var_1.x && var_1.x, false), vec4<bool>(select(var_1.x, false, false), true, false, arg_2.x), vec4<bool>(var_1.x & arg_2.x, all(arg_2), !var_1.x, arg_2.x && var_1.x)));
    let var_3 = global3.x;
    return _wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1432f - 263f)) * -442f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f * global3.x), _wgslsmith_f_op_f32(f32(-1f) * -1136f))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(func_4(vec2<i32>(22091i, u_input.b.x), func_1(vec2<bool>(false, all(vec4<bool>(false, true, true, true))), abs(abs(25018u))), vec3<bool>(all(vec4<bool>(true, false, false, false)) | any(vec4<bool>(false, false, true, true)), all(vec3<bool>(true, true, true)), true), global0[_wgslsmith_index_u32(~(~(~1u)), 8u)])));
    global1 = array<vec4<f32>, 8>();
    var var_2 = Struct_2(vec4<u32>(1u, 0u, _wgslsmith_div_u32(~(~62146u), 1u), ~24499u), firstTrailingBit(abs(1u)));
    global1 = array<vec4<f32>, 8>();
    var_1 = global2[_wgslsmith_index_u32(69730u, 19u)];
    var_1 = global2[_wgslsmith_index_u32(var_2.b, 19u)];
    var var_3 = _wgslsmith_div_vec2_i32(global4.zz, global4.yy);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(global4.x, min(_wgslsmith_sub_i32(-67432i, -2147483647i), -2147483647i)), ~(~abs(var_2.a.x)) << (var_2.a.x % 32u), min(select(var_2.a, ~_wgslsmith_sub_vec4_u32(var_2.a, vec4<u32>(72036u, var_2.a.x, var_2.b, 1u)), false), _wgslsmith_mod_vec4_u32(select(var_2.a & vec4<u32>(16915u, 144862u, 0u, 0u), ~vec4<u32>(66207u, var_2.b, 1u, 33862u), vec4<bool>(true, true, true, false)), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(var_2.a.x, 51414u, 27435u, 4294967295u)), firstLeadingBit(var_2.a)))), 801f);
}

