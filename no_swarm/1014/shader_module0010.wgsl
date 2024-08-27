struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1 = Struct_1(-18237i);

var<private> global2: array<vec4<f32>, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(2147483647i);
    let var_1 = ~min(_wgslsmith_div_i32(firstTrailingBit(~u_input.c), global0.x), 1450i);
    var var_2 = var_0;
    var_2 = Struct_1(37466i);
    global0 = min(_wgslsmith_mod_vec3_i32(firstTrailingBit(-vec3<i32>(2147483647i, var_1, global0.x) << (vec3<u32>(u_input.a, u_input.a, 15846u) % vec3<u32>(32u))), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a, var_1, var_0.a), vec3<i32>(global1.a, var_0.a, 2104i)))), -(~vec3<i32>(reverseBits(2147483647i), _wgslsmith_mult_i32(var_2.a, global0.x), 1i)));
    return ~(~0i);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>) -> u32 {
    var var_0 = arg_0.x;
    var var_1 = Struct_1(u_input.c);
    var var_2 = select(arg_1, arg_1, arg_1);
    var var_3 = Struct_1(1i);
    var var_4 = _wgslsmith_mod_i32(global0.x, -5948i) <= _wgslsmith_mod_i32(max(1i, -(var_3.a & 31713i)), _wgslsmith_mod_i32(func_3(), ~var_1.a));
    return ~(~(~u_input.a));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = ~vec2<i32>(~global0.x, abs(-21034i));
    global1 = Struct_1(func_3());
    global1 = arg_1;
    var var_2 = arg_1;
    return arg_1;
}

fn func_1() -> vec3<f32> {
    let var_0 = func_4(~(~(~func_2(vec3<i32>(global1.a, u_input.c, 1i), vec3<bool>(false, true, true)))), Struct_1(-17966i), 1i);
    let var_1 = func_4(u_input.d.x, var_0, reverseBits(max(-_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, var_0.a, var_0.a, global0.x), vec4<i32>(1i, u_input.c, var_0.a, global1.a)), 9092i)));
    var var_2 = Struct_1(-firstLeadingBit(firstLeadingBit(-2147483647i >> (1u % 32u))));
    let var_3 = _wgslsmith_dot_vec3_i32(~vec3<i32>(10417i << (countOneBits(23939u) % 32u), firstLeadingBit(countOneBits(8804i)), global1.a), vec3<i32>(var_0.a, _wgslsmith_add_i32(-var_0.a, _wgslsmith_mult_i32(25672i | var_1.a, abs(var_1.a))), _wgslsmith_mult_i32(~_wgslsmith_mult_i32(var_1.a, var_0.a), 50787i)));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-2172f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1158f, 514f)))))), _wgslsmith_f_op_f32(f32(-1f) * -956f));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_4.x, var_4.x))), _wgslsmith_f_op_f32(max(-1264f, -1250f)), _wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(f32(-1f) * -1845f)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global0 = ~_wgslsmith_mod_vec3_i32(max(vec3<i32>(arg_3.a, 1722i, -43173i & u_input.c), ~select(vec3<i32>(-1i, global0.x, 2147483647i), vec3<i32>(24079i, global1.a, arg_3.a), true)), min(-(vec3<i32>(u_input.c, 6015i, arg_3.a) | vec3<i32>(u_input.c, arg_3.a, u_input.c)), max(vec3<i32>(-2147483647i, -14450i, global0.x), vec3<i32>(global1.a, -4826i, global0.x))));
    global1 = arg_3;
    global0 = ~_wgslsmith_div_vec3_i32(-(~vec3<i32>(-1i, -6137i, 32974i)) ^ vec3<i32>(i32(-1i) * -30268i, 1i, max(global1.a, arg_3.a)), ~(vec3<i32>(global0.x, arg_3.a, 0i) >> (vec3<u32>(arg_2, u_input.a, arg_2) % vec3<u32>(32u))) << (vec3<u32>(0u, 1u << (arg_2 % 32u), u_input.a) % vec3<u32>(32u)));
    global0 = -(~vec3<i32>(u_input.c, -(~(-1i)), u_input.c));
    let var_0 = arg_3;
    return Struct_1(u_input.c);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(-u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-2147483647i);
    let var_1 = true;
    let var_2 = _wgslsmith_dot_vec2_i32(-global0.yy | vec2<i32>(_wgslsmith_add_i32(u_input.c, var_0.a), u_input.c), _wgslsmith_mult_vec2_i32(~(~global0.zz), vec2<i32>(-1i) * -global0.xx)) | global0.x;
    global2 = array<vec4<f32>, 29>();
    global2 = array<vec4<f32>, 29>();
    let var_3 = !var_1;
    let var_4 = vec3<u32>(u_input.a, 15959u, 0u);
    var_0 = func_6(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-358f, 1000f, 342f), vec3<f32>(-157f, -237f, -1634f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-534f, 371f, 1872f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2019f, -740f, 1135f) * vec3<f32>(-638f, -640f, -728f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f)), var_4.x, Struct_1(_wgslsmith_sub_i32(_wgslsmith_div_i32(-40465i, var_2), -38721i))), func_4(~_wgslsmith_div_u32(_wgslsmith_mult_u32(111239u, var_4.x), ~u_input.d.x), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1085f, 691f, -1148f)))), _wgslsmith_f_op_f32(-1f), 1u, Struct_1(global0.x)), firstTrailingBit(global0.x ^ 20671i)), Struct_1(1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, ~(-43624i), -1i));
}

