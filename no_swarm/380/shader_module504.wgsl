struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_3, 7>;

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_3, 30>;

var<private> global4: bool = true;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec4<i32> {
    global0 = Struct_4(global0.a, ~min(global0.b, u_input.a.x), global0.a.d);
    global1 = array<Struct_3, 7>();
    var var_0 = global0.a;
    let var_1 = any(!(!select(select(vec3<bool>(var_0.d.x, var_0.d.x, true), vec3<bool>(false, var_0.d.x, var_0.d.x), vec3<bool>(global0.c.x, var_0.d.x, true)), vec3<bool>(var_0.d.x, false, global0.c.x), !vec3<bool>(true, var_0.d.x, true))));
    var var_2 = global0.a;
    return vec4<i32>(3038i, -(~_wgslsmith_mult_i32(-9302i, var_2.a.x)), 199i, global0.a.a.x);
}

fn func_3() -> vec4<i32> {
    global0 = Struct_4(Struct_2(~(-reverseBits(vec2<i32>(global0.a.a.x, global0.a.a.x))), global0.a.b, global0.a.c, global0.a.d), _wgslsmith_mod_u32(_wgslsmith_mod_u32(select(u_input.a.x, u_input.a.x, global0.a.d.x), global0.b) & max(33261u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), 6080u), vec2<bool>(_wgslsmith_f_op_f32(global0.a.c.a.x + _wgslsmith_f_op_f32(floor(global2.x))) <= -1507f, all(!(!vec2<bool>(global0.c.x, false)))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.x, -132f, _wgslsmith_f_op_f32(469f + -909f)))))));
    var var_0 = any(vec2<bool>(any(select(select(vec4<bool>(false, global0.c.x, global0.c.x, global0.a.d.x), vec4<bool>(global0.c.x, global0.a.d.x, global0.c.x, global0.c.x), false), select(vec4<bool>(global0.c.x, false, true, global0.a.d.x), vec4<bool>(global0.a.d.x, global0.a.d.x, global0.c.x, global0.a.d.x), global0.a.d.x), !vec4<bool>(global0.a.d.x, true, true, false))), all(select(select(vec4<bool>(true, true, true, global0.a.d.x), vec4<bool>(false, true, true, true), global0.a.d.x), select(vec4<bool>(global0.a.d.x, false, global0.a.d.x, global0.a.d.x), vec4<bool>(true, true, global0.c.x, false), vec4<bool>(global0.a.d.x, global0.c.x, global0.a.d.x, global0.c.x)), !global0.c.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -382f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a.b.b, global2.x, true)) + _wgslsmith_div_f32(global0.a.b.a.x, 1028f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(global2.xy, global2.xx)))) - vec2<f32>(_wgslsmith_div_f32(global0.a.b.b, global2.x), _wgslsmith_f_op_f32(f32(-1f) * -788f))), true)), global2.x);
    let var_2 = select(_wgslsmith_div_vec4_i32(-(~vec4<i32>(-50479i, global0.a.a.x, global0.a.a.x, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -1i, global0.a.a.x, global0.a.a.x, reverseBits(-13400i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(0i, global0.a.a.x, -20761i, -1i), vec4<i32>(-2147483647i, 36188i, global0.a.a.x, global0.a.a.x)))), _wgslsmith_clamp_vec4_i32(~(max(vec4<i32>(-62398i, 0i, global0.a.a.x, global0.a.a.x), vec4<i32>(-2147483647i, 25991i, global0.a.a.x, 1i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(global0.a.a.x, -1i, 25800i, 2147483647i), vec4<i32>(global0.a.a.x, -31838i, -33637i, 33693i))), ~vec4<i32>(-1i, 0i, -40155i, global0.a.a.x), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(global0.a.a.x, global0.a.a.x, 2147483647i, 0i)), vec4<i32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, global0.a.a.x)) & select(~vec4<i32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, -17336i), vec4<i32>(-25679i, 0i, -49357i, 2147483647i), select(vec4<bool>(false, global0.c.x, true, global0.c.x), vec4<bool>(true, true, true, global0.c.x), vec4<bool>(global0.a.d.x, global0.c.x, global0.a.d.x, global0.a.d.x)))), true);
    return var_2;
}

fn func_1() -> Struct_4 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(756f, global0.a.c.a.x)) + _wgslsmith_div_f32(712f, _wgslsmith_f_op_f32(ceil(-850f)))), _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(abs(-329f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1325f, global2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), global0.a.c.a.x), true)) * -137f));
    let var_1 = Struct_3(_wgslsmith_div_vec4_i32(func_2(), func_3()), global0.a.c, 2147483647i, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1131f, global2.x) - global2.xx))), _wgslsmith_f_op_f32(-1070f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x))));
    var var_2 = _wgslsmith_dot_vec3_i32(-firstLeadingBit(~var_1.a.wzy), var_1.a.yxz);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-global0.a.c.b), _wgslsmith_f_op_f32(min(global0.a.b.b, _wgslsmith_f_op_f32(global0.a.c.a.x * var_1.d.b))));
    global0 = Struct_4(Struct_2(max(vec2<i32>(_wgslsmith_add_i32(1i, var_1.c), _wgslsmith_add_i32(1i, -17222i)), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-65879i, global0.a.a.x), vec2<i32>(-26425i, var_1.c)), vec2<i32>(global0.a.a.x, var_1.c))), Struct_1(vec2<f32>(-827f, 921f), global2.x), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a.x, -469f)), _wgslsmith_f_op_f32(-var_3.x)), global0.a.d), ~(~_wgslsmith_div_u32(u_input.a.x >> (global0.b % 32u), 47309u)), select(select(!global0.c, global0.a.d, vec2<bool>(true, any(vec4<bool>(global0.c.x, true, false, true)))), global0.c, true));
    return Struct_4(global0.a, ~_wgslsmith_div_u32(_wgslsmith_mult_u32(global0.b, 1u), 4326u), global0.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -246f;
    var var_1 = func_1();
    let var_2 = func_1().a.c;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1404f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, var_2.b)) * _wgslsmith_f_op_f32(1000f + -210f)), -1000f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(722f, 1000f, global0.a.c.a.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.c.b, -2152f, 381f)))));
    var var_4 = global3[_wgslsmith_index_u32(reverseBits(reverseBits(18495u)), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 10717u), ~vec3<u32>(19321u, 21632u, 0u))), reverseBits(min(var_1.b, ~63806u)), all(select(!vec4<bool>(global0.c.x, var_1.c.x, global0.a.d.x, var_1.a.d.x), select(vec4<bool>(var_1.a.d.x, global0.c.x, global0.a.d.x, true), vec4<bool>(var_1.a.d.x, true, var_1.a.d.x, true), vec4<bool>(false, false, false, global0.a.d.x)), select(vec4<bool>(false, true, true, false), vec4<bool>(var_1.a.d.x, false, true, global0.c.x), vec4<bool>(true, var_1.a.d.x, var_1.a.d.x, global0.a.d.x))))), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1().a.c.a.x * _wgslsmith_f_op_f32(-var_4.d.a.x)) * -533f)));
}

