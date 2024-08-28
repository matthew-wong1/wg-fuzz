struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true));

var<private> global1: array<i32, 4> = array<i32, 4>(0i, 18660i, 0i, 0i);

var<private> global2: vec2<i32>;

var<private> global3: array<bool, 1>;

var<private> global4: Struct_1;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(124f, global4.a, 1523f) + vec3<f32>(global4.c, 1149f, -543f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1189f, 1207f, 757f) - vec3<f32>(global4.c, global4.c, -356f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c, global4.a, global4.c))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(364f, global4.c, -1545f) + vec3<f32>(global4.c, -2115f, -892f)))))))));
    global4 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.a, -823f) * _wgslsmith_f_op_f32(-284f + -403f)))), -581f)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(403f * 1481f) + 778f), vec3<u32>(1005u, global4.e, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_0.x, arg_0.x, global4.e), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.e, 2874u, arg_0.x, u_input.b.x)), vec4<u32>(0u, global4.e, 70197u, 0u)))), min(arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global4.e | arg_0.x, ~global4.e, 1u), _wgslsmith_mult_vec3_u32(arg_0 & vec3<u32>(global4.d.x, arg_0.x, 1u), arg_0))));
    global0 = array<vec4<bool>, 9>();
    let var_1 = _wgslsmith_dot_vec4_i32(-countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -26479i, u_input.d, global2.x), vec4<i32>(u_input.a.x, 23660i, global2.x, global2.x))) >> (~(~(vec4<u32>(37404u, 37410u, global4.e, 1u) & vec4<u32>(7506u, u_input.e, u_input.e, 45850u))) % vec4<u32>(32u)), vec4<i32>(-9912i, global2.x, -firstTrailingBit(global2.x) & global2.x, -_wgslsmith_mod_i32(-u_input.a.x, -global2.x)));
    let var_2 = Struct_2(u_input.a.zxz, Struct_1(-1386f, all(arg_2) != !(!global4.b), global4.a, ~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_0.x, 1u), global4.d), vec3<u32>(global4.d.x, u_input.e, 1u), global4.d), abs(global4.e)));
    return -1000f;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: vec2<i32>) -> f32 {
    global0 = array<vec4<bool>, 9>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(~(~global4.d), !all(vec2<bool>(global4.b, arg_1.x)), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, ~global4.d.xz), 9u)])), !(!any(select(arg_1, vec3<bool>(global4.b, true, global3[_wgslsmith_index_u32(global4.d.x, 1u)]), vec3<bool>(false, true, true)))), global4.a, (abs(select(global4.d, vec3<u32>(global4.e, u_input.e, 1u), vec3<bool>(true, false, global4.b))) << (~vec3<u32>(global4.e, 0u, u_input.e) % vec3<u32>(32u))) << (vec3<u32>(u_input.e, ~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, 82545u)), _wgslsmith_mult_u32(firstTrailingBit(32479u), ~u_input.e)) % vec3<u32>(32u)), _wgslsmith_clamp_u32(0u, 4294967295u, global4.e));
    let var_1 = Struct_2(vec3<i32>(1i, ~61235i, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(33803u & var_0.e, _wgslsmith_add_u32(global4.d.x, 45988u)), 4u)], global2.x >> (50309u % 32u))), Struct_1(global4.a, false, global4.c, select(_wgslsmith_mod_vec3_u32(global4.d, _wgslsmith_mult_vec3_u32(vec3<u32>(global4.d.x, var_0.d.x, 1u), vec3<u32>(25743u, 34698u, 4294967295u))), vec3<u32>(var_0.d.x, u_input.b.x, ~32310u), !vec3<bool>(arg_1.x, false, true)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(select(global4.d.xz, var_0.d.xz, false), vec2<u32>(17466u, 79440u) << (var_0.d.xy % vec2<u32>(32u))), vec2<u32>(1u, ~50929u))));
    var var_2 = Struct_2(~(-var_1.a), var_1.b);
    global3 = array<bool, 1>();
    return -890f;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    global3 = array<bool, 1>();
    let var_0 = 0u;
    global2 = vec2<i32>(1i, 1i) ^ -u_input.a.zw;
    global0 = array<vec4<bool>, 9>();
    let var_1 = arg_1.c;
    return Struct_2(u_input.a.wzz, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(!global3[_wgslsmith_index_u32(28575u, 1u)], select(vec3<bool>(false, global3[_wgslsmith_index_u32(var_0, 1u)], false), vec3<bool>(arg_1.b, false, false), arg_1.b), select(u_input.a, u_input.a, vec4<bool>(true, false, true, false)), vec2<i32>(u_input.c, 11267i) & vec2<i32>(u_input.c, -42942i))), _wgslsmith_f_op_f32(-350f * var_1), global4.b)), !(4294967295u < arg_1.e), 984f, abs(vec3<u32>(0u, min(u_input.e, u_input.b.x), 7785u)), 43223u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-(~u_input.a.zxw) | u_input.a.wzx, Struct_1(_wgslsmith_f_op_f32(-global4.c), !(u_input.d > global2.x), global4.a, ~_wgslsmith_sub_vec3_u32(~vec3<u32>(15845u, 0u, 3044u), _wgslsmith_add_vec3_u32(vec3<u32>(global4.e, u_input.e, global4.e), global4.d)), ~44400u));
    var var_1 = var_0.b.e;
    global3 = array<bool, 1>();
    global4 = var_0.b;
    global1 = array<i32, 4>();
    var_0 = func_1(~_wgslsmith_mult_u32(min(67437u, u_input.e) & var_0.b.e, 61798u), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.d, global4.e);
}

