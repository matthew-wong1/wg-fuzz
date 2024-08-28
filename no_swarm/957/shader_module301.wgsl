struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(43846u, 37117u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(2789u, 56675u, 23621u), vec3<u32>(0u, 38155u, 50652u), vec3<u32>(19781u, 0u, 1u), vec3<u32>(0u, 1u, 56116u), vec3<u32>(25307u, 80210u, 4294967295u), vec3<u32>(20860u, 58008u, 4294967295u), vec3<u32>(25691u, 4294967295u, 37993u), vec3<u32>(90653u, 1u, 7185u), vec3<u32>(2081u, 0u, 383u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(750u, 0u, 4294967295u), vec3<u32>(25626u, 4294967295u, 65462u), vec3<u32>(0u, 0u, 1u), vec3<u32>(66788u, 1u, 0u), vec3<u32>(1u, 32833u, 4294967295u), vec3<u32>(43150u, 0u, 55899u), vec3<u32>(0u, 58528u, 0u), vec3<u32>(4294967295u, 1u, 59860u), vec3<u32>(4294967295u, 130320u, 91286u), vec3<u32>(12434u, 3064u, 71801u), vec3<u32>(7229u, 4294967295u, 1u), vec3<u32>(56193u, 1u, 4294967295u), vec3<u32>(4294967295u, 36695u, 21729u), vec3<u32>(4294967295u, 28648u, 0u), vec3<u32>(1u, 16565u, 1u), vec3<u32>(45916u, 71432u, 27826u), vec3<u32>(1u, 6825u, 4294967295u), vec3<u32>(43471u, 31631u, 6902u), vec3<u32>(39441u, 4294967295u, 92196u), vec3<u32>(21529u, 67587u, 4294967295u));

var<private> global1: array<u32, 20>;

var<private> global2: i32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: i32, arg_3: vec2<f32>) -> vec4<i32> {
    global0 = array<vec3<u32>, 32>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2248f + arg_3.x))))));
    global1 = array<u32, 20>();
    let var_1 = Struct_3(arg_2, Struct_1(i32(-1i) * -(arg_2 | u_input.c), vec2<bool>(true, false), vec2<i32>(reverseBits(-2147483647i) << (_wgslsmith_dot_vec3_u32(arg_1.zzy, global0[_wgslsmith_index_u32(4294967295u, 32u)]) % 32u), ~u_input.c), !any(vec3<bool>(true, false, true))), _wgslsmith_div_vec3_i32(abs(vec3<i32>(-27351i, _wgslsmith_div_i32(7377i, u_input.d), 1i)), vec3<i32>(-_wgslsmith_clamp_i32(u_input.d, u_input.d, 1i), min(-arg_2, min(-27760i, arg_2)), -2147483647i)));
    var var_2 = Struct_5(u_input.a.x, _wgslsmith_sub_i32(2147483647i, var_1.b.c.x));
    return _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.b, var_2.b, firstLeadingBit(arg_2), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.c, var_1.c), -var_1.c)), vec4<i32>(-1506i, var_2.b, _wgslsmith_mod_i32(var_1.c.x, countOneBits(-var_1.c.x)), _wgslsmith_mult_i32(i32(-1i) * -9016i, var_2.b)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: vec3<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_mult_u32(40826u, _wgslsmith_mult_u32(_wgslsmith_add_u32(firstLeadingBit(~73531u), u_input.a.x), ~(~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(13648u, 20u)], 49349u))));
    var var_1 = arg_0.x;
    let var_2 = _wgslsmith_dot_vec4_i32(-select(abs(-vec4<i32>(-22324i, u_input.d, arg_1.b, u_input.d)), abs(vec4<i32>(-56716i, 0i, 0i, arg_1.b)) | vec4<i32>(-1i, arg_1.b, -9073i, u_input.d), true), firstLeadingBit(-_wgslsmith_mult_vec4_i32(-vec4<i32>(0i, 1i, 10083i, 30742i), func_3(global1[_wgslsmith_index_u32(51653u, 20u)], vec4<u32>(0u, 4294967295u, 6582u, arg_1.a), arg_1.b, vec2<f32>(arg_2.x, arg_0.x)))));
    var var_3 = Struct_1(abs(firstTrailingBit(_wgslsmith_mod_i32(-2214i, -2147483647i))), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), false)), vec2<bool>(select(9073u <= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.a, 20u)], 20u)], false, any(vec3<bool>(false, true, true))), any(vec4<bool>(true, false, false, false)) && true)), -vec2<i32>(arg_1.b, min(61228i, reverseBits(2147483647i))), !all(vec4<bool>(true, true, true, true)) & (((arg_2.x < -924f) & true) && true));
    let var_4 = Struct_5(global1[_wgslsmith_index_u32((~u_input.a.x & select(arg_1.a, ~global1[_wgslsmith_index_u32(33805u, 20u)], any(vec4<bool>(false, false, true, true)))) | firstLeadingBit(u_input.a.x), 20u)], _wgslsmith_add_i32(var_2, _wgslsmith_dot_vec2_i32(var_3.c, vec2<i32>(2147483647i, -2147483647i)) | -30632i));
    return !select(!(!(!vec3<bool>(var_3.b.x, var_3.b.x, var_3.d))), select(!vec3<bool>(var_3.b.x, var_3.b.x, false), select(select(vec3<bool>(var_3.b.x, false, var_3.d), vec3<bool>(var_3.b.x, var_3.d, var_3.b.x), vec3<bool>(true, false, var_3.d)), !vec3<bool>(true, var_3.d, var_3.b.x), select(vec3<bool>(true, var_3.d, true), vec3<bool>(false, false, var_3.d), vec3<bool>(true, true, false))), any(var_3.b)), vec3<bool>(false, !any(var_3.b), any(var_3.b)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = !(!vec4<bool>(false, any(func_2(vec3<f32>(-185f, -262f, -1011f), Struct_5(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], -2147483647i), vec3<f32>(-112f, 1720f, 1000f))), !all(vec4<bool>(false, true, false, false)), true));
    let var_1 = Struct_3(_wgslsmith_sub_i32(-26632i, _wgslsmith_div_i32(firstTrailingBit(~u_input.d), min(_wgslsmith_mod_i32(-30004i, u_input.d), abs(u_input.b)))), Struct_1(-select(countOneBits(-9550i), i32(-1i) * -1i, all(vec3<bool>(var_0.x, false, var_0.x))), select(vec2<bool>(u_input.a.x > 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)] <= 1u), vec2<bool>(var_0.x, true), true), countOneBits(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, 16716i), vec2<i32>(u_input.b, arg_0)), vec2<i32>(u_input.b, arg_0) ^ vec2<i32>(2147483647i, u_input.c))), ~select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], u_input.a.x, var_0.x) >= 23864u), _wgslsmith_div_vec3_i32((vec3<i32>(2147483647i, -2338i, -5236i) & (vec3<i32>(u_input.d, arg_0, u_input.c) & vec3<i32>(17919i, u_input.c, 9680i))) & func_3(1u, vec4<u32>(68330u, 9594u, global1[_wgslsmith_index_u32(11228u, 20u)], u_input.a.x) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)], u_input.a.x, 4294967295u, 64962u) % vec4<u32>(32u)), -1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(-636f, -1059f) * vec2<f32>(-1475f, -884f))).wyz, ~vec3<i32>(24269i, -u_input.c, func_3(1u, vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], 0u, 1u), arg_0, vec2<f32>(799f, 1000f)).x)));
    var var_2 = var_1.b;
    var_2 = var_1.b;
    let var_3 = _wgslsmith_f_op_f32(-647f + _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(989f + -1000f)));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(firstTrailingBit(1i));
    let var_1 = 1f;
    global2 = ~(-u_input.b);
    global2 = -2147483647i;
    var var_2 = Struct_3(select(u_input.c, 2147483647i, false), Struct_1((-2147483647i | _wgslsmith_add_i32(u_input.c, 0i)) & _wgslsmith_sub_i32(countOneBits(-52325i), -var_0.a), var_0.b, vec2<i32>(func_1(select(u_input.b, 47944i, var_0.b.x)).a, var_0.c.x), !(true && var_0.b.x)), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(func_1(1i).a, u_input.d & 0i, ~(-2147483647i)), firstTrailingBit(vec3<i32>(9094i, -12876i, u_input.d))), vec3<i32>(-func_1(6257i).a, -42358i, -reverseBits(var_0.c.x))));
    global0 = array<vec3<u32>, 32>();
    let var_3 = _wgslsmith_f_op_f32(trunc(var_1));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, ~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(6628u, ~1070u), 20u)]), func_3(_wgslsmith_clamp_u32(9321u, ~min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)], 1u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51747u, 20u)], 32u)], global0[_wgslsmith_index_u32(26474u, 32u)]), global1[_wgslsmith_index_u32(85311u, 20u)] >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)] % 32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(48071u, 20u)], u_input.a.x), _wgslsmith_clamp_u32(0u, u_input.a.x, 0u), 1u, global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), abs(select(vec4<u32>(10507u, 11577u, global1[_wgslsmith_index_u32(4294967295u, 20u)], 1u), vec4<u32>(1u, 0u, 7953u, 35120u), vec4<bool>(true, var_2.b.b.x, false, true)))), firstTrailingBit(var_2.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1082f, -194f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_1))), vec2<f32>(_wgslsmith_div_f32(-1537f, var_1), _wgslsmith_f_op_f32(-1624f - var_1)))).xw, _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, -649f) * _wgslsmith_f_op_f32(select(var_3, 432f, true))))), !(!var_0.d))), select(~(vec3<u32>(1u, 4294967295u, 1u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(1u, 37759u, global1[_wgslsmith_index_u32(0u, 20u)]))), abs(vec3<u32>(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(1u, 20u)], 14368u, 0u), global1[_wgslsmith_index_u32(65878u, 20u)] >> (u_input.a.x % 32u), 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2258f, var_1))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3)))));
}

