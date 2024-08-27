struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<u32>;

var<private> global2: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(15692i, 0i, -5547i, i32(-2147483648)), vec4<i32>(1i, 0i, -27100i, 1i), vec4<i32>(1i, 36682i, 2147483647i, 2147483647i), vec4<i32>(-1i, 20516i, -1i, 1i), vec4<i32>(15916i, 2834i, i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), 57311i, 2147483647i, -38711i), vec4<i32>(1i, -536i, -1i, -84573i), vec4<i32>(-9383i, -21690i, 15981i, -8574i), vec4<i32>(32765i, 17225i, -46968i, 1i), vec4<i32>(59942i, -858i, 1i, 1i), vec4<i32>(-26660i, 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, 2147483647i, 5994i, -41902i), vec4<i32>(38331i, -12942i, -44987i, i32(-2147483648)), vec4<i32>(1i, 28875i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, 2147483647i, -30950i, 30309i), vec4<i32>(130i, 78037i, 1i, -1i), vec4<i32>(0i, i32(-2147483648), 20634i, i32(-2147483648)), vec4<i32>(15685i, -27185i, 10680i, 39896i), vec4<i32>(i32(-2147483648), -15158i, 50172i, 35883i), vec4<i32>(1i, -6101i, -30705i, 18140i), vec4<i32>(0i, 0i, 7824i, -1437i), vec4<i32>(0i, 37042i, 7949i, 2147483647i), vec4<i32>(0i, -30409i, -18058i, -1i), vec4<i32>(15874i, 1169i, 1i, 0i), vec4<i32>(0i, 1i, 0i, -66829i), vec4<i32>(24209i, 0i, 1i, -9367i), vec4<i32>(2147483647i, -21458i, -49915i, 0i), vec4<i32>(-7998i, -4240i, 44615i, -15963i), vec4<i32>(i32(-2147483648), 0i, 8904i, i32(-2147483648)), vec4<i32>(1i, -1i, i32(-2147483648), 34065i));

var<private> global3: array<f32, 4> = array<f32, 4>(-1420f, -1000f, 1643f, 1345f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    global3 = array<f32, 4>();
    var var_1 = true;
    let var_2 = !global0.x;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.x, 4u)] - global3[_wgslsmith_index_u32(8063u, 4u)]), global3[_wgslsmith_index_u32(abs(22150u), 4u)]))), _wgslsmith_f_op_f32(min(-287f, _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(4294967295u, 4u)])))))), _wgslsmith_f_op_f32(min(1208f, global3[_wgslsmith_index_u32(34502u, 4u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1149f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(0u, 4u)])) - _wgslsmith_f_op_f32(f32(-1f) * -1290f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), global3[_wgslsmith_index_u32(~global1.x, 4u)], _wgslsmith_f_op_f32(f32(-1f) * -1261f), var_3.x), global3[_wgslsmith_index_u32(global1.x, 4u)], _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1557f, 880f, -463f, 605f), vec4<f32>(-1395f, var_3.x, var_3.x, global3[_wgslsmith_index_u32(0u, 4u)]))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(958f, 645f, 472f, global3[_wgslsmith_index_u32(global1.x, 4u)])))))));
}

