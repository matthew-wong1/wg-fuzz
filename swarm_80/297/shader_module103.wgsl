struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<f32>, 1>;

var<private> global2: Struct_1;

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<f32>(1363f, 1000f, -2058f))));

var<private> global4: array<i32, 27> = array<i32, 27>(32094i, 1i, -1i, -29776i, 12567i, 14466i, 14041i, i32(-2147483648), -53205i, i32(-2147483648), -23551i, -1641i, -1i, -25061i, 2147483647i, i32(-2147483648), 56283i, 12440i, 1i, 1i, -52016i, 12761i, -1i, 6402i, -37112i, 2147483647i, 2147483647i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> f32 {
    global4 = array<i32, 27>();
    var var_0 = global3.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.a.a.x, 242f, global2.a.x) - global1[_wgslsmith_index_u32(17333u, 1u)])))));
    var_0 = Struct_2(arg_0);
    let var_2 = !(!vec3<bool>(false, all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), true));
    return arg_0.a.x;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global2.a.x, global2.a.x))))));
    global2 = global3.a.a;
    let var_1 = global3.a.a;
    return _wgslsmith_f_op_f32(func_3(global3.a.a));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> StorageBuffer {
    let var_0 = 0u;
    let var_1 = global3.a.a;
    var var_2 = all(!vec2<bool>(_wgslsmith_f_op_f32(func_2()) > _wgslsmith_f_op_f32(-var_1.a.x), -1461f < _wgslsmith_f_op_f32(global2.a.x * 1209f)));
    global4 = array<i32, 27>();
    let var_3 = vec2<i32>(~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a, -1i, -2147483647i), ~global4[_wgslsmith_index_u32(var_0, 27u)]), 1i), vec2<i32>(~(-u_input.b.x), -14185i)));
    return StorageBuffer(var_0 & (4294967295u >> (0u % 32u)), _wgslsmith_add_u32(countOneBits(var_0), var_0), var_1.a.yx, 13099u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global3.a.a.a.x, 2309f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, 951f, global2.a.x) * vec3<f32>(global3.a.a.a.x, global2.a.x, -1169f)), vec3<f32>(global2.a.x, 716f, global2.a.x)))))));
    let x = u_input.a;
    s_output = func_1(Struct_1(_wgslsmith_f_op_vec3_f32(abs(global3.a.a.a))), all(vec3<bool>(true, true, true)));
}

