struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> vec2<f32> {
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -529f))), arg_0.x), arg_0);
    let var_0 = Struct_2(select(countOneBits(u_input.a), vec4<i32>(4091i, u_input.a.x, 7450i, u_input.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.c < -2147483647i, false, false), vec4<bool>(true, global0.a >= global0.b.x, false, true))), 0u);
    var var_1 = Struct_4(_wgslsmith_sub_i32(36951i, var_0.a.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-547f * _wgslsmith_f_op_f32(-114f + global0.b.x)) + arg_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + -1255f), _wgslsmith_f_op_f32(global0.b.x - -379f)))), _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(i32(-1i) * -32523i, -34296i, -var_0.a.x, var_0.a.x)) & ~(vec4<i32>(-1i, u_input.a.x, 358i, u_input.c) << (vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u))), vec2<i32>(~var_0.a.x, 1i));
    var var_2 = vec3<bool>(!(!all(vec3<bool>(true, false, true))), false, (~var_0.a.x != -11923i) && (u_input.a.x >= var_1.c.x));
    var var_3 = _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, firstTrailingBit(_wgslsmith_mult_u32(var_0.b, var_0.b))), ~select(vec2<u32>(var_0.b ^ var_0.b, 1u), select(vec2<u32>(u_input.b, 14455u) & vec2<u32>(1u, 11251u), vec2<u32>(0u, var_0.b), true), !var_2.zx));
    return _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.a, _wgslsmith_f_op_f32(sign(-265f)))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_3(true, Struct_2(u_input.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, u_input.b, 1u, arg_0.x), vec4<u32>(1u, arg_0.x, 44355u, u_input.b), false), vec4<u32>(arg_0.x, arg_0.x, 1u, u_input.b) & vec4<u32>(0u, arg_0.x, 4294967295u, u_input.b)), _wgslsmith_mult_u32(arg_0.x, 26364u))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.b.x)), -1623f), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(262f, global0.a))))), vec4<i32>(firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_i32(-1i, u_input.c, 49776i))), countOneBits(1i | _wgslsmith_sub_i32(u_input.a.x, 0i)), _wgslsmith_mult_i32(select(0i, 1i, false), u_input.c) ^ 1i, -_wgslsmith_div_i32(reverseBits(u_input.c), 0i)), Struct_1(271f, global0.b));
    var var_1 = true;
    var_1 = true;
    global0 = var_0.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -922f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.c.b.x)), _wgslsmith_f_op_f32(269f - var_0.c.b.x))), _wgslsmith_f_op_f32(min(868f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(197f, global0.b.x))))))));
    return Struct_1(_wgslsmith_f_op_f32(step(-337f, -205f)), var_0.c.b);
}

fn func_1() -> Struct_2 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-115f * -1348f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b.x, 181f)) + _wgslsmith_f_op_f32(global0.a + global0.a)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-3042f, global0.a))))))));
    global0 = func_2(vec3<u32>(u_input.b, 31084u, ~u_input.b));
    var var_0 = ~(~_wgslsmith_div_vec4_i32(-vec4<i32>(11625i, u_input.c, u_input.a.x, u_input.a.x), u_input.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.b.x, -921f, 618f, -561f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1540f, global0.b.x, global0.b.x, global0.a)))))));
    let var_2 = Struct_2(vec4<i32>(-var_0.x, 21463i, _wgslsmith_add_i32(0i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-1i, -2147483647i, u_input.a.x)), var_0.wwx ^ vec3<i32>(-15012i, 38387i, 7272i))), var_0.x), ~(~(~countOneBits(1u))));
    return Struct_2(vec4<i32>(-29900i, min(22506i, ~abs(u_input.a.x)), 1i, ~var_2.a.x), _wgslsmith_sub_u32(~10783u, ~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_f32(round(-1000f)), global0.b);
    global0 = Struct_1(-1264f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -427f)), global0.b.x) * vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(sign(global0.a))))));
    var var_0 = Struct_3(true, func_1(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -148f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(global0.b))))))), vec4<i32>(u_input.c, -countOneBits(2147483647i) >> (0u % 32u), -(~u_input.a.x), firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 91167i), u_input.a, u_input.a), firstLeadingBit(u_input.a)))), func_2(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(52822u, u_input.b, 4294967295u), vec3<u32>(4294967295u, u_input.b, 1u)), firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 4294967295u))), u_input.b, u_input.b)));
    global0 = var_0.e;
    global0 = var_0.c;
    global0 = func_2(~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(7645u, 52071u, 83704u), vec3<u32>(17181u, 4294967295u, var_0.b.b), ~vec3<u32>(6180u, 0u, var_0.b.b))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_dot_vec4_i32(~var_0.d | _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -2147483647i, -1i, -53328i), u_input.a, vec4<i32>(var_0.d.x, var_0.d.x, u_input.c, -6754i)), u_input.a)), u_input.a.xw);
}

