struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 689u, 50113u);

var<private> global1: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(-539f, -1241f, 910f), vec3<f32>(1390f, -713f, 1786f), vec3<f32>(326f, 1292f, 414f), vec3<f32>(2464f, -1472f, -1000f), vec3<f32>(-1416f, 1405f, 1225f), vec3<f32>(424f, -1821f, -182f), vec3<f32>(-138f, -1000f, 689f), vec3<f32>(1850f, -649f, 573f), vec3<f32>(288f, 1054f, 1191f), vec3<f32>(-1234f, -1000f, 373f), vec3<f32>(867f, 1063f, -226f), vec3<f32>(-447f, -397f, -536f), vec3<f32>(-1798f, -1743f, 2119f), vec3<f32>(1162f, 129f, -290f), vec3<f32>(-1140f, -1129f, 317f), vec3<f32>(-987f, 904f, 3088f), vec3<f32>(471f, -350f, 237f), vec3<f32>(-1284f, 416f, 1276f), vec3<f32>(882f, -576f, -1999f), vec3<f32>(-1501f, -1767f, 428f), vec3<f32>(-1150f, -1000f, 452f), vec3<f32>(2022f, 411f, 1583f), vec3<f32>(912f, 913f, 722f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = ~reverseBits(~vec3<i32>(1i, 1i, 1i));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, -1583f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(635f, 1217f), vec2<f32>(arg_1, arg_0.a))))), any(vec3<bool>(true, true, true))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-276f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(~max(select(~u_input.a.x, 1u, true), ~global0.x), 23u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) ^ global0.x, 23u)])));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-255f * var_0.x), var_0.x, -455f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(func_1(Struct_1(var_0.x, global0.zz), _wgslsmith_f_op_f32(var_0.x - var_0.x), Struct_1(848f, vec2<u32>(0u, 53675u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2600f + 1000f))), vec3<f32>(var_0.x, -1184f, var_0.x))));
    global1 = array<vec3<f32>, 23>();
    let var_1 = !(!(!vec3<bool>(true, true, var_0.x > var_0.x)));
    let var_2 = min(_wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(i32(-1i) * -1i, ~(-2147483647i)) >> (max(~global0.x, _wgslsmith_add_u32(global0.x, global0.x)) % 32u)), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec4<i32>(~var_2, var_2, _wgslsmith_add_i32(var_2, var_2), ~1i)));
}

