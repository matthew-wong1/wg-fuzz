struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 232f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = true;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1463f, -998f, 228f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(571f, -192f, 1740f), vec3<f32>(1260f, 852f, 150f), arg_1.c.a.x)), vec3<bool>(arg_1.c.c, false, true))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(918f, 411f, -1195f) + vec3<f32>(-1000f, 460f, 889f))), vec3<f32>(1f, -441f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(383f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-345f, -452f, -105f) + vec3<f32>(733f, -1044f, 510f)) - vec3<f32>(139f, -1137f, 1412f))), vec3<f32>(_wgslsmith_f_op_f32(round(-134f)), 1f, -2333f)));
    let var_2 = false;
    let var_3 = ~(~(~(~(~vec4<u32>(40659u, 53126u, 1363u, 4294967295u)))));
    var var_4 = vec4<u32>(~89698u, ~_wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(~var_3.yzy, ~var_3.zwy)), var_3.x, 0u);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(567f + var_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -614f)))), _wgslsmith_dot_vec2_i32(arg_0.yz, arg_0.zx) > _wgslsmith_add_i32(max(arg_1.a, select(2147483647i, arg_0.x, arg_1.c.a.x)), _wgslsmith_add_i32(-arg_1.a, 27027i))));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    var var_0 = 4294967295u;
    var_0 = 28194u;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~arg_1, Struct_2(arg_1.x, -1i, Struct_1(vec2<bool>(true, true), vec2<u32>(75772u, 4294967295u), false, -2147483647i)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1066f, -969f)))))));
    var var_1 = true;
    var_0 = 0u;
    return ~(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(24011u, u_input.d.x), firstLeadingBit(u_input.d)), select(u_input.d.x >> (u_input.d.x % 32u), ~0u, true)) | 4294967295u);
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = ~2147483647i;
    global0 = _wgslsmith_f_op_f32(-1000f - 952f);
    var var_1 = func_2(~abs(abs(-37350i)) | -max(8487i, arg_1), reverseBits(~countOneBits(vec4<i32>(-51150i, arg_2, arg_1, arg_1))));
    var var_2 = vec4<i32>(~2147483647i, u_input.b, u_input.a.x << (~((u_input.d.x & u_input.d.x) ^ _wgslsmith_add_u32(98250u, 1u)) % 32u), countOneBits(min(max(arg_1 & 2147483647i, u_input.a.x), -11137i)));
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-614f, _wgslsmith_f_op_f32(step(-2022f, 1436f)), _wgslsmith_div_f32(1398f, 262f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2525f, -1900f, 1210f), vec3<f32>(101f, -765f, 466f))))))))));
    return Struct_1(select(!(!select(arg_0.yz, arg_0.yy, arg_0.zx)), select(!(!vec2<bool>(false, arg_0.x)), arg_0.xy, !vec2<bool>(arg_0.x, false)), select(arg_0.yx, arg_0.zx, false)), _wgslsmith_mod_vec2_u32(countOneBits(~u_input.d), u_input.d << (~vec2<u32>(4294967295u, 36230u) % vec2<u32>(32u))) & select(vec2<u32>(~u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x)), abs(vec2<u32>(0u, u_input.d.x)) & select(u_input.d, vec2<u32>(u_input.d.x, 70656u), vec2<bool>(arg_0.x, arg_0.x)), !(!vec2<bool>(true, arg_0.x))), true, abs(-arg_1) | -19472i);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(max(arg_0, -1108f)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -737f));
    global0 = arg_0;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_0))))))));
    let var_1 = Struct_2((-firstLeadingBit(arg_1.d) & abs(i32(-1i) * -1i)) ^ 1i, ~_wgslsmith_div_i32(21388i, arg_1.d), func_1(select(vec3<bool>(arg_1.a.x & true, select(false, false, arg_1.c), any(arg_1.a)), vec3<bool>(true, true, true), !(!vec3<bool>(arg_3.a.x, arg_3.c, arg_3.c))), arg_1.d, -57768i));
    return Struct_1(vec2<bool>(all(!select(vec3<bool>(arg_3.c, var_1.c.a.x, true), vec3<bool>(arg_1.a.x, arg_1.c, false), arg_3.a.x)), !arg_3.a.x || arg_1.a.x), ~_wgslsmith_sub_vec2_u32(arg_1.b, _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 4294967295u), vec2<u32>(arg_1.b.x, arg_1.b.x))), true, arg_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (i32(-1i) * -(~28019i)) ^ (2341i << (_wgslsmith_mult_u32(u_input.d.x, min(u_input.d.x, countOneBits(u_input.d.x))) % 32u));
    var var_1 = Struct_2(~(-12181i), var_0, func_4(-1015f, Struct_1(vec2<bool>(true, false), _wgslsmith_sub_vec2_u32(~u_input.d, u_input.d), any(vec3<bool>(true, true, true)), 1i), ~firstTrailingBit(~(-52929i)), func_1(vec3<bool>(true, true, false), 2147483647i, var_0)));
    let var_2 = var_0;
    global0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(190f, 617f));
    let var_3 = vec4<u32>(1u, 0u, u_input.d.x, _wgslsmith_div_u32(abs(~max(1u, 4294967295u)), ~(~_wgslsmith_add_u32(u_input.d.x, var_1.c.b.x))));
    let var_4 = select(!vec4<bool>(true, any(!vec3<bool>(var_1.c.c, var_1.c.c, var_1.c.a.x)), var_1.c.a.x, var_1.c.a.x), vec4<bool>(func_1(!(!vec3<bool>(var_1.c.c, true, false)), ~(-13181i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_2, 0i, var_1.a, 15729i)), -vec4<i32>(2147483647i, var_1.c.d, -34840i, 8137i))).a.x, !(!func_4(-184f, Struct_1(vec2<bool>(var_1.c.c, true), vec2<u32>(var_3.x, u_input.d.x), var_1.c.a.x, var_1.a), 17153i, Struct_1(var_1.c.a, vec2<u32>(var_1.c.b.x, 19832u), true, -10793i)).a.x), var_1.c.a.x, 0u > var_3.x), select(vec4<bool>(!(!var_1.c.c), var_1.c.a.x, true, var_1.c.c), select(!(!vec4<bool>(var_1.c.a.x, false, var_1.c.c, var_1.c.a.x)), vec4<bool>(true, var_1.c.a.x, var_0 >= 2147483647i, true), select(vec4<bool>(false, var_1.c.a.x, var_1.c.a.x, var_1.c.c), select(vec4<bool>(var_1.c.a.x, false, var_1.c.c, var_1.c.a.x), vec4<bool>(var_1.c.c, true, var_1.c.c, false), true), select(vec4<bool>(true, var_1.c.a.x, false, true), vec4<bool>(false, var_1.c.a.x, false, true), true))), vec4<bool>(!select(true, var_1.c.c, true), true, true, any(vec4<bool>(true, true, var_1.c.a.x, false)))));
    global0 = 1189f;
    var_1 = Struct_2(var_2, -1i, var_1.c);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -909f))), _wgslsmith_f_op_f32(func_3(vec4<i32>(-13461i, -1i, -42282i, var_2), Struct_2(-1i, var_1.c.d, var_1.c)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(985f, -1516f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) + _wgslsmith_f_op_f32(func_3(vec4<i32>(-2147483647i, 25274i, u_input.c.x, var_0), Struct_2(2147483647i, var_0, var_1.c)))), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1308f - _wgslsmith_f_op_f32(f32(-1f) * -968f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -332f))))), max(u_input.e, -var_1.c.d));
}

