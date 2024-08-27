struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1u, vec3<f32>(1006f, -2055f, 1473f), 2147483647i), Struct_1(16385u, vec3<f32>(172f, -610f, -349f), i32(-2147483648)));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(Struct_1(~firstLeadingBit(1u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.b.x, -1255f, 1039f) - global0.a.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-646f, global0.b.b.x, 1819f))), vec3<f32>(1468f, global0.b.b.x, -594f))), u_input.b.x), global0.b);
    global0 = Struct_2(global0.b, global0.b);
    var var_0 = Struct_2(Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.a, 0u, 4294967295u, u_input.d.x), vec4<u32>(global0.a.a, global0.a.a, global0.a.a, global0.a.a)), 1u) ^ _wgslsmith_mult_u32(1u, 61171u), global0.b.b, -1i), global0.b);
    let var_1 = var_0.b;
    let var_2 = ~(~global0.b.a);
    return Struct_2(var_0.b, Struct_1(~(~u_input.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.b)), var_0.a.c));
}

fn func_3() -> Struct_1 {
    global0 = Struct_2(Struct_1(~(~46621u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.a.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.b.x, 1078f, global0.b.b.x) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-981f, global0.a.b.x, 594f)))), vec3<bool>(true, true, true))), 27786i), Struct_1(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(31036u, global0.a.a)), u_input.d.ww), global0.a.b, global0.b.c));
    let var_0 = max(vec3<i32>(_wgslsmith_div_i32(~(~u_input.a.x), -1i), u_input.e, ~(u_input.c | (global0.a.c & u_input.e))), max(countOneBits(-vec3<i32>(1i, u_input.e, u_input.c)), abs(vec3<i32>(u_input.b.x ^ 1i, 1i, 2147483647i))));
    global0 = func_2();
    var var_1 = countOneBits(reverseBits(var_0.x));
    var var_2 = vec2<i32>(reverseBits(_wgslsmith_sub_i32((-1i >> (u_input.d.x % 32u)) ^ u_input.c, 38867i)), reverseBits(_wgslsmith_div_i32(var_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, -41465i, 2147483647i), var_0), reverseBits(vec3<i32>(global0.a.c, -1i, -23696i))))));
    return func_2().a;
}

fn func_1() -> Struct_1 {
    var var_0 = 919f;
    global0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.a.b, global0.b.b, vec3<bool>(false, true, false))))), _wgslsmith_f_op_vec3_f32(-global0.a.b))));
    var_0 = var_1.x;
    var_0 = var_1.x;
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(Struct_1(global0.a.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.a.b.x), _wgslsmith_div_f32(global0.b.b.x, -1278f), _wgslsmith_f_op_f32(360f - global0.b.b.x))), 0i), func_1());
    let var_0 = Struct_3(global0.b.b.zx, func_2(), select(abs(u_input.d), u_input.d, select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(false, true, false, false), any(vec2<bool>(false, false))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true), true))));
    let var_1 = var_0;
    let var_2 = max(~min(vec3<u32>(0u, ~65520u, var_0.c.x), firstTrailingBit(var_1.c.wyw)), countOneBits(~vec3<u32>(u_input.d.x, 0u, func_2().a.a)));
    let var_3 = func_1();
    global0 = func_2();
    let var_4 = var_1.b;
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(global0.a.c, var_4.a.c), var_0.b.b.c, ~(-1i))), ~(-1i), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false))), vec4<u32>(4294967295u, _wgslsmith_add_u32(abs(reverseBits(54654u)), global0.a.a), u_input.d.x, var_1.c.x));
}

