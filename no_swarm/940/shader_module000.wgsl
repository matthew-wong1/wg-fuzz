struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<bool, 6>;

var<private> global2: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

var<private> global3: u32 = 1u;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    global3 = 1u;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(1f, -802f)));
    let var_1 = firstLeadingBit(20323i);
    let var_2 = -(14481i << (u_input.a % 32u));
    global0 = array<bool, 25>();
    return -(countOneBits(-vec4<i32>(var_2, var_1, u_input.b, var_2)) | vec4<i32>(var_2, min(-20828i, 1i), -2147483647i, ~(-66302i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> u32 {
    global3 = _wgslsmith_add_u32(countOneBits(0u), ~select(u_input.d.x, 57897u, any(vec3<bool>(global0[_wgslsmith_index_u32(48572u, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], arg_1.c)))) >> (abs(min(~1u, 1u)) % 32u);
    global0 = array<bool, 25>();
    var var_0 = false;
    var var_1 = _wgslsmith_clamp_vec4_i32(select(-(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.b, u_input.c), vec4<i32>(0i, -935i, u_input.c, -1i))), select(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 14125i, 1i, -1i), vec4<i32>(-2352i, 5823i, 870i, 1i)), -vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.c), arg_1.c), false), -vec4<i32>(_wgslsmith_add_i32(u_input.c, -7922i), countOneBits(25678i), u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -17626i), vec2<i32>(-1i, -27799i))) & min(~vec4<i32>(3525i, u_input.b, -16564i, u_input.c), ~(vec4<i32>(-32180i, u_input.c, 0i, 0i) | vec4<i32>(-2147483647i, -9864i, 22361i, u_input.c))), reverseBits(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-16366i, -9574i, u_input.b, u_input.b)), func_3())) | vec4<i32>(-2147483647i, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(37426i, u_input.c, -14728i, u_input.b), vec4<i32>(-22500i, 2147483647i, u_input.b, u_input.c))), _wgslsmith_mult_i32(57428i, reverseBits(u_input.b)), 1i));
    global3 = 1u;
    return abs(1u);
}

fn func_1() -> vec3<i32> {
    var var_0 = !(!select(global2[_wgslsmith_index_u32(59143u, 16u)], !global2[_wgslsmith_index_u32(func_2(u_input.d.yy, Struct_1(919f, vec4<f32>(-1000f, -2725f, -1302f, -636f), true, vec2<f32>(775f, -510f))), 16u)], global2[_wgslsmith_index_u32(u_input.e.x, 16u)]));
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    let var_1 = Struct_2(-(~_wgslsmith_mod_vec2_i32(vec2<i32>(-56438i, u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.b), vec2<i32>(u_input.c, 12401i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(420f, -1050f) + vec2<f32>(-1335f, 1297f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-753f, 489f))))), _wgslsmith_mod_i32(u_input.c, abs(14658i)), _wgslsmith_mod_u32(37394u, ~min(1u, u_input.e.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u) | vec2<u32>(u_input.a, u_input.d.x), ~vec2<u32>(56037u, u_input.e.x)) % 32u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-894f, -1465f)) * -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-421f, 531f, 786f, 1000f)))), global1[_wgslsmith_index_u32(7140u, 6u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(528f, -295f))))));
    var var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(max(-1i, 2147483647i), firstTrailingBit(u_input.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(-var_1.c, u_input.b), vec2<i32>(var_1.a.x & var_1.a.x, u_input.b))), -var_1.a);
    return -max(-firstTrailingBit(vec3<i32>(38387i, -35972i, 2147483647i)), _wgslsmith_mult_vec3_i32(abs(_wgslsmith_div_vec3_i32(vec3<i32>(40552i, u_input.b, var_2.x), vec3<i32>(u_input.b, -48573i, u_input.c))), _wgslsmith_div_vec3_i32(vec3<i32>(-26841i, var_1.a.x, -20082i), vec3<i32>(u_input.b, -2147483647i, -9879i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(633f, 1372f)));
    let var_1 = select(~select(66151u, ~7324u, global1[_wgslsmith_index_u32(1u, 6u)]) >= 0u, true | select(select(u_input.d.x <= u_input.e.x, global0[_wgslsmith_index_u32(43157u, 25u)], true), true, !any(vec4<bool>(global1[_wgslsmith_index_u32(49786u, 6u)], global1[_wgslsmith_index_u32(u_input.e.x, 6u)], true, true))), (all(global2[_wgslsmith_index_u32(u_input.e.x, 16u)]) & true) | !(727f < var_0.x));
    let var_2 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, u_input.c, u_input.c), func_1()), 1i, reverseBits(-8306i), u_input.c), vec4<i32>(u_input.b, -2147483647i, -(~u_input.c), _wgslsmith_div_i32(-u_input.b, 0i))), _wgslsmith_sub_vec4_i32(vec4<i32>(0i ^ u_input.c, -1i, select(2147483647i, u_input.b, true), u_input.b), (vec4<i32>(-32375i, u_input.c, -775i, u_input.b) ^ vec4<i32>(u_input.b, u_input.c, -2147483647i, -27845i)) >> (u_input.e % vec4<u32>(32u))) ^ vec4<i32>(max(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.c, 0i))), ~max(-1i, 2147483647i), u_input.c, -1i));
    let var_3 = all(vec4<bool>(any(select(!global2[_wgslsmith_index_u32(273u, 16u)], !global2[_wgslsmith_index_u32(u_input.e.x, 16u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(16248u, u_input.e.x), 16u)])), true, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_2(_wgslsmith_clamp_vec2_u32(u_input.e.zy, u_input.d.xz, vec2<u32>(0u, u_input.e.x)), Struct_1(var_0.x, vec4<f32>(-1885f, var_0.x, var_0.x, 721f), global1[_wgslsmith_index_u32(10784u, 6u)], vec2<f32>(1147f, var_0.x))), u_input.e.x), 6u)], (var_1 == true) | (global1[_wgslsmith_index_u32(~4294967295u, 6u)] && false)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x)))), var_0.x);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(854f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f)), 2785f, _wgslsmith_f_op_f32(select(-2411f, _wgslsmith_f_op_f32(round(var_0.x)), !var_3)));
    global2 = array<vec3<bool>, 16>();
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))) - _wgslsmith_f_op_f32(f32(-1f) * -357f)), vec4<u32>(u_input.d.x, ~(~20861u), u_input.e.x, _wgslsmith_mult_u32(u_input.d.x, abs(_wgslsmith_mod_u32(24888u, u_input.e.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1476f) - var_4.ywy) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.zwz))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.xwx), var_4.xyy)));
}

