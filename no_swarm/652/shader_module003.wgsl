struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: Struct_3) -> i32 {
    var var_0 = arg_3.c.a;
    let var_1 = arg_2.xyw;
    var_0 = false;
    return ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(arg_2.zx, vec2<i32>(arg_2.x, -2147483647i))), ~firstLeadingBit(arg_3.c.b)), arg_3.c.b.x, countOneBits(arg_0));
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = -(~(-1i));
    var var_1 = Struct_3(abs(u_input.a.xwy), Struct_2(~reverseBits(select(u_input.a.xx, u_input.a.yz, false)), -906f), Struct_1(arg_0, _wgslsmith_mult_vec2_i32(~(vec2<i32>(-55552i, -4322i) << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))), firstLeadingBit(reverseBits(vec2<i32>(-36344i, -5014i)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-341f, -510f), _wgslsmith_div_f32(-750f, -515f), 279f, _wgslsmith_f_op_f32(1000f - -593f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(273f, 1361f, 1680f, -538f) - vec4<f32>(467f, -1000f, -1804f, -825f))), select(select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(false, true, false, false)), !vec4<bool>(false, arg_0, arg_0, false), select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, false, arg_0, arg_0)))))), Struct_2(abs(abs(select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, u_input.b), arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-242f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(634f, 888f, arg_0)))))));
    var var_2 = !select(vec3<bool>(false, !arg_0 == (53040u > u_input.b), func_3(17110i, u_input.a.yx, vec4<i32>(3154i, var_1.c.b.x, 36816i, var_1.c.b.x), Struct_3(vec3<u32>(91113u, u_input.b, 13689u), var_1.d, var_1.c, Struct_2(vec2<u32>(var_1.b.a.x, var_1.d.a.x), var_1.c.c.x))) >= var_1.c.b.x), !(!(!vec3<bool>(false, var_1.c.a, arg_0))), select(select(vec3<bool>(arg_0, true, var_1.c.a), !vec3<bool>(var_1.c.a, false, arg_0), true), !select(vec3<bool>(true, arg_0, var_1.c.a), vec3<bool>(true, false, var_1.c.a), arg_0), select(!vec3<bool>(false, var_1.c.a, false), vec3<bool>(arg_0, arg_0, true), arg_0)));
    var var_3 = Struct_2(~(~(~_wgslsmith_mod_vec2_u32(u_input.a.zw, vec2<u32>(41201u, u_input.a.x)))), -1000f);
    var var_4 = Struct_3(vec3<u32>(0u, var_3.a.x, ~u_input.a.x), Struct_2(countOneBits(u_input.a.wy), var_3.b), Struct_1(any(!vec3<bool>(false, arg_0, true)), vec2<i32>(max(-33801i ^ var_1.c.b.x, -1i), i32(-1i) * -var_1.c.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.c.c, vec4<f32>(297f, -1000f, var_1.c.c.x, var_3.b)) - vec4<f32>(var_3.b, -1459f, 2633f, 119f)) + var_1.c.c)), Struct_2(u_input.a.zz >> (var_3.a % vec2<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.c.c.x))), _wgslsmith_f_op_f32(sign(var_3.b)), !var_2.x))));
    return select(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-var_4.c.b.x, -1i), -2147483647i) << (var_4.a.x % 32u), i32(-1i) * -var_4.c.b.x, !(var_1.c.a == (var_1.b.a.x <= 4294967295u)) && var_4.c.a);
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_2(select(u_input.a.xx ^ ~vec2<u32>(55025u, u_input.a.x), _wgslsmith_div_vec2_u32(abs(u_input.a.yy), select(vec2<u32>(37435u, u_input.b), vec2<u32>(u_input.b, u_input.a.x), vec2<bool>(false, true))), vec2<bool>(true, true)) << (~u_input.a.xx % vec2<u32>(32u)), _wgslsmith_f_op_f32(1389f * _wgslsmith_f_op_f32(ceil(1257f))));
    let var_1 = _wgslsmith_clamp_i32(~(-firstLeadingBit(firstTrailingBit(10250i))), firstLeadingBit(-34500i), func_2(all(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))));
    var_0 = Struct_2(reverseBits(~_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, 0u)), ~vec2<u32>(u_input.a.x, 15375u))), _wgslsmith_f_op_f32(-var_0.b));
    var_0 = Struct_2(vec2<u32>(1u, countOneBits(reverseBits(~50418u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.b)), var_0.b));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(step(-1355f, var_0.b)), -616f);
    return !select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), var_1 > var_1), vec2<bool>(all(vec2<bool>(true, false)), false)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec3<bool>(any(func_1()), true, -2147483647i == _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -33906i, 2147483647i, 0i), vec4<i32>(47010i, 26066i, -62378i, 24730i))));
    let var_1 = select(select(vec3<bool>(false, true, false), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), vec3<bool>(false, true, func_1().x), all(vec2<bool>(false, false))), true), vec3<bool>(select(all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), true, true), true, func_1().x), select(!all(vec2<bool>(false, true)) || true, true, !(_wgslsmith_f_op_f32(step(-478f, 298f)) > 1f)));
    var_0 = !var_1.x;
    let var_2 = select(!var_1, !(!vec3<bool>(var_1.x, true, all(var_1))), true);
    var var_3 = Struct_3(u_input.a.wyw, Struct_2(u_input.a.xy, 1117f), Struct_1(true, -vec2<i32>(46066i << (u_input.b % 32u), -55204i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(405f, -752f, -1026f, 543f) * vec4<f32>(929f, -356f, -1439f, 266f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1662f, 1071f, 649f, -242f), vec4<f32>(321f, -276f, 289f, 1000f), vec4<bool>(var_2.x, var_2.x, false, var_1.x)))) + vec4<f32>(-525f, 1532f, _wgslsmith_f_op_f32(select(-2035f, 537f, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -878f)))), Struct_2(vec2<u32>(firstTrailingBit(~17672u), u_input.b), _wgslsmith_f_op_f32(round(1222f))));
    let x = u_input.a;
    s_output = StorageBuffer(-1299f, vec3<i32>(6324i, _wgslsmith_div_i32(1i, (-22713i >> (var_3.b.a.x % 32u)) ^ abs(var_3.c.b.x)), var_3.c.b.x), vec3<i32>(var_3.c.b.x, -30085i, 11885i));
}

