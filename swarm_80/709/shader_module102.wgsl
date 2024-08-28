struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: vec4<bool>;

var<private> global2: array<vec4<i32>, 30>;

var<private> global3: array<Struct_3, 20>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    global0 = array<bool, 19>();
    var var_0 = select(!select(vec2<bool>(true, true), global1.wy, !select(global1.zx, vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 19u)]), true)), !select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 19u)], global1.x), vec2<bool>(false, false)), global1.yw, !global1.xw), global1.zx);
    global1 = !(!select(vec4<bool>(false, false, global1.x, all(vec4<bool>(global0[_wgslsmith_index_u32(72343u, 19u)], global1.x, true, false))), !(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 19u)], false)), !(!vec4<bool>(global1.x, var_0.x, global0[_wgslsmith_index_u32(u_input.c, 19u)], false))));
    let var_1 = vec2<u32>(min(30789u, firstLeadingBit(0u)), ~u_input.e.x);
    global1 = !(!(!vec4<bool>(true, true, any(global1.zz), u_input.a < 2147483647i)));
    return _wgslsmith_f_op_f32(f32(-1f) * -402f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1397f)) - _wgslsmith_f_op_f32(func_1(vec2<i32>(1182i, u_input.a)))), -603f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(259f, 632f) * -1343f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1502f, _wgslsmith_f_op_f32(floor(-1501f))) - 1078f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(450f * _wgslsmith_f_op_f32(select(-806f, 2069f, global1.x))), -442f))));
    global3 = array<Struct_3, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_add_i32(~0i, -52472i)), var_0.zww);
}

