struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1227f;

var<private> global1: f32 = 1217f;

var<private> global2: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = !arg_0;
    return Struct_1(i32(-1i) * -1i);
}

fn func_1(arg_0: u32) -> Struct_1 {
    return func_2(vec4<bool>(!(~(-17084i) >= u_input.a), true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), false), Struct_1(-49961i), Struct_1(countOneBits(-2147483647i)));
}

fn func_3(arg_0: vec2<bool>) -> vec3<f32> {
    var var_0 = reverseBits(~28041i);
    global2 = countOneBits(1u);
    var var_1 = -2270f;
    let var_2 = -vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 40736i), vec3<i32>(1i, 1587i, -2147483647i)), ~1i);
    var var_3 = vec3<bool>(false, arg_0.x, true);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2002f, _wgslsmith_f_op_f32(1000f + 723f))) * 2608f), -454f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1454f) - _wgslsmith_f_op_f32(abs(109f))) - 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.a;
    let var_1 = Struct_3(Struct_2(func_1(7802u), Struct_1(u_input.a & ~32986i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))) * _wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(true, true))))), 758f == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(747f - 1270f)))), Struct_2(Struct_1(_wgslsmith_div_i32(u_input.a >> (37347u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-47662i, u_input.a)))), func_1(~18927u)));
    var var_2 = ~_wgslsmith_mod_vec4_i32(~(-abs(vec4<i32>(u_input.a, 2147483647i, 1846i, 2147483647i))), select(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 18014i, 11738i), vec4<i32>(var_1.a.b.a, u_input.a, var_1.d.b.a, -13771i)), -vec4<i32>(-1i, -1629i, u_input.a, -2147483647i)), -(vec4<i32>(2147483647i, var_1.d.b.a, 1i, u_input.a) >> (vec4<u32>(u_input.b, 24212u, u_input.b, u_input.b) % vec4<u32>(32u))), vec4<bool>(false, false, var_1.c, true)));
    var_2 = max(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_1.d.b.a, -58790i, var_2.x) >> (vec4<u32>(286u, u_input.b, 1u, 8739u) % vec4<u32>(32u)), (vec4<i32>(-29240i, 873i, -11008i, -1i) ^ vec4<i32>(u_input.a, var_1.a.b.a, var_2.x, var_2.x)) >> (~vec4<u32>(u_input.b, u_input.b, 1u, u_input.b) % vec4<u32>(32u))), ~(-vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)) << (~(~vec4<u32>(0u, u_input.b, 4294967295u, u_input.b)) % vec4<u32>(32u))), ~countOneBits(vec4<i32>(var_1.d.b.a | 0i, -2147483647i, var_2.x, var_1.a.b.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-983f, var_1.b.x, false))))), var_1.b.x), var_1.b.x, vec4<i32>(var_2.x, _wgslsmith_dot_vec3_i32(~var_2.xxy, var_2.wwx), max(var_1.a.a.a, -var_2.x), ~var_1.d.b.a), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1460f - var_1.b.x) + var_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1115f, _wgslsmith_f_op_f32(-1324f - -1273f)) * _wgslsmith_f_op_f32(trunc(-1648f))), _wgslsmith_f_op_f32(step(var_1.b.x, -363f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))));
}

