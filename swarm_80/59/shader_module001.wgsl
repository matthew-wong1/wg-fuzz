struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_4) -> vec4<f32> {
    var var_0 = _wgslsmith_add_i32(~1i, firstTrailingBit(_wgslsmith_div_i32(firstTrailingBit(arg_1), i32(-1i) * -18889i))) & arg_1;
    let var_1 = arg_2;
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_div_u32(countOneBits(1u), abs(_wgslsmith_add_u32(u_input.a, 4294967295u))), ~u_input.b.x) ^ select(max(abs(~62503u), u_input.a ^ 1u), 1u, true);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2151f)));
    let var_4 = -vec3<i32>(25142i, arg_2.a.a.x, arg_2.b | countOneBits(~var_1.a.b));
    return _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 16u)]))), var_3)), -1106f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2020f, var_3, global0[_wgslsmith_index_u32(u_input.a, 16u)], 577f))))));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 16u)], arg_0))) - arg_1.a), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(arg_1.a.x * arg_0)), _wgslsmith_f_op_vec2_f32(-arg_1.a)), !all(arg_1.c.xzw) == arg_1.c.x)), ~arg_1.b, arg_1.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_1.a.x, -48357i, Struct_4(Struct_1(vec4<i32>(-2147483647i, var_0.b.x, arg_1.b.x, var_0.b.x), 0i), 0i))), vec4<f32>(-742f, 1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 16u)]), 811f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.a.x, -746f, arg_1.a.x, 1265f))) + vec4<f32>(-913f, 928f, 620f, arg_1.a.x)))));
    let var_2 = u_input.c;
    var var_3 = _wgslsmith_mult_vec2_i32(var_0.b.yy, -arg_1.b.wx << (u_input.b.wx % vec2<u32>(32u)));
    var var_4 = _wgslsmith_mod_u32(4294967295u, 3816u) >> ((((var_2 & ~u_input.b.x) >> (4294967295u % 32u)) | u_input.c) % 32u);
    return _wgslsmith_f_op_f32(trunc(arg_1.a.x));
}

fn func_1() -> StorageBuffer {
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -159f)) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(18514u, 10472u), 16u)])), 251f, _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(u_input.b.x, u_input.c)), 16u)], Struct_2(vec2<f32>(1115f, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), -vec4<i32>(2147483647i, 33160i, -1i, 14423i), vec4<bool>(true, true, true, true))))), abs(u_input.b.yyx & vec3<u32>(1u, u_input.c ^ u_input.b.x, 1u)), 1i << (~(~u_input.c) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 16>();
    let x = u_input.a;
    s_output = func_1();
}

