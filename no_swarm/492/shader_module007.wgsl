struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = -63922i;

var<private> global2: bool = false;

var<private> global3: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(-419f, 884f, 177f, -1000f), vec4<f32>(-768f, 714f, 1621f, -1462f), vec4<f32>(185f, -1645f, -1337f, -273f), vec4<f32>(1000f, 875f, -840f, 640f), vec4<f32>(-1000f, 176f, 275f, -1000f), vec4<f32>(104f, 298f, 1791f, -146f), vec4<f32>(-724f, -1088f, 464f, -242f), vec4<f32>(1419f, -708f, -1580f, -1921f), vec4<f32>(-509f, -1110f, 456f, 882f), vec4<f32>(-1000f, -263f, 206f, 464f), vec4<f32>(286f, -126f, -343f, -923f), vec4<f32>(-519f, -1819f, -2230f, -847f), vec4<f32>(-414f, 521f, -590f, 1597f), vec4<f32>(819f, 466f, 805f, -123f), vec4<f32>(-334f, 318f, -1003f, 1197f), vec4<f32>(-163f, -1560f, 112f, 569f), vec4<f32>(-552f, 154f, 1000f, 478f), vec4<f32>(-118f, 1156f, -549f, -738f), vec4<f32>(1026f, -1040f, 1013f, -465f), vec4<f32>(-111f, 132f, 163f, -1104f), vec4<f32>(-780f, -140f, 1603f, -1000f), vec4<f32>(748f, 1433f, -1411f, -1000f), vec4<f32>(-596f, 468f, 2349f, 1730f), vec4<f32>(-3476f, -1380f, -1000f, -360f), vec4<f32>(-502f, -1386f, 1640f, 648f), vec4<f32>(-202f, -798f, 736f, -428f), vec4<f32>(1381f, 934f, -409f, 1000f), vec4<f32>(-1793f, 1206f, 1000f, 976f), vec4<f32>(-199f, 778f, 622f, -738f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: i32, arg_3: vec4<u32>) -> i32 {
    var var_0 = Struct_2(arg_3.x, ~(~(arg_3.x << (countOneBits(arg_3.x) % 32u))), arg_3.x, Struct_1(true, -vec4<i32>(~arg_2, arg_2 >> (arg_3.x % 32u), 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -77936i), u_input.a.xy))));
    var var_1 = Struct_2((var_0.c & var_0.c) & ~arg_3.x, _wgslsmith_clamp_u32(0u, 0u, var_0.c), ~reverseBits(arg_3.x), Struct_1(arg_1.x, abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, arg_0, arg_0, arg_0), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 1i, -2147483647i, arg_2), vec4<i32>(arg_0, 2147483647i, arg_0, arg_2)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2, 1952i, 0i, arg_0), vec4<i32>(var_0.d.b.x, u_input.a.x, -18551i, 0i))))));
    var var_2 = (16689u >> (_wgslsmith_div_u32(49562u, firstTrailingBit(~u_input.c)) % 32u)) != max((u_input.c & 0u) & ~firstTrailingBit(18986u), var_1.c);
    let var_3 = Struct_2(~arg_3.x, select(4294967295u, 19371u, true), _wgslsmith_add_u32(reverseBits(~var_1.a), u_input.c), Struct_1(all(vec3<bool>(all(vec4<bool>(true, true, var_0.d.a, true)), true, !arg_1.x)), var_1.d.b));
    global3 = array<vec4<f32>, 29>();
    return ~(~(-1i));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<f32>) -> u32 {
    let var_0 = Struct_1(!all(vec4<bool>(any(vec3<bool>(false, false, true)), true, 25082i <= u_input.a.x, any(vec3<bool>(true, true, false)))), vec4<i32>(-1i) * -vec4<i32>(~u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, 1i, u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), func_3(26573i, vec3<bool>(true, false, false), 31583i, vec4<u32>(u_input.b, 0u, 1u, 0u))));
    let var_1 = 2147483647i;
    var var_2 = Struct_2(select(u_input.c, ~u_input.c, true), _wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(12110u, u_input.b)), ~_wgslsmith_div_u32(7201u << (_wgslsmith_clamp_u32(22750u, u_input.c, u_input.c) % 32u), ~1u), Struct_1(all(select(vec2<bool>(var_0.a, true), vec2<bool>(true, true), vec2<bool>(var_0.a, false))), max(select(reverseBits(var_0.b), var_0.b << (vec4<u32>(u_input.c, u_input.c, u_input.c, 41532u) % vec4<u32>(32u)), vec4<bool>(false, false, true, true)), vec4<i32>(countOneBits(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_0.b.x, var_0.b.x), u_input.a), var_0.b.x, var_0.b.x))));
    var var_3 = arg_1 != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.x), -659f, var_2.d.a))));
    let var_4 = arg_0;
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(abs(107247u), 1u, 0u), ~vec3<u32>(40191u, 79860u, u_input.c)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, ~var_2.a, reverseBits(19081u)), ~(vec3<u32>(0u, u_input.c, u_input.c) | vec3<u32>(18787u, var_2.c, 1u))) | ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(8324u, 71593u), vec2<u32>(var_2.a, 1u)), ~u_input.b, 56287u & u_input.c));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = true;
    let var_1 = 70767u;
    var var_2 = Struct_2(~var_1, 12903u, ~(~(~(~0u))), arg_1.d);
    var var_3 = _wgslsmith_div_u32(_wgslsmith_add_u32(arg_1.a, var_1), 12628u);
    global2 = select(all(select(vec3<bool>(var_2.d.a, true, true), select(vec3<bool>(false, arg_1.d.a, var_2.d.a), select(vec3<bool>(var_2.d.a, false, true), vec3<bool>(true, var_2.d.a, arg_1.d.a), vec3<bool>(false, arg_1.d.a, var_2.d.a)), false), select(vec3<bool>(var_2.d.a, true, true), vec3<bool>(var_2.d.a, arg_1.d.a, var_2.d.a), var_2.d.a))), var_2.d.a, arg_1.d.a);
    return arg_1.d;
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(922f, _wgslsmith_f_op_f32(abs(-828f)), _wgslsmith_f_op_f32(f32(-1f) * -508f), 1697f)), Struct_2(countOneBits(~_wgslsmith_sub_u32(1u, u_input.c)), func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-919f, 838f, 763f, -604f)), global3[_wgslsmith_index_u32(~u_input.c, 29u)], vec4<bool>(true, true, true, true))), 414f, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(1044f, 1000f), vec2<f32>(1000f, -1798f)), vec2<f32>(828f, -1000f)))), 1u, Struct_1(false, -(~vec4<i32>(74425i, -19142i, u_input.a.x, u_input.a.x)))));
    let var_1 = vec4<u32>(u_input.c, ~_wgslsmith_add_u32(~u_input.c, 1u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(54800u, 51404u, 18281u, u_input.b)), countOneBits(vec4<u32>(u_input.c, u_input.c, u_input.c, 1u))) << (func_2(vec4<f32>(_wgslsmith_div_f32(-257f, 998f), _wgslsmith_div_f32(546f, -536f), _wgslsmith_f_op_f32(891f - -441f), _wgslsmith_f_op_f32(min(-738f, 1538f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(941f - 600f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-539f, 456f))))) % 32u), ~1u);
    let var_2 = ~_wgslsmith_div_vec2_u32(var_1.xw, var_1.yz);
    global1 = 1i;
    let var_3 = Struct_2(0u, (var_2.x ^ u_input.c) & abs(var_2.x), 4294967295u, var_0);
    return Struct_2(_wgslsmith_mult_u32(~(~(~71416u)), var_3.a), var_2.x, 3842u, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global3 = array<vec4<f32>, 29>();
    var var_1 = func_1();
    let var_2 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(369f * -940f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-371f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1600f + 691f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-188f, 1334f))))), 762f), func_1());
    var var_3 = select(_wgslsmith_mod_u32(~u_input.b, _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.c, ~24963u), var_0.c)), 4294967295u, 0i < abs(func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(846f, -441f, 584f, -1000f), vec4<f32>(348f, 484f, -916f, -1025f), vec4<bool>(var_1.d.a, var_1.d.a, var_1.d.a, true))), func_1()).b.x));
    var var_4 = Struct_2(83405u, select(1u, var_1.b, true), u_input.c, Struct_1(true, _wgslsmith_sub_vec4_i32(vec4<i32>(~1i, i32(-1i) * -72836i, -82494i, 1i), var_0.d.b)));
    var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-789f, 712f), vec2<f32>(500f, -132f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1166f, -976f) + vec2<f32>(415f, 147f))), vec2<f32>(_wgslsmith_f_op_f32(386f * 1287f), 1002f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-306f, 1703f))), vec2<bool>(var_1.d.a, func_1().d.a | false))), _wgslsmith_div_vec4_i32(-var_2.b, func_1().d.b), 1i, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(428u, var_1.a), 29u)]);
}

