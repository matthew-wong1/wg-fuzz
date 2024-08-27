struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(0i, 3054i, -21678i), vec3<i32>(-1734i, 1i, -40555i), vec3<i32>(14514i, -1i, 1i), vec3<i32>(28147i, 1i, 2147483647i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-38848i, 21992i, 31352i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, -70638i, -10761i), vec3<i32>(-20587i, -15071i, 2147483647i), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(-1i, 13638i, 2206i));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_5, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_clamp_i32(-2147483647i, firstTrailingBit(~u_input.b.x), -1i);
    var_0 = firstTrailingBit(1i);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(139f, -332f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1078f, global0.x))), true))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), arg_1) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1464f, 621f) + vec2<f32>(arg_1, 1774f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1064f, 1000f))))))));
    var var_1 = vec3<u32>(min(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_0.a, 3762u, u_input.a), ~44892u, u_input.a), ~max(u_input.a, arg_0.a)), ~(arg_0.a | 1u), ~(~(1u ^ ~arg_0.a)));
    var var_2 = Struct_2(~(~arg_0.a), any(select(vec4<bool>(true, any(vec2<bool>(true, false)), true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, false, true))), !(var_1.x <= u_input.a))), Struct_1(~(~(~vec3<u32>(16522u, 13239u, 25717u))), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))) && all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), -1i, ~_wgslsmith_dot_vec3_u32(vec3<u32>(11884u, var_1.x, 15088u), vec3<u32>(arg_0.a, 1u, 0u))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, ~4294967295u), vec2<u32>(u_input.a | arg_0.a, 0u) << (reverseBits(select(vec2<u32>(12171u, var_1.x), vec2<u32>(0u, u_input.a), vec2<bool>(false, false))) % vec2<u32>(32u))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1496f * global0.x) * _wgslsmith_f_op_f32(step(arg_1, 993f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(243f - 238f))), true)))) - arg_1);
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = Struct_1(~(~min(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(31016u, 1u, 15386u) << (vec3<u32>(u_input.a, 53313u, u_input.a) % vec3<u32>(32u)))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(u_input.a), arg_0))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) * _wgslsmith_f_op_f32(max(arg_0, -1435f)))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.b.x), global1[_wgslsmith_index_u32(u_input.a, 11u)]), vec3<i32>(u_input.c.x, 29430i, -21273i)) ^ select(1i, ~u_input.c.x, false), u_input.c.x), u_input.a ^ ~_wgslsmith_sub_u32(u_input.a, ~u_input.a));
    var var_1 = vec2<bool>(true | !all(!vec4<bool>(false, var_0.b, var_0.b, var_0.b)), var_0.b);
    let var_2 = Struct_5(34247u);
    var var_3 = vec3<u32>(~(1u | _wgslsmith_mod_u32(min(u_input.a, 60432u), 18153u)), 55134u, 4294967295u);
    var var_4 = var_2;
    return ~(-41462i);
}

fn func_4(arg_0: vec3<i32>, arg_1: bool) -> vec4<u32> {
    let var_0 = global0.x;
    let var_1 = abs(-select(u_input.c.yx, vec2<i32>(u_input.c.x, 36057i), vec2<bool>(true, true)) & firstTrailingBit(~(-vec2<i32>(1i, -31074i))));
    let var_2 = vec2<i32>(arg_0.x, -var_1.x);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(floor(global0.x)), global0.x);
    global1 = array<vec3<i32>, 11>();
    return ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.a, ~2353u, u_input.a & u_input.a), ~(~vec4<u32>(4294967295u, u_input.a, 24510u, 0u)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> StorageBuffer {
    global1 = array<vec3<i32>, 11>();
    let var_0 = func_4(_wgslsmith_mult_vec3_i32(~countOneBits(global1[_wgslsmith_index_u32(u_input.a, 11u)] ^ vec3<i32>(arg_0.c, u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(0i << (arg_0.d % 32u), 1i, func_2(-557f)), global1[_wgslsmith_index_u32(arg_0.a.x, 11u)])), all(vec2<bool>(_wgslsmith_f_op_f32(222f - arg_1) > _wgslsmith_f_op_f32(-global0.x), false)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(f32(-1f) * -2301f)), arg_2.x);
    let var_1 = arg_2.x;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -265f)) + arg_2));
    return StorageBuffer(~u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1860f - _wgslsmith_f_op_f32(arg_2.x + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(2147483647i, arg_0.c) | ~u_input.c.x, 14969i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, arg_0.c, -12979i, u_input.c.x), u_input.c), u_input.b.x), vec4<i32>(-61871i, u_input.b.x | ~(-2147483647i), -3264i, max(u_input.b.x << (arg_0.a.x % 32u), -u_input.c.x))), _wgslsmith_sub_vec2_i32(select(u_input.c.xx, -vec2<i32>(22445i, u_input.b.x), arg_0.b), abs(select(u_input.c.xx, vec2<i32>(0i, 40876i), any(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(sign(var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 11>();
    global1 = array<vec3<i32>, 11>();
    var var_0 = ~(~vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 91790u, 1u, 4294967295u), ~vec4<u32>(u_input.a, u_input.a, 23587u, u_input.a)), ~u_input.a, 8966u));
    var_0 = vec3<u32>(73146u << (_wgslsmith_add_u32(~(~36230u), _wgslsmith_add_u32(~var_0.x, var_0.x)) % 32u), ~var_0.x, 4294967295u);
    let var_1 = Struct_1(~(select(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, 23715u), vec3<u32>(u_input.a, 46240u, var_0.x)), ~vec3<u32>(u_input.a, u_input.a, 0u), true) >> (vec3<u32>(_wgslsmith_clamp_u32(14512u, var_0.x, 55736u), u_input.a, _wgslsmith_add_u32(u_input.a, var_0.x)) % vec3<u32>(32u))), true, -57046i, var_0.x);
    var var_2 = global0.x;
    var var_3 = !all(vec3<bool>(all(!vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b)), var_1.b, var_0.x < ~u_input.a));
    var_0 = var_1.a;
    let x = u_input.a;
    s_output = func_1(var_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-884f - -730f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-650f, global0.x, false)))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(435f, _wgslsmith_f_op_f32(f32(-1f) * -190f)))));
}

