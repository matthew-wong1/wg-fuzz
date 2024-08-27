struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -842f;

var<private> global1: array<vec3<f32>, 8>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> i32 {
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(u_input.c, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.c, u_input.c), ~u_input.c)), 43759u, ~(1u >> (u_input.c % 32u)), ~_wgslsmith_add_u32(u_input.c, ~31601u & ~u_input.c));
    global1 = array<vec3<f32>, 8>();
    var var_1 = 5733i;
    var var_2 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, min(i32(-1i) * -2147483647i, u_input.b), ~(-1i), -8609i), vec4<i32>(-u_input.a, -51067i, firstLeadingBit(0i), -1i) & firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), vec4<i32>(u_input.b, 2147483647i, 40359i, u_input.a)))), firstLeadingBit(u_input.c), ~firstTrailingBit(-(~vec4<i32>(0i, -1i, -50250i, 36145i))), u_input.a, u_input.b);
    let var_3 = var_2.c ^ var_2.c;
    return var_2.c.x;
}

fn func_2() -> Struct_1 {
    return Struct_1(func_3(), _wgslsmith_clamp_u32(4294967295u, 17853u ^ (u_input.c ^ abs(u_input.c)), ~1u), select(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.b, u_input.b), -2147483647i, u_input.b), ~20033i, u_input.b, u_input.a), ~(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, 19393i, u_input.b, u_input.b), vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.b))), vec4<bool>(true, true, true, true)), ~u_input.b, func_3());
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> StorageBuffer {
    let var_0 = Struct_2(true);
    global1 = array<vec3<f32>, 8>();
    let var_1 = ~(~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.c, arg_1.x, 71445u, u_input.c)), ~(~vec4<u32>(arg_1.x, u_input.c, 23564u, u_input.c))));
    var var_2 = func_2();
    let var_3 = arg_0.a;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1058f, 1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(491f, -127f)))), vec2<f32>(_wgslsmith_f_op_f32(1f - -534f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-861f * 1206f) - _wgslsmith_f_op_f32(round(1930f)))), !vec2<bool>(arg_0.a, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1032f, -661f, _wgslsmith_f_op_f32(select(1000f, 377f, true)), _wgslsmith_f_op_f32(sign(-1000f))))), 1f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-143f, -2205f, 495f))), global1[_wgslsmith_index_u32(var_2.b ^ arg_1.x, 8u)]))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -160f)), -118f, _wgslsmith_div_f32(-875f, _wgslsmith_f_op_f32(-1244f - 1268f))), var_0.a && true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.b, 50745i, reverseBits(max(u_input.a, -9826i)));
    let x = u_input.a;
    s_output = func_1(Struct_2(false), vec3<u32>(firstTrailingBit(0u ^ max(30470u, u_input.c)), ~(~4294967295u), ~_wgslsmith_mod_u32(u_input.c, ~u_input.c)));
}

