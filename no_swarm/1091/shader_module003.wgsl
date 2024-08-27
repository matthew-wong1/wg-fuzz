struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: array<Struct_1, 2>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1644f)))))), any(vec3<bool>(true, true, true)), ~min(-max(vec2<i32>(0i, global0[_wgslsmith_index_u32(u_input.a, 25u)]), vec2<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a, 25u)])), vec2<i32>(-6067i, firstTrailingBit(-38154i))));
    global0 = array<i32, 25>();
    global1 = array<Struct_1, 2>();
    global1 = array<Struct_1, 2>();
    let var_1 = min(_wgslsmith_add_u32(abs(~12255u), ~u_input.a), u_input.a);
    return -_wgslsmith_sub_vec2_i32(-(var_0.c ^ var_0.c), ~vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], var_0.c.x)) ^ ~_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.c, countOneBits(vec2<i32>(global0[_wgslsmith_index_u32(41031u, 25u)], -1i))), countOneBits(select(vec2<i32>(6411i, global0[_wgslsmith_index_u32(22812u, 25u)]), vec2<i32>(var_0.c.x, 8010i), vec2<bool>(var_0.b, false))));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2419f), false, func_3());
    global1 = array<Struct_1, 2>();
    var var_1 = vec2<bool>(!var_0.b, any(select(select(select(vec4<bool>(false, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, true, true, true), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)), !vec4<bool>(var_0.b, var_0.b, true, var_0.b), select(var_0.b, false, false)), !select(vec4<bool>(false, false, true, var_0.b), vec4<bool>(var_0.b, true, var_0.b, var_0.b), var_0.b), true)));
    let var_2 = !(!vec2<bool>((var_0.b && true) & false, false));
    var_0 = Struct_1(var_0.a, true != var_2.x, func_3());
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(188f)) - -147f));
}

fn func_1() -> vec3<i32> {
    global1 = array<Struct_1, 2>();
    let var_0 = -47697i;
    var var_1 = vec2<i32>(global0[_wgslsmith_index_u32(~(~(~_wgslsmith_sub_u32(u_input.a, u_input.a))), 25u)], reverseBits(var_0));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(func_2(vec2<f32>(_wgslsmith_f_op_f32(select(756f, _wgslsmith_f_op_f32(f32(-1f) * -546f), global0[_wgslsmith_index_u32(24861u, 25u)] < global0[_wgslsmith_index_u32(u_input.a, 25u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-885f + 1000f) - _wgslsmith_f_op_f32(2073f - 508f))))), true, vec2<i32>(var_0, _wgslsmith_dot_vec4_i32(min(max(vec4<i32>(global0[_wgslsmith_index_u32(1u, 25u)], 37352i, var_0, var_1.x), vec4<i32>(1i, 2147483647i, -63968i, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, 6879i, var_1.x, 1i), vec4<i32>(0i, -11727i, var_1.x, -6460i))), abs(vec4<i32>(-1i, var_1.x, var_0, 17904i)))));
    var var_3 = global1[_wgslsmith_index_u32(2294u, 2u)];
    return vec3<i32>(var_2.c.x, -(i32(-1i) * -2147483647i), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_sub_i32(var_3.c.x, -2147483647i) | -975i));
}

fn func_4(arg_0: vec3<i32>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(150f + 286f), _wgslsmith_f_op_f32(435f * -501f))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -194f)) - _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-var_0.x));
    var var_1 = global1[_wgslsmith_index_u32(~(select(min(firstTrailingBit(u_input.a), u_input.a), u_input.a, true) & u_input.a), 2u)];
    var var_2 = global1[_wgslsmith_index_u32(~(~(u_input.a >> (~(~u_input.a) % 32u))), 2u)];
    let var_3 = global1[_wgslsmith_index_u32(~((0u ^ max(select(4294967295u, u_input.a, true), u_input.a)) & u_input.a), 2u)];
    return StorageBuffer(765f, ~select(~(vec4<u32>(u_input.a, 22770u, u_input.a, 1323u) | vec4<u32>(u_input.a, 101331u, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(21814u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 0u), ~vec4<u32>(1u, u_input.a, 8416u, 57647u)), (u_input.a >> (u_input.a % 32u)) >= u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1());
}

