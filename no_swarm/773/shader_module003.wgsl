struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: bool,
    d: bool,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 13325u;

var<private> global1: f32 = -415f;

var<private> global2: array<u32, 27> = array<u32, 27>(34120u, 4294967295u, 1u, 4294967295u, 46599u, 0u, 5959u, 46059u, 12311u, 55407u, 18995u, 22008u, 82510u, 0u, 0u, 4294967295u, 1u, 30772u, 4294967295u, 70312u, 14953u, 94143u, 0u, 27839u, 1u, 1u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    global0 = 29561u;
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(999f, -830f, -1251f, 1672f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1761f, -906f, -413f, 1688f) + vec4<f32>(-234f, -1091f, 292f, 338f)))) + vec4<f32>(-526f, _wgslsmith_f_op_f32(f32(-1f) * -808f), _wgslsmith_f_op_f32(min(1000f, 1741f)), -317f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 651f, -591f, 935f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(144f, -2171f, -1204f, -1183f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-483f, -612f, 1482f, 131f))))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true))))));
    let var_1 = Struct_1(vec2<u32>(9123u, firstLeadingBit(74840u) | countOneBits(u_input.e.x)) >> (abs(vec2<u32>(4294967295u, 38469u)) % vec2<u32>(32u)), !select(vec4<bool>(true, true, u_input.b.x <= -1i, true), vec4<bool>(true, all(vec2<bool>(false, true)), true, all(vec4<bool>(false, true, false, true))), vec4<bool>(true, true, any(vec2<bool>(true, false)), false)), 115889u <= abs(u_input.c.x), var_0);
    var var_2 = Struct_4(var_1.d.yw, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(45569u, arg_0.x, global2[_wgslsmith_index_u32(0u, 27u)], 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a.x, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, arg_0.x, var_1.a.x, 24566u)), true), ~(~vec4<u32>(1u, 30413u, var_1.a.x, 38318u))), ~firstTrailingBit(~vec4<u32>(var_1.a.x, u_input.e.x, 0u, 1u))), var_1.c, any(vec4<bool>(!any(var_1.b), true, !select(false, var_1.c, var_1.c), true)));
    global0 = abs(global2[_wgslsmith_index_u32(var_2.b.x, 27u)] << (select(~var_1.a.x, abs(4294967295u) >> (var_2.b.x % 32u), var_1.b.x) % 32u));
    return -6637i;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    var var_0 = vec4<i32>(~_wgslsmith_mult_i32(u_input.d, ~(-arg_1)), arg_0.x, -((-arg_0.x >> (0u % 32u)) ^ 2147483647i), -func_3(~_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(4294967295u, 46449u, u_input.c.x))));
    return u_input.e.x;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: bool) -> u32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1259f)), 619f))), vec4<u32>(func_2(_wgslsmith_div_vec3_i32(~u_input.b.wzx, ~u_input.b.ywx), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(arg_1, arg_1)))), 21947u, ~15846u, ~arg_0), arg_2, !arg_2);
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.a.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_div_f32(var_0.a.x, -1534f)))))));
    var var_1 = Struct_1(var_0.b.xx >> (vec2<u32>(~(var_0.b.x & arg_0), func_2(~u_input.b.yww, u_input.d)) % vec2<u32>(32u)), vec4<bool>(any(select(select(vec3<bool>(var_0.c, true, arg_2), vec3<bool>(arg_2, false, false), false), vec3<bool>(true, false, true), false)), true, (~u_input.d > arg_1) & (_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, arg_1), u_input.b.yxx) < (arg_1 ^ -26529i)), _wgslsmith_f_op_f32(f32(-1f) * -1000f) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.a.x))))), var_0.a.x < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(729f - var_0.a.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1238f, var_0.a.x, var_0.a.x, var_0.a.x)))))));
    global0 = u_input.e.x;
    let var_2 = reverseBits(max(u_input.b.yyz, vec3<i32>(firstLeadingBit(u_input.d), select(arg_1, -12411i, var_0.c), func_3(var_0.b.wyz))) >> (vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(84309u, 27u)], 1u, arg_0), vec3<u32>(var_0.b.x, u_input.c.x, 0u)), 0u, ~4294967295u) % vec3<u32>(32u)));
    return ~_wgslsmith_mod_u32(4294967295u, var_0.b.x) | firstTrailingBit(~40697u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~max(func_1(global2[_wgslsmith_index_u32(0u, 27u)], 0i, true), ~u_input.e.x), 27u)], 27u)], global2[_wgslsmith_index_u32(~reverseBits(abs(53582u)), 27u)], true);
    let var_0 = u_input.b.x;
    var var_1 = ~_wgslsmith_clamp_vec4_u32(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(7464u, u_input.e.x, 57426u, 18406u), vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 27u)], 27u)], 25535u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 27u)], 27u)])), vec4<u32>(107710u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 27u)], 27u)], 1u, 7980u), true), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(68026u, 1u), ~36405u, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(10449u, 27u)], 41139u), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(5578u, 27u)], global2[_wgslsmith_index_u32(u_input.e.x, 27u)], 54061u), 27u)]), _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.e.x, 4294967295u, 87334u, u_input.c.x), vec4<u32>(1u, 0u, u_input.e.x, global2[_wgslsmith_index_u32(21845u, 27u)]), true), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 27u)], 27u)], u_input.e.x, u_input.a.x, 4294967295u))), ~abs(vec4<u32>(4294967295u, u_input.c.x, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], 27u)]) | vec4<u32>(4294967295u, u_input.e.x, u_input.c.x, 14779u)));
    global0 = 1u;
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-186f, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(abs(var_2), _wgslsmith_add_i32(u_input.d, u_input.d), var_0), -3743i, reverseBits(abs(var_2))), u_input.b.wwz), reverseBits(-_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-26627i, var_2), vec2<i32>(var_2, var_0), u_input.b.ww), vec2<i32>(var_2, var_2))), reverseBits(var_0));
}

