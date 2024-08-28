struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_1(!vec2<bool>(false, any(vec3<bool>(true, true, true))), u_input.d.x);
    let var_1 = any(select(var_0.a, !var_0.a, vec2<bool>(true, true)));
    let var_2 = !var_0.a.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(854f, -354f, 503f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(550f, -150f, var_0.a.x)) + _wgslsmith_f_op_f32(select(441f, -1766f, true))) * -1361f))));
    let var_4 = vec4<i32>(u_input.d.x | -abs(2147483647i), _wgslsmith_sub_i32(u_input.d.x, var_0.b), 2147483647i, -(i32(-1i) * -6040i)) ^ vec4<i32>(~u_input.b, u_input.d.x, -1i, min(var_0.b, _wgslsmith_sub_i32(-2147483647i, -1i << (u_input.a % 32u))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_3.yx))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(var_3.zy, var_3.wx), var_3.yx))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2) -> i32 {
    let var_0 = vec3<i32>(firstLeadingBit(~(-arg_0.b) << (reverseBits(min(u_input.c.x, 4294967295u)) % 32u)), -1i, (abs(_wgslsmith_clamp_i32(arg_0.b, 0i, arg_0.b)) << (u_input.c.x % 32u)) & -_wgslsmith_dot_vec2_i32(select(u_input.d.yy, vec2<i32>(arg_0.b, arg_0.b), true), ~vec2<i32>(2147483647i, arg_2.d.b)));
    let var_1 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1, 3165f)) - 1f);
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -708f)))), _wgslsmith_f_op_f32(round(312f))));
    var_3 = _wgslsmith_f_op_f32(f32(-1f) * -594f);
    return abs(_wgslsmith_mult_i32(select(~_wgslsmith_mult_i32(var_0.x, -9074i), -15107i, -1257f == arg_1.x), -1i));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2203f, -516f, 969f, 902f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(251f, -1089f, 414f, 570f)))))));
    var var_1 = Struct_1(vec2<bool>(true, true), ~func_4(Struct_1(vec2<bool>(false, true), u_input.d.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3()))), Struct_2(Struct_1(vec2<bool>(true, true), 11222i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), Struct_1(vec2<bool>(true, true), u_input.d.x))));
    var var_2 = Struct_2(Struct_1(!var_1.a, ~(~firstTrailingBit(8262i))), var_0.ww, vec3<bool>(var_1.b < ~(-2147483647i), all(select(vec2<bool>(var_1.a.x, false), vec2<bool>(var_1.a.x, var_1.a.x), !var_1.a.x)), var_1.a.x), Struct_1(var_1.a, var_1.b));
    var var_3 = u_input.c;
    return Struct_1(vec2<bool>(all(vec2<bool>(var_2.a.a.x, any(vec4<bool>(var_1.a.x, true, var_2.a.a.x, false)))), true), 2147483647i);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = !vec3<bool>(true, arg_1.a.x, !arg_1.a.x);
    let var_1 = !vec3<bool>(!(arg_2 != _wgslsmith_f_op_f32(trunc(arg_2))), var_0.x, var_0.x);
    let var_2 = ~min(~(-(vec4<i32>(arg_1.b, arg_1.b, 9648i, 41965i) ^ vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, -2147483647i))), -_wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, 2147483647i, 1i, u_input.b), vec4<i32>(0i, arg_1.b, u_input.d.x, 45523i) & vec4<i32>(2147483647i, u_input.b, u_input.d.x, -33181i)));
    var_0 = select(var_1, var_1, arg_1.a.x);
    var var_3 = u_input.c;
    return _wgslsmith_f_op_f32(-1000f * arg_2);
}

fn func_1(arg_0: i32) -> vec4<i32> {
    let var_0 = vec2<bool>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), u_input.d.yz), ~_wgslsmith_sub_i32(-34090i, -2147483647i)) != 2147483647i, _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -202f)), func_2(), -978f)) >= -395f);
    return _wgslsmith_sub_vec4_i32(~(~countOneBits(vec4<i32>(arg_0, arg_0, 2147483647i, u_input.b))) << (vec4<u32>(3545u, ~1u, 21635u, ~4294967295u) % vec4<u32>(32u)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, arg_0 << (u_input.a % 32u), 2147483647i, 2147483647i), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.d.x, arg_0, -1i), vec4<i32>(1i, u_input.d.x, arg_0, -6509i)), ~firstLeadingBit(vec4<i32>(u_input.b, arg_0, 0i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_i32(func_1(_wgslsmith_div_i32(-54054i, 7110i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(0i, u_input.b), 21826i, max(u_input.d.x, -21784i), firstLeadingBit(-16472i)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, -52409i, u_input.b, u_input.d.x), ~vec4<i32>(2147483647i, 0i, -57184i, u_input.d.x))));
    let var_1 = Struct_1(select(vec2<bool>(all(vec4<bool>(false, true, false, true)) | any(vec3<bool>(false, true, false)), true), select(vec2<bool>(all(vec4<bool>(true, false, false, true)), select(false, false, true)), vec2<bool>(any(vec4<bool>(true, false, true, false)), false), select(true, false, any(vec4<bool>(true, false, true, true)))), vec2<bool>(true, true)), -u_input.d.x);
    let var_2 = vec2<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1280f + _wgslsmith_f_op_f32(243f - 826f))))));
    let var_3 = func_2();
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1350f, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_clamp_u32(abs(1u), ~u_input.a, 0u) >> (u_input.c.x % 32u)), select(max(-29212i, reverseBits(2147483647i)) ^ var_3.b, 1i, true));
}

