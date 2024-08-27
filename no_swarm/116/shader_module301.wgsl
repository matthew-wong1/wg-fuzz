struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<f32>, 30>;

var<private> global2: array<i32, 13> = array<i32, 13>(2147483647i, -6881i, 2147483647i, 0i, -6695i, 6532i, -1i, 4530i, 1i, 43737i, -2214i, 0i, i32(-2147483648));

var<private> global3: vec3<u32> = vec3<u32>(1u, 4294967295u, 0u);

var<private> global4: array<Struct_3, 1>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.x, 4294967295u), 1u)];
    var var_1 = global4[_wgslsmith_index_u32(arg_2, 1u)];
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(4294967295u, 30u)]);
    global4 = array<Struct_3, 1>();
    global2 = array<i32, 13>();
    global1 = array<vec3<f32>, 30>();
    let var_1 = global4[_wgslsmith_index_u32(37047u, 1u)];
    var var_2 = vec3<f32>(1f, 967f, -414f);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1466f - var_0.a.x) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.a, var_1.a), var_1.a)), all(vec4<bool>(true, true, true, false))))), func_1(var_0, var_0, _wgslsmith_sub_u32(~_wgslsmith_sub_u32(50129u, global3.x), abs(select(4294967295u, 15657u, false)))));
    let var_4 = _wgslsmith_add_i32(-(-u_input.a & u_input.a), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_vec4_i32(select(~vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(global3.x, 13u)], var_4, global2[_wgslsmith_index_u32(4294967295u, 13u)]), ~vec4<i32>(var_4, u_input.a, var_4, -2147483647i), vec4<bool>(false, false, true, true)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 11195i, -38365i), select(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 13u)], 2582i, -1i, 36366i), vec4<i32>(2147483647i, var_4, -2147483647i, 23716i), vec4<bool>(true, false, false, false)))), -reverseBits(min(vec4<i32>(-23948i, -912i, 29418i, -29966i), vec4<i32>(4080i, -9865i, u_input.a, 0i)))));
}

