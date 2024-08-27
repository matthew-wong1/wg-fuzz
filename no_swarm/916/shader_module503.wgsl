struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_4(~u_input.d.x);
    var var_1 = arg_0;
    let var_2 = -40338i;
    let var_3 = min(var_0.a, _wgslsmith_sub_u32(select(~(var_0.a ^ 1u), var_0.a, true), _wgslsmith_clamp_u32(var_0.a, 4294967295u, u_input.b)));
    let var_4 = vec4<bool>(false, true, true, true);
    return 871f;
}

fn func_2() -> Struct_5 {
    global0 = _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(false, true, true), -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 6966i), vec3<i32>(-8925i, -48880i, -35305i)))));
    let var_0 = _wgslsmith_sub_u32(~abs(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, u_input.c.x), u_input.d.x)), 25395u);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2156f))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1020f, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(201f, -1000f)) - -1000f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(155f, 1000f, true)) - _wgslsmith_f_op_f32(-211f * 619f)) * 984f)) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f * 143f)), 1363f));
    global0 = 1000f;
    return Struct_5(u_input.d.wxw, _wgslsmith_add_vec4_u32(u_input.c, ~(~select(vec4<u32>(4294967295u, 1u, var_0, var_0), vec4<u32>(14669u, u_input.b, var_0, var_0), vec4<bool>(true, true, false, var_1)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<u32>, arg_3: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3)))) * arg_3);
    var var_0 = func_2();
    global0 = _wgslsmith_f_op_f32(-arg_3);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, -1260f, -1383f, arg_0.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3, 1530f, 1406f, 262f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3, 830f, -647f, -422f)))))));
    var var_2 = var_0.b.wwz;
    return Struct_1(!select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), true), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 52362i;
    var var_1 = _wgslsmith_add_vec2_u32(u_input.d.yw, u_input.a | abs(u_input.d.xw));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1723f)));
    let var_3 = func_1(vec3<f32>(_wgslsmith_f_op_f32(1000f + 1569f), var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2), -235f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * var_2) - var_2))), var_1.x, ~u_input.c, var_2);
    let var_4 = Struct_2(!vec4<bool>(var_3.a.x, !any(vec4<bool>(true, var_3.a.x, var_3.a.x, var_3.a.x)), !select(true, var_3.a.x, var_3.a.x), all(var_3.a.xx)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1149f * _wgslsmith_f_op_f32(floor(var_2)))))), Struct_1(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1391f, var_2, var_2))), 47006u, vec4<u32>(61966u, var_1.x, 54903u, u_input.c.x) & u_input.d, var_2).a, var_0 ^ _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b, var_3.b, var_0), vec3<i32>(var_3.b, -1i, var_3.b)), 1456i)), all(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2, 409f, var_2)))), ~var_1.x, _wgslsmith_add_vec4_u32(u_input.c, _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, u_input.d.x, 1u, 1u))), _wgslsmith_f_op_f32(-var_2)).a.xz), ~vec3<u32>(var_1.x, ~(~4294967295u), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.e.x, vec2<u32>(555u >> (select(56453u, u_input.b, true) % 32u), countOneBits(var_1.x)) ^ ~max(select(vec2<u32>(u_input.a.x, var_1.x), vec2<u32>(u_input.b, 1u), var_3.a.x), vec2<u32>(u_input.a.x, 17721u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, _wgslsmith_div_f32(var_4.b, _wgslsmith_f_op_f32(abs(var_4.b))), var_4.b)), vec3<f32>(var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(411f + var_4.b) - var_4.b) - _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2 + _wgslsmith_div_f32(-607f, 191f))))), vec4<u32>(~95917u, 32941u, ~var_4.e.x >> (u_input.b % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(81565u), ~1u, firstTrailingBit(1u)), firstLeadingBit(u_input.c.zwy))));
}

