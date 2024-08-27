struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, -1388f);

var<private> global1: u32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32) -> f32 {
    global0 = Struct_1(~global0.a, _wgslsmith_f_op_f32(global0.b * global0.b));
    var var_0 = 1u;
    var var_1 = !(~firstTrailingBit(arg_0) <= min(1u, 0u));
    global1 = global0.a;
    var var_2 = vec4<bool>(!(!(min(1u, 116573u) > countOneBits(global0.a))), !(false || all(vec2<bool>(true, true))), ~abs(38860i) == ~u_input.b, all(vec3<bool>(true, true, true)) || false);
    return -268f;
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(812f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(global0.b * -724f), any(vec3<bool>(false, true, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(207f + 1576f)) + -1000f))));
    global1 = ~((global0.a << ((_wgslsmith_mod_u32(arg_0.a, 12487u) >> (~global0.a % 32u)) % 32u)) ^ _wgslsmith_mult_u32(14603u, _wgslsmith_mod_u32(~global0.a, arg_0.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1066f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(79851u)))));
    global0 = arg_0;
    let var_2 = Struct_2(vec2<f32>(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(func_3(1u))) + global0.b)), arg_0.a);
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: u32) -> f32 {
    var var_0 = Struct_3(func_2(arg_0), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(166f, arg_0.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_0.b) + vec2<f32>(1000f, global0.b)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1444f, arg_0.b) - vec2<f32>(-1081f, global0.b)))), 4294967295u), _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b + global0.b), 1000f), _wgslsmith_f_op_f32(exp2(arg_0.b)))), vec2<i32>(abs(1423i), firstLeadingBit(arg_1.x)), -arg_1);
    var var_1 = Struct_1(_wgslsmith_add_u32(min(~abs(global0.a), 0u), 1u), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_u32(var_0.b.b, ~_wgslsmith_clamp_u32(var_0.b.b, var_0.b.b, 28402u)))));
    var_1 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * var_1.b)) - _wgslsmith_f_op_f32(754f - _wgslsmith_f_op_f32(-var_0.c)))));
    let var_2 = max(max(~_wgslsmith_sub_vec4_u32(vec4<u32>(40195u, arg_3, arg_3, 4294967295u), vec4<u32>(var_1.a, 0u, 20326u, global0.a)), abs(vec4<u32>(var_1.a, global0.a, arg_3, global0.a))) & reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.b, global0.a, arg_3, var_0.b.b) << (vec4<u32>(arg_0.a, arg_3, 51282u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(16739u, global0.a, 1u, 1u), vec4<u32>(1503u, 13915u, 4294967295u, 42242u)))), vec4<u32>(~42794u, 1u, ~arg_3, 1u));
    var var_3 = arg_3 & 10930u;
    return _wgslsmith_f_op_f32(f32(-1f) * -311f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_mod_u32(max(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, global0.a, global0.a), vec3<u32>(global0.a, global0.a, 29864u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(global0.a, 4294967295u), 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, global0.a, global0.a) & vec3<u32>(28658u, 30112u, global0.a), ~vec3<u32>(0u, 38354u, global0.a) | ~vec3<u32>(2643u, global0.a, 14625u))), global0.b);
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_1(Struct_1(4294967295u, global0.b), vec4<i32>(u_input.b, u_input.a, -2147483647i, 79542i), false, 63904u))))))));
    let var_1 = _wgslsmith_sub_vec3_i32(-(~(vec3<i32>(u_input.b, 1i, 0i) << ((vec3<u32>(0u, global0.a, global0.a) | vec3<u32>(global0.a, 10769u, 4389u)) % vec3<u32>(32u)))), ~(vec3<i32>(_wgslsmith_div_i32(-1i, u_input.a), ~u_input.b, u_input.b << (global0.a % 32u)) & -(vec3<i32>(76147i, 14213i, -5074i) ^ vec3<i32>(u_input.a, u_input.a, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(u_input.a & -var_1.x)), _wgslsmith_f_op_f32(1652f - global0.b), -(~vec4<i32>(~u_input.a, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 2147483647i, u_input.b), vec3<i32>(-1891i, 1i, -3317i)), abs(u_input.a))), global0.b);
}

