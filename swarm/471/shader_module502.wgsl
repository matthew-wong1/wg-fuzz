struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(28619u, 0u, 112612u);

var<private> global1: Struct_3;

var<private> global2: Struct_3 = Struct_3(false);

var<private> global3: vec3<f32> = vec3<f32>(426f, 1182f, 899f);

var<private> global4: array<Struct_2, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = vec3<u32>(~(~global0.x), 0u, u_input.a);
    let var_0 = 1i;
    global3 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-698f, 1516f, 2389f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(456f, -458f, global3.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(920f, global3.x, 392f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(2037f, global3.x, arg_0), vec3<f32>(-597f, -434f, global3.x)) - vec3<f32>(arg_0, 276f, global3.x)))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(arg_0, -1685f), global1.a)))), _wgslsmith_f_op_f32(-arg_0), arg_0));
    global1 = Struct_3(true);
    var var_1 = Struct_1(vec3<f32>(-657f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1002f, -1082f, global2.a))))), 377f));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(598f, -518f, _wgslsmith_f_op_f32(ceil(arg_0)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), arg_0))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = any(!(!(!(!vec4<bool>(global2.a, true, global2.a, false)))));
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, arg_0.x)))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> StorageBuffer {
    var var_0 = u_input.a >> (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u);
    global3 = arg_0.a;
    global4 = array<Struct_2, 21>();
    var var_1 = true;
    var var_2 = Struct_3(all(select(!vec4<bool>(global1.a, arg_1.a, false, arg_1.a), select(vec4<bool>(true, true, true, true), vec4<bool>(false, global1.a, false, false), vec4<bool>(global1.a, true, global1.a, false)), vec4<bool>(!global2.a, select(false, global2.a, arg_1.a), true, true))));
    return StorageBuffer(-167f, max(reverseBits(u_input.b << (~vec4<u32>(3208u, u_input.b.x, 4294967295u, 18486u) % vec4<u32>(32u))), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 21>();
    let var_0 = global3.x;
    global4 = array<Struct_2, 21>();
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, 291f) + vec3<f32>(-1000f, -1999f, global3.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-629f, global3.x, global3.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1107f, global3.x, -1245f) - vec3<f32>(global3.x, 1292f, 700f)))))) + vec3<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(max(1584f, _wgslsmith_f_op_f32(-1600f - -1082f)))));
    let var_1 = vec2<bool>(true, all(vec3<bool>(false, true, false)));
    let x = u_input.a;
    s_output = func_3(func_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -627f) - _wgslsmith_div_f32(-1176f, 974f)), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -842f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + 1967f))), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 723f, -354f))))), true), Struct_3(false));
}

