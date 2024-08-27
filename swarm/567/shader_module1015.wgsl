struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<u32>, 23>;

var<private> global2: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-1009f, 1177f, 836f, 1498f), vec4<f32>(2045f, -327f, 1121f, -256f), vec4<f32>(-1049f, -1019f, -927f, -1000f), vec4<f32>(950f, -1301f, -355f, -1038f), vec4<f32>(1000f, -512f, -1481f, -394f), vec4<f32>(-1840f, 1385f, -898f, 258f), vec4<f32>(-255f, -347f, -1000f, -1135f), vec4<f32>(-255f, 343f, 1446f, 1657f), vec4<f32>(-1000f, 1347f, -2619f, -1308f), vec4<f32>(-735f, -581f, -228f, 1481f), vec4<f32>(-1273f, -1644f, -584f, 592f), vec4<f32>(-903f, 645f, -676f, 718f), vec4<f32>(-265f, 136f, 1299f, 1481f), vec4<f32>(-676f, 391f, -778f, 968f), vec4<f32>(-1000f, -1687f, 630f, -522f), vec4<f32>(159f, 380f, 2683f, 226f), vec4<f32>(708f, -185f, 1191f, 1021f), vec4<f32>(-1667f, 1177f, 1146f, -206f), vec4<f32>(790f, -1168f, 339f, -1000f), vec4<f32>(-314f, 793f, 1417f, -1000f), vec4<f32>(791f, 1000f, 232f, 1126f), vec4<f32>(1111f, -876f, 742f, 202f), vec4<f32>(1358f, 560f, -2245f, 486f), vec4<f32>(462f, 1119f, -147f, 688f), vec4<f32>(-388f, 309f, 1108f, 794f), vec4<f32>(705f, 1905f, -1695f, 558f));

var<private> global3: array<u32, 27>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec3<bool>) -> vec4<i32> {
    var var_0 = Struct_3(global0.a);
    let var_1 = global0.a;
    let var_2 = Struct_2(select(select(!(!vec4<bool>(false, true, true, var_1.c)), vec4<bool>(var_0.a.c, global0.a.c, true, arg_1), !vec4<bool>(false, false, var_1.c, false)), !select(select(vec4<bool>(arg_1, true, false, false), vec4<bool>(false, true, true, arg_2.x), vec4<bool>(arg_1, arg_1, arg_2.x, arg_2.x)), select(vec4<bool>(arg_1, true, arg_2.x, global0.a.c), vec4<bool>(false, false, true, false), true), !arg_2.x), arg_1), _wgslsmith_clamp_i32(u_input.d ^ ((2147483647i >> (u_input.a % 32u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(15391u, global0.a.a), u_input.c.yx) % 32u)), abs(7824i), u_input.d >> (8369u % 32u)), vec4<u32>(var_1.a, u_input.c.x, 1u, 4294967295u) | countOneBits(vec4<u32>(arg_0, _wgslsmith_dot_vec4_u32(u_input.c, global1[_wgslsmith_index_u32(var_0.a.b.x, 23u)]), ~var_0.a.a, global3[_wgslsmith_index_u32(0u, 27u)] >> (arg_0 % 32u))));
    var var_3 = select(vec2<bool>(all(select(vec3<bool>(false, true, arg_2.x), vec3<bool>(true, true, true), false)), false), !(!vec2<bool>(false, select(false, global0.a.c, false))), global0.a.c);
    let var_4 = !(!vec4<bool>(all(select(var_2.a, var_2.a, true)), var_2.a.x, all(select(vec2<bool>(global0.a.c, var_0.a.c), vec2<bool>(false, false), arg_2.zy)), !all(arg_2.xx)));
    return _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, var_2.b, u_input.d), vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.b.x)), countOneBits(vec4<i32>(2147483647i, u_input.b.x, var_2.b, u_input.d)), vec4<i32>(var_2.b, 0i, var_2.b, u_input.d))), ~(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 0i, -61647i, u_input.d))), -countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-17738i, u_input.d, 6816i, 1i), vec4<i32>(u_input.d, u_input.b.x, -2147483647i, var_2.b))));
}

fn func_2(arg_0: u32, arg_1: i32) -> u32 {
    global1 = array<vec4<u32>, 23>();
    global3 = array<u32, 27>();
    global2 = array<vec4<f32>, 26>();
    let var_0 = ~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, ~_wgslsmith_mod_u32(~1u, reverseBits(39524u))), 27u)];
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(0i | arg_1, 1i, u_input.d << (32149u % 32u), u_input.b.x), func_3(~107158u, (global0.a.a & 1u) >= 17754u, select(select(vec3<bool>(global0.a.c, global0.a.c, false), vec3<bool>(global0.a.c, global0.a.c, global0.a.c), vec3<bool>(true, false, false)), select(vec3<bool>(global0.a.c, global0.a.c, true), vec3<bool>(global0.a.c, global0.a.c, global0.a.c), vec3<bool>(false, global0.a.c, true)), vec3<bool>(true, true, true)))), select(func_3(~0u, true, select(vec3<bool>(global0.a.c, global0.a.c, global0.a.c), vec3<bool>(false, true, global0.a.c), vec3<bool>(global0.a.c, global0.a.c, false))), ~(~vec4<i32>(13611i, arg_1, 55758i, arg_1)), vec4<bool>(!global0.a.c, true, select(false, true, true), !global0.a.c)) << ((firstLeadingBit(u_input.c) >> (_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.c.x, 14432u, global3[_wgslsmith_index_u32(global0.a.a, 27u)], 1u), u_input.c, vec4<bool>(true, false, false, true)), ~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(0u, 27u)], var_0, arg_0)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return arg_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>) -> vec2<i32> {
    var var_0 = arg_1.x;
    let var_1 = (select(func_2(4294967295u, min(32893i, u_input.d)), ~global3[_wgslsmith_index_u32(global0.a.a, 27u)], true) >> (~4294967295u % 32u)) << (54637u % 32u);
    let var_2 = Struct_2(!(!(!(!vec4<bool>(true, global0.a.c, global0.a.c, global0.a.c)))), abs(35416i), vec4<u32>(~(~var_1), reverseBits(~(1u << (global0.a.b.x % 32u))), _wgslsmith_sub_u32(firstLeadingBit(~96791u), var_1), 0u));
    var var_3 = select(vec3<bool>(true, any(var_2.a.xxz), true), var_2.a.wyx, vec3<bool>(!global0.a.c, var_2.a.x | var_2.a.x, global0.a.c));
    var_0 = func_3(1u, true, var_2.a.wzw).x;
    return select(arg_1.zz, vec2<i32>(-69430i, 2147483647i), global0.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1(~vec2<u32>(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(84926u, 27u)]), 38214u), ~(vec4<i32>(-1i) * -vec4<i32>(0i, u_input.d, -2147483647i, 43131i)));
    var var_1 = Struct_2(select(vec4<bool>(!(false || global0.a.c), all(select(vec4<bool>(global0.a.c, false, true, global0.a.c), vec4<bool>(true, true, global0.a.c, global0.a.c), false)), any(vec2<bool>(global0.a.c, global0.a.c)), all(vec4<bool>(global0.a.c, global0.a.c, global0.a.c, true)) & true), !vec4<bool>(all(vec2<bool>(global0.a.c, true)), true, global0.a.c, true), select(global0.a.c, global0.a.c, !all(vec4<bool>(global0.a.c, true, global0.a.c, false)))), ~var_0.x, vec4<u32>(max(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), _wgslsmith_add_u32(82257u, global3[_wgslsmith_index_u32(4294967295u, 27u)])) >> (global0.a.a % 32u), u_input.c.x, ~1u, select(_wgslsmith_sub_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(1u, 27u)], 1u), 30382u << (global3[_wgslsmith_index_u32(16131u, 27u)] % 32u)), 1u, true)));
    var_0 = -_wgslsmith_div_vec2_i32(u_input.b.yy, u_input.b.xy);
    var var_2 = global0.a;
    var_1 = Struct_2(!select(vec4<bool>(!var_2.c, global0.a.c, global0.a.c && var_1.a.x, false), !select(var_1.a, vec4<bool>(global0.a.c, false, true, true), vec4<bool>(true, var_1.a.x, false, var_1.a.x)), vec4<bool>(!var_2.c, true, true && global0.a.c, var_2.c)), var_1.b, ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, var_2.a, var_2.a, 12464u), global1[_wgslsmith_index_u32(var_2.b.x, 23u)], global1[_wgslsmith_index_u32(var_2.a, 23u)])) | vec4<u32>(_wgslsmith_add_u32(~27687u, global0.a.b.x), _wgslsmith_dot_vec2_u32(~var_2.b, abs(var_2.b)), 1u, 4294967295u ^ u_input.a));
    let var_3 = Struct_3(Struct_1(func_2(var_1.c.x, -16701i), var_2.b, true));
    var_1 = Struct_2(vec4<bool>(true, !all(var_1.a), var_1.a.x, var_3.a.c), _wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.x & u_input.d, 2147483647i), -2147483647i), global1[_wgslsmith_index_u32((var_2.a | ~u_input.c.x) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(9681u, 4294967295u), vec2<u32>(81046u, global0.a.b.x)) % 32u), 23u)] << (vec4<u32>(_wgslsmith_clamp_u32(min(80208u, 19867u), abs(global0.a.a), var_2.b.x), u_input.c.x, reverseBits(10427u), var_1.c.x) % vec4<u32>(32u)));
    let var_4 = Struct_2(select(select(select(vec4<bool>(false, global0.a.c, var_3.a.c, var_3.a.c), vec4<bool>(false, false, var_3.a.c, false), any(vec3<bool>(global0.a.c, true, var_1.a.x))), var_1.a, (false & global0.a.c) && var_1.a.x), select(select(!vec4<bool>(var_3.a.c, false, global0.a.c, true), var_1.a, true), vec4<bool>(any(var_1.a.yzz), select(var_2.c, false, var_2.c), all(var_1.a.ww), var_2.c), true), select(vec4<bool>(true, var_1.a.x, true, true), !(!vec4<bool>(var_2.c, var_1.a.x, false, true)), !var_1.a)), var_0.x & -1i, vec4<u32>(var_3.a.b.x, 0u, 1u >> (_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(4294967295u, 27u)], 23u)]) % 32u), global3[_wgslsmith_index_u32(global0.a.a, 27u)]));
    global3 = array<u32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_4.c));
}

