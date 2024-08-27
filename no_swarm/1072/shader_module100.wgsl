struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<f32>(-461f, 531f, 1240f), false), Struct_1(vec3<f32>(905f, -769f, 265f), false), Struct_1(vec3<f32>(-941f, -982f, 654f), true), Struct_1(vec3<f32>(-461f, 1900f, -1796f), true), Struct_1(vec3<f32>(-255f, 1196f, 1141f), false), Struct_1(vec3<f32>(1301f, -740f, -299f), true), Struct_1(vec3<f32>(-1000f, -921f, 361f), false), Struct_1(vec3<f32>(2165f, 1185f, -1000f), true), Struct_1(vec3<f32>(849f, -933f, 1000f), false), Struct_1(vec3<f32>(809f, -860f, -651f), true), Struct_1(vec3<f32>(-225f, 686f, 467f), true), Struct_1(vec3<f32>(1690f, 543f, -1440f), false), Struct_1(vec3<f32>(208f, 1625f, -490f), false), Struct_1(vec3<f32>(-1034f, 686f, -1511f), true), Struct_1(vec3<f32>(754f, 2305f, 105f), true), Struct_1(vec3<f32>(-309f, -597f, -819f), false), Struct_1(vec3<f32>(-535f, -1496f, -158f), false), Struct_1(vec3<f32>(-2339f, -2124f, -1051f), true), Struct_1(vec3<f32>(918f, 190f, 1289f), true), Struct_1(vec3<f32>(-354f, 585f, -245f), true), Struct_1(vec3<f32>(-609f, 875f, -1136f), true), Struct_1(vec3<f32>(-1609f, 1400f, 665f), false));

var<private> global2: array<f32, 8>;

var<private> global3: array<u32, 22>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    global3 = array<u32, 22>();
    let var_0 = ~_wgslsmith_dot_vec4_i32(min(~vec4<i32>(-75092i, -26453i, 2147483647i, 32106i) >> (vec4<u32>(1u, 72818u, global3[_wgslsmith_index_u32(u_input.b.x, 22u)], 31403u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(select(vec4<i32>(1i, -17969i, 53730i, 72965i), vec4<i32>(-7293i, 1i, 1i, 0i), true), _wgslsmith_mult_vec4_i32(vec4<i32>(-19i, 0i, 1i, 1i), vec4<i32>(17486i, 1i, -2147483647i, -1i)))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-37269i, 0i, 29604i, -10025i), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -1i, 2502i, -6653i), vec4<i32>(22162i, -10961i, 2147483647i, -2147483647i))));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], ~_wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(43943u, 22u)], global3[_wgslsmith_index_u32(4294967295u, 22u)], 97269u, 4294967295u), vec4<u32>(34860u, 0u, u_input.b.x, 18324u) << (vec4<u32>(90112u, u_input.b.x, global3[_wgslsmith_index_u32(0u, 22u)], 16762u) % vec4<u32>(32u))) << (~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.b.x) % vec4<u32>(32u)), !(!select(!vec4<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 22u)], 27u)], true, false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], true, true, global0[_wgslsmith_index_u32(4294967295u, 27u)]), global0[_wgslsmith_index_u32(33407u, 27u)])), Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(4294967295u, 22u)], u_input.b.x)), 22u)], 8u)], -378f, global2[_wgslsmith_index_u32(17113u, 8u)]), true));
    global1 = array<Struct_1, 22>();
    var var_2 = var_1.b;
    return var_1.a.a;
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    global0 = array<bool, 27>();
    let var_0 = -1i;
    var var_1 = select(arg_0, select(select(!vec4<bool>(true, arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), select(vec4<bool>(arg_0.x, false, false, global0[_wgslsmith_index_u32(70614u, 27u)]), arg_0, vec4<bool>(arg_0.x, global0[_wgslsmith_index_u32(79701u, 27u)], true, global0[_wgslsmith_index_u32(28813u, 27u)])), _wgslsmith_add_u32(u_input.a, u_input.a) != 1u), !vec4<bool>(true, global0[_wgslsmith_index_u32(max(50280u, global3[_wgslsmith_index_u32(u_input.b.x, 22u)]), 27u)], all(vec2<bool>(false, false)), true), !(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], arg_0.x, false, arg_0.x))), global0[_wgslsmith_index_u32(countOneBits(global3[_wgslsmith_index_u32(u_input.a, 22u)]), 27u)]);
    global2 = array<f32, 8>();
    let var_2 = vec3<f32>(-265f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1220f, _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(1u, 8u)])), var_1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -516f)) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~u_input.a, 8u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 8u)] * global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 8u)]) * -344f))), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~u_input.a, 8u)], global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(~global3[_wgslsmith_index_u32(6604u, 22u)], 40786u)), 8u)]));
    return Struct_2(Struct_1(var_2, any(arg_0.zwx)), vec4<u32>(~(~u_input.b.x), u_input.b.x, ~u_input.a | ~1u, u_input.b.x), arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(func_3(101212u > _wgslsmith_sub_u32(u_input.a, 0u))), any(vec2<bool>(true, select(arg_0.x, false, false)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, _wgslsmith_f_op_f32(ceil(483f)), 989f, arg_3.a.x));
    var var_1 = global1[_wgslsmith_index_u32(u_input.b.x, 22u)];
    global1 = array<Struct_1, 22>();
    let var_2 = func_2(!vec4<bool>(any(vec4<bool>(arg_0.x, false, false, global0[_wgslsmith_index_u32(35077u, 27u)])), true & var_1.b, ~global3[_wgslsmith_index_u32(u_input.b.x, 22u)] == _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 9233u, 0u), vec3<u32>(u_input.b.x, u_input.a, 8563u)), all(arg_1) || all(arg_1.zy)));
    let var_3 = var_2;
    return Struct_4(-32269i, arg_3.a, false);
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_4, arg_3: f32) -> u32 {
    global3 = array<u32, 22>();
    let var_0 = func_1(arg_0, arg_0.wyy, max(_wgslsmith_add_vec3_i32(~(vec3<i32>(1i, 19316i, arg_2.a) | vec3<i32>(arg_2.a, -60384i, arg_2.a)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(25786i, 19075i, arg_2.a), vec3<i32>(-21191i, arg_2.a, arg_2.a))), ~(~vec3<i32>(-70429i, arg_2.a, arg_2.a)) >> ((reverseBits(vec3<u32>(81559u, 45919u, 0u)) & _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(arg_1, 63366u, 1u))) % vec3<u32>(32u))), global1[_wgslsmith_index_u32(arg_1, 22u)]);
    global2 = array<f32, 8>();
    var var_1 = Struct_4(arg_2.a, _wgslsmith_f_op_vec3_f32(-func_1(!vec4<bool>(false, true, arg_2.c, true), vec3<bool>(true, true, !arg_0.x), -(vec3<i32>(2147483647i, -50108i, arg_2.a) ^ vec3<i32>(arg_2.a, 1i, var_0.a)), func_2(!vec4<bool>(arg_0.x, arg_2.c, true, true)).d).b), arg_0.x);
    global2 = array<f32, 8>();
    return u_input.b.x;
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> Struct_2 {
    global3 = array<u32, 22>();
    let var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, arg_1.a, arg_1.a, select(arg_1.a, arg_1.a, true)), -select(vec4<i32>(-18689i, 3538i, arg_1.a, arg_1.a), vec4<i32>(-2147483647i, -25491i, -12279i, arg_1.a), true)) & (arg_1.a >> (4294967295u % 32u));
    global1 = array<Struct_1, 22>();
    return func_2(!(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], select(true, arg_1.c, true), true, global0[_wgslsmith_index_u32(29166u, 27u)] & true)));
}

fn func_6(arg_0: Struct_2) -> i32 {
    global1 = array<Struct_1, 22>();
    var var_0 = select(select(arg_0.c, !func_5(0u, func_1(arg_0.c, vec3<bool>(false, arg_0.a.b, false), vec3<i32>(22833i, -2147483647i, -2147483647i), global1[_wgslsmith_index_u32(u_input.a, 22u)])).c, !(!func_2(arg_0.c).c)), vec4<bool>(global0[_wgslsmith_index_u32(countOneBits(~1u), 27u)], ((arg_0.a.b & false) & false) || !func_1(arg_0.c, vec3<bool>(arg_0.a.b, global0[_wgslsmith_index_u32(0u, 27u)], arg_0.d.b), vec3<i32>(56072i, 1i, -4481i), global1[_wgslsmith_index_u32(1u, 22u)]).c, true, any(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 27u)], true))), !vec4<bool>(true, false, false & all(vec2<bool>(false, true)), global0[_wgslsmith_index_u32(0u, 27u)]));
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 22u)], 8u)], vec4<u32>(~23856u, 0u, ~_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(abs(16573u), 22u)], 0u >> (global3[_wgslsmith_index_u32(arg_0.b.x, 22u)] % 32u)), ~(max(4294967295u, 32089u) ^ global3[_wgslsmith_index_u32(arg_0.b.x, 22u)])), 948f, true);
    global2 = array<f32, 8>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(~func_4(arg_0.c, 40302u, Struct_4(-22466i, vec3<f32>(global2[_wgslsmith_index_u32(arg_0.b.x, 8u)], var_1.a, 2464f), false), arg_0.a.a.x) ^ 1u, 8u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(func_1(vec4<bool>(var_1.d, var_0.x, var_1.d, arg_0.c.x), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(var_1.b.x, 27u)], true), vec3<i32>(2147483647i, -38536i, 2190i), Struct_1(arg_0.a.a, false)).c)).x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-367f + _wgslsmith_f_op_f32(trunc(-864f))))), 244f));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 8>();
    let var_0 = select(vec2<u32>(~(~(~4294967295u)), 1u), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(u_input.a), 0u), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 60832u), max(u_input.b.zx, vec2<u32>(global3[_wgslsmith_index_u32(8163u, 22u)], 0u)))), _wgslsmith_div_vec2_u32(vec2<u32>(17769u, ~u_input.b.x), ~(~vec2<u32>(1435u, global3[_wgslsmith_index_u32(4294967295u, 22u)])))), vec2<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(44504u, 23889u)), 22u)]), 27u)] && global0[_wgslsmith_index_u32(u_input.a, 27u)], !(_wgslsmith_dot_vec4_i32(vec4<i32>(24892i, -1i, -1i, 2147483647i), vec4<i32>(-9906i, 1931i, -53905i, -1064i)) > -17997i)));
    global0 = array<bool, 27>();
    var var_1 = ~(~vec3<i32>(~select(2147483647i, -23004i, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), _wgslsmith_div_i32(i32(-1i) * -32707i, select(1i, -10522i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 22u)], 27u)])), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 62753i, -1i, 12249i), countOneBits(vec4<i32>(-1i, 6089i, -136i, 57948i)))));
    let var_2 = Struct_4(func_6(func_5(func_4(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 27u)], true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24297u, 22u)], 27u)]), ~u_input.a, func_1(vec4<bool>(true, true, false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(70723u, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)]), vec3<i32>(var_1.x, var_1.x, -2147483647i), global1[_wgslsmith_index_u32(1u, 22u)]), _wgslsmith_f_op_f32(f32(-1f) * -239f)), Struct_4(~11590i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(642f, 1082f, global2[_wgslsmith_index_u32(82202u, 8u)])), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 22u)], 8u)], global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]) + vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 8u)], -1000f, 1320f)) * func_2(func_2(vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0.x, 27u)], false)).c).a.a)), select(all(func_5(~0u, Struct_4(var_1.x, vec3<f32>(-442f, -264f, global2[_wgslsmith_index_u32(4294967295u, 8u)]), false)).c), !all(select(vec2<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16088u, 22u)], 27u)], true), vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 27u)]), vec2<bool>(true, false))), false));
    global3 = array<u32, 22>();
    global0 = array<bool, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(-(-17410i & var_2.a)), var_1.x, var_2.a, max(abs(var_1.x), ~_wgslsmith_sub_i32(var_2.a, 55497i))), ~firstTrailingBit(~var_1.zx | ~var_1.xz));
}

