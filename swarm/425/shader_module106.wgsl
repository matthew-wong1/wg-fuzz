struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(34305u, 1u, 24922u), vec3<f32>(111f, -900f, 302f), 4294967295u, 1000f);

var<private> global1: array<vec4<u32>, 2>;

var<private> global2: array<Struct_4, 15>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = Struct_1(~vec3<u32>(u_input.a.x, 1u, ~global0.c), global0.b, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a.x, 29460u, 4294967295u, global0.a.x) & ~global1[_wgslsmith_index_u32(global0.c, 2u)]), select(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], ~vec4<u32>(3114u, 1u, 1u, 1695u), true)), 418f);
    return 2442u;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(55904u, u_input.a.x, 1u), global0.a)), ~func_3(u_input.b), _wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, u_input.a.x, 0u, 0u), vec4<u32>(0u, global0.c, global0.c, u_input.a.x)))), firstTrailingBit(global0.a.x), _wgslsmith_mult_u32(3436u, global0.c)), vec3<f32>(-1184f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), 770f), -1485f), u_input.a.x, -1000f);
    global1 = array<vec4<u32>, 2>();
    global2 = array<Struct_4, 15>();
    global0 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 50398u, ~firstLeadingBit(15378u)), firstTrailingBit(vec3<u32>(1u, global0.c | 10664u, ~u_input.a.x))), vec3<f32>(-653f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) * global0.d)), _wgslsmith_f_op_f32(1994f - _wgslsmith_f_op_f32(f32(-1f) * -267f))), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d + global0.b.x), _wgslsmith_f_op_f32(sign(-133f))))));
    var var_0 = Struct_4(any(select(!select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, u_input.a.x < global0.a.x, 37107u > global0.c), select(!vec4<bool>(arg_0, arg_0, false, true), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), arg_0), !arg_0))));
    return Struct_1(~_wgslsmith_div_vec3_u32(~global0.a, vec3<u32>(_wgslsmith_div_u32(43376u, 4294967295u), 4294967295u, ~global0.c)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -414f), _wgslsmith_f_op_f32(1193f * -2234f), _wgslsmith_f_op_f32(global0.d * _wgslsmith_f_op_f32(round(-1000f)))), ~12117u, global0.b.x);
}

fn func_1(arg_0: i32) -> Struct_1 {
    global2 = array<Struct_4, 15>();
    global2 = array<Struct_4, 15>();
    global2 = array<Struct_4, 15>();
    var var_0 = _wgslsmith_mod_vec2_u32(u_input.a, ~abs(vec2<u32>(4294967295u, ~27713u)));
    global2 = array<Struct_4, 15>();
    return func_2(true);
}

fn func_4(arg_0: Struct_3) -> vec4<i32> {
    global0 = func_1(~(u_input.c.x << (34871u % 32u)));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), global0.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(265f, 826f, false)) * -1078f))), -930f));
    global2 = array<Struct_4, 15>();
    let var_1 = func_4(Struct_3(func_1(-1i), select(vec3<bool>(true, global0.a.x >= 27372u, true), vec3<bool>(true, false, false), vec3<bool>(u_input.d != 0i, false, true)), Struct_1(vec3<u32>(1u, u_input.a.x, 1u), _wgslsmith_f_op_vec3_f32(global0.b + _wgslsmith_f_op_vec3_f32(-var_0.wwy)), ~u_input.a.x, global0.b.x)));
    let var_2 = Struct_3(Struct_1(vec3<u32>(~33860u, u_input.a.x, 0u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(global0.b, vec3<f32>(1065f, 568f, var_0.x))))), u_input.a.x, 683f), vec3<bool>(true, (~global0.c < _wgslsmith_clamp_u32(u_input.a.x, global0.a.x, u_input.a.x)) && (u_input.d <= (u_input.d & var_1.x)), true), Struct_1(vec3<u32>(2015u, global0.c, u_input.a.x), _wgslsmith_f_op_vec3_f32(min(global0.b, func_2(true).b)), ~(48874u ^ global0.a.x), 1000f));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec4<u32>(firstLeadingBit(max(~4294967295u, _wgslsmith_sub_u32(67141u, u_input.a.x))), 4294967295u, ~4294967295u, u_input.a.x));
}

