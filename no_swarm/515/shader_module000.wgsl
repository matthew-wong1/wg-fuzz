struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<u32>(1u, 66830u)), Struct_1(vec2<u32>(71569u, 1u)), Struct_1(vec2<u32>(17014u, 1u)), Struct_1(vec2<u32>(64503u, 1u)), Struct_1(vec2<u32>(18723u, 49750u)), Struct_1(vec2<u32>(0u, 33879u)), Struct_1(vec2<u32>(76777u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 64387u)), Struct_1(vec2<u32>(0u, 49425u)), Struct_1(vec2<u32>(4294967295u, 6419u)), Struct_1(vec2<u32>(20866u, 26231u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(20742u, 36487u)), Struct_1(vec2<u32>(57672u, 1014u)), Struct_1(vec2<u32>(1u, 0u)));

var<private> global1: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(4294967295u, 0u, 3329u, 0u), vec4<u32>(64971u, 6212u, 0u, 34313u), vec4<u32>(56790u, 21291u, 0u, 1u), vec4<u32>(0u, 15173u, 46903u, 42521u), vec4<u32>(43571u, 15448u, 0u, 1u), vec4<u32>(0u, 0u, 55310u, 142339u), vec4<u32>(71611u, 12275u, 32538u, 4779u), vec4<u32>(31479u, 0u, 30945u, 4294967295u), vec4<u32>(36366u, 0u, 4294967295u, 0u), vec4<u32>(54178u, 0u, 1u, 5674u), vec4<u32>(1u, 4294967295u, 90629u, 0u), vec4<u32>(1u, 4294967295u, 3451u, 50757u), vec4<u32>(85329u, 34245u, 1u, 26130u), vec4<u32>(20015u, 4294967295u, 4294967295u, 1u), vec4<u32>(57111u, 49486u, 51044u, 0u), vec4<u32>(6931u, 36025u, 0u, 20646u), vec4<u32>(0u, 51183u, 0u, 36919u), vec4<u32>(2638u, 23159u, 53489u, 4294967295u), vec4<u32>(0u, 1u, 35873u, 1u), vec4<u32>(18857u, 1u, 51836u, 1u), vec4<u32>(606u, 0u, 4294967295u, 3161u), vec4<u32>(0u, 0u, 157808u, 4294967295u), vec4<u32>(104488u, 53500u, 23242u, 52593u), vec4<u32>(2845u, 4294967295u, 2091u, 56107u), vec4<u32>(98794u, 49235u, 44551u, 1u));

var<private> global2: u32;

var<private> global3: array<Struct_1, 27>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    global3 = array<Struct_1, 27>();
    var var_0 = global3[_wgslsmith_index_u32(1u, 27u)];
    let var_1 = select(!select(select(select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0)), vec2<bool>(false, false), !arg_0), !(!vec2<bool>(arg_0, arg_0)), select(!vec2<bool>(false, arg_0), select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), arg_0), !arg_0)), select(!select(!vec2<bool>(arg_0, true), vec2<bool>(true, false), true), select(select(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), arg_0), vec2<bool>(true, true), 0u == var_0.a.x), vec2<bool>(true, !arg_0), !(!arg_0)), !(!vec2<bool>(true, arg_0))), !vec2<bool>(!(u_input.d != 17808u), !arg_0));
    let var_2 = Struct_1(~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c.yyz, u_input.c.wwz), u_input.a) ^ ~u_input.c.ww);
    var var_3 = Struct_1(abs(var_0.a));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1153f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(sign(603f))), -778f))) + vec3<f32>(464f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2712f - 1115f)))), 493f));
}

fn func_2() -> vec3<u32> {
    let var_0 = !(!select(vec3<bool>(any(vec4<bool>(true, false, false, false)), true, all(vec4<bool>(false, true, false, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(264f, 972f, -546f))) + vec3<f32>(146f, _wgslsmith_div_f32(645f, 404f), -162f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(-485f, -710f)), _wgslsmith_f_op_f32(floor(-1138f))))) * _wgslsmith_f_op_vec3_f32(func_3(var_0.x))), u_input.b != 0i));
    global2 = u_input.a;
    let var_2 = Struct_1(u_input.c.wy);
    let var_3 = var_2;
    return ~_wgslsmith_add_vec3_u32(vec3<u32>(min(4294967295u ^ var_3.a.x, ~var_3.a.x), 1u >> (u_input.a % 32u), ~(~var_3.a.x)), ~(~select(vec3<u32>(12974u, 1u, 78376u), vec3<u32>(var_3.a.x, u_input.c.x, u_input.a), var_0)));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<bool>) -> StorageBuffer {
    global3 = array<Struct_1, 27>();
    var var_0 = Struct_1(~u_input.c.wy);
    global0 = array<Struct_1, 15>();
    global1 = array<vec4<u32>, 25>();
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.a.x, 0u), reverseBits(~min(~u_input.a, var_0.a.x)));
    return StorageBuffer(-u_input.b, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f), -773f), -1250f)), -1000f), u_input.a, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~firstTrailingBit(1u), u_input.c.x, ~_wgslsmith_sub_u32(1u, var_0.a.x)), _wgslsmith_add_u32(~(~var_0.a.x), ~u_input.c.x ^ 71619u)));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    global1 = array<vec4<u32>, 25>();
    global0 = array<Struct_1, 15>();
    let var_0 = Struct_1(u_input.c.zy);
    let var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-156f, 329f), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -567f))));
    return func_4(reverseBits(reverseBits(vec3<i32>(u_input.b, u_input.b, 1i)) >> (_wgslsmith_add_vec3_u32(func_2(), _wgslsmith_sub_vec3_u32(u_input.c.yyx, u_input.c.yyy)) % vec3<u32>(32u))), !(false & !any(vec3<bool>(true, false, false))), vec3<bool>(all(vec3<bool>(true, true, true)), true != !all(vec3<bool>(false, false, false)), any(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_1(~(u_input.c.zz ^ vec2<u32>(0u, 0u))), _wgslsmith_f_op_f32(round(1534f)));
}

