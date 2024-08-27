struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<bool>(true, false, false), Struct_1(vec2<bool>(true, true), vec4<f32>(-2218f, 575f, 3442f, 401f), true, -1000f, -56870i), Struct_2(Struct_1(vec2<bool>(false, true), vec4<f32>(1721f, 304f, 1235f, 584f), false, -2019f, 18066i), false, -41550i, Struct_1(vec2<bool>(false, true), vec4<f32>(-822f, 192f, -1155f, -837f), true, 1635f, 17316i)), -32941i, vec4<f32>(2087f, 1000f, 578f, -319f));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, true), vec4<f32>(1000f, -1058f, -457f, 1330f), false, -618f, -31657i), true, 1i, Struct_1(vec2<bool>(false, false), vec4<f32>(193f, 542f, 1434f, -990f), false, 211f, 0i));

var<private> global2: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global3: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = Struct_2(global0.c.a, !(~_wgslsmith_clamp_u32(40570u, 1u, global2.x) > 29622u), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(abs(abs(global0.c.a.e)), -1i, 0i)), Struct_1(!(!select(vec2<bool>(true, true), vec2<bool>(global0.b.c, global1.a.a.x), true)), _wgslsmith_f_op_vec4_f32(global1.a.b - global0.c.d.b), any(vec3<bool>(any(vec4<bool>(global1.b, true, false, arg_0.a.b)), true, true)), _wgslsmith_f_op_f32(sign(arg_0.a.a.b.x)), u_input.a.x));
    global3 = all(vec2<bool>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1001f * global0.b.b.x) - 1071f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(334f - global0.b.d))));
    var var_1 = Struct_3(Struct_2(arg_0.a.d, any(!vec3<bool>(arg_0.a.d.a.x, true, false)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.a.e, 2147483647i) << (firstLeadingBit(0u) % 32u), -global1.d.e), Struct_1(global1.d.a, vec4<f32>(global0.c.d.b.x, global0.c.d.b.x, _wgslsmith_f_op_f32(-arg_0.a.a.b.x), _wgslsmith_f_op_f32(max(arg_0.a.a.b.x, arg_0.a.a.d))), all(vec4<bool>(var_0.a.a.x, global0.a.x, global0.c.a.a.x, global1.d.a.x)) && select(var_0.d.c, false, false), _wgslsmith_f_op_f32(min(699f, _wgslsmith_f_op_f32(sign(arg_0.a.d.b.x)))), global0.b.e)));
    var var_2 = ~select(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0.b.e) << (_wgslsmith_sub_vec2_u32(vec2<u32>(63467u, 36399u), vec2<u32>(global2.x, 38209u)) % vec2<u32>(32u)), min(firstLeadingBit(vec2<i32>(u_input.a.x, -616i)), u_input.a.yx >> (vec2<u32>(global2.x, 1u) % vec2<u32>(32u)))), 75781i, (~global2.x | (global2.x & global2.x)) != ~global2.x);
    let var_3 = Struct_4(select(vec3<bool>(var_1.a.a.a.x, false, all(!vec4<bool>(var_1.a.b, false, var_1.a.d.c, global1.d.c))), !vec3<bool>(false, u_input.a.x <= var_0.c, global0.c.d.c), !(var_0.a.d == _wgslsmith_f_op_f32(sign(arg_0.a.d.b.x)))), var_0.a, Struct_2(Struct_1(vec2<bool>(var_1.a.a.e == u_input.a.x, arg_0.a.d.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.d, var_0.d.d, global0.c.d.d, 326f))), global1.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1519f + 498f)), u_input.a.x), global0.a.x, 0i, global1.d), -1234i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a.b) - _wgslsmith_f_op_vec4_f32(-var_0.d.b)));
    return -arg_0.a.d.e;
}

fn func_2(arg_0: vec3<f32>) -> vec4<f32> {
    var var_0 = global0.c;
    let var_1 = select(~(~(~(~vec3<i32>(41899i, global1.a.e, 12753i)))), reverseBits(u_input.a & _wgslsmith_add_vec3_i32(u_input.a, u_input.a)) ^ _wgslsmith_div_vec3_i32(u_input.a, _wgslsmith_add_vec3_i32(vec3<i32>(12424i, u_input.a.x, u_input.a.x) << (vec3<u32>(global2.x, 4294967295u, global2.x) % vec3<u32>(32u)), -u_input.a)), global0.a);
    global2 = vec2<u32>(global2.x, global2.x);
    var var_2 = ~func_3(Struct_3(Struct_2(global0.b, false, global1.a.e, Struct_1(vec2<bool>(true, true), global0.c.a.b, var_0.d.a.x, -1369f, var_1.x)))) == _wgslsmith_dot_vec2_i32(u_input.a.xx, _wgslsmith_add_vec2_i32(abs(u_input.a.xx), ~vec2<i32>(var_1.x, var_0.d.e) & var_1.zy));
    var var_3 = !var_0.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.d.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b.b * vec4<f32>(global0.b.d, global1.a.d, -990f, global1.d.d)) * _wgslsmith_f_op_vec4_f32(-global1.a.b)))));
}

fn func_1() -> Struct_4 {
    global0 = Struct_4(global0.a, Struct_1(select(!global1.d.a, vec2<bool>(global1.d.a.x, !global0.a.x), vec2<bool>(global2.x == global2.x, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.d, -418f, -1000f) - global1.d.b.zwx))), vec4<f32>(_wgslsmith_div_f32(223f, global0.b.b.x), 876f, _wgslsmith_div_f32(649f, global1.a.d), _wgslsmith_f_op_f32(-global1.a.d)), any(!vec4<bool>(global1.a.a.x, global1.b, global1.b, false)))), global0.a.x, global0.b.d, select((-48337i ^ global1.c) ^ u_input.a.x, -24998i, global0.c.a.a.x)), Struct_2(Struct_1(!vec2<bool>(global0.b.a.x, false), _wgslsmith_f_op_vec4_f32(trunc(global0.e)), global1.a.a.x, -528f, -26339i), global0.c.d.a.x, func_3(Struct_3(Struct_2(Struct_1(vec2<bool>(global0.b.a.x, true), global0.e, true, global1.a.d, -22168i), false, 2147483647i, Struct_1(vec2<bool>(false, false), vec4<f32>(global0.b.d, -788f, 1276f, global1.d.d), false, -549f, 1i)))), global1.d), i32(-1i) * -2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1.d.b * global0.c.a.b), vec4<f32>(global0.c.d.b.x, global1.a.d, -1000f, global0.b.d), select(vec4<bool>(global1.a.c, true, true, global1.b), vec4<bool>(true, global1.a.c, global0.a.x, false), global1.d.c))), _wgslsmith_f_op_vec4_f32(floor(global1.d.b))))));
    global0 = Struct_4(vec3<bool>(false || any(select(global0.a, vec3<bool>(global1.a.c, global0.a.x, global0.b.a.x), global0.a)), global0.c.a.a.x, true), global0.b, global0.c, i32(-1i) * -1i, _wgslsmith_f_op_vec4_f32(-global0.b.b));
    let var_0 = ~vec3<u32>(global2.x, global2.x ^ global2.x, 6314u);
    let var_1 = vec2<u32>(~var_0.x, min(var_0.x, 1u));
    var var_2 = false;
    return Struct_4(vec3<bool>(countOneBits(u_input.a.x) == ((global0.d & -67770i) | 1i), select(!(false & global0.b.a.x), global1.d.c, all(vec4<bool>(true, false, true, true))), !(!global0.a.x | true)), global0.b, Struct_2(global0.b, true, _wgslsmith_div_i32(~u_input.a.x, ~min(global0.d, -1i)), global0.b), global0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global1.d.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = !(!(_wgslsmith_mult_i32(-30423i, 46893i) <= ~global0.c.c) || global1.a.c);
    global2 = select(vec2<u32>(~select(global2.x, 0u, false) & firstLeadingBit(global2.x), global2.x), _wgslsmith_sub_vec2_u32(reverseBits(~(~vec2<u32>(32958u, 4294967295u))), ~(vec2<u32>(global2.x, global2.x) ^ vec2<u32>(0u, 1u))), vec2<bool>(true, true));
    var_1 = select(13639i == var_0.b.e, !any(select(!var_0.c.d.a, select(global1.a.a, var_0.c.a.a, false), global0.a.x)), var_0.b.a.x);
    var_1 = !global0.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.d.b.x)) * global0.c.a.d), ~66751u, select(0u, ~19987u, all(!select(vec4<bool>(var_0.b.c, true, false, global0.b.a.x), vec4<bool>(false, false, true, true), false))), _wgslsmith_f_op_vec3_f32(trunc(var_0.c.a.b.yyx)), ~vec3<u32>(max(45805u, 1u), 4294967295u, _wgslsmith_add_u32(0u, global2.x)) | vec3<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, 23390u), vec4<u32>(12048u, global2.x, 4294967295u, 1u)), 41537u), (30218u & global2.x) & _wgslsmith_div_u32(5906u, 28218u)));
}

