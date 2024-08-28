struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(-2145f, 1091f, -1000f, 379f, 142f, -1175f, 696f, -931f, -827f);

var<private> global1: Struct_2 = Struct_2(vec2<i32>(2430i, 16436i), vec2<u32>(31861u, 28148u));

var<private> global2: array<i32, 17>;

var<private> global3: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec2<i32>(27274i, i32(-2147483648)), vec2<u32>(1u, 10928u)), Struct_2(vec2<i32>(37279i, 0i), vec2<u32>(1u, 77298u)), Struct_2(vec2<i32>(2147483647i, -1i), vec2<u32>(22766u, 4294967295u)), Struct_2(vec2<i32>(-7864i, -6816i), vec2<u32>(0u, 0u)), Struct_2(vec2<i32>(2147483647i, 0i), vec2<u32>(1u, 42786u)), Struct_2(vec2<i32>(-22483i, i32(-2147483648)), vec2<u32>(32096u, 56061u)), Struct_2(vec2<i32>(22798i, i32(-2147483648)), vec2<u32>(29683u, 78321u)), Struct_2(vec2<i32>(-72429i, 1i), vec2<u32>(16493u, 19646u)), Struct_2(vec2<i32>(i32(-2147483648), 22220i), vec2<u32>(34780u, 13413u)), Struct_2(vec2<i32>(-4725i, 0i), vec2<u32>(12313u, 83925u)), Struct_2(vec2<i32>(14852i, 0i), vec2<u32>(3882u, 80156u)), Struct_2(vec2<i32>(2147483647i, 2147483647i), vec2<u32>(4294967295u, 44296u)), Struct_2(vec2<i32>(31892i, 34486i), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec2<i32>(0i, -1i), vec2<u32>(1u, 22452u)), Struct_2(vec2<i32>(-8880i, -19223i), vec2<u32>(20117u, 71073u)), Struct_2(vec2<i32>(0i, -22526i), vec2<u32>(1u, 1u)), Struct_2(vec2<i32>(-1i, 21273i), vec2<u32>(34177u, 61656u)), Struct_2(vec2<i32>(2147483647i, 2147483647i), vec2<u32>(1u, 1u)), Struct_2(vec2<i32>(-14153i, -44422i), vec2<u32>(0u, 4294967295u)), Struct_2(vec2<i32>(-14680i, i32(-2147483648)), vec2<u32>(22282u, 1739u)), Struct_2(vec2<i32>(-29497i, -2649i), vec2<u32>(4294967295u, 1u)), Struct_2(vec2<i32>(i32(-2147483648), 1i), vec2<u32>(21052u, 0u)), Struct_2(vec2<i32>(-1i, 0i), vec2<u32>(54123u, 21703u)), Struct_2(vec2<i32>(-37932i, 13189i), vec2<u32>(0u, 925u)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = min(vec2<u32>(firstLeadingBit(arg_1.b.x), 3649u), ~_wgslsmith_add_vec2_u32(global1.b, ~arg_2 << (~arg_2 % vec2<u32>(32u))));
    let var_1 = Struct_3(all(!select(!vec4<bool>(arg_1.a, false, false, false), vec4<bool>(arg_3.a.x, arg_3.a.x, true, arg_1.a), true)), arg_1.b | ~_wgslsmith_clamp_vec3_u32(~arg_1.b, ~vec3<u32>(24883u, arg_2.x, 4294967295u), vec3<u32>(33411u, 6998u, 0u)));
    var var_2 = ~(~((vec3<u32>(arg_3.b, arg_1.b.x, 4294967295u) & _wgslsmith_mult_vec3_u32(vec3<u32>(global1.b.x, 23998u, 83042u), vec3<u32>(u_input.d, 60664u, 83447u))) << (arg_1.b % vec3<u32>(32u))));
    let var_3 = arg_3;
    let var_4 = Struct_2(vec2<i32>(global2[_wgslsmith_index_u32(~u_input.d, 17u)], global1.a.x), arg_1.b.xy);
    return var_0.x;
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-972f, 1052f)));
    var var_1 = firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_2.b, global1.b.x), 25925u), 17u)], -11189i, 44604i), _wgslsmith_mult_vec3_i32(abs(reverseBits(vec3<i32>(arg_1.x, -31627i, u_input.b))), vec3<i32>(countOneBits(global2[_wgslsmith_index_u32(19368u, 17u)]), ~0i, abs(arg_1.x))), countOneBits(~vec3<i32>(u_input.b, global1.a.x, 2147483647i))));
    let var_2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(20062u, ~(~select(arg_2.b, arg_2.b, true)), func_3(~select(vec4<i32>(global2[_wgslsmith_index_u32(20349u, 17u)], -2147483647i, var_1.x, arg_1.x), vec4<i32>(-14654i, arg_1.x, global2[_wgslsmith_index_u32(8361u, 17u)], global2[_wgslsmith_index_u32(0u, 17u)]), true), Struct_3(arg_2.a.x, _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 13971u, 1u), u_input.c)), firstTrailingBit(vec2<u32>(u_input.d, 0u)), Struct_1(arg_2.a, ~arg_2.b))), 9u)]);
    let var_3 = (-588f > var_0.x) & false;
    var var_4 = false;
    return select(!vec2<bool>(false, false && !var_3), !select(!select(arg_2.a, arg_2.a, arg_2.a), vec2<bool>(var_3, arg_2.a.x), select(select(arg_2.a, vec2<bool>(arg_2.a.x, arg_2.a.x), var_3), select(vec2<bool>(false, true), vec2<bool>(arg_2.a.x, var_3), vec2<bool>(arg_2.a.x, var_3)), arg_1.x == -30594i)), true);
}

fn func_2() -> i32 {
    var var_0 = Struct_1(func_4(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, u_input.c.x & 4294967295u), global1.b.x), 9u)], select(vec2<i32>(global1.a.x, 1i), global1.a, vec2<bool>(all(vec4<bool>(true, true, true, false)), 776f <= global0[_wgslsmith_index_u32(global1.b.x, 9u)])), Struct_1(vec2<bool>(true, all(vec2<bool>(true, false))), func_3(vec4<i32>(-1i, -54177i, global2[_wgslsmith_index_u32(u_input.d, 17u)], -2147483647i), Struct_3(false, vec3<u32>(1u, global1.b.x, global1.b.x)), vec2<u32>(global1.b.x, 7103u), Struct_1(vec2<bool>(false, true), 5857u)) | abs(4294967295u))), abs(global1.b.x) & ~23990u);
    global3 = array<Struct_2, 24>();
    let var_1 = Struct_1(var_0.a, _wgslsmith_div_u32(u_input.a.x, ~15778u));
    var_0 = var_1;
    global3 = array<Struct_2, 24>();
    return global2[_wgslsmith_index_u32(96249u, 17u)];
}

fn func_1(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = vec3<bool>(false, _wgslsmith_div_i32(~firstTrailingBit(global2[_wgslsmith_index_u32(arg_0.x, 17u)]), ~func_2()) <= -1i, false);
    var_0 = !vec3<bool>(!var_0.x, true, true);
    let var_1 = global1.b;
    let var_2 = (firstTrailingBit(vec3<i32>(reverseBits(global1.a.x), global2[_wgslsmith_index_u32(var_1.x, 17u)], ~28387i)) << (vec3<u32>(arg_0.x, countOneBits(0u), arg_0.x) % vec3<u32>(32u))) ^ ~(-abs(vec3<i32>(u_input.b, u_input.b, u_input.b)) ^ select(~vec3<i32>(1i, 2147483647i, u_input.b), vec3<i32>(global1.a.x, global2[_wgslsmith_index_u32(arg_0.x, 17u)], global2[_wgslsmith_index_u32(global1.b.x, 17u)]) | vec3<i32>(-29090i, 49700i, u_input.e), true));
    return Struct_3(!var_0.x, vec3<u32>(4294967295u, ~(~arg_0.x), u_input.a.x ^ min(global1.b.x, u_input.d)) & vec3<u32>(global1.b.x, _wgslsmith_dot_vec2_u32(u_input.a.zx << (global1.b % vec2<u32>(32u)), select(u_input.c.xy, vec2<u32>(25021u, 1u), var_0.x)), reverseBits(abs(global1.b.x))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    var var_0 = Struct_1(select(vec2<bool>(false, !(-23939i == global1.a.x)), !vec2<bool>(func_1(arg_2.b).a, arg_2.a), true & arg_2.a), arg_2.b.x);
    global3 = array<Struct_2, 24>();
    let var_1 = 0u;
    global2 = array<i32, 17>();
    var var_2 = Struct_1(select(vec2<bool>(any(vec3<bool>(true, var_0.a.x, arg_2.a)), true), select(vec2<bool>(any(vec3<bool>(var_0.a.x, true, true)), arg_2.a), !var_0.a, any(func_4(-258f, arg_1.a, Struct_1(var_0.a, global1.b.x)))), !var_0.a), ~(~0u));
    return Struct_3(var_0.a.x, countOneBits(vec3<u32>(max(arg_0.x, var_2.b) << (1u % 32u), ~arg_0.x, ~62016u)));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_1(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), arg_0.a), firstLeadingBit(abs(func_5(vec2<u32>(1u, 1u), Struct_2(vec2<i32>(global2[_wgslsmith_index_u32(global1.b.x, 17u)], -1i), arg_1.b.zx), Struct_3(arg_1.a, vec3<u32>(global1.b.x, global1.b.x, arg_2))).b.x) | _wgslsmith_add_u32(func_1(arg_0.b).b.x, _wgslsmith_div_u32(65247u, u_input.c.x))));
    global3 = array<Struct_2, 24>();
    let var_1 = global3[_wgslsmith_index_u32(u_input.d, 24u)];
    global2 = array<i32, 17>();
    var var_2 = vec3<u32>(4396u, u_input.c.x, arg_1.b.x);
    return Struct_2(-global1.a, vec2<u32>(_wgslsmith_sub_u32(~var_2.x, abs(74070u)) >> (arg_1.b.x % 32u), arg_0.b.x >> (~64377u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 17>();
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, 0u), 24u)];
    var var_1 = false;
    var var_2 = func_6(func_5(u_input.c.yx, Struct_2(vec2<i32>(global2[_wgslsmith_index_u32(1572u, 17u)], 2147483647i) | -vec2<i32>(global2[_wgslsmith_index_u32(0u, 17u)], global1.a.x), ~max(vec2<u32>(u_input.a.x, var_0.b.x), vec2<u32>(global1.b.x, 0u))), func_1(_wgslsmith_sub_vec3_u32(u_input.a.xwx, vec3<u32>(1u, global1.b.x, 6967u)))), Struct_3(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 9u)]) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-339f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.b.x, 9u)] - global0[_wgslsmith_index_u32(1u, 9u)])), u_input.a.xxw ^ (~vec3<u32>(71636u, var_0.b.x, 4294967295u) ^ (vec3<u32>(1u, var_0.b.x, u_input.d) | vec3<u32>(12764u, 1u, 20489u)))), ~_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(~var_0.b.x, countOneBits(74019u))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(488f, global0[_wgslsmith_index_u32(0u, 9u)])))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.b.x, 9u)]) * _wgslsmith_f_op_f32(f32(-1f) * -235f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(abs(global1.b.x), 9u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 9u)] + -412f) * global0[_wgslsmith_index_u32(firstLeadingBit(var_2.b.x), 9u)]))));
    let var_4 = abs(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(global1.a.x, global1.a.x), 15431i, -u_input.b, ~u_input.e), vec4<i32>(-29599i, _wgslsmith_div_i32(-2147483647i, -1i), func_6(Struct_3(true, u_input.c), Struct_3(true, u_input.c), 60641u).a.x, _wgslsmith_mod_i32(u_input.b, 51993i))), firstTrailingBit(vec4<i32>(var_2.a.x, -1i, 0i, 14607i)) | ~firstTrailingBit(vec4<i32>(var_0.a.x, 35543i, 29015i, 2147483647i))));
    var var_5 = vec4<i32>(-94782i, -68772i, ~(i32(-1i) * -62172i), 40679i);
    var var_6 = vec4<u32>(var_0.b.x, ~_wgslsmith_sub_u32(4294967295u, 1u ^ (global1.b.x << (44493u % 32u))), _wgslsmith_mod_u32(abs(_wgslsmith_add_u32(~1u, var_2.b.x >> (0u % 32u))), ~(~(global1.b.x | var_0.b.x))), func_3(var_4 ^ vec4<i32>(var_2.a.x, -36794i, u_input.e, u_input.b), Struct_3(true, u_input.c), vec2<u32>(_wgslsmith_dot_vec4_u32(reverseBits(u_input.a), ~u_input.a), var_0.b.x), Struct_1(vec2<bool>(true, true), func_1(u_input.a.zzy).b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 9u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(abs(51857u), 9u)], var_3.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1129f)))), u_input.d == var_2.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_3.x, -400f)), -1112f)), _wgslsmith_mod_u32(var_0.b.x, 98314u));
}

