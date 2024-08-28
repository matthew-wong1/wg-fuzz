struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 81573u;

var<private> global1: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(21560i, 14937i, 5103i, 1i), vec4<i32>(i32(-2147483648), -1i, 15489i, -2194i), vec4<i32>(-10932i, -1i, -1i, -45405i), vec4<i32>(-1181i, 2147483647i, 46497i, i32(-2147483648)), vec4<i32>(0i, -3963i, 17411i, -497i), vec4<i32>(0i, 1i, 1i, 9331i), vec4<i32>(2147483647i, -15148i, i32(-2147483648), -7474i), vec4<i32>(11507i, -27563i, i32(-2147483648), 2147483647i), vec4<i32>(-13564i, i32(-2147483648), 2147483647i, 5378i), vec4<i32>(-2232i, 1i, -46304i, 0i), vec4<i32>(i32(-2147483648), -20472i, -58080i, 1i), vec4<i32>(0i, 6601i, -1i, 20792i), vec4<i32>(-15408i, 2147483647i, 1i, 29598i));

var<private> global2: array<vec3<u32>, 16>;

var<private> global3: array<f32, 7>;

var<private> global4: array<i32, 28> = array<i32, 28>(1i, 31973i, i32(-2147483648), 30580i, i32(-2147483648), 1i, 0i, 13843i, -28241i, 50406i, -52196i, 1i, 9333i, 2147483647i, 31507i, -21966i, 25833i, 24506i, -10293i, 2147483647i, -7257i, -13017i, -42598i, 2147483647i, 50199i, 2147483647i, 13582i, i32(-2147483648));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<bool> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_2.zz))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_2.xx)) * _wgslsmith_div_vec2_f32(arg_2.xx, arg_2.zz))), arg_2.x), any(vec2<bool>(true, arg_1.a.x)), arg_1.b.zxw, Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3[_wgslsmith_index_u32(35072u, 7u)], 655f), arg_2.zz)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1066f, 338f))))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(_wgslsmith_mod_u32(0u, 82768u)), ~11040u), 7u)]), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(453f - 2240f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(4294967295u, 7u)])))))));
    global4 = array<i32, 28>();
    var var_1 = _wgslsmith_div_vec2_i32(countOneBits(countOneBits(vec2<i32>(firstLeadingBit(arg_0), 1i))), abs(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(0i, -2147483647i), abs(0i)), -_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(2147483647i, arg_0)))));
    global2 = array<vec3<u32>, 16>();
    let var_2 = _wgslsmith_dot_vec4_i32(select(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~19152u, max(47859u, 46084u)), 13u)], ~global1[_wgslsmith_index_u32(42936u, 13u)], all(select(select(vec2<bool>(true, false), vec2<bool>(var_0.c.x, var_0.b), true), !arg_1.b.zy, select(vec2<bool>(true, var_0.c.x), var_0.c.zy, vec2<bool>(var_0.b, var_0.c.x))))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, global4[_wgslsmith_index_u32(firstTrailingBit(0u), 28u)], -26282i, global4[_wgslsmith_index_u32(51505u, 28u)]) & global1[_wgslsmith_index_u32(16710u, 13u)], _wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(firstLeadingBit(abs(1u)), 13u)], _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global4[_wgslsmith_index_u32(4294967295u, 28u)], 2147483647i, arg_0), ~vec4<i32>(var_1.x, u_input.a, arg_0, arg_0)))));
    return var_0.c.zy;
}

fn func_2() -> vec4<bool> {
    global3 = array<f32, 7>();
    global2 = array<vec3<u32>, 16>();
    let var_0 = select(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(585u, 28u)], 1i) == global4[_wgslsmith_index_u32(~0u, 28u)]), vec2<bool>(!all(vec4<bool>(true, true, true, true)), true), select(func_3(1i, Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, true, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1406f, global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(120442u, 7u)]) * vec3<f32>(-1000f, global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(0u, 7u)])))), vec2<bool>(true, true), !select(false, all(vec4<bool>(true, true, true, false)), true)));
    global4 = array<i32, 28>();
    let var_1 = Struct_4(firstTrailingBit(-u_input.a) >> (0u % 32u));
    return vec4<bool>(any(vec4<bool>(false, !(true && var_0.x), func_3(u_input.a, Struct_1(vec3<bool>(var_0.x, false, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(0u, 7u)], -1161f) * vec3<f32>(global3[_wgslsmith_index_u32(2262u, 7u)], global3[_wgslsmith_index_u32(11734u, 7u)], -1591f))).x, all(select(var_0, vec2<bool>(true, false), false)))), true, false, true);
}

fn func_1() -> StorageBuffer {
    let var_0 = !vec4<bool>(true, true, true | all(vec3<bool>(true, true, true)), any(!func_2()));
    let var_1 = any(var_0);
    global2 = array<vec3<u32>, 16>();
    global3 = array<f32, 7>();
    global4 = array<i32, 28>();
    return StorageBuffer(~2132u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1619u;
    global2 = array<vec3<u32>, 16>();
    let var_0 = !any(!select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), true)));
    global4 = array<i32, 28>();
    global2 = array<vec3<u32>, 16>();
    let var_1 = select(~1u, 1u, _wgslsmith_f_op_f32(trunc(884f)) >= global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(18661u, 28617u), 1u, min(1u, 24479u)), 7u)]) | 47116u;
    let var_2 = _wgslsmith_div_f32(-680f, -378f);
    var var_3 = !(!var_0);
    let x = u_input.a;
    s_output = func_1();
}

