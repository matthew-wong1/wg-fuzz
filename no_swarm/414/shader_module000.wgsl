struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: vec2<bool>,
    c: Struct_4,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: u32;

var<private> global2: Struct_2;

var<private> global3: array<bool, 9>;

var<private> global4: array<vec4<u32>, 5>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<u32>, arg_3: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(global2.c.x - _wgslsmith_f_op_f32(f32(-1f) * -334f));
    let var_1 = 0i;
    return global0.b.x;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<f32>) -> u32 {
    var var_0 = Struct_3(true, 4294967295u);
    global3 = array<bool, 9>();
    var var_1 = global0.d.wwy;
    var var_2 = global0.c;
    let var_3 = all(vec4<bool>(arg_1, 157f != _wgslsmith_f_op_f32(-global2.c.x), select(arg_1, func_2(~vec3<u32>(var_2.a, 0u, 89771u), ~var_2.a, vec2<u32>(4294967295u, u_input.c), _wgslsmith_f_op_f32(-248f - -1378f)), false), arg_1));
    return select(global0.a.b, ~1u, false) << (~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(48936u, u_input.b.x, 32257u), ~vec3<u32>(1u, 34702u, 4294967295u), u_input.b.wxz), ~_wgslsmith_clamp_vec3_u32(u_input.b.xzz, vec3<u32>(var_2.a, 60290u, 1u), u_input.b.zxz)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_u32(~countOneBits(_wgslsmith_div_u32(4294967295u, 74629u)), ~global0.a.b << (4294967295u % 32u));
    global1 = 4217u;
    var var_1 = global3[_wgslsmith_index_u32(~4294967295u, 9u)];
    global4 = array<vec4<u32>, 5>();
    var_1 = false;
    var var_2 = reverseBits(~firstTrailingBit(global2.b));
    let var_3 = _wgslsmith_mod_u32(countOneBits(abs(_wgslsmith_sub_u32(~0u, 21854u))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) - 726f), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.c.x, global2.c.x, global2.c.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(248f, -116f, -2093f), vec3<f32>(global2.c.x, global0.c.c.x, global2.c.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.c.x, -196f, global0.c.c.x))))));
    var var_4 = vec4<u32>(var_0, _wgslsmith_sub_u32(var_0, ~var_0), 16211u, 7170u) >> (vec4<u32>(global2.a, 0u, ~(~global0.c.a | _wgslsmith_dot_vec3_u32(u_input.b.zyz, vec3<u32>(var_0, var_0, var_0))), var_3 >> (40365u % 32u)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec4_u32(~abs(global4[_wgslsmith_index_u32(4294967295u, 5u)]), vec4<u32>(~4696u, 4294967295u >> (global0.a.b % 32u), global2.a | global2.a, _wgslsmith_dot_vec3_u32(u_input.b.ywz, var_4.xwy)))), _wgslsmith_f_op_f32(-global2.c.x), ~(-(u_input.a ^ u_input.a)));
}

