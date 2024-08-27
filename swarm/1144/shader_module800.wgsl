struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global1: array<f32, 25> = array<f32, 25>(-150f, 531f, -219f, -127f, 885f, 296f, -353f, -472f, -761f, -297f, -369f, 1028f, -121f, -811f, -1424f, -744f, 428f, -1385f, -1034f, 615f, -481f, 507f, 1000f, -465f, -1060f);

var<private> global2: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global3: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(-arg_0, firstLeadingBit(-2147483647i));
    var var_1 = global1[_wgslsmith_index_u32(49079u, 25u)];
    var var_2 = vec4<i32>(~u_input.a.x, 1i, 32582i, 1i);
    global0 = array<vec2<bool>, 17>();
    global2 = array<vec2<bool>, 10>();
    return arg_1;
}

fn func_1(arg_0: vec3<bool>) -> bool {
    let var_0 = func_2(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, u_input.c, u_input.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -9238i, 1i), vec3<i32>(u_input.c, -1i, u_input.a.x)), arg_0), u_input.a.yzy) << (u_input.b.x % 32u), Struct_1(vec2<u32>(firstTrailingBit(0u), global3.a.x), vec3<u32>(4294967295u, u_input.b.x, countOneBits(_wgslsmith_sub_u32(global3.b.x, u_input.b.x))), any(vec4<bool>(true, global3.c, true, arg_0.x)) & true));
    global1 = array<f32, 25>();
    var var_1 = var_0.a.x;
    var var_2 = global2[_wgslsmith_index_u32(global3.a.x | _wgslsmith_mod_u32(min(~(~64772u), (global3.b.x ^ u_input.b.x) & u_input.b.x), _wgslsmith_sub_u32(var_0.b.x, _wgslsmith_div_u32(u_input.b.x, 0u))), 10u)];
    var var_3 = var_0;
    return !arg_0.x;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 25u)], -191f, 1137f), vec3<f32>(1520f, global1[_wgslsmith_index_u32(global3.b.x, 25u)], -111f)))))) * vec3<f32>(765f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1581f * -106f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(49835u, 25u)])))) + vec3<f32>(-404f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(33512u, 25u)])))))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(8856u, 25u)] - global1[_wgslsmith_index_u32(~(~arg_0.b.x), 25u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 10>();
    let var_0 = true;
    var var_1 = global1[_wgslsmith_index_u32(1u, 25u)];
    var var_2 = Struct_1(vec2<u32>(u_input.b.x, 15766u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, ~4294967295u, 1u), _wgslsmith_div_vec3_u32(~u_input.b.wzz, _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b.x, global3.b.x, 0u)), u_input.b.xwy))), func_1(vec3<bool>(!(!global3.c), any(vec3<bool>(var_0, var_0, var_0)), false)));
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(func_2(abs(u_input.c), Struct_1(vec2<u32>(1u, 4250u), vec3<u32>(var_2.b.x, u_input.b.x, 4294967295u), global3.c)), _wgslsmith_add_u32(_wgslsmith_div_u32(33523u, var_2.b.x), 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-978f, 1000f, global1[_wgslsmith_index_u32(1u, 25u)])))))), false))));
    let var_4 = _wgslsmith_sub_i32(-1i, select(firstLeadingBit(-22276i ^ u_input.c), firstTrailingBit(abs(-28577i)), true) >> (select(11232u, _wgslsmith_mult_u32(~17257u, global3.a.x), abs(u_input.b.x) != _wgslsmith_div_u32(u_input.b.x, 1u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-2031f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(845f)) - _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_vec3_f32(func_3(func_2(_wgslsmith_sub_i32(var_4, u_input.a.x), Struct_1(vec2<u32>(4294967295u, var_2.b.x), vec3<u32>(u_input.b.x, var_2.b.x, global3.b.x), var_0)), 4294967295u)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(144f))))), _wgslsmith_div_vec2_f32(var_3.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, var_3.x), _wgslsmith_f_op_vec2_f32(var_3.zx - vec2<f32>(1913f, 965f))))));
}

