struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<bool, 21> = array<bool, 21>(false, true, false, false, true, true, true, false, true, false, true, true, false, false, true, false, false, true, true, false, false);

var<private> global2: u32;

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(true, 4294967295u), Struct_1(false, 86431u), Struct_1(true, 17190u), Struct_1(true, 4294967295u), Struct_1(false, 11241u), Struct_1(false, 1u), Struct_1(false, 49368u), Struct_1(true, 0u), Struct_1(true, 56038u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    let var_0 = Struct_3(vec2<bool>(all(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 21u)], global1[_wgslsmith_index_u32(55394u, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)])), all(vec4<bool>(true, true, true, true))), global3[_wgslsmith_index_u32(0u, 9u)]);
    let var_1 = var_0;
    global2 = 11894u;
    let var_2 = Struct_1(true, var_1.b.b);
    global3 = array<Struct_1, 9>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1)));
}

fn func_1(arg_0: vec4<i32>) -> vec2<bool> {
    var var_0 = ~max(~countOneBits(_wgslsmith_div_u32(u_input.b, 48432u)), u_input.c);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-2136f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f)))), arg_0.ww >> (max(_wgslsmith_sub_vec2_u32(vec2<u32>(101919u, u_input.b), vec2<u32>(u_input.a.x, u_input.c)), _wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 82080u))) % vec2<u32>(32u)))) * -1000f);
    return vec2<bool>(false, 1007f < _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-980f + var_1)), vec2<i32>(min(-42081i, 25909i), arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-142f, _wgslsmith_div_f32(1000f, -428f))) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2379f))))), 1u);
    var var_1 = Struct_3(func_1(vec4<i32>(u_input.d, u_input.d, 0i, i32(-1i) * -u_input.d)), global3[_wgslsmith_index_u32(var_0.b, 9u)]);
    global3 = array<Struct_1, 9>();
    var_0 = Struct_1(any(vec4<bool>(var_0.a, !select(true, var_1.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), true, true)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a.x, firstLeadingBit(7997u)), var_1.b.b, 0u) ^ 0u);
    let var_2 = all(!var_1.a) & !all(func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, -59684i, 4787i, u_input.d), vec4<i32>(u_input.d, 2147483647i, u_input.d, -2147483647i))));
    let var_3 = -max(-(vec3<i32>(u_input.d, 3025i, 0i) | (vec3<i32>(1i, 0i, u_input.d) & vec3<i32>(-45159i, 1i, u_input.d))), vec3<i32>(u_input.d, -u_input.d, u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1080f, 923f, 1430f), vec3<f32>(528f, 179f, 945f))))), 1304f, _wgslsmith_div_vec4_f32(vec4<f32>(146f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1184f)) + _wgslsmith_f_op_f32(f32(-1f) * -1470f)), 1323f, 320f), vec4<f32>(1f, 1f, 1f, 1f)));
}

