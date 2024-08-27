struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: f32,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
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

var<private> global0: Struct_2;

var<private> global1: array<bool, 11>;

var<private> global2: array<vec4<f32>, 10>;

var<private> global3: Struct_4 = Struct_4(Struct_3(vec4<f32>(-1200f, -246f, 1007f, 1016f), Struct_1(false, vec4<i32>(20309i, 47534i, 13877i, i32(-2147483648)), 0i, 52056u, true), vec4<bool>(true, true, false, false), vec4<f32>(1720f, -766f, -655f, -1000f)), Struct_3(vec4<f32>(718f, -1482f, -642f, 240f), Struct_1(false, vec4<i32>(1i, 32779i, 20112i, -8938i), -1i, 17547u, true), vec4<bool>(false, true, false, true), vec4<f32>(-181f, -1907f, -1837f, 646f)), -406f, i32(-2147483648), Struct_3(vec4<f32>(973f, -1664f, -130f, -1187f), Struct_1(true, vec4<i32>(i32(-2147483648), 0i, -21914i, -16579i), 1i, 1u, false), vec4<bool>(false, false, true, false), vec4<f32>(-583f, 696f, 591f, -1735f)));

var<private> global4: f32 = 1000f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_5) -> f32 {
    global1 = array<bool, 11>();
    global4 = 451f;
    var var_0 = i32(-1i) * -44923i;
    let var_1 = global0.d.d;
    let var_2 = reverseBits(1u);
    return _wgslsmith_f_op_f32(-global3.a.a.x);
}

fn func_3(arg_0: u32, arg_1: u32) -> f32 {
    var var_0 = global0.b.b.x;
    global3 = Struct_4(global3.b, Struct_3(global3.a.d, global3.e.b, vec4<bool>(!all(global3.e.c.ww), !select(true, global0.d.a, false), false, all(select(vec2<bool>(true, true), global3.a.c.xy, global0.d.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.a.d.x, -1000f, global3.b.d.x, -1563f))) - global2[_wgslsmith_index_u32(1u, 10u)]) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global2[_wgslsmith_index_u32(4294967295u, 10u)], global0.a))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global0.a.x)))))), -1000f)), 12028i, Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 456f, 1830f, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1988f, -110f, -590f, global3.b.a.x))) * vec4<f32>(_wgslsmith_f_op_f32(step(739f, global0.a.x)), _wgslsmith_div_f32(global0.a.x, global0.a.x), _wgslsmith_f_op_f32(trunc(global3.c)), _wgslsmith_f_op_f32(-global0.a.x))), Struct_1(global0.b.e, u_input.a << (vec4<u32>(0u, 4294967295u, arg_1, 44453u) % vec4<u32>(32u)), -7855i, arg_0, global3.e.b.e), global3.a.c, global3.e.a));
    global4 = 417f;
    var var_1 = -_wgslsmith_sub_i32(~(-min(-31i, u_input.c)), -1i);
    var var_2 = global3.b.c.yw;
    return global3.c;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec2<i32>(~_wgslsmith_mult_i32(arg_0.d.c, global0.b.b.x) | -u_input.a.x, abs(_wgslsmith_dot_vec2_i32(global3.e.b.b.wz, abs(vec2<i32>(2147483647i, -1i))))) ^ _wgslsmith_div_vec2_i32(~arg_0.c >> (vec2<u32>(27415u, u_input.d) % vec2<u32>(32u)), ~select(vec2<i32>(7707i, global0.b.b.x) << (vec2<u32>(arg_0.d.d, global0.d.d) % vec2<u32>(32u)), vec2<i32>(global3.a.b.b.x, global3.a.b.b.x), select(vec2<bool>(global1[_wgslsmith_index_u32(global3.b.b.d, 11u)], global1[_wgslsmith_index_u32(u_input.b, 11u)]), vec2<bool>(global1[_wgslsmith_index_u32(global3.a.b.d, 11u)], global1[_wgslsmith_index_u32(global0.d.d, 11u)]), global3.e.c.yw)));
    let var_1 = vec2<bool>(true | select(true, true, true), true || (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(0u, arg_0.d.d)), -915f, all(global3.b.c))) > global0.a.x));
    var var_2 = Struct_4(Struct_3(arg_0.a, Struct_1(arg_0.a.x == _wgslsmith_f_op_f32(max(-1440f, 525f)), _wgslsmith_clamp_vec4_i32(arg_0.d.b, -vec4<i32>(14580i, 11256i, u_input.c, global3.d), global3.e.b.b), global3.b.b.c << (1u % 32u), 38585u, global1[_wgslsmith_index_u32(min(~global3.a.b.d, global3.b.b.d), 11u)]), global3.e.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_0.a)) - vec4<f32>(global3.c, -1000f, 1818f, 1548f)), _wgslsmith_f_op_vec4_f32(-arg_0.a))), global3.b, -1193f, -_wgslsmith_add_i32(_wgslsmith_mod_i32(firstTrailingBit(global3.e.b.c), -47847i), 0i), Struct_3(global0.a, arg_0.b, !vec4<bool>(false, var_1.x, var_1.x, false), global2[_wgslsmith_index_u32(13103u, 10u)]));
    global1 = array<bool, 11>();
    let var_3 = var_2.b;
    return arg_0;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    global0 = func_4(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(func_2(global3.a, Struct_5(vec3<u32>(1u, u_input.d, global0.b.d), Struct_2(vec4<f32>(623f, 258f, arg_0.x, global3.b.a.x), global0.b, vec2<i32>(2147483647i, global0.c.x), global3.e.b), vec4<u32>(4294967295u, u_input.b, u_input.d, 4294967295u), global3.a, global1[_wgslsmith_index_u32(1u, 11u)]))), _wgslsmith_f_op_f32(floor(-1398f)), _wgslsmith_f_op_f32(func_3(global3.a.b.d, u_input.d)), _wgslsmith_f_op_f32(1000f - global3.c)), Struct_1(global0.d.a, vec4<i32>(global0.c.x, global3.b.b.c ^ u_input.c, _wgslsmith_dot_vec3_i32(global3.e.b.b.yyz, vec3<i32>(-4577i, -10163i, 2147483647i)), firstTrailingBit(global3.b.b.c)), -2147483647i, ~(~1u), !any(global3.b.c)), _wgslsmith_clamp_vec2_i32(u_input.a.wz, select(~global3.b.b.b.zw, u_input.a.zx << (u_input.e.zz % vec2<u32>(32u)), select(vec2<bool>(false, true), global3.a.c.xw, vec2<bool>(true, false))), global0.c), Struct_1(false, ~u_input.a, global3.a.b.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.e.yy, vec2<u32>(global0.d.d, global3.e.b.d)), ~u_input.e.xz), !(arg_0.x == -278f))));
    let var_0 = ~countOneBits((vec4<u32>(global0.d.d, global0.d.d, global0.d.d, 76364u) << ((vec4<u32>(u_input.e.x, 170u, 65494u, u_input.d) >> (vec4<u32>(0u, 717u, u_input.d, global0.d.d) % vec4<u32>(32u))) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(global3.a.b.d, u_input.b, global3.b.b.d, 29530u)), vec4<u32>(u_input.b, u_input.d, 30607u, u_input.e.x)));
    var var_1 = global3.e;
    global2 = array<vec4<f32>, 10>();
    return global3.a.b;
}

fn func_5(arg_0: Struct_5) -> Struct_2 {
    var var_0 = func_4(func_4(arg_0.b)).d;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(global0.d.d | _wgslsmith_mod_u32(3122u, 7897u), _wgslsmith_add_u32(1u, firstTrailingBit(1u)))))) * arg_0.b.a.x);
    var var_2 = global3.a.b.d;
    var var_3 = global1[_wgslsmith_index_u32(abs(min(_wgslsmith_add_u32(~(~global3.e.b.d), arg_0.d.b.d), 4294967295u ^ _wgslsmith_mod_u32(~global0.d.d, reverseBits(var_0.d)))), 11u)];
    let var_4 = Struct_4(global3.b, Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1536f, global3.a.a.x, var_1, arg_0.d.a.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a.x, -139f, global0.a.x, var_1))), any(vec2<bool>(false, false)))) - vec4<f32>(arg_0.d.d.x, _wgslsmith_f_op_f32(-arg_0.d.a.x), func_4(Struct_2(global2[_wgslsmith_index_u32(global0.d.d, 10u)], arg_0.b.d, vec2<i32>(-1i, u_input.c), Struct_1(var_0.a, global3.b.b.b, global0.c.x, 15923u, true))).a.x, _wgslsmith_f_op_f32(f32(-1f) * -345f))), func_4(arg_0.b).b, vec4<bool>(global3.b.b.e, arg_0.b.a.x < arg_0.b.a.x, global0.a.x != _wgslsmith_f_op_f32(-global3.c), true), vec4<f32>(var_1, global0.a.x, global3.b.a.x, global0.a.x)), _wgslsmith_f_op_f32(-arg_0.b.a.x), arg_0.d.b.b.x, arg_0.d);
    return func_4(func_4(arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = -369f;
    global0 = func_5(Struct_5(_wgslsmith_clamp_vec3_u32(u_input.e, vec3<u32>(36092u, _wgslsmith_dot_vec2_u32(u_input.e.zz, u_input.e.xz), global3.e.b.d >> (1u % 32u)), (u_input.e & vec3<u32>(global0.d.d, 4294967295u, 4294967295u)) & ~vec3<u32>(34283u, global0.d.d, u_input.d)), Struct_2(global2[_wgslsmith_index_u32(global0.b.d, 10u)], global0.d, global3.e.b.b.wx, func_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.b.a.x, 1864f, 142f))))), ~(vec4<u32>(global0.b.d, global3.b.b.d, u_input.b, global3.b.b.d) << ((vec4<u32>(6700u, 85719u, global3.a.b.d, global0.d.d) >> (vec4<u32>(0u, 4294967295u, 0u, 40333u) % vec4<u32>(32u))) % vec4<u32>(32u))), global3.b, !global0.b.e));
    let var_0 = func_1(global0.a.zyx).e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(select(19855u, ~(~0u), global3.e.c.x), func_4(Struct_2(_wgslsmith_f_op_vec4_f32(global0.a - global0.a), global0.b, -vec2<i32>(2147483647i, 1i), func_1(global3.a.d.xxx))).b.d));
}

