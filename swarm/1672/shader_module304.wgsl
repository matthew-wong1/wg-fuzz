struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2() -> f32 {
    let var_0 = countOneBits(-vec3<i32>(-24551i, countOneBits(_wgslsmith_add_i32(u_input.c, u_input.a.x)), u_input.b));
    let var_1 = _wgslsmith_f_op_f32(323f - _wgslsmith_f_op_f32(-111f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -126f)));
    var var_2 = ~vec4<u32>(~_wgslsmith_sub_u32(u_input.e, u_input.e), ~_wgslsmith_mod_u32(1u, u_input.e), ~65923u >> (~(~u_input.e) % 32u), ~((u_input.e << (u_input.e % 32u)) >> (~u_input.e % 32u)));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-981f - 541f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1327f * _wgslsmith_f_op_f32(-var_1)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), 265f));
    var_2 = vec4<u32>(0u, 1u, ~(~var_2.x) & _wgslsmith_mod_u32(~(~u_input.e), ~var_2.x), ~u_input.e & var_2.x);
    return 542f;
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_3) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -362f) + arg_2.a), global0.x)), arg_1, arg_2.c);
    let var_1 = select(-arg_2.b.x, arg_1.x, arg_0 >= ~4294967295u);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b) - _wgslsmith_f_op_f32(-879f * -404f))) - 1f), _wgslsmith_f_op_f32(var_0.a * var_0.c.b), var_0.c.d.x);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.c.d.wzx)) + var_2), var_2)) - vec3<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.a)) * _wgslsmith_div_f32(var_2.x, var_0.c.d.x)), _wgslsmith_f_op_f32(abs(-283f)))) * arg_2.c.d.wxx);
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), var_0.b & -arg_1, Struct_2(Struct_1(true), _wgslsmith_f_op_f32(-arg_2.c.b), vec3<u32>(4294967295u, 55441u, arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_0.c.d * arg_2.c.d), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(555f, 330f, global0.x, global0.x), var_0.c.d)))) + arg_2.c.d), arg_0));
    return 1i;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1677f - _wgslsmith_div_f32(global0.x, global0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1595f, -1000f) + _wgslsmith_f_op_f32(-global0.x))));
    global0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + 212f), _wgslsmith_div_f32(global0.x, 1789f));
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_mod_i32(u_input.a.x, u_input.d.x) | ((1i & u_input.c) ^ u_input.c), u_input.b, _wgslsmith_sub_i32(min(firstLeadingBit(u_input.d.x), u_input.c), 28862i)), min(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -16497i, u_input.b), vec3<i32>(u_input.b, u_input.d.x, -13650i)), -vec3<i32>(2147483647i, u_input.c, -2147483647i), vec3<i32>(u_input.b, u_input.c, u_input.d.x)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(7353i, -2147483647i, u_input.c), vec3<i32>(u_input.c, -4876i, u_input.a.x), vec3<i32>(0i, u_input.a.x, -2147483647i))), vec3<i32>(-37333i, -2147483647i, func_3(0u, _wgslsmith_mod_vec3_i32(vec3<i32>(10307i, -1i, -1168i), vec3<i32>(2147483647i, u_input.d.x, u_input.a.x)), Struct_3(145f, vec3<i32>(u_input.b, u_input.b, u_input.b), Struct_2(Struct_1(true), global0.x, vec3<u32>(u_input.e, u_input.e, u_input.e), vec4<f32>(-410f, global0.x, global0.x, global0.x), 0u))))));
    let var_2 = !(!vec4<bool>(true, false, select(true, false, true), select(global0.x <= global0.x, u_input.e == 11155u, any(vec2<bool>(true, true)))));
    var var_3 = Struct_2(Struct_1(var_2.x), _wgslsmith_f_op_f32(-global0.x), vec3<u32>(~(4294967295u << (u_input.e % 32u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, u_input.e), vec3<u32>(u_input.e, 4294967295u, u_input.e)), ~(~0u)) << (vec3<u32>(1u, _wgslsmith_sub_u32(40198u | u_input.e, min(u_input.e, u_input.e)), ~4294967295u) % vec3<u32>(32u)), vec4<f32>(1182f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) * 141f), -390f), _wgslsmith_clamp_u32(u_input.e << (u_input.e % 32u), ~u_input.e, 20642u));
    return ~1u;
}

fn func_4(arg_0: u32) -> Struct_3 {
    let var_0 = Struct_1(!(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x * 442f))) > _wgslsmith_f_op_f32(abs(global0.x))));
    let var_1 = Struct_1(var_0.a);
    var var_2 = true;
    let var_3 = abs(u_input.a.x);
    var_2 = var_0.a;
    return Struct_3(-1000f, vec3<i32>(var_3, ~var_3, abs(var_3)), Struct_2(Struct_1(var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), ~firstLeadingBit(countOneBits(vec3<u32>(63833u, 14242u, u_input.e))), vec4<f32>(113f, _wgslsmith_f_op_f32(-862f * _wgslsmith_f_op_f32(global0.x * 1052f)), global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x - global0.x)))), min(0u, _wgslsmith_mult_u32(u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 24254u, u_input.e, arg_0), vec4<u32>(42854u, 40852u, 1u, 4294967295u))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 1437f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1705f, arg_0.x)), _wgslsmith_f_op_f32(abs(arg_1.c.b)))), arg_0.x, -270f, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -166f)))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-524f, 1f));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1101f)))));
    var var_0 = select(vec2<bool>(true, !all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true))), vec2<bool>(true, true), true);
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(330f + 1949f), -247f, _wgslsmith_f_op_f32(floor(1449f)))))), func_4(~func_1()), select(select(!select(vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_0.x, true), vec3<bool>(false, var_0.x, var_0.x)), vec3<bool>(true, true, true), select(vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(true, var_0.x, true), 2147483647i == u_input.a.x)), !vec3<bool>(var_0.x, true, true), select(!select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, true, var_0.x), var_0.x), vec3<bool>(true, true, false), vec3<bool>(var_0.x, var_0.x, true))), select(!vec3<bool>(true, -1024f < global0.x, false), !vec3<bool>(var_0.x | true, all(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), true), all(vec2<bool>(var_0.x, true))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-841f - _wgslsmith_f_op_f32(-var_1.c.b)), var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(235f)) - _wgslsmith_f_op_f32(var_1.a - global0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.c.b, -3488f) - var_1.c.d.wzw) - _wgslsmith_f_op_vec3_f32(-var_1.c.d.wwx)))));
    global0 = var_1.c.d.yzy;
    let var_2 = abs(vec4<u32>(abs(_wgslsmith_add_u32(min(var_1.c.c.x, 1u), 50629u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(17445u, u_input.e, var_1.c.c.x, u_input.e) | (vec4<u32>(var_1.c.c.x, u_input.e, 1u, u_input.e) | vec4<u32>(1u, u_input.e, u_input.e, 1u)), ~(~vec4<u32>(var_1.c.c.x, u_input.e, u_input.e, var_1.c.e))), 64345u >> (~_wgslsmith_div_u32(1u, u_input.e) % 32u), 0u));
    let var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(1u, min(63698u, func_4(~u_input.e).c.c.x)), var_2.wz);
    let var_4 = ~u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(0u), -479f, vec4<i32>(1i, -_wgslsmith_mult_i32(-var_1.b.x, u_input.d.x), 1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.b.x, 0i, var_1.b.x, var_1.b.x) & (vec4<i32>(10933i, -1i, u_input.b, u_input.c) & vec4<i32>(1i, u_input.b, u_input.d.x, var_1.b.x)), vec4<i32>(-u_input.d.x, _wgslsmith_mult_i32(1i, var_1.b.x), firstLeadingBit(var_1.b.x), ~u_input.b))), func_1() ^ countOneBits(func_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(753f, 132f, var_1.c.d.x), vec3<f32>(-728f, -486f, 1638f), vec3<bool>(true, true, false))), var_1, vec3<bool>(var_0.x, var_1.c.a.a, var_1.c.a.a), vec3<bool>(var_1.c.a.a, false, var_1.c.a.a)).c.c.x));
}

