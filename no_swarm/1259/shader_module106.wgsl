struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(0u, 31456u, 27895u), vec2<bool>(true, false), 38166u), Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(27970u, 73206u, 4294967295u), vec2<bool>(false, true), 17709u), Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(0u, 22874u, 4294967295u), vec2<bool>(true, true), 4294967295u), Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(1u, 18375u, 4294967295u), vec2<bool>(true, true), 0u), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(4294967295u, 0u, 4294967295u), vec2<bool>(true, false), 0u), Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(0u, 14845u, 2121u), vec2<bool>(false, true), 4294967295u), Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(57303u, 55864u, 54917u), vec2<bool>(true, false), 1u), Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(50179u, 13429u, 1u), vec2<bool>(true, true), 1u), Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, 1u, 1u), vec2<bool>(false, true), 19242u), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(1u, 370u, 3237u), vec2<bool>(false, true), 6473u), Struct_1(vec4<bool>(true, false, true, false), vec3<u32>(60093u, 47042u, 109465u), vec2<bool>(true, true), 78828u), Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(43400u, 4294967295u, 6846u), vec2<bool>(true, true), 59262u), Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(1u, 0u, 0u), vec2<bool>(false, true), 4294967295u), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(23944u, 30905u, 36555u), vec2<bool>(true, false), 1u), Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(57925u, 1u, 6755u), vec2<bool>(false, false), 1u), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(4294967295u, 2490u, 3816u), vec2<bool>(true, true), 32861u), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(4294967295u, 41099u, 51770u), vec2<bool>(false, true), 3406u), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(4294967295u, 41508u, 0u), vec2<bool>(true, true), 0u), Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(4294967295u, 1u, 74007u), vec2<bool>(true, false), 1u), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(0u, 24455u, 0u), vec2<bool>(true, false), 4294967295u), Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(1u, 93798u, 39441u), vec2<bool>(false, false), 1u), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(8472u, 49066u, 11597u), vec2<bool>(true, false), 1u), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(1u, 0u, 13605u), vec2<bool>(true, true), 0u), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(24096u, 4294967295u, 1u), vec2<bool>(true, true), 55367u), Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(4294967295u, 4294967295u, 1u), vec2<bool>(true, true), 14490u), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(4294967295u, 0u, 1u), vec2<bool>(false, false), 49019u), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(1u, 1u, 4294967295u), vec2<bool>(false, true), 4294967295u));

var<private> global1: array<f32, 4>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = -2147483647i;
    global1 = array<f32, 4>();
    global0 = array<Struct_1, 27>();
    let var_1 = -43753i;
    global0 = array<Struct_1, 27>();
    return 46155u;
}

fn func_3(arg_0: u32) -> vec3<f32> {
    var var_0 = false;
    global1 = array<f32, 4>();
    var var_1 = Struct_1(vec4<bool>(true, true, false, 54934u > ~u_input.a.x), u_input.c.xww, !(!vec2<bool>(true, any(vec2<bool>(false, true)))), arg_0);
    global0 = array<Struct_1, 27>();
    var var_2 = -50939i;
    return vec3<f32>(global1[_wgslsmith_index_u32(countOneBits(max(~_wgslsmith_sub_u32(var_1.d, arg_0), 25136u << (0u % 32u))), 4u)], 1035f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(21539u, arg_0), 4u)]))));
}

fn func_2(arg_0: vec2<i32>) -> vec2<i32> {
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(min(select(vec3<i32>(-2147483647i, u_input.b.x, 18611i), u_input.b, true), u_input.b), vec3<i32>(u_input.b.x, u_input.b.x, 51158i) << (vec3<u32>(u_input.c.x, 15712u, u_input.c.x) % vec3<u32>(32u))), u_input.b.x), 0i, _wgslsmith_sub_i32(u_input.b.x, -3699i), -2147483647i);
    global1 = array<f32, 4>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(max(~64219u, u_input.a.x)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(0u, 4u)], -807f, global1[_wgslsmith_index_u32(4294967295u, 4u)])), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1675f, 1939f, global1[_wgslsmith_index_u32(u_input.c.x, 4u)])))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.c.x), 4u)], 883f, _wgslsmith_f_op_f32(min(-1076f, 303f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 - vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(38452u)).x, _wgslsmith_f_op_f32(-1835f + -288f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(19975u, 4u)], -1591f), _wgslsmith_f_op_f32(-var_1.x))))));
    global1 = array<f32, 4>();
    return min(-vec2<i32>(var_0.x, _wgslsmith_add_i32(arg_0.x << (10444u % 32u), var_0.x)), vec2<i32>(countOneBits(var_0.x) ^ var_0.x, _wgslsmith_dot_vec4_i32(var_0, var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    var var_0 = Struct_1(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true), any(vec4<bool>(true, true, false, false)))), vec3<u32>(_wgslsmith_add_u32(u_input.a.x, ~u_input.a.x), ~(_wgslsmith_mult_u32(0u, u_input.a.x) ^ ~0u), u_input.a.x), !(!select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true))), _wgslsmith_div_u32(func_1(Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), reverseBits(1u)), _wgslsmith_mult_i32(-20779i, _wgslsmith_dot_vec2_i32(u_input.b.yz, u_input.b.zy)), Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(33628u, u_input.a.x, 4294967295u) & vec3<u32>(0u, 30819u, u_input.c.x), vec2<bool>(true, true), u_input.c.x)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.c.x, 59459u, u_input.c.x)), u_input.c.xzy)));
    let var_1 = _wgslsmith_mult_vec2_i32(func_2(u_input.b.zx) >> (vec2<u32>(var_0.b.x, 1u) % vec2<u32>(32u)), u_input.b.xy);
    var var_2 = 2147483647i;
    var var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-325f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1163f)))) + 831f);
    let x = u_input.a;
    s_output = StorageBuffer(max(var_0.b.x, abs(29064u)), _wgslsmith_f_op_f32(-727f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b.x, 0u), 4u)] - _wgslsmith_f_op_f32(f32(-1f) * -516f))), _wgslsmith_mult_vec3_i32(vec3<i32>(min(_wgslsmith_div_i32(-1i, var_1.x), u_input.b.x), _wgslsmith_clamp_i32(-13484i, select(var_1.x, -1i, true), var_1.x), var_1.x), -u_input.b));
}

