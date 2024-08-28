struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>) -> bool {
    var var_0 = arg_0;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(617f))) - _wgslsmith_f_op_f32(f32(-1f) * -1078f)))) <= _wgslsmith_f_op_f32(f32(-1f) * -955f);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: bool, arg_3: vec2<i32>) -> i32 {
    var var_0 = Struct_1(!(all(vec4<bool>(true, false, false, false)) | func_3(Struct_2(arg_3.x), Struct_2(arg_3.x), ~u_input.a)));
    var_0 = Struct_1(all(arg_0) | any(select(vec3<bool>(arg_2, true, true), vec3<bool>(true, true, true), var_0.a)));
    var var_1 = Struct_2(-1i | max(-2147483647i, _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_3.x, arg_1.x), arg_3)));
    var var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1805f * 572f), _wgslsmith_f_op_f32(1121f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(502f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1282f * 1964f))), -538f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(784f * -1585f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_div_vec4_f32(vec4<f32>(-342f, 489f, 527f, -1828f), vec4<f32>(-823f, 423f, 417f, 609f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2145f, -189f, 723f, -1527f) + vec4<f32>(576f, 834f, 841f, 157f))))))));
    return var_1.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    let var_0 = ~select(vec4<u32>(~(~u_input.a.x), ~15897u, abs(countOneBits(50734u)), _wgslsmith_dot_vec3_u32(u_input.b.zxw >> (vec3<u32>(u_input.a.x, 21731u, 0u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(4294967295u, 4294967295u, 4294967295u)))), _wgslsmith_div_vec4_u32(vec4<u32>(~57218u, 1u, 0u, abs(u_input.b.x)), u_input.b), false);
    let var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(523f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(428f)) * 954f));
    let var_3 = _wgslsmith_sub_i32(arg_1.x, func_2(!vec2<bool>(arg_3, false), vec4<i32>(~(~arg_0.x), _wgslsmith_sub_i32(func_2(vec2<bool>(arg_3, true), vec4<i32>(arg_0.x, arg_2.a, 2147483647i, -1691i), false, vec2<i32>(arg_1.x, arg_2.a)), firstLeadingBit(arg_2.a)), 46456i, _wgslsmith_add_i32(1i, -arg_2.a)), true, arg_0.xx));
    return arg_2;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> StorageBuffer {
    let var_0 = func_4(abs(vec3<i32>(func_2(vec2<bool>(false, true), vec4<i32>(27493i, 22401i, 0i, 33677i), true, vec2<i32>(-68926i, 2147483647i)), -32593i, ~1i)) & -(~vec3<i32>(2217i, -14202i, 1i) >> (u_input.b.xyx % vec3<u32>(32u))), vec3<i32>(1i, _wgslsmith_dot_vec3_i32(select(-vec3<i32>(2147483647i, -5722i, 13083i), vec3<i32>(0i, 0i, 2147483647i), all(vec3<bool>(false, false, true))), _wgslsmith_add_vec3_i32(vec3<i32>(0i, -2147483647i, 51147i), vec3<i32>(2147483647i, 50194i, 33319i))), ~(_wgslsmith_sub_i32(-2147483647i, -62537i) >> (1u % 32u))), Struct_2(reverseBits(29490i)), !(all(vec3<bool>(true, false, false)) != true));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1718f)), 1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_0, -1800f)), _wgslsmith_f_op_f32(f32(-1f) * -1221f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -658f))), arg_0)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1312f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(303f, 260f)))))), arg_0, 1504f, _wgslsmith_f_op_f32(-1193f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-202f - arg_0) * _wgslsmith_f_op_f32(-arg_0)))), 500f != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0))))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1547f, var_1.x, 305f, -168f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2221f, var_1.x, 1785f, 2354f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(260f, 170f, arg_0, -168f) * vec4<f32>(var_1.x, arg_0, -1550f, arg_0))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-608f, arg_0, arg_0, arg_0))))))));
    var var_2 = all(select(vec2<bool>(true & all(vec4<bool>(true, true, false, false)), !all(vec4<bool>(false, true, true, true))), vec2<bool>(true, true), (true != (arg_0 < arg_0)) | select(true, true, false)));
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1380f) + _wgslsmith_f_op_f32(1713f + -1337f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-596f - 305f) * _wgslsmith_f_op_f32(abs(arg_0))), false)) >= 455f;
    return StorageBuffer(arg_1.x, var_0.a, ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a, var_0.a, -2147483647i), vec3<i32>(31080i, -2147483647i, 0i)) << (u_input.a % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-798f - 1421f), ~select(u_input.b, ~(u_input.b ^ vec4<u32>(u_input.b.x, u_input.c, u_input.c, 72340u)), vec4<bool>(true, true, true, true)));
}

