struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(-21036i, -30120i, 1i), vec3<i32>(-1i, -7214i, i32(-2147483648)), vec3<i32>(0i, -13018i, 13734i), vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(2147483647i, -5580i, 7048i), vec3<i32>(1901i, i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), 24985i), vec3<i32>(0i, -15365i, 2147483647i), vec3<i32>(-3464i, 1i, -34842i), vec3<i32>(26341i, 24439i, 1i), vec3<i32>(13170i, -41341i, -1i), vec3<i32>(27718i, 34134i, 0i), vec3<i32>(-6449i, 1i, 75222i), vec3<i32>(1i, 11058i, 0i), vec3<i32>(64172i, 0i, 0i), vec3<i32>(22331i, 20043i, 1i), vec3<i32>(i32(-2147483648), 0i, -285i), vec3<i32>(i32(-2147483648), 12999i, 1i), vec3<i32>(17950i, -3630i, 0i), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(19042i, -4155i, -3798i), vec3<i32>(2147483647i, 2147483647i, 49943i));

var<private> global3: array<Struct_1, 4>;

var<private> global4: array<Struct_1, 7>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global2 = array<vec3<i32>, 22>();
    let var_0 = firstTrailingBit(-countOneBits(select(-u_input.c, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), vec4<i32>(57110i, u_input.a, u_input.a, u_input.a)), vec4<bool>(true, true, true, true))));
    let var_1 = ~(~vec2<i32>(~firstLeadingBit(var_0.x), _wgslsmith_dot_vec2_i32(u_input.c.xz, u_input.c.xz) >> (~u_input.b.x % 32u)));
    let var_2 = -1500f;
    global4 = array<Struct_1, 7>();
    return reverseBits(~((14682u >> (_wgslsmith_mod_u32(u_input.d, u_input.b.x) % 32u)) << (0u % 32u)));
}

fn func_2() -> u32 {
    global3 = array<Struct_1, 4>();
    let var_0 = vec2<u32>(_wgslsmith_add_u32(~abs(_wgslsmith_div_u32(u_input.d, 46181u)), func_3()), _wgslsmith_add_u32(u_input.d, u_input.d ^ 0u));
    let var_1 = vec3<f32>(_wgslsmith_div_f32(-726f, _wgslsmith_f_op_f32(ceil(-2213f))), _wgslsmith_f_op_f32(907f * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) * _wgslsmith_f_op_f32(sign(106f))));
    var var_2 = var_0.x;
    var var_3 = vec2<u32>(35697u >> (~(~func_3()) % 32u), _wgslsmith_mult_u32(min(~select(37765u, var_0.x, true), _wgslsmith_dot_vec2_u32(u_input.b.yy, select(u_input.b.xy, var_0, vec2<bool>(false, false)))), ~max(~u_input.d, 67906u)));
    return ~(~_wgslsmith_div_u32(~var_3.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(var_0.x, 4294967295u))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    global4 = array<Struct_1, 7>();
    var var_0 = global4[_wgslsmith_index_u32(func_3(), 7u)];
    let var_1 = u_input.c.zw;
    let var_2 = ~(~arg_2.a.x | _wgslsmith_mult_u32(~(var_0.b << (1u % 32u)), 0u));
    var var_3 = global4[_wgslsmith_index_u32(~52167u, 7u)];
    return arg_1;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = func_4(arg_1, Struct_2(vec2<u32>(func_2(), _wgslsmith_mult_u32(u_input.e, _wgslsmith_clamp_u32(23052u, 51966u, 0u))), Struct_1(~u_input.b.yz, 101964u >> (_wgslsmith_sub_u32(u_input.e, 0u) % 32u)), global4[_wgslsmith_index_u32(max(arg_0.x, ~_wgslsmith_clamp_u32(4294967295u, arg_0.x, arg_0.x)), 7u)], 0i, !vec2<bool>(any(vec3<bool>(false, true, false)), arg_1)), Struct_1(~_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, arg_0.x), vec2<u32>(u_input.e, arg_0.x)), ~6915u));
    let var_1 = Struct_2(abs(~firstLeadingBit(vec2<u32>(0u, arg_0.x))), func_4(all(vec4<bool>(true, true, true, true)), func_4(var_0.e.x, func_4(false, Struct_2(vec2<u32>(arg_0.x, 1u), Struct_1(arg_0, arg_0.x), Struct_1(vec2<u32>(0u, 31638u), 32458u), var_0.d, var_0.e), global1[_wgslsmith_index_u32(max(2896u, var_0.b.b), 9u)]), Struct_1(vec2<u32>(101163u, arg_0.x) | u_input.b.xx, 0u)), global4[_wgslsmith_index_u32(abs(var_0.c.a.x), 7u)]).b, global1[_wgslsmith_index_u32(func_2(), 9u)], -1i, var_0.e);
    global2 = array<vec3<i32>, 22>();
    global2 = array<vec3<i32>, 22>();
    let var_2 = vec3<i32>(var_0.d, _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(-vec4<i32>(8948i, 1i, -924i, 2147483647i), vec4<i32>(-2147483647i, var_0.d, var_1.d, 2147483647i))), u_input.c), _wgslsmith_div_i32(-_wgslsmith_mult_i32(1i, -1i), 2147483647i));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(abs(u_input.b.xz), func_1(u_input.b.xy, u_input.a > _wgslsmith_sub_i32(countOneBits(38478i), 2147483647i)), func_4(_wgslsmith_div_f32(-951f, -2708f) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_f_op_f32(round(308f)))), Struct_2(countOneBits(vec2<u32>(u_input.e, 44458u)), Struct_1(~u_input.b.zy, ~u_input.d), func_4(true, func_4(true, Struct_2(vec2<u32>(u_input.e, 4294967295u), Struct_1(vec2<u32>(u_input.b.x, 2167u), 37052u), Struct_1(u_input.b.yy, 12409u), u_input.c.x, vec2<bool>(false, false)), global3[_wgslsmith_index_u32(u_input.e, 4u)]), global1[_wgslsmith_index_u32(u_input.e, 9u)]).b, firstLeadingBit(_wgslsmith_clamp_i32(u_input.c.x, u_input.a, u_input.a)), !select(vec2<bool>(false, true), vec2<bool>(true, false), false)), Struct_1(func_1(func_4(true, Struct_2(vec2<u32>(u_input.e, 6068u), global3[_wgslsmith_index_u32(u_input.d, 4u)], global3[_wgslsmith_index_u32(56360u, 4u)], u_input.a, vec2<bool>(true, true)), global4[_wgslsmith_index_u32(u_input.b.x, 7u)]).c.a, true).a, firstLeadingBit(_wgslsmith_mod_u32(14811u, 34956u)))).b, 6139i, !select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), any(vec4<bool>(true, false, true, true))), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false))));
    global1 = array<Struct_1, 9>();
    let var_1 = vec2<bool>(false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-341f, 315f, true)) + _wgslsmith_f_op_f32(629f + -2885f)), -1193f)) != _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1080f, -1000f) * _wgslsmith_f_op_f32(126f - 1339f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-298f * 345f), _wgslsmith_f_op_f32(-218f + 781f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(373f, 1713f) * vec2<f32>(-681f, -112f)))))));
    var var_3 = func_4(any(!vec4<bool>(true, false, select(false, var_0.e.x, true), !var_1.x)), Struct_2(~(~var_0.a), func_1(~min(var_0.c.a, vec2<u32>(37707u, var_0.c.b)), var_1.x), global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(min(var_0.c.a, var_0.c.a), min(vec2<u32>(7944u, var_0.b.b), vec2<u32>(4294967295u, var_0.a.x)))), 9u)], _wgslsmith_sub_i32(func_4(func_4(var_0.e.x, Struct_2(vec2<u32>(u_input.d, var_0.c.b), Struct_1(u_input.b.xz, var_0.a.x), global1[_wgslsmith_index_u32(88039u, 9u)], -47509i, vec2<bool>(false, true)), var_0.c).e.x, Struct_2(vec2<u32>(0u, 1u), global1[_wgslsmith_index_u32(31510u, 9u)], Struct_1(vec2<u32>(51838u, u_input.d), 3901u), 1i, var_1), func_4(true, Struct_2(var_0.b.a, Struct_1(u_input.b.yx, 0u), global4[_wgslsmith_index_u32(866u, 7u)], 15074i, var_0.e), global3[_wgslsmith_index_u32(53178u, 4u)]).b).d, 52164i), select(var_0.e, vec2<bool>(func_4(var_0.e.x, Struct_2(vec2<u32>(var_0.b.b, var_0.a.x), var_0.c, Struct_1(var_0.c.a, 7841u), 15297i, var_0.e), global1[_wgslsmith_index_u32(1u, 9u)]).e.x, any(vec3<bool>(var_1.x, var_1.x, false))), !vec2<bool>(var_1.x, false))), func_4(var_1.x, func_4(all(vec2<bool>(false, true)), func_4(31136u >= var_0.c.b, Struct_2(vec2<u32>(4294967295u, u_input.d), var_0.c, Struct_1(var_0.a, 0u), 0i, vec2<bool>(true, false)), Struct_1(vec2<u32>(4294967295u, 25396u), 69753u)), func_1(_wgslsmith_div_vec2_u32(u_input.b.zx, vec2<u32>(u_input.e, 4294967295u)), true)), global3[_wgslsmith_index_u32(~(~(var_0.a.x & 31619u)), 4u)]).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(674f, var_2.x, var_2.x) * vec3<f32>(-1000f, var_2.x, 963f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-189f, 1195f, -736f)))))))), 15833i, ~u_input.c.wx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 1642f, -1091f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-161f, 144f, var_2.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, -2163f, -1000f), vec3<f32>(var_2.x, var_2.x, -256f), false)), !var_3.e.x)))));
}

