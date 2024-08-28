struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(1540f, 62501u, Struct_1(vec3<f32>(-860f, -301f, 1649f))), Struct_4(-1615f, 68229u, Struct_1(vec3<f32>(-749f, 3350f, -1565f))), Struct_4(184f, 1u, Struct_1(vec3<f32>(-2014f, -552f, 953f))), Struct_4(1817f, 31564u, Struct_1(vec3<f32>(-2520f, 885f, 840f))), Struct_4(-683f, 37180u, Struct_1(vec3<f32>(-671f, 886f, -182f))), Struct_4(994f, 1u, Struct_1(vec3<f32>(1006f, -959f, -1787f))), Struct_4(-1200f, 1u, Struct_1(vec3<f32>(353f, 1695f, -342f))), Struct_4(-357f, 4294967295u, Struct_1(vec3<f32>(122f, -1025f, 682f))), Struct_4(955f, 1u, Struct_1(vec3<f32>(-1692f, 753f, -1179f))), Struct_4(-105f, 4294967295u, Struct_1(vec3<f32>(347f, -1537f, -1111f))), Struct_4(1000f, 4294967295u, Struct_1(vec3<f32>(417f, 156f, -736f))), Struct_4(148f, 0u, Struct_1(vec3<f32>(-964f, -523f, -770f))), Struct_4(-1348f, 108262u, Struct_1(vec3<f32>(881f, 1731f, -733f))), Struct_4(697f, 72342u, Struct_1(vec3<f32>(-105f, 849f, 592f))));

var<private> global3: Struct_3 = Struct_3(vec3<u32>(0u, 2775u, 7640u), vec2<u32>(4294967295u, 48100u), vec3<f32>(552f, -347f, -2229f), 1i, 0i);

var<private> global4: array<Struct_1, 27>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(global1.c));
    let var_1 = select(select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(false, false, true)), vec3<bool>(true, arg_0 > 151f, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), select(vec3<bool>(true, all(vec4<bool>(true, false, true, false)), all(vec4<bool>(false, true, true, false))), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), all(vec4<bool>(true, false, false, false))), vec3<bool>(true, true, true)), vec3<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), true)), !(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), select(true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), 18519u < u_input.a.x)), true));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)), global3.b.x, global4[_wgslsmith_index_u32(~max(41210u | (1u ^ global1.b.x), _wgslsmith_sub_u32(55305u, 1u)), 27u)]);
    let var_3 = var_2.c;
    let var_4 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global1.a, min(abs(vec3<u32>(87095u, 4294967295u, global3.a.x)), global1.a ^ vec3<u32>(global1.a.x, 97289u, global1.b.x))), _wgslsmith_sub_u32(1u, ~var_2.b)), var_2.b);
    return firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global3.e, -1i), vec2<i32>(global3.d, global1.e)), abs(vec2<i32>(global3.d, -1i))), ~(-40876i), abs(abs(0i))) ^ vec3<i32>(-(global1.e & -1i), ~global1.d, global3.e));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    var var_0 = global4[_wgslsmith_index_u32(4294967295u, 27u)];
    let var_1 = -_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, global1.e, 1i), vec3<i32>(0i, -16431i, arg_0)), vec3<i32>(arg_0, global1.d, global3.e)), ~func_3(var_0.a.x, Struct_1(global3.c), Struct_2(Struct_1(global3.c)))), vec3<i32>(min(-global1.d, func_3(global3.c.x, global4[_wgslsmith_index_u32(0u, 27u)], Struct_2(global4[_wgslsmith_index_u32(u_input.a.x, 27u)])).x), _wgslsmith_add_i32(min(1i, 5705i), -arg_0), abs(-global3.d)));
    global0 = array<Struct_4, 16>();
    let var_2 = vec4<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false))), all(vec4<bool>(true, true, true, true)), false, !all(vec2<bool>(false, any(vec4<bool>(false, false, true, true)))));
    let var_3 = select(var_2.zxw, vec3<bool>(true, var_2.x, any(vec4<bool>(select(false, var_2.x, true), var_2.x, any(vec4<bool>(false, var_2.x, true, var_2.x)), var_2.x))), select(vec3<bool>(var_2.x, !(45544u < global1.a.x), any(var_2.xyz)), vec3<bool>(false, false, !var_2.x), select(!(!var_2.xxy), select(vec3<bool>(true, var_2.x, false), select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, true, false), vec3<bool>(false, var_2.x, false)), var_2.yyx), !var_2.zwz)));
    return !var_3.yz;
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = select(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(global3.d != -2147483647i, true), vec2<bool>(true, true)), select(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), true), vec2<bool>(false, any(vec2<bool>(true, true))), select(func_2(1i), vec2<bool>(0u < u_input.a.x, true), any(vec3<bool>(true, true, true)))), !func_2(~abs(2147483647i)));
    global3 = Struct_3(vec3<u32>(0u, firstLeadingBit(select(26882u, u_input.a.x, var_0.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.x, u_input.b), vec2<u32>(1u, global3.a.x)) % 32u)), _wgslsmith_div_u32(firstTrailingBit(global1.b.x), firstLeadingBit(u_input.b))), vec2<u32>(64381u, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) * vec3<f32>(_wgslsmith_f_op_f32(floor(global3.c.x)), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(global1.c.x + global3.c.x)))), _wgslsmith_dot_vec2_i32(~(abs(vec2<i32>(-17367i, global1.d)) | vec2<i32>(global3.e, global3.d)), vec2<i32>(reverseBits(0i), -55756i)), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.e | _wgslsmith_add_i32(-28598i, -16417i), ~global1.d & min(0i, global3.d), 0i, -11776i), -(~(-vec4<i32>(global1.e, -2147483647i, global1.e, global3.d)))));
    var var_1 = ~(0u | _wgslsmith_dot_vec3_u32(~global3.a, firstLeadingBit(~global3.a)));
    var_1 = firstLeadingBit(global3.a.x);
    global1 = Struct_3(select(_wgslsmith_mult_vec3_u32(~vec3<u32>(46486u, 57693u, 0u) ^ global1.a, global1.a), ~global1.a, vec3<bool>(!(!var_0.x), var_0.x | true, false)), _wgslsmith_sub_vec2_u32(~select(u_input.a, global1.b, vec2<bool>(var_0.x, false)), firstTrailingBit(select(global3.b, vec2<u32>(global1.a.x, 88694u), vec2<bool>(var_0.x, var_0.x)))) << (vec2<u32>(select(~10077u, u_input.a.x, var_0.x), countOneBits(49706u)) % vec2<u32>(32u)), global3.c, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(6708i, -66092i), vec2<i32>(global1.d, 1i)), -13052i ^ global3.d), ~abs(global1.e), ~global3.e), _wgslsmith_dot_vec3_i32(vec3<i32>(func_3(global1.c.x, Struct_1(vec3<f32>(-272f, global3.c.x, arg_0.a.x)), Struct_2(Struct_1(vec3<f32>(-922f, 1000f, arg_0.a.x)))).x, min(global3.e, 2147483647i), 34693i), reverseBits(vec3<i32>(25689i, global3.e, global3.d)) >> (vec3<u32>(global3.b.x, 8234u, u_input.b) % vec3<u32>(32u)))), -12657i);
    return ~19738u;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = global2[_wgslsmith_index_u32(~global1.a.x, 14u)];
    var var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(0u), 14u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(194f + 241f), var_0.c.a.x > 2028f)))));
    var var_3 = Struct_3(~max(global3.a, vec3<u32>(~global3.a.x, 4294967295u, 89153u)), abs(firstTrailingBit(global1.a.yx)), _wgslsmith_f_op_vec3_f32(floor(global3.c)), 15373i, global1.d);
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-692f, global1.c.x, var_0.a) * vec3<f32>(-259f, global1.c.x, var_3.c.x)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(var_4.a.a.x)), var_1.c.a.x, -1146f, var_0.a))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_3.c.x)), _wgslsmith_f_op_f32(max(-560f, -1521f)), _wgslsmith_f_op_f32(ceil(var_1.c.a.x)), 1000f)))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5, arg_2: i32, arg_3: vec3<u32>) -> vec2<i32> {
    let var_0 = Struct_2(arg_0.c);
    let var_1 = var_0.a;
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(global1.c, vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1.a.a.x)), _wgslsmith_f_op_f32(step(global3.c.x, -1207f)), _wgslsmith_f_op_f32(-147f - arg_0.c.a.x)))));
    global0 = array<Struct_4, 16>();
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.a.x * var_0.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1160f)), _wgslsmith_f_op_f32(-var_0.a.a.x), true)) * global3.c.x), _wgslsmith_f_op_f32(var_0.a.a.x + global1.c.x)));
    return _wgslsmith_mult_vec2_i32((vec2<i32>(-2514i, firstLeadingBit(-29593i)) << (reverseBits(~arg_3.yz) % vec2<u32>(32u))) ^ select(~(-vec2<i32>(global1.e, arg_2)), _wgslsmith_sub_vec2_i32(vec2<i32>(7813i, -27604i), vec2<i32>(global1.e, arg_2)) & vec2<i32>(global1.e, -3053i), !select(true, false, true)), max(reverseBits(_wgslsmith_mult_vec2_i32(max(vec2<i32>(global3.e, 1i), vec2<i32>(2147483647i, global1.e)), _wgslsmith_sub_vec2_i32(vec2<i32>(global1.d, -11952i), vec2<i32>(global3.e, 38799i)))), vec2<i32>(~(-2147483647i), ~arg_2) | ~(vec2<i32>(0i, 39167i) >> (global3.a.xz % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 27>();
    let var_0 = func_5(global0[_wgslsmith_index_u32(global3.b.x, 16u)], Struct_5(global4[_wgslsmith_index_u32(select(~(~2456u), global3.b.x, false), 27u)], _wgslsmith_f_op_vec4_f32(func_4(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, global1.c.x, 279f) * global3.c))), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_1(Struct_1(vec3<f32>(global1.c.x, global3.c.x, global3.c.x))), _wgslsmith_mult_u32(22886u, 1u)), 27u)]))), func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-144f + 130f) + _wgslsmith_f_op_f32(f32(-1f) * -818f)), global1.c.x), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c) + _wgslsmith_f_op_vec3_f32(global1.c + vec3<f32>(global3.c.x, global3.c.x, 462f)))), Struct_2(global4[_wgslsmith_index_u32(22116u, 27u)])).x, ~(_wgslsmith_mult_vec3_u32(~global3.a, max(global1.a, global1.a)) >> (firstTrailingBit(~vec3<u32>(global3.b.x, 17809u, 0u)) % vec3<u32>(32u))));
    global0 = array<Struct_4, 16>();
    let var_1 = ~(~(~vec3<i32>(~24641i, var_0.x | global3.e, -global3.e)));
    var var_2 = global0[_wgslsmith_index_u32(global3.a.x, 16u)];
    let var_3 = select(vec4<i32>(var_1.x, 2147483647i, var_0.x, 1656i), -(~(~vec4<i32>(1i, global1.d, global3.d, 12720i) ^ vec4<i32>(2147483647i, var_1.x, -1i, -30347i))), !select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, true, false), u_input.a.x >= global3.b.x), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, any(vec4<bool>(true, true, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~global1.d) << (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, 5381u, 19528u, 4294967295u)), ~vec4<u32>(global3.a.x, u_input.a.x, 65485u, global3.b.x)), u_input.b) % 32u), firstTrailingBit(var_3.xyx << (global1.a % vec3<u32>(32u))), _wgslsmith_div_i32(~_wgslsmith_add_i32(var_1.x, var_1.x), firstLeadingBit(1i)) ^ firstLeadingBit(var_3.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.a.x, global3.c.x, 331f, global3.c.x) + vec4<f32>(global3.c.x, 502f, global1.c.x, -517f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, -475f, global3.c.x, global1.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.a, 1000f, var_2.a, -242f)))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_4(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, 2405f, -1000f)), global4[_wgslsmith_index_u32(u_input.a.x, 27u)])).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.c.x, 1286f)), var_2.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-199f)), global3.c.x), global3.c.x), vec4<f32>(570f, global3.c.x, _wgslsmith_f_op_f32(round(global1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * -476f)))));
}

