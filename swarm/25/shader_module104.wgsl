struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(28695i), Struct_2(vec3<f32>(-1000f, 1088f, 225f)), Struct_2(vec3<f32>(712f, -1327f, 1756f)), Struct_1(i32(-2147483648)));

var<private> global1: i32;

var<private> global2: f32 = -1088f;

var<private> global3: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec3<f32>(1000f, -1868f, -247f)), Struct_2(vec3<f32>(-385f, -1381f, -831f)), Struct_2(vec3<f32>(-157f, -425f, -637f)), Struct_2(vec3<f32>(-1426f, -1298f, -1000f)), Struct_2(vec3<f32>(333f, 791f, 2064f)), Struct_2(vec3<f32>(846f, 968f, -274f)), Struct_2(vec3<f32>(826f, -194f, 1090f)), Struct_2(vec3<f32>(2570f, -1318f, 1510f)), Struct_2(vec3<f32>(-594f, -145f, 591f)), Struct_2(vec3<f32>(263f, -1559f, -1000f)), Struct_2(vec3<f32>(199f, 118f, 944f)), Struct_2(vec3<f32>(-1892f, -1536f, -260f)), Struct_2(vec3<f32>(821f, -1433f, 239f)), Struct_2(vec3<f32>(328f, -963f, 1000f)), Struct_2(vec3<f32>(-187f, 310f, 157f)), Struct_2(vec3<f32>(2289f, 558f, 684f)), Struct_2(vec3<f32>(-393f, -586f, 1000f)), Struct_2(vec3<f32>(604f, -650f, 327f)), Struct_2(vec3<f32>(-147f, -428f, -1000f)));

var<private> global4: array<bool, 30>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(vec3<f32>(-2824f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.a.x - 116f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -121f), 304f)) * global0.c.a.x)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-668f)), 463f);
    global1 = -_wgslsmith_mult_i32(global0.a.a, global0.a.a);
    var var_2 = vec2<u32>(58583u, 1u);
    let var_3 = Struct_3(Struct_1(u_input.a.x), Struct_2(var_0.a), Struct_2(var_0.a), Struct_1(abs(1i)));
    return select(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(global4[_wgslsmith_index_u32(var_2.x, 30u)], global4[_wgslsmith_index_u32(0u, 30u)], global4[_wgslsmith_index_u32(113465u, 30u)], true), vec4<bool>(true, false, global4[_wgslsmith_index_u32(8963u, 30u)], true), global4[_wgslsmith_index_u32(7719u, 30u)]), select(vec4<bool>(false, global4[_wgslsmith_index_u32(var_2.x, 30u)], global4[_wgslsmith_index_u32(var_2.x, 30u)], global4[_wgslsmith_index_u32(1u, 30u)]), vec4<bool>(false, false, global4[_wgslsmith_index_u32(var_2.x, 30u)], true), true))), vec4<bool>(any(select(!vec3<bool>(true, global4[_wgslsmith_index_u32(66676u, 30u)], true), select(vec3<bool>(true, global4[_wgslsmith_index_u32(var_2.x, 30u)], false), vec3<bool>(global4[_wgslsmith_index_u32(var_2.x, 30u)], true, true), global4[_wgslsmith_index_u32(var_2.x, 30u)]), select(vec3<bool>(false, global4[_wgslsmith_index_u32(0u, 30u)], true), vec3<bool>(true, false, global4[_wgslsmith_index_u32(var_2.x, 30u)]), vec3<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 30u)], true)))), true, !all(vec4<bool>(false, false, global4[_wgslsmith_index_u32(var_2.x, 30u)], global4[_wgslsmith_index_u32(1u, 30u)])), all(!(!vec4<bool>(true, global4[_wgslsmith_index_u32(0u, 30u)], true, global4[_wgslsmith_index_u32(4294967295u, 30u)])))), ((var_2.x < 4294967295u) | false) || global4[_wgslsmith_index_u32(~var_2.x, 30u)]);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: bool, arg_3: i32) -> i32 {
    global4 = array<bool, 30>();
    var var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(~2147483647i, min(arg_1.x, arg_0.x), ~0i), vec3<i32>(global0.a.a, 0i, _wgslsmith_add_i32(u_input.a.x, global0.a.a)), vec3<i32>(_wgslsmith_mult_i32(-1i, -2147483647i), _wgslsmith_mod_i32(-1i, arg_1.x), u_input.a.x)) << (~vec3<u32>(~1u, 1u, _wgslsmith_mult_u32(0u, 42358u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(~arg_3, global0.d.a ^ global0.a.a, ~arg_0.x), _wgslsmith_mult_i32(arg_1.x, 19457i)), -53731i << (_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(0u, 9432u)) % 32u), 28822i));
    let var_1 = vec3<bool>(any(select(vec4<bool>(all(vec4<bool>(arg_2, global4[_wgslsmith_index_u32(4294967295u, 30u)], arg_2, global4[_wgslsmith_index_u32(28400u, 30u)])), !arg_2, true, arg_2), func_3(), vec4<bool>(arg_2, func_3().x, arg_2, any(vec3<bool>(arg_2, false, false))))), true, global4[_wgslsmith_index_u32(~(65626u << ((_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 60187u, 52789u, 6974u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u)) >> (11714u % 32u)) % 32u)), 30u)]);
    let var_2 = vec3<f32>(global0.c.a.x, -1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c.a.x))))))));
    let var_3 = global0.a;
    return u_input.a.x;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(global0.c.a, global0.b.a))))), _wgslsmith_f_op_vec3_f32(step(global0.b.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.a.x, global0.b.a.x, -238f)))), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, global4[_wgslsmith_index_u32(0u, 30u)], global4[_wgslsmith_index_u32(52725u, 30u)]), vec3<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 30u)], global4[_wgslsmith_index_u32(33976u, 30u)]))))));
    var var_1 = Struct_1(_wgslsmith_add_i32(-arg_1, -2147483647i));
    var var_2 = vec2<u32>(firstTrailingBit(_wgslsmith_clamp_u32(countOneBits(20996u), ~firstTrailingBit(4294967295u), ~4294967295u & select(0u, 77256u, global4[_wgslsmith_index_u32(0u, 30u)]))), ~1u);
    var var_3 = !global4[_wgslsmith_index_u32(4294967295u, 30u)];
    let var_4 = ~vec4<i32>(u_input.a.x >> (20714u % 32u), 2147483647i, -(~(~32309i)), 29413i);
    return Struct_1(~countOneBits(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global0.a.a, global0.d.a, 1i), arg_2.x, countOneBits(arg_0.d.a))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: bool) -> Struct_3 {
    global3 = array<Struct_2, 19>();
    let var_0 = ~abs(countOneBits(vec3<u32>(212u, ~1u, 62275u)));
    var var_1 = true;
    global0 = arg_0;
    let var_2 = u_input.a.x;
    return Struct_3(func_4(Struct_3(Struct_1(-7599i), arg_0.c, global0.c, global0.a), var_2, vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.a, u_input.a.x), u_input.a.xy), firstTrailingBit(u_input.a.x), firstTrailingBit(_wgslsmith_div_i32(arg_1.x, -57348i))), Struct_1(func_2(-vec4<i32>(u_input.a.x, -1i, -37988i, 17561i), -vec2<i32>(2147483647i, -1i), any(vec3<bool>(false, arg_2, false)), arg_1.x >> (var_0.x % 32u)))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-global0.b.a.x), _wgslsmith_f_op_f32(trunc(-1079f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.x)))), arg_0.c, arg_0.d);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    global0 = arg_2;
    var var_0 = -36607i;
    var var_1 = arg_2;
    var var_2 = func_1(Struct_3(Struct_1(-1i), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c.a) + vec3<f32>(-1698f, 880f, arg_1.x))), Struct_2(global0.c.a), global0.d), _wgslsmith_add_vec3_i32(u_input.a, _wgslsmith_div_vec3_i32(reverseBits(u_input.a), ~vec3<i32>(global0.a.a, u_input.a.x, arg_2.d.a))), false).c;
    var_0 = u_input.a.x;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(func_1(arg_2, _wgslsmith_sub_vec3_i32(u_input.a, u_input.a), false), max(u_input.a, max(vec3<i32>(u_input.a.x, global0.a.a, 21863i), u_input.a)), any(vec2<bool>(global4[_wgslsmith_index_u32(arg_0.x, 30u)], false)) & global4[_wgslsmith_index_u32(~arg_0.x, 30u)]).b.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.a.x - _wgslsmith_div_f32(arg_1.x, var_1.c.a.x)) + _wgslsmith_f_op_f32(-var_2.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(_wgslsmith_sub_vec2_u32(vec2<u32>(28561u, 4294967295u), vec2<u32>(0u, 30576u)), _wgslsmith_div_vec4_f32(vec4<f32>(-176f, 1904f, global0.c.a.x, global0.b.a.x), vec4<f32>(1899f, global0.c.a.x, 512f, global0.c.a.x)), func_1(Struct_3(global0.a, Struct_2(vec3<f32>(global0.c.a.x, -1000f, global0.b.a.x)), Struct_2(vec3<f32>(global0.b.a.x, global0.c.a.x, 1809f)), Struct_1(global0.d.a)), vec3<i32>(global0.a.a, -77630i, u_input.a.x), global4[_wgslsmith_index_u32(45200u, 30u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(22640u, 1u, 1u), vec3<u32>(55550u, 45079u, 0u)), 19u)]))), _wgslsmith_f_op_f32(select(-488f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -643f) * _wgslsmith_f_op_f32(-global0.c.a.x)), !global4[_wgslsmith_index_u32(~4294967295u, 30u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.a.x * _wgslsmith_f_op_f32(-global0.b.a.x)))));
    let var_2 = global0.c;
    var var_3 = global0.a;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(vec2<u32>(1u, 1u), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1148f), _wgslsmith_f_op_f32(max(-383f, var_1.a.x)), var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(383f, global0.b.a.x, global4[_wgslsmith_index_u32(76276u, 30u)])) * _wgslsmith_f_op_f32(var_2.a.x - global0.b.a.x))), func_1(Struct_3(global0.d, Struct_2(var_2.a), global3[_wgslsmith_index_u32(~0u, 19u)], global0.a), min(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, -7281i)), global4[_wgslsmith_index_u32(firstLeadingBit(0u), 30u)]), global0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(369f - var_2.a.x) * _wgslsmith_div_f32(-666f, var_1.a.x))) * 1016f));
    var_4 = _wgslsmith_f_op_f32(-global0.b.a.x);
    var_3 = func_1(func_1(Struct_3(global0.a, global0.b, global0.b, global0.d), u_input.a, any(select(!vec4<bool>(global4[_wgslsmith_index_u32(1u, 30u)], false, true, true), func_3(), global4[_wgslsmith_index_u32(~0u, 30u)]))), select(-select(u_input.a, u_input.a, global4[_wgslsmith_index_u32(75977u, 30u)]), vec3<i32>(global0.d.a, _wgslsmith_mod_i32(-41178i, -8064i), firstLeadingBit(1845i)), vec3<bool>(any(vec4<bool>(global4[_wgslsmith_index_u32(26011u, 30u)], false, false, global4[_wgslsmith_index_u32(0u, 30u)])), true, global4[_wgslsmith_index_u32(11907u, 30u)])) >> (vec3<u32>(~46354u, countOneBits(countOneBits(0u)), 1654u) % vec3<u32>(32u)), all(vec4<bool>(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~23129u, _wgslsmith_div_u32(85665u, 4294967295u)), 30u)], !all(vec4<bool>(false, global4[_wgslsmith_index_u32(0u, 30u)], true, true)), func_3().x || true, true))).a;
    let var_5 = -firstTrailingBit(abs(vec4<i32>(-1i, 12587i, var_3.a, -64689i) ^ min(vec4<i32>(u_input.a.x, -1i, 8216i, var_3.a), vec4<i32>(-27371i, 1i, -2147483647i, 1i))));
    var var_6 = Struct_2(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -min(global0.d.a, 1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(func_5(~vec2<u32>(50776u, 1u), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1108f, global0.c.a.x, var_2.a.x, 944f), vec4<f32>(434f, var_2.a.x, var_2.a.x, var_2.a.x))), Struct_3(Struct_1(var_3.a), Struct_2(var_2.a), Struct_2(var_1.a), Struct_1(var_3.a)), func_1(Struct_3(Struct_1(1i), global0.b, Struct_2(var_6.a), Struct_1(var_3.a)), vec3<i32>(u_input.a.x, -13435i, global0.d.a), true).b)), 996f, _wgslsmith_f_op_f32(floor(194f)))), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)), vec3<u32>(firstTrailingBit(~select(4294967295u, 34957u, global4[_wgslsmith_index_u32(0u, 30u)])), ~0u, countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(13553u, 57545u), vec2<u32>(1u, 4137u)), ~0u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(var_6.a.x)))), _wgslsmith_f_op_f32(-global0.b.a.x), var_2.a.x));
}

