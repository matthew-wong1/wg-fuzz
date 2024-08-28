struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec4<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32) -> u32 {
    return 1u;
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_0;
    global0 = vec4<f32>(-113f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + -183f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))))), _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(step(842f, -968f))), global0.x);
    return Struct_1(vec3<bool>(any(global1.wx), !(all(vec2<bool>(global1.x, true)) & true), false), !global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(808f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -636f), false))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_4) -> u32 {
    var var_0 = func_3(41278u ^ ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.wzy)))));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-454f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1929f, global0.x)) + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(630f - _wgslsmith_f_op_f32(arg_1.c - arg_1.c)), _wgslsmith_f_op_f32(min(var_0.c, _wgslsmith_f_op_f32(ceil(arg_1.c)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c, var_0.c) - _wgslsmith_f_op_f32(ceil(arg_2.b.c))) - -1449f), -631f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + global0.x))))));
    let var_1 = Struct_3(u_input.b.x, Struct_2(arg_2.a), 1000f);
    var var_2 = _wgslsmith_div_u32(51931u, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, -1119f, all(vec4<bool>(false, false, true, arg_2.b.b)))))));
    let var_3 = abs(vec2<u32>(1u, 82514u));
    return var_3.x;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>) -> vec4<bool> {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1328f, arg_0.b.a.x, 457f, arg_0.b.a.x) * vec4<f32>(arg_1.x, -704f, global0.x, -1202f)) * vec4<f32>(-2220f, 580f, global0.x, -1000f)) - vec4<f32>(-662f, arg_1.x, global0.x, arg_1.x)), func_3(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 41096u, 1u, 38762u), vec4<u32>(1u, 1u, 1u, 1u)), func_2(_wgslsmith_f_op_f32(arg_0.b.a.x * -1551f))), arg_0.b), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_0.b.a))), func_3(~abs(23701u), arg_0.b), _wgslsmith_f_op_vec2_f32(trunc(arg_0.b.a.zz)), -u_input.a, vec2<i32>(-countOneBits(u_input.b.x), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-77503i, u_input.b.x, 20621i, 0i)), u_input.b))));
    let var_1 = abs(vec4<u32>(1u, 4294967295u, 1u, reverseBits(~1u))) & abs(_wgslsmith_div_vec4_u32(vec4<u32>(0u, countOneBits(4294967295u), select(0u, 0u, global1.x), _wgslsmith_div_u32(39382u, 38214u)), vec4<u32>(1u, 1u, 1u, 1u)));
    global1 = vec4<bool>(true, u_input.a.x > 21934i, global1.x, true);
    let var_2 = global1.x;
    var var_3 = _wgslsmith_mod_u32(~52290u, 11889u);
    return select(vec4<bool>(global1.x, global1.x, global1.x | global1.x, true), !(!(!select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, true, false, true), vec4<bool>(true, global1.x, global1.x, true)))), vec4<bool>(global1.x, !(var_1.x > ~var_1.x), !any(vec2<bool>(false, true)), all(!(!vec3<bool>(true, global1.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(vec4<bool>(all(!global1.wy) || all(select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(true, true, global1.x, false), vec4<bool>(global1.x, false, true, false))), true, 532f <= global0.x, !(true | select(global1.x, true, true))), !vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(88818u, 21429u, 8906u, 30720u), vec4<u32>(0u, 22568u, 20414u, 14646u)) < ~1u, global1.x, any(func_1(Struct_3(u_input.b.x, Struct_2(vec3<f32>(global0.x, -445f, global0.x)), global0.x), vec2<f32>(global0.x, global0.x))), global1.x), !(global1.x && true));
    var var_0 = !func_3(func_4(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, 907f, -1233f))), func_3(4294967295u, Struct_2(global0.yzw)), Struct_4(vec3<f32>(global0.x, global0.x, global0.x), Struct_1(global1.yyw, global1.x, 862f), global0.zx, u_input.b.zwz, u_input.a.zy)) ^ (38350u << (abs(1u) % 32u)), Struct_2(vec3<f32>(-1108f, -925f, _wgslsmith_f_op_f32(global0.x * -601f)))).a.xz;
    var var_1 = func_3(_wgslsmith_div_u32(_wgslsmith_add_u32(~54119u, countOneBits(74959u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(38027u, 0u, 2710u))) | abs(137849u), Struct_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(1000f, global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x))))));
    let var_2 = var_1.a.xz;
    global1 = !(!vec4<bool>(true, all(!vec4<bool>(var_1.a.x, false, var_0.x, false)), true, !var_1.b && (var_1.c != global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<u32>(10748u, 40815u, 62450u, 1u))));
}

