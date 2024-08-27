struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_mod_u32(1u, firstLeadingBit(4294967295u ^ _wgslsmith_clamp_u32(~81048u, ~31070u, 1u)));
    let var_2 = _wgslsmith_f_op_f32(-1361f + _wgslsmith_f_op_f32(-510f - _wgslsmith_div_f32(-639f, 340f)));
    let var_3 = vec3<bool>(false, all(!var_0.c.yww), true);
    var var_4 = vec4<i32>(u_input.c, u_input.c, 37170i, countOneBits(select(~(-1i) >> (~var_0.b.x % 32u), _wgslsmith_mod_i32(i32(-1i) * -11171i, _wgslsmith_mult_i32(var_0.a, var_0.a)), any(vec2<bool>(true, var_0.c.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-559f, var_2));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    var var_0 = vec2<bool>(arg_0.d.x | (_wgslsmith_f_op_f32(sign(-187f)) > _wgslsmith_f_op_f32(func_3(Struct_1(arg_0.a, arg_0.b, arg_0.c, arg_0.d)))), -9951i < -(min(arg_0.a, arg_0.a) >> (1u % 32u)));
    var_0 = arg_0.c.xy;
    var_0 = select(vec2<bool>(true, true), !vec2<bool>(all(select(vec4<bool>(arg_0.d.x, true, var_0.x, false), arg_0.c, vec4<bool>(arg_0.c.x, true, false, var_0.x))), arg_0.d.x | any(vec3<bool>(var_0.x, false, arg_0.d.x))), false);
    var_0 = arg_0.c.zx;
    var_0 = select(!(!vec2<bool>(false, arg_0.a > 2147483647i)), !arg_0.d, ((var_0.x & all(arg_0.d)) & true) && false);
    return Struct_2(_wgslsmith_f_op_f32(-arg_1), Struct_1(~arg_0.a, ~_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0.b.x, arg_0.b.x), select(arg_0.b, vec2<u32>(46651u, 0u), vec2<bool>(true, false))), arg_0.c, !select(arg_0.d, !vec2<bool>(arg_0.d.x, var_0.x), false)), ~_wgslsmith_clamp_u32(reverseBits(u_input.b), 0u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 4294967295u), u_input.a))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = 16936u;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.x, arg_2.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -379f))))), 783f, true != all(!vec4<bool>(arg_0.d.x, false, true, true))));
    var var_2 = func_2(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-135f, 461f)) - arg_2.x));
    var var_3 = func_2(Struct_1(_wgslsmith_add_i32(-35074i, ~0i), min(vec2<u32>(4294967295u | arg_1.b.x, var_2.b.b.x), vec2<u32>(var_2.c, var_0)), vec4<bool>(arg_0.c.x, arg_0.d.x, (false | var_2.b.d.x) & arg_1.c.x, any(vec2<bool>(false, true)) || (var_2.b.a >= var_2.b.a)), var_2.b.d), arg_2.x).b.c.x;
    return func_2(Struct_1(arg_1.a, ~abs(firstTrailingBit(var_2.b.b)), arg_0.c, select(select(vec2<bool>(true, true), var_2.b.c.wy, true), arg_1.d, !arg_0.c.zy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))).b;
}

fn func_4(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = max(u_input.a | firstTrailingBit(~max(u_input.a, vec4<u32>(26349u, u_input.b, arg_0.b.b.x, u_input.a.x))), firstTrailingBit(abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 68693u, 90437u), vec4<u32>(4019u, arg_0.c, 72375u, 4294967295u)))));
    var var_1 = _wgslsmith_mult_vec4_u32(firstTrailingBit(u_input.a) ^ ~(~var_0), vec4<u32>(~57852u | ~var_0.x, arg_0.b.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(20694u, var_0.x), vec2<u32>(1018u, u_input.b)), var_0.x)) & (~vec4<u32>(var_0.x, u_input.a.x, firstTrailingBit(0u), 25868u) & vec4<u32>(1u, ~firstLeadingBit(arg_0.b.b.x), 1u << (arg_0.c % 32u), arg_0.b.b.x));
    let var_2 = Struct_2(arg_0.a, arg_0.b, ~4294967295u);
    var var_3 = func_2(func_2(func_2(func_2(Struct_1(14844i, arg_0.b.b, vec4<bool>(true, true, true, var_2.b.c.x), arg_0.b.d), 1186f).b, 961f).b, _wgslsmith_f_op_f32(f32(-1f) * -744f)).b, 470f);
    var var_4 = true;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1079f, -196f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f) * _wgslsmith_f_op_f32(arg_0.a - 401f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(488f, var_3.a, arg_0.a) * vec3<f32>(var_2.a, var_3.a, 650f)), vec3<f32>(1000f, arg_0.a, arg_0.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(_wgslsmith_f_op_f32(select(-851f, 147f, true)), func_1(Struct_1(18775i, vec2<u32>(u_input.b, 4176u), vec4<bool>(true, true, false, false), vec2<bool>(true, true)), Struct_1(u_input.c, vec2<u32>(4294967295u, u_input.a.x), vec4<bool>(true, false, true, true), vec2<bool>(true, false)), vec2<f32>(-1370f, -1461f), -9813i), 0u))), vec3<f32>(_wgslsmith_f_op_f32(-641f + _wgslsmith_f_op_f32(1128f + -372f)), _wgslsmith_f_op_f32(-165f * 1f), _wgslsmith_f_op_f32(f32(-1f) * -826f)))));
    var var_1 = Struct_2(var_0.x, func_1(func_2(func_2(Struct_1(u_input.c, u_input.a.zx, vec4<bool>(false, true, true, true), vec2<bool>(true, false)), _wgslsmith_f_op_f32(f32(-1f) * -1944f)).b, 115f).b, func_2(func_1(func_2(Struct_1(u_input.c, u_input.a.zx, vec4<bool>(true, false, false, false), vec2<bool>(false, true)), var_0.x).b, func_2(Struct_1(u_input.c, vec2<u32>(u_input.a.x, u_input.a.x), vec4<bool>(true, false, false, false), vec2<bool>(false, false)), var_0.x).b, _wgslsmith_f_op_vec2_f32(round(var_0.zz)), 0i), var_0.x).b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))) * var_0.xx), _wgslsmith_mult_i32(countOneBits(reverseBits(u_input.c)), -2147483647i)), 59243u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-395f, var_1.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1081f, var_1.a)), _wgslsmith_f_op_vec2_f32(-var_0.yy), select(vec2<bool>(var_1.b.c.x, false), vec2<bool>(var_1.b.d.x, var_1.b.d.x), vec2<bool>(var_1.b.c.x, var_1.b.d.x)))), true)), _wgslsmith_div_vec3_i32(-min(vec3<i32>(1i, var_1.b.a, var_1.b.a), _wgslsmith_div_vec3_i32(vec3<i32>(7180i, 0i, -7054i), vec3<i32>(var_1.b.a, 0i, 2147483647i))), ~firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-39085i, u_input.c, 0i), vec3<i32>(-1i, 74334i, 9997i)))));
}

