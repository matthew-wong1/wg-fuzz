struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32>;

var<private> global1: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global2: Struct_4;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_5) -> Struct_5 {
    let var_0 = vec3<f32>(-160f, -194f, global2.a);
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, global2.b.c.a.x, ~0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(~global2.b.b.a.a.x, u_input.b, 9819u), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(4294967295u, 23646u, u_input.b)), vec3<u32>(28979u, global2.b.a.a.a.x, u_input.d.x)), ~min(vec3<u32>(0u, global2.b.b.a.a.x, global2.b.b.a.a.x), global2.b.a.a.a)), (_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, global2.b.c.a.x), vec3<u32>(u_input.d.x, global2.b.a.a.a.x, 1u)) ^ select(vec3<u32>(global2.b.c.a.x, u_input.d.x, global2.b.b.a.a.x), vec3<u32>(1u, global2.b.a.a.a.x, global2.b.c.a.x), vec3<bool>(arg_0.a.x, false, false))) >> (_wgslsmith_clamp_vec3_u32(~global2.b.c.a, vec3<u32>(global2.b.b.a.a.x, 4294967295u, 1u) & global2.b.c.a, ~global2.b.c.a) % vec3<u32>(32u))));
    let var_3 = Struct_2(Struct_1(var_2, -u_input.c.x));
    var var_4 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))));
    return Struct_5(select(select(global1[_wgslsmith_index_u32(~(~u_input.d.x), 15u)], !(!vec2<bool>(arg_0.a.x, arg_0.a.x)), global1[_wgslsmith_index_u32(38996u, 15u)]), vec2<bool>(arg_0.a.x, true), vec2<bool>(arg_0.a.x, !any(vec3<bool>(true, arg_0.a.x, false)))));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: vec2<bool>, arg_3: f32) -> Struct_1 {
    global2 = Struct_4(_wgslsmith_f_op_f32(sign(global2.a)), Struct_3(Struct_2(Struct_1(firstTrailingBit(global2.b.c.a), abs(u_input.a))), global2.b.a, Struct_1(vec3<u32>(~global2.b.a.a.a.x, 19441u, _wgslsmith_mod_u32(u_input.b, u_input.b)), firstLeadingBit(-global2.b.b.a.b))));
    var var_0 = vec3<bool>(global2.a != global2.a, -_wgslsmith_div_i32(global2.b.c.b ^ global2.b.a.a.b, ~global2.b.b.a.b) > -2147483647i, true);
    var var_1 = max(global2.b.a.a.a << (select(global2.b.c.a, select(vec3<u32>(u_input.b, u_input.d.x, 82358u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.d.x, u_input.d.x), vec3<u32>(4294967295u, global2.b.c.a.x, u_input.d.x), vec3<u32>(global2.b.b.a.a.x, 13440u, 8236u)), vec3<bool>(var_0.x, true, arg_2.x)), arg_2.x || false) % vec3<u32>(32u)), vec3<u32>(~u_input.b, max(global2.b.b.a.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.c.a.x, 29286u, 12173u, u_input.b), vec4<u32>(u_input.d.x, global2.b.a.a.a.x, 5679u, 26080u))), _wgslsmith_add_u32(~1u, 1u)) << (~(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 75262u, 39866u), global2.b.a.a.a)) % vec3<u32>(32u)));
    var var_2 = -630f;
    var_0 = !vec3<bool>(true, true, arg_2.x);
    return Struct_1(vec3<u32>(_wgslsmith_div_u32(24032u, 28944u), ~firstTrailingBit(u_input.d.x >> (22826u % 32u)), _wgslsmith_dot_vec3_u32(select(~vec3<u32>(30918u, 0u, u_input.d.x), global2.b.a.a.a, true), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, var_1.x, 0u), global2.b.a.a.a))), i32(-1i) * -(~(-u_input.a)));
}

fn func_1() -> Struct_4 {
    global0 = array<vec2<i32>, 32>();
    var var_0 = Struct_3(Struct_2(func_3(func_2(Struct_5(vec2<bool>(false, false))), all(select(global1[_wgslsmith_index_u32(u_input.d.x, 15u)], global1[_wgslsmith_index_u32(global2.b.b.a.a.x, 15u)], vec2<bool>(true, false))), vec2<bool>(u_input.d.x == u_input.d.x, true), -1000f)), Struct_2(global2.b.a.a), Struct_1(global2.b.a.a.a, -14072i));
    let var_1 = -(0i >> (var_0.b.a.a.x % 32u));
    global2 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + global2.a))))), global2.b);
    var_0 = global2.b;
    return Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1051f) * 272f)))), Struct_3(Struct_2(global2.b.c), var_0.a, var_0.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 28780u, global2.b.a.a.a.x, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, 37713u, 89998u), vec4<u32>(global2.b.b.a.a.x, 4294967295u, global2.b.b.a.a.x, 29248u))), ~vec4<u32>(1u, 0u, 55521u, u_input.d.x) >> (vec4<u32>(21230u, u_input.d.x, global2.b.a.a.a.x, u_input.b) % vec4<u32>(32u)))), 15u)];
    var var_1 = Struct_5(global1[_wgslsmith_index_u32(4294967295u, 15u)]);
    global2 = func_1();
    var var_2 = true;
    let var_3 = global2.a;
    var_0 = select(var_1.a, vec2<bool>(true, var_0.x), vec2<bool>(func_2(Struct_5(global1[_wgslsmith_index_u32(u_input.b & 1u, 15u)])).a.x, all(select(vec4<bool>(var_0.x, false, true, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_1.a.x, false), vec4<bool>(var_1.a.x, var_1.a.x, false, false), vec4<bool>(var_0.x, true, true, var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-542f, _wgslsmith_f_op_f32(select(2787f, global2.a, false))), 1000f, _wgslsmith_div_f32(-1195f, _wgslsmith_f_op_f32(-1409f - 856f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(max(-1288f, -1489f)), false))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -974f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -440f), _wgslsmith_f_op_f32(max(global2.a, -1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.a))), _wgslsmith_f_op_f32(step(-1316f, global2.a)))), global2.b.b.a.a.x, global2.b.b.a.a.yy, abs(global2.b.c.a), global2.b.a.a.a);
}

