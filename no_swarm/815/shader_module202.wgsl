struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<bool, 10> = array<bool, 10>(true, false, false, false, false, false, false, true, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1018f, -418f, -1128f, 432f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-747f, -383f, -158f, 2071f)))))));
    return ~0u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1237f)) + _wgslsmith_f_op_f32(-1f));
    let var_1 = -971f;
    var var_2 = Struct_1(!any(!select(vec4<bool>(arg_1.a, global1[_wgslsmith_index_u32(9402u, 10u)], true, true), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(0u, 10u)]), true)));
    var var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, 503f, var_1), vec3<f32>(-814f, 1128f, var_1))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, -934f) * vec3<f32>(var_1, -1684f, var_1)) * vec3<f32>(1497f, -1352f, -601f)), vec3<f32>(-252f, _wgslsmith_f_op_f32(var_1 - var_1), -1010f)))))));
    return select(select(vec4<bool>(!var_3.a, true, any(select(vec3<bool>(true, false, var_3.a), vec3<bool>(true, var_3.a, false), vec3<bool>(var_2.a, var_3.a, true))), global1[_wgslsmith_index_u32(0u, 10u)]), vec4<bool>(true, true, true, all(!vec2<bool>(var_3.a, arg_1.a))), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 10u)] & true, false, select(arg_0.a, var_2.a, arg_0.a))), !(!vec4<bool>(var_4.x == var_4.x, var_2.a || true, arg_0.a != arg_1.a, false)), false);
}

fn func_2() -> i32 {
    var var_0 = global0.zzw;
    var var_1 = !(!(!func_3(Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 10u)]), Struct_1(false))));
    let var_2 = Struct_1(true);
    var_1 = !select(select(vec4<bool>(!var_2.a, any(vec4<bool>(var_1.x, var_2.a, false, global1[_wgslsmith_index_u32(14259u, 10u)])), !var_2.a, true), func_3(var_2, Struct_1(var_2.a)), var_2.a), !func_3(Struct_1(true), Struct_1(var_1.x)), select(vec4<bool>(var_1.x, var_1.x, func_3(Struct_1(true), Struct_1(false)).x, !global1[_wgslsmith_index_u32(1u, 10u)]), !vec4<bool>(var_2.a, var_2.a, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], true), var_2.a));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(636f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1904f) + _wgslsmith_f_op_f32(step(621f, -1000f)))))));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec4<i32>(~(-1i), -31080i >> ((u_input.a.x << (u_input.a.x % 32u)) % 32u), -2147483647i, max(u_input.c.x & 2147483647i, countOneBits(21885i))) | vec4<i32>(abs(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x)), _wgslsmith_div_i32(_wgslsmith_div_i32(i32(-1i) * -23814i, ~global0.x), -53879i), u_input.c.x, 2147483647i);
    var var_0 = ~firstTrailingBit(~_wgslsmith_mult_u32(~u_input.b, ~u_input.b));
    let var_1 = _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, reverseBits(u_input.a.x), 27407u), vec3<u32>(u_input.b & ~func_1(), 48011u, u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(trunc(334f));
    var var_3 = ~2147483647i;
    var var_4 = ~(-1i);
    global0 = ~(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 2147483647i, -4498i, global0.x) | vec4<i32>(global0.x, 1i, 20722i, global0.x), vec4<i32>(u_input.c.x, global0.x, u_input.c.x, u_input.c.x)), -reverseBits(vec4<i32>(global0.x, 7734i, global0.x, -12477i))) ^ -vec4<i32>(_wgslsmith_add_i32(u_input.c.x, global0.x), -u_input.c.x, global0.x, 25398i));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, abs(func_2()), var_2, 1u);
}

