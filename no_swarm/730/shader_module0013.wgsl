struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(7849i, -12761i, vec2<f32>(-733f, -1000f), vec2<bool>(false, true)), Struct_1(-38756i, -13721i, vec2<f32>(580f, 1454f), vec2<bool>(true, false)), Struct_1(-1i, 1390i, vec2<f32>(224f, -1370f), vec2<bool>(true, true)), Struct_1(-31634i, 6157i, vec2<f32>(-1000f, 1000f), vec2<bool>(true, false)));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(2147483647i, -53177i, vec2<f32>(-611f, 167f), vec2<bool>(true, false)), Struct_1(i32(-2147483648), 39681i, vec2<f32>(275f, -860f), vec2<bool>(false, false)), Struct_1(43704i, 1i, vec2<f32>(-136f, -2174f), vec2<bool>(true, false)), Struct_1(i32(-2147483648), -1i, vec2<f32>(1496f, -360f), vec2<bool>(false, true)), Struct_1(0i, i32(-2147483648), vec2<f32>(-1604f, 365f), vec2<bool>(true, true)), Struct_1(0i, 2147483647i, vec2<f32>(1086f, -128f), vec2<bool>(false, false)), Struct_1(i32(-2147483648), -5410i, vec2<f32>(-2342f, -321f), vec2<bool>(false, true)), Struct_1(-10839i, -1i, vec2<f32>(-1458f, -1623f), vec2<bool>(true, false)), Struct_1(i32(-2147483648), -34344i, vec2<f32>(-630f, -634f), vec2<bool>(false, true)), Struct_1(2147483647i, 14006i, vec2<f32>(-1019f, -152f), vec2<bool>(false, false)), Struct_1(-58363i, -1i, vec2<f32>(-1438f, 359f), vec2<bool>(false, true)));

var<private> global3: vec2<i32> = vec2<i32>(14041i, -39116i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = -u_input.b | ~global3.x;
    var var_1 = Struct_1(-u_input.b, -global3.x, _wgslsmith_f_op_vec2_f32(ceil(global1.c)), vec2<bool>(global1.d.x == any(vec4<bool>(true, global1.d.x, true, true)), u_input.a != u_input.a));
    let var_2 = true;
    let var_3 = Struct_3(u_input.a, !var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.c.x, var_1.c.x, -243f))))))));
    let var_4 = ~(~(~vec4<u32>(0u >> (0u % 32u), firstLeadingBit(1962u), 0u, u_input.a)));
    return false;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: u32, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = Struct_2(global1.a, Struct_1(~(global3.x | global3.x) ^ -arg_3.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c, -1i), -_wgslsmith_add_i32(global1.b, global1.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, global1.c.x)) * vec2<f32>(_wgslsmith_f_op_f32(sign(global1.c.x)), _wgslsmith_f_op_f32(trunc(arg_0.c.x)))), vec2<bool>(true, !(199f > global1.c.x))));
    var var_2 = global3.x;
    var var_3 = select(!select(vec3<bool>(global1.d.x, true, arg_0.b), select(vec3<bool>(true, true, true), select(vec3<bool>(global1.d.x, false, false), vec3<bool>(true, global1.d.x, true), false), func_3()), select(vec3<bool>(var_1.b.d.x, var_1.b.d.x, true), vec3<bool>(arg_0.b, global1.d.x, true), select(vec3<bool>(var_1.b.d.x, false, false), vec3<bool>(arg_0.b, var_1.b.d.x, true), global1.d.x))), select(vec3<bool>(!global1.d.x, select(true, arg_0.b, arg_2 >= var_0.x), true), vec3<bool>(select(var_1.b.d.x, !arg_0.b, var_1.b.d.x), select(var_1.b.d.x | false, !arg_0.b, !arg_0.b), (arg_0.c.x <= global1.c.x) & true), select(select(!vec3<bool>(false, false, var_1.b.d.x), !vec3<bool>(false, var_1.b.d.x, var_1.b.d.x), select(vec3<bool>(false, global1.d.x, var_1.b.d.x), vec3<bool>(true, false, var_1.b.d.x), vec3<bool>(true, var_1.b.d.x, true))), !vec3<bool>(arg_0.b, var_1.b.d.x, arg_0.b), arg_2 != ~79393u)), arg_0.b);
    global3 = arg_3;
    return global2[_wgslsmith_index_u32(27555u, 11u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: i32) -> Struct_1 {
    global1 = func_2(Struct_3(arg_1, global1.d.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, global1.c.x, global1.c.x)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-233f, 962f, global1.c.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, 145f, 954f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(811f, global1.c.x, global1.c.x)))))), vec3<u32>(u_input.a, u_input.a, arg_1), firstTrailingBit(_wgslsmith_sub_u32(min(47192u, abs(u_input.a)), 4294967295u)), arg_0.zw);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1307f + 2519f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(790f + 101f), 1000f)));
    global0 = array<Struct_1, 4>();
    global1 = global2[_wgslsmith_index_u32(3059u, 11u)];
    global2 = array<Struct_1, 11>();
    return func_2(Struct_3(_wgslsmith_mod_u32(~(~arg_1), ~(~42850u)), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.c.x, 714f, 904f), vec3<f32>(278f, global1.c.x, -1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-733f, global1.c.x, var_0.x)))), ~vec3<u32>(4294967295u, ~u_input.a, _wgslsmith_div_u32(4294967295u, arg_1 & arg_1)), arg_1, arg_0.wx);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec2<u32> {
    global1 = global2[_wgslsmith_index_u32(4294967295u, 11u)];
    let var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 27287u, u_input.a, 4294967295u)), vec4<u32>(1u, u_input.a, u_input.a, 1u)), abs(vec4<u32>(u_input.a, u_input.a, 38608u, u_input.a))), vec4<u32>(u_input.a, countOneBits(reverseBits(1u)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, 840u), vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), 39214u));
    let var_1 = ~vec3<i32>(~2147483647i >> (_wgslsmith_div_u32(~1u, _wgslsmith_sub_u32(var_0, 1u)) % 32u), 1i, func_1(-firstLeadingBit(vec4<i32>(2147483647i, 2147483647i, global3.x, -25284i)), _wgslsmith_div_u32(1u, 59227u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -2147483647i, arg_0), vec3<i32>(u_input.b, arg_3, 2147483647i) >> (vec3<u32>(90800u, var_0, 4294967295u) % vec3<u32>(32u)))).a);
    var var_2 = vec3<bool>(!all(func_1(vec4<i32>(1i, global3.x, global3.x, -1i), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 37487u, var_0), vec3<u32>(var_0, 11264u, 1338u)), arg_3 >> (u_input.a % 32u)).d), !(!(!global1.d.x)) && arg_1.d.x, (true == !func_3()) || (arg_0 != global3.x));
    var var_3 = max(global1.b, global3.x);
    return select(select(select(~_wgslsmith_div_vec2_u32(vec2<u32>(89615u, var_0), vec2<u32>(0u, u_input.a)), vec2<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a, 2252u)), var_2.zx), ~(~select(vec2<u32>(50373u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), false)), vec2<bool>(func_1(firstTrailingBit(vec4<i32>(arg_3, arg_3, 29879i, -25211i)), ~var_0, -6870i).d.x, !arg_1.d.x)), ~(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, var_0), vec3<u32>(20823u, u_input.a, 46340u)), 146687u) | ~(~vec2<u32>(1u, u_input.a))), var_2.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    global0 = array<Struct_1, 4>();
    var var_1 = Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(4294967295u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<u32>(1u, 58490u, u_input.a, 7752u)) % 32u), 1u, 0u), ~(~vec3<u32>(82426u, 0u, u_input.a))), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, global1.c.x, -282f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.c.x, 1284f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, 1250f, 399f)), vec3<bool>(global1.d.x, global1.d.x, false))))));
    let var_2 = -2147483647i;
    var_0 = _wgslsmith_dot_vec2_u32(func_4(33834i, func_1(-_wgslsmith_sub_vec4_i32(vec4<i32>(-33680i, -2147483647i, 30227i, 2147483647i), vec4<i32>(global3.x, global3.x, 22572i, -1i)), _wgslsmith_dot_vec2_u32(vec2<u32>(529u, u_input.a), vec2<u32>(u_input.a, var_1.a)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, var_1.a), vec2<u32>(1521u, u_input.a)) % 32u), -22971i), true, _wgslsmith_sub_i32(~(-29019i), var_2)), select(~min(vec2<u32>(var_1.a, 4294967295u), vec2<u32>(u_input.a, 24968u)), vec2<u32>(~2247u, ~1u), vec2<bool>(true, true)) | _wgslsmith_add_vec2_u32(vec2<u32>(~var_1.a, u_input.a), ~vec2<u32>(56879u, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a, select(31458u, firstLeadingBit(u_input.a), false), _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(0u, 23614u, 4160u)), select(vec3<u32>(var_1.a, 0u, var_1.a) & vec3<u32>(33231u, var_1.a, u_input.a), vec3<u32>(var_1.a, var_1.a, 20837u), !vec3<bool>(global1.d.x, false, false))), 1u), global1.a, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(select(min(vec3<u32>(u_input.a, 53981u, u_input.a), vec3<u32>(var_1.a, 5780u, 0u)), vec3<u32>(u_input.a, var_1.a, u_input.a), true), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, var_1.a, 0u), max(vec3<u32>(var_1.a, 52206u, 4294967295u), vec3<u32>(u_input.a, 4294967295u, u_input.a)), vec3<u32>(0u, 33182u, 44135u) << (vec3<u32>(u_input.a, u_input.a, 36539u) % vec3<u32>(32u))), min(~vec3<u32>(var_1.a, 4294967295u, u_input.a), vec3<u32>(0u, 45684u, u_input.a))), select(vec3<u32>(4294967295u, 68421u, 70730u), ~vec3<u32>(var_1.a, var_1.a, 105906u), false) | (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a, 55851u, var_1.a), vec3<u32>(7485u, var_1.a, 1u), vec3<u32>(u_input.a, var_1.a, 4294967295u)) ^ select(vec3<u32>(var_1.a, 4294967295u, 4294967295u), vec3<u32>(21934u, 1u, 1u), vec3<bool>(var_1.b, var_1.b, false)))), vec4<u32>(1u, ~countOneBits(u_input.a), u_input.a, select(4294967295u, ~1u, true) ^ abs(var_1.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(var_1.c.x, global1.c.x)), -832f, _wgslsmith_f_op_f32(trunc(var_1.c.x)), -1429f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(460f, _wgslsmith_div_f32(global1.c.x, var_1.c.x), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(sign(446f))))));
}

