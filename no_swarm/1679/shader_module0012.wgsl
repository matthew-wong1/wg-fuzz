struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(4294967295u, 30531u, 5865u), vec3<u32>(117414u, 0u, 4294967295u));

var<private> global1: array<vec4<i32>, 5>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<u32>) -> i32 {
    return reverseBits(firstTrailingBit(1i)) ^ arg_1.a;
}

fn func_4(arg_0: i32) -> i32 {
    global1 = array<vec4<i32>, 5>();
    var var_0 = vec3<bool>(!((all(vec2<bool>(true, true)) & true) != all(vec2<bool>(true, true))), true & !any(vec3<bool>(true, true, true)), false);
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, firstTrailingBit(14866u)), 2u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-344f)) - _wgslsmith_f_op_f32(-1000f + 864f)), -824f)), var_0.x);
    var var_2 = var_1.b;
    var var_3 = var_1.a.x;
    return -(arg_0 | ~arg_0);
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    global0 = array<vec3<u32>, 2>();
    global0 = array<vec3<u32>, 2>();
    var var_0 = u_input.b.x;
    let var_1 = Struct_4(~(-func_4(func_3(Struct_3(u_input.b.x), Struct_4(2147483647i, Struct_2(1523f, Struct_1(vec3<u32>(1u, u_input.c, u_input.c), 1000f, false), Struct_1(vec3<u32>(50545u, u_input.c, 4294967295u), 453f, false), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 2u)], arg_0, true))), vec2<u32>(u_input.c, u_input.c)))), Struct_2(arg_0, Struct_1(~vec3<u32>(1u, u_input.c, 1u), -425f, true), Struct_1(vec3<u32>(u_input.c, _wgslsmith_mod_u32(u_input.c, u_input.c), ~39840u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_1, arg_0)))), select(false, select(true, false, true), all(vec3<bool>(false, false, true)))), Struct_1(_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(u_input.c, u_input.c, 34242u)), abs(vec3<u32>(u_input.c, u_input.c, 45347u))), arg_0, true)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -301f) - 960f);
    return var_1.b.d;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_4(0i, Struct_2(_wgslsmith_f_op_f32(-arg_1), arg_0, func_2(arg_2, arg_1), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), arg_0.b)));
    var var_1 = var_0.b;
    let var_2 = Struct_1(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, arg_0.a.x, arg_0.a.x, var_0.b.d.a.x)), vec4<u32>(~var_0.b.b.a.x, 83064u | var_0.b.c.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.a.x, arg_0.a.x, 29926u, var_0.b.b.a.x), vec4<u32>(arg_0.a.x, arg_0.a.x, 4294967295u, u_input.c)), 4294967295u))), 2u)], arg_2, func_2(626f, _wgslsmith_f_op_f32(round(var_0.b.c.b))).c);
    let var_3 = _wgslsmith_f_op_f32(-arg_1);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.b), 626f, _wgslsmith_f_op_f32(-arg_2))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, arg_1, arg_2)) + vec3<f32>(343f, 784f, arg_0.b)), vec3<f32>(_wgslsmith_div_f32(var_3, var_1.a), _wgslsmith_f_op_f32(arg_1 - var_3), var_2.b))));
    return func_2(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1110f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -864f)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_4 {
    let var_0 = ~func_2(260f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.d.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-156f + 998f)))).a.zy;
    let var_1 = ~(~_wgslsmith_add_vec4_i32(min(abs(global1[_wgslsmith_index_u32(21662u, 5u)]), ~global1[_wgslsmith_index_u32(56649u, 5u)]), reverseBits(max(global1[_wgslsmith_index_u32(u_input.c, 5u)], vec4<i32>(31612i, u_input.b.x, u_input.a, u_input.a)))));
    let var_2 = u_input.c;
    global1 = array<vec4<i32>, 5>();
    global0 = array<vec3<u32>, 2>();
    return Struct_4(var_1.x, arg_0);
}

fn func_1() -> Struct_3 {
    global0 = array<vec3<u32>, 2>();
    global0 = array<vec3<u32>, 2>();
    global0 = array<vec3<u32>, 2>();
    let var_0 = func_6(Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-974f, 823f))))), func_5(func_2(_wgslsmith_f_op_f32(f32(-1f) * -425f), _wgslsmith_f_op_f32(1000f * 1288f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -902f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(865f)), -851f)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, false, true)))), Struct_1(func_5(func_2(-1172f, 219f), _wgslsmith_f_op_f32(min(-308f, -304f)), _wgslsmith_f_op_f32(min(-1048f, -257f)), vec4<bool>(true, true, true, true)).a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), false), func_5(Struct_1(vec3<u32>(1u, u_input.c, 102633u) << (vec3<u32>(3581u, u_input.c, 9354u) % vec3<u32>(32u)), 388f, true), _wgslsmith_f_op_f32(exp2(func_2(-320f, -1314f).b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -2241f), -613f), vec4<bool>(true, true, true, false))), Struct_2(-1182f, Struct_1(_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(u_input.c, 2u)] >> (global0[_wgslsmith_index_u32(1u, 2u)] % vec3<u32>(32u)), ~global0[_wgslsmith_index_u32(u_input.c, 2u)]), 1553f, true), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1173f - -262f), _wgslsmith_div_f32(896f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-194f - -401f) - 977f)), func_2(1f, 541f)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-var_0.b.d.b), Struct_1(func_5(var_0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_0.b.d.b)), _wgslsmith_f_op_f32(sign(-606f)), select(!vec4<bool>(false, false, var_0.b.d.c, var_0.b.c.c), select(vec4<bool>(false, var_0.b.c.c, false, var_0.b.d.c), vec4<bool>(var_0.b.d.c, var_0.b.c.c, var_0.b.c.c, var_0.b.d.c), false), vec4<bool>(var_0.b.c.c, var_0.b.d.c, var_0.b.d.c, var_0.b.b.c))).a, 266f, all(!select(vec3<bool>(true, false, var_0.b.c.c), vec3<bool>(false, var_0.b.d.c, true), var_0.b.d.c))), var_0.b.c, func_2(var_0.b.b.b, _wgslsmith_f_op_f32(-497f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_0.b.c.b)), 644f)))));
    return Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(func_3(Struct_3(u_input.a), var_0, vec2<u32>(u_input.c, u_input.c)), max(u_input.b.x, var_0.a), u_input.b.x, u_input.a) ^ vec4<i32>(1i, ~(-9304i), u_input.a, _wgslsmith_add_i32(-1i, 1i)), vec4<i32>(~40406i, _wgslsmith_dot_vec3_i32(vec3<i32>(11802i, u_input.a, 2147483647i) >> (global0[_wgslsmith_index_u32(4294967295u, 2u)] % vec3<u32>(32u)), vec3<i32>(0i, var_0.a, var_0.a)), -25012i, _wgslsmith_mult_i32(abs(var_0.a), ~(-73041i)))));
}

fn func_7(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_3, arg_3: f32) -> i32 {
    global0 = array<vec3<u32>, 2>();
    global1 = array<vec4<i32>, 5>();
    global0 = array<vec3<u32>, 2>();
    let var_0 = u_input.b.x | (~arg_1 & -36749i);
    let var_1 = min(_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(-1i) * -u_input.b.xy), ~u_input.b.yx), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b.xy, vec2<i32>(arg_1, -2147483647i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.b.x), vec2<i32>(var_0, u_input.a))), vec2<i32>(u_input.a, func_4(8012i))), u_input.b.yy));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_add_i32(_wgslsmith_mod_i32(func_7(vec3<bool>(true, false, true), abs(u_input.a), func_1(), _wgslsmith_f_op_f32(max(-476f, -1015f))), _wgslsmith_sub_i32(max(2421i, 66582i), u_input.a)), _wgslsmith_mult_i32(reverseBits(u_input.a), 9521i)), func_6(Struct_2(1f, func_2(_wgslsmith_f_op_f32(f32(-1f) * -1227f), 673f), Struct_1(global0[_wgslsmith_index_u32(24996u, 2u)] >> (global0[_wgslsmith_index_u32(57311u, 2u)] % vec3<u32>(32u)), func_2(-1631f, -1000f).b, true), Struct_1(~vec3<u32>(u_input.c, 1u, 6730u), _wgslsmith_f_op_f32(-122f * 684f), any(vec4<bool>(true, false, false, true)))), Struct_2(1000f, Struct_1(~global0[_wgslsmith_index_u32(62064u, 2u)], -1000f, false), Struct_1(_wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], vec3<u32>(4294967295u, 1u, u_input.c)), _wgslsmith_f_op_f32(242f + -512f), any(vec3<bool>(false, false, false))), Struct_1(vec3<u32>(0u, u_input.c, 54285u), 1394f, false))).b);
    var var_1 = ~4294967295u;
    global1 = array<vec4<i32>, 5>();
    let var_2 = Struct_2(var_0.b.b.b, var_0.b.b, var_0.b.c, func_6(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1366f + var_0.b.c.b))), var_0.b.c, func_6(Struct_2(var_0.b.d.b, var_0.b.d, Struct_1(var_0.b.c.a, var_0.b.a, var_0.b.b.c), var_0.b.d), var_0.b).b.d, var_0.b.d), func_6(func_6(func_6(var_0.b, Struct_2(var_0.b.a, Struct_1(var_0.b.b.a, -1904f, false), Struct_1(var_0.b.d.a, -249f, true), Struct_1(var_0.b.b.a, var_0.b.a, var_0.b.b.c))).b, var_0.b).b, func_6(Struct_2(-957f, Struct_1(vec3<u32>(var_0.b.b.a.x, u_input.c, var_0.b.c.a.x), var_0.b.c.b, false), Struct_1(vec3<u32>(var_0.b.c.a.x, 77043u, 8914u), var_0.b.c.b, var_0.b.d.c), Struct_1(vec3<u32>(8521u, var_0.b.c.a.x, var_0.b.c.a.x), -238f, false)), func_6(Struct_2(-566f, var_0.b.c, Struct_1(vec3<u32>(u_input.c, var_0.b.c.a.x, 1u), 549f, false), var_0.b.d), var_0.b).b).b).b).b.d);
    var_1 = select(u_input.c, _wgslsmith_sub_u32(var_2.d.a.x, 1u), var_2.c.c);
    let x = u_input.a;
    s_output = StorageBuffer(30813i, u_input.c << (29964u % 32u), ~select(select(vec4<u32>(u_input.c, 0u, var_0.b.c.a.x, u_input.c), vec4<u32>(4294967295u, var_0.b.c.a.x, 0u, 1u), vec4<bool>(var_0.b.b.c, var_2.d.c, var_2.b.c, var_0.b.c.c)) >> (vec4<u32>(var_2.c.a.x, 42154u, 1u, u_input.c) % vec4<u32>(32u)), ~vec4<u32>(var_0.b.d.a.x, 4294967295u, u_input.c, var_2.b.a.x), any(select(vec3<bool>(true, var_2.c.c, true), vec3<bool>(var_2.d.c, var_0.b.c.c, var_2.d.c), vec3<bool>(var_2.b.c, true, var_0.b.d.c)))), max(min(~vec3<i32>(-12774i, -1i, u_input.a), vec3<i32>(u_input.a >> (var_0.b.b.a.x % 32u), _wgslsmith_add_i32(u_input.a, 0i), -2147483647i)), firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(35110i, 0i, var_0.a), u_input.b))));
}

