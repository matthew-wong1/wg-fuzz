struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec4<u32> = vec4<u32>(19616u, 1u, 1u, 0u);

var<private> global2: array<Struct_2, 32>;

var<private> global3: array<Struct_3, 6>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: u32) -> f32 {
    let var_0 = global1.yzx;
    var var_1 = Struct_1(select(arg_1.c, arg_1.c, true), vec2<bool>(false || (all(arg_1.b.b.a) || true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(380f)))) >= -549f), arg_1.b.b.c);
    var var_2 = vec4<u32>(~(~(~arg_2 ^ global1.x)), 21323u, max(arg_0, 78436u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0, 35774u, 64716u, 36694u)), vec4<u32>(1u, 67378u, var_1.c.x, var_0.x) & ~vec4<u32>(var_0.x, global1.x, 4294967295u, 71731u)) ^ ~(~1u));
    global1 = vec4<u32>(reverseBits(arg_0), arg_0, var_1.c.x, arg_0);
    var_1 = Struct_1(select(vec3<bool>(true, false, _wgslsmith_f_op_f32(select(-888f, -1000f, false)) <= _wgslsmith_f_op_f32(round(950f))), vec3<bool>(any(arg_1.c.yx), arg_1.c.x & arg_1.a, var_1.a.x), !var_1.a.x), vec2<bool>(false, max(_wgslsmith_dot_vec4_u32(vec4<u32>(30523u, var_1.c.x, 11003u, var_2.x), vec4<u32>(27591u, 59062u, 0u, 4294967295u)), 24543u) < ~_wgslsmith_mult_u32(arg_1.b.b.c.x, 1u)), var_1.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1647f)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: f32) -> i32 {
    global1 = vec4<u32>(min(84501u, 43977u), arg_1, _wgslsmith_clamp_u32(global1.x, ~(~arg_1), 58431u), select(28194u, _wgslsmith_mod_u32(abs(global1.x) | ~arg_1, arg_1), true));
    var var_0 = Struct_4(!arg_0, global3[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(~arg_1)), 6u)], vec3<bool>(_wgslsmith_f_op_f32(-arg_2) == _wgslsmith_f_op_f32(max(-817f, arg_2)), true, !arg_0));
    var var_1 = global2[_wgslsmith_index_u32(15803u, 32u)];
    let var_2 = Struct_3(any(var_0.c), var_0.b.b);
    global3 = array<Struct_3, 6>();
    return -global0.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_4) -> i32 {
    global0 = vec4<i32>(func_4(((arg_1.b.b.c.x == 4294967295u) & false) | any(vec3<bool>(arg_2.b.a, false, arg_1.c.x)), abs(63505u ^ global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1650f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(4532u, Struct_4(false, global3[_wgslsmith_index_u32(70111u, 6u)], arg_1.c), arg_1.b.b.c.x)), _wgslsmith_f_op_f32(ceil(-329f))))), u_input.c.x, 2147483647i, ~(~arg_0.x));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -163f), _wgslsmith_f_op_f32(max(1672f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1139f * -2101f)))), -651f);
    var var_1 = -_wgslsmith_div_vec3_i32(select(_wgslsmith_div_vec3_i32(u_input.a.xxy, -vec3<i32>(0i, arg_0.x, -22835i)), vec3<i32>(_wgslsmith_clamp_i32(3896i, 17483i, global0.x), func_4(arg_1.a, 39832u, var_0.x), _wgslsmith_div_i32(2147483647i, 24372i)), any(vec4<bool>(arg_1.a, arg_2.b.b.b.x, arg_1.a, true))), global0.yyw << (select(~global1.xyy, firstLeadingBit(global1.wxz), false) % vec3<u32>(32u)));
    global1 = _wgslsmith_sub_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b.b.c.x, arg_2.b.b.c.x, 17024u, 0u), vec4<u32>(31691u, 1u, arg_2.b.b.c.x, 4294967295u), vec4<u32>(7646u, 1u, 0u, 1u)), vec4<u32>(1u, arg_2.b.b.c.x, 22846u, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(5206u, 4294967295u, arg_1.b.b.c.x, arg_2.b.b.c.x), vec4<u32>(0u, global1.x, arg_2.b.b.c.x, 4294967295u)))), ~(~vec4<u32>(36928u, 0u, arg_2.b.b.c.x, arg_1.b.b.c.x))) & vec4<u32>(_wgslsmith_clamp_u32(~arg_2.b.b.c.x, arg_1.b.b.c.x, 12356u & ~arg_1.b.b.c.x), _wgslsmith_div_u32(global1.x, firstLeadingBit(~arg_2.b.b.c.x)), ~(~arg_2.b.b.c.x) >> (global1.x % 32u), 41137u);
    var_1 = _wgslsmith_add_vec3_i32(-vec3<i32>(countOneBits(max(-18630i, -9686i)), ~(-u_input.b.x), -1i), _wgslsmith_div_vec3_i32(vec3<i32>(max(~13284i, ~31152i), 1i, global0.x), vec3<i32>(-1i) * -(~vec3<i32>(u_input.a.x, var_1.x, var_1.x))));
    return ~u_input.c.x;
}

fn func_1() -> i32 {
    global2 = array<Struct_2, 32>();
    global0 = -vec4<i32>(-1i, -_wgslsmith_dot_vec2_i32(-global0.wz, abs(u_input.c.yy)), ~func_2(-u_input.a.www, Struct_4(false, global3[_wgslsmith_index_u32(32023u, 6u)], vec3<bool>(false, true, true)), Struct_4(true, global3[_wgslsmith_index_u32(global1.x, 6u)], vec3<bool>(false, false, false))), -reverseBits(-2147483647i));
    global1 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(0u, global1.x, 8950u, global1.x)), ~((vec4<u32>(global1.x, 12246u, global1.x, 4294967295u) << (vec4<u32>(global1.x, 0u, 1u, 1u) % vec4<u32>(32u))) << (vec4<u32>(15221u, 13680u, global1.x, global1.x) % vec4<u32>(32u)))), vec4<u32>(select(4294967295u, ~global1.x, true), global1.x, firstTrailingBit(global1.x), 29030u) | (_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, 79261u, global1.x, 4294967295u) << (vec4<u32>(global1.x, 1u, 0u, global1.x) % vec4<u32>(32u)), vec4<u32>(1u, 43782u, global1.x, global1.x)) | ~(~vec4<u32>(1u, global1.x, global1.x, 96689u))));
    var var_0 = Struct_1(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), _wgslsmith_mult_vec3_u32(global1.yxw, ~global1.wwy));
    let var_1 = Struct_3(all(vec2<bool>(true, !var_0.b.x)), Struct_1(select(vec3<bool>(true, true, true), !(!vec3<bool>(true, var_0.a.x, true)), !var_0.a.x), vec2<bool>(!var_0.b.x, all(!vec4<bool>(var_0.b.x, true, true, var_0.a.x))), ~var_0.c));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 32>();
    global0 = vec4<i32>(1i, func_1(), _wgslsmith_clamp_i32(u_input.a.x, u_input.b.x, i32(-1i) * -11899i), u_input.b.x);
    global1 = max(~(~select(vec4<u32>(global1.x, global1.x, global1.x, 41164u) ^ vec4<u32>(global1.x, global1.x, global1.x, 1u), min(vec4<u32>(56194u, global1.x, global1.x, 4294967295u), vec4<u32>(24526u, 74053u, 4294967295u, global1.x)), vec4<bool>(false, true, true, false))), ~vec4<u32>(_wgslsmith_add_u32(0u, global1.x), 4294967295u, ~31101u, _wgslsmith_add_u32(1u ^ global1.x, _wgslsmith_add_u32(global1.x, 1u))));
    var var_0 = vec3<f32>(814f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1012f, -1934f) - 1f), _wgslsmith_f_op_f32(783f - _wgslsmith_f_op_f32(func_3(1u, Struct_4(false, Struct_3(true, Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true), global1.yyz)), vec3<bool>(false, true, true)), 31581u)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -834f))))));
    let var_1 = Struct_4(!((14829i >> (1u % 32u)) >= (min(-2147483647i, u_input.c.x) >> (79659u % 32u))), Struct_3(false, Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), ~(vec3<u32>(38292u, global1.x, global1.x) ^ global1.yww))), vec3<bool>(true, true, true));
    let var_2 = global1.x;
    let var_3 = Struct_1(vec3<bool>(!var_1.a, true, true), vec2<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-674f, var_0.x, false)), var_0.x)) != var_0.x, (_wgslsmith_f_op_f32(var_0.x * var_0.x) != _wgslsmith_f_op_f32(min(1124f, var_0.x))) == all(vec4<bool>(var_1.b.a, var_1.b.a, false, true))), ~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, 33818u), var_1.b.b.c))));
    let var_4 = vec4<u32>(3882u, global1.x, ~_wgslsmith_add_u32(firstTrailingBit(global1.x), 51036u), var_1.b.b.c.x);
    var var_5 = Struct_3(false, Struct_1(select(!var_3.a, var_3.a, true && !var_1.b.b.b.x), vec2<bool>(~var_3.c.x < select(0u, var_1.b.b.c.x, false), ~var_3.c.x != max(var_1.b.b.c.x, var_1.b.b.c.x)), vec3<u32>(select(_wgslsmith_sub_u32(var_3.c.x, var_3.c.x), var_3.c.x | 46111u, any(vec2<bool>(var_1.c.x, false))), _wgslsmith_add_u32(4294967295u, var_1.b.b.c.x), var_3.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1747f, var_0.x) - _wgslsmith_f_op_f32(sign(var_0.x))), var_0.x, 162f), vec3<f32>(_wgslsmith_f_op_f32(func_3(firstTrailingBit(var_3.c.x), Struct_4(var_1.a, var_1.b, vec3<bool>(var_3.b.x, var_5.a, var_1.c.x)), 4294967295u)), _wgslsmith_f_op_f32(631f * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_0.yz, vec2<f32>(137f, 585f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(var_0.xy, var_0.xy))))))), vec4<f32>(-137f, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1040f)))), _wgslsmith_f_op_f32(-1322f - var_0.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.yy - _wgslsmith_f_op_vec2_f32(trunc(var_0.zz))))));
}

