struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32>;

var<private> global2: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>) -> Struct_3 {
    return Struct_3(Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(9730u, u_input.b, arg_0.x, u_input.d), abs(vec4<u32>(global0.a.x, global1.x, global0.a.x, global0.a.x))), ~4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.x), vec2<u32>(global0.a.x, global0.a.x)), 4294967295u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b))), global2.c, vec3<i32>(-global0.c.x, ~global0.d.x, u_input.e.x)), Struct_2(global2.a.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -393f), _wgslsmith_f_op_f32(-global2.b), -137f, global0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.b, global0.b, -843f, 1000f)))))), vec4<f32>(_wgslsmith_f_op_f32(abs(-873f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-1000f - global0.b), arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-862f, 489f)), 1f)))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    let var_0 = func_2((_wgslsmith_mult_vec4_u32(abs(global2.a), ~global2.a) ^ global0.a) & ~(~(~global0.a)), vec2<bool>(all(!vec2<bool>(false, arg_0.x)) & any(vec3<bool>(false, arg_0.x, false)), false));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    global0 = var_0.a;
    global2 = Struct_1(vec4<u32>(~17672u, global0.a.x, _wgslsmith_mult_u32(2281u, 4639u), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.c.x)))), var_0.c.x))), -vec2<i32>(i32(-1i) * -u_input.a, u_input.e.x), _wgslsmith_clamp_vec3_i32(var_0.a.d, vec3<i32>(firstLeadingBit(-2147483647i), _wgslsmith_dot_vec4_i32(-u_input.e, countOneBits(vec4<i32>(global0.c.x, 0i, var_0.a.c.x, -2147483647i))), -reverseBits(var_0.a.c.x)), vec3<i32>(-29926i, 0i, firstLeadingBit(global2.c.x))));
    var_0 = Struct_3(Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 0u, 4294967295u, 1u) & vec4<u32>(global1.x, var_0.a.a.x, global1.x, global0.a.x), vec4<u32>(29901u, global1.x, 1u, 0u) ^ vec4<u32>(4294967295u, 24295u, 1u, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - -1147f)), vec2<i32>(2147483647i, -27128i), -(~vec3<i32>(var_0.a.d.x, -26904i, global2.c.x))), Struct_2(global0.a.x), vec4<f32>(-345f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, 849f))), 183f, global2.b));
    var var_1 = 42965i != u_input.a;
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-(vec3<i32>(~var_0.a.c.x, 1i, max(1i, var_0.a.c.x)) >> (_wgslsmith_mod_vec3_u32(global0.a.wxx, ~global2.a.yzx) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(var_0.c.wy + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.c.xy)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b)))))), ~(vec4<i32>(~(-40667i), global0.c.x, global2.c.x, var_0.a.d.x) | u_input.e), _wgslsmith_f_op_vec2_f32(-var_0.c.yw), 36504u);
}

