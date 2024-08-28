struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(vec4<i32>(-9037i, 30176i, 18431i, -5422i)), Struct_4(vec4<i32>(30191i, -34618i, 31373i, i32(-2147483648))), Struct_4(vec4<i32>(-24672i, -43123i, 41015i, 8481i)), Struct_4(vec4<i32>(-7559i, -81708i, i32(-2147483648), 2147483647i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    var var_0 = 0i;
    var var_1 = Struct_1(countOneBits(global0.a.x & global0.a.x), ~firstLeadingBit(_wgslsmith_add_i32(~1i, 2147483647i)));
    let var_2 = _wgslsmith_f_op_f32(round(-882f));
    var var_3 = global0.a.yyy;
    global1 = select(vec2<bool>(any(select(vec3<bool>(global1.x, global1.x, false), !vec3<bool>(true, global1.x, global1.x), true)), true), select(vec2<bool>(true, global1.x), !(!(!vec2<bool>(false, global1.x))), reverseBits(countOneBits(u_input.b.x)) >= u_input.b.x), select(vec2<bool>(var_2 >= _wgslsmith_f_op_f32(trunc(823f)), global1.x), !select(vec2<bool>(true, global1.x), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, global1.x)), global1.x), true));
    return vec4<bool>(global1.x, !global1.x, global1.x, true);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec3<f32>) -> u32 {
    let var_0 = Struct_1(min(u_input.a, abs(_wgslsmith_clamp_i32(u_input.a, global0.a.x, global0.a.x) ^ u_input.a)), u_input.a);
    global0 = Struct_4(~select(global0.a, abs(-global0.a), select(true, !global1.x, func_3(global0.a.x).x)));
    let var_1 = ~_wgslsmith_clamp_vec3_u32(firstTrailingBit(u_input.b), u_input.b, vec3<u32>(u_input.b.x, 1u, ~(~u_input.b.x)));
    var var_2 = Struct_3(1i, arg_0, Struct_1(-42359i, global0.a.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -785f), 479f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, -1663f) - arg_2.x), _wgslsmith_f_op_f32(-arg_2.x), all(select(vec2<bool>(arg_1, arg_0), vec2<bool>(arg_0, arg_1), false))))));
    let var_3 = abs(_wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec3_u32(u_input.b | u_input.b, var_1)));
    return u_input.b.x;
}

fn func_2() -> Struct_4 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x ^ 4294967295u, 0u), 4u)];
    var var_1 = func_4(!(u_input.b.x == ~1u), any(func_3(u_input.a)), vec3<f32>(1464f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2249f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -306f)))), 761f));
    let var_2 = -global0.a.x;
    global0 = global2[_wgslsmith_index_u32(~firstLeadingBit(~(~firstLeadingBit(14528u))), 4u)];
    var_1 = firstLeadingBit(4294967295u);
    return global2[_wgslsmith_index_u32((~u_input.b.x | ~79925u) & u_input.b.x, 4u)];
}

fn func_5(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec4<f32>) -> f32 {
    global1 = select(vec2<bool>(true, false), vec2<bool>(arg_2.x != -625f, global1.x), vec2<bool>(false, true));
    global2 = array<Struct_4, 4>();
    let var_0 = firstTrailingBit(-_wgslsmith_div_vec4_i32(firstLeadingBit(-vec4<i32>(global0.a.x, global0.a.x, arg_0.a.x, 2147483647i)), vec4<i32>(i32(-1i) * -54748i, _wgslsmith_div_i32(global0.a.x, 2147483647i), 8687i, 2147483647i)));
    var var_1 = arg_1.x;
    global0 = Struct_4(vec4<i32>(-countOneBits(arg_0.a.x), _wgslsmith_mult_i32(~(31733i << (u_input.b.x % 32u)), global0.a.x), select(arg_0.a.x, -15876i, any(!vec4<bool>(false, true, global1.x, global1.x))), func_2().a.x));
    return _wgslsmith_f_op_f32(ceil(234f));
}

fn func_1(arg_0: vec3<f32>) -> Struct_4 {
    global2 = array<Struct_4, 4>();
    var var_0 = _wgslsmith_clamp_vec4_u32(reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 0u, 0u, 0u), vec4<u32>(u_input.b.x, 29610u, 1u, 0u), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)) & select(_wgslsmith_sub_vec4_u32(vec4<u32>(20629u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(54927u, 1u, 21333u, 28063u), !vec4<bool>(global1.x, true, global1.x, global1.x))), ~(~(countOneBits(vec4<u32>(74765u, u_input.b.x, u_input.b.x, 57161u)) ^ (vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(1u, 18260u, u_input.b.x, 73858u) % vec4<u32>(32u))))), ~vec4<u32>(_wgslsmith_add_u32(reverseBits(0u), ~0u), ~(~u_input.b.x), u_input.b.x, abs(u_input.b.x | 0u)));
    global1 = !(!select(vec2<bool>(true, true), !vec2<bool>(global1.x, false), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, true), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, true), global1.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -672f), arg_0.x, arg_0.x, 1000f), vec4<f32>(_wgslsmith_f_op_f32(func_5(func_2(), u_input.b.zy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1151f, 396f, arg_0.x, arg_0.x))))), _wgslsmith_div_f32(arg_0.x, arg_0.x), 1021f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -903f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-187f, arg_0.x))), true)))));
    var var_2 = ~abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 8405u, 1u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 66254u, 26231u)) & abs(select(vec4<u32>(1u, 0u, u_input.b.x, 58737u), vec4<u32>(4294967295u, 11476u, u_input.b.x, u_input.b.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x))));
    return Struct_4(vec4<i32>(2147483647i, global0.a.x, -min(global0.a.x, u_input.a >> (0u % 32u)), min(abs(-1i), abs(~u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec4<bool>(global1.x, false, true, true));
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -311f)), 1f, -1356f)));
    global2 = array<Struct_4, 4>();
    let var_2 = Struct_1(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, _wgslsmith_sub_i32(-2147483647i, u_input.a), 1i), -global0.a.zxx) >> (_wgslsmith_mult_u32(u_input.b.x, u_input.b.x & (u_input.b.x | u_input.b.x)) % 32u));
    var var_3 = (u_input.b.x != ~_wgslsmith_dot_vec3_u32(u_input.b << (vec3<u32>(0u, 14778u, u_input.b.x) % vec3<u32>(32u)), select(u_input.b, vec3<u32>(u_input.b.x, 0u, 0u), vec3<bool>(false, global1.x, global1.x)))) != (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-540f)))) != -2267f);
    var var_4 = _wgslsmith_div_vec4_u32(vec4<u32>(func_4(true, global1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-496f, -1889f, -753f))), u_input.b.x, u_input.b.x, 0u) ^ ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x))), firstTrailingBit(vec4<u32>(~1u, 1u, 1u, 65908u)));
    let var_5 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(u_input.a, global0.a.x, u_input.a, 2147483647i)), select(global0.a, global0.a, !vec4<bool>(global1.x, global1.x, true, global1.x)), -(_wgslsmith_div_vec4_i32(global0.a, vec4<i32>(var_2.a, -2147483647i, global0.a.x, 34926i)) & global0.a)), Struct_1(-40902i, -1i));
    global1 = !func_3(global0.a.x).zz;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-497f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(244f - _wgslsmith_f_op_f32(func_5(Struct_4(global0.a), var_4.yx, vec4<f32>(1000f, -273f, -219f, -774f)))))), -1929f, -1715f), ~(~u_input.b.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 759f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-432f + 372f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2256f, 1295f), _wgslsmith_f_op_f32(func_5(Struct_4(vec4<i32>(global0.a.x, 1i, var_1.a.x, 45940i)), var_4.yz, vec4<f32>(-1000f, 394f, 783f, 200f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-304f, _wgslsmith_f_op_f32(1677f - -1000f), _wgslsmith_f_op_f32(-275f * -1000f))), !vec3<bool>(false, var_0.x, true))), ~(-global0.a.yz), vec3<u32>(u_input.b.x, abs(~(var_4.x << (28709u % 32u))), u_input.b.x));
}

