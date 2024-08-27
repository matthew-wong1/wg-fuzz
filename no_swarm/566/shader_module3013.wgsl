struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global1: array<vec2<f32>, 5>;

var<private> global2: vec2<u32> = vec2<u32>(59559u, 1u);

var<private> global3: Struct_1 = Struct_1(456f, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = ~1u;
    var var_1 = arg_1.a.x;
    let var_2 = !vec4<bool>(arg_1.b.b, arg_0.a != arg_1.c.x, global3.b, u_input.c.x >= (var_0 | ~u_input.c.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.c));
    var_1 = reverseBits(-reverseBits(arg_1.a.x));
    return firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~max(vec4<u32>(u_input.c.x, 0u, 53906u, 35081u), vec4<u32>(global2.x, u_input.c.x, var_0, global2.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(6511u, 1465u, global2.x, global2.x), vec4<u32>(57396u, global2.x, 126603u, u_input.d.x) << (vec4<u32>(15725u, var_0, global2.x, 13078u) % vec4<u32>(32u)))), ~vec4<u32>(global2.x, 66704u, ~u_input.b.x, ~var_0), firstLeadingBit(~countOneBits(vec4<u32>(0u, 56034u, 6833u, 4294967295u)))));
}

fn func_2() -> Struct_2 {
    var var_0 = ~vec4<i32>(-_wgslsmith_add_i32(-2147483647i, -1i), abs(u_input.a.x), 0i, u_input.a.x) << (countOneBits(min(func_3(Struct_1(global3.a, global3.b), Struct_2(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), Struct_1(global3.a, global3.b), vec3<f32>(-182f, global3.a, 475f))), ~vec4<u32>(7657u, global2.x, 0u, 4294967295u)) ^ (~vec4<u32>(9134u, 0u, 72389u, u_input.b.x) | _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 4294967295u), vec4<u32>(global2.x, u_input.c.x, 48101u, 0u)))) % vec4<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)))), false);
    let var_2 = global2.x;
    var var_3 = 0i;
    let var_4 = Struct_4(var_1, Struct_3(Struct_2(var_0.yxy, Struct_1(-326f, any(vec4<bool>(false, global3.b, true, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(247f, -573f, global3.a))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1273f, global3.a, -816f), vec3<f32>(386f, -1854f, global3.a))))), Struct_1(_wgslsmith_f_op_f32(-global3.a), false), !vec4<bool>(!global3.b, var_1.b && var_1.b, all(vec3<bool>(true, false, var_1.b)), true), var_1, Struct_1(var_1.a, var_1.b)), select(vec3<u32>(81871u, ~_wgslsmith_mult_u32(global2.x, global2.x), global2.x), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 0u, u_input.b.x) | vec3<u32>(global2.x, u_input.c.x, u_input.d.x), vec3<u32>(u_input.c.x, global2.x, 4294967295u)), reverseBits(select(vec3<u32>(31810u, 39679u, 4294967295u), vec3<u32>(u_input.b.x, u_input.d.x, 4294967295u), true))), (_wgslsmith_f_op_f32(global3.a * global3.a) != global3.a) == !global3.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.a, -422f, var_1.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(574f, global3.a, 116f) - vec3<f32>(-1000f, global3.a, var_1.a)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1332f, global3.a, var_1.a), vec3<f32>(var_1.a, -794f, 896f)))), any(!vec2<bool>(global3.b, var_1.b))))));
    return var_4.b.a;
}

fn func_1(arg_0: Struct_2) -> i32 {
    global2 = u_input.c;
    var var_0 = firstTrailingBit(~(_wgslsmith_sub_vec3_i32(abs(arg_0.a), u_input.e.wyy) >> (~abs(vec3<u32>(u_input.b.x, global2.x, global2.x)) % vec3<u32>(32u))));
    var var_1 = -2098f;
    var var_2 = func_2();
    return -1i ^ (firstTrailingBit(var_0.x) << (global2.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~(~(~firstTrailingBit(vec3<u32>(65777u, 0u, 4294967295u)))), _wgslsmith_div_vec3_u32(vec3<u32>(36473u, 8911u, 0u), ~vec3<u32>(global2.x, u_input.c.x, global2.x)));
    let var_1 = firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.a.x, select(func_1(Struct_2(vec3<i32>(2147483647i, u_input.e.x, u_input.e.x), Struct_1(-1922f, global3.b), vec3<f32>(1126f, global3.a, global3.a))), min(-32496i, u_input.a.x), global3.b), _wgslsmith_sub_i32(u_input.a.x, -17655i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(44206u, 1u, 143341u, 0u), vec4<u32>(var_0.x, global2.x, 1u, var_0.x)) % 32u)), u_input.e));
    global3 = Struct_1(1000f, global3.b);
    var var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~func_3(Struct_1(260f, global3.b), Struct_2(u_input.e.zyw, Struct_1(global3.a, true), vec3<f32>(-1136f, -315f, global3.a))).wx, vec2<u32>(var_0.x, 64234u) >> (vec2<u32>(var_0.x, global2.x) % vec2<u32>(32u))) ^ ~var_0.xy, u_input.c, _wgslsmith_div_vec2_u32(func_3(func_2().b, func_2()).yz, ~(~vec2<u32>(u_input.b.x, 0u))));
    global3 = Struct_1(global3.a, all(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_2.x, _wgslsmith_mod_u32(66267u, 4473u)) & var_2.x, 24u)]));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a, global3.a, global3.a) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.a, global3.a, -1317f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, global3.a, 854f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(1086f, global3.a)), var_3.x) - _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(87925u, 5u)] - _wgslsmith_div_vec2_f32(vec2<f32>(363f, 475f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, global3.a))))), var_3.x, ~_wgslsmith_mult_u32(0u, var_2.x));
}

