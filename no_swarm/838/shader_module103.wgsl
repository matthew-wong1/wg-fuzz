struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(-1i, -29929i, -1i, 46572i, 19566i, 4829i, -22226i, 2147483647i, 1i, -1i, 14519i);

var<private> global1: i32;

var<private> global2: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(-1142i, -4854i), vec2<i32>(-31286i, 13346i), vec2<i32>(1i, -74067i), vec2<i32>(0i, 31354i), vec2<i32>(1i, 0i), vec2<i32>(29805i, -1i), vec2<i32>(-14705i, -7795i), vec2<i32>(2147483647i, -9407i), vec2<i32>(2147483647i, -54031i), vec2<i32>(-1603i, 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(25072i, -1i), vec2<i32>(-8025i, -1295i), vec2<i32>(2147483647i, 1i), vec2<i32>(-30673i, -26450i), vec2<i32>(-1i, 60088i), vec2<i32>(0i, -42916i));

var<private> global3: Struct_1;

var<private> global4: array<vec3<f32>, 24>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32) -> u32 {
    global4 = array<vec3<f32>, 24>();
    let var_0 = Struct_4(~firstTrailingBit(reverseBits(vec3<u32>(arg_1.a.x, arg_1.a.x, arg_0.a.x))) >> (select(abs(abs(vec3<u32>(61249u, arg_0.a.x, 21621u))), (arg_0.a >> (vec3<u32>(global3.b.x, 6737u, arg_2) % vec3<u32>(32u))) | firstLeadingBit(vec3<u32>(4294967295u, arg_0.a.x, arg_0.a.x)), false) % vec3<u32>(32u)));
    var var_1 = u_input.e;
    var var_2 = -(vec2<i32>(-1i) * -(-vec2<i32>(18202i, 2147483647i) & select(vec2<i32>(global0[_wgslsmith_index_u32(global3.b.x, 11u)], global0[_wgslsmith_index_u32(u_input.d.x, 11u)]), vec2<i32>(-1i, u_input.e.x), true)));
    global2 = array<vec2<i32>, 18>();
    return firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~arg_1.a, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.a.x, 0u, u_input.c.x), select(vec3<u32>(var_0.a.x, 0u, 43857u), arg_0.a, false))), ~(var_0.a.x ^ select(u_input.c.x, 1u, false)), u_input.c.x));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = firstLeadingBit(_wgslsmith_sub_u32(u_input.c.x, func_3(Struct_4(~vec3<u32>(4294967295u, global3.b.x, 9754u)), Struct_4(~u_input.d.xyy), _wgslsmith_sub_u32(reverseBits(20325u), global3.b.x))));
    let var_1 = select(true, true, true);
    global2 = array<vec2<i32>, 18>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(global3.a + global3.c), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, countOneBits(u_input.b.x), u_input.c.x), vec4<u32>(reverseBits(u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, 0u), ~u_input.d.x, 28596u)), ~global3.b, max(u_input.d, vec4<u32>(55785u, min(40957u, global3.b.x), global3.b.x, 24362u))), -1634f);
    let var_3 = Struct_2(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(99366u, var_2.b.x, var_2.b.x), var_2.b.x, select(global3.b.x, 24970u, var_1), max(global3.b.x, 65305u)), u_input.d)));
    return Struct_1(-690f, _wgslsmith_div_vec4_u32(max(_wgslsmith_mult_vec4_u32(vec4<u32>(44505u, var_2.b.x, var_3.a, 20862u), u_input.d) | _wgslsmith_mult_vec4_u32(vec4<u32>(47700u, var_2.b.x, global3.b.x, global3.b.x), vec4<u32>(var_3.a, global3.b.x, 53686u, u_input.d.x)), abs(vec4<u32>(13057u, 1u, u_input.b.x, 0u) | global3.b)), ~vec4<u32>(_wgslsmith_mult_u32(0u, 1u), global3.b.x << (1u % 32u), ~var_2.b.x, ~global3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_0.x)))), _wgslsmith_f_op_f32(sign(-1000f)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1635f, global3.c, 1507f, 557f), vec4<f32>(558f, -713f, 535f, 1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c, 1855f, arg_0.c, global3.a), vec4<f32>(arg_0.a, 495f, arg_0.a, 304f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1355f, global3.c, global3.a, global3.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_0.a, 747f, 447f) - vec4<f32>(global3.c, 891f, -128f, -640f))))));
    let var_1 = Struct_5(Struct_3(u_input.c | var_0.b.wy, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), all(vec4<bool>(false, true, true, false))), false), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a * global3.a), _wgslsmith_f_op_f32(-arg_0.a))), firstTrailingBit(vec4<u32>(93682u, var_0.b.x, var_0.b.x, global3.b.x)), var_0.c), vec4<i32>(~global0[_wgslsmith_index_u32(var_0.b.x, 11u)], -2147483647i, abs(12144i), max(-23079i, -9688i))), Struct_3(max(_wgslsmith_add_vec2_u32(global3.b.zx << (vec2<u32>(u_input.c.x, global3.b.x) % vec2<u32>(32u)), min(var_0.b.xy, vec2<u32>(global3.b.x, 0u))), var_0.b.wx), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))), var_0, vec4<i32>(arg_1.x, -12226i, ~global0[_wgslsmith_index_u32(global3.b.x, 11u)], u_input.e.x) | ~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.e.x, 2849i, u_input.e.x), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(u_input.b.x, 11u)], global0[_wgslsmith_index_u32(global3.b.x, 11u)], -17540i))), 26923u);
    let var_2 = select(var_1.a.b.yw, !vec2<bool>(false, var_1.a.b.x), var_1.a.b.yx);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-296f, -671f, -1000f, 1448f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(347f, -1239f, 666f, 888f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, global3.a, 321f, var_0.c)))) * vec4<f32>(1004f, _wgslsmith_f_op_f32(-var_1.a.c.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_0.c)))), 112f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 1000f, -1922f, var_0.c)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(556f * -1079f)), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(min(574f, var_1.b.c.a))), 1213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.c.c - arg_0.c)))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(1633f)), _wgslsmith_f_op_f32(-var_1.a.c.c))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.xy * var_3.yw), vec2<f32>(446f, 1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_1.a.c.a)))), vec2<bool>(select(true, false, var_2.x), true))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.c.c + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global3.c, var_0.c, true)))))), var_1.a.c.b, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(global3.a, u_input.d | vec4<u32>(global3.b.x, u_input.b.x, ~(~13044u), ~_wgslsmith_mult_u32(u_input.d.x, 0u)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -133f), global3.a))))));
    global3 = func_1(Struct_1(-1148f, global3.b, global3.a), -u_input.a);
    global1 = ~u_input.e.x;
    global3 = Struct_1(655f, u_input.d, _wgslsmith_f_op_f32(-global3.c));
    var var_0 = func_1(func_1(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global3.c)), _wgslsmith_f_op_f32(abs(-1219f))), _wgslsmith_sub_vec4_u32(global3.b, _wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, global3.b.x), vec4<u32>(4294967295u, u_input.d.x, u_input.b.x, 1u))), global3.c), global2[_wgslsmith_index_u32(u_input.c.x, 18u)]), abs(firstLeadingBit(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.c.x, 18u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global3.b.x, ~func_2(vec4<f32>(-401f, -563f, -1405f, -520f)).b.x), abs((u_input.d.x | 0u) >> (_wgslsmith_add_u32(39904u, 1u) % 32u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(202f, var_0.a, 952f)))) - vec3<f32>(func_1(Struct_1(1466f, u_input.d, -394f), vec2<i32>(global0[_wgslsmith_index_u32(63756u, 11u)], global0[_wgslsmith_index_u32(u_input.c.x, 11u)])).c, global3.c, _wgslsmith_f_op_f32(floor(1000f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(250f, -2046f)), _wgslsmith_f_op_f32(f32(-1f) * -896f), _wgslsmith_f_op_f32(select(627f, _wgslsmith_f_op_f32(-global3.a), true)))), 1u, vec2<f32>(_wgslsmith_f_op_f32(global3.c * _wgslsmith_f_op_f32(step(1670f, _wgslsmith_f_op_f32(1561f * -375f)))), -2499f), global3.b);
}

