struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: array<u32, 27> = array<u32, 27>(22749u, 0u, 58133u, 0u, 1094u, 0u, 4294967295u, 90084u, 0u, 1238u, 1605u, 9757u, 0u, 0u, 0u, 1u, 19020u, 1u, 1u, 0u, 4294967295u, 1u, 29207u, 10068u, 58261u, 1u, 65873u);

var<private> global2: u32;

var<private> global3: vec2<u32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = -1139f;
    let var_1 = false;
    global2 = _wgslsmith_div_u32(34522u, ~52635u);
    let var_2 = arg_1;
    var var_3 = 20099u;
    return abs(1i);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    return arg_0;
}

fn func_3(arg_0: bool) -> vec4<bool> {
    global3 = min(_wgslsmith_mult_vec2_u32(~vec2<u32>(global3.x, global3.x), min(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)])), ~vec2<u32>(1u, 0u))) & firstTrailingBit(~(~vec2<u32>(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(global3.x, 27u)]))), vec2<u32>(1u, (4294967295u ^ ~global3.x) & ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global3.x, 27u)], 28739u)));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-345f, -647f, 1000f, -149f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-153f, 1000f, -1000f), vec3<f32>(179f, -164f, 1819f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1062f, -2222f, 1000f))))), func_2(func_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(185f, 1074f, 1048f, 674f), vec4<f32>(1562f, 2243f, -1073f, 461f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(702f, -2336f, -119f)), ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.x, 27u)], 27u)], 4294967295u, global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]), any(global0[_wgslsmith_index_u32(global3.x, 31u)]), -u_input.e.x))).c, any(vec3<bool>(true, arg_0, arg_0)), _wgslsmith_div_i32(14520i, _wgslsmith_sub_i32(u_input.a, u_input.a)));
    let var_1 = ~min(-select(u_input.e.xx, u_input.e.zx, var_0.d), vec2<i32>(0i, u_input.e.x)) | ~firstLeadingBit(vec2<i32>(~u_input.b, _wgslsmith_clamp_i32(1i, var_0.e, var_0.e)));
    global2 = ~abs(22934u);
    var var_2 = firstTrailingBit(-1i);
    return vec4<bool>(true, (-u_input.d | -8483i) < 1i, arg_0 && true, var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~abs(reverseBits(firstTrailingBit(abs(vec2<u32>(0u, 1u)))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-135f + -893f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1879f + -608f))));
    let var_1 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -304f), -559f, -771f, -904f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(566f, -654f, 1176f, -205f))), vec3<f32>(1169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(499f))), 950f), ~(vec4<u32>(global1[_wgslsmith_index_u32(1u, 27u)], 68751u, global3.x, global3.x) | vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global3.x, 1u, 0u)), any(select(global0[_wgslsmith_index_u32(global3.x, 31u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.x, 27u)], 27u)], 31u)], vec2<bool>(true, true))) || true, _wgslsmith_div_i32(u_input.a, func_1(36919u, Struct_1(vec4<f32>(1710f, -1122f, 1159f, 375f), vec3<f32>(2153f, 736f, -2044f), vec4<u32>(global1[_wgslsmith_index_u32(16466u, 27u)], 69312u, global3.x, 4294967295u), false, u_input.d), Struct_1(vec4<f32>(-981f, 111f, -1108f, 122f), vec3<f32>(1000f, -785f, -2191f), vec4<u32>(global1[_wgslsmith_index_u32(18147u, 27u)], global3.x, 51092u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)]), true, -28735i)) & u_input.a)));
    var var_2 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e.x, var_1.e), u_input.e.yz), vec2<i32>(-var_1.e, abs(~(-var_1.e))));
    var_2 = ~(~vec2<i32>(~(-var_2.x), 1i));
    var var_3 = func_3(var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.a.x)), -138f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-163f + 274f))), _wgslsmith_f_op_f32(-var_1.b.x)));
}

