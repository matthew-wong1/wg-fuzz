struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(1f)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-244f - 1800f) - _wgslsmith_f_op_f32(-1537f + -1000f)) - _wgslsmith_f_op_f32(abs(-1124f))), _wgslsmith_f_op_f32(-1f));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(159f)) * -244f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1830f + -273f), _wgslsmith_f_op_f32(round(-1746f))))))));
    let var_2 = Struct_2(74880u);
    var var_3 = countOneBits(min(~(vec3<u32>(u_input.a, 31119u, 0u) & ~vec3<u32>(var_2.a, var_2.a, 4294967295u)), abs(~(vec3<u32>(var_2.a, 0u, 44712u) ^ vec3<u32>(0u, 1u, 4294967295u)))));
    var var_4 = 1i <= ~min(54982i, ~u_input.b);
    return -min(~vec4<i32>(~u_input.d, abs(u_input.c), u_input.c, -36070i << (var_3.x % 32u)), vec4<i32>(45096i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c, -16958i, u_input.c, -35856i)), ~vec4<i32>(1i, -26065i, u_input.c, 24646i)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(34664i, u_input.c, u_input.b), u_input.d >> (u_input.a % 32u), u_input.c), -1i));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = select(u_input.a, firstTrailingBit(1u), any(vec2<bool>(true, any(vec3<bool>(true, false, false))))) | 1u;
    var var_1 = vec3<i32>(reverseBits(firstTrailingBit(-31161i)), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.b >> (7634u % 32u), 1i, _wgslsmith_div_i32(u_input.d, 0i), _wgslsmith_sub_i32(u_input.c, 1i))), func_3()), -17409i);
    let var_2 = ~(~_wgslsmith_sub_u32(1u, abs(~u_input.a)));
    var var_3 = !vec3<bool>(false & (countOneBits(var_2) < select(4294967295u, 4294967295u, true)), true, _wgslsmith_f_op_f32(abs(-1117f)) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(-493f, -561f) - _wgslsmith_f_op_f32(floor(347f))));
    var var_4 = Struct_1(_wgslsmith_div_vec3_u32(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_0.a, 37267u) | vec3<u32>(18337u, u_input.a, 41995u), ~vec3<u32>(u_input.a, 4294967295u, var_2), vec3<u32>(22137u, u_input.a, 57764u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_2, 1u, u_input.a), vec3<u32>(var_2, var_2, 56075u)) ^ select(vec3<u32>(44587u, 40271u, u_input.a), vec3<u32>(arg_0.a, arg_0.a, 0u), vec3<bool>(false, var_3.x, false))), ~(~select(vec3<u32>(71057u, u_input.a, 1035u), vec3<u32>(var_2, arg_0.a, arg_0.a), var_3.x))), !vec3<bool>(all(vec3<bool>(var_3.x, var_3.x, var_3.x)) || all(vec4<bool>(false, false, var_3.x, var_3.x)), var_3.x, var_3.x));
    return var_2;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> f32 {
    let var_0 = firstTrailingBit(~(((vec3<i32>(-1i, u_input.c, arg_0.x) >> (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u))) & min(vec3<i32>(-2147483647i, -23335i, -2147483647i), vec3<i32>(u_input.c, arg_0.x, 11841i))) >> ((~vec3<u32>(arg_1, 11376u, 1u) & select(vec3<u32>(u_input.a, 19081u, 0u), vec3<u32>(652u, 4294967295u, arg_1), true)) % vec3<u32>(32u))));
    var var_1 = Struct_1(~(~vec3<u32>(func_2(Struct_2(arg_1)), 4294967295u, 4082u)), !vec3<bool>(true, true, !any(vec3<bool>(true, false, true))));
    var_1 = Struct_1(~(~vec3<u32>(~1u, ~var_1.a.x, 24999u)), select(var_1.b, var_1.b, var_1.b));
    let var_2 = reverseBits(-vec3<i32>(11331i, var_0.x, 1i & arg_0.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(344f, 1331f), vec2<f32>(-1992f, -831f)))))) + vec2<f32>(1f, 1f)));
    return -340f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i >> (0u % 32u);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-418f - _wgslsmith_f_op_f32(-1548f - -2226f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(vec2<i32>(40979i, u_input.b), 80098u)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1031f + 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(355f - -1605f), _wgslsmith_div_f32(-1036f, -400f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(215f, -1092f, 1745f), vec3<f32>(1664f, -1165f, 2027f), vec3<bool>(false, false, true)))))) - vec3<f32>(_wgslsmith_f_op_f32(-932f * _wgslsmith_f_op_f32(select(-515f, 466f, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1244f), _wgslsmith_f_op_f32(-1173f - 372f))), _wgslsmith_f_op_f32(f32(-1f) * -703f))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x);
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2111f))) - _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -932f)))), false)));
    let var_3 = false;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(var_1)), var_1)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 1229f, var_1.x), var_1), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(1664f, 562f, 1009f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -398f, var_1.x)))), var_1)));
    let var_5 = _wgslsmith_sub_u32(u_input.a, ~0u);
    var var_6 = vec2<i32>(_wgslsmith_mod_i32(u_input.b, firstLeadingBit(reverseBits(u_input.d))) | u_input.b, 29616i);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, abs(var_5) ^ var_5, countOneBits(-max(vec4<i32>(var_6.x, u_input.c, -63188i, u_input.d), vec4<i32>(u_input.d, -3734i, var_6.x, u_input.d)) >> (~vec4<u32>(var_5, var_5, u_input.a, 4294967295u) % vec4<u32>(32u))));
}

