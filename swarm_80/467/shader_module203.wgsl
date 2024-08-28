struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(-549i, -25534i), true, Struct_1(vec3<u32>(0u, 38033u, 0u), vec3<f32>(-827f, -1000f, 1017f), 0u), Struct_1(vec3<u32>(4294967295u, 0u, 6452u), vec3<f32>(-2044f, 1000f, 1000f), 0u));

var<private> global1: f32;

var<private> global2: array<u32, 14> = array<u32, 14>(19132u, 16395u, 4294967295u, 4952u, 4294967295u, 4294967295u, 1u, 4294967295u, 1u, 0u, 0u, 25519u, 60707u, 695u);

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(220f + arg_2.x), global3.b.x), global0.d.b.x, _wgslsmith_f_op_f32(arg_1.c.b.x + 751f), _wgslsmith_f_op_f32(1881f - arg_1.c.b.x)));
    var var_1 = arg_3;
    var var_2 = arg_3;
    global3 = arg_3.d;
    global0 = arg_3;
    return ~((i32(-1i) * -countOneBits(-8161i)) >> (firstTrailingBit(~(36395u & u_input.a.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(func_1(global0.d.b.x, Struct_3(!select(false, true, false), _wgslsmith_div_u32(u_input.a.x, ~u_input.a.x), global0.d), global0.c.b.zy, Struct_2(global0.a, true, global0.c, Struct_1(~u_input.a.yyy, _wgslsmith_f_op_vec3_f32(-global0.d.b), ~33413u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c.b.x, global3.b.x, true))), 101f, 711f, _wgslsmith_f_op_f32(-global0.d.b.x)), u_input.a);
}

