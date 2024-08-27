struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
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

var<private> global0: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(59994u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 8642u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 98915u), vec2<u32>(71990u, 0u), vec2<u32>(52692u, 1u), vec2<u32>(0u, 61550u), vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4713u, 38224u), vec2<u32>(28593u, 4690u), vec2<u32>(4294967295u, 33155u), vec2<u32>(0u, 1u), vec2<u32>(57319u, 51170u), vec2<u32>(4294967295u, 1u), vec2<u32>(36016u, 79465u), vec2<u32>(126814u, 46372u));

var<private> global1: Struct_3;

var<private> global2: f32;

var<private> global3: array<Struct_2, 13>;

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_3 {
    let var_0 = global1.a.yyw;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1321f))), _wgslsmith_div_f32(var_0.x, -1297f))), global1.c.b.a.x));
    let var_2 = !select(!global1.c.b.a, vec2<bool>(true, true), global1.c.b.a.x);
    global1 = Struct_3(_wgslsmith_f_op_vec4_f32(step(global1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a + _wgslsmith_f_op_vec4_f32(-global1.a)) * vec4<f32>(_wgslsmith_f_op_f32(-425f * 1236f), _wgslsmith_f_op_f32(var_1 * var_0.x), var_0.x, -776f)))), var_0.zy, Struct_2(-55350i, global1.c.b), global1.c.b.a.x);
    global3 = array<Struct_2, 13>();
    return Struct_3(_wgslsmith_f_op_vec4_f32(global1.a * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(abs(var_1)), -1099f, _wgslsmith_div_f32(-300f, -292f))))), var_0.zz, global1.c, true);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_4) -> Struct_2 {
    let var_0 = vec2<u32>(~27243u, ~arg_0.x);
    var var_1 = vec4<u32>(~0u, _wgslsmith_dot_vec3_u32(u_input.b.wyx, min(~(~vec3<u32>(var_0.x, 0u, var_0.x)), vec3<u32>(~5625u, _wgslsmith_div_u32(var_0.x, arg_0.x), arg_0.x))), u_input.b.x, ~_wgslsmith_sub_u32(~u_input.b.x, (u_input.b.x & u_input.b.x) | (var_0.x & 11017u)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(563f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-639f, -856f, true)), global1.a.x)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a.x)) * _wgslsmith_f_op_f32(-1227f * global1.b.x))))));
    global4 = _wgslsmith_div_i32(_wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.a, 1i, u_input.a, arg_3.c), arg_3.b), min(~firstLeadingBit(arg_1.a), -1i | abs(arg_3.c))), global1.c.a);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x));
    return Struct_2(arg_2, arg_3.a.b);
}

fn func_1() -> vec2<i32> {
    global1 = func_2();
    global1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, global1.b.x, _wgslsmith_f_op_f32(global1.b.x + global1.a.x), _wgslsmith_f_op_f32(abs(-418f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, _wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(-global1.b.x)))), func_3(countOneBits(u_input.b.xyx), Struct_2(global1.c.a, func_2().c.b), reverseBits(~u_input.a), Struct_4(func_2().c, (vec4<i32>(global1.c.a, 26895i, -1i, global1.c.a) << (vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, 25625i), vec4<i32>(global1.c.a, -1i, u_input.a, global1.c.a)), u_input.a, global1.d, vec3<bool>(true, global1.c.b.a.x, u_input.b.x > u_input.b.x))), true);
    global4 = 34053i >> (u_input.b.x % 32u);
    var var_0 = Struct_2(-20265i, Struct_1(vec2<bool>(!global1.c.b.a.x, global1.d)));
    let var_1 = Struct_4(global1.c, vec4<i32>(global1.c.a, var_0.a, i32(-1i) * -_wgslsmith_sub_i32(-72616i, -38805i), -u_input.a), i32(-1i) * -2147483647i, true, select(select(vec3<bool>(global1.d, true, u_input.b.x < u_input.b.x), select(!vec3<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x), select(vec3<bool>(global1.d, global1.d, false), vec3<bool>(true, var_0.b.a.x, true), vec3<bool>(var_0.b.a.x, false, false)), select(vec3<bool>(var_0.b.a.x, global1.d, true), vec3<bool>(global1.c.b.a.x, global1.c.b.a.x, false), vec3<bool>(global1.d, true, false))), vec3<bool>(true, false, 14965u > u_input.b.x)), select(!select(vec3<bool>(var_0.b.a.x, var_0.b.a.x, true), vec3<bool>(global1.d, var_0.b.a.x, false), global1.c.b.a.x), !vec3<bool>(var_0.b.a.x, global1.c.b.a.x, false), var_0.b.a.x), vec3<bool>(true, global1.c.b.a.x, true)));
    return _wgslsmith_sub_vec2_i32(var_1.b.wx, abs(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.b.yxx, var_1.b.xzx), -vec3<i32>(u_input.a, -77393i, var_1.a.a)), -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 13>();
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, global1.c.a), min(vec2<i32>(u_input.a, _wgslsmith_dot_vec4_i32(select(vec4<i32>(31458i, u_input.a, -31705i, u_input.a), vec4<i32>(-1i, global1.c.a, global1.c.a, u_input.a), global1.d), countOneBits(vec4<i32>(global1.c.a, global1.c.a, -1i, 1i)))), _wgslsmith_add_vec2_i32(abs(countOneBits(vec2<i32>(u_input.a, u_input.a))), abs(vec2<i32>(global1.c.a, -1i)))));
    global0 = array<vec2<u32>, 20>();
    global0 = array<vec2<u32>, 20>();
    var_0 = ~(-func_1());
    global2 = -614f;
    let var_1 = -countOneBits(vec2<i32>(89107i, -1i));
    var_0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(global1.a.yyw)), -select(abs(~3037i), max(3333i, -1i) >> (u_input.b.x % 32u), true), 40827u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1915f, global1.a.x, -787f) * vec3<f32>(-227f, _wgslsmith_div_f32(global1.a.x, -157f), _wgslsmith_f_op_f32(ceil(global1.a.x)))))), u_input.b.wyz);
}

