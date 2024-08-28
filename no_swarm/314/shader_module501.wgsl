struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 20124i, -37502i);

var<private> global1: vec2<i32>;

var<private> global2: array<vec2<u32>, 25>;

var<private> global3: vec3<f32> = vec3<f32>(842f, 1396f, -390f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> bool {
    var var_0 = Struct_3(true, true, -418f);
    var var_1 = Struct_4(~(~arg_0.c | _wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_0.c, 2335u, arg_0.b), vec3<u32>(47693u, 0u, 0u)), ~vec3<u32>(4294967295u, arg_0.b, arg_0.b))), vec3<bool>(!all(select(vec2<bool>(true, var_0.b), vec2<bool>(var_0.a, false), vec2<bool>(false, var_0.b))), true, false));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * arg_3)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.a.x)), _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * var_0.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-715f, arg_0.a.x, _wgslsmith_f_op_f32(ceil(709f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(179f, arg_3, global3.x))))));
    let var_3 = max(~(~(_wgslsmith_div_u32(u_input.d, var_1.a) >> (~arg_0.c % 32u))), _wgslsmith_clamp_u32(select(var_1.a, select(17091u, var_1.a, false) ^ 4294967295u, false && var_1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, var_1.a, u_input.d), _wgslsmith_add_vec3_u32(abs(vec3<u32>(arg_0.b, u_input.c, u_input.c)), select(vec3<u32>(4294967295u, 21981u, 40915u), vec3<u32>(4294967295u, arg_0.c, var_1.a), false))), arg_0.b));
    let var_4 = -1843f;
    return !(1483f != _wgslsmith_f_op_f32(-350f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-274f + arg_1.a), _wgslsmith_f_op_f32(arg_1.a + var_4))));
}

fn func_2() -> f32 {
    let var_0 = !func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global3.zy))), 2422u, ~countOneBits(u_input.c)), Struct_1(-646f), 1i, global3.x);
    let var_1 = select(any(select(select(!vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), !vec2<bool>(var_0, var_0)), !(!vec2<bool>(var_0, false)), true)), false, true);
    let var_2 = Struct_3(var_1, select(false, var_0, any(select(select(vec4<bool>(var_1, var_0, false, true), vec4<bool>(true, var_0, true, var_1), true), !vec4<bool>(var_0, var_0, var_1, true), false))), global3.x);
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, 891f) - vec3<f32>(var_2.c, -603f, global3.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 463f))))))));
    var var_3 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, u_input.d, u_input.d, 90950u) >> (vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.c) % vec4<u32>(32u))) ^ select(vec4<u32>(u_input.c, 3735u, 15658u, u_input.d) << (vec4<u32>(73603u, 4294967295u, u_input.d, u_input.d) % vec4<u32>(32u)), ~vec4<u32>(u_input.c, u_input.d, u_input.d, u_input.d), !var_2.b), vec4<u32>(~(~79990u), reverseBits(~u_input.d), 5682u, abs(0u) | u_input.c)), vec4<u32>(u_input.c, _wgslsmith_mult_u32(u_input.c, abs(0u)) & _wgslsmith_clamp_u32(23985u >> (u_input.d % 32u), _wgslsmith_div_u32(138153u, u_input.c), _wgslsmith_mod_u32(u_input.d, 0u)), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(19683u, u_input.d, 20491u, u_input.d), vec4<u32>(u_input.c, 1u, 40972u, u_input.d)), abs(_wgslsmith_add_u32(4294967295u, 0u))), _wgslsmith_dot_vec3_u32((vec3<u32>(u_input.d, u_input.c, 45635u) << (vec3<u32>(4294967295u, u_input.c, u_input.d) % vec3<u32>(32u))) & ~vec3<u32>(66726u, u_input.d, u_input.c), _wgslsmith_mod_vec3_u32(select(vec3<u32>(1710u, 8260u, u_input.c), vec3<u32>(u_input.d, 59884u, u_input.c), false), vec3<u32>(u_input.d, u_input.d, 95688u)))));
    return _wgslsmith_f_op_f32(-731f - _wgslsmith_f_op_f32(-global3.x));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    global2 = array<vec2<u32>, 25>();
    global3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1074f, 1000f, global3.x))) * _wgslsmith_div_vec3_f32(vec3<f32>(global3.x, 503f, _wgslsmith_f_op_f32(abs(-2047f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.x, -1130f, global3.x)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(203f, 919f)), -420f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.x * -566f)))) - vec3<f32>(1417f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))))));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.x, 656f, global3.x))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(499f, -1001f, global3.x)), vec3<f32>(global3.x, global3.x, 663f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 1333f, 1443f)))))));
    var var_0 = _wgslsmith_f_op_f32(-global3.x);
    let var_1 = Struct_3(select(1u <= u_input.d, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false))), true), any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), all(vec2<bool>(false, false))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), true), _wgslsmith_add_i32(arg_0.x, u_input.b.x) >= 1i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global3.x))))), global3.x)));
    return ~u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(0u, func_1(vec3<i32>(66321i, global1.x << (1u % 32u), abs(u_input.e.x))), u_input.d, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 75407u, u_input.c, 52831u), vec4<u32>(8429u, 28172u, u_input.d, 7073u)) ^ 37779u));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(-496f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-687f)) - -1306f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(604f, global3.x, global3.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(398f, -308f, global3.x), vec3<f32>(global3.x, global3.x, -184f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.x, -670f, global3.x))))))));
    let var_1 = !vec2<bool>(select(_wgslsmith_f_op_f32(-global3.x) <= _wgslsmith_f_op_f32(max(717f, -614f)), !all(vec3<bool>(true, true, true)), false), true);
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(select(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, var_0.x, u_input.c), abs(var_0.zww)), _wgslsmith_div_vec3_u32(var_0.wzw, _wgslsmith_clamp_vec3_u32(var_0.yxx, var_0.ywy, vec3<u32>(52162u, var_0.x, u_input.c))), var_1.x), vec3<u32>(var_0.x, ~u_input.d, _wgslsmith_dot_vec2_u32(var_0.yx, var_0.wx)) & var_0.ywz), ~u_input.d), 25u)];
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 373f, _wgslsmith_f_op_f32(step(-580f, global3.x))) - vec3<f32>(global3.x, 537f, _wgslsmith_f_op_f32(sign(global3.x))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -103f), -666f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.x)))))));
    var var_4 = -204i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global1.x, global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(974f, -596f)), _wgslsmith_f_op_f32(global3.x - global3.x))))), -(~11675i));
}

