struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<u32, 30> = array<u32, 30>(11288u, 1115u, 1u, 4294967295u, 4294967295u, 28957u, 0u, 44589u, 25080u, 4294967295u, 58511u, 66493u, 4294967295u, 0u, 4294967295u, 18727u, 73904u, 0u, 45885u, 29686u, 18455u, 4294967295u, 48575u, 53860u, 4170u, 4294967295u, 59598u, 4294967295u, 13041u, 46485u);

var<private> global2: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false));

var<private> global3: array<vec2<bool>, 10>;

var<private> global4: Struct_4 = Struct_4(22154u, vec2<u32>(13748u, 0u), -427f, -1i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> vec4<f32> {
    global1 = array<u32, 30>();
    global3 = array<vec2<bool>, 10>();
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_0 + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.xy), arg_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(210f, global4.c), global0.zx, global3[_wgslsmith_index_u32(769u, 10u)])))))));
    let var_1 = 34630i;
    var var_2 = false;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x - -313f))), global4.c, _wgslsmith_f_op_f32(global4.c + global4.c)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-601f, -278f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-905f, 1453f)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(max(global4.c, _wgslsmith_f_op_f32(arg_0.x - 2218f)))), !((global4.a >> (global4.a % 32u)) < global4.b.x))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))), 485f, 263f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, _wgslsmith_f_op_f32(step(214f, 2206f)), _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, arg_0, arg_0, -1146f), vec4<f32>(arg_0, arg_0, -204f, -1091f))), _wgslsmith_f_op_vec4_f32(func_3(global0.xw)), !vec4<bool>(arg_1.b.x, false, arg_1.a.x, arg_1.a.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1098f, 350f, arg_0, global0.x) * vec4<f32>(global0.x, global0.x, global0.x, global4.c)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.c, 157f, 332f, 1209f)))))));
    global1 = array<u32, 30>();
    let var_0 = _wgslsmith_div_f32(global4.c, _wgslsmith_f_op_f32(-global4.c));
    var var_1 = true;
    var_1 = arg_2;
    return ~select(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, u_input.b, 1u), select(4294967295u, max(u_input.b, 5301u), true), 4294967295u), _wgslsmith_mod_u32(u_input.a, ~(~global4.b.x)), arg_2);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -449f, global4.c, global4.c))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global4.c, global4.c, 487f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1338f, 1012f, -2768f, -1455f))))))), true));
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(trunc(global0.wx)), max(max(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(95293u, 30u)], abs(4294967295u)), ~40793u), func_2(global4.c, arg_2, true)), -firstTrailingBit(vec3<i32>(~global4.d, -41781i, select(global4.d, global4.d, arg_1.x))), !vec3<bool>(arg_0.x, true, !(!arg_2.b.x)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1385f, var_0.a.x)), _wgslsmith_f_op_f32(-global4.c)))), _wgslsmith_div_f32(global0.x, global0.x));
    global2 = array<Struct_3, 12>();
    global4 = Struct_4(~_wgslsmith_add_u32(~(global4.b.x >> (12468u % 32u)), _wgslsmith_sub_u32(u_input.a, 29909u) & 2264u), _wgslsmith_div_vec2_u32(global4.b, select(firstTrailingBit(global4.b) ^ firstLeadingBit(vec2<u32>(u_input.a, 9179u)), ~(~vec2<u32>(6002u, 0u)), any(vec3<bool>(arg_1.x, true, true)))), var_0.a.x, ~var_0.c.x);
    return arg_2;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    global3 = array<vec2<bool>, 10>();
    let var_0 = global0.xyy;
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(-arg_0), arg_0, i32(-1i) * -2147483647i), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, 2147483647i, 1i), vec3<i32>(1i, 5193i, 2147483647i)), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, -28451i, arg_0)), vec3<i32>(0i, 2998i, global4.d))), min(-vec3<i32>(26264i, arg_0, global4.d), vec3<i32>(-arg_0, i32(-1i) * -2719i, -global4.d))));
    global4 = Struct_4(~global4.b.x ^ ~_wgslsmith_mod_u32(min(u_input.a, global4.a), u_input.b), ~vec2<u32>(26109u, firstLeadingBit(4294967295u & global1[_wgslsmith_index_u32(0u, 30u)])), 993f, -_wgslsmith_dot_vec3_i32(~(vec3<i32>(-1i, 12019i, -61338i) & var_1), abs(vec3<i32>(792i, -1i, 0i))));
    global2 = array<Struct_3, 12>();
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(~global4.d, -1i), global4.d | global4.d), -1272i), ~global4.d, abs(~global4.d));
    global4 = Struct_4(reverseBits(u_input.b & 2037u), ~(~vec2<u32>(global4.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(30952u, 29921u), vec2<u32>(13634u, global4.a)))), _wgslsmith_f_op_f32(abs(673f)), -2147483647i);
    let var_1 = func_4(1i, _wgslsmith_f_op_f32(trunc(-179f)), func_1(vec4<bool>(true, true && (global4.c >= global0.x), abs(58633i) != (global4.d << (2862u % 32u)), any(vec3<bool>(true, false, true))), !select(global3[_wgslsmith_index_u32(39222u, 10u)], !global3[_wgslsmith_index_u32(16967u, 10u)], global3[_wgslsmith_index_u32(4294967295u, 10u)]), Struct_2(global3[_wgslsmith_index_u32(1u, 10u)], !global3[_wgslsmith_index_u32(min(73989u, u_input.a), 10u)]), 39444u));
    var var_2 = vec4<bool>(false, true, false, true);
    let var_3 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(29410u, global4.b.x, 0u, global1[_wgslsmith_index_u32(1u, 30u)]) & vec4<u32>(1u, global4.b.x, 0u, global4.a), vec4<u32>(global1[_wgslsmith_index_u32(22411u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)], u_input.a, global4.a) & vec4<u32>(76374u, 10232u, 25481u, global4.b.x)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], u_input.a, 1u, 1u), vec4<u32>(17823u, global4.b.x, 1u, 1u)), ~vec4<u32>(4294967295u, 70050u, global1[_wgslsmith_index_u32(1u, 30u)], 4294967295u), select(vec4<bool>(false, false, false, var_2.x), vec4<bool>(true, true, true, var_2.x), vec4<bool>(var_2.x, true, var_2.x, true)))), select(max(vec4<u32>(global4.a, 0u, 0u, 38839u), vec4<u32>(4294967295u, u_input.a, 47824u, u_input.b)) ^ vec4<u32>(u_input.a, 1u, 4294967295u, 13360u), (vec4<u32>(24287u, 18829u, 13123u, 4602u) << (vec4<u32>(29556u, global1[_wgslsmith_index_u32(0u, 30u)], 0u, global1[_wgslsmith_index_u32(0u, 30u)]) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(global4.a, u_input.a, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 30u)]), vec4<u32>(36106u, 4294967295u, 64510u, 57142u)) % vec4<u32>(32u)), var_2.x));
    var var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~(~57689u), _wgslsmith_mod_u32(min(~38396u, countOneBits(0u)), u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.zyz)) - global0.zxw) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global4.c, 343f), -1551f, global0.x))), vec3<u32>(var_3.x >> (84733u % 32u), 0u, global4.a), global4.d, 29865u);
}

