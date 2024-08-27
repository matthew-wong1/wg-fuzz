struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(1u, 37289u, 0u, 8991u, 7559u, 1u, 88446u, 7328u, 1u, 14663u, 903u, 12820u, 11884u, 91313u, 48196u, 1u, 87613u, 1u, 1u, 23876u, 0u, 4294967295u, 22196u, 38654u, 0u, 4294967295u, 0u, 0u, 20358u, 44002u, 45963u, 74093u);

var<private> global1: array<vec3<f32>, 27>;

var<private> global2: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true));

var<private> global3: Struct_2 = Struct_2(false, 872f, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = Struct_2(!(!all(vec3<bool>(global3.a, false, global3.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-949f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.b, arg_0.a.x, true))))), !global3.c);
    var var_1 = Struct_1(vec4<f32>(arg_0.a.x, -1185f, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(408f + 1286f))))));
    var var_2 = arg_0;
    let var_3 = 1i;
    var var_4 = var_0;
    return -(~u_input.d);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> Struct_1 {
    global0 = array<u32, 32>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1168f))) - _wgslsmith_div_f32(-811f, global3.b));
    var var_1 = func_3(arg_0);
    let var_2 = arg_0;
    let var_3 = global0[_wgslsmith_index_u32(arg_1, 32u)];
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: i32) -> f32 {
    var var_0 = select(select(!(!vec4<bool>(false, global3.c, arg_0, true)), select(!global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 11533u, global0[_wgslsmith_index_u32(4294967295u, 32u)]), 32u)], 32u)], 32u)], 32u)], 32u)], 32u)], 15u)], !vec4<bool>(arg_0, arg_0, false, arg_0), select(vec4<bool>(global3.a, global3.c, true, global3.a), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40688u, 32u)], 15u)], global3.a)), false), global2[_wgslsmith_index_u32(~6199u, 15u)], select(select(vec4<bool>(false, global3.a, arg_0, !global3.a), vec4<bool>(global3.c, true, true, !arg_0), global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 23756u), 15u)]), vec4<bool>(arg_0, global3.a, false, true), !vec4<bool>(!global3.c, select(arg_0, false, true), any(vec2<bool>(true, true)), false)));
    return -1070f;
}

fn func_1() -> vec4<u32> {
    global2 = array<vec4<bool>, 15>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 656f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-366f)), global3.b) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.b, 547f)))))));
    var var_1 = vec3<f32>(global3.b, var_0.x, 368f);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_4(true != (global3.a || !global3.c), -(vec2<i32>(-5371i, -39748i) >> (select(u_input.b.yz, u_input.c.xx, vec2<bool>(global3.a, global3.c)) % vec2<u32>(32u))), Struct_3(func_2(Struct_1(vec4<f32>(var_0.x, global3.b, -651f, -917f)), ~u_input.b.x, _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.d.x), u_input.d.xx))), ~min(_wgslsmith_clamp_i32(u_input.d.x, -18799i, u_input.d.x), -u_input.d.x))), var_1.x, var_0.x);
    global2 = array<vec4<bool>, 15>();
    return _wgslsmith_mult_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], u_input.b.x, u_input.b.x, firstTrailingBit(1u)), vec4<u32>(~max(global0[_wgslsmith_index_u32(u_input.a.x >> (u_input.c.x % 32u), 32u)], u_input.a.x), min(~(~78619u), abs(4294967295u)), 23805u, _wgslsmith_mod_u32(min(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(31068u, 32u)], global0[_wgslsmith_index_u32(u_input.c.x, 32u)]), min(4294967295u, u_input.b.x)), global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(0u, 32u)]), 32u)])));
}

fn func_5(arg_0: u32, arg_1: vec3<u32>) -> Struct_3 {
    global1 = array<vec3<f32>, 27>();
    global3 = Struct_2(all(!select(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, 4294967295u), 15u)], vec4<bool>(global3.c, global3.a, false, global3.a), all(vec4<bool>(global3.a, global3.c, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-326f * 982f) + global3.b)), !(!global3.c));
    global0 = array<u32, 32>();
    global1 = array<vec3<f32>, 27>();
    var var_0 = ~u_input.c.zx;
    return Struct_3(Struct_1(vec4<f32>(global3.b, func_2(Struct_1(vec4<f32>(global3.b, global3.b, 1024f, global3.b)), 1u, _wgslsmith_div_vec2_i32(u_input.d.xy, vec2<i32>(-2147483647i, -1i))).a.x, 197f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(global3.b + 1343f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(0u, vec3<u32>(68043u, 1u, _wgslsmith_dot_vec4_u32(func_1(), _wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)], global0[_wgslsmith_index_u32(1u, 32u)], 1u, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<u32>(global0[_wgslsmith_index_u32(1u, 32u)], u_input.c.x, 1u, u_input.a.x))) << (4294967295u % 32u)));
    let var_1 = var_0.a.a.x;
    global1 = array<vec3<f32>, 27>();
    global3 = Struct_2(true, _wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)))), global3.a);
    let var_2 = 12834i;
    var var_3 = global3.a;
    global0 = array<u32, 32>();
    let var_4 = var_0;
    let var_5 = ~(45894u << ((4294967295u | (_wgslsmith_sub_u32(26688u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)]) >> (u_input.a.x % 32u))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(1i, 1325f, ~0u);
}

