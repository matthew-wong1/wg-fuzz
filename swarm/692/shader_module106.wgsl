struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec2<u32>(32312u, 44713u), vec4<f32>(-1000f, 1142f, 539f, 468f), -708f), 0u);

var<private> global1: Struct_2;

var<private> global2: array<f32, 23>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    global1 = Struct_2(select(!global1.a, vec2<bool>(false, true), global1.a));
    var var_0 = Struct_2(!vec2<bool>(!(!global1.a.x), true));
    var var_1 = Struct_2(!global1.a);
    global1 = Struct_2(!select(vec2<bool>(global1.a.x, var_0.a.x), !select(vec2<bool>(global1.a.x, var_0.a.x), vec2<bool>(false, true), var_0.a), !var_0.a.x));
    global1 = Struct_2(!var_0.a);
    return !var_0.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = !global1.a;
    global1 = Struct_2(select(vec2<bool>(arg_0.a.x | (false | var_0.x), func_3(Struct_1(global0.a.a, vec4<f32>(global0.a.c, 1063f, global0.a.b.x, global0.a.b.x), global0.a.c), _wgslsmith_f_op_f32(-2098f * -1409f))), global1.a, vec2<bool>(arg_0.a.x, any(select(vec2<bool>(true, arg_0.a.x), arg_0.a, true)))));
    let var_1 = reverseBits(u_input.a.x);
    global2 = array<f32, 23>();
    var var_2 = arg_0;
    return arg_2.a.x;
}

fn func_1() -> Struct_2 {
    global2 = array<f32, 23>();
    var var_0 = Struct_3(global0.a, 0u);
    global1 = Struct_2(global1.a);
    var var_1 = reverseBits(_wgslsmith_div_u32(_wgslsmith_div_u32(func_2(Struct_2(vec2<bool>(true, global1.a.x)), u_input.a.x, Struct_1(var_0.a.a, vec4<f32>(2153f, global0.a.c, var_0.a.b.x, global0.a.c), 1584f)) & _wgslsmith_mod_u32(40537u, u_input.b), ~4294967295u), u_input.b));
    global2 = array<f32, 23>();
    return Struct_2(global1.a);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = vec3<bool>(true, !global1.a.x || (arg_1 < countOneBits(-arg_1)), false | (true == (arg_0.a.x && any(vec4<bool>(false, arg_0.a.x, global1.a.x, global1.a.x)))));
    let var_1 = Struct_1(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.b, _wgslsmith_sub_u32(global0.b, 4294967295u)), ~vec2<u32>(3549u, 28019u) >> (max(arg_2.a.a, global0.a.a) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-arg_3), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-256f, _wgslsmith_f_op_f32(trunc(1383f)))))));
    let var_2 = Struct_2(!(!vec2<bool>(arg_0.a.x, any(vec4<bool>(false, false, arg_0.a.x, var_0.x)))));
    var_0 = select(!select(vec3<bool>(true, select(true, false, false), true), select(!vec3<bool>(var_2.a.x, arg_0.a.x, false), select(vec3<bool>(false, true, var_0.x), vec3<bool>(global1.a.x, arg_0.a.x, arg_0.a.x), global1.a.x), !global1.a.x), -12743i == countOneBits(u_input.a.x)), select(select(vec3<bool>(!var_0.x, -459f > arg_2.a.c, 35907u >= u_input.b), select(vec3<bool>(true, true, true), vec3<bool>(var_2.a.x, arg_0.a.x, true), !vec3<bool>(true, var_0.x, global1.a.x)), arg_0.a.x), select(!(!vec3<bool>(global1.a.x, false, global1.a.x)), select(!vec3<bool>(true, global1.a.x, var_2.a.x), select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, false, var_2.a.x), vec3<bool>(false, global1.a.x, var_2.a.x)), !var_2.a.x), false), vec3<bool>(var_2.a.x, var_2.a.x, var_0.x)), false);
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-313f + 1884f) + _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.b, 23u)], arg_2.a.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1902f, 442f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-416f * -746f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 23u)] * -897f)))))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(global1.a);
    global0 = func_4(func_1(), max(-_wgslsmith_sub_i32(26300i, max(u_input.a.x, -3239i)), u_input.a.x), Struct_3(global0.a, firstTrailingBit(~1u)), _wgslsmith_f_op_vec4_f32(select(global0.a.b, _wgslsmith_f_op_vec4_f32(-global0.a.b), any(!vec3<bool>(true, global1.a.x, true)) && func_3(global0.a, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(13973u, 23u)] * global0.a.b.x)))));
    var var_0 = global0.a;
    global0 = func_4(func_1(), ~_wgslsmith_add_i32(u_input.a.x, u_input.a.x), Struct_3(func_4(func_1(), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -4620i)), vec4<i32>(u_input.a.x, u_input.a.x, -38162i, 1i)), func_4(Struct_2(vec2<bool>(global1.a.x, global1.a.x)), u_input.a.x, func_4(Struct_2(vec2<bool>(global1.a.x, global1.a.x)), u_input.a.x, Struct_3(global0.a, 9423u), vec4<f32>(var_0.b.x, global0.a.c, 473f, global2[_wgslsmith_index_u32(105u, 23u)])), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1633f, global2[_wgslsmith_index_u32(global0.a.a.x, 23u)], var_0.b.x, -1000f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1015f, global2[_wgslsmith_index_u32(global0.b, 23u)], 785f, global2[_wgslsmith_index_u32(u_input.b, 23u)]), vec4<f32>(var_0.c, 1093f, -1346f, -1119f)))).a, 12943u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-726f, -518f, global2[_wgslsmith_index_u32(0u, 23u)], -1000f) * global0.a.b)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_0.b + global0.a.b)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -1000f, global2[_wgslsmith_index_u32(1u, 23u)], -1473f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 774f, global2[_wgslsmith_index_u32(4294967295u, 23u)], global0.a.b.x) * global0.a.b)), vec4<f32>(_wgslsmith_f_op_f32(select(global0.a.b.x, var_0.b.x, global1.a.x)), global2[_wgslsmith_index_u32(~u_input.b, 23u)], global0.a.c, 1294f))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(493f, var_0.c, var_0.c, -1583f) - var_0.b))));
}

