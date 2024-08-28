struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: f32;

var<private> global2: Struct_5 = Struct_5(2147483647i, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> vec3<u32> {
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1097f, arg_1.x)), 853f, 1273f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 543f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x + -1019f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, arg_1.x))), -1604f), global0[_wgslsmith_index_u32(~0u, 28u)], 28001u, !(!arg_0));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -813f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))), arg_0 & false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -855f), _wgslsmith_f_op_f32(f32(-1f) * -876f)) + 1395f)));
    let var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(global2.b, global2.b), u_input.c);
    let var_3 = _wgslsmith_clamp_i32((max(u_input.e, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global2.a, 2147483647i), vec3<i32>(0i, 45687i, global2.a))) >> (var_2 % 32u)) >> (18177u % 32u), reverseBits(-1i), u_input.e);
    var var_4 = vec4<bool>(all(select(vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(var_0.e, global0[_wgslsmith_index_u32(global2.b, 28u)], true), vec3<bool>(var_0.c, arg_0, true), vec3<bool>(true, false, var_0.e)), vec3<bool>(true, arg_0, true))) && true, true, true, true);
    return vec3<u32>(_wgslsmith_dot_vec4_u32(min(u_input.b >> (vec4<u32>(var_0.d, var_2, 33206u, global2.b) % vec4<u32>(32u)), ~vec4<u32>(var_0.d, var_2, 4294967295u, 27624u)), vec4<u32>(global2.b & 0u, _wgslsmith_add_u32(1906u, 1u), u_input.d, global2.b)), ~_wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(14341u, var_2, u_input.c.x, var_2)), u_input.d) ^ vec3<u32>(~_wgslsmith_add_u32(4294967295u & var_2, ~var_0.d), ~(~79122u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), firstLeadingBit(~vec2<u32>(var_2, 4294967295u))));
}

fn func_2() -> i32 {
    global2 = Struct_5(-53154i, 4294967295u);
    let var_0 = ~u_input.b.x;
    let var_1 = func_3(!global0[_wgslsmith_index_u32(global2.b, 28u)], _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))));
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    return u_input.e;
}

fn func_1() -> bool {
    global2 = Struct_5(1i, global2.b);
    global0 = array<bool, 28>();
    let var_0 = vec3<bool>(true, global0[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_mod_u32(global2.b, u_input.c.x)), 62279u, global2.b)), 28u)], false);
    let var_1 = Struct_2(u_input.e, func_2(), !vec4<bool>(true, true, all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 28u)])), global0[_wgslsmith_index_u32(global2.b, 28u)]), Struct_1(_wgslsmith_f_op_f32(abs(-435f))), Struct_1(1f));
    var var_2 = var_0.x;
    return false;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = u_input.e;
    var var_1 = 4294967295u;
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -855f))))), Struct_1(2173f), firstTrailingBit(0u));
    var var_3 = Struct_5(u_input.e, firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(min(u_input.b.zxz, u_input.b.yyw), select(u_input.a, u_input.a, global0[_wgslsmith_index_u32(arg_2, 28u)])), reverseBits(vec3<u32>(arg_0.d, arg_0.d, 0u)) >> (_wgslsmith_clamp_vec3_u32(u_input.b.xxx, u_input.a, vec3<u32>(arg_0.d, u_input.a.x, global2.b)) % vec3<u32>(32u)))));
    var var_4 = Struct_3(Struct_1(358f), var_2.a, 1u);
    return Struct_2(firstLeadingBit(countOneBits(_wgslsmith_div_i32(arg_3.a, _wgslsmith_add_i32(-1i, 2147483647i)))), u_input.e, vec4<bool>(arg_0.c, false, arg_3.c.x, all(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(var_2.c, 28u)], global0[_wgslsmith_index_u32(25573u, 28u)]), vec3<bool>(arg_0.e, true, global0[_wgslsmith_index_u32(14344u, 28u)]), arg_0.c))), var_2.a, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.e.a, -1509f)), any(arg_3.c.yx)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1228f, 712f, -641f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -277f, 324f, -1618f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1118f, -1048f) + vec2<f32>(-1752f, -640f))) + vec2<f32>(_wgslsmith_f_op_f32(1769f + 216f), -209f)), any(vec4<bool>(global0[_wgslsmith_index_u32(6663u, 28u)], false, select(false, true, global0[_wgslsmith_index_u32(global2.b, 28u)]), global0[_wgslsmith_index_u32(global2.b, 28u)])), ~_wgslsmith_mult_u32(select(4294967295u, u_input.a.x, false), u_input.d), func_1()), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(395f, _wgslsmith_f_op_f32(ceil(892f)))), -836f)), 8036u, Struct_2(_wgslsmith_div_i32(0i, _wgslsmith_clamp_i32(u_input.e & -19193i, -22411i, u_input.e)), i32(-1i) * -45643i, vec4<bool>(true & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, u_input.c.x, global2.b), u_input.b), 28u)], false, global0[_wgslsmith_index_u32(~4294967295u, 28u)], true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -237f))), Struct_1(_wgslsmith_f_op_f32(-922f * -2342f))));
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-629f, func_4(Struct_4(vec4<f32>(var_0.d.a, var_0.e.a, -1000f, 431f), vec2<f32>(var_0.e.a, 127f), false, u_input.d, true), vec2<f32>(-592f, 491f), 6767u, var_0).d.a))))));
    let var_1 = vec2<bool>(select(var_0.c.x, !(!global0[_wgslsmith_index_u32(23819u, 28u)]), any(vec3<bool>(!global0[_wgslsmith_index_u32(u_input.c.x, 28u)], true, !var_0.c.x))), false);
    var var_2 = ~global2.b;
    global0 = array<bool, 28>();
    var_2 = ~global2.b;
    var_2 = abs(1u >> ((firstTrailingBit(~u_input.c.x) ^ abs(0u | u_input.a.x)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.d.a + _wgslsmith_f_op_f32(sign(var_0.e.a))), _wgslsmith_clamp_u32(~(~(~41466u)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(global2.b, u_input.c.x, 1u, 76401u)) << (abs(u_input.b) % vec4<u32>(32u)), u_input.b | _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(32687u, u_input.c.x, global2.b, global2.b))), 24221u), vec2<f32>(881f, _wgslsmith_f_op_f32(exp2(var_0.d.a))), -757f);
}

