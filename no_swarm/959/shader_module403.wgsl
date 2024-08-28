struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = all(!vec4<bool>(all(select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, false), arg_1)), any(vec2<bool>(true, arg_1)) | arg_1, _wgslsmith_div_u32(u_input.e, arg_3.a.a.x) <= (0u >> (arg_3.a.a.x % 32u)), any(vec2<bool>(true, true))));
    let var_1 = u_input.b.x;
    let var_2 = Struct_1(~vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(0u, arg_3.a.a.x, arg_2, arg_3.a.a.x)) | _wgslsmith_sub_u32(u_input.e, arg_2), 1u, ~u_input.e));
    var var_3 = u_input.b;
    var_3 = u_input.b;
    return Struct_3(Struct_1(~_wgslsmith_sub_vec3_u32(~var_2.a, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, 48930u, 16316u), vec3<u32>(u_input.d.x, 31741u, u_input.d.x)))));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(439f, 225f, 2179f), vec3<f32>(964f, -550f, -1867f))) - vec3<f32>(-375f, 1316f, 421f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-720f, 1000f, 1536f)))))), true))));
    var var_1 = vec3<i32>(u_input.a.x, abs(~u_input.c), _wgslsmith_sub_i32(~(2147483647i >> (~arg_0.a.a.x % 32u)), _wgslsmith_dot_vec2_i32(u_input.b.yy, reverseBits(vec2<i32>(u_input.a.x, -1i)))));
    var_1 = vec3<i32>(~var_1.x, -(~u_input.c), _wgslsmith_clamp_i32(-_wgslsmith_add_i32(var_1.x, 26192i) >> (~countOneBits(4294967295u) % 32u), u_input.a.x, -1i));
    return var_0;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3(func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-149f + -1000f)), -1399f, _wgslsmith_f_op_f32(-1f)), !all(vec2<bool>(true, true)), 1u, Struct_3(Struct_1(u_input.d.yxy)))));
    let var_1 = Struct_1(~abs(u_input.d.xxx));
    return _wgslsmith_dot_vec4_u32(abs(vec4<u32>(~_wgslsmith_mult_u32(4294967295u, var_1.a.x), firstLeadingBit(1u), _wgslsmith_div_u32(53547u, firstLeadingBit(var_1.a.x)), ~u_input.d.x)), firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(0u, 1u), _wgslsmith_div_u32(var_1.a.x, u_input.e), abs(var_1.a.x), _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)) >> (vec4<u32>(15835u, u_input.e ^ 41957u, ~4294967295u, ~u_input.e) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~2147483647i;
    var var_1 = 1288f;
    var var_2 = ~(~151016u) > _wgslsmith_add_u32(func_1(), u_input.d.x);
    var_2 = !(!(-1152f <= _wgslsmith_f_op_f32(floor(-491f))));
    var var_3 = _wgslsmith_mod_vec2_i32(countOneBits(firstLeadingBit(u_input.a)), -select(u_input.a, u_input.b.xz | abs(vec2<i32>(var_0, -1i)), true));
    var_1 = 504f;
    let var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

