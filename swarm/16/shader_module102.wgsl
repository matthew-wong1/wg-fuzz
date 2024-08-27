struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(70107u, vec3<u32>(0u, 1u, 4294967295u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> vec3<u32> {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(449f, 1197f, arg_3.d, 414f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.d, 130f, -1818f, 797f), vec4<f32>(arg_3.d, -869f, 122f, arg_3.d), vec4<bool>(false, true, arg_1, arg_1))))))));
    global1 = arg_3.a;
    global0 = Struct_1(~131339u, ~global0.b);
    return _wgslsmith_div_vec3_u32(min(firstTrailingBit(~(global0.b & arg_2.b)), select(~_wgslsmith_clamp_vec3_u32(global0.b, u_input.c.yzy, global0.b), _wgslsmith_add_vec3_u32(select(global1.b, global1.b, true), min(u_input.c.wyw, global0.b)), _wgslsmith_f_op_f32(trunc(arg_3.d)) != var_1.x)), ~countOneBits(abs(u_input.c.www << (global1.b % vec3<u32>(32u)))));
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(firstTrailingBit(u_input.a), ~(~(global1.b & func_3(true, true, Struct_1(57430u, global0.b), Struct_3(Struct_1(4294967295u, vec3<u32>(global0.b.x, 76271u, global1.a)), -70465i, Struct_2(Struct_1(global1.a, global0.b), Struct_1(u_input.c.x, global1.b), 2147483647i, vec4<i32>(-1i, 1i, 20735i, u_input.b), u_input.d), 1344f)))));
    let var_0 = vec2<i32>(-20390i, 2147483647i);
    var var_1 = !select(vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), true), vec4<bool>(true, true, true, true));
    global0 = Struct_1(~(~_wgslsmith_mod_u32(global0.b.x, global0.a)) ^ u_input.c.x, firstTrailingBit(abs(countOneBits(_wgslsmith_sub_vec3_u32(global1.b, vec3<u32>(9097u, u_input.a, global0.b.x))))));
    global0 = Struct_1(firstLeadingBit(abs(_wgslsmith_mod_u32(global0.b.x, 25199u) | 0u)), ~global1.b);
    return Struct_1(abs(func_3(all(vec3<bool>(var_1.x, false, var_1.x)), true, Struct_1(_wgslsmith_dot_vec3_u32(global1.b, global1.b), vec3<u32>(1u, u_input.c.x, global1.b.x)), Struct_3(Struct_1(u_input.c.x, vec3<u32>(global0.b.x, global1.a, 4294967295u)), 1i, Struct_2(Struct_1(global1.b.x, vec3<u32>(global1.b.x, u_input.a, global0.a)), Struct_1(u_input.c.x, global1.b), -42386i, vec4<i32>(var_0.x, var_0.x, 2147483647i, u_input.b), vec2<i32>(-1983i, var_0.x)), _wgslsmith_f_op_f32(round(857f)))).x), _wgslsmith_mult_vec3_u32(min(~(vec3<u32>(u_input.c.x, global0.a, u_input.a) | global0.b), u_input.c.zxy), vec3<u32>(~(~global0.a), 54074u, u_input.a)));
}

fn func_1() -> u32 {
    global0 = func_2();
    global1 = Struct_1(_wgslsmith_clamp_u32(~(~_wgslsmith_div_u32(global0.b.x, 0u)), abs(countOneBits(select(u_input.a, u_input.a, false))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a, abs(global0.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(75810u, u_input.a), u_input.c.wx) | ~u_input.c.x)), u_input.c.xzz);
    let var_0 = Struct_1(~_wgslsmith_clamp_u32(~(~4294967295u), global1.a, 4947u), vec3<u32>(~global1.b.x, ~0u, global0.b.x));
    let var_1 = Struct_1(~(~(_wgslsmith_dot_vec2_u32(u_input.c.yw, u_input.c.wy) ^ ~u_input.a)), vec3<u32>(4294967295u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(80665u, 4294967295u), var_0.b.yx)), _wgslsmith_add_u32(0u, ~47435u)));
    global0 = var_1;
    return 4294967295u >> ((countOneBits(abs(global1.b.x) | ~76601u) >> (var_0.a % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_add_u32(func_1(), u_input.a), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u >> (global1.b.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 6355u), u_input.c.zw), global0.b.x), _wgslsmith_clamp_vec3_u32(func_2().b, ~vec3<u32>(15019u, u_input.a, 4294967295u), func_3(true, true, Struct_1(6104u, vec3<u32>(u_input.c.x, 1u, global0.a)), Struct_3(Struct_1(global0.b.x, vec3<u32>(u_input.c.x, 61319u, global1.a)), 1i, Struct_2(Struct_1(0u, vec3<u32>(45227u, u_input.a, global1.a)), Struct_1(4294967295u, vec3<u32>(u_input.a, u_input.a, global1.a)), u_input.b, vec4<i32>(u_input.b, 2147483647i, 0i, u_input.b), u_input.d), 446f)))), global0.b));
    global0 = func_2();
    var var_0 = Struct_2(func_2(), func_2(), _wgslsmith_mod_i32(_wgslsmith_add_i32(19945i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b, u_input.d.x), -vec3<i32>(-1i, u_input.b, u_input.d.x))), ~(-1i)), countOneBits(abs(vec4<i32>(i32(-1i) * -27714i, u_input.b, select(u_input.d.x, -51412i, false), u_input.b))), abs(u_input.d));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(187f * -1286f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(297f * _wgslsmith_f_op_f32(sign(1856f))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-630f + _wgslsmith_f_op_f32(abs(1172f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(693f + 275f)), _wgslsmith_f_op_f32(f32(-1f) * -454f)))));
    var var_3 = countOneBits(_wgslsmith_sub_vec3_u32(min(var_0.b.b, ~abs(global1.b)), ~vec3<u32>(global0.a, u_input.c.x, _wgslsmith_div_u32(4294967295u, 91837u))));
    global1 = var_0.a;
    var var_4 = Struct_3(Struct_1(u_input.c.x, vec3<u32>(u_input.c.x, firstTrailingBit(firstTrailingBit(global1.a)), ~0u)), ~(-u_input.d.x & _wgslsmith_add_i32(u_input.d.x, 1i)), Struct_2(func_2(), func_2(), max(-2147483647i, 6820i), vec4<i32>(-50724i, -26342i, abs(max(-25097i, 42022i)), -1i), max(-vec2<i32>(u_input.d.x, u_input.b), ~u_input.d)), _wgslsmith_f_op_f32(f32(-1f) * -168f));
    let var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.d, 155f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-725f, -1388f) - vec2<f32>(732f, -2095f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_4.d)) * var_4.d), _wgslsmith_f_op_f32(select(var_4.d, _wgslsmith_f_op_f32(max(var_4.d, 512f)), any(vec4<bool>(true, true, false, true))))), all(vec2<bool>(true, false)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.d * 553f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.d))), _wgslsmith_f_op_f32(182f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_4.d - -1000f), var_4.d, var_4.d > -677f))), _wgslsmith_f_op_f32(sign(var_4.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.d)))) * 1442f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d)))));
}

