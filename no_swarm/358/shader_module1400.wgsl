struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<i32>(2147483647i, -1i, 0i), vec3<u32>(57450u, 0u, 1u), vec4<bool>(false, false, false, true), true, 1338i), Struct_1(vec3<i32>(-26350i, 2147483647i, i32(-2147483648)), vec3<u32>(0u, 0u, 0u), vec4<bool>(false, false, false, false), true, i32(-2147483648)), Struct_1(vec3<i32>(-1i, 2147483647i, -13291i), vec3<u32>(1241u, 33051u, 72344u), vec4<bool>(false, true, true, true), true, 2147483647i), Struct_1(vec3<i32>(-40281i, 13665i, -20869i), vec3<u32>(1u, 0u, 0u), vec4<bool>(true, false, false, true), false, 7285i), Struct_1(vec3<i32>(-69644i, 2147483647i, -24632i), vec3<u32>(4732u, 28123u, 1u), vec4<bool>(true, true, true, true), true, 38234i), Struct_1(vec3<i32>(24818i, 1i, -19270i), vec3<u32>(42664u, 25893u, 53682u), vec4<bool>(true, true, true, true), false, -5874i), Struct_1(vec3<i32>(-1076i, -22476i, 31453i), vec3<u32>(4294967295u, 1u, 4294967295u), vec4<bool>(true, true, false, false), true, 1i), Struct_1(vec3<i32>(0i, 10495i, 0i), vec3<u32>(4294967295u, 71441u, 6030u), vec4<bool>(false, true, false, true), false, -1i), Struct_1(vec3<i32>(-1i, 1i, -5889i), vec3<u32>(1u, 0u, 1u), vec4<bool>(true, true, false, false), true, 53051i), Struct_1(vec3<i32>(1i, 1i, 9054i), vec3<u32>(18872u, 0u, 4294967295u), vec4<bool>(true, true, true, true), true, i32(-2147483648)), Struct_1(vec3<i32>(0i, 12568i, 33231i), vec3<u32>(1u, 11927u, 65809u), vec4<bool>(false, false, true, false), true, -47027i));

var<private> global1: array<u32, 15> = array<u32, 15>(7608u, 4294967295u, 1u, 907u, 7089u, 19551u, 39341u, 16153u, 4773u, 30442u, 1u, 4294967295u, 22572u, 24368u, 0u);

var<private> global2: array<i32, 31>;

var<private> global3: bool;

var<private> global4: array<Struct_1, 23>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = global4[_wgslsmith_index_u32(6541u, 23u)];
    var var_1 = Struct_1(_wgslsmith_mult_vec3_i32(~_wgslsmith_div_vec3_i32(-vec3<i32>(var_0.a.x, 0i, u_input.c.x), -vec3<i32>(1i, 0i, var_0.a.x)), vec3<i32>(~1i, arg_0.a.x, ~arg_0.a.x)), ~vec3<u32>(~u_input.e.x, 0u, ~firstTrailingBit(32063u)), !vec4<bool>(true, false || all(var_0.c.wy), arg_0.c.x, _wgslsmith_f_op_f32(step(-1000f, -312f)) != _wgslsmith_f_op_f32(max(-607f, 419f))), all(!vec3<bool>(true, any(vec3<bool>(true, arg_0.c.x, var_0.d)), true)), firstLeadingBit(arg_0.a.x));
    global4 = array<Struct_1, 23>();
    let var_2 = arg_0;
    var var_3 = min(_wgslsmith_clamp_vec2_i32(var_0.a.zy, var_0.a.zx, vec2<i32>(var_0.e, -65782i)), min(select(_wgslsmith_mod_vec2_i32(u_input.c.ww, var_1.a.yx | var_1.a.xx), ~(-arg_0.a.yx), true), var_0.a.xz));
    return (var_1.e & u_input.a) | u_input.b;
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: bool, arg_3: vec4<i32>) -> vec4<i32> {
    global1 = array<u32, 15>();
    let var_0 = global4[_wgslsmith_index_u32(5471u, 23u)];
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x)))));
    global3 = !arg_2;
    var var_2 = global0[_wgslsmith_index_u32(~(var_0.b.x >> (~4294967295u % 32u)), 11u)];
    return u_input.c;
}

fn func_2() -> u32 {
    global4 = array<Struct_1, 23>();
    global3 = !((4294967295u >> (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.e.x, 33919u), u_input.e), u_input.e) % 32u)) == u_input.e.x);
    global4 = array<Struct_1, 23>();
    let var_0 = select(func_4(vec4<f32>(_wgslsmith_f_op_f32(sign(-1032f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(542f - -1110f), _wgslsmith_f_op_f32(f32(-1f) * -461f)), -1528f, _wgslsmith_f_op_f32(f32(-1f) * -255f)), u_input.e.x, all(vec2<bool>(true, true)), max(vec4<i32>(_wgslsmith_clamp_i32(10691i, global2[_wgslsmith_index_u32(62071u, 31u)], u_input.a), u_input.a | 2147483647i, global2[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2925u, 15u)], 15u)], 15u)], u_input.e.x), 31u)], func_3(Struct_1(u_input.c.zyx, vec3<u32>(26676u, global1[_wgslsmith_index_u32(4294967295u, 15u)], 104578u), vec4<bool>(true, true, true, false), false, -2147483647i))), -(~vec4<i32>(global2[_wgslsmith_index_u32(1u, 31u)], 31500i, 0i, u_input.c.x)))), -(_wgslsmith_add_vec4_i32(-u_input.c, u_input.c) ^ min(u_input.c, vec4<i32>(3613i, -7386i, global2[_wgslsmith_index_u32(u_input.e.x, 31u)], u_input.c.x))), !select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    var var_1 = global4[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.e.x >> (1u % 32u), 15u)], 23u)];
    return ~(1u >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.b.x, u_input.e.x, global1[_wgslsmith_index_u32(24747u, 15u)], 63397u), firstLeadingBit(vec4<u32>(1u, 4294967295u, 29628u, 43444u)) | vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60480u, 15u)], 15u)], 15u)], 100031u, var_1.b.x, 47025u)) % 32u));
}

fn func_5(arg_0: Struct_1) -> vec2<bool> {
    return vec2<bool>(all(arg_0.c), any(select(vec3<bool>(true, true, true), !(!vec3<bool>(arg_0.d, arg_0.c.x, true)), !arg_0.c.ywx)));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1) -> bool {
    global1 = array<u32, 15>();
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    var var_0 = func_5(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(25816u, 4294967295u, arg_1, 36052u) ^ vec4<u32>(34552u, 10680u, arg_1, 1u), ~vec4<u32>(arg_1, arg_2.b.x, 0u, arg_1), vec4<bool>(arg_2.c.x, arg_2.d, arg_2.d, false)), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_1, u_input.e.x, 0u), vec4<u32>(arg_1, global1[_wgslsmith_index_u32(104346u, 15u)], u_input.e.x, arg_2.b.x)))), vec4<u32>(1u, ~func_2(), ~u_input.e.x >> (~u_input.e.x % 32u), ~2111u)), 23u)]);
    global1 = array<u32, 15>();
    return !(any(!arg_2.c) || false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    global1 = array<u32, 15>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(3200f - -1322f))));
    global1 = array<u32, 15>();
    global0 = array<Struct_1, 11>();
    global3 = !(any(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)))) || !func_1(select(vec4<i32>(-1i, 15582i, -4144i, -2147483647i), u_input.c, vec4<bool>(true, true, true, true)), 43669u, Struct_1(u_input.c.xww, vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.e.x, 15u)], 17211u), vec4<bool>(false, true, false, false), true, u_input.b)));
    global0 = array<Struct_1, 11>();
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~(32702u ^ u_input.e.x), u_input.e.x, ~26277u), 0u >> (max(firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 15u)]), ~u_input.e.x) % 32u), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(42810u), 33045u), 15u)]), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(43809i, var_0, firstLeadingBit(func_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1618f, 342f, 1000f, 619f))), 16175u, true, firstTrailingBit(vec4<i32>(var_2.a.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 31u)], -1i, 1i)))) ^ (select(vec4<i32>(global2[_wgslsmith_index_u32(15157u, 31u)], var_0, u_input.c.x, 8159i), firstLeadingBit(u_input.c), !vec4<bool>(true, true, false, var_2.c.x)) & vec4<i32>(u_input.b, -2147483647i, _wgslsmith_div_i32(20925i, 2147483647i), -1i)), vec4<u32>(_wgslsmith_div_u32(~(var_2.b.x << (61756u % 32u)), ~(~global1[_wgslsmith_index_u32(4294967295u, 15u)])), 1u, max(~global1[_wgslsmith_index_u32(38149u, 15u)] ^ 37648u, abs(abs(global1[_wgslsmith_index_u32(10110u, 15u)]))), var_2.b.x));
}

