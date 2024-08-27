struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: vec2<f32> = vec2<f32>(213f, 849f);

var<private> global2: vec4<u32> = vec4<u32>(114914u, 15619u, 34355u, 4289u);

var<private> global3: vec3<f32> = vec3<f32>(-843f, 468f, 1352f);

var<private> global4: array<Struct_2, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.yx) + global3.yz) * vec2<f32>(_wgslsmith_f_op_f32(max(758f, global3.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_div_f32(global3.x, global3.x))))));
    global0 = array<Struct_1, 11>();
    var var_0 = vec2<bool>(~4294967295u <= global2.x, all(vec4<bool>(false, u_input.a.x > -u_input.a.x, true, true)));
    global0 = array<Struct_1, 11>();
    let var_1 = global3.x;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(836f + global3.x), _wgslsmith_f_op_f32(global3.x - 236f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.xz)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.yz - vec2<f32>(global3.x, global3.x))))));
    let var_2 = _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 23777i));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-191f + global3.x), _wgslsmith_f_op_f32(ceil(-140f)), _wgslsmith_div_f32(-825f, _wgslsmith_f_op_f32(-global1.x)));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -282f) * vec2<f32>(953f, _wgslsmith_f_op_f32(-global1.x)))));
}

