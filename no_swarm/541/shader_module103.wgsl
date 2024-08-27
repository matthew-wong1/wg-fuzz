struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(true), vec4<i32>(-49074i, 60174i, 27412i, -10495i), Struct_1(false), vec3<u32>(33290u, 0u, 0u)), Struct_2(Struct_1(false), vec4<i32>(-13213i, 1i, 0i, i32(-2147483648)), Struct_1(false), vec3<u32>(15117u, 4294967295u, 1u)), Struct_2(Struct_1(false), vec4<i32>(2147483647i, 2147483647i, 50742i, 1i), Struct_1(true), vec3<u32>(74699u, 56131u, 4294967295u)), Struct_2(Struct_1(true), vec4<i32>(26098i, -24787i, 1i, 1i), Struct_1(false), vec3<u32>(2110u, 45654u, 89496u)), Struct_2(Struct_1(false), vec4<i32>(24986i, -1i, 15499i, 17321i), Struct_1(true), vec3<u32>(23973u, 4294967295u, 4294967295u)), Struct_2(Struct_1(true), vec4<i32>(5978i, -20521i, 11487i, -11674i), Struct_1(true), vec3<u32>(87954u, 4294967295u, 65266u)), Struct_2(Struct_1(true), vec4<i32>(2147483647i, 1i, -8442i, i32(-2147483648)), Struct_1(true), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_2(Struct_1(true), vec4<i32>(2147483647i, 1i, 0i, -1i), Struct_1(true), vec3<u32>(1u, 4294967295u, 1u)), Struct_2(Struct_1(false), vec4<i32>(-18843i, 32959i, 0i, -6805i), Struct_1(false), vec3<u32>(25721u, 18275u, 29473u)), Struct_2(Struct_1(true), vec4<i32>(1i, 2147483647i, i32(-2147483648), -31590i), Struct_1(false), vec3<u32>(36183u, 28223u, 83594u)), Struct_2(Struct_1(true), vec4<i32>(31844i, i32(-2147483648), 50082i, 2147483647i), Struct_1(false), vec3<u32>(1u, 90952u, 1u)), Struct_2(Struct_1(false), vec4<i32>(i32(-2147483648), i32(-2147483648), 46857i, -6979i), Struct_1(true), vec3<u32>(41134u, 17460u, 58501u)), Struct_2(Struct_1(false), vec4<i32>(4647i, 24687i, i32(-2147483648), 0i), Struct_1(false), vec3<u32>(0u, 4294967295u, 39011u)), Struct_2(Struct_1(true), vec4<i32>(-7370i, i32(-2147483648), -31854i, 15487i), Struct_1(true), vec3<u32>(0u, 4294967295u, 11910u)), Struct_2(Struct_1(false), vec4<i32>(19536i, i32(-2147483648), -1i, 1755i), Struct_1(false), vec3<u32>(4294967295u, 4294967295u, 52694u)));

var<private> global1: array<Struct_1, 3>;

var<private> global2: f32;

var<private> global3: u32 = 0u;

var<private> global4: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mod_u32(121455u, _wgslsmith_mult_u32(1u, 1u)) ^ _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(51743u, 4609u, 42729u, 43434u), vec4<u32>(4294967295u, 46270u, 0u, 1u)), 0u), 1u >> (~max(4294967295u, 4294967295u) % 32u)), 15u)];
    global3 = 41793u;
    global1 = array<Struct_1, 3>();
    var var_1 = Struct_2(Struct_1(!any(vec2<bool>(false, var_0.c.a))), ~vec4<i32>(1i, 1i, ~(-393i), ~(u_input.b.x ^ 66377i)), global1[_wgslsmith_index_u32(var_0.d.x, 3u)], _wgslsmith_mult_vec3_u32(var_0.d, countOneBits(var_0.d)));
    global1 = array<Struct_1, 3>();
    return -747f;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    global1 = array<Struct_1, 3>();
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(vec2<f32>(589f, 580f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2051f))))))), 1f);
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-929f)))))));
    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b | _wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_0.b.x, u_input.a.x, arg_1.b.x) & arg_1.b, reverseBits(vec4<i32>(arg_1.b.x, var_0.b.x, var_0.b.x, u_input.b.x))), select((arg_1.b >> (vec4<u32>(0u, arg_1.d.x, var_0.d.x, 40124u) % vec4<u32>(32u))) ^ vec4<i32>(2389i, var_0.b.x, u_input.a.x, 1i), ~var_0.b | abs(vec4<i32>(11806i, -42184i, -2147483647i, arg_1.b.x)), !select(vec4<bool>(var_0.c.a, true, var_0.c.a, false), vec4<bool>(arg_1.a.a, arg_2.a, arg_2.a, arg_1.a.a), arg_1.c.a))), var_0.b);
    return !select(!(!select(vec4<bool>(false, false, false, var_0.a.a), vec4<bool>(true, arg_1.c.a, true, var_0.a.a), false)), select(select(!vec4<bool>(true, arg_2.a, arg_1.a.a, arg_2.a), vec4<bool>(true, arg_1.a.a, arg_2.a, false), select(vec4<bool>(var_0.a.a, arg_1.a.a, arg_1.a.a, arg_1.a.a), vec4<bool>(false, true, arg_1.a.a, true), false)), vec4<bool>(all(vec3<bool>(arg_2.a, arg_2.a, true)), all(vec3<bool>(true, true, false)), true, arg_2.a && true), select(select(vec4<bool>(false, false, arg_2.a, true), vec4<bool>(var_0.a.a, false, var_0.a.a, arg_1.a.a), vec4<bool>(true, false, true, false)), select(vec4<bool>(arg_1.c.a, false, arg_1.c.a, var_0.a.a), vec4<bool>(false, arg_2.a, var_0.c.a, false), arg_2.a), var_0.c.a)), false);
}

fn func_1(arg_0: u32) -> vec4<bool> {
    var var_0 = vec2<bool>(all(!vec3<bool>(true, any(vec2<bool>(true, false)), true)), any(vec2<bool>(any(vec3<bool>(true, true, true)), false)));
    global1 = array<Struct_1, 3>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-441f, _wgslsmith_f_op_f32(min(689f, -1793f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -604f))))));
    global3 = arg_0;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1)));
    return select(!select(select(select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(false, true, true, false), vec4<bool>(true, var_0.x, true, false)), func_2(vec3<u32>(arg_0, 0u, 4294967295u), Struct_2(Struct_1(false), u_input.b, global1[_wgslsmith_index_u32(0u, 3u)], vec3<u32>(arg_0, 7144u, arg_0)), Struct_1(false)), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), select(func_2(vec3<u32>(arg_0, arg_0, arg_0), Struct_2(Struct_1(var_0.x), vec4<i32>(-879i, -7450i, 2147483647i, 40480i), Struct_1(false), vec3<u32>(arg_0, 13180u, arg_0)), global1[_wgslsmith_index_u32(arg_0, 3u)]), func_2(vec3<u32>(arg_0, 4294967295u, arg_0), global0[_wgslsmith_index_u32(arg_0, 15u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]), !vec4<bool>(var_0.x, var_0.x, var_0.x, false)), var_0.x || true), !(!(!func_2(vec3<u32>(75727u, arg_0, 25753u), Struct_2(global1[_wgslsmith_index_u32(arg_0, 3u)], u_input.b, global1[_wgslsmith_index_u32(arg_0, 3u)], vec3<u32>(arg_0, 1u, 8211u)), Struct_1(var_0.x)))), vec4<bool>(any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), arg_0 != 76772u)), var_0.x, true, func_2(reverseBits(countOneBits(vec3<u32>(0u, 49655u, 4294967295u))), Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, arg_0), 3u)], firstLeadingBit(vec4<i32>(-87720i, u_input.a.x, u_input.a.x, 1i)), Struct_1(var_0.x), vec3<u32>(0u, arg_0, arg_0) << (vec3<u32>(1u, arg_0, 4294967295u) % vec3<u32>(32u))), Struct_1(true)).x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~0u & _wgslsmith_clamp_u32(select(1u, 0u, any(vec4<bool>(false, true, true, false)) && true), 1u, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(55855u, 4294967295u), 115366u));
    var var_0 = 56915u;
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) ^ abs(_wgslsmith_add_u32(~abs(26732u), ~4294967295u));
    global3 = var_1;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1317f, 343f, -1269f, -124f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(175f, 1285f, 1284f, 412f) + vec4<f32>(1048f, 907f, 1201f, -627f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1864f, -255f, 426f, -1000f), vec4<f32>(602f, -1121f, 549f, -1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(317f, 1000f, -945f, -142f))))), all(func_1(1u))))));
    var var_3 = ~(~(~firstLeadingBit(select(vec4<u32>(var_1, var_1, var_1, 19679u), vec4<u32>(var_1, var_1, 44040u, var_1), vec4<bool>(false, false, false, true)))));
    let var_4 = ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~52831u, min(~var_1, var_1)), _wgslsmith_mod_u32(var_3.x, max(select(506u, var_1, false), _wgslsmith_div_u32(0u, var_3.x))), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(~firstTrailingBit(_wgslsmith_mod_vec4_i32(u_input.b, u_input.b)), _wgslsmith_mult_vec4_i32(-u_input.b, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 1i, -2884i, u_input.b.x), -vec4<i32>(1i, u_input.b.x, 0i, -45455i)))), firstLeadingBit(firstLeadingBit(-firstTrailingBit(u_input.a.x))));
}

