struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xx)))));
    var var_1 = all(select(select(!(!vec2<bool>(arg_1.b.a, false)), vec2<bool>(true, select(arg_1.b.a, false, arg_1.b.a)), !select(vec2<bool>(true, true), vec2<bool>(arg_1.b.a, arg_1.b.a), vec2<bool>(false, true))), select(vec2<bool>(any(vec2<bool>(arg_1.b.a, true)), arg_1.b.a), vec2<bool>(all(vec3<bool>(true, arg_1.b.a, arg_1.b.a)), !arg_1.b.a), vec2<bool>(true, any(vec2<bool>(arg_1.b.a, arg_1.b.a)))), !(true & arg_1.b.a)));
    var var_2 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_1.a.x, arg_1.c, abs(2147483647i)), ~_wgslsmith_clamp_i32(arg_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-5692i, 36364i, arg_1.c, 0i), vec4<i32>(arg_1.c, -1i, -1i, 833i)) >> (u_input.a.x % 32u), (arg_1.c << (u_input.a.x % 32u)) << (u_input.a.x % 32u)), arg_1.c);
    var var_3 = Struct_2(select(select(vec4<bool>(arg_1.a.x != arg_1.c, any(vec2<bool>(arg_1.b.a, arg_1.b.a)), -16879i == arg_1.a.x, any(vec4<bool>(arg_1.b.a, arg_1.b.a, false, arg_1.b.a))), vec4<bool>(!arg_1.b.a, false, true, true), !select(vec4<bool>(arg_1.b.a, arg_1.b.a, arg_1.b.a, false), vec4<bool>(false, false, arg_1.b.a, arg_1.b.a), vec4<bool>(false, true, true, arg_1.b.a))), vec4<bool>(true, all(!vec3<bool>(false, arg_1.b.a, false)), arg_1.b.a, false), true));
    let var_4 = Struct_4(Struct_2(var_3.a), Struct_1(select(any(vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, var_3.a.x)), true, false)));
    return u_input.a.yy;
}

fn func_4(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    var var_0 = select(select(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), true), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), !any(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true));
    var var_1 = -363f;
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1230f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(621f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(1789f))) * -611f))), false));
    let var_2 = _wgslsmith_f_op_f32(-179f + -145f);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-435f, var_2) + vec2<f32>(var_2, var_2)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2, var_2)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-488f, var_2))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(296f, -2039f))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(798f, var_2))))), _wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-637f)))))));
    return var_2;
}

fn func_2(arg_0: i32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(~36217u >> (u_input.a.x % 32u), func_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1046f), 1f, -1241f), Struct_3(-vec2<i32>(arg_0, -32435i), Struct_1(true), -1i)))));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2) -> Struct_1 {
    var var_0 = select(!(!vec4<bool>(all(vec4<bool>(true, arg_1.b.a, arg_1.a.a.x, false)), all(arg_1.a.a.xzx), any(vec3<bool>(arg_2.a.x, arg_1.b.a, true)), true)), arg_1.a.a, arg_1.b.a);
    var_0 = arg_2.a;
    var var_1 = Struct_3(vec2<i32>(2147483647i, _wgslsmith_mult_i32(-1i, -6142i)), arg_1.b, firstTrailingBit(1i));
    let var_2 = all(var_0.ywz);
    var var_3 = ~vec4<u32>(func_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(2281f, arg_0, 202f), vec3<f32>(470f, arg_0, arg_0)))), Struct_3(vec2<i32>(1i, var_1.a.x), var_1.b, ~0i)).x, ~u_input.a.x, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(54695u, u_input.a.x, u_input.a.x), u_input.a)), 1u);
    return Struct_1(true);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1) -> Struct_1 {
    let var_0 = min(-(~0i), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(48597i, 19217i, 1i), vec3<i32>(1i, 20415i, 1i)), -(i32(-1i) * -2147483647i), 0i)) | firstTrailingBit(~(1i << (1u % 32u)) >> (abs(u_input.a.x) % 32u));
    let var_1 = func_5(-1647f, arg_1, arg_1.a);
    var var_2 = firstTrailingBit(u_input.a.x);
    var var_3 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 434i), abs(vec2<i32>(1i, var_0))), 24179i, -28327i, var_0), vec4<i32>(var_0, var_0, _wgslsmith_div_i32(-2147483647i & var_0, _wgslsmith_mod_i32(var_0, -4566i)), firstTrailingBit(var_0 << (12396u % 32u))), vec4<i32>(2147483647i, reverseBits(var_0) | firstLeadingBit(var_0), var_0, var_0)), min(-_wgslsmith_div_vec4_i32(select(vec4<i32>(0i, var_0, var_0, var_0), vec4<i32>(9602i, 26551i, -3596i, 0i), var_1.a), vec4<i32>(1i, 2147483647i, var_0, 1i) >> (vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), -vec4<i32>(var_0 >> (u_input.a.x % 32u), _wgslsmith_mod_i32(var_0, -101489i), 0i, 2147483647i | var_0)));
    var var_4 = var_3.x;
    return arg_2;
}

fn func_1() -> bool {
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-898f, -456f, false)))) - _wgslsmith_f_op_f32(func_2(reverseBits(-23099i)))), Struct_4(Struct_2(vec4<bool>(true, true, true, true)), Struct_1(4294967295u >= u_input.a.x)), Struct_2(vec4<bool>(true, true, true, true))), Struct_4(Struct_2(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), func_5(-701f, Struct_4(Struct_2(vec4<bool>(false, true, true, true)), Struct_1(true)), Struct_2(vec4<bool>(false, true, false, true))).a)), Struct_1(true)), Struct_1(false));
    var_0 = Struct_1(true);
    var_0 = Struct_1(!(all(!vec2<bool>(false, var_0.a)) | (_wgslsmith_f_op_f32(ceil(-827f)) <= -138f)));
    let var_1 = _wgslsmith_f_op_f32(-1066f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))));
    var var_2 = Struct_1(func_5(1000f, Struct_4(Struct_2(select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, true, false, var_0.a), var_0.a)), Struct_1(!var_0.a)), Struct_2(!(!vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)))).a);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_2(vec4<bool>(all(vec3<bool>(false, true, true)), func_1(), true, false)), func_6(Struct_1(true), Struct_4(Struct_2(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false)), Struct_1(all(vec2<bool>(false, true)))), Struct_1(true)));
    var var_1 = Struct_3(vec2<i32>(1i, select(reverseBits(2147483647i), _wgslsmith_div_i32(6001i, 1i), true)) | vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 2147483647i, 25810i), -vec4<i32>(26910i, -18280i, 1i, 1i)), _wgslsmith_add_i32(i32(-1i) * -67926i, -48949i)), var_0.b, ~0i);
    var var_2 = u_input.a.yy;
    let var_3 = vec2<i32>(2147483647i, -(~(-43167i)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -247f, 1000f, -1957f)))))));
    var_2 = _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(abs(0u), _wgslsmith_mult_u32(1u, 0u)), 61231u), _wgslsmith_mod_vec2_u32(((u_input.a.xy | vec2<u32>(1u, 4294967295u)) ^ u_input.a.xz) >> (u_input.a.yx % vec2<u32>(32u)), max(u_input.a.zx >> (vec2<u32>(88896u, u_input.a.x) % vec2<u32>(32u)), ~vec2<u32>(var_2.x, u_input.a.x)) & vec2<u32>(var_2.x, u_input.a.x)));
    var var_5 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.x))), var_0, Struct_2(var_0.a.a));
    var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1511f, var_4.x) * var_4.x)) < _wgslsmith_f_op_f32(func_2(~(var_3.x >> (43598u % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(u_input.a.yy, vec2<u32>(~1u, func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4.x, -1000f, var_4.x), var_4.yyx, var_0.a.a.xwz)), Struct_3(vec2<i32>(var_1.a.x, var_1.a.x), Struct_1(false), var_3.x)).x), u_input.a.zy));
}

