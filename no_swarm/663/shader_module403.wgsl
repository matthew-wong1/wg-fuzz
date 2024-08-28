struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32>;

var<private> global2: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32) -> vec4<f32> {
    global2 = Struct_1(vec2<u32>(12152u, 4294967295u), !(!all(vec4<bool>(global2.b, false, true, global0.b))));
    let var_0 = Struct_2(1u, Struct_1(~firstLeadingBit(vec2<u32>(91975u, global2.a.x)), all(vec4<bool>(global2.b, select(false, global0.b, global0.b), global2.b, global2.b))), Struct_1(global2.a, false), -30669i, vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - 579f)));
    var var_1 = var_0;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.e.x, _wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(ceil(1220f)), _wgslsmith_f_op_f32(min(var_1.e.x, -800f))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(630f)), 754f, -591f, _wgslsmith_f_op_f32(min(arg_0, 277f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1808f, arg_0, 781f, global1.x)))))));
}

fn func_3(arg_0: bool) -> f32 {
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(max(-1000f, global1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global1.x, 1761f, arg_0)))), -1537f)), -420f), vec4<f32>(global1.x, -528f, -1446f, global1.x));
    global0 = Struct_1(~(~global2.a), global2.b);
    var var_0 = vec4<i32>(_wgslsmith_add_i32(~(-4005i), ~46929i), _wgslsmith_div_i32(-min(33653i, -4032i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-18681i, 33037i, -8262i, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 20818i, -51300i, 2147483647i), vec4<i32>(-2147483647i, -2147483647i, -1i, -33134i), vec4<i32>(28430i, -666i, -7155i, -1i)))) & firstLeadingBit(_wgslsmith_mod_i32(1i, 1i)), _wgslsmith_div_i32(1i, 1i), 38967i);
    let var_1 = vec2<i32>(max(-_wgslsmith_mult_i32(~var_0.x, abs(0i)), max(-2147483647i, 1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(1970u, 0u)) % 32u))), var_0.x ^ ~(-(var_0.x >> (4294967295u % 32u))));
    var var_2 = Struct_1(global0.a >> (firstTrailingBit(vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)), all(select(vec3<bool>(all(vec2<bool>(global2.b, false)), any(vec2<bool>(true, true)), any(vec4<bool>(true, false, false, arg_0))), select(vec3<bool>(false, global2.b, global0.b), vec3<bool>(global2.b, true, false), any(vec3<bool>(true, global2.b, false))), any(select(vec3<bool>(arg_0, arg_0, global2.b), vec3<bool>(false, arg_0, true), vec3<bool>(global2.b, true, false))))));
    return -1440f;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<bool>) -> vec4<f32> {
    let var_0 = Struct_2(min(22147u, _wgslsmith_div_u32(_wgslsmith_div_u32(~12070u, ~u_input.a), 40374u)), Struct_1(firstTrailingBit(global0.a), !global0.b), Struct_1(vec2<u32>(global2.a.x, ~71212u), true), select(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(abs(0i), _wgslsmith_add_i32(-2147483647i, 0i)), 2147483647i), true), global1.zz);
    let var_1 = arg_0;
    global2 = var_0.b;
    let var_2 = vec3<i32>(-1i, var_0.d, 2147483647i);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))), global1.x, var_0.d <= 26286i)), 236f);
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(715f, -143f, _wgslsmith_f_op_f32(f32(-1f) * -920f), var_0.e.x) * vec4<f32>(2135f, _wgslsmith_f_op_f32(select(-630f, _wgslsmith_f_op_f32(1485f * 462f), all(arg_2.wwz))), arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -170f), _wgslsmith_div_f32(-360f, 594f)))))));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-717f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - arg_0) * _wgslsmith_f_op_f32(func_3(true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)))), vec4<bool>(global2.b & !global0.b, true, true, global0.b))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1285f, arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0)), global1.x), _wgslsmith_f_op_f32(f32(-1f) * -639f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -1382f, -1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1000f, global1.x, -136f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -361f, 1111f, global1.x))))));
    var var_0 = vec4<i32>(firstLeadingBit(i32(-1i) * -2147483647i), -38028i, min(max(firstTrailingBit(-1i), _wgslsmith_clamp_i32(-2147483647i, -1i, _wgslsmith_mult_i32(0i, 60781i))), -1i), 1i);
    global1 = _wgslsmith_f_op_vec4_f32(func_2(-489f));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec4_f32(func_2(arg_0)).x;
    return Struct_2(var_1.x, Struct_1(select(~vec2<u32>(var_1.x, global0.a.x), vec2<u32>(u_input.a, _wgslsmith_sub_u32(global0.a.x, 54797u)), select(vec2<bool>(global2.b, true), vec2<bool>(false, true), select(vec2<bool>(global0.b, global2.b), vec2<bool>(global0.b, true), vec2<bool>(global0.b, true)))), !(false != global2.b)), Struct_1(~vec2<u32>(global2.a.x, global0.a.x), var_0.x > var_0.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(~(-var_0.x), -(~var_0.x)), var_0.x & var_0.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(803f)))), global1.x), global1.yy));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1689f)) - 2080f);
    let var_1 = _wgslsmith_clamp_u32(0u, arg_0.a & (0u | (~arg_1.b.a.x ^ _wgslsmith_sub_u32(52216u, 50533u))), u_input.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-200f, 829f, 1273f, -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(344f * arg_0.e.x), -391f, -587f, _wgslsmith_f_op_f32(-1800f - arg_0.e.x))) - _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, arg_0.e.x, -1080f, -145f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), !vec4<bool>(global2.b, global2.b, false, arg_0.b.b))))));
    var var_3 = Struct_1(vec2<u32>(_wgslsmith_clamp_u32(countOneBits(global0.a.x), 39045u, 35550u), 34372u << (_wgslsmith_div_u32(17979u >> (1u % 32u), arg_0.c.a.x) % 32u)), any(select(vec3<bool>(any(vec3<bool>(true, true, arg_0.c.b)), !arg_0.c.b, true), vec3<bool>(global2.b, arg_0.b.b, global0.b && arg_1.b.b), select(!vec3<bool>(true, true, global2.b), select(vec3<bool>(global0.b, arg_1.c.b, false), vec3<bool>(global2.b, true, global2.b), true), true))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(-114f * _wgslsmith_f_op_f32(var_2.x - 252f)), -549f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true)) - -586f), arg_0.e.x);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(firstLeadingBit(~vec4<u32>(global2.a.x, global2.a.x, var_3.a.x, 6227u))), max(firstLeadingBit(~vec4<u32>(7146u, arg_1.a, 59241u, global0.a.x)), select(min(vec4<u32>(22669u, arg_1.a, 16664u, 4294967295u), vec4<u32>(global2.a.x, arg_1.c.a.x, global0.a.x, var_1)), firstTrailingBit(vec4<u32>(1u, 0u, 1u, 25251u)), true)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(6625u, global0.a.x, 0u, global2.a.x), select(vec4<u32>(0u, 21255u, 31557u, 0u), vec4<u32>(0u, 1u, 63765u, 1u), arg_1.c.b))), max(select(reverseBits(vec4<u32>(29788u, arg_1.a, 0u, 24706u)), ~vec4<u32>(1u, global0.a.x, var_3.a.x, 1u), !vec4<bool>(var_3.b, true, arg_1.b.b, global2.b)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 44221u), vec4<u32>(global0.a.x, global0.a.x, global2.a.x, global2.a.x), vec4<u32>(var_1, 57132u, 4294967295u, 0u)), vec4<u32>(20040u, arg_1.b.a.x, 3767u, 16097u) ^ vec4<u32>(arg_1.c.a.x, 44133u, 56345u, 4294967295u))) | _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_add_u32(global0.a.x, 68106u), ~4294967295u, min(global2.a.x, global2.a.x), ~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global0.b && true;
    var var_1 = Struct_1(~vec2<u32>(_wgslsmith_div_u32(20251u, 1u), func_5(func_1(-331f, vec3<u32>(0u, u_input.a, u_input.a)), func_1(global1.x, vec3<u32>(u_input.a, 0u, 4294967295u)))), !func_1(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(18257u, global0.a.x, global2.a.x), ~vec3<u32>(global0.a.x, 57015u, u_input.a), ~vec3<u32>(u_input.a, 38063u, global0.a.x))).c.b);
    var var_2 = global1.x;
    var_2 = 129f;
    global2 = func_1(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-530f, -1040f, global1.x, -1056f), vec4<f32>(global1.x, global1.x, -512f, global1.x))))), _wgslsmith_f_op_f32(f32(-1f) * -728f), select(select(select(vec4<bool>(global0.b, var_0, true, false), vec4<bool>(global0.b, global0.b, false, var_0), vec4<bool>(false, var_1.b, false, var_0)), vec4<bool>(global2.b, global0.b, true, true), !vec4<bool>(global0.b, false, true, false)), select(!vec4<bool>(true, var_0, global0.b, true), select(vec4<bool>(true, true, var_0, false), vec4<bool>(true, global0.b, true, true), global0.b), vec4<bool>(var_1.b, false, global0.b, global0.b)), any(select(vec4<bool>(false, global2.b, global0.b, global2.b), vec4<bool>(global0.b, true, false, false), vec4<bool>(var_0, false, global2.b, var_1.b)))))).x, vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(abs(0u), 51333u, 1u), global0.a.x), var_1.a.x, ~global0.a.x)).c;
    var var_3 = _wgslsmith_dot_vec2_i32(firstTrailingBit(~_wgslsmith_div_vec2_i32(-vec2<i32>(-1i, 779i), select(vec2<i32>(63959i, -25844i), vec2<i32>(-1i, 2147483647i), vec2<bool>(true, global2.b)))), -select(vec2<i32>(1i, 1i), ~vec2<i32>(-1i, 0i), all(vec4<bool>(true, true, global2.b, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-171f, global1.x, global1.x, global1.x), select(vec4<i32>(37838i, -1i, max(~(-1188i), min(2783i, -51590i)), -_wgslsmith_mod_i32(-14459i, 9984i)), (-vec4<i32>(2147483647i, -26634i, 2147483647i, 1i) | firstTrailingBit(vec4<i32>(0i, 0i, -7837i, 0i))) << (vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 0u, global2.a.x, 87723u), vec4<u32>(46551u, 72048u, 0u, 1u)), abs(var_1.a.x), u_input.a) % vec4<u32>(32u)), var_0), abs(~countOneBits(select(vec4<u32>(u_input.a, 0u, 1u, global0.a.x), vec4<u32>(1u, 0u, 1u, 35700u), true))));
}

