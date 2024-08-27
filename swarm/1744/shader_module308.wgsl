struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 22>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec4<u32>) -> vec4<bool> {
    var var_0 = ~_wgslsmith_sub_vec2_u32(arg_3.yx << (arg_3.yz % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_u32(arg_3.wy, u_input.c)) & firstLeadingBit(abs(u_input.c));
    let var_1 = u_input.b.wy;
    var_0 = arg_3.wy;
    let var_2 = arg_2.d;
    global0 = arg_2.b;
    return !select(select(select(select(vec4<bool>(true, arg_2.a.x, true, arg_2.a.x), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, arg_2.a.x)), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_2.a.x, arg_2.a.x, false, arg_2.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, true, true), false)), vec4<bool>(any(vec2<bool>(arg_2.a.x, true)), true, !arg_2.a.x, any(vec4<bool>(arg_2.a.x, true, true, arg_2.a.x))), select(select(vec4<bool>(true, false, true, arg_2.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, false, arg_2.a.x), false), !vec4<bool>(arg_2.a.x, true, true, arg_2.a.x), arg_2.a.x)), !select(!vec4<bool>(arg_2.a.x, true, arg_2.a.x, false), !vec4<bool>(arg_2.a.x, true, true, arg_2.a.x), true), select(vec4<bool>(all(arg_2.a.yx), all(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true)), false, select(arg_2.a.x, false, true)), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, arg_2.a.x, arg_2.a.x), select(vec4<bool>(false, arg_2.a.x, true, true), vec4<bool>(true, arg_2.a.x, false, false), arg_2.a.x)), false));
}

fn func_2() -> Struct_1 {
    global0 = Struct_2(global0.a);
    let var_0 = !vec3<bool>(false, false, any(!func_3(44230u, vec4<f32>(-1160f, 2315f, global0.a.x, 261f), Struct_3(vec3<bool>(false, true, false), Struct_2(global0.a), u_input.a.x, Struct_2(vec3<f32>(-1000f, 525f, 387f)), Struct_2(vec3<f32>(359f, -516f, -133f))), vec4<u32>(u_input.c.x, u_input.a.x, 0u, 18861u))));
    var var_1 = Struct_3(!var_0, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-325f * global0.a.x)))), u_input.c.x, Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.a.x, global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -288f))))), Struct_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -813f), _wgslsmith_f_op_f32(min(global0.a.x, 309f)), -753f)))));
    var var_2 = -953f;
    let var_3 = var_1.b;
    return Struct_1(36820u > _wgslsmith_add_u32(1u, firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a))), 55824u);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32) -> bool {
    var var_0 = arg_1;
    global1 = array<Struct_3, 22>();
    let var_1 = Struct_1(true, reverseBits(4294967295u));
    var var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.zy) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 - global0.a.zz), vec2<f32>(-296f, arg_2)))), arg_0));
    return all(vec3<bool>(all(!select(vec2<bool>(var_1.a, var_0.a), vec2<bool>(arg_1.a, var_1.a), vec2<bool>(true, var_2.a))), !all(!vec3<bool>(var_1.a, true, var_2.a)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), true), true)), all(vec4<bool>(true, true, true, true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-809f * -393f), global0.a.x, _wgslsmith_f_op_f32(-global0.a.x)))) + global0.a);
    var var_2 = !select(vec3<bool>(!var_0.x, false, var_0.x), select(vec3<bool>(var_0.x, var_0.x, all(vec4<bool>(var_0.x, false, var_0.x, false))), vec3<bool>(func_1(vec2<f32>(757f, 1000f), Struct_1(var_0.x, 1970u), -1826f), true, var_0.x), !var_0.x), select(!func_3(u_input.c.x, vec4<f32>(var_1.x, global0.a.x, -1014f, global0.a.x), Struct_3(vec3<bool>(var_0.x, var_0.x, var_0.x), Struct_2(var_1), u_input.c.x, Struct_2(vec3<f32>(var_1.x, var_1.x, -809f)), Struct_2(vec3<f32>(var_1.x, 1175f, var_1.x))), vec4<u32>(13947u, 33669u, 6407u, 32544u)).wwx, select(vec3<bool>(true, var_0.x, false), select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), !vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x));
    var_2 = !vec3<bool>(false, (-35218i >> (1u % 32u)) == u_input.b.x, true);
    global1 = array<Struct_3, 22>();
    global1 = array<Struct_3, 22>();
    let var_3 = _wgslsmith_f_op_f32(ceil(-601f));
    var var_4 = Struct_3(!select(vec3<bool>(true, true, true), vec3<bool>(true | var_0.x, false, true), _wgslsmith_f_op_f32(-global0.a.x) >= -861f), Struct_2(vec3<f32>(1f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2329f, var_3)) - -1337f))), _wgslsmith_add_u32(max(abs(51783u), ~u_input.a.x), 0u) & 0u, Struct_2(global0.a), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-836f, 550f, 207f), _wgslsmith_f_op_vec3_f32(floor(var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(var_4.e.a.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1420f, 251f) + vec2<f32>(458f, var_1.x)), _wgslsmith_f_op_vec2_f32(ceil(var_1.zy)))))), u_input.b, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-995f)), _wgslsmith_f_op_f32(round(var_4.b.a.x)))))), _wgslsmith_f_op_f32(221f * var_3)), -1i);
}

