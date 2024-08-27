struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-200f, 143f, -955f, -1889f), 779f);

var<private> global2: u32;

var<private> global3: array<i32, 22> = array<i32, 22>(11241i, 7499i, 0i, i32(-2147483648), -1i, 43142i, 38864i, -53122i, 14909i, 2999i, 1i, -14052i, 15220i, 17339i, -91636i, -8697i, 51879i, -1i, -1i, -23655i, i32(-2147483648), 1i);

var<private> global4: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(-4924i, 1i, i32(-2147483648), 0i), vec4<i32>(i32(-2147483648), 2147483647i, -5952i, -12729i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(arg_3.a)), _wgslsmith_f_op_f32(max(-2184f, -2142f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(567f, _wgslsmith_f_op_f32(1360f - 1227f), select(true, true, false))) - _wgslsmith_f_op_f32(ceil(-1183f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -1327f, -1000f, global1.b)))) * global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.b, global1.a.x)) * -2192f))));
    global4 = array<vec4<i32>, 2>();
    let var_1 = var_0;
    let var_2 = firstTrailingBit(vec2<u32>(~(~4294967295u), u_input.a.x));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-388f, _wgslsmith_f_op_f32(f32(-1f) * -333f), -155f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - -1000f) * _wgslsmith_f_op_f32(sign(global1.a.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, ~u_input.a, Struct_1(vec4<f32>(global1.b, var_1.a.x, -1155f, 762f), global1.a.x), Struct_1(var_0.a, var_1.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -494f)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, -1024f, var_0.a.x, 145f), var_3.a, global3[_wgslsmith_index_u32(var_2.x, 22u)] <= u_input.b)) - var_3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1886f, _wgslsmith_f_op_f32(trunc(var_1.b)), true))) - var_3.b));
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = func_2();
    let var_1 = abs(u_input.d.x);
    var var_2 = var_0;
    let var_3 = var_0;
    return select(!vec4<bool>(true, min(var_1, 9435u) <= 42270u, false, true), !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, any(vec2<bool>(false, true)), true, any(vec2<bool>(false, false))), ~0i != u_input.b), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), false));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec2<bool>) -> u32 {
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(403f > global1.b, vec4<u32>(0u, u_input.d.x, 110677u, 4294967295u), Struct_1(vec4<f32>(-1448f, -1473f, global1.a.x, global1.b), global1.a.x), func_2())) - -877f), _wgslsmith_div_f32(-426f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * _wgslsmith_f_op_f32(global1.a.x - global1.b))), -1177f, global1.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.x))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -884f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3((arg_0.x & arg_0.x) | false, vec4<u32>(abs(u_input.d.x), ~u_input.d.x, 8209u, 39528u), func_2(), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1994f, global1.b, 158f, global1.b), vec4<f32>(global1.a.x, -1000f, -991f, global1.a.x), vec4<bool>(true, arg_0.x, arg_0.x, false))), _wgslsmith_f_op_f32(round(-228f)))))));
    let var_1 = _wgslsmith_div_u32(u_input.e, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(40350u, u_input.c, _wgslsmith_mod_u32(reverseBits(u_input.c), 1u)), _wgslsmith_mult_u32(abs(0u), 1u ^ u_input.a.x), 4294967295u));
    var var_2 = !select(arg_2, !vec2<bool>(!arg_2.x, arg_0.x), all(arg_0));
    let var_3 = select(!(!arg_0.wwz), vec3<bool>(all(!arg_0.xxw), arg_2.x, arg_2.x), select(vec3<bool>(true, arg_0.x, var_2.x), vec3<bool>(false, true, any(select(arg_0.xzw, arg_0.yxy, arg_0.zyw))), !arg_0.x));
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(countOneBits(~u_input.e), 4294967295u), countOneBits(vec2<u32>(28933u, 0u)));
}

fn func_1(arg_0: vec3<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1.a.x)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1469f - -639f))));
    let var_1 = -(~select(global4[_wgslsmith_index_u32(23877u, 2u)], vec4<i32>(u_input.b, 0i, global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(u_input.e, 22u)]), true)) >> ((~vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.d.x, 4294967295u), u_input.d.yzz), 1u, u_input.d.x) & ~(~(~vec4<u32>(u_input.c, 40685u, 43819u, u_input.d.x)))) % vec4<u32>(32u));
    let var_2 = func_5(func_4(func_2()), var_1.yw, !vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), false))));
    global0 = array<vec2<f32>, 29>();
    let var_3 = global1.a;
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(func_2().a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a - global1.a))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-global1.b), 287f, 1f, _wgslsmith_f_op_f32(-var_0)))))));
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec2<f32>, 29>();
    global2 = 1u;
    global0 = array<vec2<f32>, 29>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(true, -31609i & global3[_wgslsmith_index_u32(u_input.a.x, 22u)], Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a - vec4<f32>(global1.a.x, -1147f, 355f, 1440f))) + _wgslsmith_f_op_vec4_f32(func_1(~vec3<i32>(u_input.b, -28264i, 1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.b, _wgslsmith_f_op_f32(-global1.b))) - _wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(global1.b + 712f)))));
    var var_1 = func_2();
    global1 = var_0;
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(true || all(vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_u32(~u_input.d, ~u_input.d) ^ abs(vec4<u32>(u_input.c, 17119u, 25212u, 68263u)), var_2, Struct_1(var_1.a, 1375f))), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, u_input.c, 23445u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.d.x, u_input.e, u_input.c), u_input.a)), u_input.c, reverseBits(22526u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.e, 5473u), u_input.d.wzw), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(6324u, u_input.c, 97274u), ~u_input.a.zxz)), ~u_input.d.yxw, var_2.a.wxw, -1000f);
}

