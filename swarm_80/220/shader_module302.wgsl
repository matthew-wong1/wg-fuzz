struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: vec2<f32> = vec2<f32>(2256f, 611f);

var<private> global2: array<f32, 3> = array<f32, 3>(2453f, -1222f, 907f);

var<private> global3: vec4<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global3 = _wgslsmith_clamp_vec4_u32(vec4<u32>((0u << ((arg_0.d ^ global3.x) % 32u)) << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.d, arg_1.d, 1u), vec4<u32>(global3.x, 4294967295u, 21913u, arg_0.d)), vec4<u32>(arg_1.b, 4294967295u, 4294967295u, 0u) << (vec4<u32>(arg_1.d, arg_1.d, 22518u, global0[_wgslsmith_index_u32(arg_1.b, 30u)]) % vec4<u32>(32u))) % 32u), ~68061u, _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(79508u, u_input.d, 23268u, arg_1.d)), ~(vec4<u32>(arg_1.d, u_input.e.x, global3.x, global0[_wgslsmith_index_u32(arg_1.b, 30u)]) & vec4<u32>(38172u, global0[_wgslsmith_index_u32(44361u, 30u)], 4294967295u, 54054u))), u_input.e.x), max(vec4<u32>(abs(_wgslsmith_mod_u32(global3.x, 0u)), _wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_0.b, global3.x), global3.xw), ~u_input.e), ~select(global0[_wgslsmith_index_u32(arg_1.b, 30u)], 16580u, arg_1.c), 4294967295u), vec4<u32>(~(~55407u), global3.x, min(u_input.a | 1u, ~34128u), global3.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(global3.x, 4294967295u, arg_1.d), 31190u, ~arg_0.d, global3.x), select(~vec4<u32>(52343u, u_input.b, 0u, global0[_wgslsmith_index_u32(arg_0.b, 30u)]), vec4<u32>(arg_0.b, 4294967295u, 3840u, 15093u), arg_0.c || true)));
    global0 = array<u32, 30>();
    var var_0 = Struct_2(arg_1, arg_1.e, _wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_0.e, 13417i, u_input.c, 1i), min(vec4<i32>(arg_0.e, 1i, -19528i, 1i), vec4<i32>(arg_1.e, 0i, -8889i, arg_0.e)), -vec4<i32>(arg_1.e, arg_0.e, u_input.c, -2147483647i)), -((vec4<i32>(-1i, u_input.c, arg_0.e, arg_0.e) ^ vec4<i32>(arg_1.e, -2147483647i, arg_0.e, -52919i)) | vec4<i32>(0i, -29106i, u_input.c, 1i))), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(arg_0.c, false), false), true)));
    let var_1 = arg_0.c;
    let var_2 = Struct_3(countOneBits(51188i), -2147483647i);
    return select(!select(vec4<bool>(all(vec4<bool>(false, var_0.a.c, false, true)), var_1 & true, true, all(vec2<bool>(arg_1.c, true))), !(!vec4<bool>(arg_0.c, var_0.d.x, false, arg_0.c)), !select(vec4<bool>(false, false, arg_0.c, true), vec4<bool>(false, false, true, arg_0.c), vec4<bool>(arg_1.c, false, arg_1.c, arg_0.c))), select(!vec4<bool>(false, true, true, any(vec3<bool>(false, true, true))), vec4<bool>(false, select(false, true, true), any(select(var_0.d, var_0.d, var_0.d)), !var_1 & false), !select(!vec4<bool>(arg_1.c, true, arg_1.c, false), select(vec4<bool>(var_0.d.x, false, false, false), vec4<bool>(true, false, arg_1.c, var_0.d.x), vec4<bool>(true, true, arg_1.c, var_1)), all(vec2<bool>(var_1, true)))), arg_0.c);
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1503f, 838f, global1.x, 1000f)) * _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 3u)], 1000f, -147f, 179f), vec4<f32>(648f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 3u)], global2[_wgslsmith_index_u32(12098u, 3u)], 155f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-518f, 245f, -804f, global1.x), vec4<f32>(-1660f, global2[_wgslsmith_index_u32(35053u, 3u)], global1.x, global1.x), func_3(Struct_1(vec4<f32>(-1205f, global1.x, -1254f, global2[_wgslsmith_index_u32(u_input.e.x, 3u)]), 11584u, false, global3.x, u_input.c), Struct_1(vec4<f32>(-273f, global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 30u)], 3u)], global1.x), u_input.e.x, false, 62186u, u_input.c))))), arg_1, any(vec2<bool>(-1i == u_input.c, true)), arg_0, -abs(u_input.c)), -(-10916i ^ u_input.c), _wgslsmith_add_vec4_i32(~vec4<i32>(reverseBits(-36825i), i32(-1i) * -30268i, u_input.c, 1i), (_wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, u_input.c, 20176i), vec4<i32>(u_input.c, u_input.c, 2147483647i, -26334i)) >> (vec4<u32>(739u, global3.x, 4294967295u, global0[_wgslsmith_index_u32(arg_1, 30u)]) % vec4<u32>(32u))) >> (~(vec4<u32>(arg_1, 1u, arg_1, global3.x) >> (vec4<u32>(1u, u_input.b, 9395u, 8413u) % vec4<u32>(32u))) % vec4<u32>(32u))), select(!vec2<bool>(all(vec2<bool>(false, false)), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 30u)], 3u)] <= 907f), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), func_3(Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(38355u, 3u)], 144f, -1058f), 28149u, false, global3.x, u_input.c), Struct_1(vec4<f32>(-988f, global2[_wgslsmith_index_u32(22737u, 3u)], -905f, 914f), 34231u, false, 28559u, u_input.c)).xz), vec2<bool>(65819i >= u_input.c, true)), !(!all(vec3<bool>(false, false, true)))));
    let var_1 = Struct_1(var_0.a.a, 1u, all(vec4<bool>(true, all(!vec3<bool>(var_0.a.c, false, var_0.a.c)), !func_3(Struct_1(var_0.a.a, arg_1, var_0.d.x, var_0.a.d, 71079i), var_0.a).x, _wgslsmith_f_op_f32(select(global1.x, global2[_wgslsmith_index_u32(1u, 3u)], true)) != _wgslsmith_f_op_f32(step(-194f, -535f)))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(global3.yxz, vec3<u32>(0u, var_0.a.d, global0[_wgslsmith_index_u32(38211u, 30u)])), max(1u, arg_0)), ~(~u_input.e)), vec2<u32>(u_input.a >> (4294967295u % 32u), _wgslsmith_mod_u32(~arg_0, ~0u))), _wgslsmith_add_i32(_wgslsmith_mult_i32(i32(-1i) * -2063i, max(2147483647i, -var_0.b)), u_input.c));
    global1 = _wgslsmith_f_op_vec2_f32(exp2(var_0.a.a.zy));
    var var_2 = select(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(global3.x, 3u)], -2268f, -772f, -121f), var_0.a.a, false)))), global3.x & abs(arg_1), var_0.a.c, ~(arg_0 ^ 35699u), 0i), var_1).ywx, select(vec3<bool>((var_0.a.b <= 42773u) == true, all(select(vec3<bool>(var_0.a.c, var_1.c, false), vec3<bool>(true, var_0.a.c, false), vec3<bool>(true, var_1.c, var_0.d.x))), var_0.a.c), vec3<bool>(-61699i >= select(u_input.c, var_1.e, false), !var_0.d.x, true), func_3(var_1, Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(var_1.b, 3u)], -1836f, var_0.a.a.x), ~global3.x, var_0.a.c, ~arg_1, var_1.e)).wxx), vec3<bool>(~(1u << (arg_0 % 32u)) != ~var_0.a.d, !var_1.c, true));
    let var_3 = ~(~vec3<u32>(firstLeadingBit(61609u), max(global3.x, select(50897u, u_input.d, var_1.c)), 0u));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, global1.x, global1.x, var_0.a.a.x))), 18757u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_1.a.x) - 203f) >= _wgslsmith_f_op_f32(global1.x * -1000f), ~(firstTrailingBit(339u) ^ countOneBits(global3.x)), -45691i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(35046i, var_0.a.e), ~firstLeadingBit(_wgslsmith_sub_i32(u_input.c, 49778i))), var_0.c ^ _wgslsmith_add_vec4_i32(var_0.c, var_0.c), !select(var_0.d, func_3(Struct_1(vec4<f32>(var_1.a.x, 850f, 1000f, global2[_wgslsmith_index_u32(var_0.a.b, 3u)]), 11639u, var_1.c, 18432u, var_0.a.e), Struct_1(vec4<f32>(-992f, global1.x, var_0.a.a.x, global2[_wgslsmith_index_u32(32529u, 3u)]), global3.x, false, arg_1, -2147483647i)).xy, var_2.yx));
}

fn func_4(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = ~u_input.c;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -611f), arg_0.a.a.x, all(!arg_0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(func_2(u_input.e.x, ~arg_0.a.d).a.a.x))));
    global0 = array<u32, 30>();
    var var_1 = arg_0.a.a.yx;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.a.yz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-652f, 799f) - vec2<f32>(1126f, -1088f)) * _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(0u, 3u)], global1.x), vec2<f32>(arg_0.a.a.x, global1.x))))));
    return arg_0.d;
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = ~(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(arg_0, 30u)], global3.x, 1u)) << (~vec4<u32>(arg_0, 4294967295u, u_input.e.x, global0[_wgslsmith_index_u32(arg_0, 30u)]) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, 1u, global0[_wgslsmith_index_u32(u_input.e.x, 30u)], global0[_wgslsmith_index_u32(52775u, 30u)]), vec4<u32>(arg_0, 1u, 41584u, global0[_wgslsmith_index_u32(1u, 30u)]))) >> (vec4<u32>(59697u, 1u, 6816u, ~_wgslsmith_dot_vec3_u32(global3.xyw, vec3<u32>(arg_0, 1u, global3.x))) % vec4<u32>(32u)));
    var var_1 = func_4(func_2(~(~49750u), global0[_wgslsmith_index_u32(var_0.x, 30u)]));
    var var_2 = vec4<i32>(~(0i << (_wgslsmith_mod_u32(~1u, ~u_input.d) % 32u)), _wgslsmith_add_i32(u_input.c ^ u_input.c, -countOneBits(firstLeadingBit(-1i))), u_input.c, -1i);
    global3 = vec4<u32>(~(~(~_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(global3.x, u_input.a)))), max(4763u, _wgslsmith_sub_u32(51813u, global3.x)), ~(~(_wgslsmith_add_u32(4326u, u_input.e.x) << (global3.x % 32u))), func_2(global3.x, 22596u).a.b);
    var_0 = firstLeadingBit(~(vec4<u32>(firstTrailingBit(38624u), ~global3.x, 70340u, max(var_0.x, 1u)) << (firstLeadingBit(vec4<u32>(0u, global3.x, 25989u, 1u)) % vec4<u32>(32u))));
    return Struct_3((var_2.x & _wgslsmith_div_i32(-14339i, u_input.c ^ -24475i)) | 0i, (_wgslsmith_div_i32(var_2.x << (0u % 32u), u_input.c << (7814u % 32u)) | var_2.x) | ~_wgslsmith_clamp_i32(2147483647i, var_2.x ^ var_2.x, _wgslsmith_mult_i32(u_input.c, var_2.x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    global3 = ~max(vec4<u32>(firstTrailingBit(global3.x), global0[_wgslsmith_index_u32(68153u, 30u)], _wgslsmith_dot_vec2_u32(abs(vec2<u32>(global3.x, 0u)), global3.yx << (vec2<u32>(arg_0.a.b, global0[_wgslsmith_index_u32(global3.x, 30u)]) % vec2<u32>(32u))), 13985u), vec4<u32>(arg_0.a.d, _wgslsmith_mod_u32(u_input.a << (0u % 32u), global3.x >> (4294967295u % 32u)), ~global0[_wgslsmith_index_u32(global3.x, 30u)], 30132u));
    let var_0 = arg_1;
    let var_1 = _wgslsmith_sub_vec2_i32(select(arg_0.c.xz, firstTrailingBit(vec2<i32>(u_input.c | 0i, -29368i)), arg_0.d), vec2<i32>(var_0.a, arg_1.a));
    let var_2 = false;
    global2 = array<f32, 3>();
    return func_2(~_wgslsmith_div_u32(u_input.e.x, (29343u << (u_input.b % 32u)) | ~1u), 0u << ((0u ^ u_input.d) % 32u));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    global2 = array<f32, 3>();
    var var_0 = func_5(arg_1, Struct_3(2147483647i, _wgslsmith_div_i32(min(arg_0.a.e ^ u_input.c, ~0i), u_input.c)));
    var var_1 = select(vec4<bool>(select(func_2(arg_0.a.b | 0u, global0[_wgslsmith_index_u32(1u >> (arg_0.a.b % 32u), 30u)]).d.x, arg_1.d.x, true), arg_0.a.c, func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1290f, arg_1.a.a.x, arg_1.a.a.x, global2[_wgslsmith_index_u32(u_input.d, 3u)])), _wgslsmith_dot_vec2_u32(global3.wy, vec2<u32>(arg_1.a.b, 4294967295u)), true, ~1u, u_input.c), Struct_1(vec4<f32>(global1.x, var_0.a.a.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 30u)], 3u)], arg_0.a.a.x), 4294967295u, arg_1.a.c, arg_0.a.b, _wgslsmith_clamp_i32(2147483647i, -37526i, u_input.c))).x, !func_3(Struct_1(vec4<f32>(arg_1.a.a.x, -400f, arg_1.a.a.x, 613f), 4294967295u, false, var_0.a.d, arg_1.c.x), Struct_1(vec4<f32>(arg_0.a.a.x, -1139f, arg_0.a.a.x, -997f), global0[_wgslsmith_index_u32(arg_1.a.d, 30u)], var_0.d.x, var_0.a.d, 2147483647i)).x), select(!(!(!vec4<bool>(false, false, true, arg_0.d.x))), select(vec4<bool>(arg_0.d.x, func_3(arg_1.a, var_0.a).x, true, select(var_0.d.x, true, var_0.a.c)), !select(vec4<bool>(false, var_0.d.x, arg_1.a.c, arg_1.d.x), vec4<bool>(true, arg_0.d.x, var_0.d.x, var_0.a.c), false), arg_1.a.c), arg_1.a.c), any(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a.x, global1.x, arg_0.a.a.x, global1.x)), 18796u, func_3(var_0.a, Struct_1(arg_1.a.a, arg_1.a.b, true, 42628u, u_input.c)).x, var_0.a.b, -2147483647i), func_2(u_input.d << (global0[_wgslsmith_index_u32(arg_1.a.d, 30u)] % 32u), ~arg_0.a.b).a).yzy));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.a.yy) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, arg_1.a.a.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, -526f))));
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(arg_1.a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_5(arg_0, Struct_3(arg_0.b, u_input.c)).a.a.x, _wgslsmith_f_op_f32(1870f * -458f), -710f, _wgslsmith_f_op_f32(round(-1000f))))), firstLeadingBit(global0[_wgslsmith_index_u32(55820u, 30u)]), true, var_0.a.d, -1i);
    return func_2(1u, ~(~arg_0.a.b));
}

fn func_7(arg_0: Struct_2) -> Struct_1 {
    global0 = array<u32, 30>();
    var var_0 = !(!(!vec4<bool>(arg_0.d.x, arg_0.a.c, 48775u < global0[_wgslsmith_index_u32(u_input.b, 30u)], arg_0.d.x)));
    return func_2(u_input.a, ~u_input.e.x).a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~vec4<u32>(8412u, 4294967295u, 6679u, 62406u);
    var var_0 = Struct_2(func_7(func_6(Struct_2(Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(global3.x, 3u)], -238f, -225f, global2[_wgslsmith_index_u32(global3.x, 3u)]), global3.x, true, 62718u, u_input.c), ~(-3503i), -vec4<i32>(u_input.c, u_input.c, u_input.c, 70424i), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), func_5(Struct_2(Struct_1(vec4<f32>(381f, 881f, 488f, global2[_wgslsmith_index_u32(u_input.d, 3u)]), 1u, false, 1u, u_input.c), u_input.c, vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c), vec2<bool>(true, false)), func_1(16007u)))), u_input.c, max(~(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, 0i, u_input.c), vec4<i32>(u_input.c, 2147483647i, u_input.c, u_input.c))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.c, -2147483647i, 18425i, u_input.c), countOneBits(~vec4<i32>(u_input.c, u_input.c, -9527i, u_input.c)))), select(vec2<bool>(!any(vec3<bool>(true, true, true)), true), !vec2<bool>(global1.x >= global1.x, false), vec2<bool>(true, true)));
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(var_0.a.a.wy, var_0.a.a.yx)));
    let var_1 = Struct_2(var_0.a, var_0.a.e, var_0.c, func_2(func_5(Struct_2(var_0.a, var_0.a.e, countOneBits(vec4<i32>(2147483647i, u_input.c, -2147483647i, var_0.c.x)), var_0.d), func_1(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_0.a.b, 30u)], u_input.b))).a.b, select(~firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.e, vec2<u32>(var_0.a.d, var_0.a.b)), u_input.e), true)).d);
    var var_2 = func_7(func_5(Struct_2(Struct_1(vec4<f32>(671f, 373f, global1.x, 1520f), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_0.a.d, 30u)], 4294967295u), true, 74728u, _wgslsmith_mult_i32(2084i, var_1.a.e)), u_input.c, vec4<i32>(-1i, u_input.c, -var_1.c.x, min(var_1.b, var_0.a.e)), !func_2(11248u, 4294967295u).d), Struct_3(reverseBits(u_input.c), -(~var_1.b)))).a.x;
    let var_3 = vec3<bool>(true, var_1.d.x, true);
    var var_4 = -(~func_6(func_6(func_5(Struct_2(var_1.a, 72636i, var_1.c, vec2<bool>(var_0.a.c, true)), Struct_3(-43568i, u_input.c)), Struct_2(var_1.a, var_1.c.x, var_0.c, var_1.d)), Struct_2(var_0.a, u_input.c, vec4<i32>(var_1.c.x, 45061i, 213i, var_1.c.x), func_3(Struct_1(var_0.a.a, 4294967295u, var_0.d.x, var_0.a.d, -1i), Struct_1(var_1.a.a, 1u, var_0.d.x, 38189u, u_input.c)).wy)).c.wyy);
    var var_5 = func_3(Struct_1(var_0.a.a, _wgslsmith_clamp_u32(~firstTrailingBit(var_1.a.b), 22168u, 1u), true, u_input.e.x, countOneBits(-func_2(var_1.a.d, var_1.a.d).a.e)), var_0.a).x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(func_6(var_1, Struct_2(Struct_1(vec4<f32>(343f, var_0.a.a.x, -1594f, 1077f), global0[_wgslsmith_index_u32(36056u, 30u)], var_1.d.x, global0[_wgslsmith_index_u32(15898u, 30u)], u_input.c), -2147483647i, _wgslsmith_div_vec4_i32(var_0.c, var_1.c), vec2<bool>(var_1.d.x, var_0.a.c))).a.a.x, func_7(Struct_2(func_6(Struct_2(Struct_1(vec4<f32>(-615f, -573f, var_1.a.a.x, -1708f), var_0.a.b, var_3.x, u_input.a, 14093i), var_0.b, vec4<i32>(-31078i, var_1.a.e, -18205i, 0i), vec2<bool>(var_3.x, var_3.x)), var_1).a, 0i, func_6(var_1, Struct_2(var_1.a, 2147483647i, vec4<i32>(var_4.x, 2819i, var_0.c.x, var_1.c.x), var_1.d)).c, func_5(Struct_2(var_1.a, u_input.c, var_1.c, vec2<bool>(true, true)), Struct_3(-2147483647i, 29064i)).d)).a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

