struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<Struct_1, 18>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<f32>) -> u32 {
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2 - vec2<f32>(-261f, -1026f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.x, 1469f)))))));
    global0 = select(vec2<bool>(global0.x, !(!(global0.x | global0.x))), select(!(!select(vec2<bool>(false, global0.x), vec2<bool>(true, global0.x), false)), vec2<bool>((true && global0.x) || false, global0.x), ~4294967295u < ~u_input.a.x), any(vec2<bool>(all(vec2<bool>(false, true)), !(!global0.x))));
    let var_1 = var_0.a;
    var var_2 = select(!(!vec2<bool>(any(vec3<bool>(true, global0.x, true)), false)), select(select(!vec2<bool>(false, global0.x), select(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), global0.x), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(global0.x, true), vec2<bool>(false, global0.x))), !vec2<bool>(all(vec3<bool>(true, global0.x, true)), true), vec2<bool>(true, true)), true);
    var var_3 = true;
    return u_input.a.x & arg_1.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: f32) -> u32 {
    let var_0 = Struct_5(0u, select(vec4<i32>(u_input.c.x, ~(u_input.b << (1u % 32u)), ~(-20988i) | u_input.b, -73631i), ~(-max(vec4<i32>(1i, u_input.d, u_input.b, 29877i), vec4<i32>(-12430i, -6056i, 1i, 15106i))), vec4<bool>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 4294967295u) <= _wgslsmith_clamp_u32(9730u, 10758u, u_input.a.x), 1i != (1i ^ u_input.b), u_input.c.x > -3504i, global0.x)));
    var var_1 = true;
    var var_2 = var_0;
    let var_3 = vec3<bool>(u_input.a.x != ~(~var_2.a), global0.x, false);
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)));
    return ~min(u_input.a.x, select(~_wgslsmith_dot_vec3_u32(vec3<u32>(4023u, 117475u, u_input.a.x), u_input.a.zxy), ~(~var_2.a), !global0.x == (arg_2 || true)));
}

fn func_2() -> Struct_3 {
    let var_0 = !(!global0.x);
    let var_1 = _wgslsmith_mult_u32(14651u, func_4(global1[_wgslsmith_index_u32(~(~func_3(-1741f, u_input.a, vec2<f32>(-274f, -2637f))), 18u)], vec4<bool>(var_0 & true, true, false, true), global0.x && !global0.x, _wgslsmith_div_f32(1084f, _wgslsmith_f_op_f32(f32(-1f) * -1538f))));
    global1 = array<Struct_1, 18>();
    var var_2 = var_0;
    let var_3 = -2147483647i;
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(679f, -748f), vec2<f32>(1000f, 1337f)))))))));
}

fn func_1(arg_0: u32) -> vec4<bool> {
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = !global0.x;
    var var_2 = Struct_4(func_2());
    var var_3 = ~func_3(var_2.a.a.x, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0 << (u_input.a.x % 32u), u_input.a.x, 0u, 8441u), max(u_input.a, ~vec4<u32>(4976u, 6424u, 4294967295u, arg_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.a.x, -637f) - _wgslsmith_f_op_vec2_f32(abs(var_2.a.a))));
    return !select(!(!(!vec4<bool>(global0.x, global0.x, false, global0.x))), vec4<bool>((22637u & u_input.a.x) < u_input.a.x, all(select(vec2<bool>(false, global0.x), vec2<bool>(false, true), false)), (global0.x & global0.x) | true, !global0.x || global0.x), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<f32>(251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-186f - _wgslsmith_f_op_f32(1869f - -1652f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1077f, _wgslsmith_f_op_f32(step(-286f, -1694f))))));
    let var_1 = !(!(!(!func_1(23307u))));
    var var_2 = Struct_4(func_2());
    var var_3 = 11777u;
    var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.a.x), vec4<i32>(6688i, u_input.b, -u_input.b | u_input.b, 12190i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-235f - -477f) - _wgslsmith_f_op_f32(abs(872f))), 2191f, true)), _wgslsmith_f_op_f32(max(var_2.a.a.x, _wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)));
}

