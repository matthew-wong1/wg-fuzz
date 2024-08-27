struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1897f, -132f, 295f, 508f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1484f - -1000f)))))));
    let var_1 = ~reverseBits(vec4<u32>(1u, 0u, u_input.b.x, u_input.a.x) & u_input.b) | ~vec4<u32>(u_input.b.x | 57680u, min(u_input.a.x, 73330u) >> (30753u % 32u), _wgslsmith_mod_u32(u_input.a.x, countOneBits(u_input.b.x)), 44864u);
    var_0 = Struct_1(global0.x);
    var var_2 = vec2<bool>(all(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), true)), true);
    return func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * -1388f))), _wgslsmith_f_op_f32(-global0.x));
}

fn func_3(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = Struct_1(-1534f);
    var var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -838f))), 692f);
    let var_2 = func_2(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, -805f)) * _wgslsmith_div_f32(global0.x, global0.x)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1().a, _wgslsmith_f_op_f32(ceil(var_0.a)), var_2.a, arg_0.a)))));
    var_0 = arg_0;
    return StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)), vec4<i32>(u_input.c.x >> (u_input.b.x % 32u), 2147483647i, _wgslsmith_sub_i32(-u_input.c.x, ~(-5524i)), abs(u_input.d) << (1u % 32u)), vec4<i32>(firstLeadingBit(-4143i), ~_wgslsmith_clamp_i32(1i, u_input.c.x, 36139i), ~u_input.d, _wgslsmith_clamp_i32(select(u_input.d, 71478i, true), i32(-1i) * -50809i, -1i))), select(_wgslsmith_mult_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x), u_input.a), u_input.b.x), (u_input.a.x & 56210u) | _wgslsmith_div_u32(28911u, 3400u)), ~1u, all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), _wgslsmith_sub_vec3_i32(countOneBits(firstTrailingBit(vec3<i32>(u_input.c.x, -1i, 1i))) >> (max(vec3<u32>(u_input.b.x, 4294967295u, 0u), u_input.b.yzw) % vec3<u32>(32u)), ~(~(-vec3<i32>(u_input.d, u_input.d, u_input.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.x, global0.x, -1000f) - vec4<f32>(global0.x, 537f, global0.x, -465f));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1179f, _wgslsmith_f_op_f32(floor(-163f)), global0.x, _wgslsmith_f_op_f32(max(global0.x, global0.x))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(sign(1270f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) - global0.x) * _wgslsmith_f_op_f32(ceil(global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1000f)))))), -638f);
    var var_0 = vec2<bool>(firstTrailingBit(~(u_input.c.x >> (0u % 32u))) != -6838i, true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - global0.x), -405f));
    let x = u_input.a;
    s_output = func_3(func_1());
}

