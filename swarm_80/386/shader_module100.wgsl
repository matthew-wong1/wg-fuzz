struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, true), -200f, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: vec4<u32>) -> f32 {
    var var_0 = Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(select(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.c, 26754u)), u_input.c ^ 60451u, arg_1.a.x) > ~65139u, !(!arg_1.d)), _wgslsmith_div_f32(-2021f, -766f), arg_3.x >= ~min(~arg_3.x, 11471u));
    let var_1 = arg_1;
    var var_2 = -1067f;
    let var_3 = arg_3.xxz;
    let var_4 = var_3.yx;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_0));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = arg_3.a.wx;
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(select(select(vec4<u32>(1719u, arg_0, 62852u, arg_0), vec4<u32>(arg_0, 7970u, arg_0, 4294967295u), var_0.x), vec4<u32>(arg_0, u_input.a.x, arg_0, 0u) >> (vec4<u32>(0u, 4294967295u, u_input.a.x, 20789u) % vec4<u32>(32u)), global0.a) | firstTrailingBit(~vec4<u32>(56209u, 23519u, 4294967295u, 4294967295u)), min(firstTrailingBit(~vec4<u32>(4294967295u, 7647u, 22460u, 3623u)), vec4<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 1u, 1u), vec3<u32>(arg_0, arg_0, 4294967295u)), _wgslsmith_div_u32(arg_0, 14052u), u_input.a.x))), _wgslsmith_mult_vec4_u32(~countOneBits(vec4<u32>(arg_0, 0u, 4294967295u, u_input.a.x)), (vec4<u32>(0u, 4294967295u, arg_0, u_input.c) << (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 39391u), vec4<u32>(arg_0, 35472u, 1u, 23923u)) % vec4<u32>(32u))) | ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, 11660u, u_input.a.x), vec4<u32>(16668u, 11619u, arg_0, 1u))));
    global0 = arg_3;
    var_0 = select(global0.a.zx, arg_3.a.yz, true);
    var_0 = arg_3.a.zx;
    return false;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    global0 = Struct_1(!vec4<bool>(all(select(global0.a.yw, vec2<bool>(true, true), global0.d)), global0.d, any(global0.a.wyx), (u_input.c > u_input.a.x) & false), vec2<bool>(false, select(any(vec3<bool>(global0.d, false, false)) & (u_input.b.x != u_input.b.x), true, (global0.b.x | true) | all(vec4<bool>(true, false, global0.b.x, false)))), _wgslsmith_f_op_f32(global0.c - -908f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - global0.c) - _wgslsmith_f_op_f32(sign(arg_0.x))) != -952f);
    global0 = Struct_1(global0.a, global0.b, 1000f, !(true || any(global0.a)));
    var var_0 = Struct_1(!global0.a, global0.a.yw, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.c)) + 1517f)) > _wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(f32(-1f) * -902f))));
    var var_1 = _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, 66610u)), min(~vec2<u32>(1u, ~u_input.c), u_input.a));
    let var_2 = Struct_1(global0.a, vec2<bool>(true, false), var_0.c, true && global0.b.x);
    return func_4(firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 1u), u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-510f)), 543f, global0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(var_2.c, Struct_1(global0.a, global0.a.zz, global0.c, true), _wgslsmith_f_op_f32(var_0.c * var_2.c), ~vec4<u32>(25278u, var_1.x, 2522u, u_input.a.x)))))), max(~u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.yz, -vec2<i32>(u_input.b.x, -1i))), Struct_1(!vec4<bool>(true, !var_0.b.x, var_0.d, true), select(!global0.b, vec2<bool>(u_input.c >= 1u, any(vec3<bool>(var_2.a.x, false, var_2.a.x))), !select(vec2<bool>(false, var_0.b.x), vec2<bool>(global0.d, var_2.a.x), var_2.d)), var_2.c, (_wgslsmith_sub_u32(2891u, u_input.a.x) ^ (u_input.a.x >> (4294967295u % 32u))) > ~reverseBits(82217u)));
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.a;
    var var_1 = Struct_1(global0.a, vec2<bool>(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, global0.c, global0.c, -415f) - vec4<f32>(global0.c, 1321f, -1704f, global0.c)))), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1252f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-140f, global0.c)))))), false);
    var var_2 = true;
    return Struct_1(!(!select(vec4<bool>(global0.b.x, global0.b.x, false, false), !vec4<bool>(var_1.b.x, true, false, var_1.d), !global0.a)), !var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(881f, Struct_1(vec4<bool>(false, global0.b.x, true, var_1.a.x), vec2<bool>(false, true), -653f, false), _wgslsmith_div_f32(-1595f, -565f), vec4<u32>(0u, u_input.c, var_0.x, 1u))))), !var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(!vec4<bool>(global0.a.x, true, false, !all(vec4<bool>(false, global0.a.x, true, true))), vec2<bool>(global0.d, false), _wgslsmith_f_op_f32(-global0.c), global0.a.x);
    let var_0 = func_1();
    var var_1 = Struct_1(func_1().a, var_0.a.zx, var_0.c, true);
    let var_2 = var_1.a;
    let var_3 = -firstTrailingBit(~vec2<i32>(~u_input.b.x, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(var_3.x, 1i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(global0.c * 122f), _wgslsmith_f_op_f32(f32(-1f) * -1549f), _wgslsmith_f_op_f32(-global0.c), var_0.c))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c))), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1066f), _wgslsmith_f_op_f32(trunc(global0.c))))), var_0.c);
}

