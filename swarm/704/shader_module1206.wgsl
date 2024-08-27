struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_3, 29>;

var<private> global2: Struct_3;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<u32> {
    let var_0 = select(u_input.d.x, u_input.b.x, _wgslsmith_mult_i32(firstTrailingBit(-1i), -23044i) == ~_wgslsmith_clamp_i32(36671i, u_input.a.x, 1i)) ^ countOneBits(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.e.x, abs(4294967295u)), 0u & ~u_input.d.x));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2042f) * _wgslsmith_f_op_f32(-438f + 352f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(791f, global2.a.x))), _wgslsmith_f_op_f32(exp2(global2.a.x)), -865f);
    global0 = !(!vec4<bool>(all(global0.wx), !(global0.x & global0.x), _wgslsmith_mod_u32(u_input.b.x, var_0) != ~28470u, true));
    var var_2 = -2066f;
    let var_3 = Struct_5(Struct_1(_wgslsmith_mult_u32(u_input.e.x, 1u), global2.a.x, global2.a.xww, ~(~(~var_0)), !select(!global0.yxz, vec3<bool>(global0.x, false, global0.x), !global0.x)), vec2<i32>(firstTrailingBit(min(-34759i, ~2147483647i)), -_wgslsmith_sub_i32(2147483647i, u_input.a.x) & -33267i), select(false && !(0u != u_input.e.x), all(select(vec4<bool>(global0.x, true, global0.x, global0.x), select(vec4<bool>(true, true, global0.x, true), vec4<bool>(true, global0.x, global0.x, false), true), false)), true));
    return _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, var_3.a.d, 50239u, var_0) | ~(~vec4<u32>(4294967295u, 78607u, var_0, var_0)), _wgslsmith_clamp_vec4_u32(vec4<u32>(97865u, reverseBits(53843u), var_0, _wgslsmith_div_u32(u_input.d.x, var_0)), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(66069u, 34574u, var_3.a.a, 1u), vec4<u32>(var_0, u_input.e.x, var_0, 0u), vec4<u32>(u_input.b.x, var_0, var_0, var_0)), vec4<u32>(var_0, u_input.e.x, var_0, var_0)), select(vec4<u32>(var_3.a.a, 0u, 4294967295u, 0u), vec4<u32>(var_0, var_3.a.d, 36256u, 1u), vec4<bool>(global0.x, global0.x, global0.x, global0.x)))) ^ min(~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0, var_3.a.a, var_0, 52158u), vec4<u32>(23459u, var_0, 0u, 57779u))), _wgslsmith_add_vec4_u32(firstTrailingBit(countOneBits(vec4<u32>(3659u, var_3.a.d, 109985u, var_3.a.d))), select(vec4<u32>(35474u, 16794u, 1u, 57299u), ~vec4<u32>(4294967295u, u_input.e.x, var_0, var_3.a.a), all(vec4<bool>(var_3.a.e.x, true, true, false)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = -u_input.a;
    let var_1 = _wgslsmith_mod_vec4_u32(max(_wgslsmith_add_vec4_u32(arg_1 << (func_3() % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(4294967295u, 11187u, arg_1.x, 3326u))), arg_1), ~(~arg_1));
    global2 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(arg_2.a, arg_2.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_2.a.x - arg_0.x), -1279f, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, global2.a.x, 657f, 1303f))), vec4<bool>(!global0.x, true, global0.x, false))))));
    var var_2 = _wgslsmith_f_op_f32(abs(global2.a.x));
    var var_3 = _wgslsmith_mult_i32(var_0.x, firstTrailingBit(~_wgslsmith_mod_i32(var_0.x, 44186i)) | u_input.a.x);
    return global0.xwx;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = Struct_1(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0, arg_0), arg_0), _wgslsmith_f_op_f32(-arg_1), global2.a.yxx, select(0u, ~_wgslsmith_dot_vec3_u32(u_input.b, abs(u_input.b)), !(!(!global0.x))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global2.a - vec4<f32>(938f, 826f, arg_1, -1113f)), vec4<f32>(arg_3.x, arg_3.x, global2.a.x, arg_3.x)))), ~_wgslsmith_add_vec4_u32(vec4<u32>(22970u, 49958u, 35783u, arg_0), min(vec4<u32>(u_input.e.x, 18116u, 45114u, 0u), vec4<u32>(arg_0, 1u, 1u, 0u))), Struct_3(_wgslsmith_div_vec4_f32(global2.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1227f, -350f, arg_3.x, -201f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(var_0.c));
    let var_2 = select(vec4<bool>(all(vec4<bool>(false, var_1.x == arg_2.x, !var_0.e.x, any(vec2<bool>(var_0.e.x, var_0.e.x)))), false, true, all(!global0.xz)), !select(vec4<bool>(true, all(global0.zz), var_0.e.x, !global0.x), select(vec4<bool>(true, global0.x, var_0.e.x, false), select(vec4<bool>(false, true, global0.x, false), vec4<bool>(false, var_0.e.x, false, true), vec4<bool>(global0.x, false, true, false)), select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, var_0.e.x, false, true), vec4<bool>(true, true, false, true))), global0.x), true);
    var var_3 = Struct_1(_wgslsmith_div_u32(26197u, firstTrailingBit(~arg_0)), _wgslsmith_f_op_f32(-2055f + arg_2.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, 287f) + _wgslsmith_f_op_f32(ceil(global2.a.x)))), -856f, -504f), (_wgslsmith_mod_u32(min(1u, 73684u), 1u) >> (var_0.d % 32u)) | func_3().x, vec3<bool>(54388u <= var_0.d, true, any(vec2<bool>(global0.x, true))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(991f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b + global2.a.x)))), _wgslsmith_f_op_f32(max(-891f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -460f), _wgslsmith_f_op_f32(arg_2.x * -656f)))), _wgslsmith_f_op_f32(max(489f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) + 553f)))));
    return global1[_wgslsmith_index_u32(38582u, 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(1u, global2.a.x, global2.a.xxy, vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) + global2.a.x))));
    let var_0 = 37176u;
    global2 = func_1(var_0, _wgslsmith_f_op_f32(max(961f, func_1(~min(57212u, 13324u), global2.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.a.x, -445f, -1841f)))), global2.a.zw).a.x)), global2.a.xwz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global2.a.x, -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(141f, global2.a.x), global2.a.x)))));
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(select(u_input.a.x & -2147483647i, u_input.c & u_input.c, all(vec2<bool>(true, false))), min(u_input.c << (u_input.b.x % 32u), select(u_input.c, u_input.c, true)), u_input.a.x), 1i), -39791i, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.c | u_input.a.x, u_input.a.x & u_input.c), ~(-u_input.a.x), abs(u_input.a.x), -26639i), vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-1i, u_input.a.x, u_input.a.x)), u_input.a ^ u_input.a), -2147483647i >> (max(var_0, u_input.d.x) % 32u), -2629i)));
    global2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global2.a))));
    global0 = vec4<bool>(all(vec2<bool>(!global0.x | global0.x, global0.x)), global2.a.x < _wgslsmith_div_f32(func_1(firstLeadingBit(u_input.d.x), _wgslsmith_f_op_f32(global2.a.x + global2.a.x), global2.a.ywx, _wgslsmith_f_op_vec2_f32(-global2.a.wx)).a.x, global2.a.x), false, !any(vec4<bool>(!global0.x, true, global2.a.x <= -152f, true || global0.x)));
    var var_2 = Struct_4(Struct_1(min(_wgslsmith_mod_u32(~var_0, 54176u), firstTrailingBit(var_0) << (23055u % 32u)), global2.a.x, _wgslsmith_f_op_vec3_f32(-func_1(~4294967295u, _wgslsmith_f_op_f32(global2.a.x * 1176f), global2.a.zzz, _wgslsmith_f_op_vec2_f32(-global2.a.xw)).a.xwz), 94232u, !global0.wwz), 599f, Struct_3(global2.a), -var_1.ywz, vec2<i32>(var_1.x, select(u_input.c, u_input.a.x, any(vec2<bool>(false, global0.x)))));
    let var_3 = Struct_4(var_2.a, var_2.a.c.x, func_1(1u, func_1(abs(~u_input.d.x), -848f, global2.a.www, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.xz - vec2<f32>(var_2.a.c.x, 847f)) * _wgslsmith_div_vec2_f32(global2.a.wy, global2.a.xy))).a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, global2.a.x, -122f)) - vec3<f32>(var_2.c.a.x, global2.a.x, var_2.a.b))), global2.a.zz), vec3<i32>(var_1.x, 0i, 79066i), var_1.wz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b, -2095f, var_3.a.c.x), var_2.c.a.yyx, var_2.a.e.x)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.a.c.x, global2.a.x, var_2.a.c.x), var_2.c.a.ywz, var_3.a.e.x))), global2.a.wxy) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1203f + _wgslsmith_f_op_f32(-1000f + -2438f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-681f - 1301f) * var_3.c.a.x))));
}

