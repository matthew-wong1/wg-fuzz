struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-880f, -821f, 711f), 7562u, false);

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec3<f32>(196f, -1024f, 1299f), 4294967295u, false)), Struct_2(Struct_1(vec3<f32>(194f, -2355f, -1000f), 30193u, true)), Struct_2(Struct_1(vec3<f32>(1000f, 515f, -1770f), 13583u, true)), Struct_2(Struct_1(vec3<f32>(1032f, 1283f, -613f), 0u, true)), Struct_2(Struct_1(vec3<f32>(-682f, 654f, -169f), 31760u, true)), Struct_2(Struct_1(vec3<f32>(-1136f, 865f, 1000f), 4294967295u, false)), Struct_2(Struct_1(vec3<f32>(-1310f, 200f, -203f), 5025u, false)), Struct_2(Struct_1(vec3<f32>(203f, -807f, 149f), 978u, false)), Struct_2(Struct_1(vec3<f32>(-102f, -1766f, 859f), 19867u, true)), Struct_2(Struct_1(vec3<f32>(-1291f, 472f, -230f), 20467u, false)), Struct_2(Struct_1(vec3<f32>(634f, -694f, 143f), 1u, false)), Struct_2(Struct_1(vec3<f32>(671f, -2517f, -1000f), 5266u, false)), Struct_2(Struct_1(vec3<f32>(-158f, 744f, -1608f), 0u, true)));

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<f32>(591f, -134f, 601f), 1666u, true), Struct_1(vec3<f32>(882f, 2455f, -270f), 18256u, true), Struct_1(vec3<f32>(-1669f, -451f, 549f), 5566u, false), Struct_1(vec3<f32>(660f, 286f, -204f), 506u, false), Struct_1(vec3<f32>(-165f, 1108f, -517f), 1930u, false), Struct_1(vec3<f32>(542f, 414f, -1646f), 5536u, false), Struct_1(vec3<f32>(-526f, 955f, -1671f), 4294967295u, true), Struct_1(vec3<f32>(-486f, -968f, -795f), 0u, false), Struct_1(vec3<f32>(2058f, -456f, -609f), 88301u, true), Struct_1(vec3<f32>(1908f, 964f, 1683f), 1u, true), Struct_1(vec3<f32>(-2534f, 190f, 148f), 14875u, false), Struct_1(vec3<f32>(-649f, 1448f, 705f), 0u, false), Struct_1(vec3<f32>(431f, 1000f, 699f), 1u, false), Struct_1(vec3<f32>(-1157f, -989f, 3230f), 27308u, true), Struct_1(vec3<f32>(104f, 1065f, -745f), 28933u, true));

var<private> global3: Struct_1 = Struct_1(vec3<f32>(843f, 671f, 790f), 4294967295u, true);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>) -> i32 {
    global1 = array<Struct_2, 13>();
    global1 = array<Struct_2, 13>();
    global2 = array<Struct_1, 15>();
    var var_0 = _wgslsmith_clamp_i32(max(abs(-23913i >> (~arg_0.x % 32u)), countOneBits(u_input.a.x)), _wgslsmith_mult_i32(~(-max(-29788i, u_input.a.x)), _wgslsmith_add_i32(i32(-1i) * -u_input.a.x, 1i)), _wgslsmith_div_i32(u_input.a.x, 2147483647i));
    global3 = global2[_wgslsmith_index_u32(firstTrailingBit(global3.b), 15u)];
    return abs(-2147483647i);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    let var_0 = global3.b >= _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(11895u, 4294967295u, 23549u), vec3<u32>(0u, 1u, arg_1.b) << (vec3<u32>(global0.b, 4294967295u, 57128u) % vec3<u32>(32u))), ~vec3<u32>(96426u, global3.b, 0u)), countOneBits(vec3<u32>(72181u, global0.b >> (u_input.e % 32u), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(7473u, global3.b)))));
    var var_1 = ~vec3<i32>(~(~(-u_input.a.x)), u_input.a.x >> (~0u % 32u), u_input.a.x);
    let var_2 = _wgslsmith_clamp_i32(~var_1.x, 51573i ^ func_3(select(vec3<u32>(1u, global0.b, arg_1.b), vec3<u32>(1u, u_input.e, arg_1.b), true) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_1.b, arg_1.b), vec3<u32>(47152u, 0u, global3.b), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), select(u_input.c, u_input.c, vec2<bool>(false, arg_1.c)) | abs(vec2<u32>(2841u, arg_1.b))), -7076i);
    var var_3 = global1[_wgslsmith_index_u32(select(global0.b & global0.b, abs(u_input.e), all(vec2<bool>(true, !arg_1.c))), 13u)];
    var var_4 = true;
    return _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x ^ (-var_2 & (-712i & u_input.a.x)), u_input.a.x, -1i, u_input.a.x), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(27094i, -1849i, -20073i, 2147483647i) & abs(vec4<i32>(var_1.x, var_1.x, var_2, u_input.a.x)), -vec4<i32>(var_1.x, 0i, -138i, var_2) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, global0.b, arg_1.b, 4294967295u), vec4<u32>(global0.b, 1u, 4294967295u, 28670u)) % vec4<u32>(32u)))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> u32 {
    var var_0 = global0.c;
    var var_1 = arg_2;
    global1 = array<Struct_2, 13>();
    global3 = var_1.a;
    var var_2 = min(vec4<i32>(1i << (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_2.a.b, global3.b, var_1.a.b), vec4<u32>(global3.b, global3.b, arg_2.a.b, 0u)), global3.b) % 32u), ~(i32(-1i) * -u_input.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, -26650i, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec4_i32(~vec4<i32>(17867i, u_input.a.x, -1391i, 35964i), vec4<i32>(u_input.a.x, 1480i, 2147483647i, u_input.a.x))), _wgslsmith_dot_vec2_i32(u_input.a, -u_input.a)), ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), func_2(vec4<f32>(-709f, 848f, global3.a.x, -730f), Struct_1(global0.a, u_input.b, global0.c), arg_2.a.c))));
    return arg_2.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.b, func_1(global0.c, false, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(0u), _wgslsmith_add_u32(36978u, 1u)), 13u)], u_input.b) & ~abs(global0.b)), 15u)];
    global0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3.a, vec3<f32>(var_0.a.x, global0.a.x, global0.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(global0.a.x, 1227f, global0.a.x)))))), 4294967295u, !any(select(!vec4<bool>(true, global0.c, global0.c, var_0.c), !vec4<bool>(true, true, global3.c, true), select(vec4<bool>(global0.c, true, global0.c, false), vec4<bool>(false, true, true, true), true))));
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 19425u, u_input.c.x), max(~vec3<u32>(global3.b, 1754u, 1u), vec3<u32>(21636u, global3.b, var_0.b) >> (vec3<u32>(u_input.c.x, 4294967295u, 44810u) % vec3<u32>(32u)))), 15u)]);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.a.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.a.x)))))), 418f));
    let var_3 = abs(vec2<u32>(global0.b, ~36438u));
    var_0 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

