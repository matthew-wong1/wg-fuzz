struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: u32,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 29>;

var<private> global1: array<f32, 11>;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(vec4<bool>(true, true, true, true), Struct_3(Struct_1(vec4<f32>(-1640f, 607f, -1922f, 600f), false, false, vec4<bool>(false, true, true, false)), vec4<bool>(true, false, true, true), Struct_2(Struct_1(vec4<f32>(366f, 790f, 156f, 1826f), false, true, vec4<bool>(false, false, true, false)), Struct_1(vec4<f32>(2865f, 1000f, -1093f, 1322f), true, false, vec4<bool>(true, true, true, true)), vec2<bool>(true, false)), vec4<f32>(-794f, 1763f, 332f, 176f)), 1u, vec2<u32>(18341u, 0u)), Struct_4(vec4<bool>(false, false, false, false), Struct_3(Struct_1(vec4<f32>(-938f, 415f, -424f, 396f), false, false, vec4<bool>(false, false, true, true)), vec4<bool>(false, true, false, false), Struct_2(Struct_1(vec4<f32>(-620f, -823f, 437f, -883f), false, false, vec4<bool>(true, true, false, true)), Struct_1(vec4<f32>(945f, -429f, -1000f, -1092f), true, false, vec4<bool>(false, true, true, true)), vec2<bool>(false, true)), vec4<f32>(-655f, -1624f, -1000f, 558f)), 42977u, vec2<u32>(55426u, 5260u)), Struct_4(vec4<bool>(false, false, false, true), Struct_3(Struct_1(vec4<f32>(-584f, 703f, 582f, -1353f), true, true, vec4<bool>(false, false, false, true)), vec4<bool>(false, false, true, true), Struct_2(Struct_1(vec4<f32>(-1000f, -1000f, 685f, 1039f), true, true, vec4<bool>(true, true, true, true)), Struct_1(vec4<f32>(-623f, 119f, -202f, -2234f), false, true, vec4<bool>(false, true, false, true)), vec2<bool>(false, true)), vec4<f32>(-665f, 337f, -1462f, 757f)), 20209u, vec2<u32>(0u, 8095u)), Struct_4(vec4<bool>(true, true, false, false), Struct_3(Struct_1(vec4<f32>(274f, 870f, -320f, 560f), false, true, vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, false), Struct_2(Struct_1(vec4<f32>(1095f, -1000f, 400f, -558f), true, true, vec4<bool>(true, true, false, false)), Struct_1(vec4<f32>(-392f, 1030f, 797f, -1023f), false, false, vec4<bool>(true, false, true, false)), vec2<bool>(false, false)), vec4<f32>(772f, -644f, 169f, -570f)), 4294967295u, vec2<u32>(4294967295u, 0u)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(~u_input.b.x, 11u)], 500f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f * 130f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 26194u, 1243u)), 11u)] - _wgslsmith_f_op_f32(trunc(307f))))), false, any(!select(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], false)) & true, vec4<bool>(true || ((458f >= global1[_wgslsmith_index_u32(0u, 11u)]) && (u_input.b.x <= u_input.b.x)), false, countOneBits(-1i) <= u_input.a, !all(global0[_wgslsmith_index_u32(u_input.b.x, 29u)])));
    var var_1 = vec4<f32>(global1[_wgslsmith_index_u32(~u_input.b.x, 11u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)) * global1[_wgslsmith_index_u32(13850u & u_input.b.x, 11u)]))), var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1864f, var_0.a.x) + 636f))), global1[_wgslsmith_index_u32(u_input.b.x, 11u)]));
    var var_2 = vec2<f32>(_wgslsmith_div_f32(1200f, _wgslsmith_f_op_f32(step(1923f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 11u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(201f, -1011f)));
    global2 = ~(~_wgslsmith_sub_u32(~u_input.b.x, ~u_input.b.x));
    global2 = 1u;
    return ~(firstTrailingBit(vec3<i32>(49646i, 0i, 1i) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(29338u, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))) << (~(~select(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(0u, 35920u, 1u), true)) % vec3<u32>(32u)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, u_input.c, -47526i), vec3<i32>(arg_0, -2229i, arg_0) & vec3<i32>(u_input.a, arg_0, -902i)), select(firstTrailingBit(vec3<i32>(arg_0, 71065i, 25007i)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 34350u, u_input.b.x)) % vec3<u32>(32u)), func_3(), false)) & 1i;
    let var_1 = global3[_wgslsmith_index_u32(u_input.b.x, 4u)];
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_1.b.a.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(371f, var_1.b.d.x, var_1.b.d.x, -914f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(var_1.d.x, 11u)], 1760f)))))), var_1.b.a.a.x > 725f, var_1.b.a.d.x, vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x));
    var var_3 = var_1.b;
    let var_4 = Struct_5(select(vec2<u32>(u_input.b.x, 4294967295u), ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(3050u, u_input.b.x)), firstLeadingBit(vec2<u32>(var_1.c, u_input.b.x))), all(vec4<bool>(!var_2.c, false, var_1.c != u_input.b.x, true))), var_2.d.x, u_input.b.x, _wgslsmith_sub_u32(firstTrailingBit(~u_input.b.x), ~min(var_1.c, ~1u)), var_1.b.c.a.c);
    return var_1.b.c;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec4<bool>) -> i32 {
    let var_0 = -_wgslsmith_mult_vec2_i32(abs(vec2<i32>(-51505i, u_input.a)), firstLeadingBit(select(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -3056i), vec2<i32>(u_input.a, u_input.c)), -vec2<i32>(-38532i, u_input.c), global0[_wgslsmith_index_u32(countOneBits(arg_1.x), 29u)])));
    let var_1 = ~(-abs(vec4<i32>(var_0.x ^ var_0.x, -1i, _wgslsmith_sub_i32(21610i, 15301i), -17604i)));
    global2 = ~27214u;
    var var_2 = arg_2.b.d;
    var var_3 = arg_2.b;
    return firstLeadingBit(~(~var_0.x << ((~68684u << (u_input.b.x % 32u)) % 32u)));
}

fn func_5(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<bool>) -> Struct_3 {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(~(~(~u_input.b.x)), u_input.b.x), 21692u);
    var var_1 = _wgslsmith_f_op_f32(368f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -704f) - global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(18405u, u_input.b.x), 11u)]))));
    global0 = array<vec2<bool>, 29>();
    let var_2 = func_2(_wgslsmith_div_i32(arg_1, _wgslsmith_mod_i32(45208i, firstLeadingBit(arg_1) | _wgslsmith_add_i32(arg_1, arg_0.x)))).b;
    global3 = array<Struct_4, 4>();
    return Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(485f, 1031f, 1000f, global1[_wgslsmith_index_u32(18335u, 11u)]), vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 11u)], 623f, 1016f, -363f)))))), true, arg_2.x, func_2(u_input.a).b.d), var_2.d, func_2(arg_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a) + _wgslsmith_div_vec4_f32(var_2.a, var_2.a)));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(arg_2.a.x + -359f);
    let var_1 = Struct_4(arg_2.d, func_5(arg_1.xxw, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2268f, 615f, -862f, var_0))), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 0u) & vec3<u32>(1u, 0u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 1u)), func_2(1i), arg_2.d), func_2(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, -33581i, -2147483647i), arg_1)).c), firstTrailingBit(31424u), u_input.b);
    return func_2(41988i).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec4_i32(vec4<i32>(-u_input.a, 1i ^ u_input.c, u_input.a >> (63622u % 32u), -1i), vec4<i32>(_wgslsmith_sub_i32(39403i, u_input.a), u_input.a, abs(u_input.a), firstLeadingBit(43360i))), u_input.b.x, select(firstLeadingBit(u_input.b.x), select(u_input.b.x, u_input.b.x, false) << (1u % 32u), func_1(max(41003u, 0u), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.c, -57120i, u_input.a), vec4<i32>(26733i, 0i, 49777i, 43289i)), Struct_1(vec4<f32>(226f, -385f, global1[_wgslsmith_index_u32(30784u, 11u)], -1557f), true, true, vec4<bool>(false, false, false, true)))) << (4294967295u % 32u), _wgslsmith_mult_u32(35178u | (min(u_input.b.x, 64989u) & firstTrailingBit(37619u)), u_input.b.x));
}

