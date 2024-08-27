struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: bool,
    d: vec3<u32>,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
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

var<private> global0: bool = true;

var<private> global1: array<f32, 24>;

var<private> global2: i32 = 1i;

var<private> global3: f32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec2<u32>) -> u32 {
    global3 = _wgslsmith_f_op_f32(1000f + global1[_wgslsmith_index_u32(arg_2.a, 24u)]);
    let var_0 = Struct_2(arg_1.x, vec4<u32>(1u | ((37869u & arg_0.a) & _wgslsmith_div_u32(u_input.b.x, 121620u)), abs(min(arg_1.x, 30311u) | (u_input.c.x >> (38271u % 32u))), 18528u, u_input.b.x << (firstTrailingBit(u_input.b.x) % 32u)), arg_0.c);
    global1 = array<f32, 24>();
    global0 = select(any(vec4<bool>(arg_2.c, true, false, var_0.c)), arg_2.c, arg_0.c);
    global2 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.d.x, _wgslsmith_mult_i32(u_input.e.x, u_input.e.x)), -2147483647i);
    return ~1u;
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_1(~(~u_input.d.xyw), !vec4<bool>(arg_1.c, !arg_1.c || (arg_1.a.b.x != 3835u), true, arg_1.a.c));
    global2 = _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.d, -vec4<i32>(arg_1.e, 37709i, arg_0, arg_1.e)) >> (15027u % 32u), ~(-arg_2.e)), _wgslsmith_mult_i32(0i, _wgslsmith_mod_i32(u_input.d.x, 0i)));
    let var_1 = Struct_3(arg_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)), arg_1.b.x, -531f)), false, _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(17154u, 10016u, 4294967295u), ~vec3<u32>(u_input.c.x, 29017u, 9941u)) ^ arg_2.a.b.zwy, countOneBits(vec3<u32>(12749u, 0u, func_3(arg_1.a, arg_1.d, Struct_2(22817u, vec4<u32>(arg_2.a.b.x, 22426u, arg_1.a.b.x, arg_1.d.x), false), vec2<u32>(u_input.c.x, 56395u))))), u_input.a.x);
    global3 = _wgslsmith_f_op_f32(trunc(arg_1.b.x));
    let var_2 = !any(!vec2<bool>(select(arg_2.c, arg_1.c, arg_2.c), all(var_0.b)));
    return abs(~4294967295u);
}

fn func_1() -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(abs(~(_wgslsmith_clamp_u32(~u_input.b.x, u_input.b.x, func_2(u_input.a.x, Struct_3(Struct_2(u_input.b.x, vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, 40101u), false), vec3<f32>(-705f, global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)]), true, vec3<u32>(u_input.b.x, 1u, 60294u), 0i), Struct_3(Struct_2(u_input.b.x, vec4<u32>(15551u, 20845u, u_input.c.x, 0u), true), vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], 551f, global1[_wgslsmith_index_u32(18671u, 24u)]), true, u_input.c, -21195i))) | (_wgslsmith_mod_u32(u_input.c.x, u_input.b.x) & ~1u))), 24u)];
    let var_1 = vec3<bool>(true, any(vec2<bool>(any(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false)))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.c.x, 20550u), 0u, 1u), u_input.c.x) == u_input.c.x);
    return select(-35144i, 66599i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], -588f)) + 628f) == _wgslsmith_f_op_f32(-1519f + global1[_wgslsmith_index_u32(max(u_input.b.x, 1u), 24u)])) ^ firstLeadingBit(~49395i);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], 1166f) * vec2<f32>(317f, 297f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(29803u, 24u)], -829f))))), _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], 1000f), vec2<f32>(421f, -368f)), !vec2<bool>(arg_2.x, arg_2.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 24u)] - 1469f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(u_input.c.x, 24u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 408f), vec2<f32>(-479f, global1[_wgslsmith_index_u32(93126u, 24u)]), arg_0)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], 737f)) - vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], -220f))), -423f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(19619u, 24u)]), _wgslsmith_f_op_f32(sign(179f)), true))))));
    var var_1 = _wgslsmith_f_op_f32(abs(-669f));
    let var_2 = Struct_1(_wgslsmith_mod_vec3_i32(u_input.e << (countOneBits(u_input.c) % vec3<u32>(32u)), u_input.d.zyw), vec4<bool>(all(select(vec3<bool>(arg_2.x, arg_1, true), select(vec3<bool>(arg_2.x, true, arg_1), vec3<bool>(false, arg_2.x, arg_2.x), vec3<bool>(arg_1, false, arg_2.x)), all(vec4<bool>(true, true, true, false)))), ~(~u_input.b.x) > ~(~u_input.c.x), true, true));
    let var_3 = ~u_input.c.x;
    global1 = array<f32, 24>();
    return Struct_2(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3, u_input.c.x, u_input.b.x) | select(vec3<u32>(u_input.b.x, 4294967295u, var_3), vec3<u32>(1u, 0u, var_3), vec3<bool>(arg_1, false, arg_0)), ~vec3<u32>(0u, u_input.c.x, u_input.c.x)), var_3, 4294967295u), vec4<u32>(var_3, ~(~u_input.c.x), max(abs(firstLeadingBit(1u)), 1u), _wgslsmith_clamp_u32(~var_3, 4294967295u, var_3)), !(func_1() >= firstLeadingBit(select(45919i, u_input.e.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))));
    var var_1 = func_4(var_0.x, true, select(vec2<bool>(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d) >= func_1(), false), !select(select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), vec2<bool>(false, false), var_0.x), vec2<bool>(true, var_0.x)));
    var var_2 = Struct_2(u_input.b.x, _wgslsmith_sub_vec4_u32(var_1.b, (countOneBits(var_1.b) ^ select(vec4<u32>(var_1.a, var_1.b.x, 0u, u_input.b.x), vec4<u32>(u_input.c.x, 13870u, var_1.a, u_input.b.x), vec4<bool>(false, false, var_0.x, var_1.c))) >> (abs(vec4<u32>(13677u, var_1.b.x, 1u, var_1.b.x)) % vec4<u32>(32u))), var_1.c);
    var var_3 = ~(~13993u);
    let var_4 = select(vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.a, 24u)] - 731f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(39951u, 24u)]))), any(vec2<bool>(var_2.a <= var_2.b.x, any(vec4<bool>(false, true, false, var_1.c)))), true, any(vec3<bool>(var_1.c, true, var_2.c))), !select(select(vec4<bool>(true, var_0.x, true, false), select(vec4<bool>(var_0.x, false, var_1.c, true), vec4<bool>(var_0.x, var_2.c, true, var_0.x), false), !vec4<bool>(false, false, var_0.x, true)), vec4<bool>(var_2.c, true, !var_2.c, false), var_1.c), false);
    var var_5 = -1359f;
    global0 = true || !(32687u > ~func_2(53502i, Struct_3(Struct_2(var_1.b.x, var_1.b, false), vec3<f32>(global1[_wgslsmith_index_u32(var_2.b.x, 24u)], -796f, 1680f), true, vec3<u32>(var_1.b.x, 29957u, 0u), u_input.a.x), Struct_3(Struct_2(var_2.a, var_1.b, false), vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(10262u, 24u)], -547f), true, vec3<u32>(4294967295u, 4294967295u, u_input.c.x), u_input.d.x)));
    var_2 = Struct_2(23822u, var_1.b, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1[_wgslsmith_index_u32(var_1.b.x, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(var_2.b.x, 24u)]), vec3<f32>(global1[_wgslsmith_index_u32(1834u, 24u)], -677f, 560f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1335f, global1[_wgslsmith_index_u32(var_1.a, 24u)], 348f) + vec3<f32>(262f, 1318f, global1[_wgslsmith_index_u32(u_input.b.x, 24u)]))))));
}

