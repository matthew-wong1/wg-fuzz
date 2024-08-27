struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<Struct_1, 12>;

var<private> global2: Struct_1 = Struct_1(false, vec2<f32>(-2160f, -1425f), vec4<f32>(-220f, -553f, -1258f, -1562f));

var<private> global3: array<vec4<u32>, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.c.xyz, arg_1.c.zwy)) - vec3<f32>(553f, _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1021f))))));
    let var_1 = Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(sign(511f)))), arg_1.c);
    global0 = array<Struct_1, 20>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global2.c.x - -908f), _wgslsmith_f_op_f32(global2.c.x - 235f)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, arg_1.b.x, true)) - 1293f), 1258f)));
    let var_3 = ~(~abs(firstTrailingBit(_wgslsmith_sub_u32(arg_0.x, 4294967295u))));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(func_1(u_input.b, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x | 1u, 1u), 12u)]), firstTrailingBit(~func_1(u_input.b, global1[_wgslsmith_index_u32(4294967295u, 12u)]))));
}

