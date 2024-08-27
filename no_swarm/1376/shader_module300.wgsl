struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20>;

var<private> global1: array<vec3<f32>, 3>;

var<private> global2: vec2<bool>;

var<private> global3: array<f32, 23> = array<f32, 23>(388f, 2115f, -631f, 267f, 1634f, 1000f, 1000f, 135f, 1086f, 308f, 321f, -232f, 1666f, -611f, 805f, 2044f, -851f, 183f, 155f, -138f, 450f, 1000f, 1000f);

var<private> global4: Struct_1 = Struct_1(vec3<i32>(-42457i, 41234i, 77809i), -188f);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: u32, arg_1: bool) -> bool {
    let var_0 = Struct_1(~(-vec3<i32>(~global4.a.x, ~(-5096i), -2147483647i)), global4.b);
    global3 = array<f32, 23>();
    let var_1 = var_0;
    global1 = array<vec3<f32>, 3>();
    global1 = array<vec3<f32>, 3>();
    return !(arg_1 | false);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = true;
    global3 = array<f32, 23>();
    global3 = array<f32, 23>();
    global3 = array<f32, 23>();
    var var_1 = arg_0.a.x;
    return ~_wgslsmith_div_vec3_i32(arg_1.a, min(select(vec3<i32>(1i, arg_3.a.x, -1i), global4.a, global2.x), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.a.x, arg_1.a.x, global4.a.x), vec3<i32>(global4.a.x, 0i, arg_0.a.x)))) << (firstLeadingBit(vec3<u32>(u_input.a.x, 51628u, ~abs(18001u))) % vec3<u32>(32u));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_mult_i32(~(-(~(~arg_0.x))), 0i);
    let var_1 = global2.x;
    global0 = array<vec3<bool>, 20>();
    var var_2 = Struct_1(-func_3(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, global4.a.x, var_0), arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(global4.a, _wgslsmith_f_op_f32(1000f - global4.b)), global4.b, Struct_1(vec3<i32>(arg_0.x, -1i, var_0), 1f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 23u)] * global3[_wgslsmith_index_u32(27931u, 23u)])))))));
    var var_3 = 27888u;
    return 12609u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -452f;
    global2 = !select(!vec2<bool>(select(global2.x, global2.x, true), global2.x), select(select(vec2<bool>(false, global2.x), vec2<bool>(false, global2.x), func_1(u_input.a.x, true)), vec2<bool>(global2.x, true), global2.x), vec2<bool>(!any(vec4<bool>(false, false, true, true)), true));
    let var_1 = Struct_1(~max(~max(vec3<i32>(global4.a.x, 2147483647i, global4.a.x), global4.a), _wgslsmith_add_vec3_i32(vec3<i32>(global4.a.x, global4.a.x, -73798i), vec3<i32>(global4.a.x, 5585i, global4.a.x))), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 23u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(381f)), -368f))));
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-734f - 594f))));
    global3 = array<f32, 23>();
    let var_3 = var_1;
    global1 = array<vec3<f32>, 3>();
    var var_4 = vec2<u32>(65230u, u_input.a.x & 4294967295u) & reverseBits(vec2<u32>(func_2(countOneBits(global4.a), !global0[_wgslsmith_index_u32(36676u, 20u)]), 4154u << (_wgslsmith_sub_u32(0u, u_input.a.x) % 32u)));
    var var_5 = ~min(u_input.a.zwz, vec3<u32>(countOneBits(u_input.a.x) & var_4.x, 35638u, ~(~u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1422f, 24691u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1081f, var_0, -1563f)) + vec4<f32>(1783f, global4.b, var_0, var_2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_3.b, var_3.b, global3[_wgslsmith_index_u32(var_5.x, 23u)]))), vec4<bool>(select(global2.x, true, true), true, 1u <= var_5.x, any(global0[_wgslsmith_index_u32(52825u, 20u)]))))));
}

