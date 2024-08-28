struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: array<Struct_5, 18>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: u32) -> u32 {
    global0 = array<i32, 6>();
    global1 = array<Struct_5, 18>();
    global1 = array<Struct_5, 18>();
    global1 = array<Struct_5, 18>();
    global0 = array<i32, 6>();
    return 74217u;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32) -> u32 {
    var var_0 = ~countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(arg_1, 6u)] | -1i, 17234i, u_input.b)) << (_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d.xwz << (u_input.d.yzz % vec3<u32>(32u)), u_input.d.xxw), vec3<u32>(~arg_1, _wgslsmith_mod_u32(func_2(Struct_4(960f, vec4<bool>(false, true, arg_0, arg_0), Struct_1(u_input.c.x, -1000f, arg_0), false, vec3<i32>(1i, global0[_wgslsmith_index_u32(0u, 6u)], 19392i)), -8801i, arg_1), ~4294967295u), ~1u)) % vec3<u32>(32u));
    return u_input.a;
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_3, arg_3: vec3<u32>) -> u32 {
    global1 = array<Struct_5, 18>();
    global1 = array<Struct_5, 18>();
    var var_0 = ~arg_2.a.a.zyw;
    let var_1 = arg_0;
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 6>();
    var var_0 = u_input.c.x;
    global1 = array<Struct_5, 18>();
    var var_1 = vec2<u32>(func_1(true, ~0u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-881f)), -2420f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(913f * -807f))))), _wgslsmith_sub_u32(36954u, u_input.c.x));
    global0 = array<i32, 6>();
    let var_2 = select(~u_input.a << (var_1.x % 32u), select(var_1.x, func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1087f, 663f, 1342f) * vec3<f32>(496f, -210f, 446f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-472f, 761f, -1258f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 845f)), Struct_3(Struct_2(vec4<i32>(-16796i, global0[_wgslsmith_index_u32(4294967295u, 6u)], u_input.b, -6153i), u_input.d.yxy)), ~u_input.d.zzx & (vec3<u32>(4294967295u, 10917u, u_input.c.x) << (u_input.d.zxy % vec3<u32>(32u)))), false & any(vec2<bool>(true, true))), !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true), false)));
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(307f))), 1f)))));
    let var_4 = max(1i, ~global0[_wgslsmith_index_u32(u_input.c.x, 6u)]);
    let var_5 = global1[_wgslsmith_index_u32(56581u, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -782f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.a.x, 422f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-677f + var_3.x) + _wgslsmith_f_op_f32(floor(var_3.x))), _wgslsmith_f_op_f32(-var_3.x)) - vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(f32(-1f) * -531f))), var_3.x, _wgslsmith_f_op_f32(max(-401f, -152f)), _wgslsmith_f_op_f32(step(244f, _wgslsmith_f_op_f32(floor(-701f)))))), vec4<f32>(-593f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_5.c.x, _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(step(var_5.a.x, var_5.c.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_5.c.x, 905f) * var_5.c.x), var_3.x));
}

