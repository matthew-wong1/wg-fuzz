struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = -u_input.a ^ ~u_input.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -2121f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1561f, arg_1.x, true)) - -131f), arg_1.x)));
    var var_2 = vec2<i32>(27411i, -1i);
    var_2 = var_0.xy & vec2<i32>(-1i, -16116i);
    var var_3 = arg_2;
    return select(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true)), select(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -975f) > _wgslsmith_f_op_f32(select(-544f, var_1.x, false)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false))), select(vec2<bool>(any(vec3<bool>(false, false, true)), false), vec2<bool>(false, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), false)), true), !any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-442f, arg_1, arg_1, arg_1) - vec4<f32>(arg_1, arg_1, arg_1, arg_1)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1068f, arg_1, arg_1, 1423f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1073f, -1283f, arg_1, arg_1), vec4<f32>(arg_1, 1000f, 897f, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-665f, arg_1, arg_1, arg_1)), select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_3.x), vec4<bool>(arg_2.x, true, arg_3.x, false), arg_3.x))))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -1034f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -190f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1037f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1)) + var_0.x))), var_0.x);
    var var_1 = u_input.a;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f - _wgslsmith_f_op_f32(346f - _wgslsmith_f_op_f32(-var_0.x)))), -1165f, arg_1);
    var var_2 = ~_wgslsmith_mod_i32(reverseBits(_wgslsmith_dot_vec2_i32(u_input.a.xz, abs(vec2<i32>(-1i, -58137i)))), -1i);
    return i32(-1i) * -17621i;
}

fn func_2(arg_0: vec2<bool>) -> vec3<f32> {
    var var_0 = arg_0.x;
    var var_1 = min(~func_4(Struct_1(_wgslsmith_clamp_vec2_u32(u_input.d, vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.d.x, u_input.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -262f), select(!arg_0, func_3(0i, vec4<f32>(965f, -650f, -1068f, -334f), Struct_1(vec2<u32>(u_input.b, u_input.d.x))), !arg_0), select(select(vec4<bool>(true, true, true, arg_0.x), vec4<bool>(true, true, false, false), vec4<bool>(arg_0.x, true, false, arg_0.x)), !vec4<bool>(arg_0.x, arg_0.x, true, false), !arg_0.x)), 0i);
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-657f))));
    var var_4 = vec3<u32>(u_input.b, select(_wgslsmith_div_u32(~37393u, u_input.d.x), ~(180u >> (u_input.d.x % 32u)), all(vec4<bool>(true, arg_0.x, false, arg_0.x))), u_input.d.x) & (min(countOneBits(min(vec3<u32>(36671u, u_input.d.x, u_input.b), vec3<u32>(u_input.d.x, 1u, u_input.b))), firstLeadingBit(vec3<u32>(u_input.d.x, 62757u, 0u)) ^ abs(vec3<u32>(66983u, 24730u, 30604u))) << (vec3<u32>(abs(1u), ~u_input.d.x & 4294967295u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, 85600u, 1u, u_input.b)), firstTrailingBit(vec4<u32>(u_input.d.x, u_input.b, u_input.b, 0u)))) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 + var_3) - 1191f), var_3, -336f)))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<f32>, arg_3: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(true, !all(vec3<bool>(false, true, true)))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(423f, arg_2.x)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(arg_2, arg_2, vec3<bool>(true, true, true))))) - arg_2) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.x * 310f))), _wgslsmith_div_f32(arg_2.x, var_0.x))));
    let var_1 = Struct_1(reverseBits(~(u_input.d ^ _wgslsmith_mult_vec2_u32(arg_3, u_input.d))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.zz - arg_2.xz) + var_0.yy);
    let var_3 = u_input.d.x;
    return select(false, 28316u != var_1.a.x, !(!(!(u_input.b != 20221u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    var var_1 = var_0;
    var var_2 = vec4<bool>(true, any(vec2<bool>(true, select(false, true, true))) && func_1(any(vec3<bool>(true, true, true)), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, u_input.c), ~vec2<i32>(31661i, var_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(266f, -338f, -347f), vec3<f32>(-639f, 1344f, -786f), vec3<bool>(false, true, true)))), vec2<u32>(u_input.d.x, _wgslsmith_mod_u32(u_input.b, u_input.d.x))), false, true);
    let var_3 = reverseBits(reverseBits(_wgslsmith_div_vec4_i32(-(~vec4<i32>(1i, u_input.c, -5729i, -1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.a.x, u_input.c) >> (vec4<u32>(21993u, 29721u, 40281u, u_input.b) % vec4<u32>(32u)), vec4<i32>(var_0, var_0, 2147483647i, var_0)))));
    var_1 = -(2147483647i >> (u_input.b % 32u));
    var var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(215f, 1005f, true)), -177f) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-428f, 1000f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(517f, -3053f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-974f, -1764f)))))));
    let var_5 = Struct_1(vec2<u32>(u_input.d.x, u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(abs(~vec2<i32>(-2147483647i, -2147483647i) >> (~vec2<u32>(u_input.b, 8766u) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_clamp_i32(var_3.x, var_0 | var_0, 29286i), i32(-1i) * -44831i)), var_4.x);
}

