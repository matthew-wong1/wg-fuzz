struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<bool>) -> vec2<i32> {
    let var_0 = true;
    var var_1 = 4294967295u;
    var_1 = _wgslsmith_add_u32(u_input.b.x >> (32996u % 32u), _wgslsmith_div_u32(_wgslsmith_div_u32(~(~11385u), ~_wgslsmith_mod_u32(1u, 1u)), u_input.b.x));
    let var_2 = Struct_1(~firstTrailingBit(_wgslsmith_add_u32(u_input.b.x, u_input.b.x) ^ max(u_input.b.x, 151u)), ~(-1i));
    var var_3 = Struct_1(35442u, ~(var_2.b << (~1u % 32u)));
    return vec2<i32>(u_input.a.x, firstTrailingBit(_wgslsmith_sub_i32(~(-13848i), 21162i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: bool, arg_3: Struct_4) -> vec2<i32> {
    let var_0 = u_input.a.xzz;
    var var_1 = Struct_5(Struct_1(_wgslsmith_mod_u32(~_wgslsmith_div_u32(1u, u_input.b.x), u_input.b.x), 1i), -arg_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-940f)) * 2097f)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1583f * -1390f) - _wgslsmith_f_op_f32(select(192f, 2235f, true))))));
    var_1 = Struct_5(var_1.a, _wgslsmith_add_i32(-77i, -var_0.x ^ 13131i), !arg_2);
    var_1 = Struct_5(var_1.a, var_0.x, all(select(vec4<bool>(any(arg_1.a.yz), arg_2 & arg_2, false, true), select(!vec4<bool>(var_1.c, false, true, arg_3.a.x), vec4<bool>(false, arg_2, arg_3.a.x, true), !vec4<bool>(arg_1.a.x, arg_3.a.x, var_1.c, false)), arg_1.a.x)));
    let var_2 = all(!(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, var_1.c, arg_3.a.x, true), vec4<bool>(arg_1.a.x, var_1.c, arg_1.a.x, var_1.c)), vec4<bool>(true, true, arg_2, true), !arg_3.a.x)));
    return arg_1.b;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(~u_input.a.zx, _wgslsmith_sub_vec2_i32(vec2<i32>(0i, ~56667i), arg_0.zx)), firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i) ^ arg_0.zy, countOneBits(u_input.a.yw)) << (u_input.b.xz % vec2<u32>(32u))));
    var_0 = -((abs(~vec2<i32>(-1i, var_0.x)) ^ u_input.a.yw) & vec2<i32>(u_input.a.x, u_input.a.x));
    var_0 = func_4(select(_wgslsmith_sub_vec2_i32(-(~vec2<i32>(var_0.x, arg_0.x)), vec2<i32>(39261i, min(var_0.x, 2147483647i))), _wgslsmith_sub_vec2_i32((arg_0.xx | vec2<i32>(-17530i, u_input.a.x)) << (countOneBits(u_input.b.xx) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(u_input.a.zx, func_3(vec2<bool>(false, true)))), false), Struct_4(vec3<bool>(false, select(false, true, u_input.a.x != arg_0.x), true), min(vec2<i32>(firstTrailingBit(2147483647i), -1i), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.zx, vec2<i32>(-248i, var_0.x)), ~arg_0.xz))), true, Struct_4(!vec3<bool>(all(vec4<bool>(true, false, false, true)), true, true), _wgslsmith_mod_vec2_i32(~countOneBits(u_input.a.zx), select(vec2<i32>(var_0.x, 1i), -arg_0.xy, arg_0.x >= var_0.x))));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-722f, 435f, 1030f), vec3<f32>(-511f, -808f, 495f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(217f, 663f, -1994f))), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-272f, -1033f, 773f)))), u_input.b ^ select(_wgslsmith_clamp_vec3_u32(arg_1.xyz, u_input.b, vec3<u32>(arg_1.x, arg_1.x, arg_1.x)), u_input.b, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-817f, 1025f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-133f, 339f) * vec2<f32>(1045f, -211f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2535f, -746f), vec2<f32>(743f, 915f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-541f, 924f) - vec2<f32>(-451f, 151f)))), Struct_1(arg_1.x, _wgslsmith_mod_i32(arg_0.x, _wgslsmith_add_i32(26031i, var_0.x))), select(arg_1, vec4<u32>(abs(0u), max(0u, arg_1.x), ~28215u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 18638u, 5852u), u_input.b)), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)))), !any(vec2<bool>(true, false)) && any(vec4<bool>(true, any(vec2<bool>(true, false)), true, true)));
    var var_2 = Struct_5(Struct_1(_wgslsmith_dot_vec3_u32(firstTrailingBit(~u_input.b), ~vec3<u32>(30119u, 757u, 4294967295u) >> ((vec3<u32>(34172u, arg_1.x, u_input.b.x) >> (vec3<u32>(0u, u_input.b.x, arg_1.x) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_div_i32(~2147483647i, ~(u_input.a.x & 48553i))), arg_0.x, true);
    return _wgslsmith_add_i32(arg_0.x, select(abs(_wgslsmith_clamp_i32(~3949i, -arg_0.x, abs(2147483647i))), var_0.x, var_1.b));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = 1i << (1u % 32u);
    let var_1 = vec2<bool>(true, true);
    var var_2 = vec2<i32>(u_input.a.x, -26579i);
    var var_3 = !vec3<bool>(var_1.x, ~(-2147483647i) >= (1i ^ _wgslsmith_div_i32(0i, var_0)), var_1.x);
    var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(func_2(select(vec3<i32>(44492i, var_2.x, var_2.x), u_input.a.yyw, select(vec3<bool>(true, true, true), vec3<bool>(var_3.x, var_1.x, var_1.x), var_1.x)), ~vec4<u32>(4294967295u, arg_0, 73191u, u_input.b.x)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-13797i, -1i, var_0, var_2.x) & u_input.a, select(vec4<i32>(1i, var_2.x, 21384i, var_2.x), u_input.a, vec4<bool>(var_3.x, false, var_3.x, var_1.x)), select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(var_3.x, var_3.x, var_1.x, false), var_3.x)), vec4<i32>(func_4(vec2<i32>(var_2.x, var_0), Struct_4(vec3<bool>(false, var_3.x, true), vec2<i32>(22713i, -2147483647i)), var_3.x, Struct_4(vec3<bool>(var_1.x, false, false), vec2<i32>(var_0, var_2.x))).x, 2147483647i, ~var_0, min(var_2.x, var_2.x)))), -u_input.a.yz, select(-u_input.a.yz, countOneBits(vec2<i32>(var_2.x, -1i)), var_1) >> (~u_input.b.zz % vec2<u32>(32u)));
    return Struct_1(abs(abs(1u & ~u_input.b.x)), 25617i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), true), vec3<bool>(any(vec3<bool>(false, true, false)), true, all(vec2<bool>(false, false)))));
    let var_2 = func_1(~_wgslsmith_mult_u32(~10476u, _wgslsmith_dot_vec4_u32(vec4<u32>(59439u, u_input.b.x, u_input.b.x, 57190u), vec4<u32>(u_input.b.x, 5637u, 6778u, u_input.b.x))));
    var_0 = u_input.b.x;
    var_1 = select(!vec3<bool>(var_1.x, any(vec4<bool>(false, false, var_1.x, false)), false), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, var_1.x, any(vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1796f)), ~vec3<u32>(u_input.b.x, ~41370u, min(0u, ~98212u)), ~(~reverseBits(8738u)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), -vec2<i32>(u_input.a.x, -59786i) << (~min(u_input.b.zy, u_input.b.yy) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1051f + 768f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(942f)), _wgslsmith_f_op_f32(abs(-217f))))));
}

