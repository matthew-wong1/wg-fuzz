struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 31>;

var<private> global2: vec3<f32> = vec3<f32>(811f, 809f, -1172f);

var<private> global3: vec2<i32> = vec2<i32>(-30115i, 21350i);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    return arg_0.c.wz;
}

fn func_3() -> vec3<u32> {
    let var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1389f, 712f)))), global2.x));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1351f, -683f, 643f), vec3<f32>(-318f, global2.x, 411f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(743f, 1000f, global2.x) - vec3<f32>(global2.x, global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1597f, global2.x))))))));
    global3 = vec2<i32>(_wgslsmith_mod_i32(-9987i, 1i), -24540i);
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(138f, -488f, -1388f) * vec3<f32>(-338f, global2.x, -1398f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)))));
    return ~vec3<u32>(select(u_input.c & _wgslsmith_dot_vec2_u32(vec2<u32>(11066u, var_0), vec2<u32>(u_input.c, 54820u)), u_input.c, !(global2.x <= 119f)), var_0, ~(~_wgslsmith_div_u32(16767u, 21299u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: f32) -> vec2<bool> {
    let var_0 = ~(func_3() | (vec3<u32>(u_input.c, u_input.c, ~u_input.b) ^ vec3<u32>(firstTrailingBit(u_input.c), ~u_input.c, min(u_input.b, u_input.b))));
    return select(vec2<bool>(all(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, arg_1, arg_1))), true), select(vec2<bool>(arg_1, all(select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, false, true), vec3<bool>(arg_1, arg_1, arg_1)))), !vec2<bool>(true, false | arg_1), vec2<bool>(_wgslsmith_f_op_f32(min(arg_2, global2.x)) != global2.x, arg_1)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 31>();
    global0 = ~u_input.a;
    global1 = array<Struct_2, 31>();
    let var_0 = Struct_4(all(select(func_2(func_1(Struct_1(false, global2.zy, vec4<i32>(global3.x, -10840i, 1i, global3.x))), u_input.c <= 1187u, -555f), vec2<bool>(false, true), func_2(vec2<i32>(33344i, u_input.a) & vec2<i32>(0i, -13020i), func_2(vec2<i32>(global3.x, 14560i), true, global2.x).x, global2.x).x)), global3.x, !func_2(select(vec2<i32>(45811i, -8963i) & vec2<i32>(u_input.a, 15649i), max(vec2<i32>(0i, -1303i), vec2<i32>(2147483647i, -1i)), func_2(vec2<i32>(1i, 2147483647i), false, 870f)), firstLeadingBit(83360u) >= (u_input.c | u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1099f + 1113f) - _wgslsmith_f_op_f32(floor(global2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec2<u32>(u_input.c, 1u)) >> ((firstTrailingBit(vec2<u32>(u_input.b, 6475u) >> (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u))) << (select(~vec2<u32>(19690u, 10551u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 80013u)), var_0.a | true) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

