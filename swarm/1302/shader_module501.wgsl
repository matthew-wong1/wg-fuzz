struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(true, Struct_1(vec3<bool>(true, false, false))), Struct_3(true, Struct_1(vec3<bool>(true, true, false))), Struct_3(true, Struct_1(vec3<bool>(true, true, false))), Struct_3(true, Struct_1(vec3<bool>(false, false, true))), Struct_3(true, Struct_1(vec3<bool>(true, true, false))), Struct_3(true, Struct_1(vec3<bool>(false, true, true))), Struct_3(false, Struct_1(vec3<bool>(false, false, false))), Struct_3(false, Struct_1(vec3<bool>(true, true, false))), Struct_3(false, Struct_1(vec3<bool>(true, true, true))), Struct_3(true, Struct_1(vec3<bool>(false, false, true))), Struct_3(false, Struct_1(vec3<bool>(true, true, true))), Struct_3(false, Struct_1(vec3<bool>(true, false, true))), Struct_3(true, Struct_1(vec3<bool>(true, false, true))), Struct_3(true, Struct_1(vec3<bool>(false, true, false))), Struct_3(true, Struct_1(vec3<bool>(false, true, false))), Struct_3(true, Struct_1(vec3<bool>(false, true, true))), Struct_3(false, Struct_1(vec3<bool>(true, false, true))), Struct_3(false, Struct_1(vec3<bool>(true, true, true))), Struct_3(true, Struct_1(vec3<bool>(false, true, false))), Struct_3(true, Struct_1(vec3<bool>(false, false, true))), Struct_3(false, Struct_1(vec3<bool>(false, false, false))), Struct_3(true, Struct_1(vec3<bool>(true, false, false))), Struct_3(true, Struct_1(vec3<bool>(true, false, true))), Struct_3(false, Struct_1(vec3<bool>(true, true, true))), Struct_3(true, Struct_1(vec3<bool>(false, true, false))), Struct_3(true, Struct_1(vec3<bool>(false, false, false))));

var<private> global1: array<i32, 2>;

var<private> global2: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(0u, 57227u, 4294967295u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(17728u, 0u, 4294967295u), vec3<u32>(3373u, 1u, 4294967295u), vec3<u32>(92575u, 4294967295u, 0u), vec3<u32>(1u, 1u, 6395u));

var<private> global3: vec4<f32>;

var<private> global4: array<f32, 7>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    global1 = array<i32, 2>();
    global3 = vec4<f32>(607f, global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f) - global3.x), global3.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(arg_0.a, vec3<f32>(1000f, 664f, global4[_wgslsmith_index_u32(1u, 7u)]))), arg_0.a)))), arg_0.a) * global3.yzw);
    let var_1 = vec3<bool>(true, true, true);
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(37023u, 7u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a.x, 7u)] - global3.x)))));
    return Struct_1(var_1);
}

fn func_2() -> StorageBuffer {
    let var_0 = firstLeadingBit(vec4<i32>(0i, ~global1[_wgslsmith_index_u32(u_input.a.x & u_input.a.x, 2u)], ~countOneBits(global1[_wgslsmith_index_u32(u_input.a.x, 2u)]), ~(-6565i)) & (~(-vec4<i32>(51105i, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)])) ^ firstTrailingBit(~vec4<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)]))));
    let var_1 = ~_wgslsmith_mult_vec4_u32(select(firstLeadingBit(u_input.a | vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(30314u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), true), u_input.a);
    var var_2 = func_1(Struct_4(global3.wxw));
    global4 = array<f32, 7>();
    let var_3 = !func_1(Struct_4(global3.wzy)).a;
    return StorageBuffer(u_input.a.ww);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 2>();
    var var_0 = 1088f;
    var var_1 = ~u_input.a.zy;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.x))) + global3.x)));
    global4 = array<f32, 7>();
    var var_2 = func_1(Struct_4(global3.zyx));
    let x = u_input.a;
    s_output = func_2();
}

