struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 27>;

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<i32>(-1873i, 11502i), vec4<bool>(true, false, false, false)), Struct_1(vec2<i32>(1i, -1i), vec4<bool>(true, false, true, false)), Struct_1(vec2<i32>(-10891i, 3492i), vec4<bool>(false, true, true, true)), Struct_1(vec2<i32>(70840i, 1i), vec4<bool>(false, false, false, true)), Struct_1(vec2<i32>(2147483647i, 1i), vec4<bool>(false, false, true, true)), Struct_1(vec2<i32>(-4557i, 755i), vec4<bool>(true, false, true, true)), Struct_1(vec2<i32>(-14787i, i32(-2147483648)), vec4<bool>(true, true, false, true)), Struct_1(vec2<i32>(-36956i, 0i), vec4<bool>(false, false, false, true)), Struct_1(vec2<i32>(86993i, 2147483647i), vec4<bool>(false, false, false, false)), Struct_1(vec2<i32>(1i, 1i), vec4<bool>(false, false, false, true)), Struct_1(vec2<i32>(15673i, 16602i), vec4<bool>(true, false, true, false)));

var<private> global3: vec2<f32> = vec2<f32>(876f, -737f);

var<private> global4: u32 = 37504u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = global2[_wgslsmith_index_u32(1u, 11u)];
    global0 = array<vec3<bool>, 27>();
    let var_1 = Struct_1(vec2<i32>(-1i) * -max(vec2<i32>(var_0.a.x, -1i), -arg_1.a), select(select(!(!arg_1.b), arg_1.b, arg_3.b), !vec4<bool>(var_0.b.x, arg_2 != 933f, var_0.b.x, true || var_0.b.x), var_0.b));
    return ~max(vec2<u32>(4294967295u, ~(u_input.c.x << (u_input.d.x % 32u))), (u_input.c.yz & vec2<u32>(25909u, u_input.c.x)) | vec2<u32>(_wgslsmith_mod_u32(u_input.d.x, u_input.c.x), _wgslsmith_add_u32(40831u, 1u)));
}

fn func_2(arg_0: vec2<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_add_vec2_u32(~vec2<u32>(19138u, 1u) ^ _wgslsmith_mod_vec2_u32(func_3(-2147483647i, Struct_1(vec2<i32>(u_input.a.x, u_input.b), vec4<bool>(true, true, true, true)), global3.x, global1[_wgslsmith_index_u32(u_input.d.x, 5u)]), max(u_input.c.xx, vec2<u32>(u_input.d.x, 71694u))), _wgslsmith_mod_vec2_u32(u_input.c.zy, vec2<u32>(_wgslsmith_sub_u32(1u, u_input.d.x), 91191u))) >> (countOneBits(vec2<u32>(31699u, 16493u) | ~(~u_input.c.yy)) % vec2<u32>(32u));
    let var_1 = u_input.a.zxw;
    global2 = array<Struct_1, 11>();
    let var_2 = _wgslsmith_dot_vec2_u32(u_input.c.yz, select(~(~var_0), var_0, !select(vec2<bool>(true, false), vec2<bool>(true, false), true)) << (vec2<u32>(13431u << (var_0.x % 32u), 1u) % vec2<u32>(32u)));
    global3 = arg_0;
    return vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(1u, var_2, 130960u, 4294967295u)), var_0.x, var_0.x, func_3(u_input.b, global2[_wgslsmith_index_u32(var_0.x, 11u)], arg_0.x, Struct_1(vec2<i32>(-7645i, -1i), vec4<bool>(true, false, false, false))).x), _wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(54931u, u_input.d.x, u_input.d.x, u_input.d.x))), vec4<u32>(_wgslsmith_sub_u32(4294967295u, 1u), 1u, 4294967295u, ~4294967295u) | (vec4<u32>(var_2, 20445u, var_2, var_0.x) | _wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(var_2, 24116u, u_input.d.x, 4294967295u)))), 0u, 22158u, ~firstTrailingBit(var_0.x & 9426u) ^ firstTrailingBit(var_2));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_u32(u_input.d, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-891f, 1331f))))));
    var var_1 = u_input.d.x;
    var var_2 = var_0.x;
    let var_3 = ~(i32(-1i) * -(select(arg_0.a.x, u_input.b, false) << (~var_0.x % 32u)));
    var_1 = reverseBits(63717u);
    return global2[_wgslsmith_index_u32(4294967295u, 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(vec2<i32>(-2147483647i, ~(-u_input.a.x)), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)))), true);
    global0 = array<vec3<bool>, 27>();
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-403f)));
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-750f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(748f)), _wgslsmith_f_op_f32(min(global3.x, global3.x)), any(global0[_wgslsmith_index_u32(u_input.c.x, 27u)]))), _wgslsmith_f_op_f32(-global3.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global3.x, global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(729f, global3.x)) + -344f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-543f, global3.x))))), 0i);
}

