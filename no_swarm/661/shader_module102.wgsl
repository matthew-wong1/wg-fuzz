struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_5) -> vec3<bool> {
    let var_0 = u_input.d;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.a.a) * _wgslsmith_f_op_f32(min(-1000f, arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_div_f32(-633f, 1420f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.c.a.a)) + arg_2.c.c)))));
    var var_2 = 1f;
    let var_3 = arg_1;
    var var_4 = firstLeadingBit(firstLeadingBit(firstLeadingBit(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a, 1u, 0u, 20997u), vec4<u32>(arg_2.c.d, arg_2.a, 37126u, arg_2.c.d))))));
    return !select(!arg_0, !(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), true);
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    var var_0 = vec4<u32>(reverseBits(max(~71283u, ~u_input.c.x)), _wgslsmith_mod_u32(abs(u_input.c.x) & _wgslsmith_div_u32(1u, u_input.c.x), _wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c), _wgslsmith_sub_u32(4294967295u, u_input.c.x))), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), ~min(vec3<u32>(4294967295u, 2481u, 23440u), vec3<u32>(17269u, 49965u, 1u))), u_input.c.x) | vec4<u32>(u_input.c.x, max(4294967295u, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)) >> (~4294967295u % 32u), 0u, ~(u_input.c.x ^ ~u_input.c.x));
    var var_1 = arg_0.x;
    return u_input.c.x;
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> vec3<f32> {
    var var_0 = Struct_4(any(!vec4<bool>(arg_1.x > arg_1.x, false, true, true)), global0[_wgslsmith_index_u32(10658u, 28u)]);
    let var_1 = Struct_4(!(any(vec3<bool>(var_0.b.a, var_0.a, var_0.b.a)) == !(var_0.a != var_0.b.a)), Struct_3(all(select(select(vec2<bool>(true, var_0.a), vec2<bool>(true, var_0.a), var_0.a), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, var_0.a), vec2<bool>(false, var_0.a)), all(vec4<bool>(false, var_0.b.a, var_0.b.a, var_0.b.a)))), _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.b, var_0.b.b, -26836i), vec4<i32>(2147483647i, -47321i, 2147483647i, 23173i)), ~min(vec4<i32>(u_input.d, var_0.b.b, u_input.d, u_input.a), vec4<i32>(var_0.b.b, 5881i, 2147483647i, u_input.a)))));
    global0 = array<Struct_3, 28>();
    var_0 = var_1;
    var_0 = var_1;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1195f, arg_1.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1189f, 595f, -903f) - vec3<f32>(2444f, arg_1.x, -200f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.x, -1000f, arg_1.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1074f, arg_1.x, 651f)))) - arg_1)));
}

fn func_2(arg_0: vec3<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_add_u32(max(func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(390f, 249f), vec2<f32>(930f, -1066f), true)), true), _wgslsmith_div_u32(countOneBits(57372u), _wgslsmith_sub_u32(u_input.c.x, 1u))), _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, u_input.c.x), 53017u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(577f, -823f, 400f) - vec3<f32>(-627f, 480f, -308f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-385f, -1116f, -695f)), vec3<f32>(-351f, -420f, 1251f))))));
    global0 = array<Struct_3, 28>();
    let var_1 = 2147483647i;
    let var_2 = 811f;
    global0 = array<Struct_3, 28>();
    return vec4<i32>(2147483647i, -(~u_input.a << ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(49676u, 0u, 10477u, u_input.c.x)) & countOneBits(49657u)) % 32u)), countOneBits(~(var_1 | var_1)), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(984f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) + _wgslsmith_f_op_f32(round(230f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-695f * _wgslsmith_f_op_f32(step(1462f, 515f))) - _wgslsmith_f_op_f32(f32(-1f) * -1023f))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_f_op_f32(2320f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * -347f)));
    let var_1 = Struct_2(Struct_1(var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -1056f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 978f)), false))), 1463f, u_input.c.x);
    var var_2 = _wgslsmith_f_op_f32(-var_1.b);
    let var_3 = func_2(select(select(vec3<bool>(false, true, false), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), true), !(!func_1(vec3<bool>(true, false, false), Struct_1(var_1.a.a), Struct_5(4294967295u, 1130f, var_1))), all(vec3<bool>(true, true, true))));
    var var_4 = vec4<bool>(!(!(!select(true, false, false))), true, true, select(_wgslsmith_dot_vec3_i32(var_3.wyx, vec3<i32>(0i, var_3.x, -16478i)) <= 36411i, !((-5143i < u_input.a) && false), false));
    global0 = array<Struct_3, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, -_wgslsmith_mult_vec4_i32(var_3, ~(-vec4<i32>(var_3.x, u_input.d, 0i, u_input.b))), -48684i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-961f * var_0.x), 579f))), vec2<f32>(-1718f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(floor(var_1.a.a))))));
}

