struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a), 40050i | min(arg_0.b, 0i));
    var var_1 = var_0;
    let var_2 = _wgslsmith_div_u32(u_input.c.x, max(_wgslsmith_mult_u32((u_input.b & 0u) | u_input.c.x, 34695u), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.c.xy, vec2<u32>(0u, u_input.b))), ~(u_input.a ^ vec2<u32>(39111u, u_input.a.x)))));
    let var_3 = true | (!(true | any(vec3<bool>(true, true, false))) && (false & !(1u > var_2)));
    var var_4 = Struct_1(var_1.a, ~55913i);
    return vec4<u32>(abs(u_input.b), u_input.b, u_input.c.x, countOneBits(abs(u_input.c.x)));
}

fn func_2(arg_0: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_sub_vec4_u32(~min(~func_3(Struct_1(-2342f, u_input.e)), ~(vec4<u32>(20562u, u_input.c.x, 4294967295u, 4294967295u) | vec4<u32>(0u, 1u, 65921u, 0u))), ~abs(~_wgslsmith_div_vec4_u32(vec4<u32>(12176u, 4294967295u, 12605u, u_input.b), vec4<u32>(u_input.b, u_input.b, 14639u, 6493u))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-1f), -6619i);
    let var_2 = 18838i;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-703f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -745f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a))))), _wgslsmith_f_op_f32(f32(-1f) * -508f)));
    let var_4 = Struct_2(~110677u);
    return func_3(var_1).yyx;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>) -> f32 {
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    var var_0 = !(arg_1.x && !((4294967295u | arg_0.x) == u_input.b));
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(abs(u_input.c), ~func_2(true)), 31339u, arg_0.x ^ u_input.c.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2141f, 1729f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -591f))), -881f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(155f, -319f, -727f, -513f), vec4<f32>(-117f, -1000f, 1133f, -506f))) - vec4<f32>(_wgslsmith_div_f32(-528f, -508f), -1340f, _wgslsmith_f_op_f32(-499f - 546f), _wgslsmith_f_op_f32(1028f + -1231f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.a.x, 0u, u_input.b, 1u), vec2<bool>(false, true))), 1000f, _wgslsmith_f_op_f32(116f + -257f), _wgslsmith_f_op_f32(trunc(-862f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -381f), _wgslsmith_f_op_f32(-449f - -1380f), -197f, _wgslsmith_f_op_f32(301f + -347f))), all(vec4<bool>(u_input.b >= 1u, true, true, true)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-1382f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-262f, -400f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -606f)), _wgslsmith_f_op_f32(-1111f - -635f))));
    var var_1 = var_0.x;
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_0.x, 636f, -1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(457f, 2306f, var_0.x, var_0.x) - vec4<f32>(193f, var_0.x, var_0.x, var_0.x))) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(step(-596f, -1098f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(reverseBits(u_input.d.xy)), ~(~(~u_input.b)) ^ _wgslsmith_add_u32(~(~u_input.c.x), firstTrailingBit(~348u)), 1i, _wgslsmith_dot_vec2_u32(select(reverseBits(u_input.c.yy), vec2<u32>(u_input.b, u_input.b), true), u_input.c.yy));
}

