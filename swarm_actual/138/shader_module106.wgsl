struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

var<private> global1: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(2147483647i, 37219i), vec2<i32>(-28194i, 0i), vec2<i32>(-23537i, 27129i));

var<private> global2: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(8983u, 55835u), vec2<u32>(0u, 37812u), vec2<u32>(4294967295u, 1u), vec2<u32>(67091u, 0u), vec2<u32>(8190u, 0u), vec2<u32>(1u, 14877u), vec2<u32>(4576u, 94378u), vec2<u32>(19797u, 72598u), vec2<u32>(0u, 70955u), vec2<u32>(1u, 2542u), vec2<u32>(1u, 29683u), vec2<u32>(4294967295u, 32191u), vec2<u32>(1u, 1u), vec2<u32>(10494u, 0u), vec2<u32>(15691u, 67114u), vec2<u32>(0u, 72477u), vec2<u32>(12184u, 66633u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 62777u), vec2<u32>(4294967295u, 1666u), vec2<u32>(4294967295u, 11306u), vec2<u32>(0u, 0u), vec2<u32>(23642u, 1u), vec2<u32>(4294967295u, 0u));

var<private> global3: f32;

var<private> global4: Struct_1 = Struct_1(false, 0u, vec3<bool>(true, true, false), vec3<f32>(-204f, 625f, -371f), vec2<i32>(0i, -1i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: i32) -> u32 {
    global2 = array<vec2<u32>, 24>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-global4.d);
    global1 = array<vec2<i32>, 3>();
    return 20388u;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = min(global2[_wgslsmith_index_u32(u_input.a, 24u)], vec2<u32>(~(~(global4.b | global4.b)), global4.b));
    let var_1 = Struct_1(!global4.a, firstTrailingBit(0u), vec3<bool>(!global4.a, false, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.d.x, global4.d.x, -2224f)), global4.d)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(508f, 267f, global4.d.x), global4.d, global4.c))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.d.x, 124f, -831f)))), _wgslsmith_f_op_vec3_f32(global4.d - global4.d)))), vec2<i32>(arg_0, ~(-23387i)) << (vec2<u32>(countOneBits(max(global4.b, 11143u)), u_input.b) % vec2<u32>(32u)));
    var var_2 = vec4<u32>(~global4.b, 0u, _wgslsmith_sub_u32(43463u, _wgslsmith_clamp_u32(40974u, ~var_0.x, u_input.a) ^ func_2(-var_1.e.x)), u_input.a);
    var var_3 = true;
    global0 = array<bool, 24>();
    return Struct_1(all(vec4<bool>(countOneBits(-2147483647i) == arg_0, var_1.a, false, true)), 0u, vec3<bool>(true, global0[_wgslsmith_index_u32(var_1.b, 24u)], !(!(global4.d.x > global4.d.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.d.x, -1244f, global4.d.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1329f, 580f, -395f) * var_1.d))))), var_1.e);
}

fn func_3(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = 0u;
    global2 = array<vec2<u32>, 24>();
    let var_1 = !global4.c;
    let var_2 = -(~firstTrailingBit(firstTrailingBit(u_input.d.x)));
    var var_3 = Struct_1(select(!all(vec3<bool>(true, arg_0.x, global4.a)), !func_1(var_2 ^ u_input.c).c.x, !(firstLeadingBit(u_input.c) >= select(u_input.d.x, 22307i, false))), firstTrailingBit(_wgslsmith_add_u32(var_0, abs(1u | global4.b))), func_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d.x, u_input.c), ~vec2<i32>(global4.e.x, u_input.d.x))).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.d))))), global4.e);
    return !select(vec3<bool>(true, true, true), select(arg_0.zwx, var_1, select(func_1(-39628i).c, select(vec3<bool>(global4.c.x, var_1.x, true), vec3<bool>(var_3.c.x, var_1.x, false), var_3.c.x), global0[_wgslsmith_index_u32(~u_input.a, 24u)])), _wgslsmith_f_op_f32(_wgslsmith_div_f32(302f, global4.d.x) - -1328f) >= _wgslsmith_f_op_f32(-262f + global4.d.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = (~_wgslsmith_add_vec3_u32(~vec3<u32>(21634u, global4.b, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 88392u, arg_0.b), vec3<u32>(arg_0.b, 0u, u_input.b))) & (~(vec3<u32>(u_input.a, 35472u, 62561u) | vec3<u32>(31673u, 0u, 33762u)) << (~countOneBits(vec3<u32>(global4.b, 51321u, u_input.a)) % vec3<u32>(32u)))) >> (~vec3<u32>(firstTrailingBit(~arg_0.b), _wgslsmith_sub_u32(22388u, abs(u_input.b)), ~max(0u, global4.b)) % vec3<u32>(32u));
    let var_1 = global4.a | (func_3(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], false, false), vec4<bool>(true, true, false, arg_1.x), vec4<bool>(true, false, arg_0.a, false))).x | false);
    let var_2 = vec2<bool>(all(vec3<bool>(any(!vec4<bool>(arg_1.x, var_1, arg_0.c.x, true)), arg_1.x, -u_input.c <= -2147483647i)), !global0[_wgslsmith_index_u32(func_2(arg_0.e.x), 24u)]);
    var var_3 = Struct_1(func_1(-(countOneBits(u_input.c) >> (0u % 32u))).c.x, ~global4.b, vec3<bool>(-248f < global4.d.x, arg_1.x, arg_0.a), arg_0.d, firstLeadingBit(vec2<i32>(3970i, global4.e.x)));
    var var_4 = ~select(~(~vec4<u32>(4786u, arg_0.b, 0u, 44524u)), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.x, 27764u, u_input.a, 2693u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, u_input.b, 304u), vec4<u32>(u_input.b, 4294967295u, 42092u, 1u))), !select(!vec4<bool>(arg_0.c.x, arg_0.c.x, false, global0[_wgslsmith_index_u32(64933u, 24u)]), select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_1.x, var_3.a, false), arg_0.a), true));
    return func_1(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(~global4.e.x), select(global4.c, !func_3(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 24u)], true, false)), vec3<bool>(false, global4.c.x, !any(global4.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_0.d * _wgslsmith_f_op_vec3_f32(global4.d * vec3<f32>(global4.d.x, global4.d.x, 204f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-495f, var_0.d.x, 357f))))));
}

