struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> bool {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1873f)), !all(vec4<bool>(false, false, true, false)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1324f) * _wgslsmith_div_f32(-440f, -900f)), -1000f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_2(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1897i) & firstTrailingBit(vec2<i32>(2874i, 1i)), abs(-vec2<i32>(-5388i, -54989i))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(28106i, 2147483647i), vec2<i32>(-2147483647i, -44093i)), -32436i)), Struct_1(!any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true))));
    return vec3<i32>(var_0.a.x, ~(-1i), var_0.a.x) >> (max(~min(~vec3<u32>(0u, u_input.a, 22592u), vec3<u32>(u_input.a, 61596u, u_input.a) | vec3<u32>(u_input.a, u_input.a, 0u)), vec3<u32>(1u | ~u_input.a, ~1u, ~(~1u))) % vec3<u32>(32u));
}

fn func_1(arg_0: f32) -> vec2<u32> {
    let var_0 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !vec4<bool>(true, true, true, func_2())));
    let var_1 = func_3();
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-592f)), _wgslsmith_f_op_f32(arg_0 - -512f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(round(726f)), _wgslsmith_f_op_f32(abs(1546f))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))));
    let var_3 = Struct_1(all(vec3<bool>(true, all(vec4<bool>(true, var_0, var_0, false)), true)));
    let var_4 = Struct_2(vec2<i32>(2147483647i, _wgslsmith_sub_i32(var_1.x, abs(max(2147483647i, var_1.x)))), Struct_1(any(!(!vec3<bool>(var_3.a, true, var_3.a)))));
    return ~min(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, u_input.a)) ^ ~firstTrailingBit(vec2<u32>(u_input.a, u_input.a)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(27063u, 12994u), ~vec2<u32>(1u, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -320f;
    var var_1 = _wgslsmith_sub_u32(4294967295u, 38229u);
    var_1 = 3774u;
    var var_2 = _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 9750u)), func_1(_wgslsmith_f_op_f32(-var_0))), ~abs(select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a), true)) << ((~vec2<u32>(u_input.a, 49030u) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_2 = ~_wgslsmith_div_vec2_u32(vec2<u32>(var_2.x, u_input.a), ~countOneBits(vec2<u32>(var_2.x, 0u)));
    var_2 = vec2<u32>(_wgslsmith_mod_u32(u_input.a, _wgslsmith_mod_u32(var_2.x, ~min(49772u, 68792u))), ~func_1(var_0).x ^ u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -280f) * vec2<f32>(var_0, var_0))) * vec2<f32>(144f, var_0))), firstTrailingBit(~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 24490u), vec2<u32>(13525u, var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1814f - var_0))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-409f, -1018f, var_0, -1112f)) - vec4<f32>(var_0, _wgslsmith_f_op_f32(floor(var_0)), -838f, _wgslsmith_f_op_f32(877f - -600f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(var_0 * var_0), var_0, _wgslsmith_f_op_f32(step(1715f, -1771f)), -989f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(ceil(-558f))));
}

