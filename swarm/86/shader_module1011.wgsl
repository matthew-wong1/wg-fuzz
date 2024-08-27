struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<bool>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global3: array<bool, 10> = array<bool, 10>(false, true, true, true, false, true, true, false, false, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    return Struct_2(~(~global0.a), Struct_1(u_input.c.yx, _wgslsmith_div_f32(868f, _wgslsmith_f_op_f32(f32(-1f) * -793f))), vec2<u32>(4294967295u, 4294967295u) & ~(~vec2<u32>(global0.a.x, 4294967295u) >> (vec2<u32>(63633u, 1052u) % vec2<u32>(32u))));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> bool {
    let var_0 = arg_0;
    let var_1 = func_1(!(!vec2<bool>(global2.x, any(vec2<bool>(global1.x, global2.x))))).b;
    global3 = array<bool, 10>();
    var var_2 = Struct_2(select(arg_1.b.a, vec2<u32>(func_3(vec3<i32>(-38173i, -26165i, u_input.b.x)), ~arg_1.c.x) >> ((~arg_0.a >> (_wgslsmith_mod_vec2_u32(vec2<u32>(45905u, 7339u), vec2<u32>(var_0.b.a.x, arg_1.c.x)) % vec2<u32>(32u))) % vec2<u32>(32u)), global2.x | all(vec3<bool>(arg_2, false, false))), func_1(global2.xx).b, _wgslsmith_clamp_vec2_u32(~(~u_input.c.zx) & arg_0.b.a, vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.zw) >> (arg_1.c.x % 32u), _wgslsmith_sub_u32(18591u, global0.a.x)), ~min(vec2<u32>(85124u, 1u), var_1.a)));
    global1 = vec2<bool>(any(select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(var_0.a.x, 10u)], false, true, true), vec4<bool>(arg_2, global1.x, global1.x, true), vec4<bool>(global2.x, global1.x, global1.x, global1.x)), !vec4<bool>(arg_2, false, true, arg_2), vec4<bool>(false, true, arg_2, false)), vec4<bool>(true, true, true, global2.x), global0.a.x < 115382u)), !all(!vec4<bool>(global3[_wgslsmith_index_u32(global0.a.x, 10u)], true, arg_2, global2.x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(!vec4<bool>(!global3[_wgslsmith_index_u32(u_input.c.x | 19783u, 10u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), 10u)] & true, !all(vec4<bool>(false, global3[_wgslsmith_index_u32(78011u, 10u)], true, global2.x)), 351f == _wgslsmith_f_op_f32(-global0.b)), select(vec4<bool>(true, any(global2.xyx), true, any(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 10u)], global2.x, true))), vec4<bool>(false, max(u_input.b.x, 34907i) == ~1i, global3[_wgslsmith_index_u32(44357u, 10u)], global1.x), false), !func_2(func_1(global2.yw), func_1(!global2.ww), false, -1039f));
    let var_0 = true;
    global1 = select(vec2<bool>(global1.x, var_0), select(select(global2.wx, select(select(vec2<bool>(true, global1.x), global2.xw, global3[_wgslsmith_index_u32(48535u, 10u)]), global2.ww, true), !global3[_wgslsmith_index_u32(10681u << (u_input.c.x % 32u), 10u)]), vec2<bool>(all(!global2.yww), false), !(!select(global2.wx, global2.zy, global1.x))), all(select(select(global2.xy, !global2.wx, true), select(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 10u)], true), select(global2.yy, global2.xz, vec2<bool>(global3[_wgslsmith_index_u32(33722u, 10u)], global3[_wgslsmith_index_u32(31939u, 10u)])), vec2<bool>(global3[_wgslsmith_index_u32(1u, 10u)], true)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x >> (u_input.c.x % 32u), 4294967295u), 10u)])));
    global1 = global2.xw;
    var var_1 = func_1(global2.ww).b;
    global0 = Struct_1(vec2<u32>(22388u, 1u), _wgslsmith_f_op_f32(-var_1.b));
    global2 = !vec4<bool>(!func_2(Struct_2(vec2<u32>(0u, 19066u), Struct_1(vec2<u32>(var_1.a.x, u_input.c.x), var_1.b), global0.a), Struct_2(vec2<u32>(global0.a.x, 1u), Struct_1(vec2<u32>(global0.a.x, u_input.c.x), global0.b), vec2<u32>(u_input.c.x, global0.a.x)), all(vec3<bool>(false, false, var_0)), _wgslsmith_f_op_f32(1194f * global0.b)), (global3[_wgslsmith_index_u32(52040u, 10u)] || (u_input.b.x < -25661i)) && global3[_wgslsmith_index_u32(35655u, 10u)], global1.x, ((i32(-1i) * -2147483647i) < firstLeadingBit(u_input.a.x)) && (_wgslsmith_f_op_f32(-748f - var_1.b) < _wgslsmith_f_op_f32(1000f + var_1.b)));
    global2 = !(!select(select(vec4<bool>(global2.x, var_0, var_0, false), !vec4<bool>(var_0, false, global3[_wgslsmith_index_u32(u_input.c.x, 10u)], global3[_wgslsmith_index_u32(22735u, 10u)]), vec4<bool>(true, true, global1.x, global3[_wgslsmith_index_u32(1u, 10u)])), !select(vec4<bool>(false, global1.x, false, false), vec4<bool>(false, global1.x, var_0, true), vec4<bool>(true, true, global2.x, false)), global1.x));
    var var_2 = func_1(global2.yy);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, global0.a.x, abs(u_input.c.xx), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.b, -362f), vec2<f32>(var_1.b, var_1.b))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.b, global0.b))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, 248f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, var_1.b))), vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), -2158f), !(!vec2<bool>(global1.x, global3[_wgslsmith_index_u32(var_1.a.x, 10u)])))))));
}

