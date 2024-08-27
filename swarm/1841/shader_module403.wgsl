struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<i32>, 20>;

var<private> global2: array<vec3<f32>, 29>;

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-1987i, vec2<i32>(-18289i, 6994i)), Struct_1(34097i, vec2<i32>(-52558i, -20524i)), Struct_1(-1i, vec2<i32>(49161i, 1i)), Struct_1(i32(-2147483648), vec2<i32>(1i, 2147483647i)), Struct_1(2147483647i, vec2<i32>(i32(-2147483648), -3950i)), Struct_1(-1i, vec2<i32>(-1i, -18566i)), Struct_1(2147483647i, vec2<i32>(10013i, 1i)), Struct_1(10162i, vec2<i32>(-21836i, 339i)), Struct_1(10612i, vec2<i32>(i32(-2147483648), i32(-2147483648))));

var<private> global4: array<i32, 31> = array<i32, 31>(-25556i, -31512i, -33546i, -45485i, -54850i, 1i, -32668i, 2147483647i, 1i, i32(-2147483648), -17217i, -15121i, 35558i, 11667i, 0i, -28121i, 1i, 0i, 2147483647i, 17890i, 21350i, 2147483647i, 0i, i32(-2147483648), 2147483647i, 0i, -7002i, -8019i, 3865i, 2147483647i, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(972f * -324f) + -1399f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(337f, 571f, false)))) - -1572f), -553f);
    global4 = array<i32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, -1000f, var_0, var_0), vec4<f32>(var_0, 1124f, -463f, -1000f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1590f, var_0, var_0, var_0)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 434f, var_0, 527f) - vec4<f32>(620f, 1622f, 384f, var_0)))))));
}

