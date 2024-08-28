struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5>;

var<private> global1: array<Struct_1, 19>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(0u, vec4<i32>(-1i, 1i, 1i, 2147483647i), 1u, -1232f), Struct_1(0u, vec4<i32>(1i, -17584i, 9005i, 1i), 0u, 2693f), Struct_1(1u, vec4<i32>(0i, 7849i, 18861i, 5695i), 4294967295u, -343f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>) -> vec4<i32> {
    var var_0 = all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)) || (_wgslsmith_add_u32(_wgslsmith_add_u32(firstTrailingBit(u_input.b), ~u_input.b), arg_0.x) == 134280u);
    let var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(~firstTrailingBit(vec4<u32>(u_input.e, arg_0.x, u_input.e, arg_0.x))), _wgslsmith_add_vec4_u32(vec4<u32>(37037u, 4294967295u, arg_0.x, _wgslsmith_add_u32(31696u, u_input.e)), ~(arg_0 & arg_0))), u_input.b);
    var var_2 = vec2<bool>(all(vec3<bool>(false, any(vec4<bool>(true, true, true, true)), true)), true);
    global2 = array<Struct_1, 3>();
    let var_3 = var_2.x;
    return countOneBits(-vec4<i32>(countOneBits(u_input.c), -(~u_input.c), abs(37672i), abs(u_input.c ^ -1i)));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-502f - _wgslsmith_f_op_f32(max(-1000f, -614f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1214f - 1000f), _wgslsmith_f_op_f32(floor(1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -625f)))));
    var var_1 = Struct_1(_wgslsmith_mod_u32((4294967295u >> (u_input.a % 32u)) & ~u_input.d, arg_1.x << ((u_input.d | 13010u) % 32u)) >> (_wgslsmith_add_u32(abs(reverseBits(arg_1.x)), ~(~arg_1.x)) % 32u), firstTrailingBit(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c), -vec4<i32>(u_input.c, 1i, u_input.c, u_input.c)), -func_3(vec4<u32>(4294967295u, u_input.e, arg_1.x, 2116u)))), ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1914f + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-604f, -407f))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * _wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1000f)))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_1.d)), -546f)), -1113f, var_1.d)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(var_1.d, var_1.d, var_1.d < var_1.d)), _wgslsmith_div_f32(var_1.d, 104f), -1000f)));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    let var_0 = arg_0.zy;
    let var_1 = global2[_wgslsmith_index_u32(arg_1, 3u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2(all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), vec2<u32>(var_0.x, u_input.a) << (~arg_0.yy % vec2<u32>(32u))))));
    let var_3 = Struct_1(countOneBits(1u) << (min(~var_1.a, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(57184u, 0u), vec2<u32>(var_1.a, arg_0.x)))) % 32u), firstTrailingBit(vec4<i32>(u_input.c, firstTrailingBit(u_input.c) & ~(-17035i), abs(47897i), -_wgslsmith_sub_i32(-4184i, u_input.c))), _wgslsmith_div_u32(~(~u_input.e), _wgslsmith_dot_vec3_u32(~arg_0, arg_0)), -714f);
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(f32(-1f) * -189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(234f + var_3.d))), var_3.d)))));
    return Struct_1(u_input.d, var_3.b, var_1.c, -580f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> StorageBuffer {
    global2 = array<Struct_1, 3>();
    var var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -183f) + _wgslsmith_f_op_f32(1086f + _wgslsmith_f_op_f32(round(arg_0.d)))), _wgslsmith_f_op_f32(f32(-1f) * -855f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-826f, _wgslsmith_div_f32(-861f, -116f)))))));
    global2 = array<Struct_1, 3>();
    global0 = array<vec3<i32>, 5>();
    let var_1 = vec2<bool>(!any(vec3<bool>(true, true, true)), all(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), (arg_1.c > 4294967295u) & select(false, false, true))));
    return StorageBuffer(countOneBits(firstTrailingBit(arg_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(vec3<u32>(_wgslsmith_mod_u32(1u, u_input.a) << (_wgslsmith_div_u32(25480u, 1u) % 32u), _wgslsmith_add_u32(u_input.b, 4294967295u) ^ ~0u, (u_input.d << (u_input.a % 32u)) | max(10989u, 64054u)), ~29178u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(803f + -146f))), Struct_1(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.e), vec3<u32>(u_input.b, u_input.b, u_input.d))), ~((vec4<i32>(u_input.c, u_input.c, u_input.c, 1i) | vec4<i32>(34481i, u_input.c, 85010i, 1i)) & vec4<i32>(0i, -7477i, u_input.c, u_input.c)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, u_input.b)), ~vec2<u32>(u_input.b, 2829u)), min(u_input.b, _wgslsmith_clamp_u32(29627u, u_input.e, 82388u)), u_input.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f + -2460f)))), 17956u);
}

