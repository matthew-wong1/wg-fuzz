struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-841f + _wgslsmith_f_op_f32(-arg_0.d.x)))))), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x + -718f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.d.x - -1605f))));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(-firstTrailingBit(u_input.d.x), u_input.a.x), 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -48209i, _wgslsmith_mod_i32(-16213i, arg_1)), ~_wgslsmith_div_vec2_i32(vec2<i32>(9928i, 17878i), u_input.a.xy)), -2147483647i) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 52388u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, u_input.b, 18800u), vec3<u32>(u_input.b, u_input.b, 1u), vec3<bool>(arg_0.e, false, true)), ~vec3<u32>(53676u, 4294967295u, u_input.b))), ~vec4<u32>(u_input.b, ~u_input.c, 1u, u_input.c >> (u_input.b % 32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(u_input.b), firstLeadingBit(55477u), abs(5012u), u_input.b), vec4<u32>(u_input.b << (4295u % 32u), _wgslsmith_sub_u32(1u, u_input.c), u_input.b, u_input.b))) % vec4<u32>(32u));
    var var_2 = Struct_1(vec2<bool>(arg_0.e, any(arg_0.c.wzy)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(1249f + var_0.x), _wgslsmith_div_f32(798f, -1000f)))))), arg_0.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1002f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.d.x)))), arg_0.d, any(!(!arg_0.c.zw)))), true);
    var_2 = Struct_1(select(select(!arg_0.a, select(select(arg_0.a, var_2.c.zw, var_2.e), vec2<bool>(true, true), arg_0.c.xy), arg_0.a), !arg_0.c.xz, vec2<bool>(arg_0.a.x, var_2.a.x)), var_2.d, vec4<bool>(true, select(any(var_2.c), var_1.x <= -2147483647i, var_2.a.x), true, false), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, -479f))), _wgslsmith_f_op_vec2_f32(-var_0.zw), false)) + vec2<f32>(_wgslsmith_f_op_f32(round(-956f)), _wgslsmith_f_op_f32(f32(-1f) * -1353f))))), !any(arg_0.c));
    var var_3 = arg_0;
    return -1192f;
}

fn func_2() -> f32 {
    let var_0 = 0i;
    var var_1 = _wgslsmith_f_op_f32(2052f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-652f, -304f)), vec4<bool>(true, true, false, false), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-381f, 1376f))), any(vec2<bool>(true, true))), -39729i))));
    let var_2 = (abs(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-2147483647i, -335i, 0i, u_input.d.x)), vec4<i32>(1i, 53855i, 0i, -2147483647i))) ^ -2147483647i) & u_input.d.x;
    let var_3 = vec3<u32>(u_input.b & ~35481u, u_input.b, 44573u);
    var var_4 = (select(-vec4<i32>(24595i, 0i, var_2, 1i) & max(vec4<i32>(0i, 2147483647i, var_0, -34890i), vec4<i32>(var_2, var_2, var_2, var_2)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 0i, -2147483647i, 13167i), vec4<i32>(var_0, var_2, var_0, -2147483647i)), vec4<i32>(var_0, -29494i, u_input.a.x, 3554i)), !(4294967295u < u_input.c)) | (vec4<i32>(-1i) * -vec4<i32>(10297i, 1i, -1i, -77374i))) >> (~(~(~vec4<u32>(1u, 1u, var_3.x, var_3.x) | (vec4<u32>(1u, 0u, 28368u, 21048u) & vec4<u32>(21738u, 0u, u_input.b, 47155u)))) % vec4<u32>(32u));
    return 836f;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = ((u_input.b << (_wgslsmith_dot_vec2_u32(~vec2<u32>(7475u, arg_0), vec2<u32>(arg_0, u_input.c) ^ vec2<u32>(25433u, u_input.b)) % 32u)) >> (56979u % 32u)) >> (_wgslsmith_mult_u32(~_wgslsmith_div_u32(~u_input.c, ~arg_0), 1u) % 32u);
    let var_1 = Struct_1(vec2<bool>(false, select(any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), true, any(vec2<bool>(true, false)) || true)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1066f, -151f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-185f, 2739f)))), vec4<bool>(any(vec2<bool>(all(vec3<bool>(false, true, false)), true)), true, u_input.a.x > abs(min(-1752i, 6054i)), true), vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-660f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -348f), 1031f))), !all(vec2<bool>(true, true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(var_1.d * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(427f * var_1.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.b.x, var_1.b.x)), _wgslsmith_f_op_f32(func_2()))), var_1.d)));
    var var_3 = ~0u;
    let var_4 = Struct_1(vec2<bool>(any(vec2<bool>(false, select(var_1.c.x, var_1.c.x, var_1.a.x))), var_1.c.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.b.x) + _wgslsmith_f_op_vec2_f32(exp2(var_1.d))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.b), vec2<f32>(370f, -1988f), !var_1.c.x)))))), var_1.c, vec2<f32>(var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -996f) - _wgslsmith_f_op_f32(exp2(var_2.x))), _wgslsmith_f_op_f32(sign(200f)), false))), !(!(!(u_input.d.x < u_input.a.x))));
    return var_4;
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = false;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))) - _wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(398f, arg_0.b.x), func_1(u_input.c).d.x)))), _wgslsmith_f_op_f32(arg_0.b.x - func_1(u_input.c).d.x), arg_0.d.x, arg_0.d.x);
    var var_2 = ~_wgslsmith_dot_vec2_u32(firstLeadingBit(firstTrailingBit(~vec2<u32>(4294967295u, 93068u))), ~(select(vec2<u32>(u_input.c, u_input.b), vec2<u32>(4294967295u, 0u), vec2<bool>(false, true)) ^ vec2<u32>(u_input.c, u_input.c)));
    var var_3 = Struct_1(vec2<bool>(arg_0.e, all(arg_0.c.yy) == !(!arg_0.a.x)), var_1.yx, !vec4<bool>(all(arg_0.c.xw), true & (4294967295u >= u_input.c), arg_0.e, arg_0.e), _wgslsmith_f_op_vec2_f32(trunc(arg_0.d)), arg_0.a.x);
    let var_4 = vec4<i32>(-2147483647i, u_input.d.x, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(min(u_input.d.yz, vec2<i32>(u_input.a.x, -11869i)), select(_wgslsmith_div_vec2_i32(vec2<i32>(-38641i, 2147483647i), u_input.d.yy), vec2<i32>(u_input.d.x, 2147483647i), all(vec2<bool>(true, var_3.a.x)))), firstTrailingBit(vec2<i32>(u_input.a.x, i32(-1i) * -7014i))), countOneBits(u_input.a.x));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(0u, u_input.b, func_4(func_1(u_input.c >> (_wgslsmith_sub_u32(4294967295u, 0u) % 32u))));
    let var_1 = u_input.d.x;
    let var_2 = u_input.a.x;
    let var_3 = u_input.c;
    let var_4 = Struct_1(!(!vec2<bool>(false, 32270u >= var_3)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1273f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-908f, -1111f), vec2<f32>(1701f, 327f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(352f, -653f) - vec2<f32>(-2591f, -571f))))), func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~0u, 4294967295u, select(var_3, 7248u, true)), ~vec4<u32>(12433u, 4294967295u, 911u, u_input.b))).c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(644f, -1070f))) + vec2<f32>(2136f, -1667f)), _wgslsmith_div_vec2_f32(vec2<f32>(-114f, -314f), vec2<f32>(-475f, -709f)))), vec2<f32>(-407f, _wgslsmith_f_op_f32(1045f - _wgslsmith_f_op_f32(f32(-1f) * -644f)))), any(vec3<bool>(any(vec4<bool>(true, true, true, true)), false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.d.x * var_4.d.x) - _wgslsmith_f_op_f32(step(var_4.d.x, var_4.d.x))), _wgslsmith_f_op_f32(ceil(249f)), 1813f)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(select(~var_0.xz, _wgslsmith_clamp_vec2_u32(var_0.xx, vec2<u32>(1u, var_3), var_0.yy), select(false, false, var_4.e)), countOneBits(vec2<u32>(u_input.c, 0u))), ~(var_0.x >> (~u_input.b % 32u))));
}

