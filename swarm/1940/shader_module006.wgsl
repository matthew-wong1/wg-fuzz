struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<f32> = vec3<f32>(-331f, -1000f, -796f);

var<private> global2: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(Struct_4(Struct_2(vec4<u32>(131143u, 4294967295u, 46892u, 51911u), vec2<bool>(false, false), vec3<i32>(i32(-2147483648), -11563i, -27064i), vec2<i32>(28701i, 0i), vec2<u32>(4294967295u, 0u)), -1000f), vec2<i32>(20302i, -33264i)), Struct_5(Struct_4(Struct_2(vec4<u32>(0u, 90649u, 56548u, 106005u), vec2<bool>(false, true), vec3<i32>(-26469i, 2147483647i, -46599i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<u32>(101745u, 63786u)), -904f), vec2<i32>(-25186i, 0i)), Struct_5(Struct_4(Struct_2(vec4<u32>(10845u, 28001u, 4294967295u, 76299u), vec2<bool>(true, false), vec3<i32>(-57202i, 1i, -1i), vec2<i32>(2147483647i, -1i), vec2<u32>(112561u, 51333u)), 720f), vec2<i32>(16954i, 9078i)), Struct_5(Struct_4(Struct_2(vec4<u32>(37880u, 52755u, 23232u, 9786u), vec2<bool>(true, true), vec3<i32>(2147483647i, 2147483647i, -1i), vec2<i32>(-34426i, 6386i), vec2<u32>(96894u, 1u)), 2859f), vec2<i32>(21037i, -25133i)), Struct_5(Struct_4(Struct_2(vec4<u32>(22248u, 11792u, 1u, 87269u), vec2<bool>(true, false), vec3<i32>(1i, -1i, 0i), vec2<i32>(2147483647i, 0i), vec2<u32>(1u, 1u)), -774f), vec2<i32>(1i, i32(-2147483648))), Struct_5(Struct_4(Struct_2(vec4<u32>(67142u, 35007u, 4294967295u, 0u), vec2<bool>(true, true), vec3<i32>(20070i, i32(-2147483648), -42187i), vec2<i32>(-26933i, -1i), vec2<u32>(0u, 12103u)), 1027f), vec2<i32>(-1i, 2147483647i)), Struct_5(Struct_4(Struct_2(vec4<u32>(4294967295u, 4294967295u, 57029u, 1u), vec2<bool>(false, false), vec3<i32>(-22712i, 61320i, i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<u32>(35634u, 4294967295u)), -1081f), vec2<i32>(2147483647i, 7909i)), Struct_5(Struct_4(Struct_2(vec4<u32>(72447u, 4294967295u, 4294967295u, 0u), vec2<bool>(true, true), vec3<i32>(-1i, 33067i, 1i), vec2<i32>(2147483647i, -1i), vec2<u32>(4294967295u, 1067u)), -618f), vec2<i32>(-38583i, -1i)));

var<private> global3: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_2(vec4<u32>(1u, 4294967295u, 16290u, 17582u), vec2<bool>(false, true), vec3<i32>(-836i, -32550i, 0i), vec2<i32>(6398i, 0i), vec2<u32>(1u, 64464u)), 1000f));

var<private> global4: array<i32, 15> = array<i32, 15>(32516i, -28280i, 2643i, -7357i, 2147483647i, 0i, -23541i, 1i, i32(-2147483648), -1i, -1i, 46091i, 1i, 2147483647i, i32(-2147483648));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = ~vec3<u32>(1u, 1u, 1u);
    global2 = array<Struct_5, 8>();
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~27140u & (var_0.x & 30967u)), 75910u) ^ _wgslsmith_div_u32(50844u, 46422u), 1u)];
    let var_2 = -1442f;
    global0 = !(!var_1.a.b.x);
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, 493f, -175f), vec4<f32>(global1.x, var_1.b, -1403f, global1.x), vec4<bool>(false, var_1.a.b.x, var_1.a.b.x, var_1.a.b.x)))) * vec4<f32>(_wgslsmith_div_f32(1621f, 745f), _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_div_f32(2299f, -2060f), _wgslsmith_f_op_f32(-473f + global1.x)))), vec3<i32>(~1i, ~global4[_wgslsmith_index_u32(17760u, 15u)], ((var_1.a.d.x ^ -8892i) << (var_1.a.a.x % 32u)) | (select(var_1.a.c.x, var_1.a.d.x, false) & -47315i)), _wgslsmith_mult_u32(_wgslsmith_add_u32(max(4294967295u, var_1.a.e.x) >> (min(var_1.a.e.x, var_0.x) % 32u), _wgslsmith_div_u32(~var_1.a.e.x, 1u)), 4294967295u), var_1.a.c.x);
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a), arg_0.a), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))), global1.x, _wgslsmith_f_op_f32(min(-1025f, _wgslsmith_f_op_f32(-904f + global1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-533f))))), true != any(vec4<bool>(true, true, true, true)))), vec3<i32>(_wgslsmith_sub_i32(-(~arg_0.b.x), -12069i), u_input.c, -1i), 30405u, -14893i);
    var var_1 = -_wgslsmith_clamp_i32(41835i, firstTrailingBit(u_input.c), var_0.d) & 1i;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - var_0.a.x) - _wgslsmith_f_op_f32(select(1907f, 542f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1658f * global1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_2 = var_0.c;
    global2 = array<Struct_5, 8>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-298f, var_0.a.x, any(vec4<bool>(false, false, true, false)))) + _wgslsmith_f_op_f32(sign(var_0.a.x)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(f32(-1f) * -211f)) - -840f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -1038f)))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    global0 = select(0u < _wgslsmith_mult_u32(~(~43129u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 4294967295u, 8999u, 40844u))), any(!vec2<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(false, true, true)))), all(vec4<bool>(true, any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), true)));
    let var_0 = ~4294967295u;
    var var_1 = !vec2<bool>(var_0 >= 73093u, any(vec3<bool>(true, all(vec4<bool>(false, true, false, true)), all(vec2<bool>(false, true)))));
    global1 = vec3<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(func_3(func_2(-73627i)))), arg_0.x, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(ceil(global1.x))));
    let var_2 = Struct_4(Struct_2(vec4<u32>(reverseBits(1u), _wgslsmith_mod_u32(var_0, 49052u), max(countOneBits(4294967295u), 1u), min(_wgslsmith_mod_u32(var_0, 4294967295u), ~13363u)), select(select(vec2<bool>(var_1.x, false), !vec2<bool>(false, var_1.x), var_1.x), vec2<bool>(!var_1.x, var_1.x), var_1.x), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -31316i, 1i), u_input.b.yxy, u_input.b.xyw), vec3<i32>(-2147483647i, -22413i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, global4[_wgslsmith_index_u32(var_0, 15u)], global4[_wgslsmith_index_u32(var_0, 15u)]), u_input.b.xww))), u_input.a.yz, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(73666u, var_0, 4294967295u, var_0), vec4<u32>(1u, 0u, var_0, 55214u)), var_0)), _wgslsmith_div_f32(global1.x, 1000f));
    return Struct_1(!(var_2.a.b.x && false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(global1.x * 729f), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global1.x))))))));
    global4 = array<i32, 15>();
    var var_0 = func_1(vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global1.x) - _wgslsmith_f_op_f32(-812f + -1205f)))));
    var var_1 = global1.zz;
    let var_2 = ~abs(vec4<u32>(4294967295u, _wgslsmith_sub_u32(firstLeadingBit(75526u), _wgslsmith_sub_u32(1u, 1u)), 1u, ~31803u));
    let var_3 = global3[_wgslsmith_index_u32(firstLeadingBit(reverseBits(firstTrailingBit(abs(max(var_2.x, var_2.x))))), 1u)];
    global4 = array<i32, 15>();
    let var_4 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(52135u, firstLeadingBit(0u)), ~82463u), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(func_2(~0i).b.x, -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(0u, 15u)], 1i), vec2<i32>(global4[_wgslsmith_index_u32(var_4.a.a.a.x, 15u)], var_4.a.a.c.x)), _wgslsmith_dot_vec2_i32(var_3.a.d, vec2<i32>(var_4.a.a.d.x, -9023i)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(func_2(abs(var_4.b.x)))))), vec2<f32>(var_4.a.b, _wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(2607f, var_3.b, var_3.b, global1.x) + vec4<f32>(global1.x, -309f, 1033f, 1259f)), _wgslsmith_div_vec3_i32(vec3<i32>(0i, global4[_wgslsmith_index_u32(53054u, 15u)], global4[_wgslsmith_index_u32(21801u, 15u)]), var_3.a.c), ~var_4.a.a.a.x, i32(-1i) * -1i)))), var_2.x, vec4<i32>(var_4.a.a.d.x, firstLeadingBit(~reverseBits(16888i)), -u_input.a.x, -(~min(-6847i, -1i))));
}

