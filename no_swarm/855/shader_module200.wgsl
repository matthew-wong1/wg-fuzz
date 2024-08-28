struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: array<vec4<bool>, 25>;

var<private> global2: Struct_2 = Struct_2(false, -697f, Struct_1(vec2<f32>(-1062f, -820f), 16925u, vec4<f32>(1306f, -882f, -919f, 2295f), 7535u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>) -> vec4<bool> {
    global2 = Struct_2(true, -1000f, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(718f, -899f) + _wgslsmith_f_op_vec2_f32(sign(global2.c.c.xx)))), _wgslsmith_clamp_u32(global2.c.b, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(211u, 57475u, 0u, global2.c.b), vec4<u32>(u_input.b.x, 5877u, global2.c.d, 1u)), reverseBits(4294967295u)), 21249u), global2.c.c, u_input.b.x));
    let var_0 = !(!vec3<bool>(all(vec2<bool>(global2.a, global2.a)), false, arg_0.x));
    global0 = array<f32, 2>();
    let var_1 = all(select(vec4<bool>(all(select(vec4<bool>(false, true, var_0.x, false), global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)])), false, arg_0.x && true, arg_0.x), vec4<bool>(true, global2.a, !(!arg_0.x), u_input.a.x <= u_input.a.x), false));
    let var_2 = global2.c.d;
    return vec4<bool>(!(!var_1), true, !any(vec3<bool>(u_input.a.x > 20490i, select(false, true, false), !arg_0.x)), true);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(select(!select(select(vec2<bool>(arg_0, true), vec2<bool>(false, false), true), !vec2<bool>(false, arg_0), arg_0), select(!select(vec2<bool>(global2.a, global2.a), vec2<bool>(arg_0, global2.a), vec2<bool>(true, true)), vec2<bool>(true, true), false), false), !(!(!vec2<bool>(true, global2.a))), false);
    global2 = Struct_2(false || !any(vec3<bool>(true, false, false)), arg_1.c.x, arg_1);
    var var_1 = vec4<i32>(~(((u_input.a.x << (0u % 32u)) >> (countOneBits(global2.c.d) % 32u)) & u_input.a.x), 6539i, 2147483647i, _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_add_i32(-20293i, -u_input.a.x)), -(~(-7987i) >> (arg_1.d % 32u))));
    let var_2 = select(var_0, !select(select(!var_0, vec2<bool>(true, false), true), var_0, !arg_0 || any(vec3<bool>(var_0.x, var_0.x, true))), true);
    let var_3 = Struct_3(select(~(~vec4<i32>(-2147483647i, u_input.a.x, var_1.x, u_input.a.x) >> (~vec4<u32>(4294967295u, 30280u, arg_1.b, arg_1.b) % vec4<u32>(32u))), ~firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-29569i, 52230i, var_1.x, -1i), vec4<i32>(-1i, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(-11649i, u_input.a.x, u_input.a.x, u_input.a.x))), !select(vec4<bool>(arg_0, false, var_2.x, false), vec4<bool>(arg_0, true, var_2.x, arg_0), var_2.x)), Struct_1(arg_1.a, 4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.b, -883f, arg_1.a.x, 172f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, global0[_wgslsmith_index_u32(39377u, 2u)], global0[_wgslsmith_index_u32(global2.c.b, 2u)], arg_1.c.x))), ~1u), arg_1, any(vec2<bool>(all(func_3(vec4<bool>(arg_0, true, var_2.x, arg_0), arg_1.c.yx)), true)), Struct_2(false, _wgslsmith_f_op_f32(-629f + arg_1.a.x), Struct_1(vec2<f32>(_wgslsmith_div_f32(global2.b, arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1493f)), 0u, vec4<f32>(227f, -491f, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(arg_1.b, 2u)])), _wgslsmith_div_f32(arg_1.c.x, arg_1.c.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.c.b, 0u, global2.c.d, arg_1.b), max(vec4<u32>(24609u, u_input.b.x, global2.c.d, 100904u), vec4<u32>(global2.c.d, 4294967295u, u_input.b.x, 136904u))))));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1387f, global2.b))))), global2.c.c.x), ~firstLeadingBit(1u), _wgslsmith_f_op_vec4_f32(sign(var_3.c.c)), 70343u);
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = func_2(global2.a, global2.c);
    global1 = array<vec4<bool>, 25>();
    var var_1 = ~_wgslsmith_mod_vec3_u32(~min(vec3<u32>(u_input.b.x, 0u, 18652u) & vec3<u32>(13615u, 4294967295u, 4294967295u), ~vec3<u32>(1u, u_input.b.x, arg_0)), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, var_0.b, 7280u), vec3<u32>(global2.c.d, 1u, 1156u)), ~vec3<u32>(21943u, 60953u, var_0.d)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 124037u), vec3<u32>(var_0.d, arg_0, global2.c.d)), vec3<u32>(7273u, u_input.b.x, u_input.b.x))));
    let var_2 = Struct_2(any(!func_3(vec4<bool>(false, global2.a, global2.a, global2.a), global2.c.a).zzy) | false, _wgslsmith_f_op_f32(-var_0.c.x), global2.c);
    global1 = array<vec4<bool>, 25>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a;
    global1 = array<vec4<bool>, 25>();
    let var_1 = Struct_2(global2.c.b > _wgslsmith_mod_u32(0u, global2.c.d), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~0u, 2u)], -806f), global2.c);
    global2 = Struct_2(!var_1.a, 1148f, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-576f, 1078f))) * _wgslsmith_f_op_vec2_f32(-global2.c.c.zz)) * var_1.c.c.yx), min(global2.c.d, ~(~u_input.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(-329f - _wgslsmith_f_op_f32(-var_1.c.c.x)), -1061f, var_1.c.c.x), 58763u));
    global1 = array<vec4<bool>, 25>();
    global2 = func_1(9295u);
    global1 = array<vec4<bool>, 25>();
    var var_2 = Struct_1(var_1.c.c.wz, ~22527u, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(var_1.c.c)))))), _wgslsmith_sub_u32(4294967295u, ~(~(~u_input.b.x))));
    global1 = array<vec4<bool>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-477f, -1103f, var_2.c.x, global0[_wgslsmith_index_u32(global2.c.b, 2u)]) - func_1(var_2.d).c.c) + vec4<f32>(_wgslsmith_f_op_f32(-global2.c.a.x), _wgslsmith_f_op_f32(var_2.c.x * global0[_wgslsmith_index_u32(var_1.c.b, 2u)]), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(var_2.b, 2u)])), _wgslsmith_f_op_f32(-707f - global2.c.a.x)))));
}

