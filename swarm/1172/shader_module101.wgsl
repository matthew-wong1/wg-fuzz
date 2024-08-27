struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<u32, 27> = array<u32, 27>(4294967295u, 13007u, 21808u, 0u, 33535u, 4294967295u, 4294967295u, 4294967295u, 13957u, 0u, 56226u, 29933u, 96259u, 21457u, 35975u, 61768u, 1u, 43311u, 1u, 65193u, 5283u, 0u, 1u, 0u, 0u, 62841u, 1u);

var<private> global2: Struct_1 = Struct_1(vec4<u32>(30719u, 20789u, 1u, 0u), 44528u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(1u);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1212f, _wgslsmith_f_op_f32(round(906f))) * _wgslsmith_f_op_f32(trunc(-1263f)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global2 = Struct_1(global2.a, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(global2.b, 37834u, global1[_wgslsmith_index_u32(111708u, 27u)]), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], global1[_wgslsmith_index_u32(global2.a.x, 27u)]), ~u_input.a.zyw)), vec3<u32>(37001u, ~14787u, global2.a.x)));
    global2 = Struct_1(~(~firstTrailingBit(_wgslsmith_sub_vec4_u32(global2.a, vec4<u32>(9674u, u_input.a.x, global1[_wgslsmith_index_u32(0u, 27u)], global2.b)))), 1u & u_input.d);
    let var_0 = ~(57899u >> (~(~(~global1[_wgslsmith_index_u32(98243u, 27u)])) % 32u));
    var var_1 = ~55722i;
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) + vec3<f32>(arg_0, arg_0, 740f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1506f, -594f, 555f) * vec3<f32>(2596f, arg_0, 2422f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1235f, -1000f, arg_0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, -692f, arg_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -388f, arg_0), vec3<f32>(219f, arg_0, 551f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3()), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) - vec3<f32>(-509f, arg_0, arg_0)), vec3<f32>(-680f, arg_0, -1701f))))));
    return Struct_1(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, 43679u, u_input.a.x), vec4<u32>(0u >> (global2.b % 32u), 9137u, u_input.a.x, ~13446u)) | vec4<u32>(max(1u, firstLeadingBit(global1[_wgslsmith_index_u32(var_0, 27u)])), 41689u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)] >> (_wgslsmith_mult_u32(21360u, 8149u) % 32u)), reverseBits(firstLeadingBit(firstTrailingBit(0u))) >> (abs(~(0u ^ global2.b)) % 32u));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.zz * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.x, arg_1.x), vec2<f32>(-948f, arg_1.x))))) + arg_1.ww), _wgslsmith_f_op_vec2_f32(round(arg_1.wy)));
    var var_1 = true;
    global2 = func_2(1000f);
    global0 = array<Struct_2, 18>();
    let var_2 = global0[_wgslsmith_index_u32(~(~(~func_2(_wgslsmith_f_op_f32(trunc(arg_1.x))).b)), 18u)];
    return Struct_2(select(min(_wgslsmith_mod_u32(34619u, global1[_wgslsmith_index_u32(17680u, 27u)]), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28127u, 27u)], 27u)])), 0u, false) << (abs(_wgslsmith_div_u32(global2.b, countOneBits(7532u))) % 32u));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = func_1(~_wgslsmith_sub_i32(0i, _wgslsmith_div_i32(2147483647i, 2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-338f, -1550f, -884f, 457f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-699f, -524f, -459f, 1561f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-879f, -1271f, 1816f, 790f), vec4<f32>(309f, 370f, 321f, 1552f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-3102f, 1576f, 1559f, -570f) + vec4<f32>(-1337f, 1218f, 603f, 277f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1498f, 1110f, -1099f, 410f), vec4<f32>(-1000f, -1816f, 542f, 971f)))) * vec4<f32>(1142f, _wgslsmith_f_op_f32(-1730f * 484f), _wgslsmith_f_op_f32(f32(-1f) * -1123f), -1671f))));
    var var_1 = !vec2<bool>(arg_0, all(vec2<bool>(true, !arg_0)));
    var_0 = Struct_2(1u);
    var_0 = func_1(2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1430f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1340f + -888f), _wgslsmith_f_op_f32(step(548f, 297f))), _wgslsmith_f_op_f32(f32(-1f) * -696f), -311f)));
    let var_2 = func_2(_wgslsmith_f_op_f32(max(-2516f, -1172f)));
    return select(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(var_0.a, 27u)], arg_1.a, u_input.d, reverseBits(21077u)), abs(firstLeadingBit(global2.a)))), ~(~u_input.a), vec4<bool>(select(all(vec4<bool>(var_1.x, arg_0, var_1.x, true)), false, any(vec3<bool>(true, true, true))), arg_0, !any(!vec4<bool>(false, false, var_1.x, true)), true));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = select(select(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, false, true), true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true || select(true, false, true), any(vec2<bool>(true, true)))), select(vec3<bool>(false, all(vec4<bool>(false, true, true, false)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), any(select(vec2<bool>(any(vec2<bool>(true, false)), true), vec2<bool>(any(vec4<bool>(false, false, true, true)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true))));
    let var_1 = arg_0.x;
    let var_2 = _wgslsmith_dot_vec3_i32(-vec3<i32>(-17896i, firstTrailingBit(1i), 2147483647i) | -(vec3<i32>(1i, 1i, 1i) >> (vec3<u32>(15052u, arg_1.x, 20671u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(26997i, 1i, firstLeadingBit(~2147483647i)), reverseBits(-select(vec3<i32>(2147483647i, -2147483647i, 0i), vec3<i32>(5279i, 2147483647i, 50801i), var_0.x))));
    global1 = array<u32, 27>();
    global0 = array<Struct_2, 18>();
    return Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, var_1, arg_1.x, ~0u), select(arg_0 & vec4<u32>(4294967295u, 4294967295u, 4294967295u, arg_1.x), arg_0, select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true)))), countOneBits(select(vec4<u32>(var_1, arg_1.x, arg_1.x, global1[_wgslsmith_index_u32(arg_1.x, 27u)]), u_input.a, var_0.x)) << (~arg_0 % vec4<u32>(32u))), 27592u | var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(func_4(false, func_1(-_wgslsmith_div_i32(69453i, 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(331f, 1759f, 706f, 453f)))), func_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(0i, 1i)), _wgslsmith_add_i32(17422i, -47123i)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-472f, 1449f, 308f, 1000f), vec4<f32>(2004f, -175f, 1770f, 280f)))))), vec4<u32>(~1u, 1u, ~global2.b ^ 19738u, (global2.b ^ 9647u) >> (select(13470u, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], false) % 32u)) | (countOneBits(global2.a) & vec4<u32>(4294967295u, _wgslsmith_mod_u32(u_input.c, u_input.c), _wgslsmith_div_u32(u_input.b, 0u), 4294967295u | u_input.c)));
    global1 = array<u32, 27>();
    let var_0 = u_input.a.x << (func_4(select(true, true, true) && true, func_1(abs(1i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-465f, -809f, 601f, -1472f) - vec4<f32>(692f, -525f, 780f, 1270f)), _wgslsmith_div_vec4_f32(vec4<f32>(1335f, 1345f, -640f, -169f), vec4<f32>(181f, 747f, 1000f, 725f)))), Struct_2(~global2.a.x)).x % 32u);
    let var_1 = 1u;
    global1 = array<u32, 27>();
    global2 = Struct_1(select(global2.a, ~abs(vec4<u32>(28065u, 0u, 4294967295u, 39305u)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))))), func_5(abs(~vec4<u32>(0u, 124434u, 1u, u_input.c) | u_input.a), ~(~max(vec4<u32>(41097u, var_1, 0u, var_0), u_input.a))).a.x);
    var var_2 = Struct_1(select(~(~abs(vec4<u32>(var_0, var_1, 62603u, global2.a.x))), reverseBits(global2.a), true), ~var_1);
    global0 = array<Struct_2, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1868f - 1000f), _wgslsmith_div_f32(-882f, 282f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -178f))), _wgslsmith_f_op_f32(round(-1811f))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-415f - -721f), _wgslsmith_f_op_f32(-347f * -767f), _wgslsmith_f_op_f32(-661f - -962f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-686f, -1342f, 144f) + vec3<f32>(732f, 1000f, 218f)))))), ~abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(6930u, global1[_wgslsmith_index_u32(var_2.a.x, 27u)]), var_2.a.xz), global2.b, _wgslsmith_div_u32(var_0, 4294967295u), _wgslsmith_mod_u32(var_1, 84278u))));
}

