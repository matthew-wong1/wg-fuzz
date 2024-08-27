struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(-648f, -862f, 205f, -101f), vec4<f32>(380f, 1459f, 678f, 398f), vec4<f32>(-305f, -620f, -543f, 426f));

var<private> global1: Struct_2 = Struct_2(vec2<u32>(41679u, 1u));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_2(~vec2<u32>(firstLeadingBit(arg_1.a.x) | 50417u, abs(u_input.b.x)));
    global0 = array<vec4<f32>, 3>();
    global1 = Struct_2(vec2<u32>(_wgslsmith_sub_u32(var_0.a.x, 5939u), ~50436u));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.a.x);
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-570f, 1656f)), _wgslsmith_f_op_f32(max(arg_0.a.x, 1378f)))))));
    return i32(-1i) * -31026i;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> u32 {
    var var_0 = -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(-16248i), _wgslsmith_div_i32(44754i, -19382i)), _wgslsmith_mult_i32(5884i, -67684i) ^ func_3(Struct_1(vec3<f32>(173f, -1921f, -1078f), vec2<bool>(arg_1.x, true), vec2<i32>(-15459i, 0i)), Struct_2(u_input.b)), countOneBits(-1i)), vec3<i32>(2147483647i, -(i32(-1i) * -1i), 0i));
    var var_1 = vec2<bool>(!(!all(vec4<bool>(true, false, false, arg_1.x))), true);
    var_1 = arg_1.wz;
    var var_2 = Struct_2(max(u_input.b, abs(global1.a)) & vec2<u32>(firstTrailingBit(28828u), global1.a.x));
    var_2 = Struct_2(select(~_wgslsmith_sub_vec2_u32(var_2.a, _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.a.x, u_input.c), vec2<u32>(u_input.a, 21286u))), var_2.a, !arg_1.x));
    return 0u;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_mult_vec2_u32(reverseBits(arg_0.a), u_input.b));
    var var_1 = Struct_2(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.a.x, arg_0.a.x & var_0.a.x), _wgslsmith_mod_u32(firstLeadingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(12606u, arg_0.a.x, 52223u, u_input.c), vec4<u32>(var_0.a.x, var_0.a.x, global1.a.x, 1u)))), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<u32>(global1.a.x, var_0.a.x, 3927u, u_input.c)), (global1.a.x | 51358u) << ((4294967295u & var_0.a.x) % 32u))));
    return arg_0;
}

fn func_1() -> i32 {
    var var_0 = func_4(Struct_2(vec2<u32>(~3621u << (func_2(true, vec4<bool>(true, false, false, false)) % 32u), global1.a.x)));
    global0 = array<vec4<f32>, 3>();
    global0 = array<vec4<f32>, 3>();
    global0 = array<vec4<f32>, 3>();
    let var_1 = func_4(Struct_2(select(var_0.a, var_0.a, true)));
    return min(_wgslsmith_div_i32(1i, ~(-16166i)), countOneBits(0i));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    global1 = Struct_2(u_input.b);
    let var_0 = global1.a | vec2<u32>(abs(_wgslsmith_mod_u32(u_input.b.x, 37824u)), global1.a.x << (~global1.a.x % 32u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, 1f, -1501f))), !select(!arg_0.b, select(vec2<bool>(arg_0.b.x, arg_0.b.x), select(vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b, vec2<bool>(arg_0.b.x, true)), vec2<bool>(arg_0.b.x, true)), !all(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x))), _wgslsmith_mult_vec2_i32(~vec2<i32>(select(2147483647i, -2147483647i, false), arg_0.c.x), vec2<i32>(_wgslsmith_div_i32(1i >> (0u % 32u), 68067i), i32(-1i) * -1i)));
    return Struct_2(abs(reverseBits(firstLeadingBit(min(var_0, vec2<u32>(4294967295u, 80050u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec2_u32(global1.a, global1.a, select(u_input.b, select(select(vec2<u32>(1u, u_input.a), global1.a, select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), global1.a, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    var var_1 = true;
    var var_2 = Struct_2(var_0);
    let var_3 = Struct_2(var_0);
    global1 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(127f, -779f, -1315f), vec3<f32>(394f, -624f, -1231f))))), select(vec2<bool>(true, true), vec2<bool>(false, all(vec3<bool>(false, false, true))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), all(vec2<bool>(false, true)))), ~(-vec2<i32>(-58726i, 1i))), reverseBits(func_1()));
    var_2 = Struct_2(vec2<u32>(82231u, 13149u));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(267f, -514f)), _wgslsmith_f_op_f32(abs(-1211f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(2197f, 601f))))))), vec2<bool>(true, true), vec2<i32>(1i, 1i));
    let var_5 = reverseBits(~(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 8330u), abs(var_2.a)) & ~func_4(Struct_2(var_0)).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~max(var_3.a.x, global1.a.x))), -vec2<i32>(1i, min(1i, abs(15i))));
}

