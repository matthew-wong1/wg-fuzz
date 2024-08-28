struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<bool>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    global0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, 429f, 547f, 399f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, 967f, 1013f, 998f) + vec4<f32>(1443f, -286f, -976f, -528f)) * global0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1286f, global0.a.x, global0.c, 124f), vec4<f32>(-790f, -204f, global0.c, global0.c)))))), !(!(!select(vec2<bool>(global1.x, true), global1.xy, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(560f, _wgslsmith_f_op_f32(exp2(global0.a.x))))), true);
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-210f, 1069f, global0.c, 288f)), vec4<f32>(-383f, _wgslsmith_f_op_f32(global0.a.x - global0.a.x), _wgslsmith_f_op_f32(global0.a.x + global0.a.x), _wgslsmith_f_op_f32(abs(global0.a.x))))))), !global1.yy, _wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.x + global0.a.x)))), all(global1.yy))), all(select(select(!vec4<bool>(true, true, false, global0.d), vec4<bool>(global1.x, global0.b.x, false, false), true), !(!vec4<bool>(global0.b.x, global1.x, false, global1.x)), vec4<bool>(select(global1.x, global1.x, global0.d), all(vec3<bool>(false, global0.d, true)), global0.d != global1.x, global1.x))));
    return var_0.c;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> vec3<i32> {
    global0 = arg_0;
    global1 = arg_1;
    let var_0 = Struct_1(firstTrailingBit(_wgslsmith_mod_vec4_i32(select(vec4<i32>(2147483647i, u_input.a, 0i, -1i), vec4<i32>(-56695i, u_input.b, u_input.b, -31918i), true) | -vec4<i32>(u_input.a, u_input.a, u_input.a, 35088i), vec4<i32>(firstLeadingBit(24470i), -12592i, ~(-4271i), reverseBits(u_input.b)))));
    global1 = select(!vec3<bool>(!(!global0.d), true, global1.x), arg_1, any(!arg_0.b));
    global1 = arg_1;
    return _wgslsmith_mult_vec3_i32(max(~(-vec3<i32>(u_input.b, -22324i, 3552i)), var_0.a.wxx), vec3<i32>(var_0.a.x, -3457i, -_wgslsmith_add_i32(-2147483647i, _wgslsmith_add_i32(u_input.a, u_input.a))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_1(~(~arg_0.a ^ countOneBits(~arg_0.a)));
    var var_1 = func_4(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_0, abs(vec4<u32>(4294967295u, 19727u, 10712u, 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-250f, 130f)), arg_1, -574f), !global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-852f * -277f), _wgslsmith_f_op_f32(406f - 1995f))), true), vec3<bool>(true, all(!(!vec4<bool>(false, global0.b.x, false, global0.d))), global1.x | all(select(vec3<bool>(false, global1.x, false), vec3<bool>(true, global1.x, global0.b.x), vec3<bool>(global0.b.x, false, global1.x)))));
    global1 = !(!vec3<bool>(true, true, !all(vec3<bool>(global1.x, true, true))));
    var var_2 = arg_0.a.x;
    var_1 = func_4(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(743f, 625f, arg_1, 463f) - _wgslsmith_f_op_vec4_f32(max(global0.a, vec4<f32>(arg_1, -1055f, -1469f, -466f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.c, -644f, arg_1, -132f), vec4<f32>(global0.a.x, 1055f, 326f, -494f)) + global0.a)), global0.b, 1000f, !select(false, any(vec3<bool>(true, false, true)), true)), !select(select(vec3<bool>(global0.d, false, false), vec3<bool>(global0.d, true, global1.x), vec3<bool>(global0.d, false, global1.x)), vec3<bool>(true, true, true), select(select(vec3<bool>(global0.d, false, true), vec3<bool>(global1.x, true, global1.x), false), select(vec3<bool>(global0.d, true, false), vec3<bool>(false, global1.x, global0.d), global0.b.x), vec3<bool>(global0.d, false, false))));
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(abs(global0.c)), 1103f, _wgslsmith_f_op_f32(-arg_1), 714f), select(vec2<bool>(true, false), vec2<bool>(all(select(vec3<bool>(false, global0.d, global1.x), vec3<bool>(true, true, global1.x), true)), global0.b.x), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(162f))))), true | global0.b.x);
}

fn func_1() -> Struct_2 {
    var var_0 = global0.c;
    global0 = func_2(Struct_1(_wgslsmith_sub_vec4_i32(~(vec4<i32>(u_input.a, 1i, -44201i, u_input.a) >> (vec4<u32>(83298u, 0u, 36368u, 1u) % vec4<u32>(32u))), -(~vec4<i32>(37039i, u_input.b, u_input.b, 12017i)))), global0.c);
    var var_1 = ~_wgslsmith_clamp_u32(min(firstTrailingBit(38438u) >> (~25670u % 32u), abs(23819u)), min(1u, 1u), 1u);
    let var_2 = func_2(Struct_1(vec4<i32>(-2147483647i, ~(~u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.a, u_input.a) & vec4<i32>(-1i, -44020i, -2147483647i, -6836i), vec4<i32>(-1i, 16786i, u_input.b, -2147483647i)), reverseBits(firstTrailingBit(u_input.b)))), global0.c);
    var_1 = abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_mod_u32(~33620u, 1u), 1u, 1u)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = var_0.a.x;
    global1 = !(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, true, true)), select(vec3<bool>(true, global1.x, true), vec3<bool>(false, global0.d, global0.d), false), global1.x), select(select(vec3<bool>(false, var_0.d, true), vec3<bool>(global1.x, false, global0.b.x), global1.x), select(vec3<bool>(global1.x, true, var_0.b.x), vec3<bool>(global1.x, global0.d, var_0.d), vec3<bool>(global1.x, true, false)), !vec3<bool>(false, global0.d, true)), !(!global1.x)));
    global0 = var_0;
    var var_2 = Struct_1(_wgslsmith_sub_vec4_i32(~(~vec4<i32>(56257i, u_input.a, -2147483647i, 2147483647i)) << (firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), select(-(~vec4<i32>(11374i, u_input.a, u_input.b, -43209i)), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.a, -1i, -1i, 2147483647i)), vec4<i32>(1i, 6258i, u_input.a, u_input.a)), !(!vec4<bool>(global1.x, global1.x, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a, func_4(var_0, vec3<bool>(true, false, global1.x)).x), min(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a.x, var_2.a.x, -2147483647i), var_2.a.yxy, vec3<i32>(0i, var_2.a.x, var_2.a.x)), ~vec3<i32>(-6851i, u_input.b, var_2.a.x))), vec2<u32>(~max(4294967295u << (0u % 32u), 0u), firstTrailingBit(firstLeadingBit(_wgslsmith_div_u32(63914u, 5899u)))), _wgslsmith_mod_u32(min(~1u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(14327u, 1u, 1u)), vec3<u32>(16868u, 20079u, 34555u)))));
}

