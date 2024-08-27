struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = arg_1;
    let var_1 = Struct_3(-min(-_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(arg_1.c, 0i, 52072i, var_0.b.x)), vec4<i32>(1i, -15679i, i32(-1i) * -16985i, ~arg_0.b.b.x)));
    var var_2 = arg_0.b;
    let var_3 = Struct_1(vec3<bool>(true, !arg_0.b.a.x, arg_2), -vec2<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.c.x, arg_0.b.b.x), vec2<i32>(u_input.b.x, -2147483647i), arg_1.a.x), ~var_0.b), _wgslsmith_clamp_i32(-1i, var_0.c, -45355i)), arg_0.b.c);
    let var_4 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(812f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(519f)) - _wgslsmith_f_op_f32(arg_0.a.x - -672f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1216f, _wgslsmith_f_op_f32(ceil(-1453f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.c)), arg_0.d)))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = vec2<u32>(_wgslsmith_div_u32(~_wgslsmith_sub_u32(4294967295u, ~u_input.a), u_input.a), ~(~(~u_input.a)) | u_input.a);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(476f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -794f), 293f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<f32>(1191f, -623f, 522f, -588f), Struct_1(vec3<bool>(true, false, true), u_input.c.wx, u_input.b.x), 505f, -689f), Struct_1(arg_0.xxz, u_input.b.wx, 9533i), arg_0.x))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(717f, 1361f)), _wgslsmith_f_op_f32(sign(1471f)))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(2427f, -790f))))), 1f, 458f);
    let var_2 = var_1.x;
    let var_3 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(min(var_1.x, -603f)));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(695f)), _wgslsmith_f_op_f32(max(var_3, -113f)), -1113f, 1193f)), vec4<f32>(670f, -182f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(600f, -979f)) * _wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1864f, var_1.x)) + -212f)), arg_0.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3, -695f, var_3, -1759f), vec4<f32>(var_3, 581f, var_3, var_1.x))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -396f), 1f, _wgslsmith_f_op_f32(var_1.x * -177f), _wgslsmith_f_op_f32(-var_3))) - vec4<f32>(_wgslsmith_f_op_f32(round(-759f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) * _wgslsmith_f_op_f32(ceil(566f))), -993f, var_3)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_3, -450f, 1229f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_1.x, 106f, var_3))))), Struct_1(arg_0.zzz, firstLeadingBit(vec2<i32>(-1i, u_input.b.x) & vec2<i32>(1i, u_input.c.x)) ^ select(_wgslsmith_clamp_vec2_i32(u_input.b.zy, vec2<i32>(-1i, u_input.c.x), u_input.c.zz), vec2<i32>(35881i, u_input.c.x), arg_0.wz), u_input.b.x), 300f, var_1.x);
}

fn func_1() -> u32 {
    var var_0 = func_2(select(vec4<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true)), true, !any(vec2<bool>(false, true)), true), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), any(vec4<bool>(false, true, false, true))), true), true));
    let var_1 = Struct_4(-29940i, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c)) - _wgslsmith_f_op_f32(max(729f, var_0.d)))))), vec3<f32>(var_0.c, var_0.a.x, var_0.d));
    let var_2 = _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1007f), _wgslsmith_f_op_f32(f32(-1f) * -301f), 2784f, var_1.c.x)), Struct_1(func_2(vec4<bool>(true, true, var_0.b.a.x, var_0.b.a.x)).b.a, _wgslsmith_div_vec2_i32(-vec2<i32>(var_1.a, 2147483647i), -u_input.c.zw), 2147483647i >> (u_input.a % 32u)), _wgslsmith_f_op_f32(trunc(-578f)), var_0.d), Struct_1(var_0.b.a, select(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), u_input.b.xy), -2147483647i), -_wgslsmith_add_vec2_i32(var_0.b.b, vec2<i32>(-2147483647i, -1i)), false || (var_0.b.a.x | true)), abs(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-623i, var_0.b.b.x)), var_0.b.b))), all(var_0.b.a.xz)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.a ^ (0u | _wgslsmith_add_u32(min(u_input.a, u_input.a), 1u)), _wgslsmith_div_u32(u_input.a, u_input.a), func_1());
    let var_1 = Struct_4(u_input.b.x | u_input.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1359f, _wgslsmith_f_op_f32(abs(-177f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-489f, -559f, -532f))), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -640f, -1083f), vec3<f32>(705f, -431f, -1800f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-906f, 233f, -1162f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-506f, -532f, -1000f))))));
    let var_2 = Struct_3(vec4<i32>(u_input.c.x, -(~(-2147483647i)), u_input.b.x, _wgslsmith_div_i32(~_wgslsmith_clamp_i32(var_1.a, var_1.a, 1i), ~(-66308i))));
    let var_3 = false;
    var_0 = select(countOneBits(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(var_0.x, 12846u, 0u) >> (vec3<u32>(47234u, u_input.a, 4294967295u) % vec3<u32>(32u)), select(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(var_0.x, u_input.a, var_0.x), vec3<bool>(var_3, false, var_3))), min(reverseBits(vec3<u32>(4294967295u, u_input.a, 1u)), firstLeadingBit(vec3<u32>(var_0.x, 16013u, u_input.a))), ~(~vec3<u32>(0u, 0u, var_0.x)))), vec3<u32>(u_input.a, u_input.a, var_0.x), false);
    var var_4 = var_0.xy;
    let var_5 = -265f;
    var_0 = ~(((~vec3<u32>(4294967295u, 9536u, var_0.x) & max(vec3<u32>(var_4.x, 51182u, var_0.x), vec3<u32>(u_input.a, 4294967295u, 16140u))) | _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(1u, 4294967295u, u_input.a)), ~vec3<u32>(u_input.a, 1u, u_input.a), ~vec3<u32>(var_4.x, var_4.x, 54215u))) & vec3<u32>(var_0.x, 4294967295u, 68419u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(!vec4<bool>(var_3, var_3, true, true)).c, var_5, _wgslsmith_f_op_f32(var_1.b - -1015f), _wgslsmith_f_op_f32(-func_2(vec4<bool>(var_3, var_3, true, true)).d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(ceil(var_1.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -250f) * _wgslsmith_f_op_f32(-var_1.c.x)), var_1.c);
}

