struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<bool>(true, false);
    let var_1 = firstTrailingBit(~(~(~(~vec2<u32>(u_input.b, 4294967295u)))));
    let var_2 = Struct_1(all(var_0), true, max(u_input.a.yx, u_input.a.zx));
    let var_3 = Struct_1(all(!select(select(vec3<bool>(var_2.a, true, var_2.a), vec3<bool>(true, false, true), vec3<bool>(var_2.b, true, false)), vec3<bool>(var_2.a, var_0.x, true), select(vec3<bool>(var_2.b, false, var_2.a), vec3<bool>(false, false, var_2.a), vec3<bool>(false, true, var_2.a)))), all(vec3<bool>(false, var_2.a, false)), ~(~(~u_input.a.wx)) & vec2<i32>(_wgslsmith_div_i32(u_input.a.x, i32(-1i) * -1i), 23049i));
    var var_4 = -156f;
    return Struct_1(var_3.b, var_2.a, -vec2<i32>(-63753i, 1i));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = Struct_1(true, -23793i > -u_input.a.x, _wgslsmith_mod_vec2_i32(~(u_input.a.zx << (~vec2<u32>(1u, u_input.b) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(957i, -2147483647i), vec2<i32>(-36016i, u_input.a.x))), vec2<i32>(~u_input.a.x, -u_input.a.x))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1152f), -1162f)), Struct_2(max(max(-21364i, -49223i), 2147483647i), var_0, Struct_1(var_0.a, false, ~_wgslsmith_mult_vec2_i32(vec2<i32>(36763i, -2147483647i), u_input.a.xz))), _wgslsmith_f_op_vec4_f32(vec4<f32>(176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(352f - 1077f) - _wgslsmith_f_op_f32(f32(-1f) * -1478f)), 140f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - 1058f)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1952f + 1000f) * _wgslsmith_f_op_f32(min(300f, -606f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1709f))), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -171f))));
    var var_2 = -793f;
    var var_3 = var_1.b;
    var var_4 = -189f;
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4) -> Struct_1 {
    var var_0 = u_input.a.wy;
    var_0 = arg_0.c & _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -arg_1.b.c.x), ~_wgslsmith_clamp_vec2_i32(u_input.a.yx, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.b.c.x, u_input.a.x), arg_1.b.c), -vec2<i32>(u_input.a.x, u_input.a.x)));
    var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a, arg_1.b.c.x), arg_1.b.c) | 1i, arg_1.b.c.x | -_wgslsmith_dot_vec2_i32(arg_0.c, vec2<i32>(-1i, arg_1.c.c.x))) & countOneBits(-arg_1.b.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.c, arg_2.c, 508f, -1037f))), vec4<f32>(_wgslsmith_f_op_f32(arg_2.c * -278f), _wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(arg_2.c - arg_2.c), _wgslsmith_f_op_f32(arg_2.c - -1138f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, 257f, arg_2.c, 104f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c, arg_2.c, -1625f, 924f) + vec4<f32>(arg_2.c, arg_2.c, 1000f, arg_2.c))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1068f, arg_2.c, arg_2.c, arg_2.c) - vec4<f32>(-1412f, arg_2.c, 309f, 864f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, arg_2.c, arg_2.c, 2411f)), select(vec4<bool>(true, arg_0.b, true, true), vec4<bool>(arg_2.a.b.b, true, false, arg_0.a), vec4<bool>(arg_2.a.c.a, true, false, false)))), select(!vec4<bool>(true, false, arg_2.b, true), select(vec4<bool>(arg_2.a.c.b, true, arg_2.a.c.a, false), vec4<bool>(false, arg_1.b.a, false, true), vec4<bool>(arg_2.a.c.a, false, true, false)), !vec4<bool>(arg_0.b, false, true, false))))));
    var_0 = vec2<i32>(-2147483647i, abs(var_0.x));
    return arg_1.b;
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1283f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -654f) + _wgslsmith_f_op_f32(-860f + -1801f)))), Struct_2(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, 0i, 2147483647i) | vec4<i32>(-79289i, u_input.a.x, u_input.a.x, 27191i), vec4<i32>(u_input.a.x, ~u_input.a.x, 2147483647i, ~u_input.a.x)), func_4(func_2(), Struct_2(countOneBits(1i), func_2(), func_2()), Struct_4(Struct_2(u_input.a.x, Struct_1(false, false, u_input.a.zx), Struct_1(true, true, u_input.a.wy)), func_3(0u), _wgslsmith_f_op_f32(select(-193f, 151f, true)), u_input.a.x)), func_2()), vec4<f32>(_wgslsmith_f_op_f32(sign(804f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1050f, 655f) + _wgslsmith_f_op_f32(trunc(884f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1631f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-668f + -1000f), _wgslsmith_f_op_f32(select(-762f, -502f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1009f - -978f))))));
    var_0 = Struct_3(1563f, Struct_2(~u_input.a.x >> (_wgslsmith_div_u32(u_input.b, u_input.b) % 32u), var_0.b.b, func_4(func_4(func_2(), var_0.b, Struct_4(var_0.b, var_0.b.c.b, 415f, 55435i)), Struct_2(-u_input.a.x, func_2(), func_2()), Struct_4(var_0.b, var_0.b.c.b, _wgslsmith_f_op_f32(step(-589f, var_0.a)), var_0.b.b.c.x))), _wgslsmith_div_vec4_f32(var_0.c, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(205f + var_0.c.x), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-464f - var_0.a)), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1042f), var_0.c.x))));
    let var_1 = false;
    var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(726f * 359f)), -1065f), Struct_2(-12014i, Struct_1(false, !var_1, _wgslsmith_div_vec2_i32(~vec2<i32>(var_0.b.c.c.x, var_0.b.a), u_input.a.zx)), func_4(var_0.b.b, Struct_2(_wgslsmith_div_i32(var_0.b.b.c.x, 78284i), var_0.b.c, func_2()), Struct_4(Struct_2(var_0.b.b.c.x, var_0.b.b, var_0.b.c), var_0.b.b.a, 478f, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-672f, var_0.c.x, -235f, var_0.a) * vec4<f32>(var_0.a, var_0.a, -287f, 141f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1119f, 173f, var_0.c.x, var_0.c.x)))))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(abs(1529f)), Struct_2(_wgslsmith_dot_vec3_i32(-select(vec3<i32>(var_0.b.b.c.x, var_0.b.c.c.x, var_0.b.c.c.x), u_input.a.ywz, var_0.b.c.b), ~vec3<i32>(-11792i, 1i, -54038i) | -vec3<i32>(u_input.a.x, var_0.b.c.c.x, u_input.a.x)), func_2(), func_4(Struct_1(false, any(vec4<bool>(false, var_1, var_0.b.c.b, var_0.b.b.b)), vec2<i32>(1i, u_input.a.x)), Struct_2(52638i, var_0.b.b, var_0.b.b), Struct_4(Struct_2(-2147483647i, Struct_1(false, true, vec2<i32>(-8432i, 1i)), var_0.b.c), true, _wgslsmith_f_op_f32(-var_0.c.x), -1i))), var_0.c);
    return Struct_4(var_0.b, (func_4(Struct_1(false, false, u_input.a.wy), Struct_2(var_0.b.c.c.x, var_0.b.c, Struct_1(false, false, var_0.b.b.c)), Struct_4(Struct_2(-16365i, Struct_1(var_0.b.c.b, var_0.b.b.a, var_0.b.b.c), var_0.b.c), var_0.b.c.b, var_0.a, var_0.b.a)).a & true) | !any(vec4<bool>(var_0.b.c.a, var_0.b.c.b, var_0.b.c.a, var_0.b.c.b)), _wgslsmith_f_op_f32(ceil(var_0.c.x)), _wgslsmith_dot_vec4_i32(u_input.a, ~(vec4<i32>(-1i) * -u_input.a)));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = Struct_3(312f, Struct_2(reverseBits(_wgslsmith_dot_vec3_i32(u_input.a.wyz, u_input.a.yxz)) >> (_wgslsmith_sub_u32(min(29404u, u_input.b), 57766u) % 32u), func_2(), func_1().a.c), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + -491f) * _wgslsmith_f_op_f32(-arg_1))), 535f, -464f, var_0.c));
    var var_2 = func_2().c;
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_1.c.zzw), var_1.c.xwy));
    var_0 = Struct_4(Struct_2(u_input.a.x, func_4(func_1().a.b, Struct_2(-4272i, arg_0.a.b, Struct_1(true, var_0.a.b.a, var_0.a.c.c)), arg_0), Struct_1(select(func_1().b, false, false), false == select(var_1.b.b.b, var_0.a.c.a, arg_0.a.c.b), ~(~vec2<i32>(1i, 44500i)))), false, _wgslsmith_f_op_f32(ceil(arg_0.c)), _wgslsmith_div_i32(var_0.a.b.c.x, max(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a.xxz, vec3<i32>(-1i, arg_0.d, u_input.a.x)), var_0.d ^ u_input.a.x), _wgslsmith_add_i32(1i, var_0.a.c.c.x))));
    return func_1().a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), _wgslsmith_f_op_f32(ceil(1000f)), ~firstLeadingBit(~(~vec4<u32>(19932u, u_input.b, u_input.b, u_input.c))));
    var var_1 = func_1().a;
    let var_2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1273f))));
}

