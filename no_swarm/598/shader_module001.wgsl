struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(4294967295u), Struct_2(1u));

var<private> global1: f32 = 1112f;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = arg_0;
    let var_1 = 0u;
    var var_2 = Struct_2(var_1);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-691f - _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0))));
    let var_3 = 1i;
    return _wgslsmith_sub_i32(var_3, 1i);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(firstTrailingBit(42229u) ^ max(4294967295u, 1u));
    let var_1 = true;
    var var_2 = firstTrailingBit(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-965f)))) >> (35979u % 32u));
    var var_3 = global0[_wgslsmith_index_u32(var_0.a, 2u)];
    return Struct_2(31520u);
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = -_wgslsmith_add_vec4_i32(vec4<i32>(~1i, ~(global2.a << (4294967295u % 32u)), 2147483647i, global2.a), vec4<i32>(abs(u_input.a.x), _wgslsmith_div_i32(2147483647i, -2147483647i), 0i, u_input.a.x) & _wgslsmith_mult_vec4_i32(vec4<i32>(global2.a, -53827i, global2.a, 1i), -vec4<i32>(2147483647i, -1i, -10328i, 1i)));
    let var_1 = vec2<u32>(~67439u, abs(~firstTrailingBit(0u)));
    global0 = array<Struct_2, 2>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(~abs(var_0.a), ~var_0.a, true)), u_input.a.wyz, 1u, firstTrailingBit(~(_wgslsmith_mult_i32(0i, u_input.a.x) ^ 18882i)), vec2<i32>(abs(select(1i ^ u_input.a.x, 56689i, all(vec4<bool>(false, false, false, false)))), u_input.a.x));
}

