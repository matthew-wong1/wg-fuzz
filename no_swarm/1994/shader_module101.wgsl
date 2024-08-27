struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    let var_0 = arg_2;
    var var_1 = 0u;
    return -1163f;
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1293f)), -832f);
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(779f, 1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1117f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-221f, 305f), vec2<f32>(-1000f, -1000f)))))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_2, vec2<f32>(_wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.c, u_input.c, -9293i), vec4<bool>(false, false, true, false), var_2.x)), _wgslsmith_f_op_f32(floor(-285f)))), _wgslsmith_f_op_vec2_f32(sign(var_2)))));
    var var_4 = select(select(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), u_input.d >= u_input.d), vec2<bool>(!all(vec3<bool>(false, false, false)), all(vec4<bool>(true, true, true, true))), !all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false))), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(sign(679f)) <= _wgslsmith_f_op_f32(trunc(-1439f)));
    return vec3<bool>(var_4.x, false, var_4.x);
}

fn func_2() -> vec3<bool> {
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 55494u;
    var var_1 = 0u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -509f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(2147483647i, u_input.e, u_input.c), vec4<bool>(true, false, true, true), 1371f))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.c, -43599i, 12225i), vec4<bool>(true, true, false, true), -791f)), -365f, _wgslsmith_f_op_f32(trunc(-2441f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(593f, -243f, -356f))))))))));
    var_1 = u_input.d;
    let var_4 = Struct_4(!func_2());
    var_1 = 41940u;
    let var_5 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(var_3.x + var_3.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(492f + var_3.x), _wgslsmith_f_op_f32(-2210f + 1618f))), vec2<u32>(140170u, var_0), _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, u_input.e) | -vec2<i32>(4367i, -17720i), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 54704i), vec2<i32>(u_input.e, -34682i), vec2<i32>(u_input.c, 2147483647i)), -vec2<i32>(u_input.e, 3518i))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(2147483647i, u_input.c, u_input.e), -1i, u_input.e, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -1i, -2147483647i, 1i), vec4<i32>(-1i, u_input.c, 1i, u_input.c))), -vec2<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.c), -u_input.c)), u_input.c, true, Struct_1(var_3.xy, ~((vec2<u32>(0u, u_input.b.x) & vec2<u32>(u_input.a, 0u)) ^ u_input.b.xy), _wgslsmith_clamp_i32(-u_input.c, -u_input.e, -(~u_input.c)), i32(-1i) * -21282i, firstTrailingBit(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e, u_input.c), vec2<i32>(u_input.c, -1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zzz, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 31409u, _wgslsmith_sub_u32(0u, var_0)) << ((~u_input.b.wzw | min(vec3<u32>(u_input.b.x, var_0, 4294967295u), vec3<u32>(var_5.d.b.x, 4294967295u, var_5.d.b.x))) % vec3<u32>(32u)), u_input.b.zww), vec4<f32>(738f, _wgslsmith_div_f32(-823f, var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1332f * 1621f) + _wgslsmith_f_op_f32(select(-1153f, _wgslsmith_div_f32(-179f, var_3.x), var_5.c))), var_3.x), _wgslsmith_add_u32(var_5.a.b.x, ~_wgslsmith_sub_u32(var_0, 1u) & var_0), 1267f);
}

