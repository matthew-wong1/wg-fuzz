struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1i, Struct_1(false, vec4<i32>(i32(-2147483648), -29118i, 1i, 31140i), true, vec3<u32>(7345u, 76489u, 0u), false), 0i, Struct_1(true, vec4<i32>(7419i, i32(-2147483648), 0i, -1i), true, vec3<u32>(17452u, 1u, 4294967295u), true), 2147483647i);

var<private> global1: array<f32, 23> = array<f32, 23>(194f, 1316f, 301f, 829f, -754f, -1016f, 333f, -1000f, -733f, -665f, 991f, -1000f, -551f, 284f, -543f, -1000f, -2216f, -1411f, -176f, -139f, 1522f, -1042f, 428f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> f32 {
    global1 = array<f32, 23>();
    let var_0 = Struct_2(3908i, Struct_1(global0.b.e, vec4<i32>(-1i) * -(~global0.d.b), true, u_input.b, global0.e <= _wgslsmith_div_i32(u_input.e, -global0.d.b.x)), ~(~_wgslsmith_mult_i32(7768i, 0i)), Struct_1(false, _wgslsmith_clamp_vec4_i32(vec4<i32>(21152i, global0.e, 1i, global0.e) >> (u_input.a % vec4<u32>(32u)), ~global0.b.b, ~vec4<i32>(-1i, -40029i, 0i, global0.e)) & vec4<i32>(1332i, u_input.d, 1i, _wgslsmith_sub_i32(u_input.d, -2147483647i)), any(vec3<bool>(true, true, true)), vec3<u32>(arg_1, min(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.b.x), u_input.b)), ~_wgslsmith_div_u32(0u, global0.b.d.x)), true), abs(_wgslsmith_div_i32(-2147483647i, u_input.e)));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(35793u, arg_1) << ((var_0.d.d.x << (4294967295u % 32u)) % 32u), 23u)] - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.d.d.x, 28635u), 23u)])) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_0.x)))))));
    var_1 = _wgslsmith_f_op_f32(739f * -366f);
    var var_2 = any(select(select(select(!vec3<bool>(false, global0.d.c, var_0.b.e), !vec3<bool>(true, false, var_0.d.e), !vec3<bool>(global0.b.c, true, false)), select(!vec3<bool>(var_0.d.e, global0.d.c, global0.b.a), vec3<bool>(global0.b.c, var_0.d.e, false), select(vec3<bool>(global0.d.e, var_0.b.e, false), vec3<bool>(var_0.d.e, global0.b.a, var_0.b.e), vec3<bool>(false, true, global0.b.a))), !vec3<bool>(true, var_0.d.e, var_0.d.e)), !select(!vec3<bool>(var_0.b.e, global0.d.e, true), select(vec3<bool>(var_0.b.a, var_0.d.e, false), vec3<bool>(true, false, false), global0.d.a), global0.d.c || true), false));
    return _wgslsmith_f_op_f32(step(arg_0.x, -1144f));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], -395f)))), vec3<f32>(1f, 2436f, -2122f))) - vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], 587f))), u_input.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(0u, 23u)]))), 749f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f * global1[_wgslsmith_index_u32(1u, 23u)]), global1[_wgslsmith_index_u32(~1u, 23u)]))))));
    let var_1 = u_input.a.wwx;
    global1 = array<f32, 23>();
    var var_2 = Struct_2(43293i, Struct_1(1462f == _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.d.d.x, 56059u, 20532u), vec4<u32>(8323u, var_1.x, global0.d.d.x, var_1.x)), 23u)]), vec4<i32>(global0.b.b.x, -firstLeadingBit(global0.e), firstTrailingBit(_wgslsmith_mult_i32(global0.c, 1i)), -min(global0.c, global0.a)), global0.b.c, (u_input.a.zwy ^ global0.d.d) >> (global0.d.d % vec3<u32>(32u)), global0.c > u_input.d), 1i, global0.b, -_wgslsmith_dot_vec3_i32(global0.d.b.yzx, vec3<i32>(21951i, ~u_input.c, -2147483647i)));
    let var_3 = Struct_2(firstLeadingBit(-u_input.c), global0.b, var_2.c, Struct_1(var_2.b.a, ~var_2.b.b, global0.d.c, _wgslsmith_mult_vec3_u32(select(_wgslsmith_mult_vec3_u32(var_2.b.d, vec3<u32>(1u, 20037u, var_2.d.d.x)), global0.d.d, vec3<bool>(var_2.b.e, var_2.d.a, false)), var_2.d.d), true), global0.d.b.x);
    return Struct_1(var_2.b.b.x != abs(-_wgslsmith_mod_i32(var_3.c, -2147483647i)), vec4<i32>(~(-2147483647i), 50032i, _wgslsmith_sub_i32(-(~var_3.a), ~max(9106i, 1i)), -81023i), all(select(!vec2<bool>(var_2.b.c, true), select(select(vec2<bool>(true, global0.d.a), vec2<bool>(var_2.b.c, false), vec2<bool>(true, global0.b.e)), !vec2<bool>(var_2.d.a, true), var_3.e == var_2.a), select(vec2<bool>(var_3.b.e, true), select(vec2<bool>(false, false), vec2<bool>(var_2.d.a, true), vec2<bool>(true, false)), select(var_3.d.c, var_3.d.e, true)))), var_2.b.d, var_3.d.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    return arg_2.b.x;
}

fn func_1() -> i32 {
    global1 = array<f32, 23>();
    var var_0 = vec4<bool>(!(!(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 284f) < global1[_wgslsmith_index_u32(u_input.a.x ^ 4294967295u, 23u)])), false, false, ~1i == select(-(2147483647i ^ u_input.d), func_4(func_2(), Struct_3(2147483647i, global0.d.d.x, Struct_2(28083i, Struct_1(global0.b.e, global0.b.b, true, vec3<u32>(global0.b.d.x, 0u, 16012u), global0.b.c), 23884i, Struct_1(global0.b.c, vec4<i32>(-38614i, 10443i, 0i, u_input.e), false, vec3<u32>(28871u, global0.d.d.x, global0.b.d.x), true), u_input.e), Struct_2(0i, global0.b, global0.d.b.x, global0.b, u_input.d), global0.d), Struct_1(false, vec4<i32>(u_input.c, 57982i, 0i, -2147483647i), false, vec3<u32>(global0.d.d.x, 0u, global0.b.d.x), global0.d.c), Struct_2(1i, Struct_1(global0.d.a, vec4<i32>(u_input.c, 1i, u_input.e, u_input.d), true, vec3<u32>(36537u, global0.b.d.x, 1u), false), -5083i, Struct_1(global0.b.e, vec4<i32>(-26073i, 26240i, global0.c, u_input.d), global0.d.a, vec3<u32>(80412u, global0.b.d.x, u_input.a.x), true), global0.a)), global0.b.e));
    let var_1 = vec4<i32>(global0.c, _wgslsmith_dot_vec3_i32(abs(select(global0.b.b.wzw, _wgslsmith_mult_vec3_i32(vec3<i32>(-48587i, 27764i, global0.a), global0.b.b.zwx), true)), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-5111i, 45360i, global0.e), select(vec3<i32>(u_input.e, global0.a, global0.c), global0.d.b.wxw, vec3<bool>(var_0.x, global0.b.e, false)), vec3<i32>(global0.d.b.x, 9359i, u_input.d)))), -_wgslsmith_div_i32(2147483647i, u_input.c), -1i);
    var var_2 = ~max(abs(vec4<u32>(reverseBits(u_input.a.x), _wgslsmith_div_u32(u_input.b.x, 1u), global0.b.d.x, global0.b.d.x ^ u_input.a.x)), vec4<u32>(global0.d.d.x, 46957u, firstLeadingBit(1u) | u_input.b.x, ~(u_input.b.x ^ 4294967295u)));
    let var_3 = func_2();
    return u_input.d;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> u32 {
    let var_0 = arg_1;
    global0 = Struct_2(-31301i, func_2(), _wgslsmith_dot_vec2_i32(var_0.b.wz, min(func_2().b.wy, arg_0.wx)), arg_3.e, global0.a);
    global0 = Struct_2(~(~arg_3.c.e) << (36031u % 32u), global0.b, 18633i, arg_3.d.b, _wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(arg_3.c.d.b.x, 0i, global0.b.b.x))) | (max(vec3<i32>(-1i, var_0.b.x, 2147483647i), vec3<i32>(arg_1.b.x, 2147483647i, -53522i)) & -vec3<i32>(1i, u_input.e, arg_1.b.x)), ~(~_wgslsmith_div_vec3_i32(arg_0.xwx, vec3<i32>(arg_1.b.x, -2147483647i, -18221i)))));
    global1 = array<f32, 23>();
    let var_1 = arg_3;
    return _wgslsmith_mult_u32(23361u, _wgslsmith_add_u32(_wgslsmith_mod_u32(3656u, abs(var_0.d.x)), ~(var_1.c.b.d.x ^ var_1.e.d.x) & ~var_1.e.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(func_5(vec4<i32>(~(-3527i), _wgslsmith_mod_i32(0i, -1i), func_1(), u_input.e), Struct_1(global0.b.c, vec4<i32>(-1i ^ global0.b.b.x, 2200i, u_input.c, firstLeadingBit(-1i)), all(select(vec2<bool>(global0.d.c, false), vec2<bool>(true, false), true)), select(global0.b.d, _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.b.d.x, 4294967295u, global0.d.d.x), vec3<u32>(global0.d.d.x, u_input.b.x, 0u), vec3<u32>(global0.d.d.x, 0u, 25823u)), true), !(!global0.d.e)), ~func_2().b.x > _wgslsmith_dot_vec4_i32(global0.d.b, global0.b.b), Struct_3(-685i | (global0.d.b.x << (0u % 32u)), _wgslsmith_sub_u32(~1u, global0.d.d.x), Struct_2(-38799i, global0.d, _wgslsmith_dot_vec3_i32(global0.d.b.wzw, vec3<i32>(global0.a, u_input.c, global0.c)), Struct_1(global0.b.c, global0.b.b, true, u_input.b, false), 7286i), Struct_2(~(-6309i), global0.d, firstLeadingBit(-66065i), Struct_1(true, vec4<i32>(-2147483647i, global0.a, -1i, -42663i), false, vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x), true), global0.d.b.x), global0.d)) & _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.d.x, 96008u, 1u), _wgslsmith_add_vec3_u32(~abs(u_input.b), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(9916u, global0.b.d.x, 8585u), vec3<u32>(24587u, global0.d.d.x, 1u))))), 23u)];
    let var_1 = vec2<i32>(global0.d.b.x, 0i);
    let var_2 = Struct_3(abs(var_1.x), _wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_mod_u32(~(u_input.a.x >> (22613u % 32u)), global0.d.d.x), _wgslsmith_dot_vec2_u32(global0.d.d.xx >> (reverseBits(vec2<u32>(global0.b.d.x, 36230u)) % vec2<u32>(32u)), vec2<u32>(1u, global0.d.d.x))), Struct_2(-var_1.x, global0.b, -_wgslsmith_dot_vec3_i32(global0.d.b.zxx, ~global0.d.b.wwx), func_2(), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(u_input.c, 1i)), _wgslsmith_add_vec2_i32(~vec2<i32>(var_1.x, u_input.c), global0.d.b.xz))), Struct_2(~min(var_1.x, u_input.e), global0.d, _wgslsmith_mult_i32(-1i, 0i), func_2(), abs(min(-24731i, global0.c >> (u_input.b.x % 32u)))), Struct_1(true, ~global0.b.b ^ abs(global0.b.b), true, _wgslsmith_clamp_vec3_u32(global0.d.d, vec3<u32>(19305u, 4294967295u, global0.b.d.x) ^ vec3<u32>(0u, 4673u, u_input.b.x), ~vec3<u32>(73953u, 28587u, 12249u)), false));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~_wgslsmith_div_u32(33732u, 42456u)), _wgslsmith_mult_u32(reverseBits(global0.b.d.x), u_input.a.x)), 23u)];
    global0 = var_2.c;
    let var_4 = 742f;
    global0 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.d.x, global0.b.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(284f, -1137f))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-882f, global1[_wgslsmith_index_u32(u_input.b.x, 23u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_4)))))), 45092u | global0.d.d.x, -(~(-1i)));
}

