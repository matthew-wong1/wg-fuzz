struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<bool>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-31464i, 0i, 20630i), 1i);

var<private> global1: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global2: Struct_1 = Struct_1(vec3<i32>(1i, 31683i, 28594i), 25357i);

var<private> global3: f32;

var<private> global4: array<vec3<u32>, 25>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: i32) -> bool {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(firstLeadingBit(global2.a), ~vec3<i32>(2147483647i, -1i, global2.b)), -17769i), global4[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(~abs(69875u), 31u)], true, 225u));
    global1 = array<vec2<bool>, 31>();
    var var_1 = !(!vec4<bool>(true, any(select(vec4<bool>(var_0.a.c.x, false, false, var_0.a.d), vec4<bool>(var_0.a.d, false, var_0.a.d, true), true)), all(!vec3<bool>(true, false, var_0.a.c.x)), all(vec4<bool>(var_0.a.c.x, false, true, var_0.a.c.x))));
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>) -> vec3<u32> {
    let var_0 = arg_1.x & any(global1[_wgslsmith_index_u32(u_input.b, 31u)]);
    global1 = array<vec2<bool>, 31>();
    var var_1 = !func_3(~(~_wgslsmith_mult_u32(1u, u_input.a)), global2.a.x);
    global2 = Struct_1(_wgslsmith_mod_vec3_i32(~abs(vec3<i32>(arg_0.x, arg_0.x, -1i)) >> (~vec3<u32>(u_input.b, u_input.d.x, 4294967295u) % vec3<u32>(32u)), max(vec3<i32>(1748i, -1i, ~11625i), firstTrailingBit(u_input.c.wwz))), -(~(~abs(global0.b))));
    var var_2 = 1f;
    return vec3<u32>((reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(34813u, u_input.d.x), vec2<u32>(22761u, 4294967295u))) ^ u_input.b) | 0u, u_input.b, u_input.d.x & abs(~0u));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(836f - -1000f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1040f))) - 194f));
    var var_1 = ~min(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.b.x, arg_0.a.e, arg_0.a.e), global4[_wgslsmith_index_u32(~4294967295u, 25u)]), vec3<u32>(1659u, ~arg_0.a.b.x, u_input.a)) >> (countOneBits(~func_2(select(u_input.c, vec4<i32>(arg_1.b, 1i, global2.a.x, 2147483647i), vec4<bool>(arg_0.a.d, arg_0.a.d, var_0, arg_0.a.c.x)), !vec4<bool>(false, var_0, arg_0.a.d, false))) % vec3<u32>(32u));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(667f - _wgslsmith_f_op_f32(f32(-1f) * -1004f)) * -2157f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(109f)) * -668f));
    let var_2 = arg_0.a.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1529f, 1f) - _wgslsmith_div_f32(-410f, -1473f)));
    return _wgslsmith_f_op_f32(var_3 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3 - var_3))), _wgslsmith_f_op_f32(sign(var_3))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = all(!vec2<bool>(arg_2.x, arg_2.x));
    global0 = arg_3.a;
    var var_1 = Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(global0.a, _wgslsmith_div_vec3_i32(arg_3.a.a, u_input.c.yzw)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.a.a.x, global2.b, 2147483647i, arg_1.x), u_input.c), -32671i, -global0.b)), firstLeadingBit(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -52863i, -1768i), arg_3.a.a), global2.a))), global2.b);
    var_1 = Struct_1(arg_3.a.a, -2147483647i & max(_wgslsmith_dot_vec3_i32(~var_1.a, global0.a), var_1.b));
    var var_2 = _wgslsmith_f_op_f32(func_1(Struct_3(arg_3), arg_3.a, 0i));
    return Struct_1(global2.a, select(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_1.b, 14743i, global2.b, -1i), ~vec4<i32>(global0.b, arg_3.a.b, arg_3.a.a.x, var_1.b)), ~global0.a.x, !var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-155f, -202f, _wgslsmith_f_op_f32(-1233f + 1191f), _wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(Struct_1(global0.a, global0.a.x), global4[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(26736u, 31u)], true, 23109u)), Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, global2.a.x), -11011i), 0i)))))), ~(~(~_wgslsmith_div_vec2_i32(vec2<i32>(global0.b, 27216i), global2.a.yy))), select(vec3<bool>(~u_input.b != ~u_input.b, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, select(all(vec2<bool>(true, false)), all(vec3<bool>(true, false, true)), any(vec3<bool>(true, true, true))))), Struct_2(Struct_1(~vec3<i32>(-49822i, -60331i, -18901i), u_input.c.x), func_2(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(global2.b, 17124i, -2147483647i, u_input.c.x)), ~u_input.c), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), global1[_wgslsmith_index_u32(47327u, 31u)], select(!any(vec4<bool>(true, true, false, true)), true, true), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(15789u, 0u, 21513u, 4294967295u), ~vec4<u32>(0u, 57564u, 54328u, u_input.a)), abs(reverseBits(vec4<u32>(u_input.d.x, 0u, u_input.d.x, 25596u))))));
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(4294967295u, reverseBits(0u), ~u_input.a), ~(~_wgslsmith_clamp_u32(u_input.d.x, 1u, 1u)), _wgslsmith_clamp_u32(func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a.x, 1i, -1893i, -2147483647i), u_input.c), vec4<bool>(true, true, true, true)).x, max(0u, 9871u), abs(u_input.b)), max(~(~0u), 1u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.d.x) << (select(vec4<u32>(u_input.a, 36522u, 3582u, u_input.b), vec4<u32>(1u, 54752u, u_input.d.x, u_input.a), true) % vec4<u32>(32u)), min(vec4<u32>(u_input.d.x, 11282u, u_input.a, u_input.b) >> (vec4<u32>(1u, u_input.a, u_input.a, u_input.d.x) % vec4<u32>(32u)), reverseBits(vec4<u32>(64816u, u_input.a, 2810u, 38370u)))), 4294967295u, ~(86273u & countOneBits(u_input.a)), 0u));
    var var_1 = !(!select(global1[_wgslsmith_index_u32(u_input.d.x, 31u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~62807u, 0u & var_0.x), 31u)], select(vec2<bool>(false, true), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.d.x), 31u)], !global1[_wgslsmith_index_u32(4294967295u, 31u)])));
    global2 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.c.x, u_input.c.x) << (vec2<u32>(~15259u, 4294967295u) % vec2<u32>(32u)), global2.a.yx, select(-_wgslsmith_add_vec2_i32(u_input.c.yz, vec2<i32>(u_input.c.x, global2.a.x)), global0.a.xz, select(false, var_1.x, var_1.x))), !select(!select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, false, var_1.x)), !(!vec3<bool>(true, var_1.x, var_1.x)), select(!vec3<bool>(false, true, var_1.x), vec3<bool>(true, var_1.x, true), var_0.x > 4294967295u)), Struct_2(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(681f, 1007f, 978f, -541f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-390f, 1359f, -264f, -307f)))), firstLeadingBit(-vec2<i32>(-6768i, 1i)), vec3<bool>(var_1.x, all(vec3<bool>(false, var_1.x, var_1.x)), any(vec3<bool>(var_1.x, var_1.x, var_1.x))), Struct_2(func_4(vec4<f32>(-129f, 1001f, 995f, -1616f), global2.a.xz, vec3<bool>(var_1.x, false, var_1.x), Struct_2(Struct_1(vec3<i32>(21244i, global2.a.x, u_input.c.x), u_input.c.x), vec3<u32>(u_input.b, 1147u, var_0.x), global1[_wgslsmith_index_u32(var_0.x, 31u)], true, u_input.b)), var_0.wxz, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(12683u, var_0.x), 31u)], all(vec3<bool>(var_1.x, true, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 9577u), vec2<u32>(var_0.x, 3098u)))), ~(~_wgslsmith_clamp_vec3_u32(global4[_wgslsmith_index_u32(0u, 25u)], vec3<u32>(4294967295u, var_0.x, var_0.x), global4[_wgslsmith_index_u32(var_0.x, 25u)])), global1[_wgslsmith_index_u32(max(abs(var_0.x), ~(var_0.x & var_0.x)), 31u)], true, 1u));
    let var_2 = firstLeadingBit(u_input.b);
    var var_3 = Struct_2(func_4(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-983f * 758f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1450f, -2107f)), _wgslsmith_f_op_f32(f32(-1f) * -1668f)), u_input.c.ww >> (var_0.zz % vec2<u32>(32u)), vec3<bool>(true & !var_1.x, false, all(select(vec4<bool>(true, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, false, true), var_1.x))), Struct_2(Struct_1(firstTrailingBit(global2.a), 2594i), var_0.zxz, !(!global1[_wgslsmith_index_u32(var_0.x, 31u)]), var_1.x, var_2)), vec3<u32>(_wgslsmith_clamp_u32(10881u, ~1u, 104074u) | ~reverseBits(101328u), _wgslsmith_clamp_u32(abs(var_2), 2631u, ~abs(1u)), ~0u), vec2<bool>(!select(true, !var_1.x, var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-959f * 1000f), _wgslsmith_f_op_f32(139f * 127f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(774f)))), false, _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.x, u_input.a, var_2), firstTrailingBit(vec4<u32>(4294967295u, var_0.x, 0u, 44976u))), var_2, firstTrailingBit(~var_2)), _wgslsmith_mult_u32(var_0.x, var_0.x)));
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(214f, -396f)), _wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1390f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_4), var_4))), vec2<i32>(global0.b, var_3.a.b), _wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(-30023i), var_3.a.b, _wgslsmith_sub_i32(1i, -global2.a.x)), ~vec3<i32>(~u_input.c.x, min(global0.a.x, 23739i), func_4(vec4<f32>(1235f, var_4, var_4, -695f), u_input.c.zw, vec3<bool>(var_1.x, var_1.x, false), Struct_2(Struct_1(u_input.c.xyw, u_input.c.x), vec3<u32>(1u, var_3.b.x, 4294967295u), vec2<bool>(var_1.x, var_3.d), var_1.x, var_3.e)).b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_4, var_4, var_4), vec3<f32>(-1791f, var_4, -520f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -364f, var_4), vec3<f32>(var_4, var_4, var_4), vec3<bool>(false, true, var_1.x))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1584f, -1000f, var_4)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(Struct_1(vec3<i32>(global2.b, global0.a.x, 2147483647i), 1i), global4[_wgslsmith_index_u32(u_input.b, 25u)], vec2<bool>(true, var_3.d), var_1.x, 21485u)), func_4(vec4<f32>(-148f, -490f, var_4, 1110f), ~global0.a.xz, !vec3<bool>(false, false, var_1.x), Struct_2(var_3.a, vec3<u32>(0u, var_2, var_0.x), vec2<bool>(var_1.x, var_3.c.x), var_3.c.x, 2705u)), _wgslsmith_add_i32(u_input.c.x, max(2147483647i, 24289i)))) + -1368f));
}

