struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_3,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2>;

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(true, vec3<f32>(316f, -645f, 1658f), vec2<f32>(-695f, -111f), false), Struct_4(true, vec3<f32>(-646f, -1134f, 125f), vec2<f32>(492f, -692f), true), Struct_4(true, vec3<f32>(1918f, -1394f, -1103f), vec2<f32>(1138f, 828f), true), Struct_4(true, vec3<f32>(726f, -488f, -233f), vec2<f32>(-1957f, -242f), false), Struct_4(false, vec3<f32>(-698f, 476f, -1444f), vec2<f32>(-111f, 305f), false), Struct_4(false, vec3<f32>(715f, 1567f, -163f), vec2<f32>(-2337f, -749f), true), Struct_4(true, vec3<f32>(-820f, -1000f, -1286f), vec2<f32>(-455f, 293f), true), Struct_4(true, vec3<f32>(1353f, 955f, -646f), vec2<f32>(620f, -1309f), false), Struct_4(true, vec3<f32>(329f, -1160f, 112f), vec2<f32>(-231f, 1868f), true), Struct_4(false, vec3<f32>(-846f, -224f, -349f), vec2<f32>(1048f, -343f), true), Struct_4(false, vec3<f32>(1554f, 473f, -757f), vec2<f32>(1000f, 888f), true), Struct_4(false, vec3<f32>(-772f, -1000f, -1013f), vec2<f32>(-1825f, 1959f), true), Struct_4(false, vec3<f32>(-876f, 1028f, -1044f), vec2<f32>(-1000f, 1054f), true), Struct_4(false, vec3<f32>(313f, 1000f, -1026f), vec2<f32>(-406f, -1946f), false), Struct_4(true, vec3<f32>(-1705f, -1224f, -502f), vec2<f32>(111f, 1892f), false), Struct_4(true, vec3<f32>(-1000f, -357f, -739f), vec2<f32>(935f, -737f), true), Struct_4(true, vec3<f32>(-1729f, 813f, -221f), vec2<f32>(851f, 158f), false));

var<private> global2: u32 = 0u;

var<private> global3: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(-1095f, Struct_2(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), Struct_1(true, vec3<f32>(-211f, 114f, -2032f), -591f)), Struct_3(609f, Struct_2(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), Struct_1(false, vec3<f32>(-1063f, 494f, 182f), 883f)), Struct_3(-1068f, Struct_2(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), Struct_1(true, vec3<f32>(-681f, -442f, -799f), -1793f)), Struct_3(627f, Struct_2(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), Struct_1(false, vec3<f32>(1985f, 482f, 504f), -263f)), Struct_3(141f, Struct_2(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), Struct_1(true, vec3<f32>(1371f, 937f, -419f), -1757f)), Struct_3(-1940f, Struct_2(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), Struct_1(false, vec3<f32>(-1966f, 774f, 268f), 1365f)), Struct_3(340f, Struct_2(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), Struct_1(true, vec3<f32>(-1563f, -1639f, -150f), 689f)), Struct_3(-701f, Struct_2(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), Struct_1(false, vec3<f32>(-479f, 704f, 1000f), -546f)), Struct_3(-204f, Struct_2(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), Struct_1(false, vec3<f32>(-298f, -1000f, -154f), -1096f)), Struct_3(1000f, Struct_2(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), Struct_1(true, vec3<f32>(-105f, 139f, -805f), -259f)), Struct_3(-1497f, Struct_2(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), Struct_1(false, vec3<f32>(160f, 519f, 1342f), 858f)), Struct_3(795f, Struct_2(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), Struct_1(true, vec3<f32>(915f, -149f, -202f), 361f)), Struct_3(350f, Struct_2(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), Struct_1(false, vec3<f32>(-892f, -1740f, 722f), -648f)), Struct_3(600f, Struct_2(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), Struct_1(true, vec3<f32>(2781f, -1140f, 282f), -1000f)), Struct_3(229f, Struct_2(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), Struct_1(true, vec3<f32>(-558f, -242f, -602f), 654f)), Struct_3(1000f, Struct_2(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), Struct_1(false, vec3<f32>(-1097f, -427f, -601f), -477f)), Struct_3(1343f, Struct_2(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), Struct_1(true, vec3<f32>(-659f, -2052f, 766f), -792f)), Struct_3(-244f, Struct_2(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), Struct_1(false, vec3<f32>(-480f, -215f, -1187f), -1752f)), Struct_3(227f, Struct_2(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), Struct_1(false, vec3<f32>(-419f, -1000f, -259f), -587f)), Struct_3(177f, Struct_2(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), Struct_1(false, vec3<f32>(-570f, 2239f, -718f), -324f)), Struct_3(478f, Struct_2(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), Struct_1(false, vec3<f32>(-1244f, -325f, -2330f), -652f)));

var<private> global4: Struct_4;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>) -> f32 {
    global0 = array<vec4<bool>, 2>();
    global4 = Struct_4(global4.d, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c.x - arg_0.x) - global4.c.x), _wgslsmith_f_op_f32(step(-1000f, -291f)), global4.c.x), vec2<f32>(global4.b.x, arg_0.x), any(select(!(!vec3<bool>(global4.d, true, true)), !vec3<bool>(true, true, global4.d), !(!global4.d))));
    let var_0 = _wgslsmith_add_i32(countOneBits(_wgslsmith_mod_i32(u_input.d, u_input.a.x)), -u_input.c.x);
    let var_1 = 25698u;
    var var_2 = !vec3<bool>(!(!global4.d), arg_1.x, arg_1.x & true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-145f - _wgslsmith_f_op_f32(arg_0.x * -1586f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2220f - arg_0.x)))) * 611f));
}

fn func_2() -> Struct_1 {
    global4 = Struct_4(!global4.a, global4.b, vec2<f32>(global4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), true);
    return Struct_1(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, 91639u, 3443u) >> (vec4<u32>(u_input.b.x, u_input.b.x, 0u, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(u_input.b, u_input.b))) < 1707u, vec3<f32>(850f, _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(512f, 1000f, global4.b.x, global4.b.x)), vec4<f32>(global4.c.x, -1000f, global4.c.x, 545f)), !(!vec2<bool>(global4.a, global4.a)))), global4.b.x), _wgslsmith_f_op_f32(2195f * -827f));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    let var_0 = ~(-3740i);
    global4 = Struct_4(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-3191f - arg_0), _wgslsmith_f_op_f32(189f * -983f), _wgslsmith_f_op_f32(-global4.c.x))) - global4.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.xy), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.c.x, -976f), _wgslsmith_f_op_vec2_f32(arg_1.b.xy * global4.c))))), !all(select(!vec3<bool>(true, true, arg_1.a), !vec3<bool>(arg_1.a, global4.d, arg_1.a), !global4.d)));
    let var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(~firstLeadingBit(min(4294967295u, 1u))), 17u)];
    var var_2 = vec3<bool>(any(select(vec2<bool>(true, true), select(!vec2<bool>(var_1.a, arg_1.a), select(vec2<bool>(var_1.a, false), vec2<bool>(var_1.d, false), vec2<bool>(arg_1.a, true)), !vec2<bool>(var_1.a, global4.d)), vec2<bool>(arg_0 <= var_1.c.x, global4.a))), false, func_2().a);
    var var_3 = vec3<u32>(43486u, ~(arg_2.x | 1u), max(max(40748u, arg_2.x & ~u_input.b.x), select(_wgslsmith_sub_u32(u_input.b.x << (arg_2.x % 32u), max(0u, arg_2.x)), select(firstTrailingBit(u_input.b.x), ~24565u, var_0 == 9121i), _wgslsmith_f_op_f32(f32(-1f) * -1232f) < _wgslsmith_f_op_f32(min(var_1.b.x, -887f)))));
    return all(vec2<bool>(any(select(vec2<bool>(var_1.d, var_2.x), vec2<bool>(var_1.a, arg_1.a), false)) && all(select(vec2<bool>(true, global4.a), vec2<bool>(arg_1.a, false), arg_1.a)), any(var_2.zy) != (~var_3.x >= select(4294967295u, var_3.x, true))));
}

fn func_1() -> Struct_2 {
    global0 = array<vec4<bool>, 2>();
    var var_0 = 1u;
    let var_1 = global4.a;
    let var_2 = vec2<bool>(func_4(global4.b.x, func_2(), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(u_input.b.x), 0u, ~u_input.b.x, ~16777u), _wgslsmith_div_vec4_u32(vec4<u32>(48404u, 63806u, u_input.b.x, 0u), ~u_input.b))), firstTrailingBit(u_input.b.x) < 4294967295u);
    let var_3 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(~(u_input.b.x << (29884u % 32u))), 0u), 2u)], select(!vec4<bool>(true, true, global4.a || false, global4.d), global0[_wgslsmith_index_u32(min(u_input.b.x, ~_wgslsmith_mod_u32(1u, 12501u)), 2u)], vec4<bool>(_wgslsmith_add_u32(1u, 1674u) <= (u_input.b.x << (u_input.b.x % 32u)), any(!vec3<bool>(false, var_2.x, global4.d)), global4.d, func_2().a)));
    return Struct_2(var_3.b, !global0[_wgslsmith_index_u32(1u, 2u)]);
}

fn func_5(arg_0: i32, arg_1: Struct_5, arg_2: vec4<bool>) -> StorageBuffer {
    var var_0 = arg_1.c.c;
    global1 = array<Struct_4, 17>();
    var_0 = arg_1.c.c;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -788f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(804f, 651f)))))), global4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c, var_0.b.x, arg_2.x))))));
    let var_2 = vec3<bool>(false, any(global0[_wgslsmith_index_u32(u_input.b.x, 2u)]), any(vec2<bool>(true, any(!arg_1.c.b.b.wz))));
    return StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(-17370i, ~arg_1.e, _wgslsmith_mult_i32(arg_1.e, -1i), 1i) | select(abs(vec4<i32>(8386i, arg_0, arg_0, u_input.c.x)), _wgslsmith_div_vec4_i32(vec4<i32>(37203i, arg_1.e, 29405i, arg_1.e), vec4<i32>(2147483647i, arg_0, -2147483647i, 1i)), func_4(-2039f, arg_1.c.c, vec4<u32>(u_input.b.x, 32264u, u_input.b.x, 23628u))), ~firstTrailingBit(vec4<i32>(-292i, arg_1.e, u_input.d, 1585i))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1.c.c.c)), 753f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.x, -1649f), vec2<f32>(535f, 1895f))))))), _wgslsmith_add_u32(~u_input.b.x, ~abs(0u)), u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.a + var_1.x))), var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(_wgslsmith_mult_i32(u_input.a.x, 12347i));
    let x = u_input.a;
    s_output = func_5(u_input.c.x, Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4.b.x, 377f, global4.b.x), vec3<f32>(global4.b.x, global4.c.x, global4.b.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global4.b, vec3<f32>(global4.b.x, global4.c.x, 1102f), global4.d)) * vec3<f32>(217f, 308f, global4.b.x))), func_1(), global3[_wgslsmith_index_u32(u_input.b.x & 12173u, 21u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(628f, _wgslsmith_f_op_f32(-global4.c.x), global4.b.x, _wgslsmith_f_op_f32(floor(global4.c.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1469f, global4.c.x, global4.c.x, -1000f))))), u_input.d), !(!vec4<bool>(any(vec2<bool>(global4.a, false)), true, u_input.b.x < u_input.b.x, false)));
}

