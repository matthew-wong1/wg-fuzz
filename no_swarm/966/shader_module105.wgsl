struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-498f, -1016f, 228f), 4294967295u, vec4<i32>(17698i, 0i, 1i, -1i), vec4<bool>(true, true, false, true));

var<private> global1: u32;

var<private> global2: array<u32, 18> = array<u32, 18>(4294967295u, 971u, 1u, 0u, 3028u, 30891u, 29440u, 63322u, 25179u, 1u, 1u, 42901u, 1u, 28387u, 39438u, 22145u, 1u, 4223u);

var<private> global3: array<vec4<i32>, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 18>();
    global2 = array<u32, 18>();
    var var_0 = -234f;
    var var_1 = select(!select(vec2<bool>(all(global0.d.zz), global0.d.x), !(!global0.d.yx), !select(global0.d.x, true, false)), vec2<bool>(!(_wgslsmith_f_op_f32(-global0.a.x) >= _wgslsmith_f_op_f32(-global0.a.x)), global0.c.x >= -2147483647i), select(!(!select(global0.d.yw, vec2<bool>(global0.d.x, false), global0.d.ww)), global0.d.xy, !global0.d.xw));
    var var_2 = firstLeadingBit(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-1340f, _wgslsmith_div_vec3_f32(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) + vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x, -176f))));
}

