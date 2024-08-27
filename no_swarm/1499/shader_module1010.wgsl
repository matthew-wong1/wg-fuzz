struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: i32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23>;

var<private> global1: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(0i, -100i, 2147483647i), vec3<i32>(1i, -6145i, 4186i), vec3<i32>(-1i, 16775i, 74287i), vec3<i32>(16295i, -39086i, 0i), vec3<i32>(-25365i, 18743i, -1i), vec3<i32>(0i, -7811i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), -47928i), vec3<i32>(16255i, 10709i, -1459i), vec3<i32>(0i, 1i, -2249i), vec3<i32>(-40370i, i32(-2147483648), 0i));

var<private> global2: Struct_5 = Struct_5(Struct_4(vec2<bool>(false, true), vec3<u32>(93903u, 4294967295u, 5427u), vec4<bool>(false, false, false, true), 1u), vec4<bool>(true, true, false, false), 69952i, 45381u, 11037u);

var<private> global3: array<vec4<u32>, 18>;

var<private> global4: Struct_4 = Struct_4(vec2<bool>(true, false), vec3<u32>(35980u, 1u, 61339u), vec4<bool>(false, true, true, true), 0u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: u32) -> vec3<f32> {
    var var_0 = global2.a;
    global1 = array<vec3<i32>, 11>();
    var_0 = Struct_4(!var_0.c.yx, _wgslsmith_clamp_vec3_u32(abs(var_0.b), select(_wgslsmith_div_vec3_u32(global2.a.b, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, 34908u), vec3<u32>(var_0.d, arg_1, 89875u))), ~(global2.a.b >> (var_0.b % vec3<u32>(32u))), select(!vec3<bool>(false, var_0.a.x, false), select(global2.a.c.yww, vec3<bool>(var_0.a.x, var_0.c.x, global4.a.x), true), vec3<bool>(global2.b.x, false, false))), vec3<u32>(_wgslsmith_mult_u32(26035u, ~arg_1), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global2.a.b.xz, vec2<u32>(var_0.d, 0u)), global2.a.d), u_input.a.x)), !select(!(!global2.a.c), vec4<bool>(!var_0.c.x, !global4.a.x, arg_0 != arg_0, !var_0.c.x), (global4.b.x <= var_0.b.x) & !var_0.a.x), 0u);
    var var_1 = global2.b.xyx;
    let var_2 = countOneBits(_wgslsmith_add_u32(83572u, arg_1));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1008f, arg_0, 542f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-524f, -1395f, 194f) - vec3<f32>(1538f, arg_0, 488f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-332f, arg_0, -589f)) - vec3<f32>(arg_0, -1306f, arg_0))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-553f + -776f), 140f, _wgslsmith_f_op_f32(arg_0 * arg_0)))));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    global0 = array<vec3<i32>, 23>();
    let var_0 = select(select(!select(vec4<bool>(arg_0, arg_0, arg_0, global2.b.x), !vec4<bool>(false, global4.a.x, arg_0, true), true), global2.b, !global2.b), global4.c, global2.a.a.x);
    let var_1 = vec4<i32>(firstTrailingBit(firstLeadingBit(16201i)), -(~(-37866i)), max(-51233i, firstLeadingBit(-2147483647i)), ~(-321i));
    let var_2 = Struct_3(Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -152f, 751f)), vec3<f32>(-1527f, -624f, 1511f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-951f, 430f, 897f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, 207f, -951f)))), false, false));
    var var_3 = ~firstLeadingBit(vec3<i32>(-(i32(-1i) * -39140i), ~(~(-22320i)), -(~25815i)));
    return !(!vec2<bool>(!(!var_2.a.a), true || var_0.x));
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> vec2<f32> {
    global0 = array<vec3<i32>, 23>();
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2(595f, ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(~global4.d, global2.d), _wgslsmith_sub_u32(arg_0.b.x, u_input.a.x))));
    var var_1 = abs(max(~(~global4.b), global4.b)) << ((_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(21804u, 45973u, u_input.b), vec3<u32>(global2.a.b.x, 4384u, u_input.b)), global4.b) ^ firstTrailingBit((global2.a.b << (vec3<u32>(0u, global4.d, global2.d) % vec3<u32>(32u))) << (firstLeadingBit(global2.a.b) % vec3<u32>(32u)))) % vec3<u32>(32u));
    global0 = array<vec3<i32>, 23>();
    var var_2 = Struct_1(any(func_3(all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1119f, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(549f, var_0.x, var_0.x, 915f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(145f, -992f, var_0.x, -515f) + vec4<f32>(var_0.x, var_0.x, -2001f, 1385f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(456f, var_0.x, var_0.x, 2197f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 673f, 1900f) * vec4<f32>(-109f, var_0.x, -1042f, -224f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2317f, 222f, 340f, 1171f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(745f, -291f, var_0.x, var_0.x))))), vec4<bool>(!all(global4.c.xyz), false, global4.c.x, true))), (all(!global4.c.xxy) | !arg_1) || func_3(false).x, !global2.a.c.x);
    return _wgslsmith_f_op_vec2_f32(exp2(var_0.zz));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(global2.a, global2.a.c.x)) * vec2<f32>(1f, 1f)), vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.c, 2147483647i), vec2<i32>(-9128i, global2.c)), -global2.c)), _wgslsmith_sub_i32(1i, global2.c), 1i, -48298i));
}

