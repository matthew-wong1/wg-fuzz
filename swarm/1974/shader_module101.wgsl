struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(0u, 0u, 10686u), vec3<u32>(1u, 0u, 96681u), vec3<u32>(0u, 4294967295u, 57830u), vec3<u32>(0u, 0u, 0u), vec3<u32>(751u, 77349u, 35040u), vec3<u32>(1u, 0u, 432u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(0u, 10275u, 25534u), vec3<u32>(4294967295u, 4294967295u, 45582u), vec3<u32>(1u, 13482u, 4294967295u), vec3<u32>(1u, 1u, 0u), vec3<u32>(1u, 39917u, 42722u), vec3<u32>(23338u, 41896u, 4294967295u), vec3<u32>(40007u, 35300u, 92311u), vec3<u32>(1u, 8310u, 1u), vec3<u32>(123655u, 8598u, 1892u), vec3<u32>(4294967295u, 15219u, 1u), vec3<u32>(0u, 2164u, 4294967295u), vec3<u32>(26344u, 0u, 1u), vec3<u32>(21146u, 4294967295u, 5955u), vec3<u32>(62165u, 66489u, 15035u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(8626u, 8830u, 19047u), vec3<u32>(15804u, 1u, 64362u), vec3<u32>(41902u, 24867u, 1u), vec3<u32>(4294967295u, 4294967295u, 56125u), vec3<u32>(102669u, 1u, 0u));

var<private> global1: f32;

var<private> global2: vec3<u32> = vec3<u32>(29129u, 40413u, 38238u);

var<private> global3: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec3<i32>(1i, 2147483647i, -19645i), vec4<f32>(812f, -392f, -651f, 244f), Struct_1(vec3<i32>(0i, 2147483647i, 3063i)), Struct_1(vec3<i32>(0i, 15962i, 2147483647i))), Struct_2(vec3<i32>(-1i, i32(-2147483648), -30950i), vec4<f32>(169f, 556f, -1025f, 562f), Struct_1(vec3<i32>(-2619i, -1394i, -9871i)), Struct_1(vec3<i32>(1i, 2147483647i, 1i))), Struct_2(vec3<i32>(2147483647i, -1i, -21840i), vec4<f32>(558f, 736f, 1123f, 1160f), Struct_1(vec3<i32>(2147483647i, 1i, -13765i)), Struct_1(vec3<i32>(2147483647i, 8702i, 1i))), Struct_2(vec3<i32>(0i, i32(-2147483648), -30168i), vec4<f32>(-1000f, -575f, 817f, 805f), Struct_1(vec3<i32>(17015i, 2147483647i, 6003i)), Struct_1(vec3<i32>(-59353i, 2147483647i, 43014i))), Struct_2(vec3<i32>(-3087i, 31436i, -1i), vec4<f32>(-532f, -750f, -721f, 157f), Struct_1(vec3<i32>(-1i, 51908i, -36160i)), Struct_1(vec3<i32>(2147483647i, 1i, -15253i))), Struct_2(vec3<i32>(25635i, i32(-2147483648), -1i), vec4<f32>(-1000f, -667f, -1715f, 1884f), Struct_1(vec3<i32>(2147483647i, -14590i, i32(-2147483648))), Struct_1(vec3<i32>(67138i, i32(-2147483648), 41500i))), Struct_2(vec3<i32>(-77799i, 16277i, -1i), vec4<f32>(2803f, 308f, 1007f, 693f), Struct_1(vec3<i32>(2147483647i, 0i, -16093i)), Struct_1(vec3<i32>(1i, 2147483647i, -51589i))), Struct_2(vec3<i32>(0i, 0i, 48784i), vec4<f32>(-133f, -1248f, 330f, 1344f), Struct_1(vec3<i32>(27229i, 1480i, -38448i)), Struct_1(vec3<i32>(0i, 2147483647i, 0i))), Struct_2(vec3<i32>(-61868i, 74542i, -15442i), vec4<f32>(367f, 1095f, 1000f, -826f), Struct_1(vec3<i32>(82445i, -1i, i32(-2147483648))), Struct_1(vec3<i32>(-16511i, 42822i, 1i))), Struct_2(vec3<i32>(-1i, 1i, 1i), vec4<f32>(-749f, 1180f, 1669f, -851f), Struct_1(vec3<i32>(54278i, -1i, -1i)), Struct_1(vec3<i32>(2147483647i, -1i, 1i))), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, -1147i), vec4<f32>(1000f, 183f, 752f, -1234f), Struct_1(vec3<i32>(32023i, -6102i, -3794i)), Struct_1(vec3<i32>(1i, -25271i, 2147483647i))), Struct_2(vec3<i32>(1885i, -29908i, i32(-2147483648)), vec4<f32>(-1045f, -1179f, 545f, 847f), Struct_1(vec3<i32>(8802i, 13306i, i32(-2147483648))), Struct_1(vec3<i32>(0i, 2147483647i, 55318i))), Struct_2(vec3<i32>(-53983i, 2147483647i, 18048i), vec4<f32>(-708f, 896f, -690f, 249f), Struct_1(vec3<i32>(-22204i, 1i, -31298i)), Struct_1(vec3<i32>(-13155i, 4240i, -1i))), Struct_2(vec3<i32>(0i, 44267i, 1i), vec4<f32>(-801f, 394f, -729f, 1278f), Struct_1(vec3<i32>(1i, 15399i, i32(-2147483648))), Struct_1(vec3<i32>(-5152i, -36903i, 0i))), Struct_2(vec3<i32>(0i, 27200i, i32(-2147483648)), vec4<f32>(459f, 1339f, -1366f, 1669f), Struct_1(vec3<i32>(0i, 6446i, 58611i)), Struct_1(vec3<i32>(0i, 2147483647i, 34549i))));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    var var_0 = true;
    let var_1 = Struct_1(~(-_wgslsmith_sub_vec3_i32(~vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(2147483647i, -13880i, arg_0))));
    let var_2 = select(vec2<i32>(2147483647i, 3907i), -firstTrailingBit(vec2<i32>(arg_0, 1i ^ arg_0)), true);
    var var_3 = ~(~_wgslsmith_add_u32(u_input.a & 10846u, 4294967295u) >> (_wgslsmith_dot_vec2_u32(abs(~global2.yy), ~global2.zy) % 32u));
    global3 = array<Struct_2, 15>();
    return countOneBits(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_3.x, arg_3.x, 0u, u_input.b.x), vec4<u32>(~u_input.a, global2.x << (0u % 32u), ~24637u, _wgslsmith_mult_u32(arg_3.x, arg_3.x))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global2 = vec3<u32>(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(93503u | global2.x, _wgslsmith_div_u32(u_input.b.x, global2.x)), ~u_input.a), ~global2.x, 0u);
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(12612u, func_3(_wgslsmith_mult_i32(20468i, 3946i), arg_0 || false, true, vec3<u32>(u_input.b.x, global2.x, global2.x) & global0[_wgslsmith_index_u32(25485u, 27u)]) & ~u_input.b.x), 15u)], Struct_1(firstTrailingBit(select(-vec3<i32>(37208i, 1i, -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(16560i, -21892i, -30428i), vec3<i32>(10509i, -1i, 0i), vec3<i32>(-24816i, 2970i, 2147483647i)), false))));
    var_0 = Struct_3(Struct_2(var_0.a.c.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.x + var_0.a.b.x)), _wgslsmith_f_op_f32(-1104f * var_0.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.x - -165f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.b.x)))), var_0.b, Struct_1(~vec3<i32>(var_0.a.d.a.x, var_0.b.a.x, 0i))), var_0.a.c);
    global3 = array<Struct_2, 15>();
    var var_1 = max(var_0.b.a.x, var_0.b.a.x >> ((reverseBits(~u_input.b.x) | _wgslsmith_div_u32(global2.x >> (1u % 32u), global2.x)) % 32u));
    return var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    global1 = -358f;
    var var_0 = Struct_3(func_2(true), Struct_1(vec3<i32>(41071i, _wgslsmith_clamp_i32(arg_2.a.x, arg_2.a.x, arg_0.c.a.x) | _wgslsmith_mod_i32(1i, arg_0.c.a.x), arg_2.c.a.x)));
    let var_1 = Struct_3(arg_2, func_2(false).c);
    var var_2 = 0u ^ _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.x, arg_1) >> ((arg_1 | global2.x) % 32u), 27u)], vec3<u32>(func_3(arg_2.c.a.x, false, false, global0[_wgslsmith_index_u32(10760u, 27u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(71184u, global2.x), u_input.b), _wgslsmith_add_u32(arg_1, arg_1))), ~_wgslsmith_clamp_u32(~arg_1, firstTrailingBit(arg_1), u_input.a >> (global2.x % 32u)));
    var_2 = u_input.a;
    return Struct_2(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(var_0.a.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(false).b.x)), -1212f, _wgslsmith_f_op_f32(step(arg_0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a.b.x, var_0.a.b.x)))))), Struct_1(max(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.d.a.x, var_1.b.a.x, -14417i), vec3<i32>(arg_0.d.a.x, 36645i, var_0.a.c.a.x)) ^ vec3<i32>(-2147483647i, 1i, -1i), _wgslsmith_div_vec3_i32(-var_1.b.a, ~arg_2.a))), arg_2.c);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, false, false)), true, any(vec4<bool>(true, false, true, true))), true)), ~_wgslsmith_div_u32(~u_input.b.x, max(0u, 73612u)) <= func_3(arg_3, true, true, _wgslsmith_add_vec3_u32(~global0[_wgslsmith_index_u32(global2.x, 27u)], global0[_wgslsmith_index_u32(4294967295u | arg_2, 27u)])), all(vec3<bool>(true, true, true)));
    let var_2 = select(21616u, _wgslsmith_add_u32(~12051u, arg_2) ^ arg_2, _wgslsmith_f_op_f32(-arg_0.a.b.x) > _wgslsmith_f_op_f32(414f * 563f));
    global0 = array<vec3<u32>, 27>();
    global2 = reverseBits(global0[_wgslsmith_index_u32(67728u, 27u)]);
    return Struct_1(arg_0.a.d.a);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    global0 = array<vec3<u32>, 27>();
    let var_0 = Struct_3(global3[_wgslsmith_index_u32(1u, 15u)], func_5(Struct_3(func_4(func_2(arg_1.x), global2.x, global3[_wgslsmith_index_u32(countOneBits(1u), 15u)]), Struct_1(vec3<i32>(39673i, -11574i, -37139i))), Struct_3(global3[_wgslsmith_index_u32(4294967295u, 15u)], Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-82368i, -2147483647i, 11848i), vec3<i32>(-51640i, 1i, -6263i)))), u_input.b.x, 1i));
    let var_1 = arg_0;
    let var_2 = var_0.b.a.yx;
    let var_3 = true;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.b.x + _wgslsmith_f_op_f32(1000f * -1069f)), _wgslsmith_f_op_f32(max(174f, var_0.a.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 15>();
    global2 = _wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_add_u32(u_input.a, ~global2.x)), 27u)], ~_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(abs(u_input.a), 27u)], ~global0[_wgslsmith_index_u32(global2.x, 27u)])) >> (vec3<u32>(firstLeadingBit(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, global2.x) ^ (4294967295u ^ global2.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(10755u, 57684u, global2.x, 1u), ~vec4<u32>(43944u, 1u, u_input.b.x, 39895u)), global2.x) % vec3<u32>(32u));
    global1 = _wgslsmith_f_op_f32(-728f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(abs(u_input.a), select(vec2<bool>(false, true), vec2<bool>(false, true), true))))));
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(-39153i), _wgslsmith_add_i32(-5102i, 0i) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)]), _wgslsmith_add_vec3_u32(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(9501u, 27u)])) % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-83056i, 8676i, 1i), vec3<i32>(48238i, -31685i, -17238i)) << (select(21096u, global2.x, true) % 32u)), vec3<i32>(-22573i, -(~(i32(-1i) * -10287i)), _wgslsmith_dot_vec2_i32(-func_4(Struct_2(vec3<i32>(-75252i, -2147483647i, 2147483647i), vec4<f32>(219f, -214f, 621f, 1197f), Struct_1(vec3<i32>(1i, 22496i, -22453i)), Struct_1(vec3<i32>(17362i, 0i, -27273i))), 0u, global3[_wgslsmith_index_u32(0u, 15u)]).a.zx, func_2(true).d.a.zx)));
    global0 = array<vec3<u32>, 27>();
    global1 = _wgslsmith_f_op_f32(step(-233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(490f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1467f, -942f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(u_input.b.x, 38064u, u_input.a, 57350u), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, 4294967295u, u_input.a, global2.x) | vec4<u32>(1u, 54634u, global2.x, 22115u), vec4<u32>(1u, global2.x, u_input.b.x, u_input.a)), any(vec2<bool>(false, true))), min(vec4<u32>(~18320u, u_input.b.x, 1u, u_input.a), ~abs(vec4<u32>(0u, 10850u, 0u, 25420u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-765f, 615f)))))), firstLeadingBit(select(vec3<i32>(-2147483647i, firstLeadingBit(2147483647i), 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(41619i, 0i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(0i, 72987i, 19005i), vec3<i32>(16652i, 0i, -21697i))), true || (73072u != u_input.a))), func_2(any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))) && any(vec4<bool>(false, true, false, true))).b.yxy);
}

