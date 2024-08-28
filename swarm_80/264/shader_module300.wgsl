struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: i32;

var<private> global2: array<Struct_1, 8>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32) -> bool {
    global2 = array<Struct_1, 8>();
    let var_0 = u_input.b;
    let var_1 = true;
    global0 = ~(-arg_1.a);
    let var_2 = vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1383f));
    return 694f >= _wgslsmith_div_f32(var_2.x, var_2.x);
}

fn func_3(arg_0: vec3<bool>) -> Struct_1 {
    global1 = -6784i;
    var var_0 = 2147483647i;
    var var_1 = 399f;
    let var_2 = any(!select(vec2<bool>(arg_0.x, any(vec4<bool>(true, true, arg_0.x, arg_0.x))), vec2<bool>(true, true), !func_2(arg_0, global2[_wgslsmith_index_u32(4294967295u, 8u)], u_input.b.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), -1629f, 952f))));
    return global2[_wgslsmith_index_u32(0u, 8u)];
}

fn func_1(arg_0: u32) -> Struct_1 {
    return func_3(vec3<bool>(!all(vec2<bool>(true, true)), true, !select(any(vec4<bool>(true, false, true, false)), func_2(vec3<bool>(true, false, false), Struct_1(u_input.b.x), u_input.b.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -u_input.b.x;
    global2 = array<Struct_1, 8>();
    global1 = 2147483647i;
    var var_0 = func_1(4294967295u);
    var var_1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1402f, -1000f))), 675f)))), var_0.a);
}

