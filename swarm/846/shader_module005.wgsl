struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(1i, 1i, i32(-2147483648), 2147483647i), vec3<u32>(16262u, 0u, 4294967295u), Struct_1(i32(-2147483648), vec4<bool>(false, false, true, false), i32(-2147483648), -254f, vec2<bool>(false, true)), true, 2147483647i);

var<private> global2: Struct_2 = Struct_2(vec4<i32>(0i, 0i, 2147483647i, -14713i), vec3<u32>(1u, 2825u, 16401u), Struct_1(0i, vec4<bool>(false, true, false, false), -45279i, -732f, vec2<bool>(false, true)), false, i32(-2147483648));

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(0i, vec4<bool>(false, false, true, false), 11198i, 693f, vec2<bool>(false, false)), Struct_1(2147483647i, vec4<bool>(true, false, false, true), -29863i, -1039f, vec2<bool>(true, true)), Struct_1(-59293i, vec4<bool>(true, false, false, false), 1i, -1757f, vec2<bool>(true, true)), Struct_1(0i, vec4<bool>(false, false, false, false), 1i, -907f, vec2<bool>(false, false)), Struct_1(-1i, vec4<bool>(false, true, true, true), -10508i, 1000f, vec2<bool>(true, true)), Struct_1(-28764i, vec4<bool>(false, false, true, true), i32(-2147483648), -700f, vec2<bool>(false, true)), Struct_1(3708i, vec4<bool>(true, false, false, true), 1i, 651f, vec2<bool>(false, false)), Struct_1(2147483647i, vec4<bool>(false, false, false, true), i32(-2147483648), 734f, vec2<bool>(true, false)), Struct_1(6725i, vec4<bool>(true, false, true, true), 8266i, 991f, vec2<bool>(true, false)), Struct_1(933i, vec4<bool>(true, false, false, false), 1i, -1378f, vec2<bool>(false, false)), Struct_1(-1i, vec4<bool>(false, false, false, false), 18939i, 704f, vec2<bool>(false, true)), Struct_1(19419i, vec4<bool>(false, false, true, true), 32827i, 1218f, vec2<bool>(true, false)), Struct_1(-16015i, vec4<bool>(true, true, true, true), -15771i, 1356f, vec2<bool>(true, false)), Struct_1(2147483647i, vec4<bool>(true, true, false, false), i32(-2147483648), 2622f, vec2<bool>(false, false)), Struct_1(i32(-2147483648), vec4<bool>(false, false, true, false), 10648i, 376f, vec2<bool>(false, false)), Struct_1(-1i, vec4<bool>(false, false, false, false), 0i, -230f, vec2<bool>(false, false)), Struct_1(-18986i, vec4<bool>(false, false, true, false), 0i, -1000f, vec2<bool>(false, true)), Struct_1(0i, vec4<bool>(false, false, true, false), 2147483647i, -342f, vec2<bool>(true, false)), Struct_1(2147483647i, vec4<bool>(true, true, true, true), 70337i, 933f, vec2<bool>(false, true)), Struct_1(-18533i, vec4<bool>(true, true, false, true), -1i, 1826f, vec2<bool>(false, true)), Struct_1(34946i, vec4<bool>(false, true, false, true), 37521i, 1341f, vec2<bool>(false, false)), Struct_1(21863i, vec4<bool>(false, false, true, false), 0i, -505f, vec2<bool>(true, true)), Struct_1(1i, vec4<bool>(true, false, true, true), 1i, -861f, vec2<bool>(true, true)), Struct_1(-25771i, vec4<bool>(true, true, false, true), 1i, -197f, vec2<bool>(true, true)), Struct_1(i32(-2147483648), vec4<bool>(true, true, true, true), i32(-2147483648), 1000f, vec2<bool>(false, true)), Struct_1(2147483647i, vec4<bool>(false, false, true, false), -1i, 351f, vec2<bool>(true, true)), Struct_1(2147483647i, vec4<bool>(false, true, false, true), -17374i, -866f, vec2<bool>(false, false)), Struct_1(-17133i, vec4<bool>(true, true, true, false), -5373i, -1154f, vec2<bool>(false, false)), Struct_1(i32(-2147483648), vec4<bool>(false, false, false, true), -1i, 130f, vec2<bool>(true, false)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32) -> u32 {
    global3 = array<Struct_1, 29>();
    global2 = Struct_2(global1.a, global2.b, Struct_1(_wgslsmith_add_i32(~(~arg_0.c), _wgslsmith_clamp_i32(~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(10260i, arg_1.a, -8852i, 21790i), global2.a), ~(-50399i))), global2.c.b, global1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-959f)) + global2.c.d) * _wgslsmith_f_op_f32(min(-1544f, global2.c.d))), select(arg_0.e, arg_0.e, false)), false == !any(arg_1.c.e), firstTrailingBit(-11253i));
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global2.e, _wgslsmith_mult_i32(global1.c.c, -2147483647i)), -vec3<i32>(arg_1.a, abs(-2147483647i), global1.e));
    let var_1 = Struct_3(~(~5382i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2414f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.d + global2.c.d)))), Struct_1(_wgslsmith_mod_i32(min(-53168i >> (arg_2 % 32u), -global1.c.c), global1.c.a), vec4<bool>(!global2.c.e.x, arg_0.e.x, !(!arg_1.c.b.x), all(select(global2.c.b, global1.c.b, global2.c.b))), 342i, arg_1.c.d, !global2.c.b.xx));
    global2 = Struct_2(vec4<i32>(-global1.a.x, var_1.c.a << (global2.b.x % 32u), -1i, firstTrailingBit(_wgslsmith_dot_vec4_i32(~global1.a, global1.a))), ~firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(34048u, u_input.b.x, 16835u), global2.b)), Struct_1(_wgslsmith_dot_vec2_i32(global1.a.zw, global2.a.zz), select(global2.c.b, !vec4<bool>(false, false, false, arg_1.c.b.x), var_1.c.b), max(-_wgslsmith_dot_vec2_i32(global2.a.xy, vec2<i32>(arg_0.c, -7011i)), global2.e), -989f, select(select(!vec2<bool>(var_1.c.b.x, var_1.c.e.x), !vec2<bool>(arg_0.b.x, var_1.c.b.x), any(vec2<bool>(true, false))), !(!global1.c.e), !any(vec2<bool>(arg_1.c.b.x, false)))), true, 32696i);
    return firstTrailingBit(~18463u);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global1 = Struct_2(~_wgslsmith_add_vec4_i32(vec4<i32>(-global2.a.x, global2.a.x, -12054i, 2147483647i), vec4<i32>(_wgslsmith_sub_i32(-1i, global2.a.x), 2963i, -1i, _wgslsmith_mod_i32(global2.e, global1.e))), u_input.b >> (_wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, u_input.a.x), vec3<u32>(18279u, u_input.b.x, global1.b.x)), select(vec3<u32>(u_input.b.x, u_input.b.x, 773u), u_input.b, false)) % vec3<u32>(32u)), global2.c, arg_0.x, 112319i);
    var var_0 = Struct_2(~vec4<i32>(-51212i, global2.e, 14994i, 2147483647i), _wgslsmith_add_vec3_u32(global2.b, global1.b), Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, global2.a.x), global2.a.wy), vec2<i32>(global1.c.a, global2.a.x)), abs(vec2<i32>(-22761i, global1.e) & global2.a.yx)), vec4<bool>(true == !global2.d, func_3(global1.c, Struct_3(global1.a.x, global2.c.d, Struct_1(7433i, global1.c.b, global2.c.a, global1.c.d, vec2<bool>(global1.c.e.x, false))), u_input.b.x) <= 0u, true, global1.c.e.x), global2.c.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(506f, -237f) * _wgslsmith_f_op_f32(max(global1.c.d, -731f))), _wgslsmith_f_op_f32(min(-146f, _wgslsmith_f_op_f32(ceil(global1.c.d)))))), vec2<bool>(true, _wgslsmith_mod_u32(40575u, u_input.a.x) >= 1u)), global2.d, _wgslsmith_add_i32(11274i, -22687i));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.d, global1.c.d))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1215f, global2.c.d), vec2<f32>(1427f, global2.c.d))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.c.d, global1.c.d))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1369f, 1835f), vec2<f32>(global1.c.d, 1000f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(global2.c.d, global2.c.d), vec2<f32>(global1.c.d, global2.c.d)))))));
    var var_2 = ~_wgslsmith_add_i32(2147483647i, min(global1.e, 26745i)) >> ((0u ^ var_0.b.x) % 32u);
    var var_3 = max(_wgslsmith_div_vec4_u32(vec4<u32>(0u, ~var_0.b.x, var_0.b.x << (~global2.b.x % 32u), var_0.b.x), ~(vec4<u32>(1u, 7517u, global2.b.x, global1.b.x) | firstTrailingBit(vec4<u32>(global1.b.x, 1u, 4294967295u, 0u)))), _wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(0u, var_0.b.x, 4294967295u, global2.b.x))), vec4<u32>(global1.b.x, func_3(global1.c, Struct_3(global1.c.a, 2513f, global2.c), select(4294967295u, var_0.b.x, arg_0.x)), firstLeadingBit(4676u), ~_wgslsmith_mod_u32(18783u, 4124u))));
    return global3[_wgslsmith_index_u32(~(~(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global2.b.x, 60185u, global1.b.x), countOneBits(var_0.b.x)) | ~(u_input.b.x << (7300u % 32u)))), 29u)];
}

fn func_1() -> i32 {
    var var_0 = u_input.a;
    var var_1 = func_2(select(!(!vec3<bool>(true, global1.c.e.x, global1.d)), global2.c.b.xwy, all(select(global1.c.b, global1.c.b, false))));
    var var_2 = vec4<f32>(global1.c.d, 313f, _wgslsmith_f_op_f32(round(global1.c.d)), _wgslsmith_f_op_f32(-global1.c.d));
    return abs(max(~(-22562i), _wgslsmith_clamp_i32(~global2.c.c, _wgslsmith_add_i32(~0i, 0i), _wgslsmith_add_i32(var_1.c, global2.e) ^ var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(global2.a ^ vec4<i32>(func_1(), select(~global1.c.c, _wgslsmith_div_i32(0i, -9611i), all(vec3<bool>(true, false, true))), global1.e, -2147483647i), _wgslsmith_mod_vec3_u32(vec3<u32>(6208u, max(firstTrailingBit(60601u), _wgslsmith_dot_vec3_u32(vec3<u32>(46304u, global2.b.x, 9051u), global2.b)), 1u), vec3<u32>(~12966u, 4294967295u, _wgslsmith_mult_u32(~global2.b.x, min(global2.b.x, global1.b.x)))), Struct_1(~((global2.a.x | 0i) | global1.a.x), !vec4<bool>(func_2(vec3<bool>(true, true, false)).e.x, global1.c.b.x || global2.d, !global2.c.b.x, true), 11293i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(449f, global1.c.d)) - _wgslsmith_f_op_f32(step(-2330f, global2.c.d)))), !func_2(global1.c.b.zwx).b.xx), _wgslsmith_mod_i32(45480i, _wgslsmith_mod_i32(min(global2.a.x, 35798i), global2.e)) > _wgslsmith_add_i32(35539i, 69083i), firstTrailingBit(27501i));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_clamp_vec2_u32(u_input.a.zw, ~vec2<u32>(20722u, 79064u), global2.b.xz)));
}

