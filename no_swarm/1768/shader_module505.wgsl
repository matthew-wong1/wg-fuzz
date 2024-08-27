struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<f32>, 20>;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(true);

var<private> global4: i32 = -66893i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    return arg_0;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: f32) -> f32 {
    return 2101f;
}

fn func_3(arg_0: Struct_1) -> f32 {
    global3 = arg_0;
    global1 = array<vec4<f32>, 20>();
    global2 = arg_0;
    global1 = array<vec4<f32>, 20>();
    var var_0 = Struct_1(global2.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -746f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-342f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-563f, 1706f, -439f))), vec4<u32>(24085u, 25013u, 1u, 10088u), func_1(Struct_1(true)), -1215f))))) < 262f;
    global2 = Struct_1(!global3.a || true);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global2.a))) - 1f));
    let var_1 = vec2<u32>(~1u, 93101u);
    global1 = array<vec4<f32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b, u_input.b) | u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -u_input.a), -vec2<i32>(19839i, 0i))));
}

