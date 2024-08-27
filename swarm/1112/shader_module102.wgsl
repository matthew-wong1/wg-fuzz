struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(886f, 478f, 237f, 726f, 412f, 281f, -235f, -392f, 640f, 1339f, 1744f, -1676f, 1732f, -1000f, -577f, 1563f, -1000f, 194f, 248f, 370f, -462f, -651f);

var<private> global1: vec2<f32> = vec2<f32>(1613f, 1254f);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: i32) -> vec3<i32> {
    let var_0 = Struct_1(u_input.e.yxw);
    var var_1 = var_0;
    let var_2 = vec2<f32>(global1.x, global0[_wgslsmith_index_u32(max(1u, 0u), 22u)]);
    var var_3 = Struct_1(var_0.a);
    var_1 = var_0;
    return _wgslsmith_mult_vec3_i32(~(-vec3<i32>(arg_1, i32(-1i) * -34272i, _wgslsmith_add_i32(u_input.c, 8858i))), _wgslsmith_add_vec3_i32(countOneBits(-vec3<i32>(var_3.a.x, var_1.a.x, -2147483647i)), vec3<i32>(2147483647i, var_3.a.x, 11238i)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: f32) -> vec2<f32> {
    var var_0 = Struct_1(-(vec3<i32>(-1i) * -u_input.e.yxw));
    let var_1 = Struct_1(firstTrailingBit(vec3<i32>(49006i, firstTrailingBit(-arg_0), -34064i << (~u_input.d % 32u))));
    let var_2 = vec2<bool>(true, !all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true)) | false);
    let var_3 = Struct_1(func_3(!all(select(vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_2.x)), u_input.e.x));
    global0 = array<f32, 22>();
    return vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-998f, -1783f)), _wgslsmith_f_op_f32(-arg_1))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1499f * arg_1)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: bool) -> u32 {
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(-u_input.a, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~1u, 22u)], 1228f)), global0[_wgslsmith_index_u32(arg_0.x, 22u)])), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, global0[_wgslsmith_index_u32(21599u, 22u)]))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-198f, global0[_wgslsmith_index_u32(0u, 22u)]))), !vec2<bool>(arg_2, arg_2))))));
    let var_0 = u_input.d;
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 22u)], global0[_wgslsmith_index_u32(1u, 22u)])))))));
    let var_2 = -vec3<i32>(0i, ~u_input.c, _wgslsmith_mult_i32(_wgslsmith_sub_i32(63790i, i32(-1i) * -2147483647i), ~arg_1.x));
    let var_3 = arg_2 | !arg_2;
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~func_1(firstTrailingBit(vec4<u32>(0u, u_input.d, 27665u, 59209u)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, u_input.a, u_input.c, u_input.b), vec4<i32>(2147483647i, u_input.a, 2147483647i, -2147483647i)), true), 22u)], _wgslsmith_f_op_f32(f32(-1f) * -1043f))), _wgslsmith_f_op_f32(floor(-518f)));
    let var_0 = u_input.e.xww;
    var var_1 = Struct_1(u_input.e.wyx);
    global0 = array<f32, 22>();
    let var_2 = 29588u;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-536f * -874f)) * global0[_wgslsmith_index_u32(u_input.d, 22u)]) >= 1174f;
    var var_4 = Struct_1(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2, 36162u, u_input.d), ~(~1u & min(1u, var_2)), firstTrailingBit(_wgslsmith_clamp_vec3_i32(max(select(vec3<i32>(var_4.a.x, -32341i, var_0.x), vec3<i32>(var_4.a.x, 2147483647i, u_input.b), vec3<bool>(false, true, true)), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.x, 344i, var_4.a.x), vec3<i32>(var_4.a.x, -2147483647i, -52616i))), -vec3<i32>(var_0.x, 1i, -1i), vec3<i32>(-45009i, -2737i & var_1.a.x, 1i))), var_2);
}

