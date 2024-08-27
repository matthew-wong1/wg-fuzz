struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<i32>(-24662i, -1i), 1u);

var<private> global1: Struct_4 = Struct_4(vec2<i32>(1i, -30166i), 1u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> vec2<i32> {
    var var_0 = Struct_2(vec4<u32>(~u_input.e, arg_1 >> (46253u % 32u), ~_wgslsmith_sub_u32(1u, firstTrailingBit(1u)), 0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(210f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-797f)))))));
    global0 = Struct_4(_wgslsmith_sub_vec2_i32(global1.a, arg_0.a), 1u);
    var var_1 = arg_0;
    let var_2 = arg_0;
    var_0 = Struct_2(vec4<u32>(var_2.b, max(abs(3680u), 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 46021u, u_input.e), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.b, var_0.a.x, 78327u, global1.b), var_0.a)), arg_0.b) ^ reverseBits(~max(vec4<u32>(52892u, 0u, arg_1, var_0.a.x), var_0.a)), _wgslsmith_f_op_vec3_f32(step(var_0.b, var_0.b)));
    return arg_0.a;
}

fn func_2() -> vec3<u32> {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(0i, abs(0i)), vec2<i32>(global0.a.x, u_input.c));
    global1 = Struct_4(~(global1.a >> (vec2<u32>(global1.b, u_input.e) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(-func_3(Struct_4(global0.a, u_input.e), 1u), -vec2<i32>(u_input.c, 1i) >> (abs(vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))), _wgslsmith_add_u32(8634u, abs(1u)));
    var var_1 = any(select(vec2<bool>(true, true), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), 1i >= u_input.b));
    global0 = Struct_4(min(-firstTrailingBit(vec2<i32>(global0.a.x, global0.a.x)), global1.a), countOneBits(~(countOneBits(u_input.a) << (_wgslsmith_dot_vec4_u32(vec4<u32>(5544u, 4294967295u, u_input.e, u_input.e), vec4<u32>(global1.b, 1u, global0.b, 16406u)) % 32u))));
    return abs(~(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(69501u, 62989u, global0.b), vec3<u32>(1u, 41419u, 19128u)), ~vec3<u32>(1u, 1u, global0.b)) | vec3<u32>(~global0.b, u_input.e, u_input.e)));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_4 {
    let var_0 = reverseBits(_wgslsmith_mult_i32(min(-1i, 1i), 0i) << (0u % 32u));
    global1 = Struct_4(vec2<i32>(var_0, _wgslsmith_div_i32(~global0.a.x, -2147483647i)), select(~0u, 1u, !(!(arg_3.b.x > arg_1))));
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(~(~4294967295u), u_input.e), _wgslsmith_clamp_u32((reverseBits(global1.b) ^ global0.b) ^ 0u, 53313u, global0.b));
    global1 = Struct_4(vec2<i32>(-2147483647i, ~(-62683i)), ~firstTrailingBit(1u));
    let var_2 = vec4<bool>(arg_3.a.x, var_0 > (-_wgslsmith_clamp_i32(-22183i, global0.a.x, global1.a.x) & 30063i), arg_3.a.x, arg_3.a.x);
    return Struct_4(reverseBits(countOneBits(global1.a)), 7073u);
}

fn func_1() -> bool {
    global0 = func_4(-785f, _wgslsmith_f_op_f32(ceil(-264f)), countOneBits(_wgslsmith_mod_vec3_u32(func_2(), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 4294967295u, global0.b)), vec3<u32>(1u, 9330u, 4294967295u)))), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-194f, 1326f, 420f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(823f, -1944f, 372f)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false))))));
    return select(all(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(1083f, _wgslsmith_f_op_f32(f32(-1f) * -1526f));
    global1 = Struct_4(~global0.a ^ global1.a, (4294967295u | (u_input.d ^ ~27701u)) << (min(~countOneBits(global1.b), u_input.d) % 32u));
    let var_1 = func_1();
    var var_2 = vec2<bool>(true, var_1);
    let var_3 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1869f, 1603f, var_2.x)), -1100f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-593f + -1091f) * -1000f))))), ~min(max(max(vec4<u32>(global1.b, global1.b, 1u, 4294967295u), vec4<u32>(u_input.d, global1.b, 1u, 14679u)), vec4<u32>(1u, 30476u, 1u, 0u) >> (vec4<u32>(global0.b, global1.b, u_input.e, u_input.e) % vec4<u32>(32u))), ~(~vec4<u32>(global0.b, u_input.a, 0u, 0u))), global0.b, _wgslsmith_clamp_u32(global1.b, global1.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), ~(~vec2<u32>(1u, u_input.d)))));
}

