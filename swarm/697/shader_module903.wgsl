struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 20> = array<u32, 20>(4294967295u, 110446u, 0u, 4294967295u, 1u, 5101u, 6741u, 1u, 5098u, 4294967295u, 4294967295u, 4294967295u, 43085u, 1504u, 34677u, 1u, 99158u, 39495u, 31524u, 1u);

var<private> global2: vec2<i32>;

var<private> global3: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: f32) -> u32 {
    return _wgslsmith_div_u32(min(min(global1[_wgslsmith_index_u32(24432u, 20u)], ~(~40548u)), 10519u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(53939u, global1[_wgslsmith_index_u32(63757u, 20u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56623u, 20u)], 20u)]), vec4<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 20u)], 57836u, global1[_wgslsmith_index_u32(0u, 20u)])), 4294967295u) & countOneBits(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)])));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: bool) -> vec3<u32> {
    var var_0 = ~1u;
    var var_1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) + -292f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * -254f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(473f - arg_2) * -1768f) * arg_2), arg_2), abs(vec2<u32>(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(54937u, 20u)], _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(5648u, 20u)], 21151u, 1u), ~global1[_wgslsmith_index_u32(28990u, 20u)]), 0u)), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1735f, 1489f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2224f, 302f)), vec2<bool>(true, true)))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-408f, 433f) + vec2<f32>(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -109f))))), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1288f, -417f))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, -327f), vec2<f32>(arg_2, arg_2))))));
    var_1 = Struct_4(var_1.a, vec2<u32>(global1[_wgslsmith_index_u32(abs(min(global1[_wgslsmith_index_u32(~0u, 20u)], ~22609u)), 20u)], ~abs(~1u)), var_1.c, Struct_3(var_1.c.a, var_1.d.b));
    let var_2 = 0u << (_wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.b.x & select(global1[_wgslsmith_index_u32(1u, 20u)], 10154u, true), 4294967295u), _wgslsmith_clamp_vec2_u32(var_1.b, ~var_1.b, vec2<u32>(global1[_wgslsmith_index_u32(1u, 20u)], countOneBits(1u)))) % 32u);
    var var_3 = reverseBits(u_input.a);
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(~35477u, 1u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(9953u, 4294967295u), 20u)], abs(global1[_wgslsmith_index_u32(87901u, 20u)] ^ 0u))), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_2, 6344u, 498u), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(21586u, 20u)])) | ~abs(abs(vec3<u32>(49586u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.b.x, 20u)], 20u)]))), vec3<u32>(countOneBits(~var_2), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(var_2, global1[_wgslsmith_index_u32(var_1.b.x, 20u)], 24215u), ~24215u), reverseBits(var_1.b)), ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.b.x, 20u)], 20u)] & 4294967295u, _wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(3201u, 20u)]))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec4<i32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(672f, -967f), vec2<f32>(-1082f, -1168f))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1693f, -871f), vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1149f, -871f), vec2<f32>(-587f, 272f), arg_1.x)))))));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec3<f32>) -> vec2<f32> {
    global0 = reverseBits(_wgslsmith_add_i32(_wgslsmith_div_i32(global2.x, global2.x), reverseBits(-(~26856i))));
    var var_0 = func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, arg_0), 20u)], countOneBits(11070u), 0u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 20u)], 20u)] % 32u)) ^ vec3<u32>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(arg_0, 20u)] ^ 60926u, func_2(-1450f)), ~(vec3<u32>(global1[_wgslsmith_index_u32(27617u, 20u)], 12357u, 0u) << (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28552u, 20u)], 20u)], global1[_wgslsmith_index_u32(15179u, 20u)], arg_0) % vec3<u32>(32u))) & (func_3(0i, false, -2088f, true) ^ ~vec3<u32>(6199u, 1u, arg_0))), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), true), abs(~_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.a, -1i, -2147483647i), vec4<i32>(u_input.a, -7641i, -43796i, u_input.a)), -vec4<i32>(u_input.a, global2.x, u_input.a, -3087i))));
    global3 = select(any(select(vec2<bool>(any(vec2<bool>(true, false)), arg_2.b.a.x >= 407f), vec2<bool>(true, true), vec2<bool>(true, true))), (~40015u != arg_0) || any(vec4<bool>(true, arg_2.b.a.x <= arg_1.x, all(vec2<bool>(false, true)), false)), _wgslsmith_f_op_f32(floor(-957f)) > func_4((vec3<u32>(arg_0, 14636u, arg_0) >> (vec3<u32>(0u, arg_0, global1[_wgslsmith_index_u32(86545u, 20u)]) % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_u32(vec3<u32>(8806u, 39640u, arg_0), vec3<u32>(6402u, 31697u, 68960u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(firstTrailingBit(vec4<i32>(-3948i, global2.x, u_input.a, global2.x)), select(vec4<i32>(global2.x, 38218i, 8302i, u_input.a), vec4<i32>(global2.x, 1i, global2.x, global2.x), false), vec4<bool>(false, false, false, false))).a.x);
    var var_1 = Struct_3(Struct_1(var_0.a), arg_2.b);
    let var_2 = !select(select(vec3<bool>(0u == global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 20u)], 20u)], 20u)], true, true), vec3<bool>(true, true, -1i <= u_input.a), _wgslsmith_f_op_f32(floor(803f)) <= _wgslsmith_f_op_f32(round(arg_1.x))), !vec3<bool>(1u <= arg_0, select(false, false, false), true), !(!any(vec2<bool>(false, false))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a.x + 516f)))), var_1.b.a, _wgslsmith_clamp_i32(i32(-1i) * -8429i, -2147483647i, _wgslsmith_add_i32(u_input.a, -2147483647i)) < global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = var_0;
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(594f, -1678f), vec2<f32>(327f, -224f))) - _wgslsmith_f_op_vec2_f32(func_1(14954u, vec4<f32>(1524f, -132f, 1792f, -217f), Struct_3(Struct_1(vec2<f32>(-809f, 1361f)), Struct_1(vec2<f32>(1488f, -1067f))), vec3<f32>(-954f, -1384f, 717f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1807f, 1000f) + vec2<f32>(1000f, -520f)))))), func_4(abs((vec3<u32>(global1[_wgslsmith_index_u32(39733u, 20u)], 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 20u)]) & vec3<u32>(global1[_wgslsmith_index_u32(15697u, 20u)], 8626u, 4294967295u)) << ((vec3<u32>(global1[_wgslsmith_index_u32(59112u, 20u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 20u)]) ^ vec3<u32>(1728u, global1[_wgslsmith_index_u32(1u, 20u)], 1u)) % vec3<u32>(32u))), vec4<bool>(true, !(var_0 == false), any(vec4<bool>(false, true, true, false)), true), select(max(vec4<i32>(global2.x, u_input.a, global2.x, 17136i), vec4<i32>(u_input.a, 2147483647i, 2147483647i, u_input.a)) | vec4<i32>(-10490i, global2.x, -2147483647i, u_input.a), vec4<i32>(44517i, global2.x, -global2.x, 2147483647i), false)));
    var_2 = Struct_3(var_2.a, var_2.b);
    global3 = (abs(-48024i) & global2.x) < global2.x;
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1928f, -189f, -831f, var_2.a.a.x)))))), vec2<u32>(101563u, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(69187u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(70583u, 20u)], 20u)]), 1u), 20u)]), Struct_3(var_2.b, var_2.a), Struct_3(func_4(~firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37129u, 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)])), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), all(vec3<bool>(false, var_0, var_0))), vec4<i32>(~21907i, _wgslsmith_sub_i32(15053i, u_input.a), ~(-63152i), u_input.a)), var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a);
}

