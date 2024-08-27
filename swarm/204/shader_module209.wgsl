struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: vec2<u32>;

var<private> global2: Struct_2;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: vec2<f32>) -> bool {
    let var_0 = arg_0;
    global0 = vec3<bool>(arg_2.x, select(global2.b, select(false, 4294967295u != _wgslsmith_mult_u32(17710u, global1.x), false), global2.b), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-510f, arg_3.x, global2.a, -811f), vec4<f32>(var_0.a.a, arg_0.a.a, global2.a, 747f))))) * vec4<f32>(arg_3.x, var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -610f) + _wgslsmith_f_op_f32(floor(global2.a))), var_0.a.a)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1727f, 108f, 460f, 1502f), vec4<f32>(arg_3.x, var_0.a.a, -435f, -1690f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.a, 178f, 1000f, 1230f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, var_0.a.a, arg_3.x, -496f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(858f, -266f, 1463f, 775f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-783f, 709f, arg_0.a.a, global2.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2410f, -708f, arg_0.a.a, 1697f))))))));
    let var_2 = true;
    let var_3 = all(select(!select(arg_2, select(arg_2, arg_2, vec2<bool>(true, arg_2.x)), u_input.a != 42107u), arg_2, global0.x));
    return ~1u <= ~var_0.b;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global2.a)), _wgslsmith_f_op_f32(trunc(1156f)))), true);
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(max(var_0.a, var_0.a))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-129f - 102f), var_0.a, true)))), true);
    var var_1 = _wgslsmith_sub_vec4_u32((vec4<u32>(6831u, _wgslsmith_dot_vec4_u32(vec4<u32>(6954u, 21084u, 0u, global1.x), vec4<u32>(u_input.a, 9320u, global1.x, global1.x)), 0u, 39066u << (0u % 32u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(7059u, 21403u, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 57926u, 1u)) % vec4<u32>(32u))) | select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, 79268u, 100813u) >> (vec4<u32>(global1.x, 4294967295u, 7615u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(1u, global1.x, global1.x, 1u) >> (vec4<u32>(58390u, u_input.a, 76134u, global1.x) % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(1u, 40352u, u_input.a, 0u) & vec4<u32>(25023u, 72u, 29583u, u_input.a)), any(select(global0.zz, global0.zz, false))), vec4<u32>(select(54324u, ~u_input.a, func_3(Struct_3(Struct_2(var_0.a, var_0.b), 4294967295u, 83441u, vec3<i32>(-7307i, -2147483647i, 2147483647i), false), Struct_4(vec4<bool>(false, var_0.b, global2.b, global0.x)), vec2<bool>(false, global0.x), vec2<f32>(var_0.a, -732f))), 1u, min(1u, ~_wgslsmith_div_u32(global1.x, u_input.a)), 39086u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -819f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) * global2.a), _wgslsmith_f_op_f32(select(-870f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), global0.x))));
    let var_3 = Struct_2(_wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-885f, _wgslsmith_f_op_f32(step(var_2.x, 948f))) - var_0.a)), all(vec3<bool>(all(select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(true, global2.b, var_0.b, global0.x), true)), global2.a <= _wgslsmith_div_f32(var_0.a, var_0.a), ~6077i == u_input.c.x)));
    return var_3;
}

fn func_1() -> u32 {
    var var_0 = u_input.b & u_input.b;
    var_0 = abs(u_input.c | (-select(vec2<i32>(u_input.c.x, var_0.x), vec2<i32>(u_input.c.x, var_0.x), false) | u_input.c));
    var var_1 = func_2();
    global0 = select(!select(select(!vec3<bool>(var_1.b, global0.x, global2.b), !vec3<bool>(false, var_1.b, false), true), select(select(vec3<bool>(var_1.b, false, global0.x), vec3<bool>(true, var_1.b, var_1.b), false), !vec3<bool>(global2.b, false, global2.b), select(vec3<bool>(global0.x, global2.b, global0.x), vec3<bool>(true, global2.b, false), true)), true && all(vec3<bool>(var_1.b, global0.x, false))), select(select(select(vec3<bool>(true, var_1.b, false), select(vec3<bool>(global0.x, false, false), vec3<bool>(true, true, global2.b), global0.x), select(vec3<bool>(global0.x, global2.b, false), vec3<bool>(global2.b, var_1.b, true), var_1.b)), !vec3<bool>(global2.b, global0.x, false), global0.x), select(!vec3<bool>(var_1.b, true, true), vec3<bool>(-1589f <= var_1.a, global0.x, var_1.b), func_3(Struct_3(Struct_2(2387f, var_1.b), 12440u, 4294967295u, vec3<i32>(-62091i, -64811i, u_input.c.x), global0.x), Struct_4(vec4<bool>(global2.b, global2.b, global0.x, var_1.b)), vec2<bool>(true, global2.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-915f, -1682f)))), vec3<bool>(true && !global0.x, !global0.x, global0.x)), !select(!vec3<bool>(global0.x, global0.x, global0.x), select(!vec3<bool>(var_1.b, global2.b, var_1.b), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global2.b, var_1.b, global0.x), vec3<bool>(true, true, true)), var_1.b), any(!vec4<bool>(true, var_1.b, false, global2.b))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-794f - var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1014f));
    return 12459u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mult_vec2_u32(~vec2<u32>(~(global1.x ^ u_input.a), _wgslsmith_div_u32(~global1.x, 1u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(func_1(), ~global1.x), vec2<u32>(firstTrailingBit(1u << (u_input.a % 32u)), 148643u)));
    global2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-763f * -163f), -802f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1351f * 319f) - _wgslsmith_f_op_f32(global2.a - global2.a)), -834f)), !global0.x);
    global2 = func_2();
    global2 = Struct_2(_wgslsmith_f_op_f32(step(-335f, 310f)), !((u_input.a <= 68341u) | false));
    var var_0 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(-(vec3<i32>(37304i, 1i, -u_input.b.x) & -vec3<i32>(-2147483647i, -2147483647i, -2147483647i)), 1i, -22274i, u_input.a);
}

