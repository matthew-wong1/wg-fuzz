struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 43544i;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(true, vec4<bool>(true, false, true, false), -621f, vec4<i32>(-9666i, i32(-2147483648), i32(-2147483648), -14874i)), Struct_1(true, vec4<bool>(true, true, true, false), -1000f, vec4<i32>(-15956i, 0i, i32(-2147483648), 18453i)), Struct_1(true, vec4<bool>(true, true, true, false), -252f, vec4<i32>(4718i, 37515i, -5641i, -1i)), Struct_1(true, vec4<bool>(false, true, true, true), 405f, vec4<i32>(1i, -3555i, 0i, 7838i)), Struct_1(true, vec4<bool>(false, false, false, true), -2337f, vec4<i32>(0i, -32908i, 12951i, -18313i)), Struct_1(false, vec4<bool>(true, true, true, true), -1927f, vec4<i32>(-1i, -2145i, 203i, 2147483647i)), Struct_1(false, vec4<bool>(false, true, false, false), -874f, vec4<i32>(0i, -1i, 46716i, 23383i)), Struct_1(true, vec4<bool>(false, true, true, false), 1000f, vec4<i32>(-1571i, 1i, 37040i, 91326i)), Struct_1(true, vec4<bool>(true, true, false, false), -670f, vec4<i32>(-1i, i32(-2147483648), -55349i, 12227i)), Struct_1(true, vec4<bool>(false, false, true, true), 119f, vec4<i32>(-1i, 0i, -61949i, -4767i)), Struct_1(false, vec4<bool>(false, true, false, false), -631f, vec4<i32>(1i, 0i, i32(-2147483648), -1i)), Struct_1(true, vec4<bool>(true, true, true, true), -738f, vec4<i32>(-16018i, -54986i, -28152i, 2147483647i)), Struct_1(true, vec4<bool>(true, false, true, false), 759f, vec4<i32>(1i, 1i, -41992i, -79416i)), Struct_1(true, vec4<bool>(false, false, true, false), -809f, vec4<i32>(i32(-2147483648), -1i, -36710i, 0i)), Struct_1(true, vec4<bool>(true, true, true, true), 1360f, vec4<i32>(1i, -20385i, -30173i, 2147483647i)), Struct_1(false, vec4<bool>(false, true, true, false), -1120f, vec4<i32>(2147483647i, i32(-2147483648), 1i, i32(-2147483648))), Struct_1(false, vec4<bool>(false, true, true, false), 218f, vec4<i32>(i32(-2147483648), 0i, -24281i, 1i)), Struct_1(false, vec4<bool>(true, true, false, true), -297f, vec4<i32>(-1i, i32(-2147483648), -3358i, -37836i)), Struct_1(true, vec4<bool>(true, true, false, false), -400f, vec4<i32>(0i, 71858i, -6023i, -22555i)), Struct_1(true, vec4<bool>(false, true, true, false), 1331f, vec4<i32>(-43465i, i32(-2147483648), 11137i, -1i)), Struct_1(true, vec4<bool>(false, true, false, true), -1000f, vec4<i32>(-98676i, 16040i, -4384i, -12186i)), Struct_1(true, vec4<bool>(false, true, false, false), -1000f, vec4<i32>(-1i, i32(-2147483648), 2147483647i, 25638i)), Struct_1(false, vec4<bool>(false, false, true, false), 2098f, vec4<i32>(1i, 0i, 0i, -1i)), Struct_1(false, vec4<bool>(true, false, false, false), 146f, vec4<i32>(-1i, 1i, -23958i, 20340i)), Struct_1(false, vec4<bool>(false, true, true, true), 326f, vec4<i32>(0i, -1i, 0i, -20999i)), Struct_1(true, vec4<bool>(false, true, false, true), -860f, vec4<i32>(23326i, 56820i, 2147483647i, i32(-2147483648))), Struct_1(true, vec4<bool>(false, false, false, true), -1309f, vec4<i32>(-7409i, 8171i, -16863i, 0i)));

var<private> global2: Struct_1;

var<private> global3: i32;

var<private> global4: vec4<f32> = vec4<f32>(993f, -225f, 513f, 1000f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    global0 = global2.d.x;
    return vec4<bool>(global2.a, all(global2.b), any(!global2.b.wz), global2.a);
}

fn func_2() -> Struct_1 {
    let var_0 = global2.d.x;
    var var_1 = global4.zz;
    global2 = Struct_1(!(!select(!global2.a, !global2.b.x, !global2.b.x)), func_3(), -2222f, -_wgslsmith_mod_vec4_i32(~vec4<i32>(1i, -3736i, 195i, u_input.c), global2.d));
    global2 = Struct_1(true, select(func_3(), vec4<bool>(false, !(u_input.a < 0u), !(global2.a | global2.a), true), all(func_3().yww)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-251f, -1612f)))), vec4<i32>(reverseBits(~_wgslsmith_clamp_i32(global2.d.x, u_input.b.x, -1i)), 16416i, global2.d.x, -22368i));
    let var_2 = !global2.b;
    return Struct_1(global2.b.x, !select(vec4<bool>(var_2.x, func_3().x, global2.b.x, var_2.x && false), var_2, func_3()), 169f, vec4<i32>(1i, _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.d.x, -38910i), vec2<i32>(-2147483647i, 32794i))), u_input.b.x), ~(-u_input.b.x), ~(-global2.d.x)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>) -> i32 {
    let var_0 = func_2();
    let var_1 = global2.b.x;
    var var_2 = Struct_1(true, select(vec4<bool>(!any(var_0.b.zw), _wgslsmith_f_op_f32(trunc(var_0.c)) >= var_0.c, false, any(global2.b)), vec4<bool>(var_0.b.x, global2.a, var_0.b.x, !(1u >= arg_0.x)), global2.b), global2.c, -u_input.d);
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(30189u, arg_0.x), 27u)];
    var var_3 = global4.x > _wgslsmith_f_op_f32(ceil(arg_1.x));
    return -3541i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(u_input.d.zx);
    let var_1 = 24986i;
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(countOneBits(func_1(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 598u, u_input.e, u_input.a), vec4<u32>(48111u, u_input.a, u_input.e, u_input.e)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.x, global4.x, global4.x, global4.x), vec4<f32>(424f, global2.c, -989f, global4.x))))), var_0.x, _wgslsmith_dot_vec3_i32(~firstTrailingBit(u_input.d.xwz), _wgslsmith_add_vec3_i32(vec3<i32>(var_1, 58277i, u_input.c) >> (vec3<u32>(u_input.e, u_input.a, 53333u) % vec3<u32>(32u)), global2.d.wyx))), 46763i, _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(14035i, global2.d.x)), _wgslsmith_dot_vec4_i32(u_input.d, ~vec4<i32>(-1i, -2147483647i, -13186i, var_0.x))), u_input.d.ww));
    let var_3 = u_input.a;
    global0 = _wgslsmith_mod_i32(var_0.x, func_2().d.x);
    global1 = array<Struct_1, 27>();
    var_2 = abs(_wgslsmith_div_vec3_i32(vec3<i32>(-61522i, global2.d.x, abs(0i)), global2.d.xzx));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1789f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-665f - global2.c))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) - _wgslsmith_f_op_f32(select(global2.c, _wgslsmith_f_op_f32(global4.x * -252f), global2.b.x)))), firstTrailingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_3, 20331u), ~vec2<u32>(1648u, var_3))) & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 66736u, 1u, 1u), ~vec4<u32>(var_3, 54831u, 4294967295u, u_input.e)), var_3), -1301f);
}

