struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 15>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(137f, 241f, -1000f) + vec3<f32>(global3.a, global3.a, global1.a.a)) * vec3<f32>(global1.a.a, _wgslsmith_f_op_f32(round(1000f)), -310f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a, global3.a, -1000f) * vec3<f32>(1139f, global1.a.a, global3.a))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3.a, 1305f, -716f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a, global3.a, global1.a.a)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))))));
    global2 = array<Struct_2, 15>();
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, -883f, -2042f, global3.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global1.a.a, var_0.x, 420f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 597f, global3.a, var_0.x))), all(vec2<bool>(false, false)) && (global1.a.a != -721f))))));
    var var_2 = Struct_4(_wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(global1.a.b.yy, ~vec2<u32>(82098u, global1.a.b.x)), global1.a.b.xz), Struct_3(vec4<i32>(26518i, 1i, -2147483647i, 3294i ^ u_input.c.x) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(global3.b.x, 39855u, 32579u, 47838u), _wgslsmith_div_vec4_u32(vec4<u32>(global1.a.b.x, 24550u, u_input.a.x, 45639u), vec4<u32>(global3.b.x, 1u, 33007u, 1u))) % vec4<u32>(32u)), select(_wgslsmith_sub_i32(-2147483647i, u_input.b), _wgslsmith_sub_i32(u_input.c.x, -1i), true) & abs(countOneBits(u_input.c.x)), Struct_1(_wgslsmith_f_op_f32(919f * _wgslsmith_f_op_f32(f32(-1f) * -490f)), _wgslsmith_mult_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(u_input.a, u_input.a)))), Struct_3(~(vec4<i32>(u_input.c.x, u_input.b, -22981i, u_input.b) >> (select(vec4<u32>(1u, u_input.d, 1u, 35816u), vec4<u32>(1u, 1u, global1.a.b.x, 4294967295u), false) % vec4<u32>(32u))), 18888i, global1.a));
    var var_3 = Struct_4(global1.a.b.xz, var_2.b, var_2.c);
    return vec3<bool>(min(_wgslsmith_mult_i32(var_3.c.b << (global1.a.b.x % 32u), ~0i), var_3.b.b) == -u_input.b, false, !(!all(vec4<bool>(false, true, false, true))));
}

fn func_2(arg_0: Struct_5) -> i32 {
    let var_0 = vec3<u32>(global3.b.x, _wgslsmith_div_u32(global1.a.b.x, _wgslsmith_div_u32(1u, ~0u)), abs(4294967295u)) ^ u_input.a;
    var var_1 = all(!(!(!select(vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(arg_0.b, false, false), false))));
    var var_2 = arg_0.c.wx;
    let var_3 = select(func_3(), vec3<bool>(all(vec3<bool>(!arg_0.b, !arg_0.b, all(vec3<bool>(arg_0.b, arg_0.b, false)))), true, u_input.c.x < (u_input.b << (47701u % 32u))), arg_0.b);
    return abs(var_2.x);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_3(~vec4<i32>(1i, u_input.c.x, func_2(Struct_5(2147483647i, true, vec4<i32>(u_input.b, u_input.b, arg_0, arg_0))), firstTrailingBit(1i)), -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-40988i, 63865i, 487i, -2147483647i), vec4<i32>(arg_0, u_input.c.x, arg_0, 105859i)), vec4<i32>(arg_0, 0i, arg_0, 0i)) << (_wgslsmith_dot_vec4_u32((vec4<u32>(23017u, global3.b.x, global1.a.b.x, 35332u) ^ vec4<u32>(92172u, 10760u, u_input.a.x, 1u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, global1.a.b.x, u_input.a.x), vec4<u32>(1u, global3.b.x, 0u, arg_2)), vec4<u32>(1u, _wgslsmith_mod_u32(70955u, u_input.a.x), arg_2, global3.b.x)) % 32u), Struct_1(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, global3.b.x, global1.a.b.x), vec3<u32>(arg_2, select(20840u, 4294967295u, false), _wgslsmith_mult_u32(global3.b.x, u_input.a.x)))));
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-343f, arg_1))))), global3.b));
    var var_1 = ~(~u_input.a);
    global2 = array<Struct_2, 15>();
    global2 = array<Struct_2, 15>();
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1040f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 - -643f))) + global3.a)), global3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(-(_wgslsmith_add_vec4_i32(~vec4<i32>(-1i, u_input.c.x, -22219i, -1655i), ~vec4<i32>(u_input.b, -47359i, u_input.c.x, u_input.b)) & vec4<i32>(5875i, _wgslsmith_clamp_i32(u_input.b, 1i, u_input.c.x), i32(-1i) * -1i, _wgslsmith_sub_i32(-26749i, u_input.c.x))), -12126i, func_1(firstTrailingBit(u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a.a)))), 4294967295u));
    let var_1 = Struct_4(_wgslsmith_div_vec2_u32(select(max(vec2<u32>(18760u, 14239u), u_input.a.zy), vec2<u32>(var_0.c.b.x, global1.a.b.x), vec2<bool>(true, true)) | global3.b.zx, ~global3.b.zz), var_0, Struct_3(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.c.x, u_input.c.x, 22797i, 0i), vec4<i32>(var_0.a.x, var_0.a.x, var_0.b, u_input.b)), (min(var_0.b, var_0.a.x) << (67938u % 32u)) & var_0.b, func_1(2147483647i, global1.a.a, 0u)));
    global3 = func_1(10687i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_1.b.c.a, global1.a.a)), -363f)))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 11425u, var_0.c.b.x), var_1.b.c.b)));
    var var_2 = !(!vec3<bool>(any(vec4<bool>(true, false, true, true)) && true, false, true || (var_1.c.b != u_input.b)));
    var var_3 = func_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a)), _wgslsmith_add_u32(4294967295u, u_input.a.x));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.a), _wgslsmith_f_op_f32(global1.a.a - 477f));
    global0 = _wgslsmith_sub_i32(firstTrailingBit(-(~(-20868i))) ^ (var_0.a.x >> (~global1.a.b.x % 32u)), ~var_1.c.a.x);
    let var_5 = var_1.b;
    var var_6 = _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.c.x, 0i), i32(-1i) * -2147483647i), countOneBits(_wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(1i, u_input.b, 2147483647i, var_1.c.a.x)))), reverseBits(var_5.a.xz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1975f)))) - 824f), var_0.a.x, _wgslsmith_f_op_f32(var_0.c.a + _wgslsmith_f_op_f32(2021f - _wgslsmith_f_op_f32(var_5.c.a - _wgslsmith_f_op_f32(ceil(-317f))))));
}

