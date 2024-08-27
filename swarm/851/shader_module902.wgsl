struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(-232f, 358f, -136f, -622f, 488f, 1000f);

var<private> global1: Struct_1 = Struct_1(vec2<u32>(0u, 0u), vec4<f32>(328f, 187f, 194f, -319f), true);

var<private> global2: bool;

var<private> global3: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false));

var<private> global4: i32 = 22458i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = vec3<i32>(u_input.b, _wgslsmith_sub_i32(u_input.a | -24783i, u_input.a) ^ ~(-35652i), _wgslsmith_sub_i32(max(1i, u_input.e.x) << (firstTrailingBit(0u) % 32u), select(u_input.e.x, u_input.e.x, false) ^ 1i)) | vec3<i32>(0i, reverseBits(-2147483647i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.e.x, u_input.b)), u_input.b), u_input.a));
    let var_1 = -1i;
    var var_2 = var_1;
    global3 = array<vec4<bool>, 27>();
    return firstLeadingBit(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, min(arg_1.a.x, u_input.c.x), ~38836u, _wgslsmith_dot_vec3_u32(vec3<u32>(37271u, 117581u, global1.a.x), vec3<u32>(u_input.d, arg_1.a.x, u_input.c.x))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a.x, arg_1.a.x, 93080u, 31817u), vec4<u32>(0u, 0u, 32983u, 30209u))), ~min(vec4<u32>(u_input.c.x, arg_1.a.x, 60425u, global1.a.x), vec4<u32>(47493u, 24123u, u_input.c.x, 55952u)) | ~(~vec4<u32>(global1.a.x, 0u, global1.a.x, arg_1.a.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    global3 = array<vec4<bool>, 27>();
    let var_0 = arg_1.a;
    global1 = Struct_1(min(_wgslsmith_add_vec2_u32(arg_2.a | (vec2<u32>(global1.a.x, arg_1.b.x) >> (vec2<u32>(71930u, arg_1.a.c.a.x) % vec2<u32>(32u))), select(vec2<u32>(var_0.c.a.x, u_input.d), ~vec2<u32>(var_0.c.a.x, u_input.d), select(vec2<bool>(true, arg_1.a.c.c), arg_1.a.d.yz, vec2<bool>(arg_1.a.c.c, global1.c)))), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.b.yz)), arg_1.a.c).wx), arg_1.a.c.b, select(_wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(-428f * 340f)) < _wgslsmith_f_op_f32(f32(-1f) * -1153f), any(vec2<bool>(all(vec3<bool>(arg_1.a.c.c, global1.c, true)), any(global3[_wgslsmith_index_u32(global1.a.x, 27u)]))), any(!vec4<bool>(true, global1.c, true, global1.c))));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 1000f, arg_0.x))) + _wgslsmith_f_op_vec3_f32(-global1.b.wxy))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -890f), _wgslsmith_f_op_f32(abs(1469f)), var_1.a));
    return !(arg_2.c && (global1.c || true));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_2(259f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global1.a.x, 6u)], -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-507f, -231f))))), Struct_1(global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global1.b)) * vec4<f32>(1580f, global0[_wgslsmith_index_u32(global1.a.x, 6u)], -624f, 359f))), true), vec3<bool>(true, func_4(global1.b.wwz, Struct_3(Struct_2(-425f, vec2<f32>(-137f, 120f), Struct_1(vec2<u32>(0u, 4751u), vec4<f32>(447f, 551f, global0[_wgslsmith_index_u32(12522u, 6u)], global0[_wgslsmith_index_u32(59678u, 6u)]), global1.c), vec3<bool>(true, true, arg_2)), func_3(global1.b.xy, Struct_1(u_input.c, vec4<f32>(531f, global1.b.x, -792f, -1177f), global1.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(88999u, 6u)], global0[_wgslsmith_index_u32(global1.a.x, 6u)], -184f) + global1.b.yyx)), Struct_1(global1.a, vec4<f32>(-2244f, global1.b.x, global1.b.x, -550f), true), vec2<i32>(arg_0, arg_1)), global1.c));
    var var_1 = 1845f;
    return Struct_1(abs(~abs(global1.a)), vec4<f32>(-378f, _wgslsmith_f_op_f32(round(-593f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-729f)))), 535f), true);
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> bool {
    var var_0 = any(!vec2<bool>(!(!global1.c), global1.c));
    let var_1 = ~vec3<i32>(~u_input.e.x, firstTrailingBit(~_wgslsmith_div_i32(arg_0, u_input.a)), abs(u_input.a));
    let var_2 = func_2(-2147483647i, -34076i, false);
    var var_3 = vec2<i32>(49463i, abs(-u_input.b >> (~arg_1.c.a.x % 32u))) << (abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(global1.a.x, 6702u), ~global1.a)) % vec2<u32>(32u));
    global0 = array<f32, 6>();
    return true;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = arg_0.a;
    global0 = array<f32, 6>();
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(-(~13701i), arg_1.x, reverseBits(~_wgslsmith_mod_i32(arg_1.x, 2147483647i)), _wgslsmith_mod_i32(arg_1.x, -1i) >> (4294967295u % 32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 1i, min(arg_1.x, u_input.e.x)), abs(vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -50948i, 40902i, u_input.b), vec4<i32>(arg_1.x, 18896i, -12290i, arg_1.x)), 0i, abs(-3138i))), ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, 7286i, -12803i, arg_1.x), vec4<i32>(u_input.b, 1i, 5949i, u_input.e.x)))));
    global4 = arg_1.x & (0i >> (_wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(23576u, arg_0.c.a.x, 4294967295u)) % 32u));
    let var_2 = firstLeadingBit(4294967295u);
    return Struct_1(select(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(arg_0.c.a.x, var_2)), ~reverseBits(u_input.c)), firstLeadingBit(_wgslsmith_add_vec2_u32(~vec2<u32>(var_2, arg_0.c.a.x), ~vec2<u32>(12761u, var_2))), arg_0.d.x), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, -1693f, arg_0.c.c))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 190f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global1.a.x) & 49039u, 6u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 6u)] * arg_0.c.b.x), _wgslsmith_f_op_f32(-global1.b.x)))), !(!(!(4294967295u <= global1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-376f, _wgslsmith_f_op_vec2_f32(global1.b.zz + global1.b.wy), func_5(Struct_2(global1.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1714f, global0[_wgslsmith_index_u32(1u, 6u)]) - _wgslsmith_f_op_vec2_f32(global1.b.wx - global1.b.yy)), Struct_1(global1.a, global1.b, func_1(-70352i, Struct_2(319f, global1.b.wy, Struct_1(vec2<u32>(u_input.d, u_input.d), vec4<f32>(-439f, -407f, global1.b.x, -143f), global1.c), vec3<bool>(global1.c, true, global1.c)), 1u)), select(!vec3<bool>(global1.c, true, true), select(vec3<bool>(global1.c, false, false), vec3<bool>(global1.c, global1.c, true), global1.c), select(vec3<bool>(true, global1.c, global1.c), vec3<bool>(false, global1.c, global1.c), vec3<bool>(global1.c, true, global1.c)))), ~(vec2<i32>(-1i) * -vec2<i32>(u_input.a, 1i))), !(!vec3<bool>(global1.c, func_4(global1.b.wxx, Struct_3(Struct_2(710f, global1.b.wx, Struct_1(global1.a, vec4<f32>(1727f, global0[_wgslsmith_index_u32(global1.a.x, 6u)], global0[_wgslsmith_index_u32(3196u, 6u)], global0[_wgslsmith_index_u32(26924u, 6u)]), global1.c), vec3<bool>(false, global1.c, true)), vec4<u32>(u_input.c.x, global1.a.x, 4294967295u, 22630u), global1.b.wyw), Struct_1(vec2<u32>(41253u, u_input.c.x), global1.b, true), vec2<i32>(0i, 20775i)), true)));
    let var_1 = ~((vec2<u32>(_wgslsmith_dot_vec2_u32(global1.a, vec2<u32>(global1.a.x, var_0.c.a.x)), global1.a.x) & _wgslsmith_add_vec2_u32(u_input.c >> (global1.a % vec2<u32>(32u)), ~vec2<u32>(var_0.c.a.x, var_0.c.a.x))) & ~(~global1.a));
    let var_2 = u_input.b;
    let var_3 = Struct_2(global1.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(func_5(Struct_2(var_0.b.x, vec2<f32>(global1.b.x, 565f), Struct_1(var_1, vec4<f32>(global1.b.x, global0[_wgslsmith_index_u32(3803u, 6u)], -909f, 411f), false), vec3<bool>(true, global1.c, global1.c)), u_input.e).b.yw, _wgslsmith_f_op_vec2_f32(var_0.b + var_0.b))), func_5(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.b.x - 1633f), _wgslsmith_f_op_f32(sign(-696f)))), global1.b.wx, Struct_1(var_0.c.a, var_0.c.b, any(var_0.d.yy)), select(var_0.d, !vec3<bool>(true, global1.c, true), func_5(Struct_2(global0[_wgslsmith_index_u32(var_1.x, 6u)], vec2<f32>(407f, -449f), Struct_1(vec2<u32>(0u, global1.a.x), vec4<f32>(320f, global1.b.x, var_0.c.b.x, var_0.c.b.x), global1.c), var_0.d), u_input.e).c)), select(-vec2<i32>(u_input.e.x, u_input.a), u_input.e, true) >> (func_3(global1.b.zz, var_0.c).yw % vec2<u32>(32u))), var_0.d);
    let var_4 = ~abs(func_2(1i, ~17489i, true).a.x);
    var var_5 = func_2(~(-38947i), u_input.a >> (global1.a.x % 32u), true);
    let var_6 = ~select(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(85652u, var_4, var_3.c.a.x, var_4)), vec4<u32>(1u, 79698u, func_5(var_3, u_input.e).a.x, 43325u)), var_5.a.x, func_2(select(countOneBits(1i), 2147483647i, var_0.d.x && false), ~var_2, true).c);
    var var_7 = func_2(-2147483647i, 2147483647i, all(vec2<bool>(!global1.c, any(vec4<bool>(var_3.c.c, true, true, var_3.c.c)))));
    let var_8 = _wgslsmith_f_op_f32(-1000f * var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.x);
}

