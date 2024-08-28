struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1>;

var<private> global1: array<f32, 7>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(188f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 7u)] - 1f), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~firstLeadingBit(u_input.b.x), 36306u), 7u)])));
    return Struct_3(u_input.c.x, -_wgslsmith_mod_vec4_i32(max(firstLeadingBit(vec4<i32>(u_input.c.x, -38715i, 1879i, -1656i)), vec4<i32>(32635i, u_input.a.x, u_input.c.x, 1i)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(83655i, 2147483647i, u_input.a.x, 2147483647i), vec4<i32>(1i, u_input.a.x, u_input.c.x, u_input.a.x)))), u_input.b.x);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-826f, 748f, _wgslsmith_f_op_f32(f32(-1f) * -626f))) + vec3<f32>(230f, -234f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.c, 7u)] * global1[_wgslsmith_index_u32(arg_1.c, 7u)]))))), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(arg_1.c, 1u)] - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-989f, global1[_wgslsmith_index_u32(u_input.b.x, 7u)], 1040f), global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(1u, 1u)] * global0[_wgslsmith_index_u32(0u, 1u)]))))), !vec3<bool>(select(false, false, true) && true, select(true, false, false) && true, true)));
    let var_1 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 7u)]);
    var var_2 = arg_1;
    global1 = array<f32, 7>();
    return select(!(_wgslsmith_mod_u32(u_input.b.x, 42964u) >= ~u_input.b.x) || (true & all(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), select(true, false, false), all(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), vec3<bool>(false, true, true))));
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<f32>, 1>();
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 7u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1163f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-275f + global1[_wgslsmith_index_u32(u_input.b.x, 7u)]) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 7u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-153f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(20504u, 7u)]))), func_3(vec4<i32>(58475i, 0i, -56174i, u_input.a.x), Struct_3(u_input.c.x, vec4<i32>(u_input.a.x, -2147483647i, -38306i, -5360i), 62889u)) || all(vec3<bool>(true, false, true)))) + 1878f), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(57224u, 58050u, ~1u), vec3<u32>(abs(u_input.b.x << (0u % 32u)), ~u_input.b.x, u_input.b.x)), 7u)], -1081f);
    global1 = array<f32, 7>();
    let var_1 = true;
    global0 = array<vec3<f32>, 1>();
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-492f + _wgslsmith_f_op_f32(1842f + var_0.x)), var_0.x), _wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(u_input.c.x, u_input.a.x, 7930i, 0i) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, 2147483647i)), vec4<i32>(6376i, _wgslsmith_add_i32(3585i, 1i), select(reverseBits(u_input.c.x), 2147483647i ^ u_input.c.x, select(var_1, false, false)), -(1i | u_input.c.x))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    global0 = array<vec3<f32>, 1>();
    let var_0 = Struct_2(arg_2.a, _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b, u_input.c.x, -4508i, arg_2.b) ^ vec4<i32>(u_input.a.x, u_input.a.x, 1i, arg_2.b), ~vec4<i32>(2147483647i, arg_2.b, -29950i, arg_2.b)), 2147483647i), u_input.a.x));
    var var_1 = func_2().a;
    global1 = array<f32, 7>();
    var var_2 = global1[_wgslsmith_index_u32(1u, 7u)];
    return Struct_1(_wgslsmith_f_op_f32(var_0.a.b - var_1.b), _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), -450f), !any(vec3<bool>(false, false, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<vec3<f32>, 1>();
    global0 = array<vec3<f32>, 1>();
    let var_1 = true;
    let var_2 = var_0.c;
    var var_3 = ~(~(~(~0u)) & _wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.c, 0u) | firstTrailingBit(u_input.b.x), ~(u_input.b.x >> (u_input.b.x % 32u))));
    let var_4 = func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1823f - _wgslsmith_f_op_f32(-3032f - -169f)) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.c ^ 4294967295u, 7u)])))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1783f - _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(5117u, 7u)])))))), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a.x, -1i, select(2147483647i, max(2147483647i, -u_input.c.x), all(select(vec4<bool>(var_1, true, false, true), vec4<bool>(var_1, var_1, var_1, var_1), true)))), vec2<i32>(~(1i ^ var_0.b.x), var_0.a), countOneBits(select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -1i, var_0.b.x, -20782i), var_0.b), reverseBits(vec4<i32>(u_input.a.x, var_0.a, var_0.b.x, 2147483647i)) | firstTrailingBit(vec4<i32>(u_input.a.x, var_0.b.x, -32900i, var_0.b.x)), all(select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, true, true, var_1), vec4<bool>(false, true, var_1, var_1))))), u_input.b, vec4<i32>(-1i) * -(~var_0.b));
}

