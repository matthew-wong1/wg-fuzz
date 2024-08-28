struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_5) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-arg_2.b.x), 695f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2121f, 2126f)) - _wgslsmith_f_op_f32(max(arg_2.b.x, 333f))), 380f, arg_1))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, 393f), vec4<f32>(arg_2.b.x, arg_2.b.x, -1053f, 541f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_2.b.x, arg_2.b.x, arg_2.b.x) + vec4<f32>(2023f, arg_2.b.x, 857f, arg_2.b.x))))))), vec4<bool>((select(arg_2.a.x, arg_2.a.x, true) || any(arg_2.a.yx)) & any(select(vec2<bool>(true, true), vec2<bool>(arg_1, false), vec2<bool>(arg_1, false))), !(!all(vec3<bool>(arg_0.a.b, true, arg_1))), arg_0.b.b, true)));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(vec2<i32>(u_input.c.x, u_input.b), false), Struct_1(vec2<i32>(u_input.b, 27871i), false), vec4<i32>(u_input.c.x, u_input.b, u_input.c.x, u_input.c.x), Struct_1(vec2<i32>(9923i, u_input.c.x), true), Struct_1(vec2<i32>(u_input.c.x, -33542i), false)), true, Struct_5(vec4<bool>(true, false, false, false), vec2<f32>(789f, -292f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1929f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1197f - 889f)))), -161f, _wgslsmith_f_op_f32(-106f - _wgslsmith_f_op_f32(round(811f))), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(vec2<i32>(u_input.b, u_input.b), true), Struct_1(vec2<i32>(-73739i, -1i), false), vec4<i32>(u_input.c.x, u_input.b, 1i, -11679i) << (u_input.a % vec4<u32>(32u)), Struct_1(u_input.c, false), Struct_1(u_input.c, true)), true, Struct_5(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 665f))))).x));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, 604f, false)) + _wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(-var_0.x), var_0.x)));
    var var_1 = Struct_2(Struct_1(firstTrailingBit(vec2<i32>(min(u_input.c.x, u_input.c.x), u_input.b ^ u_input.b)), true), Struct_1(-_wgslsmith_sub_vec2_i32(vec2<i32>(31625i, u_input.b), vec2<i32>(41029i, 1i)), false), min(_wgslsmith_div_vec4_i32((vec4<i32>(2147483647i, -4044i, u_input.b, -44345i) << (vec4<u32>(129308u, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))) << (~u_input.a % vec4<u32>(32u)), countOneBits(vec4<i32>(u_input.c.x, 1i, u_input.b, u_input.c.x))), ~vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.c.x, u_input.b), vec3<i32>(u_input.c.x, u_input.c.x, -48123i)), reverseBits(u_input.c.x), 1i)), Struct_1(vec2<i32>(~select(2147483647i, u_input.c.x, true), -u_input.b), 24650i < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 14138i, u_input.c.x, 2147483647i) ^ vec4<i32>(u_input.b, u_input.b, 37027i, u_input.c.x), reverseBits(vec4<i32>(11654i, u_input.c.x, 0i, u_input.c.x)))), Struct_1(-_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(u_input.b, 41183i)), vec2<i32>(u_input.b, u_input.b)), var_0.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) * _wgslsmith_f_op_f32(min(1000f, var_0.x)))));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 834f)))), -1131f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), var_0.x)))), var_0.x);
    let var_2 = (vec3<u32>(~u_input.a.x, _wgslsmith_mod_u32(~1u, 1u), ~u_input.a.x) | ~reverseBits(~u_input.a.ywx)) & _wgslsmith_sub_vec3_u32(~(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u) << (u_input.a.yxz % vec3<u32>(32u))), ~firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(u_input.a.x, 0u, u_input.a.x) % vec3<u32>(32u))));
    return ~22685u;
}

fn func_4(arg_0: u32) -> Struct_3 {
    let var_0 = -u_input.c.x != abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, -2147483647i, u_input.b) ^ reverseBits(vec3<i32>(-1i, 1i, u_input.c.x)), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i) << (u_input.a.yyy % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(166f)))));
    var var_2 = true;
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -580f), _wgslsmith_div_f32(-746f, -605f)));
    var_2 = select(var_0, var_0, all(vec4<bool>(all(vec2<bool>(true, false)), false & var_0, all(vec2<bool>(false, var_0)), true)) != any(select(select(vec2<bool>(var_0, true), vec2<bool>(false, var_0), vec2<bool>(false, var_0)), vec2<bool>(var_0, var_0), true)));
    return Struct_3(vec4<bool>(false, false, false, all(!vec4<bool>(var_0, true, true, var_0))), Struct_1(firstLeadingBit(vec2<i32>(-23799i, firstLeadingBit(1i))), select(false, var_0, true)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-739f + 855f), _wgslsmith_f_op_f32(ceil(1449f)), 1360f, _wgslsmith_f_op_f32(286f * -1599f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(261f, 1205f, -361f, -664f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(vec2<i32>(-11538i, 8584i), true), Struct_1(u_input.c, var_0), vec4<i32>(u_input.b, u_input.c.x, -4617i, u_input.c.x), Struct_1(u_input.c, var_0), Struct_1(u_input.c, var_0)), true, Struct_5(vec4<bool>(false, true, false, var_0), vec2<f32>(972f, -1192f))))))));
}

fn func_1(arg_0: Struct_3) -> bool {
    let var_0 = func_4(func_2() ^ _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a.x, 91386u), u_input.a.x, 28463u));
    var var_1 = Struct_5(!select(!var_0.a, arg_0.a, vec4<bool>(false, arg_0.b.b, true, !var_0.a.x)), vec2<f32>(arg_0.c.x, arg_0.c.x));
    let var_2 = Struct_1(select(select(_wgslsmith_div_vec2_i32(u_input.c, select(vec2<i32>(-2147483647i, 20542i), vec2<i32>(arg_0.b.a.x, u_input.c.x), arg_0.b.b)), ~vec2<i32>(-2198i, -55390i), select(vec2<bool>(false, true), select(var_1.a.zx, arg_0.a.xz, var_1.a.wy), var_0.a.yw)), -(-vec2<i32>(arg_0.b.a.x, var_0.b.a.x) ^ u_input.c), var_1.a.yz), !(true & all(select(var_1.a.xw, arg_0.a.xx, vec2<bool>(false, var_1.a.x)))));
    var_1 = Struct_5(select(var_0.a, select(arg_0.a, vec4<bool>(true, u_input.a.x < 6400u, var_1.a.x, func_4(u_input.a.x).b.b), var_0.b.b), arg_0.a.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.c.xz))));
    var var_3 = u_input.a.x;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = Struct_5(vec4<bool>(!func_1(Struct_3(vec4<bool>(false, false, true, true), Struct_1(u_input.c, false), vec4<f32>(-1563f, 655f, 362f, -1616f))), true, u_input.c.x != u_input.c.x, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))) == all(vec4<bool>(true, true, true, true))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(193f, _wgslsmith_f_op_f32(select(470f, 832f, false)))))), 1956f));
    var_1 = Struct_5(func_4(~_wgslsmith_mod_u32(4294967295u, max(u_input.a.x, u_input.a.x))).a, var_1.b);
    var var_2 = func_1(Struct_3(select(vec4<bool>(true, all(var_1.a.yww), true, any(var_1.a.wy)), select(var_1.a, select(var_1.a, var_1.a, vec4<bool>(false, false, var_1.a.x, true)), true), vec4<bool>(!var_1.a.x, false, select(true, true, var_1.a.x), all(vec2<bool>(false, true)))), Struct_1(u_input.c, false), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(u_input.c, false), func_4(u_input.a.x).b, vec4<i32>(0i, -1i, u_input.c.x, -21919i), Struct_1(u_input.c, var_1.a.x), Struct_1(vec2<i32>(u_input.b, u_input.b), var_1.a.x)), (-1453f >= var_1.b.x) && (u_input.c.x == 0i), Struct_5(select(vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), var_1.a, true), var_1.b)))));
    let var_3 = Struct_2(Struct_1(~(-(~vec2<i32>(u_input.c.x, 2147483647i))), !func_4(abs(u_input.a.x)).a.x), func_4(firstLeadingBit(39591u)).b, _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.b, u_input.c.x, 0i ^ u_input.b, _wgslsmith_div_i32(u_input.b, -29342i))), max(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.c.x, -22224i, u_input.b, u_input.c.x), vec4<i32>(-2147483647i, u_input.c.x, -21765i, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.c.x, -38109i, -2147483647i), vec4<i32>(2147483647i, u_input.c.x, -2147483647i, u_input.c.x))), vec4<i32>(0i, i32(-1i) * -28788i, -37276i, u_input.c.x ^ u_input.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(-9648i, 1i, _wgslsmith_div_i32(u_input.c.x, u_input.b), -41674i), -abs(vec4<i32>(1i, u_input.b, u_input.b, u_input.c.x)))), func_4(u_input.a.x).b, Struct_1(vec2<i32>(func_4(~u_input.a.x).b.a.x, u_input.c.x), var_1.b.x > 1269f));
    var_1 = Struct_5(select(vec4<bool>(any(!var_1.a), true, false, all(select(var_1.a.yx, var_1.a.xx, var_3.e.b))), select(vec4<bool>(true, var_1.b.x != var_1.b.x, var_3.e.b, !var_1.a.x), vec4<bool>(true, all(var_1.a.xxy), var_3.b.b, all(var_1.a.xw)), var_3.a.b), vec4<bool>(4294967295u > func_2(), true, true, var_3.a.b)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(-408f, 1080f), _wgslsmith_f_op_f32(min(-196f, -930f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(485f, var_1.b.x)))))))));
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~(~0u)), 4294967295u, u_input.a.x, u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), -929f), -1372f);
}

