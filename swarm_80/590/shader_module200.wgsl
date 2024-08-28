struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
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

var<private> global0: array<f32, 2>;

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32) -> i32 {
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    var var_0 = select(!vec3<bool>(~u_input.b < ~u_input.b, true, true || select(true, true, false)), vec3<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, true))), any(vec2<bool>(true, true)), all(vec3<bool>(any(vec4<bool>(false, false, false, false)), true, true))), vec3<bool>(false, true, all(vec2<bool>(true, true))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 21818u), vec2<u32>(130085u, u_input.b), vec2<u32>(u_input.b, u_input.b)), abs(vec2<u32>(u_input.b, 4294967295u))), 2u)], -1000f, -1088f)), global1.b);
    let var_2 = !vec4<bool>(true, !var_0.x, true, true);
    return _wgslsmith_mult_i32(u_input.e.x, -countOneBits(-2147483647i));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.e.zww;
    var var_1 = vec2<i32>(_wgslsmith_div_i32(var_0.x, firstTrailingBit(func_2(global1.b))), _wgslsmith_sub_i32(var_0.x, ~(-342i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(27337u, 2u)], global0[_wgslsmith_index_u32(36720u, 2u)], global1.b)))))), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 1u), 2u)]), -2533f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b)))), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))))));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), true))), _wgslsmith_div_f32(var_2.x, global1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(all(vec2<bool>(u_input.e.x < u_input.c.x, true)) & true, true, true);
    global0 = array<f32, 2>();
    let var_1 = global0[_wgslsmith_index_u32(min(4294967295u, firstTrailingBit(u_input.b)), 2u)];
    global1 = func_1();
    global1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global1.a + vec3<f32>(global1.a.x, global1.b, global0[_wgslsmith_index_u32(u_input.b, 2u)]))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global1.a)))), global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c);
}

