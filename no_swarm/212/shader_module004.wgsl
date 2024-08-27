struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-108f - arg_1.x));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1004f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(877f, 990f)))))) + -519f);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), -169f))), _wgslsmith_f_op_f32(floor(arg_1.x))));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    var var_0 = all(!vec3<bool>(true, all(vec4<bool>(arg_0.b, true, false, false)), arg_0.b));
    let var_1 = Struct_1(select(arg_0.c.a, vec2<bool>(any(arg_0.c.a), _wgslsmith_f_op_f32(sign(610f)) != _wgslsmith_f_op_f32(func_3(arg_0.d, vec3<f32>(521f, 220f, 455f)))), vec2<bool>(true, true)));
    var var_2 = Struct_3(!select(!vec4<bool>(var_1.a.x, false, true, false), !select(vec4<bool>(true, true, var_1.a.x, false), vec4<bool>(arg_0.b, arg_0.c.a.x, var_1.a.x, var_1.a.x), arg_0.b), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, arg_0.b, true, var_1.a.x), vec4<bool>(false, true, false, arg_0.b), true), all(vec3<bool>(var_1.a.x, var_1.a.x, false)))), any(!select(vec4<bool>(true, var_1.a.x, arg_0.b, true), vec4<bool>(false, arg_0.c.a.x, var_1.a.x, arg_0.b), vec4<bool>(true, false, var_1.a.x, arg_0.b))) & any(vec4<bool>(true, arg_0.b, !var_1.a.x, arg_0.c.a.x)));
    let var_3 = select(var_2.a, select(var_2.a, var_2.a, true), any(select(!var_2.a.xxw, !var_2.a.wyw, vec3<bool>(true, arg_1 > arg_1, var_1.a.x & true))));
    var_2 = Struct_3(var_2.a, !(!(!(var_1.a.x || false))));
    return Struct_2(countOneBits(arg_0.a), any(var_3), var_1, vec4<i32>(14284i, ~0i, _wgslsmith_div_i32(u_input.a.x, arg_0.d.x >> (arg_1 % 32u)), -(arg_0.d.x & u_input.a.x)) & arg_0.d);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    let var_0 = ~(~(~(~(~arg_0))));
    var var_1 = vec2<u32>(abs(arg_0), ~(~var_0) << ((arg_0 | _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(var_0, 1u, var_0), true), vec3<u32>(var_0, var_0, arg_0))) % 32u));
    var_1 = firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_0) << (vec2<u32>(4294967295u, 33568u) % vec2<u32>(32u)), vec2<u32>(arg_0, var_0) & firstLeadingBit(vec2<u32>(84528u, 1u))) | ~(vec2<u32>(var_0, arg_0) | vec2<u32>(var_1.x, var_0)));
    var_1 = vec2<u32>(_wgslsmith_sub_u32(max(var_1.x, countOneBits(0u)), var_1.x), reverseBits(1u));
    let var_2 = vec4<u32>(~arg_0, ~(~var_0) >> (var_0 % 32u), 74546u, 6948u) >> (~vec4<u32>(arg_0, ~var_0, abs(_wgslsmith_add_u32(49071u, var_0)), 0u) % vec4<u32>(32u));
    return func_2(arg_2, arg_0);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = -1355f;
    let var_1 = ~vec3<u32>(_wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(select(39959u, 4294967295u, arg_2.x), 1u)), _wgslsmith_div_u32(select(~4294967295u, 1u, any(vec3<bool>(arg_0.c.a.x, arg_2.x, false))), ~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1416f, 1295f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)), _wgslsmith_f_op_f32(var_0 + _wgslsmith_div_f32(arg_1, -1266f)))));
    var_2 = vec4<f32>(-461f, _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f), var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(floor(1139f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))))) + _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-arg_1)))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, arg_1, 225f, var_2.x))) * vec4<f32>(493f, arg_1, _wgslsmith_f_op_f32(floor(var_2.x)), -1235f)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 532f, _wgslsmith_div_f32(var_0, -965f), var_2.x)))));
    return var_2.zx;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(156f)));
    let var_1 = Struct_1(vec2<bool>(arg_2.b, all(arg_1.xxw) == true));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_5(func_4(4294967295u, Struct_3(arg_1, arg_2.c.a.x), func_2(arg_2, 14685u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), select(func_2(Struct_2(arg_2.a, false, Struct_1(arg_2.c.a), vec4<i32>(arg_2.a, -43782i, arg_2.a, arg_2.d.x)), 86893u).c.a, vec2<bool>(true, true), arg_1.wy), Struct_3(select(arg_1, vec4<bool>(false, true, false, true), vec4<bool>(arg_1.x, true, false, false)), all(arg_1)))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2228f, 450f))))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_vec2_f32(func_5(Struct_2(0i, arg_2.b, var_1, arg_2.d), var_0, var_1.a, Struct_3(vec4<bool>(true, var_1.a.x, arg_1.x, var_1.a.x), arg_2.c.a.x))).x)))));
    var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -521f)) + _wgslsmith_div_vec2_f32(vec2<f32>(2264f, var_2.x), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, var_3.x), vec2<f32>(-2932f, var_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-485f, 774f) * vec2<f32>(-902f, var_2.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x))))));
    return !all(vec2<bool>(false & arg_1.x, true)) | true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!(!all(vec3<bool>(true, false, true)) || any(vec3<bool>(false, true, true))), false, true | (true & !all(vec4<bool>(true, true, true, false))), select(true, (_wgslsmith_clamp_i32(u_input.b.x, -2147483647i, u_input.b.x) >= u_input.a.x) || false, false));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2193f + -1507f), _wgslsmith_f_op_f32(1297f + -771f)))));
    var_0 = select(!vec4<bool>(func_1(var_1, vec4<bool>(var_0.x, false, var_0.x, var_0.x), Struct_2(18648i, var_0.x, Struct_1(vec2<bool>(false, false)), vec4<i32>(u_input.a.x, 37346i, -29620i, u_input.a.x))) & true, var_0.x, !select(false, true, true), var_0.x), vec4<bool>(any(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.zyy, var_0.xyx)), !var_0.x, true, var_0.x), var_0.x);
    let var_2 = func_4(min(~4294967295u, ~abs(~4294967295u)), Struct_3(select(select(!vec4<bool>(var_0.x, false, true, false), select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, true), var_0.x), !vec4<bool>(var_0.x, true, var_0.x, false)), select(select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x)), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, true, true, var_0.x)), !select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, true, false, var_0.x))), true), Struct_2(_wgslsmith_dot_vec3_i32((u_input.a & vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)) ^ vec3<i32>(u_input.a.x, 2147483647i, -6402i), u_input.a), var_0.x, func_4(countOneBits(_wgslsmith_sub_u32(0u, 0u)), Struct_3(vec4<bool>(var_0.x, false, var_0.x, true), var_0.x), func_2(Struct_2(u_input.a.x, true, Struct_1(var_0.wy), vec4<i32>(-1i, u_input.a.x, 1i, -58101i)), ~1u)).c, select(_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.a.x), vec4<i32>(-9301i, 0i, u_input.b.x, u_input.a.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), reverseBits(vec4<i32>(2147483647i, u_input.a.x, 15964i, 2147483647i))), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, u_input.b.x, -14023i, 2147483647i), min(vec4<i32>(-36744i, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.a.x))), vec4<bool>(func_4(4294967295u, Struct_3(vec4<bool>(var_0.x, var_0.x, var_0.x, false), false), Struct_2(-2147483647i, var_0.x, Struct_1(vec2<bool>(var_0.x, true)), vec4<i32>(-1i, 8685i, u_input.a.x, u_input.b.x))).b, all(var_0.wy), true, any(vec4<bool>(var_0.x, false, var_0.x, var_0.x))))));
    var var_3 = var_2;
    var_0 = select(vec4<bool>(var_0.x, var_3.b, true, var_3.b), select(vec4<bool>(false, var_2.b && false, _wgslsmith_div_f32(-679f, var_1) != _wgslsmith_f_op_f32(var_1 * -243f), !all(vec2<bool>(false, var_3.b))), !select(select(vec4<bool>(var_2.b, false, var_0.x, false), vec4<bool>(var_2.b, var_3.c.a.x, var_3.c.a.x, var_3.b), var_2.b), vec4<bool>(var_0.x, var_2.b, false, false), var_2.c.a.x), var_0.x), true);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -354f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(100f, var_1))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.wxw, abs(_wgslsmith_sub_vec3_i32(var_3.d.xww, var_2.d.zyx & vec3<i32>(1i, 1i, 1i))), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(36386u, 4294967295u, 92005u), vec3<u32>(0u, 0u, 4294967295u)), 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(15020u, 4294967295u, 4294967295u), abs(vec3<u32>(3123u, 1u, 4294967295u))) | firstTrailingBit(~vec3<u32>(29082u, 0u, 89366u))));
}

