struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<bool, 22>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_5) -> u32 {
    global1 = array<bool, 22>();
    global0 = Struct_5(global0.a, ~min(1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_2.b, arg_2.a.a), _wgslsmith_clamp_u32(u_input.b.x, global0.a.a, 88525u))), arg_2.c, !arg_0);
    global1 = array<bool, 22>();
    global1 = array<bool, 22>();
    global0 = Struct_5(Struct_2(3764u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 16575u), u_input.b.zz)), Struct_1(!arg_2.c.a, !arg_0.x, _wgslsmith_div_f32(arg_2.c.c, -554f)), !vec3<bool>(!(!arg_2.c.a.x), any(global0.c.a), select(52451u, 1u, arg_0.x) < u_input.b.x));
    return ~countOneBits(~_wgslsmith_mod_u32(21337u, global0.a.a) ^ _wgslsmith_div_u32(global0.b, global0.b));
}

fn func_2() -> u32 {
    global0 = Struct_5(Struct_2(firstLeadingBit(func_3(vec3<bool>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)], true), u_input.c.xy, Struct_5(global0.a, 7083u, Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], true, global0.c.a.x, global0.d.x), false, global0.c.c), vec3<bool>(global1[_wgslsmith_index_u32(15049u, 22u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 22u)]))) >> (13257u % 32u))), ~min(abs(0u), 0u), Struct_1(global0.c.a, global1[_wgslsmith_index_u32(max(min(u_input.b.x, u_input.b.x) | u_input.b.x, 0u), 22u)], 1f), select(global0.d, vec3<bool>(!(true & global0.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), u_input.b) != global0.b, true), all(!select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(31359u, 22u)], global0.d.x), global0.c.a, vec4<bool>(true, global0.c.b, false, global0.d.x)))));
    var var_0 = abs(firstTrailingBit(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(0u, 4294967295u)), firstTrailingBit(~vec2<u32>(0u, 35704u)), vec2<u32>(~77091u, ~1u))));
    let var_1 = !global1[_wgslsmith_index_u32(~32755u, 22u)];
    let var_2 = Struct_1(global0.c.a, true, global0.c.c);
    global0 = Struct_5(global0.a, max(u_input.b.x, 1u >> (~global0.a.a % 32u)), Struct_1(var_2.a, true | any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], var_2.a.x, var_2.b, false)), global0.c.c), !var_2.a.xwz);
    return ~_wgslsmith_add_u32(_wgslsmith_div_u32(17890u, select(var_0.x, u_input.b.x, global0.c.b)) >> (~(~var_0.x) % 32u), _wgslsmith_mod_u32(4294967295u, max(9175u, 4294967295u)) | u_input.b.x);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = global0.c.a.yxz;
    global0 = Struct_5(global0.a, firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.a.a, 3780u), min(1u, u_input.b.x), ~4294967295u), u_input.b.x)), Struct_1(!select(global0.c.a, vec4<bool>(arg_0, arg_0, global1[_wgslsmith_index_u32(arg_2.x, 22u)], global0.d.x), global0.c.a), !(_wgslsmith_mult_i32(-66564i, u_input.d) <= ~u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.c) * _wgslsmith_div_f32(global0.c.c, -704f)))), !select(vec3<bool>(true, true, !var_0.x), vec3<bool>(global0.c.c != 1914f, global0.c.c > -146f, all(global0.c.a)), arg_0));
    global1 = array<bool, 22>();
    var var_1 = vec2<bool>(arg_1, false);
    var var_2 = vec2<f32>(-306f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.c.c));
    return global0.a;
}

fn func_1(arg_0: vec2<bool>) -> bool {
    let var_0 = -max(u_input.c.xww, vec3<i32>(1i, reverseBits(-1i), 38639i));
    var var_1 = global0.a;
    let var_2 = Struct_2(var_1.a);
    var_1 = func_4(~func_2() >= countOneBits(var_1.a), all(!arg_0), _wgslsmith_sub_vec3_u32(~u_input.b & _wgslsmith_div_vec3_u32(u_input.b, u_input.b), ~(~vec3<u32>(var_2.a, 0u, var_2.a))) & reverseBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b.x, 20093u, global0.b), u_input.b)));
    var_1 = Struct_2(_wgslsmith_add_u32(func_4(global0.c.c == -1909f, arg_0.x, _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(var_2.a, u_input.b.x, 1u))).a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_1.a, global0.a.a, u_input.b.x), vec4<u32>(0u, 9164u, global0.a.a, 43146u))));
    return all(vec2<bool>(!arg_0.x, !((arg_0.x | true) | any(global0.c.a))));
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_5) -> Struct_2 {
    var var_0 = 117778u;
    let var_1 = arg_2.b | _wgslsmith_mod_u32(1u, 1u);
    var var_2 = func_4(true, u_input.b.x != ~(~reverseBits(4294967295u)), u_input.b);
    global0 = arg_2;
    let var_3 = arg_2.c;
    return Struct_2(1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(func_5(global0.c.c, _wgslsmith_add_i32(-19403i, -(~(-3012i))), Struct_5(global0.a, u_input.b.x, global0.c, vec3<bool>(global1[_wgslsmith_index_u32(83442u, 22u)] && global0.d.x, func_1(vec2<bool>(global0.c.a.x, true)), false))), reverseBits(4294967295u), global0.c, !select(global0.c.a.xzy, select(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(1u, 22u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], true), global0.c.a.wyw, global0.c.a.wwy), all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(20237u, 22u)]))), vec3<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(global0.a.a, 22u)], true)), true, true)));
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u << (1u % 32u), _wgslsmith_sub_u32(global0.a.a, ~global0.a.a), func_5(-1412f, ~1i, Struct_5(Struct_2(4294967295u), 4294967295u, Struct_1(vec4<bool>(false, global0.d.x, global1[_wgslsmith_index_u32(u_input.b.x, 22u)], true), true, -542f), vec3<bool>(global0.c.b, true, global1[_wgslsmith_index_u32(global0.a.a, 22u)]))).a), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.b.x, 14450u)), vec2<u32>(countOneBits(4294967295u), ~u_input.b.x)), vec2<u32>(_wgslsmith_div_u32(32449u, 3348u), global0.b) & vec2<u32>(~13364u, global0.a.a)));
    var var_1 = select(~select((vec4<u32>(global0.b, u_input.b.x, u_input.b.x, u_input.b.x) | vec4<u32>(36346u, u_input.b.x, global0.a.a, 0u)) | (vec4<u32>(u_input.b.x, 1u, global0.b, 0u) << (vec4<u32>(1u, u_input.b.x, global0.a.a, global0.b) % vec4<u32>(32u))), ~(~vec4<u32>(1u, 1u, 39083u, global0.b)), true), reverseBits(~vec4<u32>(func_3(vec3<bool>(true, true, true), vec2<i32>(u_input.d, 1i), Struct_5(Struct_2(1u), u_input.b.x, global0.c, vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(6106u, 22u)]))), 1u, 1u, u_input.b.x)), true);
    global1 = array<bool, 22>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global0.c.c, -1650f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.c))) < _wgslsmith_f_op_f32(global0.c.c * 1774f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.c, 1000f, global0.c.c, global0.c.c), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(448f, 171f, -824f, global0.c.c))), select(vec4<bool>(global1[_wgslsmith_index_u32(66095u, 22u)], global0.d.x, false, true), global0.c.a, vec4<bool>(global0.d.x, true, false, true)))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(662f, -597f, global0.c.c, global0.c.c))))));
}

